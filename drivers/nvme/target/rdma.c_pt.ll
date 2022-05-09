; ModuleID = '/llk/IR_all_yes/drivers/nvme/target/rdma.c_pt.bc'
source_filename = "../drivers/nvme/target/rdma.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.132 }
%union.anon.132 = type { ptr }
%struct.nvmet_fabrics_ops = type { ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ib_client = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.refcount_struct, %struct.completion, i32, i8 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.net = type { %struct.refcount_struct, %struct.spinlock, i32, i32, i32, %struct.spinlock, %struct.atomic_t, %struct.list_head, %struct.list_head, %struct.llist_node, ptr, ptr, ptr, %struct.idr, %struct.ns_common, %struct.ref_tracker_dir, %struct.list_head, ptr, ptr, %struct.ctl_table_set, ptr, ptr, ptr, ptr, ptr, %struct.raw_notifier_head, i32, ptr, %struct.list_head, %struct.netns_core, %struct.netns_mib, %struct.netns_packet, %struct.netns_unix, %struct.netns_nexthop, [80 x i8], %struct.netns_ipv4, %struct.netns_ipv6, %struct.netns_ieee802154_lowpan, %struct.netns_sctp, %struct.netns_nf, %struct.netns_ct, %struct.netns_nftables, %struct.sk_buff_head, ptr, %struct.netns_bpf, [92 x i8], %struct.netns_xfrm, i64, ptr, %struct.netns_mpls, %struct.netns_can, %struct.netns_xdp, %struct.netns_mctp, ptr, ptr, %struct.netns_smc }
%struct.llist_node = type { ptr }
%struct.idr = type { %struct.xarray, i32, i32 }
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
%struct.nvmf_common_command = type { i8, i8, i16, i8, [35 x i8], [24 x i8] }
%struct.nvme_completion = type { %union.nvme_result, i16, i16, i16, i16 }
%union.nvme_result = type { i64 }
%struct.nvmet_req = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, [8 x %struct.bio_vec], %union.anon.161, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, i16, i64 }
%struct.bio_vec = type { ptr, i32, i32 }
%union.anon.161 = type { %struct.anon.164 }
%struct.anon.164 = type { %struct.bio, ptr, %struct.work_struct, i8 }
%struct.bio = type { ptr, ptr, i32, i16, i16, i16, i8, %struct.atomic_t, %struct.bvec_iter, i32, ptr, ptr, ptr, %struct.bio_issue, i64, ptr, %union.anon.92, i16, i16, %struct.atomic_t, ptr, ptr, [0 x %struct.bio_vec] }
%struct.bvec_iter = type <{ i64, i32, i32, i32 }>
%struct.bio_issue = type { i64 }
%union.anon.92 = type { ptr }
%struct.rdma_cm_id = type { ptr, ptr, ptr, ptr, %struct.rdma_route, i32, i32, i32 }
%struct.rdma_route = type { %struct.rdma_addr, ptr, i32 }
%struct.rdma_addr = type { %struct.__kernel_sockaddr_storage, %struct.__kernel_sockaddr_storage, %struct.rdma_dev_addr }
%struct.__kernel_sockaddr_storage = type { %union.anon.189 }
%union.anon.189 = type { ptr, [124 x i8] }
%struct.rdma_dev_addr = type { [32 x i8], [32 x i8], [32 x i8], i16, i32, i32, ptr, ptr, i32, i32 }
%struct.nvmet_rdma_queue = type { ptr, ptr, ptr, ptr, %struct.atomic_t, ptr, ptr, %struct.spinlock, i32, %struct.nvmet_cq, %struct.nvmet_sq, ptr, %struct.list_head, %struct.spinlock, ptr, %struct.work_struct, %struct.list_head, %struct.list_head, %struct.spinlock, i32, i32, i32, i32, i32, %struct.list_head }
%struct.nvmet_cq = type { i16, i16 }
%struct.nvmet_sq = type { ptr, %struct.percpu_ref, i16, i16, i32, i8, %struct.completion, %struct.completion }
%struct.percpu_ref = type { i32, ptr }
%struct.ib_sge = type { i64, i32, i32 }
%struct.nvmet_rdma_cmd = type { [5 x %struct.ib_sge], %struct.ib_cqe, %struct.ib_recv_wr, [4 x %struct.scatterlist], ptr, ptr, ptr }
%struct.ib_cqe = type { ptr }
%struct.ib_recv_wr = type { ptr, %union.anon.178, ptr, i32 }
%union.anon.178 = type { i64 }
%struct.scatterlist = type { i32, i32, i32, i32, i32 }
%struct.ib_device = type { ptr, %struct.ib_device_ops, [64 x i8], %struct.callback_head, %struct.list_head, %struct.rw_semaphore, %struct.spinlock, %struct.rw_semaphore, %struct.xarray, %struct.mutex, %struct.rwlock_t, ptr, i32, %union.anon.192, [4 x ptr], i64, [64 x i8], i64, i32, i8, i8, i32, %struct.ib_device_attr, ptr, %struct.rdmacg_device, i32, %struct.spinlock, [3 x %struct.list_head], ptr, ptr, %struct.refcount_struct, %struct.completion, %struct.work_struct, ptr, %struct.mutex, %struct.xarray, [16 x i8], i32, i32 }
%struct.ib_device_ops = type { ptr, i32, i32, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.callback_head = type { ptr, ptr }
%union.anon.192 = type { %struct.ib_core_device }
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
%struct.ib_odp_caps = type { i64, %struct.anon.179 }
%struct.anon.179 = type { i32, i32, i32, i32 }
%struct.ib_rss_caps = type { i32, i32, i32 }
%struct.ib_tm_caps = type { i32, i32, i32, i32, i32 }
%struct.ib_cq_caps = type { i16, i16 }
%struct.rdmacg_device = type { %struct.list_head, %struct.list_head, ptr }
%struct.nvmet_port = type { %struct.list_head, %struct.nvmf_disc_rsp_page_entry, %struct.config_group, %struct.config_group, %struct.list_head, %struct.config_group, %struct.list_head, %struct.list_head, %struct.config_group, %struct.nvmet_ana_group, ptr, ptr, i8, i32, ptr, i8 }
%struct.nvmf_disc_rsp_page_entry = type { i8, i8, i8, i8, i16, i16, i16, i16, [20 x i8], [32 x i8], [192 x i8], [256 x i8], [256 x i8], %union.tsas }
%union.tsas = type { %struct.rdma }
%struct.rdma = type { i8, i8, i8, [5 x i8], i16, [246 x i8] }
%struct.config_group = type { %struct.config_item, %struct.list_head, ptr, %struct.list_head, %struct.list_head }
%struct.config_item = type { ptr, [20 x i8], %struct.kref, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.nvmet_ana_group = type { %struct.config_group, ptr, i32 }
%struct.nvmet_rdma_port = type { ptr, %struct.__kernel_sockaddr_storage, ptr, %struct.delayed_work }
%struct.nvmet_ctrl = type { ptr, ptr, i8, %struct.mutex, i64, i32, i32, %struct.uuid_t, i16, i32, ptr, i32, i32, [4 x ptr], i32, %struct.list_head, %struct.work_struct, %struct.list_head, %struct.kref, %struct.delayed_work, %struct.work_struct, ptr, ptr, i32, [256 x i8], [256 x i8], ptr, %struct.xarray, %struct.spinlock, i64, [128 x %struct.nvme_error_slot], i8 }
%struct.uuid_t = type { [16 x i8] }
%struct.nvme_error_slot = type { i64, i16, i16, i16, i16, i64, i32, i8, [3 x i8], i64, [24 x i8] }
%struct.nvmet_rdma_rsp = type { %struct.ib_sge, %struct.ib_cqe, %struct.ib_send_wr, ptr, ptr, %struct.ib_cqe, %struct.ib_cqe, %struct.rdma_rw_ctx, %struct.nvmet_req, i8, i8, i32, i32, %struct.list_head, %struct.list_head }
%struct.ib_send_wr = type { ptr, %union.anon.176, ptr, i32, i32, i32, %union.anon.177 }
%union.anon.176 = type { i64 }
%union.anon.177 = type { i32 }
%struct.rdma_rw_ctx = type { i32, i8, %union.anon.193 }
%union.anon.193 = type { %struct.anon.194 }
%struct.anon.194 = type { %struct.ib_sge, %struct.ib_rdma_wr }
%struct.ib_rdma_wr = type { %struct.ib_send_wr, i64, i32 }
%struct.ib_qp = type { ptr, ptr, ptr, ptr, %struct.spinlock, i32, %struct.list_head, %struct.list_head, ptr, ptr, %struct.list_head, %struct.atomic_t, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, ptr, ptr, i32, i8, %struct.rdma_restrack_entry, ptr }
%struct.rdma_restrack_entry = type { i8, i8, %struct.kref, %struct.completion, ptr, ptr, i32, i8, i32 }
%struct.rdma_cm_event = type { i32, i32, %union.anon.188, %struct.rdma_ucm_ece }
%union.anon.188 = type { %struct.rdma_ud_param }
%struct.rdma_ud_param = type { ptr, i8, %struct.rdma_ah_attr, i32, i32 }
%struct.rdma_ah_attr = type { %struct.ib_global_route, i8, i8, i32, i8, i32, %union.anon.180 }
%struct.ib_global_route = type { ptr, %union.ib_gid, i32, i8, i8, i8 }
%union.ib_gid = type { %struct.anon.175 }
%struct.anon.175 = type { i64, i64 }
%union.anon.180 = type { %struct.opa_ah_attr }
%struct.opa_ah_attr = type { i32, i8, i8 }
%struct.rdma_ucm_ece = type { i32, i32 }
%struct.rdma_conn_param = type { ptr, i8, i8, i8, i8, i8, i8, i8, i32, i32 }
%struct.nvme_rdma_cm_rep = type { i16, i16, [28 x i8] }
%struct.nvme_rdma_cm_rej = type { i16, i16 }
%struct.nvmet_rdma_device = type { ptr, ptr, ptr, i32, i32, %struct.kref, %struct.list_head, i32, i32 }
%struct.ib_srq_init_attr = type { ptr, ptr, %struct.ib_srq_attr, i32, %struct.anon.181 }
%struct.ib_srq_attr = type { i32, i32, i32 }
%struct.anon.181 = type { ptr, %union.anon.182 }
%union.anon.182 = type { %struct.anon.183 }
%struct.anon.183 = type { ptr }
%struct.ib_pd = type { i32, i32, ptr, ptr, %struct.atomic_t, i32, ptr, %struct.rdma_restrack_entry }
%struct.nvmet_rdma_srq = type { ptr, ptr, ptr }
%struct.nvme_rdma_cm_req = type { i16, i16, i16, i16, [24 x i8] }
%struct.page = type { i32, %union.anon.2, %union.anon.131, %struct.atomic_t, i32 }
%union.anon.2 = type { %struct.anon.3 }
%struct.anon.3 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.131 = type { %struct.atomic_t }
%struct.ib_wc = type { %union.anon.172, i32, i32, i32, i32, ptr, %union.anon.173, i32, i32, i32, i16, i8, i8, i32, [6 x i8], i16, i8 }
%union.anon.172 = type { i64 }
%union.anon.173 = type { i32 }
%struct.nvme_common_command = type { i8, i8, i16, i32, [2 x i32], i64, %union.nvme_data_ptr, i32, i32, i32, i32, i32, i32 }
%union.nvme_data_ptr = type { %struct.anon.158 }
%struct.anon.158 = type { i64, i64 }
%struct.nvme_keyed_sgl_desc = type { i64, [3 x i8], [4 x i8], i8 }
%struct.ib_mr_status = type { i32, %struct.ib_sig_err }
%struct.ib_sig_err = type { i32, i32, i32, i64, i32 }
%struct.rdma_rw_reg_ctx = type { %struct.ib_sge, %struct.ib_rdma_wr, %struct.ib_reg_wr, %struct.ib_send_wr, ptr }
%struct.ib_reg_wr = type { %struct.ib_send_wr, ptr, i32, i32 }
%struct.ib_sig_attrs = type { i8, %struct.ib_sig_domain, %struct.ib_sig_domain, i32 }
%struct.ib_sig_domain = type { i32, %union.anon.167 }
%union.anon.167 = type { %struct.ib_t10_dif_domain }
%struct.ib_t10_dif_domain = type { i32, i16, i16, i16, i32, i8, i8, i8, i16 }
%struct.nvme_rw_command = type { i8, i8, i16, i32, i64, i64, %union.nvme_data_ptr, i64, i16, i16, i32, i32, i16, i16 }
%struct.nvmet_ns = type { %struct.percpu_ref, ptr, ptr, i8, i32, i32, i64, [16 x i8], %struct.uuid_t, i32, i8, i8, ptr, ptr, %struct.config_group, %struct.config_group, %struct.completion, ptr, ptr, i32, ptr, i32, i32, i8 }
%struct.block_device = type { i64, i64, ptr, i32, i8, i32, i32, ptr, ptr, ptr, %struct.device, ptr, i32, i8, ptr, i8, %struct.spinlock, ptr, ptr, i32, %struct.mutex, ptr, ptr, i8 }
%struct.gendisk = type { i32, i32, i32, [32 x i8], i16, i16, %struct.xarray, ptr, ptr, ptr, ptr, i32, i32, %struct.mutex, i32, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, ptr, %struct.kobject, ptr, i32, ptr, %struct.lockdep_map, i64 }
%struct.request_queue = type { ptr, ptr, %struct.percpu_ref, ptr, ptr, ptr, ptr, i32, ptr, i32, ptr, i32, %struct.atomic_t, i32, %struct.spinlock, ptr, %struct.kobject, ptr, %struct.blk_integrity, ptr, i32, i32, i32, i32, ptr, i32, i32, ptr, ptr, %struct.timer_list, %struct.work_struct, %struct.atomic_t, ptr, %struct.list_head, [1 x i32], ptr, %struct.list_head, %struct.queue_limits, i32, i32, ptr, ptr, i32, i32, i32, %struct.mutex, ptr, ptr, %struct.list_head, %struct.spinlock, %struct.delayed_work, %struct.mutex, %struct.mutex, %struct.list_head, %struct.spinlock, i32, ptr, %struct.callback_head, %struct.wait_queue_head, %struct.mutex, i32, ptr, %struct.list_head, %struct.bio_set, ptr, ptr, ptr, i8, [5 x i64], ptr, [0 x %struct.srcu_struct] }
%struct.blk_integrity = type { ptr, i8, i8, i8, i8 }
%struct.queue_limits = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i8, i8, i8, i32 }
%struct.bio_set = type { ptr, i32, ptr, %struct.mempool_s, %struct.mempool_s, %struct.mempool_s, %struct.mempool_s, i32, %struct.spinlock, %struct.bio_list, %struct.work_struct, ptr, %struct.hlist_node }
%struct.mempool_s = type { %struct.spinlock, i32, i32, ptr, ptr, ptr, ptr, %struct.wait_queue_head }
%struct.bio_list = type { ptr, ptr }
%struct.srcu_struct = type { [3 x %struct.srcu_node], [3 x ptr], %struct.mutex, %struct.spinlock, %struct.mutex, i32, i32, i32, i32, i32, ptr, i32, %struct.mutex, %struct.completion, %struct.atomic_t, %struct.delayed_work, %struct.lockdep_map }
%struct.srcu_node = type { %struct.spinlock, [4 x i32], [4 x i32], i32, ptr, i32, i32 }
%struct.ib_qp_init_attr = type { ptr, ptr, ptr, ptr, ptr, ptr, %struct.ib_qp_cap, i32, i32, i32, i32, ptr, i32 }
%struct.ib_qp_cap = type { i32, i32, i32, i32, i32, i32 }
%struct.ib_cq = type { ptr, ptr, ptr, ptr, ptr, i32, i32, %struct.atomic_t, i32, ptr, %struct.list_head, %union.anon.174, ptr, ptr, i64, i8, i32, %struct.rdma_restrack_entry }
%union.anon.174 = type { %struct.work_struct }
%struct.ib_event = type { ptr, %union.anon.168, i32 }
%union.anon.168 = type { ptr }

@__param_str_use_srq = internal constant [19 x i8] c"nvmet_rdma.use_srq\00", align 1
@param_ops_bool = external dso_local constant %struct.kernel_param_ops, align 4
@nvmet_rdma_use_srq = internal global { i8, [31 x i8] } zeroinitializer, align 32
@__param_use_srq = internal constant %struct.kernel_param { ptr @__param_str_use_srq, ptr null, ptr @param_ops_bool, i16 292, i8 -1, i8 0, %union.anon.132 { ptr @nvmet_rdma_use_srq } }, section "__param", align 4
@__UNIQUE_ID_use_srqtype530 = internal constant [33 x i8] c"nvmet_rdma.parmtype=use_srq:bool\00", section ".modinfo", align 1
@__UNIQUE_ID_use_srq531 = internal constant [50 x i8] c"nvmet_rdma.parm=use_srq:Use shared receive queue.\00", section ".modinfo", align 1
@__param_str_srq_size = internal constant [20 x i8] c"nvmet_rdma.srq_size\00", align 1
@srq_size_ops = internal constant { %struct.kernel_param_ops, [16 x i8] } { %struct.kernel_param_ops { i32 0, ptr @srq_size_set, ptr @param_get_int, ptr null }, [16 x i8] zeroinitializer }, align 32
@nvmet_rdma_srq_size = internal global { i32, [28 x i8] } { i32 1024, [28 x i8] zeroinitializer }, align 32
@__param_srq_size = internal constant %struct.kernel_param { ptr @__param_str_srq_size, ptr null, ptr @srq_size_ops, i16 420, i8 -1, i8 0, %union.anon.132 { ptr @nvmet_rdma_srq_size } }, section "__param", align 4
@__UNIQUE_ID_srq_size532 = internal constant [92 x i8] c"nvmet_rdma.parm=srq_size:set Shared Receive Queue (SRQ) size, should >= 256 (default: 1024)\00", section ".modinfo", align 1
@nvmet_rdma_ops = internal constant { %struct.nvmet_fabrics_ops, [44 x i8] } { %struct.nvmet_fabrics_ops { ptr null, i32 1, i32 1, i32 3, ptr @nvmet_rdma_queue_response, ptr @nvmet_rdma_add_port, ptr @nvmet_rdma_remove_port, ptr @nvmet_rdma_delete_ctrl, ptr @nvmet_rdma_disc_port_addr, ptr null, ptr null, ptr @nvmet_rdma_get_mdts, ptr @nvmet_rdma_get_max_queue_size }, [44 x i8] zeroinitializer }, align 32
@nvmet_rdma_ib_client = internal global { %struct.ib_client, [32 x i8] } { %struct.ib_client { ptr @.str.5, ptr null, ptr @nvmet_rdma_remove_one, ptr null, ptr null, ptr null, ptr null, %struct.refcount_struct zeroinitializer, %struct.completion zeroinitializer, i32 0, i8 0 }, [32 x i8] zeroinitializer }, align 32
@nvmet_rdma_exit.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@nvmet_rdma_queue_list = internal global { %struct.list_head, [24 x i8] } { %struct.list_head { ptr @nvmet_rdma_queue_list, ptr @nvmet_rdma_queue_list }, [24 x i8] zeroinitializer }, align 32
@.str = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"drivers/nvme/target/rdma.c\00", [37 x i8] zeroinitializer }, align 32
@nvmet_rdma_queue_ida = internal global { %struct.ida, [44 x i8] } { %struct.ida { %struct.xarray { %struct.spinlock { %union.anon.0 { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.133, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, i32 67108869, ptr null } }, [44 x i8] zeroinitializer }, align 32
@__initcall__kmod_nvmet_rdma__563_2091_nvmet_rdma_init6 = internal global ptr @nvmet_rdma_init, section ".initcall6.init", align 4
@__exitcall_nvmet_rdma_exit = internal global ptr @nvmet_rdma_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file564 = internal constant [47 x i8] c"nvmet_rdma.file=drivers/nvme/target/nvmet-rdma\00", section ".modinfo", align 1
@__UNIQUE_ID_license565 = internal constant [26 x i8] c"nvmet_rdma.license=GPL v2\00", section ".modinfo", align 1
@__UNIQUE_ID_alias566 = internal constant [35 x i8] c"nvmet_rdma.alias=nvmet-transport-1\00", section ".modinfo", align 1
@nvmet_rdma_queue_response._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str, i32 748, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\013nvmet_rdma: sending cmd response failed\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"nvmet_rdma_queue_response\00", [38 x i8] zeroinitializer }, align 32
@nvmet_rdma_queue_response._entry_ptr = internal global ptr @nvmet_rdma_queue_response._entry, section ".printk_index", align 4
@nvmet_rdma_post_recv._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str, i32 516, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\013nvmet_rdma: post_recv cmd failed\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"nvmet_rdma_post_recv\00", [43 x i8] zeroinitializer }, align 32
@nvmet_rdma_post_recv._entry_ptr = internal global ptr @nvmet_rdma_post_recv._entry, section ".printk_index", align 4
@nvmet_rdma_execute_command.__UNIQUE_ID_ddebug538 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.6, ptr @.str, ptr @.str.7, i8 0, i8 -16, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.5 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"nvmet_rdma\00", [21 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"nvmet_rdma_execute_command\00", [37 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"IB send queue full (needed %d): queue %u cntlid %u\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"nvmet_rdma: IB send queue full (needed %d): queue %u cntlid %u\0A\00", [32 x i8] zeroinitializer }, align 32
@nvmet_rdma_add_port.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.9 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"(work_completion)(&(&port->repair_work)->work)\00", [49 x i8] zeroinitializer }, align 32
@nvmet_rdma_add_port.__key.10 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.11 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"&(&port->repair_work)->timer\00", [35 x i8] zeroinitializer }, align 32
@nvmet_rdma_add_port._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.13, ptr @.str, i32 1932, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\013nvmet_rdma: address family %d not supported\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"nvmet_rdma_add_port\00", [44 x i8] zeroinitializer }, align 32
@nvmet_rdma_add_port._entry_ptr = internal global ptr @nvmet_rdma_add_port._entry, section ".printk_index", align 4
@nvmet_rdma_add_port._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.13, ptr @.str, i32 1942, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"\014nvmet_rdma: inline_data_size %u is too large, reducing to %u\0A\00", [32 x i8] zeroinitializer }, align 32
@nvmet_rdma_add_port._entry_ptr.16 = internal global ptr @nvmet_rdma_add_port._entry.14, section ".printk_index", align 4
@init_net = external dso_local global %struct.net, align 128
@nvmet_rdma_add_port._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.13, ptr @.str, i32 1950, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\013nvmet_rdma: malformed ip/port passed: %s:%s\0A\00", [49 x i8] zeroinitializer }, align 32
@nvmet_rdma_add_port._entry_ptr.19 = internal global ptr @nvmet_rdma_add_port._entry.17, section ".printk_index", align 4
@nvmet_rdma_add_port._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.13, ptr @.str, i32 1960, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\016nvmet_rdma: enabling port %d (%pISpcs)\0A\00", [54 x i8] zeroinitializer }, align 32
@nvmet_rdma_add_port._entry_ptr.22 = internal global ptr @nvmet_rdma_add_port._entry.20, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@nvmet_rdma_queue_mutex = internal global { %struct.mutex, [36 x i8] } { %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.23, i8 0, i8 2, i8 0, i32 0, i32 0 } }, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @nvmet_rdma_queue_mutex, i64 52), ptr getelementptr (i8, ptr @nvmet_rdma_queue_mutex, i64 52) }, ptr @nvmet_rdma_queue_mutex, %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.24, i8 0, i8 4, i8 0, i32 0, i32 0 } }, [36 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"nvmet_rdma_queue_mutex.wait_lock\00", [63 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"nvmet_rdma_queue_mutex\00", [41 x i8] zeroinitializer }, align 32
@__nvmet_rdma_queue_disconnect.__UNIQUE_ID_ddebug554 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.25, ptr @.str, ptr @.str.26, i8 1, i8 -101, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.25 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"__nvmet_rdma_queue_disconnect\00", [34 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"cm_id= %p queue->state= %d\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"nvmet_rdma: cm_id= %p queue->state= %d\0A\00", [56 x i8] zeroinitializer }, align 32
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@nvmet_rdma_enable_port._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.29, ptr @.str, i32 1863, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\013nvmet_rdma: CM ID creation failed\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"nvmet_rdma_enable_port\00", [41 x i8] zeroinitializer }, align 32
@nvmet_rdma_enable_port._entry_ptr = internal global ptr @nvmet_rdma_enable_port._entry, section ".printk_index", align 4
@nvmet_rdma_enable_port._entry.30 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.29, ptr @.str, i32 1873, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\013nvmet_rdma: rdma_set_afonly failed (%d)\0A\00", [53 x i8] zeroinitializer }, align 32
@nvmet_rdma_enable_port._entry_ptr.32 = internal global ptr @nvmet_rdma_enable_port._entry.30, section ".printk_index", align 4
@nvmet_rdma_enable_port._entry.33 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.29, ptr @.str, i32 1879, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"\013nvmet_rdma: binding CM ID to %pISpcs failed (%d)\0A\00", [44 x i8] zeroinitializer }, align 32
@nvmet_rdma_enable_port._entry_ptr.35 = internal global ptr @nvmet_rdma_enable_port._entry.33, section ".printk_index", align 4
@nvmet_rdma_enable_port._entry.36 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.29, ptr @.str, i32 1885, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\013nvmet_rdma: listening to %pISpcs failed (%d)\0A\00", [48 x i8] zeroinitializer }, align 32
@nvmet_rdma_enable_port._entry_ptr.38 = internal global ptr @nvmet_rdma_enable_port._entry.36, section ".printk_index", align 4
@nvmet_rdma_cm_handler.__UNIQUE_ID_ddebug555 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.39, ptr @.str, ptr @.str.40, i8 1, i8 -72, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.39 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"nvmet_rdma_cm_handler\00", [42 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"%s (%d): status %d id %p\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"nvmet_rdma: %s (%d): status %d id %p\0A\00", [58 x i8] zeroinitializer }, align 32
@nvmet_rdma_cm_handler.__UNIQUE_ID_ddebug556 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.39, ptr @.str, ptr @.str.42, i8 1, i8 -65, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.42 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Connection rejected: %s\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"nvmet_rdma: Connection rejected: %s\0A\00", [59 x i8] zeroinitializer }, align 32
@nvmet_rdma_cm_handler._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @.str.39, ptr @.str, i32 1797, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"\013nvmet_rdma: received unrecognized RDMA CM event %d\0A\00", [42 x i8] zeroinitializer }, align 32
@nvmet_rdma_cm_handler._entry_ptr = internal global ptr @nvmet_rdma_cm_handler._entry, section ".printk_index", align 4
@device_list_mutex = internal global { %struct.mutex, [36 x i8] } { %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.52, i8 0, i8 2, i8 0, i32 0, i32 0 } }, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @device_list_mutex, i64 52), ptr getelementptr (i8, ptr @device_list_mutex, i64 52) }, ptr @device_list_mutex, %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.53, i8 0, i8 4, i8 0, i32 0, i32 0 } }, [36 x i8] zeroinitializer }, align 32
@device_list = internal global { %struct.list_head, [24 x i8] } { %struct.list_head { ptr @device_list, ptr @device_list }, [24 x i8] zeroinitializer }, align 32
@nvmet_rdma_find_get_device._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.46, ptr @.str, i32 1217, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [86 x i8], [42 x i8] } { [86 x i8] c"\014nvmet_rdma: inline_data_size %d cannot be supported by device %s. Reducing to %lu.\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"nvmet_rdma_find_get_device\00", [37 x i8] zeroinitializer }, align 32
@nvmet_rdma_find_get_device._entry_ptr = internal global ptr @nvmet_rdma_find_get_device._entry, section ".printk_index", align 4
@nvmet_rdma_find_get_device._entry.47 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.48, ptr @.str.46, ptr @.str, i32 1227, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [66 x i8], [62 x i8] } { [66 x i8] c"\014nvmet_rdma: T10-PI is not supported by device %s. Disabling it\0A\00", [62 x i8] zeroinitializer }, align 32
@nvmet_rdma_find_get_device._entry_ptr.49 = internal global ptr @nvmet_rdma_find_get_device._entry.47, section ".printk_index", align 4
@nvmet_rdma_find_get_device.__UNIQUE_ID_ddebug545 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.46, ptr @.str, ptr @.str.50, i8 1, i8 55, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.50 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"added %s.\0A\00", [21 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"nvmet_rdma: added %s.\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"device_list_mutex.wait_lock\00", [36 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"device_list_mutex\00", [46 x i8] zeroinitializer }, align 32
@nvmet_rdma_init_srqs._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.54, ptr @.str.55, ptr @.str, i32 1145, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\016nvmet_rdma: SRQ requested but not supported.\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"nvmet_rdma_init_srqs\00", [43 x i8] zeroinitializer }, align 32
@nvmet_rdma_init_srqs._entry_ptr = internal global ptr @nvmet_rdma_init_srqs._entry, section ".printk_index", align 4
@dma_map_single_attrs.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.56 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/dma-mapping.h\00", [36 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"%s %s: rejecting DMA map of vmalloc memory\0A\00", [52 x i8] zeroinitializer }, align 32
@mem_map = external dso_local local_unnamed_addr global ptr, align 4
@nvmet_rdma_recv_done._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.59, ptr @.str.60, ptr @.str, i32 1019, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"\013nvmet_rdma: RECV for CQE 0x%p failed with status %s (%d)\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"nvmet_rdma_recv_done\00", [43 x i8] zeroinitializer }, align 32
@nvmet_rdma_recv_done._entry_ptr = internal global ptr @nvmet_rdma_recv_done._entry, section ".printk_index", align 4
@nvmet_rdma_recv_done._entry.61 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.62, ptr @.str.60, ptr @.str, i32 1026, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"\013nvmet_rdma: Ctrl Fatal Error: capsule size less than 64 bytes\0A\00", [63 x i8] zeroinitializer }, align 32
@nvmet_rdma_recv_done._entry_ptr.63 = internal global ptr @nvmet_rdma_recv_done._entry.61, section ".printk_index", align 4
@nvmet_rdma_send_done._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.64, ptr @.str.65, ptr @.str, i32 711, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"\013nvmet_rdma: SEND for CQE 0x%p failed with status %s (%d).\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"nvmet_rdma_send_done\00", [43 x i8] zeroinitializer }, align 32
@nvmet_rdma_send_done._entry_ptr = internal global ptr @nvmet_rdma_send_done._entry, section ".printk_index", align 4
@nvmet_rdma_read_data_done._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.66, ptr @.str.67, ptr @.str, i32 770, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [66 x i8], [62 x i8] } { [66 x i8] c"\016nvmet_rdma: RDMA READ for CQE 0x%p failed with status %s (%d).\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"nvmet_rdma_read_data_done\00", [38 x i8] zeroinitializer }, align 32
@nvmet_rdma_read_data_done._entry_ptr = internal global ptr @nvmet_rdma_read_data_done._entry, section ".printk_index", align 4
@nvmet_rdma_check_pi_status._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.68, ptr @.str.69, ptr @.str, i32 552, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\013nvmet_rdma: ib_check_mr_status failed, ret %d\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"nvmet_rdma_check_pi_status\00", [37 x i8] zeroinitializer }, align 32
@nvmet_rdma_check_pi_status._entry_ptr = internal global ptr @nvmet_rdma_check_pi_status._entry, section ".printk_index", align 4
@nvmet_rdma_check_pi_status._entry.70 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.71, ptr @.str.69, ptr @.str, i32 571, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"\013nvmet_rdma: PI error found type %d expected 0x%x vs actual 0x%x\0A\00", [61 x i8] zeroinitializer }, align 32
@nvmet_rdma_check_pi_status._entry_ptr.72 = internal global ptr @nvmet_rdma_check_pi_status._entry.70, section ".printk_index", align 4
@nvmet_rdma_write_data_done._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.73, ptr @.str.74, ptr @.str, i32 807, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"\016nvmet_rdma: RDMA WRITE for CQE failed with status %s (%d).\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"nvmet_rdma_write_data_done\00", [37 x i8] zeroinitializer }, align 32
@nvmet_rdma_write_data_done._entry_ptr = internal global ptr @nvmet_rdma_write_data_done._entry, section ".printk_index", align 4
@nvmet_rdma_write_data_done._entry.75 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.74, ptr @.str, i32 824, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@nvmet_rdma_write_data_done._entry_ptr.76 = internal global ptr @nvmet_rdma_write_data_done._entry.75, section ".printk_index", align 4
@nvmet_rdma_map_sgl._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.77, ptr @.str.78, ptr @.str, i32 928, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\013nvmet_rdma: invalid SGL subtype: %#x\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"nvmet_rdma_map_sgl\00", [45 x i8] zeroinitializer }, align 32
@nvmet_rdma_map_sgl._entry_ptr = internal global ptr @nvmet_rdma_map_sgl._entry, section ".printk_index", align 4
@nvmet_rdma_map_sgl._entry.79 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.77, ptr @.str.78, ptr @.str, i32 940, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@nvmet_rdma_map_sgl._entry_ptr.80 = internal global ptr @nvmet_rdma_map_sgl._entry.79, section ".printk_index", align 4
@nvmet_rdma_map_sgl._entry.81 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.82, ptr @.str.78, ptr @.str, i32 946, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\013nvmet_rdma: invalid SGL type: %#x\0A\00", [59 x i8] zeroinitializer }, align 32
@nvmet_rdma_map_sgl._entry_ptr.83 = internal global ptr @nvmet_rdma_map_sgl._entry.81, section ".printk_index", align 4
@nvmet_rdma_map_sgl_inline._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.84, ptr @.str.85, ptr @.str, i32 866, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\013nvmet_rdma: invalid inline data offset!\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"nvmet_rdma_map_sgl_inline\00", [38 x i8] zeroinitializer }, align 32
@nvmet_rdma_map_sgl_inline._entry_ptr = internal global ptr @nvmet_rdma_map_sgl_inline._entry, section ".printk_index", align 4
@ib_destroy_srq.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.86 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/rdma/ib_verbs.h\00", [40 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Destroy of kernel SRQ shouldn't fail\00", [59 x i8] zeroinitializer }, align 32
@ib_dealloc_pd.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.88 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Destroy of kernel PD shouldn't fail\00", [60 x i8] zeroinitializer }, align 32
@nvmet_rdma_cm_reject.__UNIQUE_ID_ddebug550 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.89, ptr @.str, ptr @.str.90, i8 1, i8 96, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.89 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"nvmet_rdma_cm_reject\00", [43 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"rejecting connect request: status %d (%s)\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"nvmet_rdma: rejecting connect request: status %d (%s)\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"invalid length\00", [17 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"invalid record format\00", [42 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"invalid queue ID\00", [47 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"invalid host SQ size\00", [43 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"invalid host RQ size\00", [43 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"resource not found\00", [45 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"unrecognized reason\00", [44 x i8] zeroinitializer }, align 32
@nvmet_rdma_alloc_queue.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.101 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"(work_completion)(&queue->release_work)\00", [56 x i8] zeroinitializer }, align 32
@nvmet_rdma_alloc_queue.__key.102 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.103 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"&queue->state_lock\00", [45 x i8] zeroinitializer }, align 32
@nvmet_rdma_alloc_queue.__key.104 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.105 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"&queue->rsp_wr_wait_lock\00", [39 x i8] zeroinitializer }, align 32
@nvmet_rdma_alloc_queue.__key.106 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.107 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"&queue->rsps_lock\00", [46 x i8] zeroinitializer }, align 32
@nvmet_rdma_alloc_queue._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.108, ptr @.str.109, ptr @.str, i32 1497, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"\013nvmet_rdma: %s: creating RDMA queue failed (%d).\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"nvmet_rdma_alloc_queue\00", [41 x i8] zeroinitializer }, align 32
@nvmet_rdma_alloc_queue._entry_ptr = internal global ptr @nvmet_rdma_alloc_queue._entry, section ".printk_index", align 4
@nvmet_rdma_create_queue_ib._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.110, ptr @.str.111, ptr @.str, i32 1275, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\013nvmet_rdma: failed to create CQ cqe= %d ret= %d\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.111 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"nvmet_rdma_create_queue_ib\00", [37 x i8] zeroinitializer }, align 32
@nvmet_rdma_create_queue_ib._entry_ptr = internal global ptr @nvmet_rdma_create_queue_ib._entry, section ".printk_index", align 4
@nvmet_rdma_create_queue_ib._entry.112 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.113, ptr @.str.111, ptr @.str, i32 1306, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.113 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\013nvmet_rdma: failed to create_qp ret= %d\0A\00", [53 x i8] zeroinitializer }, align 32
@nvmet_rdma_create_queue_ib._entry_ptr.114 = internal global ptr @nvmet_rdma_create_queue_ib._entry.112, section ".printk_index", align 4
@nvmet_rdma_create_queue_ib.__UNIQUE_ID_ddebug548 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.111, ptr @.str, ptr @.str.115, i8 1, i8 72, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.115 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"%s: max_cqe= %d max_sge= %d sq_size = %d cm_id= %p\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.116 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"nvmet_rdma: %s: max_cqe= %d max_sge= %d sq_size = %d cm_id= %p\0A\00", [32 x i8] zeroinitializer }, align 32
@nvmet_rdma_qp_event.__UNIQUE_ID_ddebug551 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.117, ptr @.str, ptr @.str.118, i8 1, i8 127, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.117 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"nvmet_rdma_qp_event\00", [44 x i8] zeroinitializer }, align 32
@.str.118 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"received last WQE reached event for queue=0x%p\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.119 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"nvmet_rdma: received last WQE reached event for queue=0x%p\0A\00", [36 x i8] zeroinitializer }, align 32
@nvmet_rdma_qp_event._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.120, ptr @.str.117, ptr @.str, i32 1537, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.120 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\013nvmet_rdma: received IB QP event: %s (%d)\0A\00", [51 x i8] zeroinitializer }, align 32
@nvmet_rdma_qp_event._entry_ptr = internal global ptr @nvmet_rdma_qp_event._entry, section ".printk_index", align 4
@nvmet_rdma_cm_accept._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.121, ptr @.str.122, ptr @.str, i32 1561, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.121 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"\013nvmet_rdma: rdma_accept failed (error code = %d)\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.122 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"nvmet_rdma_cm_accept\00", [43 x i8] zeroinitializer }, align 32
@nvmet_rdma_cm_accept._entry_ptr = internal global ptr @nvmet_rdma_cm_accept._entry, section ".printk_index", align 4
@nvmet_rdma_free_queue.__UNIQUE_ID_ddebug549 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.123, ptr @.str, ptr @.str.124, i8 1, i8 81, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.123 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"nvmet_rdma_free_queue\00", [42 x i8] zeroinitializer }, align 32
@.str.124 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"freeing queue %d\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.125 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"nvmet_rdma: freeing queue %d\0A\00", [34 x i8] zeroinitializer }, align 32
@nvmet_rdma_queue_established._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.126, ptr @.str.127, ptr @.str, i32 1620, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.126 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"\014nvmet_rdma: trying to establish a connected queue\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.127 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"nvmet_rdma_queue_established\00", [35 x i8] zeroinitializer }, align 32
@nvmet_rdma_queue_established._entry_ptr = internal global ptr @nvmet_rdma_queue_established._entry, section ".printk_index", align 4
@nvmet_rdma_queue_connect_fail.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@nvmet_rdma_queue_connect_fail._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.128, ptr @.str.129, ptr @.str, i32 1701, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.128 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\013nvmet_rdma: failed to connect queue %d\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.129 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"nvmet_rdma_queue_connect_fail\00", [34 x i8] zeroinitializer }, align 32
@nvmet_rdma_queue_connect_fail._entry_ptr = internal global ptr @nvmet_rdma_queue_connect_fail._entry, section ".printk_index", align 4
@.str.130 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"%pISc\00", [26 x i8] zeroinitializer }, align 32
@nvmet_rdma_remove_one._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.131, ptr @.str.132, ptr @.str, i32 2050, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.131 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\016nvmet_rdma: Removing queue %d\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.132 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"nvmet_rdma_remove_one\00", [42 x i8] zeroinitializer }, align 32
@nvmet_rdma_remove_one._entry_ptr = internal global ptr @nvmet_rdma_remove_one._entry, section ".printk_index", align 4
@.str.133 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"nvmet_rdma_queue_ida.xa_lock\00", [35 x i8] zeroinitializer }, align 32
@switch.table.nvmet_rdma_alloc_queue = internal constant { [6 x ptr], [40 x i8] } { [6 x ptr] [ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.97], [40 x i8] zeroinitializer }, align 32
@switch.table.nvmet_rdma_write_data_done = internal constant { [3 x i16], [26 x i8] } { [3 x i16] [i16 1284, i16 1288, i16 1286], [26 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 8, i64 1, i64 2]
@__sancov_gen_cov_switch_values.134 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.135 = internal global [11 x i64] [i64 9, i64 32, i64 4, i64 6, i64 7, i64 8, i64 9, i64 10, i64 11, i64 14, i64 15]
@__sancov_gen_cov_switch_values.136 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 5]
@__sancov_gen_cov_switch_values.137 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4]
@__sancov_gen_cov_switch_values.138 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 15]
@__sancov_gen_cov_switch_values.139 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 5]
@__sancov_gen_cov_switch_values.140 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.141 = internal global [4 x i64] [i64 2, i64 32, i64 4, i64 16]
@___asan_gen_.142 = private unnamed_addr constant [19 x i8] c"nvmet_rdma_use_srq\00", align 1
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.593, i32 143, i32 13 }
@___asan_gen_.145 = private unnamed_addr constant [13 x i8] c"srq_size_ops\00", align 1
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.593, i32 148, i32 38 }
@___asan_gen_.148 = private unnamed_addr constant [20 x i8] c"nvmet_rdma_srq_size\00", align 1
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.593, i32 153, i32 12 }
@___asan_gen_.151 = private unnamed_addr constant [15 x i8] c"nvmet_rdma_ops\00", align 1
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.593, i32 2008, i32 39 }
@___asan_gen_.154 = private unnamed_addr constant [21 x i8] c"nvmet_rdma_ib_client\00", align 1
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.593, i32 2059, i32 25 }
@___asan_gen_.157 = private unnamed_addr constant [22 x i8] c"nvmet_rdma_queue_list\00", align 1
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.593, i32 158, i32 8 }
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.593, i32 2087, i32 2 }
@___asan_gen_.163 = private unnamed_addr constant [21 x i8] c"nvmet_rdma_queue_ida\00", align 1
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.593, i32 748, i32 3 }
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.593, i32 516, i32 3 }
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.593, i32 958, i32 3 }
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.593, i32 1921, i32 2 }
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.593, i32 1931, i32 3 }
@___asan_gen_.222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.593, i32 1940, i32 3 }
@___asan_gen_.228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.593, i32 1949, i32 3 }
@___asan_gen_.234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.593, i32 1958, i32 2 }
@___asan_gen_.235 = private unnamed_addr constant [23 x i8] c"nvmet_rdma_queue_mutex\00", align 1
@___asan_gen_.243 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.593, i32 159, i32 8 }
@___asan_gen_.252 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.593, i32 1646, i32 2 }
@___asan_gen_.261 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.593, i32 1863, i32 3 }
@___asan_gen_.267 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.593, i32 1873, i32 3 }
@___asan_gen_.273 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.593, i32 1879, i32 3 }
@___asan_gen_.279 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.593, i32 1885, i32 3 }
@___asan_gen_.288 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.593, i32 1761, i32 2 }
@___asan_gen_.294 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.593, i32 1788, i32 3 }
@___asan_gen_.300 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.593, i32 1796, i32 3 }
@___asan_gen_.301 = private unnamed_addr constant [18 x i8] c"device_list_mutex\00", align 1
@___asan_gen_.304 = private unnamed_addr constant [12 x i8] c"device_list\00", align 1
@___asan_gen_.306 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.593, i32 161, i32 8 }
@___asan_gen_.315 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.593, i32 1215, i32 3 }
@___asan_gen_.321 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.593, i32 1226, i32 3 }
@___asan_gen_.327 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.593, i32 1247, i32 2 }
@___asan_gen_.333 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.593, i32 162, i32 8 }
@___asan_gen_.342 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.593, i32 1145, i32 3 }
@___asan_gen_.347 = private unnamed_addr constant [31 x i8] c"../include/linux/dma-mapping.h\00", align 1
@___asan_gen_.348 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 326, i32 6 }
@___asan_gen_.357 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.593, i32 1017, i32 4 }
@___asan_gen_.363 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.593, i32 1026, i32 3 }
@___asan_gen_.372 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.593, i32 710, i32 3 }
@___asan_gen_.381 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.593, i32 769, i32 4 }
@___asan_gen_.390 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.593, i32 552, i32 3 }
@___asan_gen_.396 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.593, i32 568, i32 3 }
@___asan_gen_.405 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.593, i32 806, i32 4 }
@___asan_gen_.408 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.593, i32 824, i32 3 }
@___asan_gen_.417 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.593, i32 928, i32 4 }
@___asan_gen_.420 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.593, i32 940, i32 4 }
@___asan_gen_.426 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.593, i32 946, i32 3 }
@___asan_gen_.435 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.593, i32 866, i32 3 }
@___asan_gen_.441 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.443, i32 3688, i32 2 }
@___asan_gen_.443 = private unnamed_addr constant [27 x i8] c"../include/rdma/ib_verbs.h\00", align 1
@___asan_gen_.444 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.443, i32 3498, i32 2 }
@___asan_gen_.453 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.593, i32 1409, i32 2 }
@___asan_gen_.456 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.473, i32 30, i32 10 }
@___asan_gen_.459 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.473, i32 32, i32 10 }
@___asan_gen_.462 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.473, i32 34, i32 10 }
@___asan_gen_.465 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.473, i32 36, i32 10 }
@___asan_gen_.468 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.473, i32 38, i32 10 }
@___asan_gen_.471 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.473, i32 40, i32 10 }
@___asan_gen_.473 = private unnamed_addr constant [29 x i8] c"../include/linux/nvme-rdma.h\00", align 1
@___asan_gen_.474 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.473, i32 46, i32 10 }
@___asan_gen_.480 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.593, i32 1448, i32 2 }
@___asan_gen_.486 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.593, i32 1453, i32 2 }
@___asan_gen_.492 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.593, i32 1457, i32 2 }
@___asan_gen_.493 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.498 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.593, i32 1459, i32 2 }
@___asan_gen_.507 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.593, i32 1496, i32 3 }
@___asan_gen_.516 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.593, i32 1274, i32 3 }
@___asan_gen_.522 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.593, i32 1306, i32 3 }
@___asan_gen_.528 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.593, i32 1313, i32 2 }
@___asan_gen_.537 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.593, i32 1532, i32 3 }
@___asan_gen_.543 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.593, i32 1536, i32 3 }
@___asan_gen_.552 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.593, i32 1561, i32 3 }
@___asan_gen_.561 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.593, i32 1348, i32 2 }
@___asan_gen_.570 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.593, i32 1620, i32 3 }
@___asan_gen_.579 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.593, i32 1701, i32 2 }
@___asan_gen_.582 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.593, i32 1990, i32 19 }
@___asan_gen_.583 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.591 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.593, i32 2050, i32 3 }
@___asan_gen_.592 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.593 = private constant [30 x i8] c"../drivers/nvme/target/rdma.c\00", align 1
@___asan_gen_.594 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.593, i32 157, i32 8 }
@___asan_gen_.595 = private unnamed_addr constant [36 x i8] c"switch.table.nvmet_rdma_alloc_queue\00", align 1
@___asan_gen_.596 = private unnamed_addr constant [40 x i8] c"switch.table.nvmet_rdma_write_data_done\00", align 1
@llvm.compiler.used = appending global [198 x ptr] [ptr @__UNIQUE_ID_alias566, ptr @__UNIQUE_ID_file564, ptr @__UNIQUE_ID_license565, ptr @__UNIQUE_ID_srq_size532, ptr @__UNIQUE_ID_use_srq531, ptr @__UNIQUE_ID_use_srqtype530, ptr @__exitcall_nvmet_rdma_exit, ptr @__initcall__kmod_nvmet_rdma__563_2091_nvmet_rdma_init6, ptr @__param_srq_size, ptr @__param_use_srq, ptr @nvmet_rdma_add_port._entry, ptr @nvmet_rdma_add_port._entry.14, ptr @nvmet_rdma_add_port._entry.17, ptr @nvmet_rdma_add_port._entry.20, ptr @nvmet_rdma_add_port._entry_ptr, ptr @nvmet_rdma_add_port._entry_ptr.16, ptr @nvmet_rdma_add_port._entry_ptr.19, ptr @nvmet_rdma_add_port._entry_ptr.22, ptr @nvmet_rdma_alloc_queue._entry, ptr @nvmet_rdma_alloc_queue._entry_ptr, ptr @nvmet_rdma_check_pi_status._entry, ptr @nvmet_rdma_check_pi_status._entry.70, ptr @nvmet_rdma_check_pi_status._entry_ptr, ptr @nvmet_rdma_check_pi_status._entry_ptr.72, ptr @nvmet_rdma_cm_accept._entry, ptr @nvmet_rdma_cm_accept._entry_ptr, ptr @nvmet_rdma_cm_handler._entry, ptr @nvmet_rdma_cm_handler._entry_ptr, ptr @nvmet_rdma_create_queue_ib._entry, ptr @nvmet_rdma_create_queue_ib._entry.112, ptr @nvmet_rdma_create_queue_ib._entry_ptr, ptr @nvmet_rdma_create_queue_ib._entry_ptr.114, ptr @nvmet_rdma_enable_port._entry, ptr @nvmet_rdma_enable_port._entry.30, ptr @nvmet_rdma_enable_port._entry.33, ptr @nvmet_rdma_enable_port._entry.36, ptr @nvmet_rdma_enable_port._entry_ptr, ptr @nvmet_rdma_enable_port._entry_ptr.32, ptr @nvmet_rdma_enable_port._entry_ptr.35, ptr @nvmet_rdma_enable_port._entry_ptr.38, ptr @nvmet_rdma_exit, ptr @nvmet_rdma_find_get_device._entry, ptr @nvmet_rdma_find_get_device._entry.47, ptr @nvmet_rdma_find_get_device._entry_ptr, ptr @nvmet_rdma_find_get_device._entry_ptr.49, ptr @nvmet_rdma_init_srqs._entry, ptr @nvmet_rdma_init_srqs._entry_ptr, ptr @nvmet_rdma_map_sgl._entry, ptr @nvmet_rdma_map_sgl._entry.79, ptr @nvmet_rdma_map_sgl._entry.81, ptr @nvmet_rdma_map_sgl._entry_ptr, ptr @nvmet_rdma_map_sgl._entry_ptr.80, ptr @nvmet_rdma_map_sgl._entry_ptr.83, ptr @nvmet_rdma_map_sgl_inline._entry, ptr @nvmet_rdma_map_sgl_inline._entry_ptr, ptr @nvmet_rdma_post_recv._entry, ptr @nvmet_rdma_post_recv._entry_ptr, ptr @nvmet_rdma_qp_event._entry, ptr @nvmet_rdma_qp_event._entry_ptr, ptr @nvmet_rdma_queue_connect_fail._entry, ptr @nvmet_rdma_queue_connect_fail._entry_ptr, ptr @nvmet_rdma_queue_established._entry, ptr @nvmet_rdma_queue_established._entry_ptr, ptr @nvmet_rdma_queue_response._entry, ptr @nvmet_rdma_queue_response._entry_ptr, ptr @nvmet_rdma_read_data_done._entry, ptr @nvmet_rdma_read_data_done._entry_ptr, ptr @nvmet_rdma_recv_done._entry, ptr @nvmet_rdma_recv_done._entry.61, ptr @nvmet_rdma_recv_done._entry_ptr, ptr @nvmet_rdma_recv_done._entry_ptr.63, ptr @nvmet_rdma_remove_one._entry, ptr @nvmet_rdma_remove_one._entry_ptr, ptr @nvmet_rdma_send_done._entry, ptr @nvmet_rdma_send_done._entry_ptr, ptr @nvmet_rdma_write_data_done._entry, ptr @nvmet_rdma_write_data_done._entry.75, ptr @nvmet_rdma_write_data_done._entry_ptr, ptr @nvmet_rdma_write_data_done._entry_ptr.76, ptr @nvmet_rdma_use_srq, ptr @srq_size_ops, ptr @nvmet_rdma_srq_size, ptr @nvmet_rdma_ops, ptr @nvmet_rdma_ib_client, ptr @nvmet_rdma_queue_list, ptr @.str, ptr @nvmet_rdma_queue_ida, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @nvmet_rdma_add_port.__key, ptr @.str.9, ptr @nvmet_rdma_add_port.__key.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.15, ptr @.str.18, ptr @.str.21, ptr @nvmet_rdma_queue_mutex, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.31, ptr @.str.34, ptr @.str.37, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @device_list_mutex, ptr @device_list, ptr @.str.45, ptr @.str.46, ptr @.str.48, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.59, ptr @.str.60, ptr @.str.62, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.71, ptr @.str.73, ptr @.str.74, ptr @.str.77, ptr @.str.78, ptr @.str.82, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.100, ptr @nvmet_rdma_alloc_queue.__key, ptr @.str.101, ptr @nvmet_rdma_alloc_queue.__key.102, ptr @.str.103, ptr @nvmet_rdma_alloc_queue.__key.104, ptr @.str.105, ptr @nvmet_rdma_alloc_queue.__key.106, ptr @.str.107, ptr @.str.108, ptr @.str.109, ptr @.str.110, ptr @.str.111, ptr @.str.113, ptr @.str.115, ptr @.str.116, ptr @.str.117, ptr @.str.118, ptr @.str.119, ptr @.str.120, ptr @.str.121, ptr @.str.122, ptr @.str.123, ptr @.str.124, ptr @.str.125, ptr @.str.126, ptr @.str.127, ptr @.str.128, ptr @.str.129, ptr @.str.130, ptr @.str.131, ptr @.str.132, ptr @.str.133, ptr @switch.table.nvmet_rdma_alloc_queue, ptr @switch.table.nvmet_rdma_write_data_done], section "llvm.metadata"
@0 = internal global [153 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvmet_rdma_use_srq to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @srq_size_ops to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvmet_rdma_srq_size to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvmet_rdma_ops to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvmet_rdma_ib_client to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvmet_rdma_queue_list to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvmet_rdma_queue_ida to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvmet_rdma_queue_response._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvmet_rdma_post_recv._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvmet_rdma_add_port.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvmet_rdma_add_port.__key.10 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvmet_rdma_add_port._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvmet_rdma_add_port._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvmet_rdma_add_port._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvmet_rdma_add_port._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvmet_rdma_queue_mutex to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvmet_rdma_enable_port._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvmet_rdma_enable_port._entry.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvmet_rdma_enable_port._entry.33 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvmet_rdma_enable_port._entry.36 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvmet_rdma_cm_handler._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @device_list_mutex to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @device_list to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvmet_rdma_find_get_device._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 86, i32 128, i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvmet_rdma_find_get_device._entry.47 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 66, i32 128, i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvmet_rdma_init_srqs._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvmet_rdma_recv_done._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvmet_rdma_recv_done._entry.61 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvmet_rdma_send_done._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvmet_rdma_read_data_done._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 66, i32 128, i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvmet_rdma_check_pi_status._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvmet_rdma_check_pi_status._entry.70 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvmet_rdma_write_data_done._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvmet_rdma_write_data_done._entry.75 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvmet_rdma_map_sgl._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvmet_rdma_map_sgl._entry.79 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvmet_rdma_map_sgl._entry.81 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvmet_rdma_map_sgl_inline._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvmet_rdma_alloc_queue.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvmet_rdma_alloc_queue.__key.102 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvmet_rdma_alloc_queue.__key.104 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvmet_rdma_alloc_queue.__key.106 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvmet_rdma_alloc_queue._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvmet_rdma_create_queue_ib._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvmet_rdma_create_queue_ib._entry.112 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvmet_rdma_qp_event._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvmet_rdma_cm_accept._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.122 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.123 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.124 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.125 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvmet_rdma_queue_established._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.126 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.127 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvmet_rdma_queue_connect_fail._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.128 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.129 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.130 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvmet_rdma_remove_one._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.131 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.132 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.133 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.nvmet_rdma_alloc_queue to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.nvmet_rdma_write_data_done to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @nvmet_rdma_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @nvmet_unregister_transport(ptr noundef nonnull @nvmet_rdma_ops) #14
  tail call void @ib_unregister_client(ptr noundef nonnull @nvmet_rdma_ib_client) #14
  %0 = load volatile ptr, ptr @nvmet_rdma_queue_list, align 4
  %cmp.i.not = icmp eq ptr %0, @nvmet_rdma_queue_list
  br i1 %cmp.i.not, label %entry.if.end29_crit_edge, label %land.rhs

entry.if.end29_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end29

land.rhs:                                         ; preds = %entry
  %.b39 = load i1, ptr @nvmet_rdma_exit.__already_done, align 1
  br i1 %.b39, label %land.rhs.if.end29_crit_edge, label %if.then, !prof !306

land.rhs.if.end29_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end29

if.then:                                          ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @nvmet_rdma_exit.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 2087, i32 noundef 9, ptr noundef null) #14
  br label %if.end29

if.end29:                                         ; preds = %if.then, %land.rhs.if.end29_crit_edge, %entry.if.end29_crit_edge
  tail call void @ida_destroy(ptr noundef nonnull @nvmet_rdma_queue_ida) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvmet_unregister_transport(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ib_unregister_client(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ida_destroy(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @nvmet_rdma_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @ib_register_client(ptr noundef nonnull @nvmet_rdma_ib_client) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @nvmet_register_transport(ptr noundef nonnull @nvmet_rdma_ops) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %err_ib_client

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

err_ib_client:                                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @ib_unregister_client(ptr noundef nonnull @nvmet_rdma_ib_client) #14
  br label %cleanup

cleanup:                                          ; preds = %err_ib_client, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %err_ib_client ], [ %call, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @srq_size_set(ptr noundef %val, ptr noundef %kp) #3 align 64 {
entry:
  %n = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %n) #14
  %0 = ptrtoint ptr %n to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %n, align 4
  %call = call i32 @kstrtoint(ptr noundef %val, i32 noundef 10, ptr noundef nonnull %n) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp.not = icmp eq i32 %call, 0
  br i1 %cmp.not, label %lor.lhs.false, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %1 = ptrtoint ptr %n to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %n, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %2)
  %cmp1 = icmp slt i32 %2, 256
  br i1 %cmp1, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #16
  %call2 = call i32 @param_set_int(ptr noundef %val, ptr noundef %kp) #14
  br label %cleanup

cleanup:                                          ; preds = %if.end, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2, %if.end ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %n) #14
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @param_get_int(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtoint(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @param_set_int(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nvmet_rdma_queue_response(ptr noundef %req) #3 align 64 {
entry:
  %dummy.i = alloca ptr, align 4
  %dummy.i19.i = alloca ptr, align 4
  %dummy.i.i = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %req, i32 -160
  %queue = getelementptr i8, ptr %req, i32 -92
  %0 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %queue, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %flags = getelementptr i8, ptr %req, i32 340
  %4 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %flags, align 4
  %and = and i32 %5, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %invalidate_rkey = getelementptr i8, ptr %req, i32 344
  %6 = ptrtoint ptr %invalidate_rkey to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %invalidate_rkey, align 8
  %ex = getelementptr i8, ptr %req, i32 -104
  %8 = ptrtoint ptr %ex to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %ex, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %.sink = phi i32 [ 9, %if.then ], [ 2, %entry.if.end_crit_edge ]
  %9 = getelementptr i8, ptr %req, i32 -112
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %.sink, ptr %9, align 8
  %11 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %req, align 8
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %12, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 127, i8 %14)
  %cmp.i.i.i = icmp eq i8 %14, 127
  br i1 %cmp.i.i.i, label %if.then.i.i, label %if.end.nvme_is_write.exit.i_crit_edge, !prof !307

if.end.nvme_is_write.exit.i_crit_edge:            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %nvme_is_write.exit.i

if.then.i.i:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %fctype.i.i = getelementptr inbounds %struct.nvmf_common_command, ptr %12, i32 0, i32 3
  br label %nvme_is_write.exit.i

nvme_is_write.exit.i:                             ; preds = %if.then.i.i, %if.end.nvme_is_write.exit.i_crit_edge
  %retval.0.in.in.in.i.i = phi ptr [ %fctype.i.i, %if.then.i.i ], [ %12, %if.end.nvme_is_write.exit.i_crit_edge ]
  %15 = ptrtoint ptr %retval.0.in.in.in.i.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %retval.0.in.in.i.i = load i8, ptr %retval.0.in.in.in.i.i, align 4
  %retval.0.in.i.i = and i8 %retval.0.in.in.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %retval.0.in.i.i)
  %retval.0.i.not.i = icmp eq i8 %retval.0.in.i.i, 0
  br i1 %retval.0.i.not.i, label %land.lhs.true.i, label %nvme_is_write.exit.i.if.else17_crit_edge

nvme_is_write.exit.i.if.else17_crit_edge:         ; preds = %nvme_is_write.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.else17

land.lhs.true.i:                                  ; preds = %nvme_is_write.exit.i
  %transfer_len.i = getelementptr i8, ptr %req, i32 296
  %16 = ptrtoint ptr %transfer_len.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %transfer_len.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool.not.i = icmp eq i32 %17, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.if.else17_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.if.else17_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.else17

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %cqe.i = getelementptr i8, ptr %req, i32 4
  %18 = ptrtoint ptr %cqe.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %cqe.i, align 4
  %status.i = getelementptr inbounds %struct.nvme_completion, ptr %19, i32 0, i32 4
  %20 = ptrtoint ptr %status.i to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %status.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %21)
  %tobool4.not.i = icmp eq i16 %21, 0
  br i1 %tobool4.not.i, label %nvmet_rdma_need_data_out.exit, label %land.lhs.true2.i.if.else17_crit_edge

land.lhs.true2.i.if.else17_crit_edge:             ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.else17

nvmet_rdma_need_data_out.exit:                    ; preds = %land.lhs.true2.i
  %22 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %flags, align 4
  %and.i = and i32 %23, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool5.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool5.not.i, label %if.then5, label %nvmet_rdma_need_data_out.exit.if.else17_crit_edge

nvmet_rdma_need_data_out.exit.if.else17_crit_edge: ; preds = %nvmet_rdma_need_data_out.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.else17

if.then5:                                         ; preds = %nvmet_rdma_need_data_out.exit
  %metadata_len = getelementptr inbounds %struct.nvmet_req, ptr %req, i32 0, i32 12
  %24 = ptrtoint ptr %metadata_len to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %metadata_len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool7.not = icmp eq i32 %25, 0
  %rw11 = getelementptr i8, ptr %req, i32 -80
  %qp12 = getelementptr inbounds %struct.rdma_cm_id, ptr %3, i32 0, i32 2
  %26 = ptrtoint ptr %qp12 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %qp12, align 4
  %port_num13 = getelementptr inbounds %struct.rdma_cm_id, ptr %3, i32 0, i32 7
  %28 = ptrtoint ptr %port_num13 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %port_num13, align 4
  br i1 %tobool7.not, label %if.else10, label %if.then8

if.then8:                                         ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #16
  %write_cqe = getelementptr i8, ptr %req, i32 -84
  %call9 = tail call ptr @rdma_rw_ctx_wrs(ptr noundef %rw11, ptr noundef %27, i32 noundef %29, ptr noundef %write_cqe, ptr noundef null) #14
  br label %if.end19

if.else10:                                        ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #16
  %send_wr14 = getelementptr i8, ptr %req, i32 -136
  %call15 = tail call ptr @rdma_rw_ctx_wrs(ptr noundef %rw11, ptr noundef %27, i32 noundef %29, ptr noundef null, ptr noundef %send_wr14) #14
  br label %if.end19

if.else17:                                        ; preds = %nvmet_rdma_need_data_out.exit.if.else17_crit_edge, %land.lhs.true2.i.if.else17_crit_edge, %land.lhs.true.i.if.else17_crit_edge, %nvme_is_write.exit.i.if.else17_crit_edge
  %send_wr18 = getelementptr i8, ptr %req, i32 -136
  br label %if.end19

if.end19:                                         ; preds = %if.else17, %if.else10, %if.then8
  %first_wr.0 = phi ptr [ %call9, %if.then8 ], [ %call15, %if.else10 ], [ %send_wr18, %if.else17 ]
  %30 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %queue, align 4
  %dev = getelementptr inbounds %struct.nvmet_rdma_queue, ptr %31, i32 0, i32 5
  %32 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %dev, align 4
  %cmd = getelementptr i8, ptr %req, i32 -96
  %34 = ptrtoint ptr %cmd to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %cmd, align 8
  %36 = ptrtoint ptr %33 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %33, align 4
  %38 = ptrtoint ptr %35 to i32
  call void @__asan_load8_noabort(i32 %38)
  %39 = load i64, ptr %35, align 8
  %length.i = getelementptr inbounds %struct.ib_sge, ptr %35, i32 0, i32 1
  %40 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %length.i, align 8
  %42 = ptrtoint ptr %37 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %37, align 8
  %conv.i.i = trunc i64 %39 to i32
  tail call void @dma_sync_single_for_device(ptr noundef %43, i32 noundef %conv.i.i, i32 noundef %41, i32 noundef 2) #14
  %nsrq.i = getelementptr inbounds %struct.nvmet_rdma_cmd, ptr %35, i32 0, i32 6
  %44 = ptrtoint ptr %nsrq.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %nsrq.i, align 8
  %tobool.not.i56 = icmp eq ptr %45, null
  br i1 %tobool.not.i56, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #16
  %46 = ptrtoint ptr %45 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %45, align 4
  %wr.i = getelementptr inbounds %struct.nvmet_rdma_cmd, ptr %35, i32 0, i32 2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %dummy.i.i) #14
  %48 = ptrtoint ptr %dummy.i.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr inttoptr (i32 -1 to ptr), ptr %dummy.i.i, align 4, !annotation !308
  %49 = ptrtoint ptr %47 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %47, align 4
  %post_srq_recv.i.i = getelementptr inbounds %struct.ib_device, ptr %50, i32 0, i32 1, i32 13
  %51 = ptrtoint ptr %post_srq_recv.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %post_srq_recv.i.i, align 4
  %call.i.i = call i32 %52(ptr noundef %47, ptr noundef %wr.i, ptr noundef nonnull %dummy.i.i) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dummy.i.i) #14
  br label %if.end.i

if.else.i:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #16
  %queue.i = getelementptr inbounds %struct.nvmet_rdma_cmd, ptr %35, i32 0, i32 5
  %53 = ptrtoint ptr %queue.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %queue.i, align 4
  %qp.i = getelementptr inbounds %struct.nvmet_rdma_queue, ptr %54, i32 0, i32 1
  %55 = ptrtoint ptr %qp.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %qp.i, align 4
  %wr4.i = getelementptr inbounds %struct.nvmet_rdma_cmd, ptr %35, i32 0, i32 2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %dummy.i19.i) #14
  %57 = ptrtoint ptr %dummy.i19.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr inttoptr (i32 -1 to ptr), ptr %dummy.i19.i, align 4, !annotation !308
  %58 = ptrtoint ptr %56 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %56, align 4
  %post_recv.i.i = getelementptr inbounds %struct.ib_device, ptr %59, i32 0, i32 1, i32 7
  %60 = ptrtoint ptr %post_recv.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %post_recv.i.i, align 4
  %call.i20.i = call i32 %61(ptr noundef %56, ptr noundef %wr4.i, ptr noundef nonnull %dummy.i19.i) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dummy.i19.i) #14
  br label %if.end.i

if.end.i:                                         ; preds = %if.else.i, %if.then.i
  %ret.0.i = phi i32 [ %call.i.i, %if.then.i ], [ %call.i20.i, %if.else.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0.i)
  %tobool6.not.i = icmp eq i32 %ret.0.i, 0
  br i1 %tobool6.not.i, label %if.end.i.nvmet_rdma_post_recv.exit_crit_edge, label %do.end.i, !prof !306

if.end.i.nvmet_rdma_post_recv.exit_crit_edge:     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %nvmet_rdma_post_recv.exit

do.end.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  %call10.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3) #17
  br label %nvmet_rdma_post_recv.exit

nvmet_rdma_post_recv.exit:                        ; preds = %do.end.i, %if.end.i.nvmet_rdma_post_recv.exit_crit_edge
  %62 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %queue, align 4
  %dev23 = getelementptr inbounds %struct.nvmet_rdma_queue, ptr %63, i32 0, i32 5
  %64 = ptrtoint ptr %dev23 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %dev23, align 4
  %66 = ptrtoint ptr %65 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %65, align 4
  %68 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load8_noabort(i32 %68)
  %69 = load i64, ptr %add.ptr, align 8
  %length = getelementptr i8, ptr %req, i32 -152
  %70 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %length, align 8
  %72 = ptrtoint ptr %67 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %67, align 8
  %conv.i = trunc i64 %69 to i32
  call void @dma_sync_single_for_device(ptr noundef %73, i32 noundef %conv.i, i32 noundef %71, i32 noundef 1) #14
  %qp25 = getelementptr inbounds %struct.rdma_cm_id, ptr %3, i32 0, i32 2
  %74 = ptrtoint ptr %qp25 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %qp25, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %dummy.i) #14
  %76 = ptrtoint ptr %dummy.i to i32
  call void @__asan_store4_noabort(i32 %76)
  store ptr inttoptr (i32 -1 to ptr), ptr %dummy.i, align 4, !annotation !308
  %77 = ptrtoint ptr %75 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %75, align 4
  %post_send.i = getelementptr inbounds %struct.ib_device, ptr %78, i32 0, i32 1, i32 6
  %79 = ptrtoint ptr %post_send.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %post_send.i, align 4
  %call.i = call i32 %80(ptr noundef %75, ptr noundef %first_wr.0, ptr noundef nonnull %dummy.i) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dummy.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool27.not = icmp eq i32 %call.i, 0
  br i1 %tobool27.not, label %nvmet_rdma_post_recv.exit.if.end33_crit_edge, label %do.end, !prof !306

nvmet_rdma_post_recv.exit.if.end33_crit_edge:     ; preds = %nvmet_rdma_post_recv.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end33

do.end:                                           ; preds = %nvmet_rdma_post_recv.exit
  call void @__sanitizer_cov_trace_pc() #16
  %call32 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1) #17
  call fastcc void @nvmet_rdma_release_rsp(ptr noundef %add.ptr)
  br label %if.end33

if.end33:                                         ; preds = %do.end, %nvmet_rdma_post_recv.exit.if.end33_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nvmet_rdma_add_port(ptr noundef %nport) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 236) #18
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %priv = getelementptr inbounds %struct.nvmet_port, ptr %nport, i32 0, i32 11
  %1 = ptrtoint ptr %priv to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call7.i.i, ptr %priv, align 4
  %2 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %nport, ptr %call7.i.i, align 8
  %repair_work = getelementptr inbounds %struct.nvmet_rdma_port, ptr %call7.i.i, i32 0, i32 3
  tail call void @__init_work(ptr noundef %repair_work, i32 noundef 0) #14
  %3 = ptrtoint ptr %repair_work to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -64, ptr %repair_work, align 8
  %lockdep_map = getelementptr inbounds %struct.nvmet_rdma_port, ptr %call7.i.i, i32 0, i32 3, i32 0, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.9, ptr noundef nonnull @nvmet_rdma_add_port.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #14
  %entry9 = getelementptr inbounds %struct.nvmet_rdma_port, ptr %call7.i.i, i32 0, i32 3, i32 0, i32 1
  %4 = ptrtoint ptr %entry9 to i32
  call void @__asan_store4_noabort(i32 %4)
  store volatile ptr %entry9, ptr %entry9, align 4
  %prev.i = getelementptr inbounds %struct.nvmet_rdma_port, ptr %call7.i.i, i32 0, i32 3, i32 0, i32 1, i32 1
  %5 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %entry9, ptr %prev.i, align 8
  %func = getelementptr inbounds %struct.nvmet_rdma_port, ptr %call7.i.i, i32 0, i32 3, i32 0, i32 2
  %6 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @nvmet_rdma_repair_port_work, ptr %func, align 4
  %timer = getelementptr inbounds %struct.nvmet_rdma_port, ptr %call7.i.i, i32 0, i32 3, i32 1
  tail call void @init_timer_key(ptr noundef %timer, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef nonnull @.str.11, ptr noundef nonnull @nvmet_rdma_add_port.__key.10) #14
  %adrfam = getelementptr inbounds %struct.nvmet_port, ptr %nport, i32 0, i32 1, i32 1
  %7 = ptrtoint ptr %adrfam to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %adrfam, align 1
  %9 = zext i8 %8 to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values)
  switch i8 %8, label %do.end21 [
    i8 1, label %if.end.sw.epilog_crit_edge
    i8 2, label %sw.bb18
  ]

if.end.sw.epilog_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog

sw.bb18:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog

do.end21:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %conv = zext i8 %8 to i32
  %call25 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, i32 noundef %conv) #17
  br label %out_free_port

sw.epilog:                                        ; preds = %sw.bb18, %if.end.sw.epilog_crit_edge
  %af.0 = phi i16 [ 10, %sw.bb18 ], [ 2, %if.end.sw.epilog_crit_edge ]
  %inline_data_size = getelementptr inbounds %struct.nvmet_port, ptr %nport, i32 0, i32 13
  %10 = ptrtoint ptr %inline_data_size to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %inline_data_size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp = icmp slt i32 %11, 0
  br i1 %cmp, label %sw.epilog.if.end41.sink.split_crit_edge, label %if.else

sw.epilog.if.end41.sink.split_crit_edge:          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end41.sink.split

if.else:                                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_const_cmp4(i32 16384, i32 %11)
  %cmp30 = icmp ugt i32 %11, 16384
  br i1 %cmp30, label %do.end35, label %if.else.if.end41_crit_edge

if.else.if.end41_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end41

do.end35:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #16
  %call38 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, i32 noundef %11, i32 noundef 16384) #17
  br label %if.end41.sink.split

if.end41.sink.split:                              ; preds = %do.end35, %sw.epilog.if.end41.sink.split_crit_edge
  %.sink = phi i32 [ 16384, %do.end35 ], [ 4096, %sw.epilog.if.end41.sink.split_crit_edge ]
  %12 = ptrtoint ptr %inline_data_size to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %.sink, ptr %inline_data_size, align 4
  br label %if.end41

if.end41:                                         ; preds = %if.end41.sink.split, %if.else.if.end41_crit_edge
  %traddr = getelementptr inbounds %struct.nvmet_port, ptr %nport, i32 0, i32 1, i32 12
  %trsvcid = getelementptr inbounds %struct.nvmet_port, ptr %nport, i32 0, i32 1, i32 9
  %addr = getelementptr inbounds %struct.nvmet_rdma_port, ptr %call7.i.i, i32 0, i32 1
  %call45 = tail call i32 @inet_pton_with_scope(ptr noundef nonnull @init_net, i16 noundef zeroext %af.0, ptr noundef %traddr, ptr noundef %trsvcid, ptr noundef %addr) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call45)
  %tobool46.not = icmp eq i32 %call45, 0
  br i1 %tobool46.not, label %if.end59, label %do.end50

do.end50:                                         ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #16
  %call58 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18, ptr noundef %traddr, ptr noundef %trsvcid) #17
  br label %out_free_port

if.end59:                                         ; preds = %if.end41
  %call60 = tail call fastcc i32 @nvmet_rdma_enable_port(ptr noundef nonnull %call7.i.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %do.end66, label %if.end59.out_free_port_crit_edge

if.end59.out_free_port_crit_edge:                 ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #16
  br label %out_free_port

do.end66:                                         ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #16
  %portid = getelementptr inbounds %struct.nvmet_port, ptr %nport, i32 0, i32 1, i32 4
  %13 = ptrtoint ptr %portid to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %portid, align 4
  %15 = tail call i16 @llvm.bswap.i16(i16 %14)
  %conv69 = zext i16 %15 to i32
  %call71 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.21, i32 noundef %conv69, ptr noundef %addr) #17
  br label %cleanup

out_free_port:                                    ; preds = %if.end59.out_free_port_crit_edge, %do.end50, %do.end21
  %ret.0 = phi i32 [ -22, %do.end21 ], [ %call45, %do.end50 ], [ %call60, %if.end59.out_free_port_crit_edge ]
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #14
  br label %cleanup

cleanup:                                          ; preds = %out_free_port, %do.end66, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %out_free_port ], [ 0, %do.end66 ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nvmet_rdma_remove_port(ptr nocapture noundef readonly %nport) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.nvmet_port, ptr %nport, i32 0, i32 11
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  %repair_work = getelementptr inbounds %struct.nvmet_rdma_port, ptr %1, i32 0, i32 3
  %call = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %repair_work) #14
  tail call fastcc void @nvmet_rdma_disable_port(ptr noundef %1)
  tail call void @kfree(ptr noundef %1) #14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nvmet_rdma_delete_ctrl(ptr noundef readnone %ctrl) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  br label %restart

restart:                                          ; preds = %list_del_init.exit, %entry
  tail call void @mutex_lock_nested(ptr noundef nonnull @nvmet_rdma_queue_mutex, i32 noundef 0) #14
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %restart
  %.pn.in = phi ptr [ @nvmet_rdma_queue_list, %restart ], [ %.pn, %for.body.for.cond_crit_edge ]
  %0 = ptrtoint ptr %.pn.in to i32
  call void @__asan_load4_noabort(i32 %0)
  %.pn = load ptr, ptr %.pn.in, align 4
  %cmp.not = icmp eq ptr %.pn, @nvmet_rdma_queue_list
  br i1 %cmp.not, label %for.end, label %for.body

for.body:                                         ; preds = %for.cond
  %nvme_sq = getelementptr i8, ptr %.pn, i32 -320
  %1 = ptrtoint ptr %nvme_sq to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %nvme_sq, align 4
  %cmp2 = icmp eq ptr %2, %ctrl
  br i1 %cmp2, label %if.then, label %for.body.for.cond_crit_edge

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.cond

if.then:                                          ; preds = %for.body
  %queue.0.le = getelementptr i8, ptr %.pn, i32 -400
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn) #14
  br i1 %call.i.i, label %if.end.i.i, label %if.then.list_del_init.exit_crit_edge

if.then.list_del_init.exit_crit_edge:             ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  br label %list_del_init.exit

if.end.i.i:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %.pn, i32 0, i32 1
  %3 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %prev.i.i, align 4
  %5 = ptrtoint ptr %.pn to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %.pn, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %4, ptr %prev1.i.i.i, align 4
  %8 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %6, ptr %4, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i, %if.then.list_del_init.exit_crit_edge
  %9 = ptrtoint ptr %.pn to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %.pn, ptr %.pn, align 4
  %prev.i3.i = getelementptr inbounds %struct.list_head, ptr %.pn, i32 0, i32 1
  %10 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %.pn, ptr %prev.i3.i, align 4
  tail call void @mutex_unlock(ptr noundef nonnull @nvmet_rdma_queue_mutex) #14
  tail call fastcc void @__nvmet_rdma_queue_disconnect(ptr noundef %queue.0.le)
  br label %restart

for.end:                                          ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @mutex_unlock(ptr noundef nonnull @nvmet_rdma_queue_mutex) #14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nvmet_rdma_disc_port_addr(ptr nocapture noundef readonly %req, ptr nocapture noundef readonly %nport, ptr nocapture noundef writeonly %traddr) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.nvmet_port, ptr %nport, i32 0, i32 11
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  %cm_id1 = getelementptr inbounds %struct.nvmet_rdma_port, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %cm_id1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cm_id1, align 4
  %route = getelementptr inbounds %struct.rdma_cm_id, ptr %3, i32 0, i32 4
  %call = tail call zeroext i1 @inet_addr_is_any(ptr noundef %route) #14
  br i1 %call, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %queue = getelementptr i8, ptr %req, i32 -92
  %4 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %queue, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  %route4 = getelementptr inbounds %struct.rdma_cm_id, ptr %7, i32 0, i32 4
  %call7 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %traddr, ptr noundef nonnull @.str.130, ptr noundef %route4)
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %traddr8 = getelementptr inbounds %struct.nvmet_port, ptr %nport, i32 0, i32 1, i32 12
  %8 = call ptr @memcpy(ptr %traddr, ptr %traddr8, i32 256)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i8 @nvmet_rdma_get_mdts(ptr nocapture noundef readonly %ctrl) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %pi_support = getelementptr inbounds %struct.nvmet_ctrl, ptr %ctrl, i32 0, i32 31
  %0 = ptrtoint ptr %pi_support to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %pi_support, align 8, !range !309
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  %. = select i1 %tobool.not, i8 8, i8 5
  ret i8 %.
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i16 @nvmet_rdma_get_max_queue_size(ptr nocapture noundef readnone %ctrl) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  ret i16 128
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rdma_rw_ctx_wrs(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @nvmet_rdma_post_recv(ptr nocapture noundef readonly %ndev, ptr noundef %cmd) unnamed_addr #3 align 64 {
entry:
  %dummy.i19 = alloca ptr, align 4
  %dummy.i = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ndev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ndev, align 4
  %2 = ptrtoint ptr %cmd to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %cmd, align 8
  %length = getelementptr inbounds %struct.ib_sge, ptr %cmd, i32 0, i32 1
  %4 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %length, align 8
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 8
  %conv.i = trunc i64 %3 to i32
  tail call void @dma_sync_single_for_device(ptr noundef %7, i32 noundef %conv.i, i32 noundef %5, i32 noundef 2) #14
  %nsrq = getelementptr inbounds %struct.nvmet_rdma_cmd, ptr %cmd, i32 0, i32 6
  %8 = ptrtoint ptr %nsrq to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %nsrq, align 8
  %tobool.not = icmp eq ptr %9, null
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %9, align 4
  %wr = getelementptr inbounds %struct.nvmet_rdma_cmd, ptr %cmd, i32 0, i32 2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %dummy.i) #14
  %12 = ptrtoint ptr %dummy.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr inttoptr (i32 -1 to ptr), ptr %dummy.i, align 4, !annotation !308
  %13 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %11, align 4
  %post_srq_recv.i = getelementptr inbounds %struct.ib_device, ptr %14, i32 0, i32 1, i32 13
  %15 = ptrtoint ptr %post_srq_recv.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %post_srq_recv.i, align 4
  %call.i = call i32 %16(ptr noundef %11, ptr noundef %wr, ptr noundef nonnull %dummy.i) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dummy.i) #14
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %queue = getelementptr inbounds %struct.nvmet_rdma_cmd, ptr %cmd, i32 0, i32 5
  %17 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %queue, align 4
  %qp = getelementptr inbounds %struct.nvmet_rdma_queue, ptr %18, i32 0, i32 1
  %19 = ptrtoint ptr %qp to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %qp, align 4
  %wr4 = getelementptr inbounds %struct.nvmet_rdma_cmd, ptr %cmd, i32 0, i32 2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %dummy.i19) #14
  %21 = ptrtoint ptr %dummy.i19 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr inttoptr (i32 -1 to ptr), ptr %dummy.i19, align 4, !annotation !308
  %22 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %20, align 4
  %post_recv.i = getelementptr inbounds %struct.ib_device, ptr %23, i32 0, i32 1, i32 7
  %24 = ptrtoint ptr %post_recv.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %post_recv.i, align 4
  %call.i20 = call i32 %25(ptr noundef %20, ptr noundef %wr4, ptr noundef nonnull %dummy.i19) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dummy.i19) #14
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %ret.0 = phi i32 [ %call.i, %if.then ], [ %call.i20, %if.else ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0)
  %tobool6.not = icmp eq i32 %ret.0, 0
  br i1 %tobool6.not, label %if.end.if.end11_crit_edge, label %do.end, !prof !306

if.end.if.end11_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end11

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %call10 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3) #17
  br label %if.end11

if.end11:                                         ; preds = %do.end, %if.end.if.end11_crit_edge
  ret i32 %ret.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @nvmet_rdma_release_rsp(ptr noundef %rsp) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %queue1 = getelementptr inbounds %struct.nvmet_rdma_rsp, ptr %rsp, i32 0, i32 4
  %0 = ptrtoint ptr %queue1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %queue1, align 4
  %n_rdma = getelementptr inbounds %struct.nvmet_rdma_rsp, ptr %rsp, i32 0, i32 10
  %2 = ptrtoint ptr %n_rdma to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %n_rdma, align 1
  %conv = zext i8 %3 to i32
  %add = add nuw nsw i32 %conv, 1
  %sq_wr_avail = getelementptr inbounds %struct.nvmet_rdma_queue, ptr %1, i32 0, i32 4
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %sq_wr_avail, i32 noundef 4) #14
  tail call void @llvm.prefetch.p0(ptr %sq_wr_avail, i32 1, i32 3, i32 1) #14
  %4 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %sq_wr_avail, ptr %sq_wr_avail, i32 %add, ptr elementtype(i32) %sq_wr_avail) #14, !srcloc !310
  %5 = ptrtoint ptr %n_rdma to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %n_rdma, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool.not = icmp eq i8 %6, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  tail call fastcc void @nvmet_rdma_rw_ctx_destroy(ptr noundef %rsp)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %sg = getelementptr inbounds %struct.nvmet_rdma_rsp, ptr %rsp, i32 0, i32 8, i32 5
  %7 = ptrtoint ptr %sg to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %sg, align 4
  %cmd = getelementptr inbounds %struct.nvmet_rdma_rsp, ptr %rsp, i32 0, i32 3
  %9 = ptrtoint ptr %cmd to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %cmd, align 8
  %inline_sg = getelementptr inbounds %struct.nvmet_rdma_cmd, ptr %10, i32 0, i32 3
  %cmp.not = icmp eq ptr %8, %inline_sg
  br i1 %cmp.not, label %if.end.if.end6_crit_edge, label %if.then4

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end6

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %req = getelementptr inbounds %struct.nvmet_rdma_rsp, ptr %rsp, i32 0, i32 8
  tail call void @nvmet_req_free_sgls(ptr noundef %req) #14
  br label %if.end6

if.end6:                                          ; preds = %if.then4, %if.end.if.end6_crit_edge
  %rsp_wr_wait_list = getelementptr inbounds %struct.nvmet_rdma_queue, ptr %1, i32 0, i32 17
  %11 = ptrtoint ptr %rsp_wr_wait_list to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile ptr, ptr %rsp_wr_wait_list, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !311
  %cmp.i.not.i = icmp eq ptr %12, %rsp_wr_wait_list
  br i1 %cmp.i.not.i, label %list_empty_careful.exit, label %if.end6.if.then11_crit_edge

if.end6.if.then11_crit_edge:                      ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then11

list_empty_careful.exit:                          ; preds = %if.end6
  %prev.i = getelementptr inbounds %struct.nvmet_rdma_queue, ptr %1, i32 0, i32 17, i32 1
  %13 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %prev.i, align 4
  %cmp.i.not = icmp eq ptr %14, %rsp_wr_wait_list
  br i1 %cmp.i.not, label %list_empty_careful.exit.if.end12_crit_edge, label %list_empty_careful.exit.if.then11_crit_edge, !prof !306

list_empty_careful.exit.if.then11_crit_edge:      ; preds = %list_empty_careful.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then11

list_empty_careful.exit.if.end12_crit_edge:       ; preds = %list_empty_careful.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end12

if.then11:                                        ; preds = %list_empty_careful.exit.if.then11_crit_edge, %if.end6.if.then11_crit_edge
  tail call fastcc void @nvmet_rdma_process_wr_wait_list(ptr noundef %1)
  br label %if.end12

if.end12:                                         ; preds = %if.then11, %list_empty_careful.exit.if.end12_crit_edge
  %allocated.i = getelementptr inbounds %struct.nvmet_rdma_rsp, ptr %rsp, i32 0, i32 9
  %15 = ptrtoint ptr %allocated.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %allocated.i, align 8, !range !309
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %tobool.not.i = icmp eq i8 %16, 0
  %17 = ptrtoint ptr %queue1 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %queue1, align 4
  br i1 %tobool.not.i, label %do.body3.i, label %if.then.i, !prof !306

if.then.i:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #16
  %dev.i = getelementptr inbounds %struct.nvmet_rdma_queue, ptr %18, i32 0, i32 5
  %19 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dev.i, align 4
  tail call fastcc void @nvmet_rdma_free_rsp(ptr noundef %20, ptr noundef %rsp) #14
  tail call void @kfree(ptr noundef %rsp) #14
  br label %nvmet_rdma_put_rsp.exit

do.body3.i:                                       ; preds = %if.end12
  %rsps_lock.i = getelementptr inbounds %struct.nvmet_rdma_queue, ptr %18, i32 0, i32 13
  %call5.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %rsps_lock.i) #14
  %free_list.i = getelementptr inbounds %struct.nvmet_rdma_rsp, ptr %rsp, i32 0, i32 14
  %21 = ptrtoint ptr %queue1 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %queue1, align 4
  %free_rsps.i = getelementptr inbounds %struct.nvmet_rdma_queue, ptr %22, i32 0, i32 12
  %prev.i.i = getelementptr inbounds %struct.nvmet_rdma_queue, ptr %22, i32 0, i32 12, i32 1
  %23 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %prev.i.i, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %free_list.i, ptr noundef %24, ptr noundef %free_rsps.i) #14
  br i1 %call.i.i.i, label %if.end.i.i.i, label %do.body3.i.list_add_tail.exit.i_crit_edge

do.body3.i.list_add_tail.exit.i_crit_edge:        ; preds = %do.body3.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %list_add_tail.exit.i

if.end.i.i.i:                                     ; preds = %do.body3.i
  call void @__sanitizer_cov_trace_pc() #16
  %25 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %free_list.i, ptr %prev.i.i, align 4
  %26 = ptrtoint ptr %free_list.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %free_rsps.i, ptr %free_list.i, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.nvmet_rdma_rsp, ptr %rsp, i32 0, i32 14, i32 1
  %27 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %24, ptr %prev3.i.i.i, align 4
  %28 = ptrtoint ptr %24 to i32
  call void @__asan_store4_noabort(i32 %28)
  store volatile ptr %free_list.i, ptr %24, align 4
  br label %list_add_tail.exit.i

list_add_tail.exit.i:                             ; preds = %if.end.i.i.i, %do.body3.i.list_add_tail.exit.i_crit_edge
  %29 = ptrtoint ptr %queue1 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %queue1, align 4
  %rsps_lock10.i = getelementptr inbounds %struct.nvmet_rdma_queue, ptr %30, i32 0, i32 13
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %rsps_lock10.i, i32 noundef %call5.i) #14
  br label %nvmet_rdma_put_rsp.exit

nvmet_rdma_put_rsp.exit:                          ; preds = %list_add_tail.exit.i, %if.then.i
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_sync_single_for_device(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @nvmet_rdma_rw_ctx_destroy(ptr noundef %rsp) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %queue = getelementptr inbounds %struct.nvmet_rdma_rsp, ptr %rsp, i32 0, i32 4
  %0 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %queue, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %req2 = getelementptr inbounds %struct.nvmet_rdma_rsp, ptr %rsp, i32 0, i32 8
  %metadata_len = getelementptr inbounds %struct.nvmet_rdma_rsp, ptr %rsp, i32 0, i32 8, i32 12
  %4 = ptrtoint ptr %metadata_len to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %metadata_len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  %rw3 = getelementptr inbounds %struct.nvmet_rdma_rsp, ptr %rsp, i32 0, i32 7
  %qp4 = getelementptr inbounds %struct.rdma_cm_id, ptr %3, i32 0, i32 2
  %6 = ptrtoint ptr %qp4 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %qp4, align 4
  %port_num5 = getelementptr inbounds %struct.rdma_cm_id, ptr %3, i32 0, i32 7
  %8 = ptrtoint ptr %port_num5 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %port_num5, align 4
  %sg6 = getelementptr inbounds %struct.nvmet_rdma_rsp, ptr %rsp, i32 0, i32 8, i32 5
  %10 = ptrtoint ptr %sg6 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %sg6, align 4
  %sg_cnt7 = getelementptr inbounds %struct.nvmet_rdma_rsp, ptr %rsp, i32 0, i32 8, i32 9
  %12 = ptrtoint ptr %sg_cnt7 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %sg_cnt7, align 8
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %metadata_sg = getelementptr inbounds %struct.nvmet_rdma_rsp, ptr %rsp, i32 0, i32 8, i32 6
  %14 = ptrtoint ptr %metadata_sg to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %metadata_sg, align 8
  %metadata_sg_cnt = getelementptr inbounds %struct.nvmet_rdma_rsp, ptr %rsp, i32 0, i32 8, i32 10
  %16 = ptrtoint ptr %metadata_sg_cnt to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %metadata_sg_cnt, align 4
  %18 = ptrtoint ptr %req2 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %req2, align 8
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %19, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 127, i8 %21)
  %cmp.i.i.i = icmp eq i8 %21, 127
  br i1 %cmp.i.i.i, label %if.then.i.i, label %if.then.nvmet_data_dir.exit_crit_edge, !prof !307

if.then.nvmet_data_dir.exit_crit_edge:            ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  br label %nvmet_data_dir.exit

if.then.i.i:                                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  %fctype.i.i = getelementptr inbounds %struct.nvmf_common_command, ptr %19, i32 0, i32 3
  br label %nvmet_data_dir.exit

nvmet_data_dir.exit:                              ; preds = %if.then.i.i, %if.then.nvmet_data_dir.exit_crit_edge
  %retval.0.in.in.in.i.i = phi ptr [ %fctype.i.i, %if.then.i.i ], [ %19, %if.then.nvmet_data_dir.exit_crit_edge ]
  %22 = ptrtoint ptr %retval.0.in.in.in.i.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %retval.0.in.in.i.i = load i8, ptr %retval.0.in.in.in.i.i, align 4
  %retval.0.in.i.i = and i8 %retval.0.in.in.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %retval.0.in.i.i)
  %retval.0.i.not.i = icmp eq i8 %retval.0.in.i.i, 0
  %cond.i = select i1 %retval.0.i.not.i, i32 1, i32 2
  tail call void @rdma_rw_ctx_destroy_signature(ptr noundef %rw3, ptr noundef %7, i32 noundef %9, ptr noundef %11, i32 noundef %13, ptr noundef %15, i32 noundef %17, i32 noundef %cond.i) #14
  br label %if.end

if.else:                                          ; preds = %entry
  %23 = ptrtoint ptr %req2 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %req2, align 8
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %24, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 127, i8 %26)
  %cmp.i.i.i23 = icmp eq i8 %26, 127
  br i1 %cmp.i.i.i23, label %if.then.i.i25, label %if.else.nvmet_data_dir.exit31_crit_edge, !prof !307

if.else.nvmet_data_dir.exit31_crit_edge:          ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #16
  br label %nvmet_data_dir.exit31

if.then.i.i25:                                    ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #16
  %fctype.i.i24 = getelementptr inbounds %struct.nvmf_common_command, ptr %24, i32 0, i32 3
  br label %nvmet_data_dir.exit31

nvmet_data_dir.exit31:                            ; preds = %if.then.i.i25, %if.else.nvmet_data_dir.exit31_crit_edge
  %retval.0.in.in.in.i.i26 = phi ptr [ %fctype.i.i24, %if.then.i.i25 ], [ %24, %if.else.nvmet_data_dir.exit31_crit_edge ]
  %27 = ptrtoint ptr %retval.0.in.in.in.i.i26 to i32
  call void @__asan_load1_noabort(i32 %27)
  %retval.0.in.in.i.i27 = load i8, ptr %retval.0.in.in.in.i.i26, align 4
  %retval.0.in.i.i28 = and i8 %retval.0.in.in.i.i27, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %retval.0.in.i.i28)
  %retval.0.i.not.i29 = icmp eq i8 %retval.0.in.i.i28, 0
  %cond.i30 = select i1 %retval.0.i.not.i29, i32 1, i32 2
  tail call void @rdma_rw_ctx_destroy(ptr noundef %rw3, ptr noundef %7, i32 noundef %9, ptr noundef %11, i32 noundef %13, i32 noundef %cond.i30) #14
  br label %if.end

if.end:                                           ; preds = %nvmet_data_dir.exit31, %nvmet_data_dir.exit
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvmet_req_free_sgls(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @nvmet_rdma_process_wr_wait_list(ptr noundef %queue) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %rsp_wr_wait_lock = getelementptr inbounds %struct.nvmet_rdma_queue, ptr %queue, i32 0, i32 18
  tail call void @_raw_spin_lock(ptr noundef %rsp_wr_wait_lock) #14
  %rsp_wr_wait_list = getelementptr inbounds %struct.nvmet_rdma_queue, ptr %queue, i32 0, i32 17
  br label %while.cond

while.cond:                                       ; preds = %list_del.exit.while.cond_crit_edge, %entry
  %0 = ptrtoint ptr %rsp_wr_wait_list to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %rsp_wr_wait_list, align 4
  %cmp.i.not = icmp eq ptr %1, %rsp_wr_wait_list
  br i1 %cmp.i.not, label %while.cond.while.end_crit_edge, label %while.body

while.cond.while.end_crit_edge:                   ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.end

while.body:                                       ; preds = %while.cond
  %add.ptr = getelementptr i8, ptr %1, i32 -508
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %1) #14
  br i1 %call.i.i, label %if.end.i.i, label %while.body.list_del.exit_crit_edge

while.body.list_del.exit_crit_edge:               ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %list_del.exit

if.end.i.i:                                       ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #16
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %prev.i.i, align 4
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %3, ptr %prev1.i.i.i, align 4
  %7 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile ptr %5, ptr %3, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %while.body.list_del.exit_crit_edge
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr inttoptr (i32 256 to ptr), ptr %1, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1
  %9 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @_raw_spin_unlock(ptr noundef %rsp_wr_wait_lock) #14
  %call3 = tail call fastcc zeroext i1 @nvmet_rdma_execute_command(ptr noundef %add.ptr)
  tail call void @_raw_spin_lock(ptr noundef %rsp_wr_wait_lock) #14
  br i1 %call3, label %list_del.exit.while.cond_crit_edge, label %if.then

list_del.exit.while.cond_crit_edge:               ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.cond

if.then:                                          ; preds = %list_del.exit
  %10 = ptrtoint ptr %rsp_wr_wait_list to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %rsp_wr_wait_list, align 4
  %call.i.i18 = tail call zeroext i1 @__list_add_valid(ptr noundef %1, ptr noundef %rsp_wr_wait_list, ptr noundef %11) #14
  br i1 %call.i.i18, label %if.end.i.i19, label %if.then.while.end_crit_edge

if.then.while.end_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.end

if.end.i.i19:                                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  %prev.i.le = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %prev1.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %1, ptr %prev1.i.i, align 4
  %13 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %11, ptr %1, align 4
  %14 = ptrtoint ptr %prev.i.le to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %rsp_wr_wait_list, ptr %prev.i.le, align 4
  %15 = ptrtoint ptr %rsp_wr_wait_list to i32
  call void @__asan_store4_noabort(i32 %15)
  store volatile ptr %1, ptr %rsp_wr_wait_list, align 4
  br label %while.end

while.end:                                        ; preds = %if.end.i.i19, %if.then.while.end_crit_edge, %while.cond.while.end_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %rsp_wr_wait_lock) #14
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @nvmet_rdma_put_rsp(ptr noundef %rsp) unnamed_addr #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  %allocated = getelementptr inbounds %struct.nvmet_rdma_rsp, ptr %rsp, i32 0, i32 9
  %0 = ptrtoint ptr %allocated to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %allocated, align 8, !range !309
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  %queue4 = getelementptr inbounds %struct.nvmet_rdma_rsp, ptr %rsp, i32 0, i32 4
  %2 = ptrtoint ptr %queue4 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %queue4, align 4
  br i1 %tobool.not, label %do.body3, label %if.then, !prof !306

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %dev = getelementptr inbounds %struct.nvmet_rdma_queue, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 4
  tail call fastcc void @nvmet_rdma_free_rsp(ptr noundef %5, ptr noundef %rsp)
  tail call void @kfree(ptr noundef %rsp) #14
  br label %cleanup

do.body3:                                         ; preds = %entry
  %rsps_lock = getelementptr inbounds %struct.nvmet_rdma_queue, ptr %3, i32 0, i32 13
  %call5 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %rsps_lock) #14
  %free_list = getelementptr inbounds %struct.nvmet_rdma_rsp, ptr %rsp, i32 0, i32 14
  %6 = ptrtoint ptr %queue4 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %queue4, align 4
  %free_rsps = getelementptr inbounds %struct.nvmet_rdma_queue, ptr %7, i32 0, i32 12
  %prev.i = getelementptr inbounds %struct.nvmet_rdma_queue, ptr %7, i32 0, i32 12, i32 1
  %8 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %free_list, ptr noundef %9, ptr noundef %free_rsps) #14
  br i1 %call.i.i, label %if.end.i.i, label %do.body3.list_add_tail.exit_crit_edge

do.body3.list_add_tail.exit_crit_edge:            ; preds = %do.body3
  call void @__sanitizer_cov_trace_pc() #16
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %do.body3
  call void @__sanitizer_cov_trace_pc() #16
  %10 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %free_list, ptr %prev.i, align 4
  %11 = ptrtoint ptr %free_list to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %free_rsps, ptr %free_list, align 4
  %prev3.i.i = getelementptr inbounds %struct.nvmet_rdma_rsp, ptr %rsp, i32 0, i32 14, i32 1
  %12 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %9, ptr %prev3.i.i, align 4
  %13 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %13)
  store volatile ptr %free_list, ptr %9, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %do.body3.list_add_tail.exit_crit_edge
  %14 = ptrtoint ptr %queue4 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %queue4, align 4
  %rsps_lock10 = getelementptr inbounds %struct.nvmet_rdma_queue, ptr %15, i32 0, i32 13
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %rsps_lock10, i32 noundef %call5) #14
  br label %cleanup

cleanup:                                          ; preds = %list_add_tail.exit, %if.then
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @rdma_rw_ctx_destroy_signature(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rdma_rw_ctx_destroy(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @nvmet_rdma_execute_command(ptr noundef %rsp) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %queue1 = getelementptr inbounds %struct.nvmet_rdma_rsp, ptr %rsp, i32 0, i32 4
  %0 = ptrtoint ptr %queue1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %queue1, align 4
  %n_rdma = getelementptr inbounds %struct.nvmet_rdma_rsp, ptr %rsp, i32 0, i32 10
  %2 = ptrtoint ptr %n_rdma to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %n_rdma, align 1
  %conv = zext i8 %3 to i32
  %add = add nuw nsw i32 %conv, 1
  %sq_wr_avail = getelementptr inbounds %struct.nvmet_rdma_queue, ptr %1, i32 0, i32 4
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %sq_wr_avail, i32 noundef 4) #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !312
  tail call void @llvm.prefetch.p0(ptr %sq_wr_avail, i32 1, i32 3, i32 1) #14
  %4 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %sq_wr_avail, ptr %sq_wr_avail, i32 %add, ptr elementtype(i32) %sq_wr_avail) #14, !srcloc !313
  %asmresult.i.i.i = extractvalue { i32, i32 } %4, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !314
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i)
  %cmp = icmp slt i32 %asmresult.i.i.i, 0
  br i1 %cmp, label %do.body, label %if.end21, !prof !307

do.body:                                          ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @nvmet_rdma_execute_command.__UNIQUE_ID_ddebug538, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@nvmet_rdma_execute_command, %if.then12)) #14
          to label %do.end [label %if.then12], !srcloc !315

if.then12:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #16
  %5 = ptrtoint ptr %n_rdma to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %n_rdma, align 1
  %conv14 = zext i8 %6 to i32
  %add15 = add nuw nsw i32 %conv14, 1
  %idx = getelementptr inbounds %struct.nvmet_rdma_queue, ptr %1, i32 0, i32 19
  %7 = ptrtoint ptr %idx to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %idx, align 4
  %nvme_sq = getelementptr inbounds %struct.nvmet_rdma_queue, ptr %1, i32 0, i32 10
  %9 = ptrtoint ptr %nvme_sq to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %nvme_sq, align 4
  %cntlid = getelementptr inbounds %struct.nvmet_ctrl, ptr %10, i32 0, i32 8
  %11 = ptrtoint ptr %cntlid to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %cntlid, align 8
  %conv16 = zext i16 %12 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @nvmet_rdma_execute_command.__UNIQUE_ID_ddebug538, ptr noundef nonnull @.str.8, i32 noundef %add15, i32 noundef %8, i32 noundef %conv16) #14
  br label %do.end

do.end:                                           ; preds = %if.then12, %do.body
  %13 = ptrtoint ptr %n_rdma to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %n_rdma, align 1
  %conv18 = zext i8 %14 to i32
  %add19 = add nuw nsw i32 %conv18, 1
  %call.i.i45 = tail call zeroext i1 @__kasan_check_write(ptr noundef %sq_wr_avail, i32 noundef 4) #14
  tail call void @llvm.prefetch.p0(ptr %sq_wr_avail, i32 1, i32 3, i32 1) #14
  %15 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %sq_wr_avail, ptr %sq_wr_avail, i32 %add19, ptr elementtype(i32) %sq_wr_avail) #14, !srcloc !310
  br label %cleanup

if.end21:                                         ; preds = %entry
  %req.i = getelementptr inbounds %struct.nvmet_rdma_rsp, ptr %rsp, i32 0, i32 8
  %16 = ptrtoint ptr %req.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %req.i, align 8
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %17, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 127, i8 %19)
  %cmp.i.i.i = icmp eq i8 %19, 127
  br i1 %cmp.i.i.i, label %if.then.i.i, label %if.end21.nvme_is_write.exit.i_crit_edge, !prof !307

if.end21.nvme_is_write.exit.i_crit_edge:          ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #16
  br label %nvme_is_write.exit.i

if.then.i.i:                                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #16
  %fctype.i.i = getelementptr inbounds %struct.nvmf_common_command, ptr %17, i32 0, i32 3
  br label %nvme_is_write.exit.i

nvme_is_write.exit.i:                             ; preds = %if.then.i.i, %if.end21.nvme_is_write.exit.i_crit_edge
  %retval.0.in.in.in.i.i = phi ptr [ %fctype.i.i, %if.then.i.i ], [ %17, %if.end21.nvme_is_write.exit.i_crit_edge ]
  %20 = ptrtoint ptr %retval.0.in.in.in.i.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %retval.0.in.in.i.i = load i8, ptr %retval.0.in.in.in.i.i, align 4
  %retval.0.in.i.i = and i8 %retval.0.in.in.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %retval.0.in.i.i)
  %retval.0.i.not.i = icmp eq i8 %retval.0.in.i.i, 0
  br i1 %retval.0.i.not.i, label %nvme_is_write.exit.i.if.else_crit_edge, label %land.lhs.true.i

nvme_is_write.exit.i.if.else_crit_edge:           ; preds = %nvme_is_write.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.else

land.lhs.true.i:                                  ; preds = %nvme_is_write.exit.i
  %transfer_len.i = getelementptr inbounds %struct.nvmet_rdma_rsp, ptr %rsp, i32 0, i32 8, i32 11
  %21 = ptrtoint ptr %transfer_len.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %transfer_len.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool.not.i = icmp eq i32 %22, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.if.else_crit_edge, label %nvmet_rdma_need_data_in.exit

land.lhs.true.i.if.else_crit_edge:                ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.else

nvmet_rdma_need_data_in.exit:                     ; preds = %land.lhs.true.i
  %flags.i = getelementptr inbounds %struct.nvmet_rdma_rsp, ptr %rsp, i32 0, i32 11
  %23 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %24, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool2.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool2.not.i, label %if.then23, label %nvmet_rdma_need_data_in.exit.if.else_crit_edge

nvmet_rdma_need_data_in.exit.if.else_crit_edge:   ; preds = %nvmet_rdma_need_data_in.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.else

if.then23:                                        ; preds = %nvmet_rdma_need_data_in.exit
  %rw = getelementptr inbounds %struct.nvmet_rdma_rsp, ptr %rsp, i32 0, i32 7
  %qp = getelementptr inbounds %struct.nvmet_rdma_queue, ptr %1, i32 0, i32 1
  %25 = ptrtoint ptr %qp to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %qp, align 4
  %27 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %1, align 4
  %port_num = getelementptr inbounds %struct.rdma_cm_id, ptr %28, i32 0, i32 7
  %29 = ptrtoint ptr %port_num to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %port_num, align 4
  %read_cqe = getelementptr inbounds %struct.nvmet_rdma_rsp, ptr %rsp, i32 0, i32 5
  %call24 = tail call i32 @rdma_rw_ctx_post(ptr noundef %rw, ptr noundef %26, i32 noundef %30, ptr noundef %read_cqe, ptr noundef null) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24)
  %tobool25.not = icmp eq i32 %call24, 0
  br i1 %tobool25.not, label %if.then23.cleanup_crit_edge, label %if.then26

if.then23.cleanup_crit_edge:                      ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then26:                                        ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @nvmet_req_complete(ptr noundef %req.i, i16 noundef zeroext 4) #14
  br label %cleanup

if.else:                                          ; preds = %nvmet_rdma_need_data_in.exit.if.else_crit_edge, %land.lhs.true.i.if.else_crit_edge, %nvme_is_write.exit.i.if.else_crit_edge
  %execute = getelementptr inbounds %struct.nvmet_rdma_rsp, ptr %rsp, i32 0, i32 8, i32 14
  %31 = ptrtoint ptr %execute to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %execute, align 4
  tail call void %32(ptr noundef %req.i) #14
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then26, %if.then23.cleanup_crit_edge, %do.end
  %33 = xor i1 %cmp, true
  ret i1 %33
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rdma_rw_ctx_post(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvmet_req_complete(ptr noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @nvmet_rdma_free_rsp(ptr nocapture noundef readonly %ndev, ptr nocapture noundef readonly %r) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ndev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ndev, align 4
  %2 = ptrtoint ptr %r to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %r, align 8
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 8
  %conv.i = trunc i64 %3 to i32
  tail call void @dma_unmap_page_attrs(ptr noundef %5, i32 noundef %conv.i, i32 noundef 16, i32 noundef 1, i32 noundef 0) #14
  %cqe = getelementptr inbounds %struct.nvmet_rdma_rsp, ptr %r, i32 0, i32 8, i32 1
  %6 = ptrtoint ptr %cqe to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %cqe, align 4
  tail call void @kfree(ptr noundef %7) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_unmap_page_attrs(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nvmet_rdma_repair_port_work(ptr noundef %w) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %w, i32 -136
  tail call fastcc void @nvmet_rdma_disable_port(ptr noundef %add.ptr)
  %call1 = tail call fastcc i32 @nvmet_rdma_enable_port(ptr noundef %add.ptr)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %0 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %0, ptr noundef %w, i32 noundef 500) #14
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @delayed_work_timer_fn(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @inet_pton_with_scope(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @nvmet_rdma_enable_port(ptr noundef %port) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %addr1 = getelementptr inbounds %struct.nvmet_rdma_port, ptr %port, i32 0, i32 1
  %call = tail call ptr @__rdma_create_kernel_id(ptr noundef nonnull @init_net, ptr noundef nonnull @nvmet_rdma_cm_handler, ptr noundef %port, i32 noundef 262, i32 noundef 2, ptr noundef nonnull @.str.5) #14
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %call3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.28) #17
  %0 = ptrtoint ptr %call to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  %call5 = tail call i32 @rdma_set_afonly(ptr noundef %call, i32 noundef 1) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool.not = icmp eq i32 %call5, 0
  br i1 %tobool.not, label %if.end12, label %do.end9

do.end9:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %call11 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31, i32 noundef %call5) #17
  br label %out_destroy_id

if.end12:                                         ; preds = %if.end
  %call13 = tail call i32 @rdma_bind_addr(ptr noundef %call, ptr noundef %addr1) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %if.end21, label %do.end18

do.end18:                                         ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #16
  %call20 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.34, ptr noundef %addr1, i32 noundef %call13) #17
  br label %out_destroy_id

if.end21:                                         ; preds = %if.end12
  %call22 = tail call i32 @rdma_listen(ptr noundef %call, i32 noundef 128) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %tobool23.not = icmp eq i32 %call22, 0
  br i1 %tobool23.not, label %if.end30, label %do.end27

do.end27:                                         ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #16
  %call29 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.37, ptr noundef %addr1, i32 noundef %call22) #17
  br label %out_destroy_id

if.end30:                                         ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #16
  %cm_id31 = getelementptr inbounds %struct.nvmet_rdma_port, ptr %port, i32 0, i32 2
  %1 = ptrtoint ptr %cm_id31 to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call, ptr %cm_id31, align 4
  br label %cleanup

out_destroy_id:                                   ; preds = %do.end27, %do.end18, %do.end9
  %ret.0 = phi i32 [ %call5, %do.end9 ], [ %call13, %do.end18 ], [ %call22, %do.end27 ]
  tail call void @rdma_destroy_id(ptr noundef %call) #14
  br label %cleanup

cleanup:                                          ; preds = %out_destroy_id, %if.end30, %do.end
  %retval.0 = phi i32 [ %0, %do.end ], [ %ret.0, %out_destroy_id ], [ 0, %if.end30 ]
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #9

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #11

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @nvmet_rdma_disable_port(ptr noundef %port) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %cm_id1 = getelementptr inbounds %struct.nvmet_rdma_port, ptr %port, i32 0, i32 2
  %call.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %cm_id1, i32 noundef 4) #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !316
  tail call void @llvm.prefetch.p0(ptr %cm_id1, i32 1, i32 3, i32 1) #14
  %0 = tail call { i32, i32 } asm sideeffect "@\09__xchg4\0A1:\09ldrex\09$0, [$3]\0A\09strex\09$1, $2, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,r,~{memory},~{cc}"(i32 0, ptr %cm_id1) #14, !srcloc !317
  %asmresult.i = extractvalue { i32, i32 } %0, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !318
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i)
  %tobool.not = icmp eq i32 %asmresult.i, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %1 = inttoptr i32 %asmresult.i to ptr
  tail call void @rdma_destroy_id(ptr noundef nonnull %1) #14
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %2 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %port, align 4
  tail call void @mutex_lock_nested(ptr noundef nonnull @nvmet_rdma_queue_mutex, i32 noundef 0) #14
  %4 = load ptr, ptr @nvmet_rdma_queue_list, align 4
  %cmp.not23.i = icmp eq ptr %4, @nvmet_rdma_queue_list
  br i1 %cmp.not23.i, label %if.end.nvmet_rdma_destroy_port_queues.exit_crit_edge, label %if.end.for.body.i_crit_edge

if.end.for.body.i_crit_edge:                      ; preds = %if.end
  br label %for.body.i

if.end.nvmet_rdma_destroy_port_queues.exit_crit_edge: ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %nvmet_rdma_destroy_port_queues.exit

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.end.for.body.i_crit_edge
  %.pn.in24.i = phi ptr [ %.pn27.i, %for.inc.i.for.body.i_crit_edge ], [ %4, %if.end.for.body.i_crit_edge ]
  %queue.026.i = getelementptr i8, ptr %.pn.in24.i, i32 -400
  %5 = ptrtoint ptr %.pn.in24.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %.pn27.i = load ptr, ptr %.pn.in24.i, align 4
  %port7.i = getelementptr i8, ptr %.pn.in24.i, i32 -392
  %6 = ptrtoint ptr %port7.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %port7.i, align 4
  %cmp8.not.i = icmp eq ptr %7, %3
  br i1 %cmp8.not.i, label %if.end.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.i

if.end.i:                                         ; preds = %for.body.i
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in24.i) #14
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.end.i.list_del_init.exit.i_crit_edge

if.end.i.list_del_init.exit.i_crit_edge:          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %list_del_init.exit.i

if.end.i.i.i:                                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in24.i, i32 0, i32 1
  %8 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %prev.i.i.i, align 4
  %10 = ptrtoint ptr %.pn.in24.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %.pn.in24.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %9, ptr %prev1.i.i.i.i, align 4
  %13 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %13)
  store volatile ptr %11, ptr %9, align 4
  br label %list_del_init.exit.i

list_del_init.exit.i:                             ; preds = %if.end.i.i.i, %if.end.i.list_del_init.exit.i_crit_edge
  %14 = ptrtoint ptr %.pn.in24.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store volatile ptr %.pn.in24.i, ptr %.pn.in24.i, align 4
  %prev.i3.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in24.i, i32 0, i32 1
  %15 = ptrtoint ptr %prev.i3.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %.pn.in24.i, ptr %prev.i3.i.i, align 4
  tail call fastcc void @__nvmet_rdma_queue_disconnect(ptr noundef %queue.026.i) #14
  br label %for.inc.i

for.inc.i:                                        ; preds = %list_del_init.exit.i, %for.body.i.for.inc.i_crit_edge
  %cmp.not.i = icmp eq ptr %.pn27.i, @nvmet_rdma_queue_list
  br i1 %cmp.not.i, label %for.inc.i.nvmet_rdma_destroy_port_queues.exit_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i

for.inc.i.nvmet_rdma_destroy_port_queues.exit_crit_edge: ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %nvmet_rdma_destroy_port_queues.exit

nvmet_rdma_destroy_port_queues.exit:              ; preds = %for.inc.i.nvmet_rdma_destroy_port_queues.exit_crit_edge, %if.end.nvmet_rdma_destroy_port_queues.exit_crit_edge
  tail call void @mutex_unlock(ptr noundef nonnull @nvmet_rdma_queue_mutex) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rdma_destroy_id(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @__nvmet_rdma_queue_disconnect(ptr noundef %queue) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @__nvmet_rdma_queue_disconnect.__UNIQUE_ID_ddebug554, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@__nvmet_rdma_queue_disconnect, %if.then)) #14
          to label %do.body4 [label %if.then], !srcloc !315

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %0 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %queue, align 4
  %state = getelementptr inbounds %struct.nvmet_rdma_queue, ptr %queue, i32 0, i32 8
  %2 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %state, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @__nvmet_rdma_queue_disconnect.__UNIQUE_ID_ddebug554, ptr noundef nonnull @.str.27, ptr noundef %1, i32 noundef %3) #14
  br label %do.body4

do.body4:                                         ; preds = %if.then, %entry
  %state_lock = getelementptr inbounds %struct.nvmet_rdma_queue, ptr %queue, i32 0, i32 7
  %call7 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %state_lock) #14
  %state12 = getelementptr inbounds %struct.nvmet_rdma_queue, ptr %queue, i32 0, i32 8
  %4 = ptrtoint ptr %state12 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %state12, align 4
  %6 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.134)
  switch i32 %5, label %if.end27.critedge [
    i32 0, label %while.cond.preheader
    i32 1, label %do.body4.sw.bb19_crit_edge
  ]

do.body4.sw.bb19_crit_edge:                       ; preds = %do.body4
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb19

while.cond.preheader:                             ; preds = %do.body4
  %rsp_wait_list = getelementptr inbounds %struct.nvmet_rdma_queue, ptr %queue, i32 0, i32 16
  %7 = ptrtoint ptr %rsp_wait_list to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile ptr, ptr %rsp_wait_list, align 4
  %cmp.i.not41 = icmp eq ptr %8, %rsp_wait_list
  br i1 %cmp.i.not41, label %while.cond.preheader.sw.bb19_crit_edge, label %while.cond.preheader.while.body_crit_edge

while.cond.preheader.while.body_crit_edge:        ; preds = %while.cond.preheader
  br label %while.body

while.cond.preheader.sw.bb19_crit_edge:           ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb19

while.body:                                       ; preds = %nvmet_rdma_put_rsp.exit.while.body_crit_edge, %while.cond.preheader.while.body_crit_edge
  %9 = phi ptr [ %43, %nvmet_rdma_put_rsp.exit.while.body_crit_edge ], [ %8, %while.cond.preheader.while.body_crit_edge ]
  %add.ptr = getelementptr i8, ptr %9, i32 -508
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %9) #14
  br i1 %call.i.i, label %if.end.i.i, label %while.body.list_del.exit_crit_edge

while.body.list_del.exit_crit_edge:               ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %list_del.exit

if.end.i.i:                                       ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #16
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %prev.i.i, align 4
  %12 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %9, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %11, ptr %prev1.i.i.i, align 4
  %15 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %15)
  store volatile ptr %13, ptr %11, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %while.body.list_del.exit_crit_edge
  %16 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr inttoptr (i32 256 to ptr), ptr %9, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %9, i32 0, i32 1
  %17 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %allocated.i = getelementptr i8, ptr %9, i32 -12
  %18 = ptrtoint ptr %allocated.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %allocated.i, align 8, !range !309
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool.not.i = icmp eq i8 %19, 0
  %queue4.i = getelementptr i8, ptr %9, i32 -440
  %20 = ptrtoint ptr %queue4.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %queue4.i, align 4
  br i1 %tobool.not.i, label %do.body3.i, label %if.then.i, !prof !306

if.then.i:                                        ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #16
  %dev.i = getelementptr inbounds %struct.nvmet_rdma_queue, ptr %21, i32 0, i32 5
  %22 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dev.i, align 4
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %23, align 4
  %26 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load8_noabort(i32 %26)
  %27 = load i64, ptr %add.ptr, align 8
  %28 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %25, align 8
  %conv.i.i = trunc i64 %27 to i32
  tail call void @dma_unmap_page_attrs(ptr noundef %29, i32 noundef %conv.i.i, i32 noundef 16, i32 noundef 1, i32 noundef 0) #14
  %cqe.i = getelementptr i8, ptr %9, i32 -344
  %30 = ptrtoint ptr %cqe.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %cqe.i, align 4
  tail call void @kfree(ptr noundef %31) #14
  tail call void @kfree(ptr noundef %add.ptr) #14
  br label %nvmet_rdma_put_rsp.exit

do.body3.i:                                       ; preds = %list_del.exit
  %rsps_lock.i = getelementptr inbounds %struct.nvmet_rdma_queue, ptr %21, i32 0, i32 13
  %call5.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %rsps_lock.i) #14
  %free_list.i = getelementptr i8, ptr %9, i32 8
  %32 = ptrtoint ptr %queue4.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %queue4.i, align 4
  %free_rsps.i = getelementptr inbounds %struct.nvmet_rdma_queue, ptr %33, i32 0, i32 12
  %prev.i.i38 = getelementptr inbounds %struct.nvmet_rdma_queue, ptr %33, i32 0, i32 12, i32 1
  %34 = ptrtoint ptr %prev.i.i38 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %prev.i.i38, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %free_list.i, ptr noundef %35, ptr noundef %free_rsps.i) #14
  br i1 %call.i.i.i, label %if.end.i.i.i, label %do.body3.i.list_add_tail.exit.i_crit_edge

do.body3.i.list_add_tail.exit.i_crit_edge:        ; preds = %do.body3.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %list_add_tail.exit.i

if.end.i.i.i:                                     ; preds = %do.body3.i
  call void @__sanitizer_cov_trace_pc() #16
  %36 = ptrtoint ptr %prev.i.i38 to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %free_list.i, ptr %prev.i.i38, align 4
  %37 = ptrtoint ptr %free_list.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %free_rsps.i, ptr %free_list.i, align 4
  %prev3.i.i.i = getelementptr i8, ptr %9, i32 12
  %38 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %35, ptr %prev3.i.i.i, align 4
  %39 = ptrtoint ptr %35 to i32
  call void @__asan_store4_noabort(i32 %39)
  store volatile ptr %free_list.i, ptr %35, align 4
  br label %list_add_tail.exit.i

list_add_tail.exit.i:                             ; preds = %if.end.i.i.i, %do.body3.i.list_add_tail.exit.i_crit_edge
  %40 = ptrtoint ptr %queue4.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %queue4.i, align 4
  %rsps_lock10.i = getelementptr inbounds %struct.nvmet_rdma_queue, ptr %41, i32 0, i32 13
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %rsps_lock10.i, i32 noundef %call5.i) #14
  br label %nvmet_rdma_put_rsp.exit

nvmet_rdma_put_rsp.exit:                          ; preds = %list_add_tail.exit.i, %if.then.i
  %42 = ptrtoint ptr %rsp_wait_list to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load volatile ptr, ptr %rsp_wait_list, align 4
  %cmp.i.not = icmp eq ptr %43, %rsp_wait_list
  br i1 %cmp.i.not, label %nvmet_rdma_put_rsp.exit.sw.bb19_crit_edge, label %nvmet_rdma_put_rsp.exit.while.body_crit_edge

nvmet_rdma_put_rsp.exit.while.body_crit_edge:     ; preds = %nvmet_rdma_put_rsp.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.body

nvmet_rdma_put_rsp.exit.sw.bb19_crit_edge:        ; preds = %nvmet_rdma_put_rsp.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb19

sw.bb19:                                          ; preds = %nvmet_rdma_put_rsp.exit.sw.bb19_crit_edge, %while.cond.preheader.sw.bb19_crit_edge, %do.body4.sw.bb19_crit_edge
  %44 = ptrtoint ptr %state12 to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 2, ptr %state12, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %state_lock, i32 noundef %call7) #14
  %45 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %queue, align 4
  %call25 = tail call i32 @rdma_disconnect(ptr noundef %46) #14
  %release_work = getelementptr inbounds %struct.nvmet_rdma_queue, ptr %queue, i32 0, i32 15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %47 = load ptr, ptr @system_wq, align 4
  %call.i.i39 = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %47, ptr noundef %release_work) #14
  br label %if.end27

if.end27.critedge:                                ; preds = %do.body4
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %state_lock, i32 noundef %call7) #14
  br label %if.end27

if.end27:                                         ; preds = %if.end27.critedge, %sw.bb19
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rdma_disconnect(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__rdma_create_kernel_id(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nvmet_rdma_cm_handler(ptr noundef %cm_id, ptr nocapture noundef readonly %event) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %qp = getelementptr inbounds %struct.rdma_cm_id, ptr %cm_id, i32 0, i32 2
  %0 = ptrtoint ptr %qp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %qp, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.do.body_crit_edge, label %if.then

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %qp_context = getelementptr inbounds %struct.ib_qp, ptr %1, i32 0, i32 16
  %2 = ptrtoint ptr %qp_context to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %qp_context, align 4
  br label %do.body

do.body:                                          ; preds = %if.then, %entry.do.body_crit_edge
  %queue.0 = phi ptr [ %3, %if.then ], [ null, %entry.do.body_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @nvmet_rdma_cm_handler.__UNIQUE_ID_ddebug555, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@nvmet_rdma_cm_handler, %if.then5)) #14
          to label %do.end [label %if.then5], !srcloc !315

if.then5:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #16
  %4 = ptrtoint ptr %event to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %event, align 8
  %call7 = tail call ptr @rdma_event_msg(i32 noundef %5) #19
  %status = getelementptr inbounds %struct.rdma_cm_event, ptr %event, i32 0, i32 1
  %6 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %status, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @nvmet_rdma_cm_handler.__UNIQUE_ID_ddebug555, ptr noundef nonnull @.str.41, ptr noundef %call7, i32 noundef %5, i32 noundef %7, ptr noundef %cm_id) #14
  br label %do.end

do.end:                                           ; preds = %if.then5, %do.body
  %8 = ptrtoint ptr %event to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %event, align 8
  %10 = zext i32 %9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.135)
  switch i32 %9, label %do.end43 [
    i32 4, label %sw.bb
    i32 9, label %sw.bb12
    i32 14, label %sw.bb13
    i32 10, label %do.end.sw.bb18_crit_edge
    i32 15, label %do.end.sw.bb18_crit_edge88
    i32 11, label %sw.bb19
    i32 8, label %do.body22
    i32 7, label %do.end.sw.bb40_crit_edge
    i32 6, label %do.end.sw.bb40_crit_edge89
  ]

do.end.sw.bb40_crit_edge89:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb40

do.end.sw.bb40_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb40

do.end.sw.bb18_crit_edge88:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb18

do.end.sw.bb18_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb18

sw.bb:                                            ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #16
  %call11 = tail call fastcc i32 @nvmet_rdma_queue_connect(ptr noundef %cm_id, ptr noundef %event)
  br label %sw.epilog

sw.bb12:                                          ; preds = %do.end
  %state_lock.i = getelementptr inbounds %struct.nvmet_rdma_queue, ptr %queue.0, i32 0, i32 7
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %state_lock.i) #14
  %state.i = getelementptr inbounds %struct.nvmet_rdma_queue, ptr %queue.0, i32 0, i32 8
  %11 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %state.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %cmp5.not.i = icmp eq i32 %12, 0
  br i1 %cmp5.not.i, label %if.end.i, label %do.end9.i

do.end9.i:                                        ; preds = %sw.bb12
  call void @__sanitizer_cov_trace_pc() #16
  %call11.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.126) #17
  br label %nvmet_rdma_queue_established.exit

if.end.i:                                         ; preds = %sw.bb12
  %13 = ptrtoint ptr %state.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 1, ptr %state.i, align 4
  %rsp_wait_list.i = getelementptr inbounds %struct.nvmet_rdma_queue, ptr %queue.0, i32 0, i32 16
  %14 = ptrtoint ptr %rsp_wait_list.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile ptr, ptr %rsp_wait_list.i, align 4
  %cmp.i.not42.i = icmp eq ptr %15, %rsp_wait_list.i
  br i1 %cmp.i.not42.i, label %if.end.i.nvmet_rdma_queue_established.exit_crit_edge, label %if.end.i.while.body.i_crit_edge

if.end.i.while.body.i_crit_edge:                  ; preds = %if.end.i
  br label %while.body.i

if.end.i.nvmet_rdma_queue_established.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %nvmet_rdma_queue_established.exit

while.body.i:                                     ; preds = %list_del.exit.i.while.body.i_crit_edge, %if.end.i.while.body.i_crit_edge
  %16 = phi ptr [ %26, %list_del.exit.i.while.body.i_crit_edge ], [ %15, %if.end.i.while.body.i_crit_edge ]
  %flags.043.i = phi i32 [ %call26.i, %list_del.exit.i.while.body.i_crit_edge ], [ %call2.i, %if.end.i.while.body.i_crit_edge ]
  %add.ptr.i = getelementptr i8, ptr %16, i32 -508
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %16) #14
  br i1 %call.i.i.i, label %if.end.i.i.i, label %while.body.i.list_del.exit.i_crit_edge

while.body.i.list_del.exit.i_crit_edge:           ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %list_del.exit.i

if.end.i.i.i:                                     ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #16
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %16, i32 0, i32 1
  %17 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %prev.i.i.i, align 4
  %19 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %16, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %20, i32 0, i32 1
  %21 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %18, ptr %prev1.i.i.i.i, align 4
  %22 = ptrtoint ptr %18 to i32
  call void @__asan_store4_noabort(i32 %22)
  store volatile ptr %20, ptr %18, align 4
  br label %list_del.exit.i

list_del.exit.i:                                  ; preds = %if.end.i.i.i, %while.body.i.list_del.exit.i_crit_edge
  %23 = ptrtoint ptr %16 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr inttoptr (i32 256 to ptr), ptr %16, align 4
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %16, i32 0, i32 1
  %24 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %state_lock.i, i32 noundef %flags.043.i) #14
  tail call fastcc void @nvmet_rdma_handle_command(ptr noundef %queue.0, ptr noundef %add.ptr.i) #14
  %call26.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %state_lock.i) #14
  %25 = ptrtoint ptr %rsp_wait_list.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load volatile ptr, ptr %rsp_wait_list.i, align 4
  %cmp.i.not.i = icmp eq ptr %26, %rsp_wait_list.i
  br i1 %cmp.i.not.i, label %list_del.exit.i.nvmet_rdma_queue_established.exit_crit_edge, label %list_del.exit.i.while.body.i_crit_edge

list_del.exit.i.while.body.i_crit_edge:           ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.body.i

list_del.exit.i.nvmet_rdma_queue_established.exit_crit_edge: ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %nvmet_rdma_queue_established.exit

nvmet_rdma_queue_established.exit:                ; preds = %list_del.exit.i.nvmet_rdma_queue_established.exit_crit_edge, %if.end.i.nvmet_rdma_queue_established.exit_crit_edge, %do.end9.i
  %flags.1.i = phi i32 [ %call2.i, %do.end9.i ], [ %call2.i, %if.end.i.nvmet_rdma_queue_established.exit_crit_edge ], [ %call26.i, %list_del.exit.i.nvmet_rdma_queue_established.exit_crit_edge ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %state_lock.i, i32 noundef %flags.1.i) #14
  br label %sw.epilog

sw.bb13:                                          ; preds = %do.end
  %tobool14.not = icmp eq ptr %queue.0, null
  br i1 %tobool14.not, label %if.then15, label %sw.bb13.sw.bb18_crit_edge

sw.bb13.sw.bb18_crit_edge:                        ; preds = %sw.bb13
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb18

if.then15:                                        ; preds = %sw.bb13
  call void @__sanitizer_cov_trace_pc() #16
  %context = getelementptr inbounds %struct.rdma_cm_id, ptr %cm_id, i32 0, i32 1
  %27 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %context, align 4
  %repair_work = getelementptr inbounds %struct.nvmet_rdma_port, ptr %28, i32 0, i32 3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %29 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %29, ptr noundef %repair_work, i32 noundef 0) #14
  br label %sw.epilog

sw.bb18:                                          ; preds = %sw.bb13.sw.bb18_crit_edge, %do.end.sw.bb18_crit_edge, %do.end.sw.bb18_crit_edge88
  tail call void @mutex_lock_nested(ptr noundef nonnull @nvmet_rdma_queue_mutex, i32 noundef 0) #14
  %queue_list.i = getelementptr inbounds %struct.nvmet_rdma_queue, ptr %queue.0, i32 0, i32 24
  %30 = ptrtoint ptr %queue_list.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load volatile ptr, ptr %queue_list.i, align 4
  %cmp.i.not.i67 = icmp eq ptr %31, %queue_list.i
  br i1 %cmp.i.not.i67, label %if.end4.critedge.i, label %if.then.i

if.then.i:                                        ; preds = %sw.bb18
  %call.i.i.i68 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %queue_list.i) #14
  br i1 %call.i.i.i68, label %if.end.i.i.i71, label %if.then.i.list_del_init.exit.i_crit_edge

if.then.i.list_del_init.exit.i_crit_edge:         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %list_del_init.exit.i

if.end.i.i.i71:                                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #16
  %prev.i.i.i69 = getelementptr inbounds %struct.nvmet_rdma_queue, ptr %queue.0, i32 0, i32 24, i32 1
  %32 = ptrtoint ptr %prev.i.i.i69 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %prev.i.i.i69, align 4
  %34 = ptrtoint ptr %queue_list.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %queue_list.i, align 4
  %prev1.i.i.i.i70 = getelementptr inbounds %struct.list_head, ptr %35, i32 0, i32 1
  %36 = ptrtoint ptr %prev1.i.i.i.i70 to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %33, ptr %prev1.i.i.i.i70, align 4
  %37 = ptrtoint ptr %33 to i32
  call void @__asan_store4_noabort(i32 %37)
  store volatile ptr %35, ptr %33, align 4
  br label %list_del_init.exit.i

list_del_init.exit.i:                             ; preds = %if.end.i.i.i71, %if.then.i.list_del_init.exit.i_crit_edge
  %38 = ptrtoint ptr %queue_list.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store volatile ptr %queue_list.i, ptr %queue_list.i, align 4
  %prev.i3.i.i = getelementptr inbounds %struct.nvmet_rdma_queue, ptr %queue.0, i32 0, i32 24, i32 1
  %39 = ptrtoint ptr %prev.i3.i.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %queue_list.i, ptr %prev.i3.i.i, align 4
  tail call void @mutex_unlock(ptr noundef nonnull @nvmet_rdma_queue_mutex) #14
  tail call fastcc void @__nvmet_rdma_queue_disconnect(ptr noundef %queue.0) #14
  br label %sw.epilog

if.end4.critedge.i:                               ; preds = %sw.bb18
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @mutex_unlock(ptr noundef nonnull @nvmet_rdma_queue_mutex) #14
  br label %sw.epilog

sw.bb19:                                          ; preds = %do.end
  %tobool.not.i = icmp eq ptr %queue.0, null
  br i1 %tobool.not.i, label %if.end.i73, label %sw.bb19.sw.epilog_crit_edge

sw.bb19.sw.epilog_crit_edge:                      ; preds = %sw.bb19
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog

if.end.i73:                                       ; preds = %sw.bb19
  call void @__sanitizer_cov_trace_pc() #16
  %context.i = getelementptr inbounds %struct.rdma_cm_id, ptr %cm_id, i32 0, i32 1
  %40 = ptrtoint ptr %context.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %context.i, align 4
  %cm_id1.i = getelementptr inbounds %struct.nvmet_rdma_port, ptr %41, i32 0, i32 2
  %call.i.i72 = tail call zeroext i1 @__kasan_check_write(ptr noundef %cm_id1.i, i32 noundef 4) #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !319
  tail call void @llvm.prefetch.p0(ptr %cm_id1.i, i32 1, i32 3, i32 1) #14
  %42 = tail call { i32, i32 } asm sideeffect "@\09__xchg4\0A1:\09ldrex\09$0, [$3]\0A\09strex\09$1, $2, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,r,~{memory},~{cc}"(i32 0, ptr %cm_id1.i) #14, !srcloc !317
  %asmresult.i.i = extractvalue { i32, i32 } %42, 0
  %43 = inttoptr i32 %asmresult.i.i to ptr
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !320
  %cmp.not.i = icmp eq ptr %43, %cm_id
  %..i = zext i1 %cmp.not.i to i32
  br label %sw.epilog

do.body22:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @nvmet_rdma_cm_handler.__UNIQUE_ID_ddebug556, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@nvmet_rdma_cm_handler, %if.then34)) #14
          to label %sw.bb40 [label %if.then34], !srcloc !315

if.then34:                                        ; preds = %do.body22
  call void @__sanitizer_cov_trace_pc() #16
  %status35 = getelementptr inbounds %struct.rdma_cm_event, ptr %event, i32 0, i32 1
  %44 = ptrtoint ptr %status35 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %status35, align 4
  %call36 = tail call ptr @rdma_reject_msg(ptr noundef %cm_id, i32 noundef %45) #19
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @nvmet_rdma_cm_handler.__UNIQUE_ID_ddebug556, ptr noundef nonnull @.str.43, ptr noundef %call36) #14
  br label %sw.bb40

sw.bb40:                                          ; preds = %if.then34, %do.body22, %do.end.sw.bb40_crit_edge, %do.end.sw.bb40_crit_edge89
  %state.i75 = getelementptr inbounds %struct.nvmet_rdma_queue, ptr %queue.0, i32 0, i32 8
  %46 = ptrtoint ptr %state.i75 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %state.i75, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %47)
  %cmp.not.i76 = icmp eq i32 %47, 0
  br i1 %cmp.not.i76, label %sw.bb40.if.end27.i_crit_edge, label %land.rhs.i

sw.bb40.if.end27.i_crit_edge:                     ; preds = %sw.bb40
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end27.i

land.rhs.i:                                       ; preds = %sw.bb40
  %.b1.i = load i1, ptr @nvmet_rdma_queue_connect_fail.__already_done, align 1
  br i1 %.b1.i, label %land.rhs.i.if.end27.i_crit_edge, label %if.then.i77, !prof !306

land.rhs.i.if.end27.i_crit_edge:                  ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end27.i

if.then.i77:                                      ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @nvmet_rdma_queue_connect_fail.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1694, i32 noundef 9, ptr noundef null) #14
  br label %if.end27.i

if.end27.i:                                       ; preds = %if.then.i77, %land.rhs.i.if.end27.i_crit_edge, %sw.bb40.if.end27.i_crit_edge
  tail call void @mutex_lock_nested(ptr noundef nonnull @nvmet_rdma_queue_mutex, i32 noundef 0) #14
  %queue_list.i78 = getelementptr inbounds %struct.nvmet_rdma_queue, ptr %queue.0, i32 0, i32 24
  %48 = ptrtoint ptr %queue_list.i78 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load volatile ptr, ptr %queue_list.i78, align 4
  %cmp.i.not.i79 = icmp eq ptr %49, %queue_list.i78
  br i1 %cmp.i.not.i79, label %if.end27.i.nvmet_rdma_queue_connect_fail.exit_crit_edge, label %if.then36.i

if.end27.i.nvmet_rdma_queue_connect_fail.exit_crit_edge: ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %nvmet_rdma_queue_connect_fail.exit

if.then36.i:                                      ; preds = %if.end27.i
  %call.i.i.i80 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %queue_list.i78) #14
  br i1 %call.i.i.i80, label %if.end.i.i.i83, label %if.then36.i.list_del_init.exit.i85_crit_edge

if.then36.i.list_del_init.exit.i85_crit_edge:     ; preds = %if.then36.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %list_del_init.exit.i85

if.end.i.i.i83:                                   ; preds = %if.then36.i
  call void @__sanitizer_cov_trace_pc() #16
  %prev.i.i.i81 = getelementptr inbounds %struct.nvmet_rdma_queue, ptr %queue.0, i32 0, i32 24, i32 1
  %50 = ptrtoint ptr %prev.i.i.i81 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %prev.i.i.i81, align 4
  %52 = ptrtoint ptr %queue_list.i78 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %queue_list.i78, align 4
  %prev1.i.i.i.i82 = getelementptr inbounds %struct.list_head, ptr %53, i32 0, i32 1
  %54 = ptrtoint ptr %prev1.i.i.i.i82 to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %51, ptr %prev1.i.i.i.i82, align 4
  %55 = ptrtoint ptr %51 to i32
  call void @__asan_store4_noabort(i32 %55)
  store volatile ptr %53, ptr %51, align 4
  br label %list_del_init.exit.i85

list_del_init.exit.i85:                           ; preds = %if.end.i.i.i83, %if.then36.i.list_del_init.exit.i85_crit_edge
  %56 = ptrtoint ptr %queue_list.i78 to i32
  call void @__asan_store4_noabort(i32 %56)
  store volatile ptr %queue_list.i78, ptr %queue_list.i78, align 4
  %prev.i3.i.i84 = getelementptr inbounds %struct.nvmet_rdma_queue, ptr %queue.0, i32 0, i32 24, i32 1
  %57 = ptrtoint ptr %prev.i3.i.i84 to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr %queue_list.i78, ptr %prev.i3.i.i84, align 4
  br label %nvmet_rdma_queue_connect_fail.exit

nvmet_rdma_queue_connect_fail.exit:               ; preds = %list_del_init.exit.i85, %if.end27.i.nvmet_rdma_queue_connect_fail.exit_crit_edge
  tail call void @mutex_unlock(ptr noundef nonnull @nvmet_rdma_queue_mutex) #14
  %idx.i = getelementptr inbounds %struct.nvmet_rdma_queue, ptr %queue.0, i32 0, i32 19
  %58 = ptrtoint ptr %idx.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %idx.i, align 4
  %call43.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.128, i32 noundef %59) #17
  %release_work.i = getelementptr inbounds %struct.nvmet_rdma_queue, ptr %queue.0, i32 0, i32 15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %60 = load ptr, ptr @system_wq, align 4
  %call.i.i2.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %60, ptr noundef %release_work.i) #14
  br label %sw.epilog

do.end43:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #16
  %call46 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.44, i32 noundef %9) #17
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end43, %nvmet_rdma_queue_connect_fail.exit, %if.end.i73, %sw.bb19.sw.epilog_crit_edge, %if.end4.critedge.i, %list_del_init.exit.i, %if.then15, %nvmet_rdma_queue_established.exit, %sw.bb
  %ret.0 = phi i32 [ 0, %do.end43 ], [ 0, %nvmet_rdma_queue_connect_fail.exit ], [ 0, %if.then15 ], [ 0, %nvmet_rdma_queue_established.exit ], [ %call11, %sw.bb ], [ 0, %list_del_init.exit.i ], [ 0, %if.end4.critedge.i ], [ 0, %sw.bb19.sw.epilog_crit_edge ], [ %..i, %if.end.i73 ]
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rdma_set_afonly(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rdma_bind_addr(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rdma_listen(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid readnone willreturn
declare dso_local ptr @rdma_event_msg(i32 noundef) local_unnamed_addr #12

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @nvmet_rdma_queue_connect(ptr noundef %cm_id, ptr nocapture noundef readonly %event) unnamed_addr #3 align 64 {
entry:
  %param.i = alloca %struct.rdma_conn_param, align 4
  %priv.i = alloca %struct.nvme_rdma_cm_rep, align 2
  %rej.i = alloca %struct.nvme_rdma_cm_rej, align 2
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc ptr @nvmet_rdma_find_get_device(ptr noundef %cm_id)
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rej.i) #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @nvmet_rdma_cm_reject.__UNIQUE_ID_ddebug550, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@nvmet_rdma_queue_connect, %if.then.i)) #14
          to label %nvmet_rdma_cm_reject.exit [label %if.then.i], !srcloc !315

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @nvmet_rdma_cm_reject.__UNIQUE_ID_ddebug550, ptr noundef nonnull @.str.91, i32 noundef 6, ptr noundef nonnull @.str.97) #14
  br label %nvmet_rdma_cm_reject.exit

nvmet_rdma_cm_reject.exit:                        ; preds = %if.then.i, %if.then
  %0 = getelementptr inbounds %struct.nvme_rdma_cm_rej, ptr %rej.i, i32 0, i32 1
  %1 = ptrtoint ptr %rej.i to i32
  call void @__asan_store2_noabort(i32 %1)
  store i16 0, ptr %rej.i, align 2
  %2 = ptrtoint ptr %0 to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 1536, ptr %0, align 2
  %call4.i = call i32 @rdma_reject(ptr noundef %cm_id, ptr noundef nonnull %rej.i, i8 noundef zeroext 4, i8 noundef zeroext 28) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rej.i) #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call fastcc ptr @nvmet_rdma_alloc_queue(ptr noundef nonnull %call, ptr noundef %cm_id, ptr noundef %event)
  %tobool3.not = icmp eq ptr %call2, null
  br i1 %tobool3.not, label %if.end.put_device_crit_edge, label %if.end5

if.end.put_device_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %put_device

if.end5:                                          ; preds = %if.end
  %host_qid = getelementptr inbounds %struct.nvmet_rdma_queue, ptr %call2, i32 0, i32 20
  %3 = ptrtoint ptr %host_qid to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %host_qid, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp = icmp eq i32 %4, 0
  br i1 %cmp, label %if.then6, label %if.end5.if.end7_crit_edge

if.end5.if.end7_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end7

if.then6:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #16
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %5 = load ptr, ptr @system_wq, align 4
  tail call void @flush_workqueue(ptr noundef %5) #14
  br label %if.end7

if.end7:                                          ; preds = %if.then6, %if.end5.if.end7_crit_edge
  %param = getelementptr inbounds %struct.rdma_cm_event, ptr %event, i32 0, i32 2
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %param.i) #14
  %6 = getelementptr inbounds i8, ptr %param.i, i32 4
  %7 = call ptr @memset(ptr %6, i32 0, i32 16)
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %priv.i) #14
  %8 = getelementptr inbounds i8, ptr %priv.i, i32 4
  %9 = call ptr @memset(ptr %8, i32 0, i32 28)
  %rnr_retry_count.i = getelementptr inbounds %struct.rdma_conn_param, ptr %param.i, i32 0, i32 6
  %10 = ptrtoint ptr %rnr_retry_count.i to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 7, ptr %rnr_retry_count.i, align 1
  %flow_control.i = getelementptr inbounds %struct.rdma_conn_param, ptr %param.i, i32 0, i32 4
  %11 = ptrtoint ptr %flow_control.i to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 1, ptr %flow_control.i, align 1
  %initiator_depth.i = getelementptr inbounds %struct.rdma_conn_param, ptr %param, i32 0, i32 3
  %12 = ptrtoint ptr %initiator_depth.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %initiator_depth.i, align 2
  %dev.i = getelementptr inbounds %struct.nvmet_rdma_queue, ptr %call2, i32 0, i32 5
  %14 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev.i, align 4
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %15, align 4
  %max_qp_init_rd_atom.i = getelementptr inbounds %struct.ib_device, ptr %17, i32 0, i32 22, i32 20
  %18 = ptrtoint ptr %max_qp_init_rd_atom.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %max_qp_init_rd_atom.i, align 8
  %conv1.i = zext i8 %13 to i32
  %conv2.i = and i32 %19, 255
  %20 = tail call i32 @llvm.umin.i32(i32 %conv2.i, i32 %conv1.i) #14
  %conv6.i = trunc i32 %20 to i8
  %initiator_depth7.i = getelementptr inbounds %struct.rdma_conn_param, ptr %param.i, i32 0, i32 3
  %21 = ptrtoint ptr %initiator_depth7.i to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %conv6.i, ptr %initiator_depth7.i, align 2
  %22 = ptrtoint ptr %param.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %priv.i, ptr %param.i, align 4
  %23 = ptrtoint ptr %6 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 32, ptr %6, align 4
  %24 = ptrtoint ptr %priv.i to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 0, ptr %priv.i, align 2
  %recv_queue_size.i = getelementptr inbounds %struct.nvmet_rdma_queue, ptr %call2, i32 0, i32 22
  %25 = ptrtoint ptr %recv_queue_size.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %recv_queue_size.i, align 4
  %conv8.i = trunc i32 %26 to i16
  %27 = call i16 @llvm.bswap.i16(i16 %conv8.i) #14
  %crqsize.i = getelementptr inbounds %struct.nvme_rdma_cm_rep, ptr %priv.i, i32 0, i32 1
  %28 = ptrtoint ptr %crqsize.i to i32
  call void @__asan_store2_noabort(i32 %28)
  store i16 %27, ptr %crqsize.i, align 2
  %call.i = call i32 @rdma_accept(ptr noundef %cm_id, ptr noundef nonnull %param.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end12, label %if.then10

if.then10:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #16
  %call10.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.121, i32 noundef %call.i) #17
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %priv.i) #14
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %param.i) #14
  %29 = ptrtoint ptr %call2 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr null, ptr %call2, align 4
  call fastcc void @nvmet_rdma_free_queue(ptr noundef nonnull %call2)
  br label %put_device

if.end12:                                         ; preds = %if.end7
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %priv.i) #14
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %param.i) #14
  call void @mutex_lock_nested(ptr noundef nonnull @nvmet_rdma_queue_mutex, i32 noundef 0) #14
  %queue_list = getelementptr inbounds %struct.nvmet_rdma_queue, ptr %call2, i32 0, i32 24
  %30 = load ptr, ptr getelementptr inbounds (%struct.list_head, ptr @nvmet_rdma_queue_list, i32 0, i32 1), align 4
  %call.i.i = call zeroext i1 @__list_add_valid(ptr noundef %queue_list, ptr noundef %30, ptr noundef nonnull @nvmet_rdma_queue_list) #14
  br i1 %call.i.i, label %if.end.i.i, label %if.end12.list_add_tail.exit_crit_edge

if.end12.list_add_tail.exit_crit_edge:            ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #16
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #16
  store ptr %queue_list, ptr getelementptr inbounds (%struct.list_head, ptr @nvmet_rdma_queue_list, i32 0, i32 1), align 4
  %31 = ptrtoint ptr %queue_list to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr @nvmet_rdma_queue_list, ptr %queue_list, align 4
  %prev3.i.i = getelementptr inbounds %struct.nvmet_rdma_queue, ptr %call2, i32 0, i32 24, i32 1
  %32 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %30, ptr %prev3.i.i, align 4
  %33 = ptrtoint ptr %30 to i32
  call void @__asan_store4_noabort(i32 %33)
  store volatile ptr %queue_list, ptr %30, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %if.end12.list_add_tail.exit_crit_edge
  call void @mutex_unlock(ptr noundef nonnull @nvmet_rdma_queue_mutex) #14
  br label %cleanup

put_device:                                       ; preds = %if.then10, %if.end.put_device_crit_edge
  %ret.0 = phi i32 [ %call.i, %if.then10 ], [ -12, %if.end.put_device_crit_edge ]
  %ref = getelementptr inbounds %struct.nvmet_rdma_device, ptr %call, i32 0, i32 5
  call fastcc void @kref_put(ptr noundef %ref)
  br label %cleanup

cleanup:                                          ; preds = %put_device, %list_add_tail.exit, %nvmet_rdma_cm_reject.exit
  %retval.0 = phi i32 [ %ret.0, %put_device ], [ 0, %list_add_tail.exit ], [ -111, %nvmet_rdma_cm_reject.exit ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid readnone willreturn
declare dso_local ptr @rdma_reject_msg(ptr noundef, i32 noundef) local_unnamed_addr #12

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @nvmet_rdma_find_get_device(ptr nocapture noundef readonly %cm_id) unnamed_addr #3 align 64 {
entry:
  %dummy.i19.i.i.i = alloca ptr, align 4
  %dummy.i.i.i.i = alloca ptr, align 4
  %srq_attr.i.i = alloca %struct.ib_srq_init_attr, align 4
  %old.i.i.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %context = getelementptr inbounds %struct.rdma_cm_id, ptr %cm_id, i32 0, i32 1
  %0 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %context, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  tail call void @mutex_lock_nested(ptr noundef nonnull @device_list_mutex, i32 noundef 0) #14
  %.pn137 = load ptr, ptr @device_list, align 4
  %cmp.not139 = icmp eq ptr %.pn137, @device_list
  br i1 %cmp.not139, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %.pn140 = phi ptr [ %.pn, %for.inc.for.body_crit_edge ], [ %.pn137, %entry.for.body_crit_edge ]
  %ndev.0141 = getelementptr i8, ptr %.pn140, i32 -24
  %4 = ptrtoint ptr %ndev.0141 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ndev.0141, align 4
  %node_guid = getelementptr inbounds %struct.ib_device, ptr %5, i32 0, i32 17
  %6 = ptrtoint ptr %node_guid to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %node_guid, align 8
  %8 = ptrtoint ptr %cm_id to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %cm_id, align 4
  %node_guid4 = getelementptr inbounds %struct.ib_device, ptr %9, i32 0, i32 17
  %10 = ptrtoint ptr %node_guid4 to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %node_guid4, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %7, i64 %11)
  %cmp5 = icmp eq i64 %7, %11
  br i1 %cmp5, label %land.lhs.true, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc

land.lhs.true:                                    ; preds = %for.body
  %ref = getelementptr i8, ptr %.pn140, i32 -4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %old.i.i.i.i) #14
  %call.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %ref, i32 noundef 4) #14
  %12 = ptrtoint ptr %ref to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %ref, align 4
  br label %do.body.i.i.i.i

do.body.i.i.i.i:                                  ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.do.body.i.i.i.i_crit_edge, %land.lhs.true
  %14 = phi i32 [ %13, %land.lhs.true ], [ %asmresult3.i.i.i.i.i.i.i, %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.do.body.i.i.i.i_crit_edge ]
  %15 = ptrtoint ptr %old.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %old.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool.not.i.i.i.i = icmp eq i32 %14, 0
  br i1 %tobool.not.i.i.i.i, label %do.body.i.i.i.i.if.end4.i.i.i.i_crit_edge, label %do.cond.i.i.i.i

do.body.i.i.i.i.if.end4.i.i.i.i_crit_edge:        ; preds = %do.body.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end4.i.i.i.i

do.cond.i.i.i.i:                                  ; preds = %do.body.i.i.i.i
  %add.i.i.i.i = add i32 %14, 1
  %call.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %ref, i32 noundef 4) #14
  %call.i3.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %old.i.i.i.i, i32 noundef 4) #14
  %16 = ptrtoint ptr %old.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %old.i.i.i.i, align 4
  call void @llvm.prefetch.p0(ptr %ref, i32 1, i32 3, i32 1) #14
  br label %do.body.i.i.i.i.i.i.i

do.body.i.i.i.i.i.i.i:                            ; preds = %do.body.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i.i_crit_edge, %do.cond.i.i.i.i
  %18 = call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %ref, ptr %ref, i32 %17, i32 %add.i.i.i.i, ptr elementtype(i32) %ref) #14, !srcloc !321
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32 } %18, 0
  %tobool.not.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i.i.i.i, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i, label %do.body.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i.i_crit_edge

do.body.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i.i_crit_edge: ; preds = %do.body.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body.i.i.i.i.i.i.i

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i:     ; preds = %do.body.i.i.i.i.i.i.i
  %asmresult3.i.i.i.i.i.i.i = extractvalue { i32, i32 } %18, 1
  %cmp.not.i.i.i.i.i.i = icmp eq i32 %asmresult3.i.i.i.i.i.i.i, %17
  br i1 %cmp.not.i.i.i.i.i.i, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.if.end4.i.i.i.i_crit_edge, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.do.body.i.i.i.i_crit_edge, !prof !306

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.do.body.i.i.i.i_crit_edge: ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body.i.i.i.i

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.if.end4.i.i.i.i_crit_edge: ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end4.i.i.i.i

if.end4.i.i.i.i:                                  ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.if.end4.i.i.i.i_crit_edge, %do.body.i.i.i.i.if.end4.i.i.i.i_crit_edge
  %19 = ptrtoint ptr %old.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %old.i.i.i.i, align 4
  %add5.i.i.i.i = add i32 %20, 1
  %21 = or i32 %add5.i.i.i.i, %20
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %21)
  %.not.i.i.i.i = icmp sgt i32 %21, -1
  br i1 %.not.i.i.i.i, label %if.end4.i.i.i.i.kref_get_unless_zero.exit_crit_edge, label %if.then10.i.i.i.i, !prof !306

if.end4.i.i.i.i.kref_get_unless_zero.exit_crit_edge: ; preds = %if.end4.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %kref_get_unless_zero.exit

if.then10.i.i.i.i:                                ; preds = %if.end4.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  call void @refcount_warn_saturate(ptr noundef %ref, i32 noundef 0) #14
  %22 = ptrtoint ptr %old.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %.pr = load i32, ptr %old.i.i.i.i, align 4
  br label %kref_get_unless_zero.exit

kref_get_unless_zero.exit:                        ; preds = %if.then10.i.i.i.i, %if.end4.i.i.i.i.kref_get_unless_zero.exit_crit_edge
  %23 = phi i32 [ %20, %if.end4.i.i.i.i.kref_get_unless_zero.exit_crit_edge ], [ %.pr, %if.then10.i.i.i.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool12.i.i.i.i.not = icmp eq i32 %23, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %old.i.i.i.i) #14
  br i1 %tobool12.i.i.i.i.not, label %kref_get_unless_zero.exit.for.inc_crit_edge, label %out_unlock.loopexit

kref_get_unless_zero.exit.for.inc_crit_edge:      ; preds = %kref_get_unless_zero.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc

for.inc:                                          ; preds = %kref_get_unless_zero.exit.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %24 = ptrtoint ptr %.pn140 to i32
  call void @__asan_load4_noabort(i32 %24)
  %.pn = load ptr, ptr %.pn140, align 4
  %cmp.not = icmp eq ptr %.pn, @device_list
  br i1 %cmp.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %25 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %25, i32 noundef 3520, i32 noundef 40) #18
  %tobool11.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool11.not, label %for.end.out_err_crit_edge, label %if.end13

for.end.out_err_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %out_err

if.end13:                                         ; preds = %for.end
  %inline_data_size = getelementptr inbounds %struct.nvmet_port, ptr %3, i32 0, i32 13
  %26 = ptrtoint ptr %inline_data_size to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %inline_data_size, align 4
  %sub.i = add i32 %27, -1
  %shr.i = ashr i32 %sub.i, 12
  %add.i = add nsw i32 %shr.i, 1
  %28 = ptrtoint ptr %cm_id to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %cm_id, align 4
  %max_sge_rd = getelementptr inbounds %struct.ib_device, ptr %29, i32 0, i32 22, i32 12
  %30 = ptrtoint ptr %max_sge_rd to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %max_sge_rd, align 8
  %max_recv_sge = getelementptr inbounds %struct.ib_device, ptr %29, i32 0, i32 22, i32 11
  %32 = ptrtoint ptr %max_recv_sge to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %max_recv_sge, align 4
  %34 = call i32 @llvm.smax.i32(i32 %31, i32 %33)
  %sub = add i32 %34, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %shr.i, i32 %sub)
  %cmp20.not = icmp slt i32 %shr.i, %sub
  br i1 %cmp20.not, label %if.end13.if.end28_crit_edge, label %do.end

if.end13.if.end28_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end28

do.end:                                           ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #16
  %name = getelementptr inbounds %struct.ib_device, ptr %29, i32 0, i32 2
  %mul = shl i32 %sub, 12
  %call25 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.45, i32 noundef %27, ptr noundef %name, i32 noundef %mul) #17
  %35 = ptrtoint ptr %inline_data_size to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %mul, ptr %inline_data_size, align 4
  br label %if.end28

if.end28:                                         ; preds = %do.end, %if.end13.if.end28_crit_edge
  %inline_page_count.0 = phi i32 [ %sub, %do.end ], [ %add.i, %if.end13.if.end28_crit_edge ]
  %36 = ptrtoint ptr %inline_data_size to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %inline_data_size, align 4
  %inline_data_size30 = getelementptr inbounds %struct.nvmet_rdma_device, ptr %call7.i.i, i32 0, i32 7
  %38 = ptrtoint ptr %inline_data_size30 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %37, ptr %inline_data_size30, align 8
  %inline_page_count31 = getelementptr inbounds %struct.nvmet_rdma_device, ptr %call7.i.i, i32 0, i32 8
  %39 = ptrtoint ptr %inline_page_count31 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %inline_page_count.0, ptr %inline_page_count31, align 4
  %pi_enable = getelementptr inbounds %struct.nvmet_port, ptr %3, i32 0, i32 15
  %40 = ptrtoint ptr %pi_enable to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %pi_enable, align 4, !range !309
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %41)
  %tobool32.not = icmp eq i8 %41, 0
  br i1 %tobool32.not, label %if.end28.if.end47_crit_edge, label %land.lhs.true33

if.end28.if.end47_crit_edge:                      ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end47

land.lhs.true33:                                  ; preds = %if.end28
  %42 = ptrtoint ptr %cm_id to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %cm_id, align 4
  %device_cap_flags = getelementptr inbounds %struct.ib_device, ptr %43, i32 0, i32 22, i32 9
  %44 = ptrtoint ptr %device_cap_flags to i32
  call void @__asan_load8_noabort(i32 %44)
  %45 = load i64, ptr %device_cap_flags, align 8
  %and = and i64 %45, 1073741824
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %tobool36.not = icmp eq i64 %and, 0
  br i1 %tobool36.not, label %do.end40, label %land.lhs.true33.if.end47_crit_edge

land.lhs.true33.if.end47_crit_edge:               ; preds = %land.lhs.true33
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end47

do.end40:                                         ; preds = %land.lhs.true33
  call void @__sanitizer_cov_trace_pc() #16
  %name43 = getelementptr inbounds %struct.ib_device, ptr %43, i32 0, i32 2
  %call45 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.48, ptr noundef %name43) #17
  %46 = ptrtoint ptr %pi_enable to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 0, ptr %pi_enable, align 4
  br label %if.end47

if.end47:                                         ; preds = %do.end40, %land.lhs.true33.if.end47_crit_edge, %if.end28.if.end47_crit_edge
  %47 = ptrtoint ptr %cm_id to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %cm_id, align 4
  %49 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %48, ptr %call7.i.i, align 8
  %ref50 = getelementptr inbounds %struct.nvmet_rdma_device, ptr %call7.i.i, i32 0, i32 5
  %call.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %ref50, i32 noundef 4) #14
  %50 = ptrtoint ptr %ref50 to i32
  call void @__asan_store4_noabort(i32 %50)
  store volatile i32 1, ptr %ref50, align 4
  %51 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %call7.i.i, align 8
  %call52 = call ptr @__ib_alloc_pd(ptr noundef %52, i32 noundef 0, ptr noundef nonnull @.str.5) #14
  %pd = getelementptr inbounds %struct.nvmet_rdma_device, ptr %call7.i.i, i32 0, i32 1
  %53 = ptrtoint ptr %pd to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr %call52, ptr %pd, align 4
  %cmp.i = icmp ugt ptr %call52, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.end47.out_free_dev_crit_edge, label %if.end56

if.end47.out_free_dev_crit_edge:                  ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #16
  br label %out_free_dev

if.end56:                                         ; preds = %if.end47
  %54 = load i8, ptr @nvmet_rdma_use_srq, align 1, !range !309
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %54)
  %tobool57.not = icmp eq i8 %54, 0
  br i1 %tobool57.not, label %if.end56.if.end63_crit_edge, label %if.then58

if.end56.if.end63_crit_edge:                      ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end63

if.then58:                                        ; preds = %if.end56
  %55 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %call7.i.i, align 8
  %max_srq_wr.i = getelementptr inbounds %struct.ib_device, ptr %56, i32 0, i32 22, i32 34
  %57 = ptrtoint ptr %max_srq_wr.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %max_srq_wr.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %58)
  %tobool.not.i = icmp eq i32 %58, 0
  br i1 %tobool.not.i, label %if.then58.do.end.i_crit_edge, label %lor.lhs.false.i

if.then58.do.end.i_crit_edge:                     ; preds = %if.then58
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end.i

lor.lhs.false.i:                                  ; preds = %if.then58
  %max_srq.i = getelementptr inbounds %struct.ib_device, ptr %56, i32 0, i32 22, i32 33
  %59 = ptrtoint ptr %max_srq.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %max_srq.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %60)
  %tobool3.not.i = icmp eq i32 %60, 0
  br i1 %tobool3.not.i, label %lor.lhs.false.i.do.end.i_crit_edge, label %if.end.i

lor.lhs.false.i.do.end.i_crit_edge:               ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end.i

do.end.i:                                         ; preds = %lor.lhs.false.i.do.end.i_crit_edge, %if.then58.do.end.i_crit_edge
  %call.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.54) #17
  br label %if.end63

if.end.i:                                         ; preds = %lor.lhs.false.i
  %61 = load i32, ptr @nvmet_rdma_srq_size, align 4
  %62 = call i32 @llvm.smin.i32(i32 %58, i32 %61) #14
  %srq_size.i = getelementptr inbounds %struct.nvmet_rdma_device, ptr %call7.i.i, i32 0, i32 4
  %63 = ptrtoint ptr %srq_size.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 %62, ptr %srq_size.i, align 8
  %num_comp_vectors.i = getelementptr inbounds %struct.ib_device, ptr %56, i32 0, i32 12
  %64 = ptrtoint ptr %num_comp_vectors.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %num_comp_vectors.i, align 4
  %66 = ptrtoint ptr %max_srq.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %max_srq.i, align 4
  %68 = call i32 @llvm.smin.i32(i32 %65, i32 %67) #14
  %srq_count.i = getelementptr inbounds %struct.nvmet_rdma_device, ptr %call7.i.i, i32 0, i32 3
  %69 = ptrtoint ptr %srq_count.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 %68, ptr %srq_count.i, align 4
  %70 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %68, i32 4) #14
  %71 = extractvalue { i32, i1 } %70, 1
  br i1 %71, label %kcalloc.exit.thread.i, label %if.end7.i.i.i, !prof !307

kcalloc.exit.thread.i:                            ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  %srqs72.i = getelementptr inbounds %struct.nvmet_rdma_device, ptr %call7.i.i, i32 0, i32 2
  %72 = ptrtoint ptr %srqs72.i to i32
  call void @__asan_store4_noabort(i32 %72)
  store ptr null, ptr %srqs72.i, align 8
  br label %out_free_pd

if.end7.i.i.i:                                    ; preds = %if.end.i
  %73 = extractvalue { i32, i1 } %70, 0
  %call8.i.i.i = call noalias align 128 ptr @__kmalloc(i32 noundef %73, i32 noundef 3520) #20
  %srqs.i = getelementptr inbounds %struct.nvmet_rdma_device, ptr %call7.i.i, i32 0, i32 2
  %74 = ptrtoint ptr %srqs.i to i32
  call void @__asan_store4_noabort(i32 %74)
  store ptr %call8.i.i.i, ptr %srqs.i, align 8
  %tobool21.not.i = icmp eq ptr %call8.i.i.i, null
  br i1 %tobool21.not.i, label %if.end7.i.i.i.out_free_pd_crit_edge, label %for.cond.preheader.i

if.end7.i.i.i.out_free_pd_crit_edge:              ; preds = %if.end7.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %out_free_pd

for.cond.preheader.i:                             ; preds = %if.end7.i.i.i
  %75 = ptrtoint ptr %srq_count.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %srq_count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %76)
  %cmp2576.i = icmp sgt i32 %76, 0
  br i1 %cmp2576.i, label %for.body.lr.ph.i, label %for.cond.preheader.i.if.end63_crit_edge

for.cond.preheader.i.if.end63_crit_edge:          ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end63

for.body.lr.ph.i:                                 ; preds = %for.cond.preheader.i
  %attr.i.i = getelementptr inbounds %struct.ib_srq_init_attr, ptr %srq_attr.i.i, i32 0, i32 2
  %max_sge.i.i = getelementptr inbounds %struct.ib_srq_init_attr, ptr %srq_attr.i.i, i32 0, i32 2, i32 1
  %srq_limit.i.i = getelementptr inbounds %struct.ib_srq_init_attr, ptr %srq_attr.i.i, i32 0, i32 2, i32 2
  %srq_type.i.i = getelementptr inbounds %struct.ib_srq_init_attr, ptr %srq_attr.i.i, i32 0, i32 3
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.077.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %srq_attr.i.i) #14
  %77 = call ptr @memset(ptr %srq_attr.i.i, i32 0, i32 32)
  %78 = ptrtoint ptr %srq_size.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %srq_size.i, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %80 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i70.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %80, i32 noundef 3520, i32 noundef 12) #18
  %tobool.not.i.i = icmp eq ptr %call7.i.i.i70.i, null
  br i1 %tobool.not.i.i, label %for.body.i.nvmet_rdma_init_srq.exit.i_crit_edge, label %if.end.i.i

for.body.i.nvmet_rdma_init_srq.exit.i_crit_edge:  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %nvmet_rdma_init_srq.exit.i

if.end.i.i:                                       ; preds = %for.body.i
  %81 = ptrtoint ptr %attr.i.i to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 %79, ptr %attr.i.i, align 4
  %82 = ptrtoint ptr %inline_page_count31 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %inline_page_count31, align 4
  %add.i.i = add i32 %83, 1
  %84 = ptrtoint ptr %max_sge.i.i to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 %add.i.i, ptr %max_sge.i.i, align 4
  %85 = ptrtoint ptr %srq_limit.i.i to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 0, ptr %srq_limit.i.i, align 4
  %86 = ptrtoint ptr %srq_type.i.i to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 0, ptr %srq_type.i.i, align 4
  %87 = ptrtoint ptr %pd to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %pd, align 4
  %device.i.i.i = getelementptr inbounds %struct.ib_pd, ptr %88, i32 0, i32 2
  %89 = ptrtoint ptr %device.i.i.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %device.i.i.i, align 4
  %create_srq.i.i.i = getelementptr inbounds %struct.ib_device, ptr %90, i32 0, i32 1, i32 42
  %91 = ptrtoint ptr %create_srq.i.i.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %create_srq.i.i.i, align 4
  %tobool.not.i.i.i = icmp eq ptr %92, null
  br i1 %tobool.not.i.i.i, label %if.end.i.i.if.then7.i.i_crit_edge, label %ib_create_srq.exit.i.i

if.end.i.i.if.then7.i.i_crit_edge:                ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then7.i.i

ib_create_srq.exit.i.i:                           ; preds = %if.end.i.i
  %call1.i.i.i = call ptr @ib_create_srq_user(ptr noundef %88, ptr noundef nonnull %srq_attr.i.i, ptr noundef null, ptr noundef null) #14
  %cmp.i.i.i = icmp ugt ptr %call1.i.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i.i, label %ib_create_srq.exit.i.i.if.then7.i.i_crit_edge, label %if.end9.i.i

ib_create_srq.exit.i.i.if.then7.i.i_crit_edge:    ; preds = %ib_create_srq.exit.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then7.i.i

if.then7.i.i:                                     ; preds = %ib_create_srq.exit.i.i.if.then7.i.i_crit_edge, %if.end.i.i.if.then7.i.i_crit_edge
  %retval.0.i68.i.i = phi ptr [ %call1.i.i.i, %ib_create_srq.exit.i.i.if.then7.i.i_crit_edge ], [ inttoptr (i32 -95 to ptr), %if.end.i.i.if.then7.i.i_crit_edge ]
  %93 = ptrtoint ptr %retval.0.i68.i.i to i32
  br label %out_free.i.i

if.end9.i.i:                                      ; preds = %ib_create_srq.exit.i.i
  %call10.i.i = call fastcc ptr @nvmet_rdma_alloc_cmds(ptr noundef %call7.i.i, i32 noundef %79, i1 noundef zeroext false) #14
  %cmds.i.i = getelementptr inbounds %struct.nvmet_rdma_srq, ptr %call7.i.i.i70.i, i32 0, i32 1
  %94 = ptrtoint ptr %cmds.i.i to i32
  call void @__asan_store4_noabort(i32 %94)
  store ptr %call10.i.i, ptr %cmds.i.i, align 4
  %cmp.i61.i.i = icmp ugt ptr %call10.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i61.i.i, label %if.then13.i.i, label %if.end16.i.i

if.then13.i.i:                                    ; preds = %if.end9.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %95 = ptrtoint ptr %call10.i.i to i32
  br label %out_destroy_srq.i.i

if.end16.i.i:                                     ; preds = %if.end9.i.i
  %96 = ptrtoint ptr %call7.i.i.i70.i to i32
  call void @__asan_store4_noabort(i32 %96)
  store ptr %call1.i.i.i, ptr %call7.i.i.i70.i, align 8
  %ndev18.i.i = getelementptr inbounds %struct.nvmet_rdma_srq, ptr %call7.i.i.i70.i, i32 0, i32 2
  %97 = ptrtoint ptr %ndev18.i.i to i32
  call void @__asan_store4_noabort(i32 %97)
  store ptr %call7.i.i, ptr %ndev18.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %79)
  %cmp70.not.i.i = icmp eq i32 %79, 0
  br i1 %cmp70.not.i.i, label %if.end16.i.i.nvmet_rdma_init_srq.exit.i_crit_edge, label %if.end16.i.i.for.body.i.i_crit_edge

if.end16.i.i.for.body.i.i_crit_edge:              ; preds = %if.end16.i.i
  br label %for.body.i.i

if.end16.i.i.nvmet_rdma_init_srq.exit.i_crit_edge: ; preds = %if.end16.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %nvmet_rdma_init_srq.exit.i

for.cond.i.i:                                     ; preds = %if.end.i63.i.i
  %inc.i.i = add nuw i32 %i.071.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, %79
  br i1 %exitcond.not.i.i, label %for.cond.i.i.nvmet_rdma_init_srq.exit.i_crit_edge, label %for.cond.i.i.for.body.i.i_crit_edge

for.cond.i.i.for.body.i.i_crit_edge:              ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i.i

for.cond.i.i.nvmet_rdma_init_srq.exit.i_crit_edge: ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %nvmet_rdma_init_srq.exit.i

for.body.i.i:                                     ; preds = %for.cond.i.i.for.body.i.i_crit_edge, %if.end16.i.i.for.body.i.i_crit_edge
  %i.071.i.i = phi i32 [ %inc.i.i, %for.cond.i.i.for.body.i.i_crit_edge ], [ 0, %if.end16.i.i.for.body.i.i_crit_edge ]
  %98 = ptrtoint ptr %cmds.i.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %cmds.i.i, align 4
  %nsrq20.i.i = getelementptr %struct.nvmet_rdma_cmd, ptr %99, i32 %i.071.i.i, i32 6
  %100 = ptrtoint ptr %nsrq20.i.i to i32
  call void @__asan_store4_noabort(i32 %100)
  store ptr %call7.i.i.i70.i, ptr %nsrq20.i.i, align 8
  %101 = load ptr, ptr %cmds.i.i, align 4
  %arrayidx22.i.i = getelementptr %struct.nvmet_rdma_cmd, ptr %101, i32 %i.071.i.i
  %102 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %call7.i.i, align 8
  %104 = ptrtoint ptr %arrayidx22.i.i to i32
  call void @__asan_load8_noabort(i32 %104)
  %105 = load i64, ptr %arrayidx22.i.i, align 8
  %length.i.i.i = getelementptr inbounds %struct.ib_sge, ptr %arrayidx22.i.i, i32 0, i32 1
  %106 = ptrtoint ptr %length.i.i.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %length.i.i.i, align 8
  %108 = ptrtoint ptr %103 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %103, align 8
  %conv.i.i.i.i = trunc i64 %105 to i32
  call void @dma_sync_single_for_device(ptr noundef %109, i32 noundef %conv.i.i.i.i, i32 noundef %107, i32 noundef 2) #14
  %nsrq.i.i.i = getelementptr %struct.nvmet_rdma_cmd, ptr %101, i32 %i.071.i.i, i32 6
  %110 = ptrtoint ptr %nsrq.i.i.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %nsrq.i.i.i, align 8
  %tobool.not.i62.i.i = icmp eq ptr %111, null
  br i1 %tobool.not.i62.i.i, label %if.else.i.i.i, label %if.then.i.i.i

if.then.i.i.i:                                    ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %112 = ptrtoint ptr %111 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %111, align 4
  %wr.i.i.i = getelementptr %struct.nvmet_rdma_cmd, ptr %101, i32 %i.071.i.i, i32 2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %dummy.i.i.i.i) #14
  %114 = ptrtoint ptr %dummy.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %114)
  store ptr inttoptr (i32 -1 to ptr), ptr %dummy.i.i.i.i, align 4, !annotation !308
  %115 = ptrtoint ptr %113 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %113, align 4
  %post_srq_recv.i.i.i.i = getelementptr inbounds %struct.ib_device, ptr %116, i32 0, i32 1, i32 13
  %117 = ptrtoint ptr %post_srq_recv.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %post_srq_recv.i.i.i.i, align 4
  %call.i.i.i.i122 = call i32 %118(ptr noundef %113, ptr noundef %wr.i.i.i, ptr noundef nonnull %dummy.i.i.i.i) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dummy.i.i.i.i) #14
  br label %if.end.i63.i.i

if.else.i.i.i:                                    ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %queue.i.i.i = getelementptr %struct.nvmet_rdma_cmd, ptr %101, i32 %i.071.i.i, i32 5
  %119 = ptrtoint ptr %queue.i.i.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %queue.i.i.i, align 4
  %qp.i.i.i = getelementptr inbounds %struct.nvmet_rdma_queue, ptr %120, i32 0, i32 1
  %121 = ptrtoint ptr %qp.i.i.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %qp.i.i.i, align 4
  %wr4.i.i.i = getelementptr %struct.nvmet_rdma_cmd, ptr %101, i32 %i.071.i.i, i32 2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %dummy.i19.i.i.i) #14
  %123 = ptrtoint ptr %dummy.i19.i.i.i to i32
  call void @__asan_store4_noabort(i32 %123)
  store ptr inttoptr (i32 -1 to ptr), ptr %dummy.i19.i.i.i, align 4, !annotation !308
  %124 = ptrtoint ptr %122 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %122, align 4
  %post_recv.i.i.i.i = getelementptr inbounds %struct.ib_device, ptr %125, i32 0, i32 1, i32 7
  %126 = ptrtoint ptr %post_recv.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %post_recv.i.i.i.i, align 4
  %call.i20.i.i.i = call i32 %127(ptr noundef %122, ptr noundef %wr4.i.i.i, ptr noundef nonnull %dummy.i19.i.i.i) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dummy.i19.i.i.i) #14
  br label %if.end.i63.i.i

if.end.i63.i.i:                                   ; preds = %if.else.i.i.i, %if.then.i.i.i
  %ret.0.i.i.i = phi i32 [ %call.i.i.i.i122, %if.then.i.i.i ], [ %call.i20.i.i.i, %if.else.i.i.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0.i.i.i)
  %tobool6.not.i.i.i = icmp eq i32 %ret.0.i.i.i, 0
  br i1 %tobool6.not.i.i.i, label %for.cond.i.i, label %out_free_cmds.i.i, !prof !306

out_free_cmds.i.i:                                ; preds = %if.end.i63.i.i
  %call10.i.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3) #17
  %128 = ptrtoint ptr %cmds.i.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %cmds.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %79)
  %cmp4.i.i.i = icmp sgt i32 %79, 0
  br i1 %cmp4.i.i.i, label %out_free_cmds.i.i.for.body.i.i.i_crit_edge, label %out_free_cmds.i.i.nvmet_rdma_free_cmds.exit.i.i_crit_edge

out_free_cmds.i.i.nvmet_rdma_free_cmds.exit.i.i_crit_edge: ; preds = %out_free_cmds.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %nvmet_rdma_free_cmds.exit.i.i

out_free_cmds.i.i.for.body.i.i.i_crit_edge:       ; preds = %out_free_cmds.i.i
  br label %for.body.i.i.i

for.body.i.i.i:                                   ; preds = %for.body.i.i.i.for.body.i.i.i_crit_edge, %out_free_cmds.i.i.for.body.i.i.i_crit_edge
  %i.05.i.i.i = phi i32 [ %inc.i.i.i, %for.body.i.i.i.for.body.i.i.i_crit_edge ], [ 0, %out_free_cmds.i.i.for.body.i.i.i_crit_edge ]
  %add.ptr.i.i.i = getelementptr %struct.nvmet_rdma_cmd, ptr %129, i32 %i.05.i.i.i
  call fastcc void @nvmet_rdma_free_cmd(ptr noundef %call7.i.i, ptr noundef %add.ptr.i.i.i, i1 noundef zeroext false) #14
  %inc.i.i.i = add nuw nsw i32 %i.05.i.i.i, 1
  %exitcond.not.i.i.i = icmp eq i32 %inc.i.i.i, %79
  br i1 %exitcond.not.i.i.i, label %for.body.i.i.i.nvmet_rdma_free_cmds.exit.i.i_crit_edge, label %for.body.i.i.i.for.body.i.i.i_crit_edge

for.body.i.i.i.for.body.i.i.i_crit_edge:          ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i.i.i

for.body.i.i.i.nvmet_rdma_free_cmds.exit.i.i_crit_edge: ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %nvmet_rdma_free_cmds.exit.i.i

nvmet_rdma_free_cmds.exit.i.i:                    ; preds = %for.body.i.i.i.nvmet_rdma_free_cmds.exit.i.i_crit_edge, %out_free_cmds.i.i.nvmet_rdma_free_cmds.exit.i.i_crit_edge
  call void @kfree(ptr noundef %129) #14
  br label %out_destroy_srq.i.i

out_destroy_srq.i.i:                              ; preds = %nvmet_rdma_free_cmds.exit.i.i, %if.then13.i.i
  %ret.0.i.i = phi i32 [ %95, %if.then13.i.i ], [ %ret.0.i.i.i, %nvmet_rdma_free_cmds.exit.i.i ]
  %call.i.i.i = call i32 @ib_destroy_srq_user(ptr noundef %call1.i.i.i, ptr noundef null) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool.not.i64.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool.not.i64.i.i, label %out_destroy_srq.i.i.out_free.i.i_crit_edge, label %land.rhs.i.i.i

out_destroy_srq.i.i.out_free.i.i_crit_edge:       ; preds = %out_destroy_srq.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %out_free.i.i

land.rhs.i.i.i:                                   ; preds = %out_destroy_srq.i.i
  %.b38.i.i.i = load i1, ptr @ib_destroy_srq.__already_done, align 1
  br i1 %.b38.i.i.i, label %land.rhs.i.i.i.out_free.i.i_crit_edge, label %if.then.i65.i.i, !prof !306

land.rhs.i.i.i.out_free.i.i_crit_edge:            ; preds = %land.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %out_free.i.i

if.then.i65.i.i:                                  ; preds = %land.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @ib_destroy_srq.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.86, i32 noundef 3688, i32 noundef 9, ptr noundef nonnull @.str.87) #14
  br label %out_free.i.i

out_free.i.i:                                     ; preds = %if.then.i65.i.i, %land.rhs.i.i.i.out_free.i.i_crit_edge, %out_destroy_srq.i.i.out_free.i.i_crit_edge, %if.then7.i.i
  %ret.1.i.i = phi i32 [ %93, %if.then7.i.i ], [ %ret.0.i.i, %out_destroy_srq.i.i.out_free.i.i_crit_edge ], [ %ret.0.i.i, %land.rhs.i.i.i.out_free.i.i_crit_edge ], [ %ret.0.i.i, %if.then.i65.i.i ]
  call void @kfree(ptr noundef nonnull %call7.i.i.i70.i) #14
  %130 = inttoptr i32 %ret.1.i.i to ptr
  br label %nvmet_rdma_init_srq.exit.i

nvmet_rdma_init_srq.exit.i:                       ; preds = %out_free.i.i, %for.cond.i.i.nvmet_rdma_init_srq.exit.i_crit_edge, %if.end16.i.i.nvmet_rdma_init_srq.exit.i_crit_edge, %for.body.i.nvmet_rdma_init_srq.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %130, %out_free.i.i ], [ inttoptr (i32 -12 to ptr), %for.body.i.nvmet_rdma_init_srq.exit.i_crit_edge ], [ %call7.i.i.i70.i, %if.end16.i.i.nvmet_rdma_init_srq.exit.i_crit_edge ], [ %call7.i.i.i70.i, %for.cond.i.i.nvmet_rdma_init_srq.exit.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %srq_attr.i.i) #14
  %131 = ptrtoint ptr %srqs.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %srqs.i, align 8
  %arrayidx.i = getelementptr ptr, ptr %132, i32 %i.077.i
  %133 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %133)
  store ptr %retval.0.i.i, ptr %arrayidx.i, align 4
  %134 = load ptr, ptr %srqs.i, align 8
  %arrayidx29.i = getelementptr ptr, ptr %134, i32 %i.077.i
  %135 = ptrtoint ptr %arrayidx29.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %arrayidx29.i, align 4
  %cmp.i.i = icmp ugt ptr %136, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.then31.i, label %for.inc.i

if.then31.i:                                      ; preds = %nvmet_rdma_init_srq.exit.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.077.i)
  %cmp3679.not.i = icmp eq i32 %i.077.i, 0
  br i1 %cmp3679.not.i, label %if.then31.i.nvmet_rdma_init_srqs.exit_crit_edge, label %if.then31.i.while.body.i_crit_edge

if.then31.i.while.body.i_crit_edge:               ; preds = %if.then31.i
  br label %while.body.i

if.then31.i.nvmet_rdma_init_srqs.exit_crit_edge:  ; preds = %if.then31.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %nvmet_rdma_init_srqs.exit

for.inc.i:                                        ; preds = %nvmet_rdma_init_srq.exit.i
  %inc.i = add nuw nsw i32 %i.077.i, 1
  %137 = ptrtoint ptr %srq_count.i to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load i32, ptr %srq_count.i, align 4
  %cmp25.i = icmp slt i32 %inc.i, %138
  br i1 %cmp25.i, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.if.end63_crit_edge

for.inc.i.if.end63_crit_edge:                     ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end63

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %if.then31.i.while.body.i_crit_edge
  %dec80.in.i = phi i32 [ %dec80.i, %while.body.i.while.body.i_crit_edge ], [ %i.077.i, %if.then31.i.while.body.i_crit_edge ]
  %dec80.i = add nsw i32 %dec80.in.i, -1
  %139 = ptrtoint ptr %srqs.i to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %srqs.i, align 8
  %arrayidx38.i = getelementptr ptr, ptr %140, i32 %dec80.i
  %141 = ptrtoint ptr %arrayidx38.i to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %arrayidx38.i, align 4
  call fastcc void @nvmet_rdma_destroy_srq(ptr noundef %142) #14
  %cmp36.i = icmp sgt i32 %dec80.in.i, 1
  br i1 %cmp36.i, label %while.body.i.while.body.i_crit_edge, label %while.body.i.nvmet_rdma_init_srqs.exit_crit_edge

while.body.i.nvmet_rdma_init_srqs.exit_crit_edge: ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %nvmet_rdma_init_srqs.exit

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.body.i

nvmet_rdma_init_srqs.exit:                        ; preds = %while.body.i.nvmet_rdma_init_srqs.exit_crit_edge, %if.then31.i.nvmet_rdma_init_srqs.exit_crit_edge
  %143 = ptrtoint ptr %srqs.i to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %srqs.i, align 8
  call void @kfree(ptr noundef %144) #14
  br label %out_free_pd

if.end63:                                         ; preds = %for.inc.i.if.end63_crit_edge, %for.cond.preheader.i.if.end63_crit_edge, %do.end.i, %if.end56.if.end63_crit_edge
  %entry64 = getelementptr inbounds %struct.nvmet_rdma_device, ptr %call7.i.i, i32 0, i32 6
  %145 = load ptr, ptr @device_list, align 4
  %call.i.i = call zeroext i1 @__list_add_valid(ptr noundef %entry64, ptr noundef nonnull @device_list, ptr noundef %145) #14
  br i1 %call.i.i, label %if.end.i.i124, label %if.end63.out_unlock_crit_edge

if.end63.out_unlock_crit_edge:                    ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #16
  br label %out_unlock

if.end.i.i124:                                    ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #16
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %145, i32 0, i32 1
  %146 = ptrtoint ptr %prev1.i.i to i32
  call void @__asan_store4_noabort(i32 %146)
  store ptr %entry64, ptr %prev1.i.i, align 4
  %147 = ptrtoint ptr %entry64 to i32
  call void @__asan_store4_noabort(i32 %147)
  store ptr %145, ptr %entry64, align 8
  %prev3.i.i = getelementptr inbounds %struct.nvmet_rdma_device, ptr %call7.i.i, i32 0, i32 6, i32 1
  %148 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %148)
  store ptr @device_list, ptr %prev3.i.i, align 4
  store volatile ptr %entry64, ptr @device_list, align 4
  br label %out_unlock

out_unlock.loopexit:                              ; preds = %kref_get_unless_zero.exit
  call void @__sanitizer_cov_trace_pc() #16
  %ndev.0141.le = getelementptr i8, ptr %.pn140, i32 -24
  br label %out_unlock

out_unlock:                                       ; preds = %out_unlock.loopexit, %if.end.i.i124, %if.end63.out_unlock_crit_edge
  %ndev.1 = phi ptr [ %call7.i.i, %if.end63.out_unlock_crit_edge ], [ %call7.i.i, %if.end.i.i124 ], [ %ndev.0141.le, %out_unlock.loopexit ]
  call void @mutex_unlock(ptr noundef nonnull @device_list_mutex) #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @nvmet_rdma_find_get_device.__UNIQUE_ID_ddebug545, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@nvmet_rdma_find_get_device, %if.then72)) #14
          to label %cleanup [label %if.then72], !srcloc !315

if.then72:                                        ; preds = %out_unlock
  call void @__sanitizer_cov_trace_pc() #16
  %149 = ptrtoint ptr %ndev.1 to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %ndev.1, align 4
  %name74 = getelementptr inbounds %struct.ib_device, ptr %150, i32 0, i32 2
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @nvmet_rdma_find_get_device.__UNIQUE_ID_ddebug545, ptr noundef nonnull @.str.51, ptr noundef %name74) #14
  br label %cleanup

out_free_pd:                                      ; preds = %nvmet_rdma_init_srqs.exit, %if.end7.i.i.i.out_free_pd_crit_edge, %kcalloc.exit.thread.i
  %151 = ptrtoint ptr %pd to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %pd, align 4
  %call.i125 = call i32 @ib_dealloc_pd_user(ptr noundef %152, ptr noundef null) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i125)
  %tobool.not.i126 = icmp eq i32 %call.i125, 0
  br i1 %tobool.not.i126, label %out_free_pd.out_free_dev_crit_edge, label %land.rhs.i

out_free_pd.out_free_dev_crit_edge:               ; preds = %out_free_pd
  call void @__sanitizer_cov_trace_pc() #16
  br label %out_free_dev

land.rhs.i:                                       ; preds = %out_free_pd
  %.b38.i = load i1, ptr @ib_dealloc_pd.__already_done, align 1
  br i1 %.b38.i, label %land.rhs.i.out_free_dev_crit_edge, label %if.then.i, !prof !306

land.rhs.i.out_free_dev_crit_edge:                ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %out_free_dev

if.then.i:                                        ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @ib_dealloc_pd.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.86, i32 noundef 3498, i32 noundef 9, ptr noundef nonnull @.str.88) #14
  br label %out_free_dev

out_free_dev:                                     ; preds = %if.then.i, %land.rhs.i.out_free_dev_crit_edge, %out_free_pd.out_free_dev_crit_edge, %if.end47.out_free_dev_crit_edge
  call void @kfree(ptr noundef nonnull %call7.i.i) #14
  br label %out_err

out_err:                                          ; preds = %out_free_dev, %for.end.out_err_crit_edge
  call void @mutex_unlock(ptr noundef nonnull @device_list_mutex) #14
  br label %cleanup

cleanup:                                          ; preds = %out_err, %if.then72, %out_unlock
  %retval.0 = phi ptr [ null, %out_err ], [ %ndev.1, %if.then72 ], [ %ndev.1, %out_unlock ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @nvmet_rdma_alloc_queue(ptr noundef %ndev, ptr noundef %cm_id, ptr nocapture noundef readonly %event) unnamed_addr #3 align 64 {
entry:
  %rej.i = alloca %struct.nvme_rdma_cm_rej, align 2
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %context = getelementptr inbounds %struct.rdma_cm_id, ptr %cm_id, i32 0, i32 1
  %0 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %context, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 408) #18
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.out_reject_crit_edge, label %if.end

entry.out_reject_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %out_reject

if.end:                                           ; preds = %entry
  %nvme_sq = getelementptr inbounds %struct.nvmet_rdma_queue, ptr %call7.i.i, i32 0, i32 10
  %call1 = tail call i32 @nvmet_sq_init(ptr noundef %nvme_sq) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end4, label %if.end.out_free_queue_crit_edge

if.end.out_free_queue_crit_edge:                  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %out_free_queue

if.end4:                                          ; preds = %if.end
  %param = getelementptr inbounds %struct.rdma_cm_event, ptr %event, i32 0, i32 2
  %3 = ptrtoint ptr %param to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %param, align 4
  %tobool.not.i = icmp eq ptr %4, null
  br i1 %tobool.not.i, label %if.end4.out_destroy_sq_crit_edge, label %lor.lhs.false.i

if.end4.out_destroy_sq_crit_edge:                 ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #16
  br label %out_destroy_sq

lor.lhs.false.i:                                  ; preds = %if.end4
  %private_data_len.i = getelementptr inbounds %struct.rdma_cm_event, ptr %event, i32 0, i32 2, i32 0, i32 1
  %5 = ptrtoint ptr %private_data_len.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %private_data_len.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %cmp.i = icmp eq i8 %6, 0
  br i1 %cmp.i, label %lor.lhs.false.i.out_destroy_sq_crit_edge, label %if.end.i

lor.lhs.false.i.out_destroy_sq_crit_edge:         ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %out_destroy_sq

if.end.i:                                         ; preds = %lor.lhs.false.i
  %7 = ptrtoint ptr %4 to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %4, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %8)
  %cmp3.not.i = icmp eq i16 %8, 0
  br i1 %cmp3.not.i, label %if.end6.i, label %if.end.i.out_destroy_sq_crit_edge

if.end.i.out_destroy_sq_crit_edge:                ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %out_destroy_sq

if.end6.i:                                        ; preds = %if.end.i
  %qid.i = getelementptr inbounds %struct.nvme_rdma_cm_req, ptr %4, i32 0, i32 1
  %9 = ptrtoint ptr %qid.i to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %qid.i, align 2
  %11 = tail call i16 @llvm.bswap.i16(i16 %10) #14
  %conv7.i = zext i16 %11 to i32
  %host_qid.i = getelementptr inbounds %struct.nvmet_rdma_queue, ptr %call7.i.i, i32 0, i32 20
  %12 = ptrtoint ptr %host_qid.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %conv7.i, ptr %host_qid.i, align 8
  %hsqsize.i = getelementptr inbounds %struct.nvme_rdma_cm_req, ptr %4, i32 0, i32 3
  %13 = ptrtoint ptr %hsqsize.i to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %hsqsize.i, align 2
  %15 = tail call i16 @llvm.bswap.i16(i16 %14) #14
  %conv8.i = zext i16 %15 to i32
  %add.i = add nuw nsw i32 %conv8.i, 1
  %recv_queue_size.i = getelementptr inbounds %struct.nvmet_rdma_queue, ptr %call7.i.i, i32 0, i32 22
  %16 = ptrtoint ptr %recv_queue_size.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %add.i, ptr %recv_queue_size.i, align 8
  %hrqsize.i = getelementptr inbounds %struct.nvme_rdma_cm_req, ptr %4, i32 0, i32 2
  %17 = ptrtoint ptr %hrqsize.i to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %hrqsize.i, align 2
  %19 = tail call i16 @llvm.bswap.i16(i16 %18) #14
  %conv9.i = zext i16 %19 to i32
  %send_queue_size.i = getelementptr inbounds %struct.nvmet_rdma_queue, ptr %call7.i.i, i32 0, i32 23
  %20 = ptrtoint ptr %send_queue_size.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %conv9.i, ptr %send_queue_size.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %10)
  %tobool11.not.i = icmp eq i16 %10, 0
  call void @__sanitizer_cov_trace_const_cmp2(i16 31, i16 %15)
  %cmp13.i = icmp ugt i16 %15, 31
  %or.cond.i = select i1 %tobool11.not.i, i1 %cmp13.i, i1 false
  br i1 %or.cond.i, label %if.end6.i.out_destroy_sq_crit_edge, label %do.body

if.end6.i.out_destroy_sq_crit_edge:               ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %out_destroy_sq

do.body:                                          ; preds = %if.end6.i
  %release_work = getelementptr inbounds %struct.nvmet_rdma_queue, ptr %call7.i.i, i32 0, i32 15
  tail call void @__init_work(ptr noundef %release_work, i32 noundef 0) #14
  %21 = ptrtoint ptr %release_work to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 -64, ptr %release_work, align 4
  %lockdep_map = getelementptr inbounds %struct.nvmet_rdma_queue, ptr %call7.i.i, i32 0, i32 15, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.101, ptr noundef nonnull @nvmet_rdma_alloc_queue.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #14
  %entry12 = getelementptr inbounds %struct.nvmet_rdma_queue, ptr %call7.i.i, i32 0, i32 15, i32 1
  %22 = ptrtoint ptr %entry12 to i32
  call void @__asan_store4_noabort(i32 %22)
  store volatile ptr %entry12, ptr %entry12, align 8
  %prev.i = getelementptr inbounds %struct.nvmet_rdma_queue, ptr %call7.i.i, i32 0, i32 15, i32 1, i32 1
  %23 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %entry12, ptr %prev.i, align 4
  %func = getelementptr inbounds %struct.nvmet_rdma_queue, ptr %call7.i.i, i32 0, i32 15, i32 2
  %24 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr @nvmet_rdma_release_queue_work, ptr %func, align 8
  %dev = getelementptr inbounds %struct.nvmet_rdma_queue, ptr %call7.i.i, i32 0, i32 5
  %25 = ptrtoint ptr %dev to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %ndev, ptr %dev, align 4
  %26 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %cm_id, ptr %call7.i.i, align 8
  %27 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %1, align 4
  %port15 = getelementptr inbounds %struct.nvmet_rdma_queue, ptr %call7.i.i, i32 0, i32 2
  %29 = ptrtoint ptr %port15 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %28, ptr %port15, align 8
  %state_lock = getelementptr inbounds %struct.nvmet_rdma_queue, ptr %call7.i.i, i32 0, i32 7
  tail call void @__raw_spin_lock_init(ptr noundef %state_lock, ptr noundef nonnull @.str.103, ptr noundef nonnull @nvmet_rdma_alloc_queue.__key.102, i16 noundef signext 3) #14
  %state = getelementptr inbounds %struct.nvmet_rdma_queue, ptr %call7.i.i, i32 0, i32 8
  %30 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 0, ptr %state, align 8
  %rsp_wait_list = getelementptr inbounds %struct.nvmet_rdma_queue, ptr %call7.i.i, i32 0, i32 16
  %31 = ptrtoint ptr %rsp_wait_list to i32
  call void @__asan_store4_noabort(i32 %31)
  store volatile ptr %rsp_wait_list, ptr %rsp_wait_list, align 8
  %prev.i127 = getelementptr inbounds %struct.nvmet_rdma_queue, ptr %call7.i.i, i32 0, i32 16, i32 1
  %32 = ptrtoint ptr %prev.i127 to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %rsp_wait_list, ptr %prev.i127, align 4
  %rsp_wr_wait_list = getelementptr inbounds %struct.nvmet_rdma_queue, ptr %call7.i.i, i32 0, i32 17
  %33 = ptrtoint ptr %rsp_wr_wait_list to i32
  call void @__asan_store4_noabort(i32 %33)
  store volatile ptr %rsp_wr_wait_list, ptr %rsp_wr_wait_list, align 8
  %prev.i128 = getelementptr inbounds %struct.nvmet_rdma_queue, ptr %call7.i.i, i32 0, i32 17, i32 1
  %34 = ptrtoint ptr %prev.i128 to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %rsp_wr_wait_list, ptr %prev.i128, align 4
  %rsp_wr_wait_lock = getelementptr inbounds %struct.nvmet_rdma_queue, ptr %call7.i.i, i32 0, i32 18
  tail call void @__raw_spin_lock_init(ptr noundef %rsp_wr_wait_lock, ptr noundef nonnull @.str.105, ptr noundef nonnull @nvmet_rdma_alloc_queue.__key.104, i16 noundef signext 3) #14
  %free_rsps = getelementptr inbounds %struct.nvmet_rdma_queue, ptr %call7.i.i, i32 0, i32 12
  %35 = ptrtoint ptr %free_rsps to i32
  call void @__asan_store4_noabort(i32 %35)
  store volatile ptr %free_rsps, ptr %free_rsps, align 4
  %prev.i129 = getelementptr inbounds %struct.nvmet_rdma_queue, ptr %call7.i.i, i32 0, i32 12, i32 1
  %36 = ptrtoint ptr %prev.i129 to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %free_rsps, ptr %prev.i129, align 8
  %rsps_lock = getelementptr inbounds %struct.nvmet_rdma_queue, ptr %call7.i.i, i32 0, i32 13
  tail call void @__raw_spin_lock_init(ptr noundef %rsps_lock, ptr noundef nonnull @.str.107, ptr noundef nonnull @nvmet_rdma_alloc_queue.__key.106, i16 noundef signext 3) #14
  %queue_list = getelementptr inbounds %struct.nvmet_rdma_queue, ptr %call7.i.i, i32 0, i32 24
  %37 = ptrtoint ptr %queue_list to i32
  call void @__asan_store4_noabort(i32 %37)
  store volatile ptr %queue_list, ptr %queue_list, align 8
  %prev.i130 = getelementptr inbounds %struct.nvmet_rdma_queue, ptr %call7.i.i, i32 0, i32 24, i32 1
  %38 = ptrtoint ptr %prev.i130 to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %queue_list, ptr %prev.i130, align 4
  %call28 = tail call i32 @ida_alloc_range(ptr noundef nonnull @nvmet_rdma_queue_ida, i32 noundef 0, i32 noundef -1, i32 noundef 3264) #14
  %idx = getelementptr inbounds %struct.nvmet_rdma_queue, ptr %call7.i.i, i32 0, i32 19
  %39 = ptrtoint ptr %idx to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %call28, ptr %idx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28)
  %cmp = icmp slt i32 %call28, 0
  br i1 %cmp, label %do.body.out_destroy_sq_crit_edge, label %if.end31

do.body.out_destroy_sq_crit_edge:                 ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %out_destroy_sq

if.end31:                                         ; preds = %do.body
  %40 = ptrtoint ptr %host_qid.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %host_qid.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %41)
  %tobool32.not = icmp eq i32 %41, 0
  br i1 %tobool32.not, label %if.end31.cond.end_crit_edge, label %cond.false

if.end31.cond.end_crit_edge:                      ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #16
  br label %cond.end

cond.false:                                       ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #16
  %42 = ptrtoint ptr %ndev to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %ndev, align 4
  %num_comp_vectors = getelementptr inbounds %struct.ib_device, ptr %43, i32 0, i32 12
  %44 = ptrtoint ptr %num_comp_vectors to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %num_comp_vectors, align 4
  %rem = srem i32 %call28, %45
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %if.end31.cond.end_crit_edge
  %cond = phi i32 [ %rem, %cond.false ], [ 0, %if.end31.cond.end_crit_edge ]
  %comp_vector = getelementptr inbounds %struct.nvmet_rdma_queue, ptr %call7.i.i, i32 0, i32 21
  %46 = ptrtoint ptr %comp_vector to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %cond, ptr %comp_vector, align 4
  %47 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %dev, align 4
  %49 = ptrtoint ptr %recv_queue_size.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %recv_queue_size.i, align 8
  %mul.i = shl i32 %50, 1
  %51 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %mul.i, i32 528) #14
  %52 = extractvalue { i32, i1 } %51, 1
  br i1 %52, label %kcalloc.exit.thread.i, label %if.end7.i.i.i, !prof !307

kcalloc.exit.thread.i:                            ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #16
  %rsps38.i = getelementptr inbounds %struct.nvmet_rdma_queue, ptr %call7.i.i, i32 0, i32 11
  %53 = ptrtoint ptr %rsps38.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr null, ptr %rsps38.i, align 8
  br label %out_ida_remove

if.end7.i.i.i:                                    ; preds = %cond.end
  %54 = extractvalue { i32, i1 } %51, 0
  %call8.i.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %54, i32 noundef 3520) #20
  %rsps.i = getelementptr inbounds %struct.nvmet_rdma_queue, ptr %call7.i.i, i32 0, i32 11
  %55 = ptrtoint ptr %rsps.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %call8.i.i.i, ptr %rsps.i, align 8
  %tobool.not.i132 = icmp eq ptr %call8.i.i.i, null
  br i1 %tobool.not.i132, label %if.end7.i.i.i.out_ida_remove_crit_edge, label %for.cond.preheader.i

if.end7.i.i.i.out_ida_remove_crit_edge:           ; preds = %if.end7.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %out_ida_remove

for.cond.preheader.i:                             ; preds = %if.end7.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mul.i)
  %cmp42.not.i = icmp eq i32 %mul.i, 0
  br i1 %cmp42.not.i, label %for.cond.preheader.i.if.end37_crit_edge, label %for.cond.preheader.i.for.body.i_crit_edge

for.cond.preheader.i.for.body.i_crit_edge:        ; preds = %for.cond.preheader.i
  br label %for.body.i

for.cond.preheader.i.if.end37_crit_edge:          ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end37

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.cond.preheader.i.for.body.i_crit_edge
  %i.043.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %for.cond.preheader.i.for.body.i_crit_edge ]
  %56 = ptrtoint ptr %rsps.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %rsps.i, align 8
  %arrayidx.i = getelementptr %struct.nvmet_rdma_rsp, ptr %57, i32 %i.043.i
  %call3.i = tail call fastcc i32 @nvmet_rdma_alloc_rsp(ptr noundef %48, ptr noundef %arrayidx.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool4.not.i = icmp eq i32 %call3.i, 0
  br i1 %tobool4.not.i, label %if.end6.i133, label %while.cond.preheader.i

while.cond.preheader.i:                           ; preds = %for.body.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.043.i)
  %cmp746.not.i = icmp eq i32 %i.043.i, 0
  br i1 %cmp746.not.i, label %nvmet_rdma_alloc_rsps.exit.thread144, label %while.cond.preheader.i.while.body.i_crit_edge

while.cond.preheader.i.while.body.i_crit_edge:    ; preds = %while.cond.preheader.i
  br label %while.body.i

nvmet_rdma_alloc_rsps.exit.thread144:             ; preds = %while.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #16
  %58 = ptrtoint ptr %rsps.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %rsps.i, align 8
  tail call void @kfree(ptr noundef %59) #14
  br label %out_ida_remove

if.end6.i133:                                     ; preds = %for.body.i
  %free_list.i = getelementptr %struct.nvmet_rdma_rsp, ptr %57, i32 %i.043.i, i32 14
  %60 = ptrtoint ptr %prev.i129 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %prev.i129, align 8
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %free_list.i, ptr noundef %61, ptr noundef %free_rsps) #14
  br i1 %call.i.i.i, label %if.end.i.i33.i, label %if.end6.i133.for.inc.i_crit_edge

if.end6.i133.for.inc.i_crit_edge:                 ; preds = %if.end6.i133
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.i

if.end.i.i33.i:                                   ; preds = %if.end6.i133
  call void @__sanitizer_cov_trace_pc() #16
  %62 = ptrtoint ptr %prev.i129 to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr %free_list.i, ptr %prev.i129, align 8
  %63 = ptrtoint ptr %free_list.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr %free_rsps, ptr %free_list.i, align 4
  %prev3.i.i.i = getelementptr %struct.nvmet_rdma_rsp, ptr %57, i32 %i.043.i, i32 14, i32 1
  %64 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr %61, ptr %prev3.i.i.i, align 4
  %65 = ptrtoint ptr %61 to i32
  call void @__asan_store4_noabort(i32 %65)
  store volatile ptr %free_list.i, ptr %61, align 4
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.end.i.i33.i, %if.end6.i133.for.inc.i_crit_edge
  %inc.i = add nuw nsw i32 %i.043.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %mul.i
  br i1 %exitcond.not.i, label %for.inc.i.if.end37_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i

for.inc.i.if.end37_crit_edge:                     ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end37

while.body.i:                                     ; preds = %list_del.exit.i.while.body.i_crit_edge, %while.cond.preheader.i.while.body.i_crit_edge
  %dec47.in.i = phi i32 [ %dec47.i, %list_del.exit.i.while.body.i_crit_edge ], [ %i.043.i, %while.cond.preheader.i.while.body.i_crit_edge ]
  %dec47.i = add nsw i32 %dec47.in.i, -1
  %66 = ptrtoint ptr %rsps.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %rsps.i, align 8
  %arrayidx10.i = getelementptr %struct.nvmet_rdma_rsp, ptr %67, i32 %dec47.i
  %free_list11.i = getelementptr %struct.nvmet_rdma_rsp, ptr %67, i32 %dec47.i, i32 14
  %call.i.i34.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %free_list11.i) #14
  br i1 %call.i.i34.i, label %if.end.i.i35.i, label %while.body.i.list_del.exit.i_crit_edge

while.body.i.list_del.exit.i_crit_edge:           ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %list_del.exit.i

if.end.i.i35.i:                                   ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #16
  %prev.i.i.i = getelementptr %struct.nvmet_rdma_rsp, ptr %67, i32 %dec47.i, i32 14, i32 1
  %68 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %prev.i.i.i, align 4
  %70 = ptrtoint ptr %free_list11.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %free_list11.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %71, i32 0, i32 1
  %72 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %72)
  store ptr %69, ptr %prev1.i.i.i.i, align 4
  %73 = ptrtoint ptr %69 to i32
  call void @__asan_store4_noabort(i32 %73)
  store volatile ptr %71, ptr %69, align 4
  br label %list_del.exit.i

list_del.exit.i:                                  ; preds = %if.end.i.i35.i, %while.body.i.list_del.exit.i_crit_edge
  %74 = ptrtoint ptr %free_list11.i to i32
  call void @__asan_store4_noabort(i32 %74)
  store ptr inttoptr (i32 256 to ptr), ptr %free_list11.i, align 4
  %prev.i36.i = getelementptr %struct.nvmet_rdma_rsp, ptr %67, i32 %dec47.i, i32 14, i32 1
  %75 = ptrtoint ptr %prev.i36.i to i32
  call void @__asan_store4_noabort(i32 %75)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i36.i, align 4
  %76 = ptrtoint ptr %48 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %48, align 4
  %78 = ptrtoint ptr %arrayidx10.i to i32
  call void @__asan_load8_noabort(i32 %78)
  %79 = load i64, ptr %arrayidx10.i, align 8
  %80 = ptrtoint ptr %77 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %77, align 8
  %conv.i.i.i = trunc i64 %79 to i32
  tail call void @dma_unmap_page_attrs(ptr noundef %81, i32 noundef %conv.i.i.i, i32 noundef 16, i32 noundef 1, i32 noundef 0) #14
  %cqe.i.i = getelementptr %struct.nvmet_rdma_rsp, ptr %67, i32 %dec47.i, i32 8, i32 1
  %82 = ptrtoint ptr %cqe.i.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %cqe.i.i, align 4
  tail call void @kfree(ptr noundef %83) #14
  %cmp7.i = icmp sgt i32 %dec47.in.i, 1
  br i1 %cmp7.i, label %list_del.exit.i.while.body.i_crit_edge, label %nvmet_rdma_alloc_rsps.exit

list_del.exit.i.while.body.i_crit_edge:           ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.body.i

nvmet_rdma_alloc_rsps.exit:                       ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  %84 = ptrtoint ptr %rsps.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %rsps.i, align 8
  tail call void @kfree(ptr noundef %85) #14
  br label %out_ida_remove

if.end37:                                         ; preds = %for.inc.i.if.end37_crit_edge, %for.cond.preheader.i.if.end37_crit_edge
  %srqs = getelementptr inbounds %struct.nvmet_rdma_device, ptr %ndev, i32 0, i32 2
  %86 = ptrtoint ptr %srqs to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %srqs, align 4
  %tobool38.not = icmp eq ptr %87, null
  br i1 %tobool38.not, label %if.else, label %if.then39

if.then39:                                        ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #16
  %88 = ptrtoint ptr %comp_vector to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %comp_vector, align 4
  %srq_count = getelementptr inbounds %struct.nvmet_rdma_device, ptr %ndev, i32 0, i32 3
  %90 = ptrtoint ptr %srq_count to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %srq_count, align 4
  %rem42 = srem i32 %89, %91
  %arrayidx = getelementptr ptr, ptr %87, i32 %rem42
  %92 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %arrayidx, align 4
  %nsrq = getelementptr inbounds %struct.nvmet_rdma_queue, ptr %call7.i.i, i32 0, i32 6
  %94 = ptrtoint ptr %nsrq to i32
  call void @__asan_store4_noabort(i32 %94)
  store ptr %93, ptr %nsrq, align 8
  br label %if.end50

if.else:                                          ; preds = %if.end37
  %95 = ptrtoint ptr %recv_queue_size.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %recv_queue_size.i, align 8
  %97 = ptrtoint ptr %host_qid.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %host_qid.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %98)
  %tobool44.not = icmp eq i32 %98, 0
  %call45 = tail call fastcc ptr @nvmet_rdma_alloc_cmds(ptr noundef %ndev, i32 noundef %96, i1 noundef zeroext %tobool44.not)
  %cmds = getelementptr inbounds %struct.nvmet_rdma_queue, ptr %call7.i.i, i32 0, i32 14
  %99 = ptrtoint ptr %cmds to i32
  call void @__asan_store4_noabort(i32 %99)
  store ptr %call45, ptr %cmds, align 8
  %cmp.i135 = icmp ugt ptr %call45, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i135, label %if.else.out_free_responses_crit_edge, label %if.else.if.end50_crit_edge

if.else.if.end50_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end50

if.else.out_free_responses_crit_edge:             ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #16
  br label %out_free_responses

if.end50:                                         ; preds = %if.else.if.end50_crit_edge, %if.then39
  %call51 = tail call fastcc i32 @nvmet_rdma_create_queue_ib(ptr noundef nonnull %call7.i.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call51)
  %tobool52.not = icmp eq i32 %call51, 0
  br i1 %tobool52.not, label %if.end50.cleanup_crit_edge, label %do.end56

if.end50.cleanup_crit_edge:                       ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

do.end56:                                         ; preds = %if.end50
  %call57 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.108, ptr noundef nonnull @.str.109, i32 noundef %call51) #17
  %nsrq59 = getelementptr inbounds %struct.nvmet_rdma_queue, ptr %call7.i.i, i32 0, i32 6
  %100 = ptrtoint ptr %nsrq59 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %nsrq59, align 8
  %tobool60.not = icmp eq ptr %101, null
  br i1 %tobool60.not, label %if.then61, label %do.end56.out_free_responses_crit_edge

do.end56.out_free_responses_crit_edge:            ; preds = %do.end56
  call void @__sanitizer_cov_trace_pc() #16
  br label %out_free_responses

if.then61:                                        ; preds = %do.end56
  call void @__sanitizer_cov_trace_pc() #16
  %102 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %dev, align 4
  %cmds63 = getelementptr inbounds %struct.nvmet_rdma_queue, ptr %call7.i.i, i32 0, i32 14
  %104 = ptrtoint ptr %cmds63 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %cmds63, align 8
  %106 = ptrtoint ptr %recv_queue_size.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %recv_queue_size.i, align 8
  %108 = ptrtoint ptr %host_qid.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %host_qid.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %109)
  %tobool66.not = icmp eq i32 %109, 0
  tail call fastcc void @nvmet_rdma_free_cmds(ptr noundef %103, ptr noundef %105, i32 noundef %107, i1 noundef zeroext %tobool66.not)
  br label %out_free_responses

out_free_responses:                               ; preds = %if.then61, %do.end56.out_free_responses_crit_edge, %if.else.out_free_responses_crit_edge
  tail call fastcc void @nvmet_rdma_free_rsps(ptr noundef nonnull %call7.i.i)
  br label %out_ida_remove

out_ida_remove:                                   ; preds = %out_free_responses, %nvmet_rdma_alloc_rsps.exit, %nvmet_rdma_alloc_rsps.exit.thread144, %if.end7.i.i.i.out_ida_remove_crit_edge, %kcalloc.exit.thread.i
  %110 = ptrtoint ptr %idx to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %idx, align 4
  tail call void @ida_free(ptr noundef nonnull @nvmet_rdma_queue_ida, i32 noundef %111) #14
  br label %out_destroy_sq

out_destroy_sq:                                   ; preds = %out_ida_remove, %do.body.out_destroy_sq_crit_edge, %if.end6.i.out_destroy_sq_crit_edge, %if.end.i.out_destroy_sq_crit_edge, %lor.lhs.false.i.out_destroy_sq_crit_edge, %if.end4.out_destroy_sq_crit_edge
  %ret.2 = phi i32 [ 6, %out_ida_remove ], [ 6, %do.body.out_destroy_sq_crit_edge ], [ 2, %if.end.i.out_destroy_sq_crit_edge ], [ 1, %if.end4.out_destroy_sq_crit_edge ], [ 1, %lor.lhs.false.i.out_destroy_sq_crit_edge ], [ 4, %if.end6.i.out_destroy_sq_crit_edge ]
  tail call void @nvmet_sq_destroy(ptr noundef %nvme_sq) #14
  br label %out_free_queue

out_free_queue:                                   ; preds = %out_destroy_sq, %if.end.out_free_queue_crit_edge
  %ret.3 = phi i32 [ %ret.2, %out_destroy_sq ], [ 6, %if.end.out_free_queue_crit_edge ]
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #14
  br label %out_reject

out_reject:                                       ; preds = %out_free_queue, %entry.out_reject_crit_edge
  %ret.4 = phi i32 [ %ret.3, %out_free_queue ], [ 6, %entry.out_reject_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rej.i) #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @nvmet_rdma_cm_reject.__UNIQUE_ID_ddebug550, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@nvmet_rdma_alloc_queue, %if.then.i)) #14
          to label %nvmet_rdma_cm_reject.exit [label %if.then.i], !srcloc !315

if.then.i:                                        ; preds = %out_reject
  %switch.tableidx = add nsw i32 %ret.4, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %switch.tableidx)
  %112 = icmp ult i32 %switch.tableidx, 6
  br i1 %112, label %switch.lookup, label %if.then.i.nvme_rdma_cm_msg.exit.i_crit_edge

if.then.i.nvme_rdma_cm_msg.exit.i_crit_edge:      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %nvme_rdma_cm_msg.exit.i

switch.lookup:                                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #16
  %switch.gep = getelementptr inbounds [6 x ptr], ptr @switch.table.nvmet_rdma_alloc_queue, i32 0, i32 %switch.tableidx
  %113 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %113)
  %switch.load = load ptr, ptr %switch.gep, align 4
  br label %nvme_rdma_cm_msg.exit.i

nvme_rdma_cm_msg.exit.i:                          ; preds = %switch.lookup, %if.then.i.nvme_rdma_cm_msg.exit.i_crit_edge
  %retval.0.i1.i = phi ptr [ %switch.load, %switch.lookup ], [ @.str.100, %if.then.i.nvme_rdma_cm_msg.exit.i_crit_edge ]
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @nvmet_rdma_cm_reject.__UNIQUE_ID_ddebug550, ptr noundef nonnull @.str.91, i32 noundef %ret.4, ptr noundef nonnull %retval.0.i1.i) #14
  br label %nvmet_rdma_cm_reject.exit

nvmet_rdma_cm_reject.exit:                        ; preds = %nvme_rdma_cm_msg.exit.i, %out_reject
  %114 = getelementptr inbounds %struct.nvme_rdma_cm_rej, ptr %rej.i, i32 0, i32 1
  %115 = ptrtoint ptr %rej.i to i32
  call void @__asan_store2_noabort(i32 %115)
  store i16 0, ptr %rej.i, align 2
  %conv.i = trunc i32 %ret.4 to i16
  %116 = tail call i16 @llvm.bswap.i16(i16 %conv.i) #14
  %117 = ptrtoint ptr %114 to i32
  call void @__asan_store2_noabort(i32 %117)
  store i16 %116, ptr %114, align 2
  %call4.i = call i32 @rdma_reject(ptr noundef %cm_id, ptr noundef nonnull %rej.i, i8 noundef zeroext 4, i8 noundef zeroext 28) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rej.i) #14
  br label %cleanup

cleanup:                                          ; preds = %nvmet_rdma_cm_reject.exit, %if.end50.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %nvmet_rdma_cm_reject.exit ], [ %call7.i.i, %if.end50.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @nvmet_rdma_free_queue(ptr noundef %queue) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @nvmet_rdma_free_queue.__UNIQUE_ID_ddebug549, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@nvmet_rdma_free_queue, %if.then)) #14
          to label %do.end [label %if.then], !srcloc !315

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %idx = getelementptr inbounds %struct.nvmet_rdma_queue, ptr %queue, i32 0, i32 19
  %0 = ptrtoint ptr %idx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %idx, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @nvmet_rdma_free_queue.__UNIQUE_ID_ddebug549, ptr noundef nonnull @.str.125, i32 noundef %1) #14
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %nvme_sq = getelementptr inbounds %struct.nvmet_rdma_queue, ptr %queue, i32 0, i32 10
  tail call void @nvmet_sq_destroy(ptr noundef %nvme_sq) #14
  %qp.i = getelementptr inbounds %struct.nvmet_rdma_queue, ptr %queue, i32 0, i32 1
  %2 = ptrtoint ptr %qp.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %qp.i, align 4
  tail call void @ib_drain_qp(ptr noundef %3) #14
  %4 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %queue, align 4
  %tobool.not.i = icmp eq ptr %5, null
  br i1 %tobool.not.i, label %do.end.nvmet_rdma_destroy_queue_ib.exit_crit_edge, label %if.then.i

do.end.nvmet_rdma_destroy_queue_ib.exit_crit_edge: ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %nvmet_rdma_destroy_queue_ib.exit

if.then.i:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @rdma_destroy_id(ptr noundef nonnull %5) #14
  br label %nvmet_rdma_destroy_queue_ib.exit

nvmet_rdma_destroy_queue_ib.exit:                 ; preds = %if.then.i, %do.end.nvmet_rdma_destroy_queue_ib.exit_crit_edge
  %6 = ptrtoint ptr %qp.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %qp.i, align 4
  %call.i.i = tail call i32 @ib_destroy_qp_user(ptr noundef %7, ptr noundef null) #14
  %cq.i = getelementptr inbounds %struct.nvmet_rdma_queue, ptr %queue, i32 0, i32 3
  %8 = ptrtoint ptr %cq.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %cq.i, align 4
  %recv_queue_size.i = getelementptr inbounds %struct.nvmet_rdma_queue, ptr %queue, i32 0, i32 22
  %10 = ptrtoint ptr %recv_queue_size.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %recv_queue_size.i, align 4
  %send_queue_size.i = getelementptr inbounds %struct.nvmet_rdma_queue, ptr %queue, i32 0, i32 23
  %12 = ptrtoint ptr %send_queue_size.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %send_queue_size.i, align 4
  %mul.i = shl i32 %13, 1
  %add.i = add i32 %11, 1
  %add3.i = add i32 %add.i, %mul.i
  tail call void @ib_cq_pool_put(ptr noundef %9, i32 noundef %add3.i) #14
  %nsrq = getelementptr inbounds %struct.nvmet_rdma_queue, ptr %queue, i32 0, i32 6
  %14 = ptrtoint ptr %nsrq to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %nsrq, align 4
  %tobool3.not = icmp eq ptr %15, null
  br i1 %tobool3.not, label %if.then4, label %nvmet_rdma_destroy_queue_ib.exit.if.end8_crit_edge

nvmet_rdma_destroy_queue_ib.exit.if.end8_crit_edge: ; preds = %nvmet_rdma_destroy_queue_ib.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end8

if.then4:                                         ; preds = %nvmet_rdma_destroy_queue_ib.exit
  %dev = getelementptr inbounds %struct.nvmet_rdma_queue, ptr %queue, i32 0, i32 5
  %16 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev, align 4
  %cmds = getelementptr inbounds %struct.nvmet_rdma_queue, ptr %queue, i32 0, i32 14
  %18 = ptrtoint ptr %cmds to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %cmds, align 4
  %20 = ptrtoint ptr %recv_queue_size.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %recv_queue_size.i, align 4
  %host_qid = getelementptr inbounds %struct.nvmet_rdma_queue, ptr %queue, i32 0, i32 20
  %22 = ptrtoint ptr %host_qid to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %host_qid, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool5.not = icmp eq i32 %23, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %cmp4.i = icmp sgt i32 %21, 0
  br i1 %cmp4.i, label %if.then4.for.body.i_crit_edge, label %if.then4.nvmet_rdma_free_cmds.exit_crit_edge

if.then4.nvmet_rdma_free_cmds.exit_crit_edge:     ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #16
  br label %nvmet_rdma_free_cmds.exit

if.then4.for.body.i_crit_edge:                    ; preds = %if.then4
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.then4.for.body.i_crit_edge
  %i.05.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %if.then4.for.body.i_crit_edge ]
  %add.ptr.i = getelementptr %struct.nvmet_rdma_cmd, ptr %19, i32 %i.05.i
  tail call fastcc void @nvmet_rdma_free_cmd(ptr noundef %17, ptr noundef %add.ptr.i, i1 noundef zeroext %tobool5.not) #14
  %inc.i = add nuw nsw i32 %i.05.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %21
  br i1 %exitcond.not.i, label %for.body.i.nvmet_rdma_free_cmds.exit_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i

for.body.i.nvmet_rdma_free_cmds.exit_crit_edge:   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %nvmet_rdma_free_cmds.exit

nvmet_rdma_free_cmds.exit:                        ; preds = %for.body.i.nvmet_rdma_free_cmds.exit_crit_edge, %if.then4.nvmet_rdma_free_cmds.exit_crit_edge
  tail call void @kfree(ptr noundef %19) #14
  br label %if.end8

if.end8:                                          ; preds = %nvmet_rdma_free_cmds.exit, %nvmet_rdma_destroy_queue_ib.exit.if.end8_crit_edge
  tail call fastcc void @nvmet_rdma_free_rsps(ptr noundef %queue)
  %idx9 = getelementptr inbounds %struct.nvmet_rdma_queue, ptr %queue, i32 0, i32 19
  %24 = ptrtoint ptr %idx9 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %idx9, align 4
  tail call void @ida_free(ptr noundef nonnull @nvmet_rdma_queue_ida, i32 noundef %25) #14
  tail call void @kfree(ptr noundef %queue) #14
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @kref_put(ptr noundef %kref) unnamed_addr #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %kref, i32 noundef 4) #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !322
  tail call void @llvm.prefetch.p0(ptr %kref, i32 1, i32 3, i32 1) #14
  %0 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %kref, ptr %kref, i32 1, ptr elementtype(i32) %kref) #14, !srcloc !323
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i)
  %cmp.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i, label %if.then, label %if.end5.i.i.i

if.end5.i.i.i:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %.not.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i, label %if.end5.i.i.i.return_crit_edge, label %if.then10.i.i.i, !prof !306

if.end5.i.i.i.return_crit_edge:                   ; preds = %if.end5.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %return

if.then10.i.i.i:                                  ; preds = %if.end5.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @refcount_warn_saturate(ptr noundef %kref, i32 noundef 3) #14
  br label %return

if.then:                                          ; preds = %entry
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !324
  tail call void @mutex_lock_nested(ptr noundef nonnull @device_list_mutex, i32 noundef 0) #14
  %entry1.i = getelementptr i8, ptr %kref, i32 4
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %entry1.i) #14
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.then.list_del.exit.i_crit_edge

if.then.list_del.exit.i_crit_edge:                ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  br label %list_del.exit.i

if.end.i.i.i:                                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  %prev.i.i.i = getelementptr i8, ptr %kref, i32 8
  %1 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %prev.i.i.i, align 4
  %3 = ptrtoint ptr %entry1.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %entry1.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %2, ptr %prev1.i.i.i.i, align 4
  %6 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %6)
  store volatile ptr %4, ptr %2, align 4
  br label %list_del.exit.i

list_del.exit.i:                                  ; preds = %if.end.i.i.i, %if.then.list_del.exit.i_crit_edge
  %7 = ptrtoint ptr %entry1.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr inttoptr (i32 256 to ptr), ptr %entry1.i, align 4
  %prev.i.i = getelementptr i8, ptr %kref, i32 8
  %8 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  tail call void @mutex_unlock(ptr noundef nonnull @device_list_mutex) #14
  %srqs.i.i = getelementptr i8, ptr %kref, i32 -12
  %9 = ptrtoint ptr %srqs.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %srqs.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %10, null
  br i1 %tobool.not.i.i, label %list_del.exit.i.nvmet_rdma_destroy_srqs.exit.i_crit_edge, label %for.cond.preheader.i.i

list_del.exit.i.nvmet_rdma_destroy_srqs.exit.i_crit_edge: ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %nvmet_rdma_destroy_srqs.exit.i

for.cond.preheader.i.i:                           ; preds = %list_del.exit.i
  %srq_count.i.i = getelementptr i8, ptr %kref, i32 -8
  %11 = ptrtoint ptr %srq_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %srq_count.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %cmp8.i.i = icmp sgt i32 %12, 0
  br i1 %cmp8.i.i, label %for.cond.preheader.i.i.for.body.i.i_crit_edge, label %for.cond.preheader.i.i.for.end.i.i_crit_edge

for.cond.preheader.i.i.for.end.i.i_crit_edge:     ; preds = %for.cond.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end.i.i

for.cond.preheader.i.i.for.body.i.i_crit_edge:    ; preds = %for.cond.preheader.i.i
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %for.cond.preheader.i.i.for.body.i.i_crit_edge
  %i.09.i.i = phi i32 [ %inc.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ 0, %for.cond.preheader.i.i.for.body.i.i_crit_edge ]
  %13 = ptrtoint ptr %srqs.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %srqs.i.i, align 4
  %arrayidx.i.i = getelementptr ptr, ptr %14, i32 %i.09.i.i
  %15 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %arrayidx.i.i, align 4
  tail call fastcc void @nvmet_rdma_destroy_srq(ptr noundef %16) #14
  %inc.i.i = add nuw nsw i32 %i.09.i.i, 1
  %17 = ptrtoint ptr %srq_count.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %srq_count.i.i, align 4
  %cmp.i.i = icmp slt i32 %inc.i.i, %18
  br i1 %cmp.i.i, label %for.body.i.i.for.body.i.i_crit_edge, label %for.body.i.i.for.end.i.i_crit_edge

for.body.i.i.for.end.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end.i.i

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i.i

for.end.i.i:                                      ; preds = %for.body.i.i.for.end.i.i_crit_edge, %for.cond.preheader.i.i.for.end.i.i_crit_edge
  %19 = ptrtoint ptr %srqs.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %srqs.i.i, align 4
  tail call void @kfree(ptr noundef %20) #14
  br label %nvmet_rdma_destroy_srqs.exit.i

nvmet_rdma_destroy_srqs.exit.i:                   ; preds = %for.end.i.i, %list_del.exit.i.nvmet_rdma_destroy_srqs.exit.i_crit_edge
  %pd.i = getelementptr i8, ptr %kref, i32 -16
  %21 = ptrtoint ptr %pd.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %pd.i, align 4
  %call.i.i = tail call i32 @ib_dealloc_pd_user(ptr noundef %22, ptr noundef null) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i5.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i5.i, label %nvmet_rdma_destroy_srqs.exit.i.nvmet_rdma_free_dev.exit_crit_edge, label %land.rhs.i.i

nvmet_rdma_destroy_srqs.exit.i.nvmet_rdma_free_dev.exit_crit_edge: ; preds = %nvmet_rdma_destroy_srqs.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %nvmet_rdma_free_dev.exit

land.rhs.i.i:                                     ; preds = %nvmet_rdma_destroy_srqs.exit.i
  %.b38.i.i = load i1, ptr @ib_dealloc_pd.__already_done, align 1
  br i1 %.b38.i.i, label %land.rhs.i.i.nvmet_rdma_free_dev.exit_crit_edge, label %if.then.i.i, !prof !306

land.rhs.i.i.nvmet_rdma_free_dev.exit_crit_edge:  ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %nvmet_rdma_free_dev.exit

if.then.i.i:                                      ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @ib_dealloc_pd.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.86, i32 noundef 3498, i32 noundef 9, ptr noundef nonnull @.str.88) #14
  br label %nvmet_rdma_free_dev.exit

nvmet_rdma_free_dev.exit:                         ; preds = %if.then.i.i, %land.rhs.i.i.nvmet_rdma_free_dev.exit_crit_edge, %nvmet_rdma_destroy_srqs.exit.i.nvmet_rdma_free_dev.exit_crit_edge
  %add.ptr.i = getelementptr i8, ptr %kref, i32 -20
  tail call void @kfree(ptr noundef %add.ptr.i) #14
  br label %return

return:                                           ; preds = %nvmet_rdma_free_dev.exit, %if.then10.i.i.i, %if.end5.i.i.i.return_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__ib_alloc_pd(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @nvmet_rdma_destroy_srq(ptr noundef %nsrq) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %ndev = getelementptr inbounds %struct.nvmet_rdma_srq, ptr %nsrq, i32 0, i32 2
  %0 = ptrtoint ptr %ndev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ndev, align 4
  %cmds = getelementptr inbounds %struct.nvmet_rdma_srq, ptr %nsrq, i32 0, i32 1
  %2 = ptrtoint ptr %cmds to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cmds, align 4
  %srq_size = getelementptr inbounds %struct.nvmet_rdma_device, ptr %1, i32 0, i32 4
  %4 = ptrtoint ptr %srq_size to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %srq_size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp4.i = icmp sgt i32 %5, 0
  br i1 %cmp4.i, label %entry.for.body.i_crit_edge, label %entry.nvmet_rdma_free_cmds.exit_crit_edge

entry.nvmet_rdma_free_cmds.exit_crit_edge:        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %nvmet_rdma_free_cmds.exit

entry.for.body.i_crit_edge:                       ; preds = %entry
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %entry.for.body.i_crit_edge
  %i.05.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %entry.for.body.i_crit_edge ]
  %add.ptr.i = getelementptr %struct.nvmet_rdma_cmd, ptr %3, i32 %i.05.i
  tail call fastcc void @nvmet_rdma_free_cmd(ptr noundef %1, ptr noundef %add.ptr.i, i1 noundef zeroext false) #14
  %inc.i = add nuw nsw i32 %i.05.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %5
  br i1 %exitcond.not.i, label %for.body.i.nvmet_rdma_free_cmds.exit_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i

for.body.i.nvmet_rdma_free_cmds.exit_crit_edge:   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %nvmet_rdma_free_cmds.exit

nvmet_rdma_free_cmds.exit:                        ; preds = %for.body.i.nvmet_rdma_free_cmds.exit_crit_edge, %entry.nvmet_rdma_free_cmds.exit_crit_edge
  tail call void @kfree(ptr noundef %3) #14
  %6 = ptrtoint ptr %nsrq to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %nsrq, align 4
  %call.i = tail call i32 @ib_destroy_srq_user(ptr noundef %7, ptr noundef null) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %nvmet_rdma_free_cmds.exit.ib_destroy_srq.exit_crit_edge, label %land.rhs.i

nvmet_rdma_free_cmds.exit.ib_destroy_srq.exit_crit_edge: ; preds = %nvmet_rdma_free_cmds.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %ib_destroy_srq.exit

land.rhs.i:                                       ; preds = %nvmet_rdma_free_cmds.exit
  %.b38.i = load i1, ptr @ib_destroy_srq.__already_done, align 1
  br i1 %.b38.i, label %land.rhs.i.ib_destroy_srq.exit_crit_edge, label %if.then.i, !prof !306

land.rhs.i.ib_destroy_srq.exit_crit_edge:         ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %ib_destroy_srq.exit

if.then.i:                                        ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @ib_destroy_srq.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.86, i32 noundef 3688, i32 noundef 9, ptr noundef nonnull @.str.87) #14
  br label %ib_destroy_srq.exit

ib_destroy_srq.exit:                              ; preds = %if.then.i, %land.rhs.i.ib_destroy_srq.exit_crit_edge, %nvmet_rdma_free_cmds.exit.ib_destroy_srq.exit_crit_edge
  tail call void @kfree(ptr noundef %nsrq) #14
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #9

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @nvmet_rdma_alloc_cmds(ptr nocapture noundef readonly %ndev, i32 noundef %nr_cmds, i1 noundef zeroext %admin) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %nr_cmds, i32 208) #14
  %1 = extractvalue { i32, i1 } %0, 1
  br i1 %1, label %entry.cleanup_crit_edge, label %if.end7.i.i, !prof !307

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end7.i.i:                                      ; preds = %entry
  %2 = extractvalue { i32, i1 } %0, 0
  %call8.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %2, i32 noundef 3520) #20
  %tobool.not = icmp eq ptr %call8.i.i, null
  br i1 %tobool.not, label %if.end7.i.i.cleanup_crit_edge, label %for.cond.preheader

if.end7.i.i.cleanup_crit_edge:                    ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

for.cond.preheader:                               ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %nr_cmds)
  %cmp58.not = icmp eq i32 %nr_cmds, 0
  br i1 %cmp58.not, label %for.cond.preheader.cleanup_crit_edge, label %for.body.lr.ph

for.cond.preheader.cleanup_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %pd.i = getelementptr inbounds %struct.nvmet_rdma_device, ptr %ndev, i32 0, i32 1
  %inline_data_size.i.i = getelementptr inbounds %struct.nvmet_rdma_device, ptr %ndev, i32 0, i32 7
  %inline_page_count.i.i = getelementptr inbounds %struct.nvmet_rdma_device, ptr %ndev, i32 0, i32 8
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.059 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %add.ptr = getelementptr %struct.nvmet_rdma_cmd, ptr %call8.i.i, i32 %i.059
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %3 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %3, i32 noundef 3264, i32 noundef 64) #18
  %nvme_cmd.i = getelementptr %struct.nvmet_rdma_cmd, ptr %call8.i.i, i32 %i.059, i32 4
  %4 = ptrtoint ptr %nvme_cmd.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call7.i.i, ptr %nvme_cmd.i, align 16
  %tobool.not.i = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not.i, label %for.body.nvmet_rdma_alloc_cmd.exit_crit_edge, label %if.end.i

for.body.nvmet_rdma_alloc_cmd.exit_crit_edge:     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %nvmet_rdma_alloc_cmd.exit

if.end.i:                                         ; preds = %for.body
  %5 = ptrtoint ptr %ndev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ndev, align 4
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %6, align 8
  %call.i.i.i = tail call zeroext i1 @is_vmalloc_addr(ptr noundef nonnull %call7.i.i) #14
  br i1 %call.i.i.i, label %land.rhs.i.i.i, label %if.end39.i.i.i

land.rhs.i.i.i:                                   ; preds = %if.end.i
  %.b1.i.i.i = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  br i1 %.b1.i.i.i, label %land.rhs.i.i.i.ib_dma_map_single.exit.i_crit_edge, label %if.then.i.i.i25, !prof !306

land.rhs.i.i.i.ib_dma_map_single.exit.i_crit_edge: ; preds = %land.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %ib_dma_map_single.exit.i

if.then.i.i.i25:                                  ; preds = %land.rhs.i.i.i
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %call16.i.i.i = tail call ptr @dev_driver_string(ptr noundef %8) #14
  %init_name.i.i.i.i = getelementptr inbounds %struct.device, ptr %8, i32 0, i32 3
  %9 = ptrtoint ptr %init_name.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %init_name.i.i.i.i, align 8
  %tobool.not.i.i.i.i24 = icmp eq ptr %10, null
  br i1 %tobool.not.i.i.i.i24, label %if.end.i.i.i.i26, label %if.then.i.i.i25.dev_name.exit.i.i.i_crit_edge

if.then.i.i.i25.dev_name.exit.i.i.i_crit_edge:    ; preds = %if.then.i.i.i25
  call void @__sanitizer_cov_trace_pc() #16
  br label %dev_name.exit.i.i.i

if.end.i.i.i.i26:                                 ; preds = %if.then.i.i.i25
  call void @__sanitizer_cov_trace_pc() #16
  %11 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %8, align 4
  br label %dev_name.exit.i.i.i

dev_name.exit.i.i.i:                              ; preds = %if.end.i.i.i.i26, %if.then.i.i.i25.dev_name.exit.i.i.i_crit_edge
  %retval.0.i.i.i.i = phi ptr [ %12, %if.end.i.i.i.i26 ], [ %10, %if.then.i.i.i25.dev_name.exit.i.i.i_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.56, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.57, ptr noundef %call16.i.i.i, ptr noundef %retval.0.i.i.i.i) #14
  br label %ib_dma_map_single.exit.i

if.end39.i.i.i:                                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @debug_dma_map_single(ptr noundef %8, ptr noundef nonnull %call7.i.i, i32 noundef 64) #14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %13 = load ptr, ptr @mem_map, align 4
  %14 = ptrtoint ptr %call7.i.i to i32
  %sub.i.i.i = add i32 %14, 1073741824
  %shr.i.i.i = lshr i32 %sub.i.i.i, 12
  %add.ptr.i.i.i = getelementptr %struct.page, ptr %13, i32 %shr.i.i.i
  %and.i.i.i = and i32 %14, 4088
  %call41.i.i.i = tail call i32 @dma_map_page_attrs(ptr noundef %8, ptr noundef %add.ptr.i.i.i, i32 noundef %and.i.i.i, i32 noundef 64, i32 noundef 2, i32 noundef 0) #14
  br label %ib_dma_map_single.exit.i

ib_dma_map_single.exit.i:                         ; preds = %if.end39.i.i.i, %dev_name.exit.i.i.i, %land.rhs.i.i.i.ib_dma_map_single.exit.i_crit_edge
  %retval.0.i.i.i = phi i32 [ %call41.i.i.i, %if.end39.i.i.i ], [ -1, %dev_name.exit.i.i.i ], [ -1, %land.rhs.i.i.i.ib_dma_map_single.exit.i_crit_edge ]
  %conv2.i.i = zext i32 %retval.0.i.i.i to i64
  %15 = ptrtoint ptr %add.ptr to i32
  call void @__asan_store8_noabort(i32 %15)
  store i64 %conv2.i.i, ptr %add.ptr, align 16
  %16 = ptrtoint ptr %ndev to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %ndev, align 4
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %17, align 8
  tail call void @debug_dma_mapping_error(ptr noundef %19, i32 noundef %retval.0.i.i.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %retval.0.i.i.i)
  %cmp.i.i.i27 = icmp eq i32 %retval.0.i.i.i, -1
  br i1 %cmp.i.i.i27, label %ib_dma_map_single.exit.i.out_free_cmd.i_crit_edge, label %if.end11.i

ib_dma_map_single.exit.i.out_free_cmd.i_crit_edge: ; preds = %ib_dma_map_single.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %out_free_cmd.i

if.end11.i:                                       ; preds = %ib_dma_map_single.exit.i
  %length.i = getelementptr inbounds %struct.ib_sge, ptr %add.ptr, i32 0, i32 1
  %20 = ptrtoint ptr %length.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 64, ptr %length.i, align 8
  %21 = ptrtoint ptr %pd.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %pd.i, align 4
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %22, align 4
  %lkey.i = getelementptr inbounds %struct.ib_sge, ptr %add.ptr, i32 0, i32 2
  %25 = ptrtoint ptr %lkey.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %lkey.i, align 4
  br i1 %admin, label %cond.end.critedge.i, label %land.lhs.true.i

land.lhs.true.i:                                  ; preds = %if.end11.i
  %26 = ptrtoint ptr %inline_data_size.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %inline_data_size.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %tobool.not.i.i = icmp eq i32 %27, 0
  br i1 %tobool.not.i.i, label %land.lhs.true.i.cond.false.critedge.i_crit_edge, label %if.end.i.i28

land.lhs.true.i.cond.false.critedge.i_crit_edge:  ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cond.false.critedge.i

if.end.i.i28:                                     ; preds = %land.lhs.true.i
  %inline_sg.i.i = getelementptr %struct.nvmet_rdma_cmd, ptr %call8.i.i, i32 %i.059, i32 3
  %28 = ptrtoint ptr %inline_page_count.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %inline_page_count.i.i, align 4
  tail call void @sg_init_table(ptr noundef %inline_sg.i.i, i32 noundef %29) #14
  %30 = ptrtoint ptr %inline_page_count.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %inline_page_count.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %cmp88.i.i = icmp sgt i32 %31, 0
  br i1 %cmp88.i.i, label %for.body.lr.ph.i.i, label %if.end.i.i28.cond.false.critedge.i_crit_edge

if.end.i.i28.cond.false.critedge.i_crit_edge:     ; preds = %if.end.i.i28
  call void @__sanitizer_cov_trace_pc() #16
  br label %cond.false.critedge.i

for.body.lr.ph.i.i:                               ; preds = %if.end.i.i28
  %32 = ptrtoint ptr %inline_data_size.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %inline_data_size.i.i, align 4
  %arrayidx.i.i = getelementptr [5 x %struct.ib_sge], ptr %add.ptr, i32 0, i32 1
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %if.end13.i.i.for.body.i.i_crit_edge, %for.body.lr.ph.i.i
  %i.092.i.i = phi i32 [ 0, %for.body.lr.ph.i.i ], [ %inc.i.i, %if.end13.i.i.for.body.i.i_crit_edge ]
  %len.091.i.i = phi i32 [ %33, %for.body.lr.ph.i.i ], [ %sub.i.i, %if.end13.i.i.for.body.i.i_crit_edge ]
  %sge.090.i.i = phi ptr [ %arrayidx.i.i, %for.body.lr.ph.i.i ], [ %incdec.ptr16.i.i, %if.end13.i.i.for.body.i.i_crit_edge ]
  %sg.089.i.i = phi ptr [ %inline_sg.i.i, %for.body.lr.ph.i.i ], [ %incdec.ptr.i.i, %if.end13.i.i.for.body.i.i_crit_edge ]
  %call38.i.i.i.i.i = tail call ptr @__alloc_pages(i32 noundef 3264, i32 noundef 0, i32 noundef 0, ptr noundef null) #14
  %tobool4.not.i.i = icmp eq ptr %call38.i.i.i.i.i, null
  br i1 %tobool4.not.i.i, label %for.body.i.i.for.body19.i.i.preheader_crit_edge, label %if.end6.i.i

for.body.i.i.for.body19.i.i.preheader_crit_edge:  ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body19.i.i.preheader

for.body19.i.i.preheader:                         ; preds = %sg_assign_page.exit.i.i.for.body19.i.i.preheader_crit_edge, %for.body.i.i.for.body19.i.i.preheader_crit_edge
  br label %for.body19.i.i

if.end6.i.i:                                      ; preds = %for.body.i.i
  %34 = ptrtoint ptr %sg.089.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %sg.089.i.i, align 4
  %36 = ptrtoint ptr %call38.i.i.i.i.i to i32
  %and2.i.i.i = and i32 %36, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and2.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %do.body11.i.i.i, label %do.body5.i.i.i, !prof !306

do.body5.i.i.i:                                   ; preds = %if.end6.i.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 112, 0\0A.popsection", ""() #14, !srcloc !325
  unreachable

do.body11.i.i.i:                                  ; preds = %if.end6.i.i
  %and.i.i.i.i = and i32 %35, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.i.not.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.i.not.i.i.i, label %sg_assign_page.exit.i.i, label %do.body19.i.i.i, !prof !306

do.body19.i.i.i:                                  ; preds = %do.body11.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 114, 0\0A.popsection", ""() #14, !srcloc !326
  unreachable

sg_assign_page.exit.i.i:                          ; preds = %do.body11.i.i.i
  %and.i.i54.i = and i32 %35, 3
  %or.i.i.i = or i32 %and.i.i54.i, %36
  %37 = ptrtoint ptr %sg.089.i.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %or.i.i.i, ptr %sg.089.i.i, align 4
  %38 = ptrtoint ptr %ndev to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %ndev, align 4
  %40 = ptrtoint ptr %39 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %39, align 8
  %call2.i.i.i = tail call i32 @dma_map_page_attrs(ptr noundef %41, ptr noundef nonnull %call38.i.i.i.i.i, i32 noundef 0, i32 noundef 4096, i32 noundef 2, i32 noundef 0) #14
  %conv3.i.i.i = zext i32 %call2.i.i.i to i64
  %42 = ptrtoint ptr %sge.090.i.i to i32
  call void @__asan_store8_noabort(i32 %42)
  store i64 %conv3.i.i.i, ptr %sge.090.i.i, align 8
  %43 = ptrtoint ptr %ndev to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %ndev, align 4
  %45 = ptrtoint ptr %44 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %44, align 8
  tail call void @debug_dma_mapping_error(ptr noundef %46, i32 noundef %call2.i.i.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call2.i.i.i)
  %cmp.i.i.not.i.i = icmp eq i32 %call2.i.i.i, -1
  br i1 %cmp.i.i.not.i.i, label %sg_assign_page.exit.i.i.for.body19.i.i.preheader_crit_edge, label %if.end13.i.i

sg_assign_page.exit.i.i.for.body19.i.i.preheader_crit_edge: ; preds = %sg_assign_page.exit.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body19.i.i.preheader

if.end13.i.i:                                     ; preds = %sg_assign_page.exit.i.i
  %47 = tail call i32 @llvm.smin.i32(i32 %len.091.i.i, i32 4096) #14
  %length.i.i = getelementptr inbounds %struct.ib_sge, ptr %sge.090.i.i, i32 0, i32 1
  %48 = ptrtoint ptr %length.i.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %47, ptr %length.i.i, align 8
  %49 = ptrtoint ptr %pd.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %pd.i, align 4
  %51 = ptrtoint ptr %50 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %50, align 4
  %lkey.i.i = getelementptr inbounds %struct.ib_sge, ptr %sge.090.i.i, i32 0, i32 2
  %53 = ptrtoint ptr %lkey.i.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %52, ptr %lkey.i.i, align 4
  %sub.i.i = sub i32 %len.091.i.i, %47
  %inc.i.i = add nuw nsw i32 %i.092.i.i, 1
  %incdec.ptr.i.i = getelementptr %struct.scatterlist, ptr %sg.089.i.i, i32 1
  %incdec.ptr16.i.i = getelementptr %struct.ib_sge, ptr %sge.090.i.i, i32 1
  %54 = ptrtoint ptr %inline_page_count.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %inline_page_count.i.i, align 4
  %cmp.i.i = icmp slt i32 %inc.i.i, %55
  br i1 %cmp.i.i, label %if.end13.i.i.for.body.i.i_crit_edge, label %if.end13.i.i.cond.false.critedge.i_crit_edge

if.end13.i.i.cond.false.critedge.i_crit_edge:     ; preds = %if.end13.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cond.false.critedge.i

if.end13.i.i.for.body.i.i_crit_edge:              ; preds = %if.end13.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i.i

for.body19.i.i:                                   ; preds = %for.inc32.i.i.for.body19.i.i_crit_edge, %for.body19.i.i.preheader
  %i.197.i.i = phi i32 [ %dec.i.i, %for.inc32.i.i.for.body19.i.i_crit_edge ], [ %i.092.i.i, %for.body19.i.i.preheader ]
  %sge.195.i.i = phi ptr [ %incdec.ptr34.i.i, %for.inc32.i.i.for.body19.i.i_crit_edge ], [ %sge.090.i.i, %for.body19.i.i.preheader ]
  %sg.194.i.i = phi ptr [ %incdec.ptr33.i.i, %for.inc32.i.i.for.body19.i.i_crit_edge ], [ %sg.089.i.i, %for.body19.i.i.preheader ]
  %length20.i.i = getelementptr inbounds %struct.ib_sge, ptr %sge.195.i.i, i32 0, i32 1
  %56 = ptrtoint ptr %length20.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %length20.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %57)
  %tobool21.not.i.i = icmp eq i32 %57, 0
  br i1 %tobool21.not.i.i, label %for.body19.i.i.if.end26.i.i_crit_edge, label %if.then22.i.i

for.body19.i.i.if.end26.i.i_crit_edge:            ; preds = %for.body19.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end26.i.i

if.then22.i.i:                                    ; preds = %for.body19.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %58 = ptrtoint ptr %ndev to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %ndev, align 4
  %60 = ptrtoint ptr %sge.195.i.i to i32
  call void @__asan_load8_noabort(i32 %60)
  %61 = load i64, ptr %sge.195.i.i, align 8
  %62 = ptrtoint ptr %59 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %59, align 8
  %conv.i.i.i = trunc i64 %61 to i32
  tail call void @dma_unmap_page_attrs(ptr noundef %63, i32 noundef %conv.i.i.i, i32 noundef %57, i32 noundef 2, i32 noundef 0) #14
  br label %if.end26.i.i

if.end26.i.i:                                     ; preds = %if.then22.i.i, %for.body19.i.i.if.end26.i.i_crit_edge
  %64 = ptrtoint ptr %sg.194.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %sg.194.i.i, align 4
  %and.i.i70.i.i = and i32 %65, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i70.i.i)
  %tobool.i.not.i71.i.i = icmp eq i32 %and.i.i70.i.i, 0
  br i1 %tobool.i.not.i71.i.i, label %sg_page.exit.i.i, label %do.body2.i.i.i, !prof !306

do.body2.i.i.i:                                   ; preds = %if.end26.i.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 144, 0\0A.popsection", ""() #14, !srcloc !327
  unreachable

sg_page.exit.i.i:                                 ; preds = %if.end26.i.i
  %and.i72.i.i = and i32 %65, -4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i72.i.i)
  %tobool28.not.i.i = icmp eq i32 %and.i72.i.i, 0
  br i1 %tobool28.not.i.i, label %sg_page.exit.i.i.for.inc32.i.i_crit_edge, label %sg_page.exit77.i.i

sg_page.exit.i.i.for.inc32.i.i_crit_edge:         ; preds = %sg_page.exit.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc32.i.i

sg_page.exit77.i.i:                               ; preds = %sg_page.exit.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %66 = inttoptr i32 %and.i72.i.i to ptr
  tail call void @__free_pages(ptr noundef nonnull %66, i32 noundef 0) #14
  br label %for.inc32.i.i

for.inc32.i.i:                                    ; preds = %sg_page.exit77.i.i, %sg_page.exit.i.i.for.inc32.i.i_crit_edge
  %dec.i.i = add nsw i32 %i.197.i.i, -1
  %incdec.ptr33.i.i = getelementptr %struct.scatterlist, ptr %sg.194.i.i, i32 -1
  %incdec.ptr34.i.i = getelementptr %struct.ib_sge, ptr %sge.195.i.i, i32 -1
  %cmp18.i.i = icmp sgt i32 %i.197.i.i, 0
  br i1 %cmp18.i.i, label %for.inc32.i.i.for.body19.i.i_crit_edge, label %out_unmap_cmd.i

for.inc32.i.i.for.body19.i.i_crit_edge:           ; preds = %for.inc32.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body19.i.i

cond.false.critedge.i:                            ; preds = %if.end13.i.i.cond.false.critedge.i_crit_edge, %if.end.i.i28.cond.false.critedge.i_crit_edge, %land.lhs.true.i.cond.false.critedge.i_crit_edge
  %cqe.c.i = getelementptr %struct.nvmet_rdma_cmd, ptr %call8.i.i, i32 %i.059, i32 1
  %67 = ptrtoint ptr %cqe.c.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr @nvmet_rdma_recv_done, ptr %cqe.c.i, align 16
  %68 = getelementptr %struct.nvmet_rdma_cmd, ptr %call8.i.i, i32 %i.059, i32 2, i32 1
  %69 = ptrtoint ptr %68 to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr %cqe.c.i, ptr %68, align 16
  %sg_list.c.i = getelementptr %struct.nvmet_rdma_cmd, ptr %call8.i.i, i32 %i.059, i32 2, i32 2
  %70 = ptrtoint ptr %sg_list.c.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr %add.ptr, ptr %sg_list.c.i, align 8
  %71 = ptrtoint ptr %inline_page_count.i.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %inline_page_count.i.i, align 4
  %add.i = add i32 %72, 1
  br label %for.inc

cond.end.critedge.i:                              ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #16
  %cqe.c52.i = getelementptr %struct.nvmet_rdma_cmd, ptr %call8.i.i, i32 %i.059, i32 1
  %73 = ptrtoint ptr %cqe.c52.i to i32
  call void @__asan_store4_noabort(i32 %73)
  store ptr @nvmet_rdma_recv_done, ptr %cqe.c52.i, align 16
  %74 = getelementptr %struct.nvmet_rdma_cmd, ptr %call8.i.i, i32 %i.059, i32 2, i32 1
  %75 = ptrtoint ptr %74 to i32
  call void @__asan_store4_noabort(i32 %75)
  store ptr %cqe.c52.i, ptr %74, align 16
  %sg_list.c53.i = getelementptr %struct.nvmet_rdma_cmd, ptr %call8.i.i, i32 %i.059, i32 2, i32 2
  %76 = ptrtoint ptr %sg_list.c53.i to i32
  call void @__asan_store4_noabort(i32 %76)
  store ptr %add.ptr, ptr %sg_list.c53.i, align 8
  br label %for.inc

out_unmap_cmd.i:                                  ; preds = %for.inc32.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %77 = ptrtoint ptr %ndev to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %ndev, align 4
  %79 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load8_noabort(i32 %79)
  %80 = load i64, ptr %add.ptr, align 16
  %81 = ptrtoint ptr %78 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %78, align 8
  %conv.i.i = trunc i64 %80 to i32
  tail call void @dma_unmap_page_attrs(ptr noundef %82, i32 noundef %conv.i.i, i32 noundef 64, i32 noundef 2, i32 noundef 0) #14
  br label %out_free_cmd.i

out_free_cmd.i:                                   ; preds = %out_unmap_cmd.i, %ib_dma_map_single.exit.i.out_free_cmd.i_crit_edge
  %83 = ptrtoint ptr %nvme_cmd.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %nvme_cmd.i, align 16
  tail call void @kfree(ptr noundef %84) #14
  br label %nvmet_rdma_alloc_cmd.exit

nvmet_rdma_alloc_cmd.exit:                        ; preds = %out_free_cmd.i, %for.body.nvmet_rdma_alloc_cmd.exit_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.059)
  %cmp663.not = icmp eq i32 %i.059, 0
  br i1 %cmp663.not, label %nvmet_rdma_alloc_cmd.exit.while.end_crit_edge, label %nvmet_rdma_alloc_cmd.exit.while.body_crit_edge

nvmet_rdma_alloc_cmd.exit.while.body_crit_edge:   ; preds = %nvmet_rdma_alloc_cmd.exit
  br label %while.body

nvmet_rdma_alloc_cmd.exit.while.end_crit_edge:    ; preds = %nvmet_rdma_alloc_cmd.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.end

for.inc:                                          ; preds = %cond.end.critedge.i, %cond.false.critedge.i
  %cond.i = phi i32 [ %add.i, %cond.false.critedge.i ], [ 1, %cond.end.critedge.i ]
  %num_sge.i = getelementptr %struct.nvmet_rdma_cmd, ptr %call8.i.i, i32 %i.059, i32 2, i32 3
  %85 = ptrtoint ptr %num_sge.i to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 %cond.i, ptr %num_sge.i, align 4
  %inc = add nuw nsw i32 %i.059, 1
  %exitcond.not = icmp eq i32 %inc, %nr_cmds
  br i1 %exitcond.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

while.body:                                       ; preds = %while.body.while.body_crit_edge, %nvmet_rdma_alloc_cmd.exit.while.body_crit_edge
  %dec64.in = phi i32 [ %dec64, %while.body.while.body_crit_edge ], [ %i.059, %nvmet_rdma_alloc_cmd.exit.while.body_crit_edge ]
  %dec64 = add nsw i32 %dec64.in, -1
  %add.ptr7 = getelementptr %struct.nvmet_rdma_cmd, ptr %call8.i.i, i32 %dec64
  tail call fastcc void @nvmet_rdma_free_cmd(ptr noundef %ndev, ptr noundef %add.ptr7, i1 noundef zeroext %admin)
  %cmp6 = icmp sgt i32 %dec64.in, 1
  br i1 %cmp6, label %while.body.while.body_crit_edge, label %while.body.while.end_crit_edge

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.end

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.body

while.end:                                        ; preds = %while.body.while.end_crit_edge, %nvmet_rdma_alloc_cmd.exit.while.end_crit_edge
  tail call void @kfree(ptr noundef nonnull %call8.i.i) #14
  br label %cleanup

cleanup:                                          ; preds = %while.end, %for.inc.cleanup_crit_edge, %for.cond.preheader.cleanup_crit_edge, %if.end7.i.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ inttoptr (i32 -12 to ptr), %while.end ], [ inttoptr (i32 -22 to ptr), %if.end7.i.i.cleanup_crit_edge ], [ inttoptr (i32 -22 to ptr), %entry.cleanup_crit_edge ], [ %call8.i.i, %for.cond.preheader.cleanup_crit_edge ], [ %call8.i.i, %for.inc.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @nvmet_rdma_free_cmds(ptr nocapture noundef readonly %ndev, ptr noundef %cmds, i32 noundef %nr_cmds, i1 noundef zeroext %admin) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %nr_cmds)
  %cmp4 = icmp sgt i32 %nr_cmds, 0
  br i1 %cmp4, label %entry.for.body_crit_edge, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %i.05 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %add.ptr = getelementptr %struct.nvmet_rdma_cmd, ptr %cmds, i32 %i.05
  tail call fastcc void @nvmet_rdma_free_cmd(ptr noundef %ndev, ptr noundef %add.ptr, i1 noundef zeroext %admin)
  %inc = add nuw nsw i32 %i.05, 1
  %exitcond.not = icmp eq i32 %inc, %nr_cmds
  br i1 %exitcond.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  tail call void @kfree(ptr noundef %cmds) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ib_create_srq_user(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @nvmet_rdma_free_cmd(ptr nocapture noundef readonly %ndev, ptr nocapture noundef readonly %c, i1 noundef zeroext %admin) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  br i1 %admin, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.then:                                          ; preds = %entry
  %inline_data_size.i = getelementptr inbounds %struct.nvmet_rdma_device, ptr %ndev, i32 0, i32 7
  %0 = ptrtoint ptr %inline_data_size.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %inline_data_size.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not.i = icmp eq i32 %1, 0
  br i1 %tobool.not.i, label %if.then.if.end_crit_edge, label %if.end.i

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.end.i:                                         ; preds = %if.then
  %inline_page_count.i = getelementptr inbounds %struct.nvmet_rdma_device, ptr %ndev, i32 0, i32 8
  %2 = ptrtoint ptr %inline_page_count.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %inline_page_count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp27.i = icmp sgt i32 %3, 0
  br i1 %cmp27.i, label %for.body.preheader.i, label %if.end.i.if.end_crit_edge

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

for.body.preheader.i:                             ; preds = %if.end.i
  %arrayidx.i = getelementptr [5 x %struct.ib_sge], ptr %c, i32 0, i32 1
  %inline_sg.i = getelementptr inbounds %struct.nvmet_rdma_cmd, ptr %c, i32 0, i32 3
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.preheader.i
  %i.031.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %for.body.preheader.i ]
  %sge.029.i = phi ptr [ %incdec.ptr10.i, %for.inc.i.for.body.i_crit_edge ], [ %arrayidx.i, %for.body.preheader.i ]
  %sg.028.i = phi ptr [ %incdec.ptr.i, %for.inc.i.for.body.i_crit_edge ], [ %inline_sg.i, %for.body.preheader.i ]
  %length.i = getelementptr inbounds %struct.ib_sge, ptr %sge.029.i, i32 0, i32 1
  %4 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %length.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool2.not.i = icmp eq i32 %5, 0
  br i1 %tobool2.not.i, label %for.body.i.if.end5.i_crit_edge, label %if.then3.i

for.body.i.if.end5.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end5.i

if.then3.i:                                       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #16
  %6 = ptrtoint ptr %ndev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ndev, align 4
  %8 = ptrtoint ptr %sge.029.i to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %sge.029.i, align 8
  %10 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %7, align 8
  %conv.i.i = trunc i64 %9 to i32
  tail call void @dma_unmap_page_attrs(ptr noundef %11, i32 noundef %conv.i.i, i32 noundef %5, i32 noundef 2, i32 noundef 0) #14
  br label %if.end5.i

if.end5.i:                                        ; preds = %if.then3.i, %for.body.i.if.end5.i_crit_edge
  %12 = ptrtoint ptr %sg.028.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %sg.028.i, align 4
  %and.i.i.i = and i32 %13, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.i.not.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.i.not.i.i, label %sg_page.exit.i, label %do.body2.i.i, !prof !306

do.body2.i.i:                                     ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 144, 0\0A.popsection", ""() #14, !srcloc !327
  unreachable

sg_page.exit.i:                                   ; preds = %if.end5.i
  %and.i.i = and i32 %13, -4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool6.not.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool6.not.i, label %sg_page.exit.i.for.inc.i_crit_edge, label %sg_page.exit26.i

sg_page.exit.i.for.inc.i_crit_edge:               ; preds = %sg_page.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.i

sg_page.exit26.i:                                 ; preds = %sg_page.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  %14 = inttoptr i32 %and.i.i to ptr
  tail call void @__free_pages(ptr noundef nonnull %14, i32 noundef 0) #14
  br label %for.inc.i

for.inc.i:                                        ; preds = %sg_page.exit26.i, %sg_page.exit.i.for.inc.i_crit_edge
  %inc.i = add nuw nsw i32 %i.031.i, 1
  %incdec.ptr.i = getelementptr %struct.scatterlist, ptr %sg.028.i, i32 1
  %incdec.ptr10.i = getelementptr %struct.ib_sge, ptr %sge.029.i, i32 1
  %15 = ptrtoint ptr %inline_page_count.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %inline_page_count.i, align 4
  %cmp.i = icmp slt i32 %inc.i, %16
  br i1 %cmp.i, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.if.end_crit_edge

for.inc.i.if.end_crit_edge:                       ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i

if.end:                                           ; preds = %for.inc.i.if.end_crit_edge, %if.end.i.if.end_crit_edge, %if.then.if.end_crit_edge, %entry.if.end_crit_edge
  %17 = ptrtoint ptr %ndev to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %ndev, align 4
  %19 = ptrtoint ptr %c to i32
  call void @__asan_load8_noabort(i32 %19)
  %20 = load i64, ptr %c, align 8
  %21 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %18, align 8
  %conv.i = trunc i64 %20 to i32
  tail call void @dma_unmap_page_attrs(ptr noundef %22, i32 noundef %conv.i, i32 noundef 64, i32 noundef 2, i32 noundef 0) #14
  %nvme_cmd = getelementptr inbounds %struct.nvmet_rdma_cmd, ptr %c, i32 0, i32 4
  %23 = ptrtoint ptr %nvme_cmd to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %nvme_cmd, align 8
  tail call void @kfree(ptr noundef %24) #14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nvmet_rdma_recv_done(ptr nocapture noundef readnone %cq, ptr nocapture noundef readonly %wc) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %wc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %wc, align 8
  %add.ptr = getelementptr i8, ptr %1, i32 -80
  %qp = getelementptr inbounds %struct.ib_wc, ptr %wc, i32 0, i32 5
  %2 = ptrtoint ptr %qp to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %qp, align 8
  %qp_context = getelementptr inbounds %struct.ib_qp, ptr %3, i32 0, i32 16
  %4 = ptrtoint ptr %qp_context to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %qp_context, align 4
  %status = getelementptr inbounds %struct.ib_wc, ptr %wc, i32 0, i32 1
  %6 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %status, align 8
  %8 = zext i32 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.136)
  switch i32 %7, label %do.end [
    i32 0, label %if.end9
    i32 5, label %entry.cleanup_crit_edge
  ], !prof !328

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %call = tail call ptr @ib_wc_status_msg(i32 noundef %7) #19
  %call8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.59, ptr noundef %1, ptr noundef %call, i32 noundef %7) #17
  tail call fastcc void @nvmet_rdma_error_comp(ptr noundef %5)
  br label %cleanup

if.end9:                                          ; preds = %entry
  %byte_len = getelementptr inbounds %struct.ib_wc, ptr %wc, i32 0, i32 4
  %9 = ptrtoint ptr %byte_len to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %byte_len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %10)
  %cmp10 = icmp ult i32 %10, 64
  br i1 %cmp10, label %do.end20, label %if.end23, !prof !307

do.end20:                                         ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #16
  %call22 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.62) #17
  tail call fastcc void @nvmet_rdma_error_comp(ptr noundef %5)
  br label %cleanup

if.end23:                                         ; preds = %if.end9
  %queue24 = getelementptr i8, ptr %1, i32 116
  %11 = ptrtoint ptr %queue24 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %5, ptr %queue24, align 4
  %rsps_lock.i = getelementptr inbounds %struct.nvmet_rdma_queue, ptr %5, i32 0, i32 13
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %rsps_lock.i) #14
  %free_rsps.i = getelementptr inbounds %struct.nvmet_rdma_queue, ptr %5, i32 0, i32 12
  %12 = ptrtoint ptr %free_rsps.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile ptr, ptr %free_rsps.i, align 4
  %cmp10.not.i = icmp eq ptr %13, %free_rsps.i
  %add.ptr.i = getelementptr i8, ptr %13, i32 -516
  %tobool.not66.i = icmp eq ptr %add.ptr.i, null
  %tobool.not.i = or i1 %cmp10.not.i, %tobool.not66.i
  br i1 %tobool.not.i, label %if.then25.critedge.i, label %if.then.i, !prof !307

if.then.i:                                        ; preds = %if.end23
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %13) #14
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.then.i.list_del.exit.i_crit_edge

if.then.i.list_del.exit.i_crit_edge:              ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %list_del.exit.i

if.end.i.i.i:                                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #16
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %prev.i.i.i, align 4
  %16 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %13, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %17, i32 0, i32 1
  %18 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %15, ptr %prev1.i.i.i.i, align 4
  %19 = ptrtoint ptr %15 to i32
  call void @__asan_store4_noabort(i32 %19)
  store volatile ptr %17, ptr %15, align 4
  br label %list_del.exit.i

list_del.exit.i:                                  ; preds = %if.end.i.i.i, %if.then.i.list_del.exit.i_crit_edge
  %20 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr inttoptr (i32 256 to ptr), ptr %13, align 4
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %13, i32 0, i32 1
  %21 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %rsps_lock.i, i32 noundef %call2.i) #14
  br label %if.end37

if.then25.critedge.i:                             ; preds = %if.end23
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %rsps_lock.i, i32 noundef %call2.i) #14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10) to i32))
  %22 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %22, i32 noundef 3520, i32 noundef 528) #18
  %tobool27.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool27.not.i, label %if.then25.critedge.i.if.then35_crit_edge, label %if.end37.i, !prof !307

if.then25.critedge.i.if.then35_crit_edge:         ; preds = %if.then25.critedge.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then35

if.end37.i:                                       ; preds = %if.then25.critedge.i
  %dev.i = getelementptr inbounds %struct.nvmet_rdma_queue, ptr %5, i32 0, i32 5
  %23 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %dev.i, align 4
  %call38.i = tail call fastcc i32 @nvmet_rdma_alloc_rsp(ptr noundef %24, ptr noundef nonnull %call7.i.i.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call38.i)
  %tobool39.not.i = icmp eq i32 %call38.i, 0
  br i1 %tobool39.not.i, label %if.end47.i, label %if.then46.i, !prof !306

if.then46.i:                                      ; preds = %if.end37.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i) #14
  br label %if.then35

if.end47.i:                                       ; preds = %if.end37.i
  call void @__sanitizer_cov_trace_pc() #16
  %allocated.i = getelementptr inbounds %struct.nvmet_rdma_rsp, ptr %call7.i.i.i, i32 0, i32 9
  %25 = ptrtoint ptr %allocated.i to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 1, ptr %allocated.i, align 8
  br label %if.end37

if.then35:                                        ; preds = %if.then46.i, %if.then25.critedge.i.if.then35_crit_edge
  %dev = getelementptr inbounds %struct.nvmet_rdma_queue, ptr %5, i32 0, i32 5
  %26 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %dev, align 4
  %call36 = tail call fastcc i32 @nvmet_rdma_post_recv(ptr noundef %27, ptr noundef %add.ptr)
  br label %cleanup

if.end37:                                         ; preds = %if.end47.i, %list_del.exit.i
  %retval.1.i = phi ptr [ %add.ptr.i, %list_del.exit.i ], [ %call7.i.i.i, %if.end47.i ]
  %queue38 = getelementptr inbounds %struct.nvmet_rdma_rsp, ptr %retval.1.i, i32 0, i32 4
  %28 = ptrtoint ptr %queue38 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %5, ptr %queue38, align 4
  %cmd39 = getelementptr inbounds %struct.nvmet_rdma_rsp, ptr %retval.1.i, i32 0, i32 3
  %29 = ptrtoint ptr %cmd39 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %add.ptr, ptr %cmd39, align 8
  %flags = getelementptr inbounds %struct.nvmet_rdma_rsp, ptr %retval.1.i, i32 0, i32 11
  %30 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 0, ptr %flags, align 4
  %nvme_cmd = getelementptr i8, ptr %1, i32 112
  %31 = ptrtoint ptr %nvme_cmd to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %nvme_cmd, align 8
  %req = getelementptr inbounds %struct.nvmet_rdma_rsp, ptr %retval.1.i, i32 0, i32 8
  %33 = ptrtoint ptr %req to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %32, ptr %req, align 8
  %port = getelementptr inbounds %struct.nvmet_rdma_queue, ptr %5, i32 0, i32 2
  %34 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %port, align 4
  %port42 = getelementptr inbounds %struct.nvmet_rdma_rsp, ptr %retval.1.i, i32 0, i32 8, i32 13
  %36 = ptrtoint ptr %port42 to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %35, ptr %port42, align 8
  %n_rdma = getelementptr inbounds %struct.nvmet_rdma_rsp, ptr %retval.1.i, i32 0, i32 10
  %37 = ptrtoint ptr %n_rdma to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 0, ptr %n_rdma, align 1
  %state = getelementptr inbounds %struct.nvmet_rdma_queue, ptr %5, i32 0, i32 8
  %38 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %39)
  %cmp43.not = icmp eq i32 %39, 1
  br i1 %cmp43.not, label %if.end68, label %if.then50, !prof !306

if.then50:                                        ; preds = %if.end37
  %state_lock = getelementptr inbounds %struct.nvmet_rdma_queue, ptr %5, i32 0, i32 7
  %call57 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %state_lock) #14
  %40 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %41)
  %cmp63 = icmp eq i32 %41, 0
  br i1 %cmp63, label %if.then65, label %if.else

if.then65:                                        ; preds = %if.then50
  %wait_list = getelementptr inbounds %struct.nvmet_rdma_rsp, ptr %retval.1.i, i32 0, i32 13
  %rsp_wait_list = getelementptr inbounds %struct.nvmet_rdma_queue, ptr %5, i32 0, i32 16
  %prev.i = getelementptr inbounds %struct.nvmet_rdma_queue, ptr %5, i32 0, i32 16, i32 1
  %42 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %wait_list, ptr noundef %43, ptr noundef %rsp_wait_list) #14
  br i1 %call.i.i, label %if.end.i.i, label %if.then65.if.end66_crit_edge

if.then65.if.end66_crit_edge:                     ; preds = %if.then65
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end66

if.end.i.i:                                       ; preds = %if.then65
  call void @__sanitizer_cov_trace_pc() #16
  %44 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %wait_list, ptr %prev.i, align 4
  %45 = ptrtoint ptr %wait_list to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %rsp_wait_list, ptr %wait_list, align 4
  %prev3.i.i = getelementptr inbounds %struct.nvmet_rdma_rsp, ptr %retval.1.i, i32 0, i32 13, i32 1
  %46 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %43, ptr %prev3.i.i, align 4
  %47 = ptrtoint ptr %43 to i32
  call void @__asan_store4_noabort(i32 %47)
  store volatile ptr %wait_list, ptr %43, align 4
  br label %if.end66

if.else:                                          ; preds = %if.then50
  call void @__sanitizer_cov_trace_pc() #16
  tail call fastcc void @nvmet_rdma_put_rsp(ptr noundef nonnull %retval.1.i)
  br label %if.end66

if.end66:                                         ; preds = %if.else, %if.end.i.i, %if.then65.if.end66_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %state_lock, i32 noundef %call57) #14
  br label %cleanup

if.end68:                                         ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #16
  tail call fastcc void @nvmet_rdma_handle_command(ptr noundef %5, ptr noundef nonnull %retval.1.i)
  br label %cleanup

cleanup:                                          ; preds = %if.end68, %if.end66, %if.then35, %do.end20, %do.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @is_vmalloc_addr(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_driver_string(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @debug_dma_map_single(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_map_page_attrs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @debug_dma_mapping_error(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sg_init_table(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__free_pages(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__alloc_pages(i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid readnone willreturn
declare dso_local ptr @ib_wc_status_msg(i32 noundef) local_unnamed_addr #12

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @nvmet_rdma_error_comp(ptr noundef %queue) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %nvme_sq = getelementptr inbounds %struct.nvmet_rdma_queue, ptr %queue, i32 0, i32 10
  %0 = ptrtoint ptr %nvme_sq to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %nvme_sq, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @nvmet_ctrl_fatal_error(ptr noundef nonnull %1) #14
  br label %if.end

if.else:                                          ; preds = %entry
  tail call void @mutex_lock_nested(ptr noundef nonnull @nvmet_rdma_queue_mutex, i32 noundef 0) #14
  %queue_list.i = getelementptr inbounds %struct.nvmet_rdma_queue, ptr %queue, i32 0, i32 24
  %2 = ptrtoint ptr %queue_list.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile ptr, ptr %queue_list.i, align 4
  %cmp.i.not.i = icmp eq ptr %3, %queue_list.i
  br i1 %cmp.i.not.i, label %if.end4.critedge.i, label %if.then.i

if.then.i:                                        ; preds = %if.else
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %queue_list.i) #14
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.then.i.list_del_init.exit.i_crit_edge

if.then.i.list_del_init.exit.i_crit_edge:         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %list_del_init.exit.i

if.end.i.i.i:                                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #16
  %prev.i.i.i = getelementptr inbounds %struct.nvmet_rdma_queue, ptr %queue, i32 0, i32 24, i32 1
  %4 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %prev.i.i.i, align 4
  %6 = ptrtoint ptr %queue_list.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %queue_list.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %5, ptr %prev1.i.i.i.i, align 4
  %9 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %7, ptr %5, align 4
  br label %list_del_init.exit.i

list_del_init.exit.i:                             ; preds = %if.end.i.i.i, %if.then.i.list_del_init.exit.i_crit_edge
  %10 = ptrtoint ptr %queue_list.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile ptr %queue_list.i, ptr %queue_list.i, align 4
  %prev.i3.i.i = getelementptr inbounds %struct.nvmet_rdma_queue, ptr %queue, i32 0, i32 24, i32 1
  %11 = ptrtoint ptr %prev.i3.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %queue_list.i, ptr %prev.i3.i.i, align 4
  tail call void @mutex_unlock(ptr noundef nonnull @nvmet_rdma_queue_mutex) #14
  tail call fastcc void @__nvmet_rdma_queue_disconnect(ptr noundef %queue) #14
  br label %if.end

if.end4.critedge.i:                               ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @mutex_unlock(ptr noundef nonnull @nvmet_rdma_queue_mutex) #14
  br label %if.end

if.end:                                           ; preds = %if.end4.critedge.i, %list_del_init.exit.i, %if.then
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @nvmet_rdma_handle_command(ptr noundef %queue, ptr noundef %cmd) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.nvmet_rdma_queue, ptr %queue, i32 0, i32 5
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %cmd1 = getelementptr inbounds %struct.nvmet_rdma_rsp, ptr %cmd, i32 0, i32 3
  %4 = ptrtoint ptr %cmd1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %cmd1, align 8
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %5, align 8
  %length = getelementptr inbounds %struct.ib_sge, ptr %5, i32 0, i32 1
  %8 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %length, align 8
  %10 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %3, align 8
  %conv.i = trunc i64 %7 to i32
  tail call void @dma_sync_single_for_cpu(ptr noundef %11, i32 noundef %conv.i, i32 noundef %9, i32 noundef 2) #14
  %12 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev, align 4
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %13, align 4
  %16 = ptrtoint ptr %cmd to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %cmd, align 8
  %length9 = getelementptr inbounds %struct.ib_sge, ptr %cmd, i32 0, i32 1
  %18 = ptrtoint ptr %length9 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %length9, align 8
  %20 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %15, align 8
  %conv.i36 = trunc i64 %17 to i32
  tail call void @dma_sync_single_for_cpu(ptr noundef %21, i32 noundef %conv.i36, i32 noundef %19, i32 noundef 1) #14
  %req = getelementptr inbounds %struct.nvmet_rdma_rsp, ptr %cmd, i32 0, i32 8
  %nvme_cq = getelementptr inbounds %struct.nvmet_rdma_queue, ptr %queue, i32 0, i32 9
  %nvme_sq = getelementptr inbounds %struct.nvmet_rdma_queue, ptr %queue, i32 0, i32 10
  %call = tail call zeroext i1 @nvmet_req_init(ptr noundef %req, ptr noundef %nvme_cq, ptr noundef %nvme_sq, ptr noundef nonnull @nvmet_rdma_ops) #14
  br i1 %call, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %22 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %req, align 8
  %dptr.i = getelementptr inbounds %struct.nvme_common_command, ptr %23, i32 0, i32 6
  %type.i = getelementptr inbounds %struct.nvme_keyed_sgl_desc, ptr %dptr.i, i32 0, i32 3
  %24 = ptrtoint ptr %type.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %type.i, align 1
  %conv.i37 = zext i8 %25 to i32
  %26 = lshr i32 %conv.i37, 4
  %27 = zext i32 %26 to i64
  call void @__sanitizer_cov_trace_switch(i64 %27, ptr @__sancov_gen_cov_switch_values.137)
  switch i32 %26, label %do.end29.i [
    i32 0, label %sw.bb.i
    i32 4, label %sw.bb8.i
  ]

sw.bb.i:                                          ; preds = %if.end
  %and.i = and i32 %conv.i37, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %and.i)
  %cond.i = icmp eq i32 %and.i, 1
  br i1 %cond.i, label %sw.bb3.i, label %do.end.i

sw.bb3.i:                                         ; preds = %sw.bb.i
  %28 = ptrtoint ptr %dptr.i to i32
  call void @__asan_load8_noabort(i32 %28)
  %29 = load i64, ptr %dptr.i, align 8
  %30 = tail call i64 @llvm.bswap.i64(i64 %29) #14
  %length.i.i = getelementptr inbounds %struct.nvme_common_command, ptr %23, i32 0, i32 6, i32 0, i32 1
  %31 = ptrtoint ptr %length.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %length.i.i, align 8
  %33 = tail call i32 @llvm.bswap.i32(i32 %32) #14
  %34 = ptrtoint ptr %23 to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %23, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 127, i8 %35)
  %cmp.i.i.i.i = icmp eq i8 %35, 127
  br i1 %cmp.i.i.i.i, label %if.then.i.i.i, label %sw.bb3.i.nvme_is_write.exit.i.i_crit_edge, !prof !307

sw.bb3.i.nvme_is_write.exit.i.i_crit_edge:        ; preds = %sw.bb3.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %nvme_is_write.exit.i.i

if.then.i.i.i:                                    ; preds = %sw.bb3.i
  call void @__sanitizer_cov_trace_pc() #16
  %fctype.i.i.i = getelementptr inbounds %struct.nvmf_common_command, ptr %23, i32 0, i32 3
  br label %nvme_is_write.exit.i.i

nvme_is_write.exit.i.i:                           ; preds = %if.then.i.i.i, %sw.bb3.i.nvme_is_write.exit.i.i_crit_edge
  %retval.0.in.in.in.i.i.i = phi ptr [ %fctype.i.i.i, %if.then.i.i.i ], [ %23, %sw.bb3.i.nvme_is_write.exit.i.i_crit_edge ]
  %36 = ptrtoint ptr %retval.0.in.in.in.i.i.i to i32
  call void @__asan_load1_noabort(i32 %36)
  %retval.0.in.in.i.i.i = load i8, ptr %retval.0.in.in.in.i.i.i, align 4
  %retval.0.in.i.i.i = and i8 %retval.0.in.in.i.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %retval.0.in.i.i.i)
  %retval.0.i.not.i.i = icmp eq i8 %retval.0.in.i.i.i, 0
  br i1 %retval.0.i.not.i.i, label %if.then.i.i, label %if.end.i.i

if.then.i.i:                                      ; preds = %nvme_is_write.exit.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %error_loc.i.i = getelementptr inbounds %struct.nvmet_rdma_rsp, ptr %cmd, i32 0, i32 8, i32 18
  %37 = ptrtoint ptr %error_loc.i.i to i32
  call void @__asan_store2_noabort(i32 %37)
  store i16 0, ptr %error_loc.i.i, align 4
  br label %out_err

if.end.i.i:                                       ; preds = %nvme_is_write.exit.i.i
  %conv.i.i = zext i32 %33 to i64
  %add.i.i = add i64 %30, %conv.i.i
  %queue.i.i = getelementptr inbounds %struct.nvmet_rdma_rsp, ptr %cmd, i32 0, i32 4
  %38 = ptrtoint ptr %queue.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %queue.i.i, align 4
  %dev.i.i = getelementptr inbounds %struct.nvmet_rdma_queue, ptr %39, i32 0, i32 5
  %40 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %dev.i.i, align 4
  %inline_data_size.i.i = getelementptr inbounds %struct.nvmet_rdma_device, ptr %41, i32 0, i32 7
  %42 = ptrtoint ptr %inline_data_size.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %inline_data_size.i.i, align 4
  %conv4.i.i = sext i32 %43 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %add.i.i, i64 %conv4.i.i)
  %cmp.i.i = icmp ugt i64 %add.i.i, %conv4.i.i
  br i1 %cmp.i.i, label %do.end.i.i, label %if.end8.i.i

do.end.i.i:                                       ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %call7.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.84) #17
  br label %out_err

if.end8.i.i:                                      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %tobool.not.i.i = icmp eq i32 %32, 0
  br i1 %tobool.not.i.i, label %if.end8.i.i.if.end12_crit_edge, label %if.end10.i.i

if.end8.i.i.if.end12_crit_edge:                   ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end12

if.end10.i.i:                                     ; preds = %if.end8.i.i
  %sub.i.i.i.i = add i32 %33, -1
  %shr.i.i.i.i = ashr i32 %sub.i.i.i.i, 12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i.i.i.i)
  %cmp.not36.i.i.i = icmp slt i32 %sub.i.i.i.i, 0
  br i1 %cmp.not36.i.i.i, label %if.end10.i.i.nvmet_rdma_use_inline_sg.exit.i.i_crit_edge, label %for.body.preheader.i.i.i

if.end10.i.i.nvmet_rdma_use_inline_sg.exit.i.i_crit_edge: ; preds = %if.end10.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %nvmet_rdma_use_inline_sg.exit.i.i

for.body.preheader.i.i.i:                         ; preds = %if.end10.i.i
  %extract.t.i.i.i = trunc i64 %30 to i32
  %44 = ptrtoint ptr %cmd1 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %cmd1, align 8
  %inline_sg.i.i.i = getelementptr inbounds %struct.nvmet_rdma_cmd, ptr %45, i32 0, i32 3
  %smax.i.i.i = tail call i32 @llvm.smax.i32(i32 %shr.i.i.i.i, i32 0) #14
  br label %for.body.i.i.i

for.body.i.i.i:                                   ; preds = %for.body.i.i.i.for.body.i.i.i_crit_edge, %for.body.preheader.i.i.i
  %len.addr.040.i.i.i = phi i32 [ %sub7.i.i.i, %for.body.i.i.i.for.body.i.i.i_crit_edge ], [ %33, %for.body.preheader.i.i.i ]
  %i.039.i.i.i = phi i32 [ %inc.i.i.i, %for.body.i.i.i.for.body.i.i.i_crit_edge ], [ 0, %for.body.preheader.i.i.i ]
  %sg.038.i.i.i = phi ptr [ %incdec.ptr.i.i.i, %for.body.i.i.i.for.body.i.i.i_crit_edge ], [ %inline_sg.i.i.i, %for.body.preheader.i.i.i ]
  %off.addr.0.off037.i.i.i = phi i32 [ %off.addr.1.off0.i.i.i, %for.body.i.i.i.for.body.i.i.i_crit_edge ], [ %extract.t.i.i.i, %for.body.preheader.i.i.i ]
  call void @__sanitizer_cov_trace_cmp4(i32 %i.039.i.i.i, i32 %shr.i.i.i.i)
  %cmp1.i.i.i = icmp slt i32 %i.039.i.i.i, %shr.i.i.i.i
  %46 = ptrtoint ptr %sg.038.i.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %sg.038.i.i.i, align 4
  %or.i.i.i.i = and i32 %47, -4
  %and.i35.i.i.i = or i32 %or.i.i.i.i, 2
  %and.i.i.i.i = and i32 %47, -3
  %storemerge.i.i.i = select i1 %cmp1.i.i.i, i32 %and.i.i.i.i, i32 %and.i35.i.i.i
  store i32 %storemerge.i.i.i, ptr %sg.038.i.i.i, align 4
  %offset.i.i.i = getelementptr inbounds %struct.scatterlist, ptr %sg.038.i.i.i, i32 0, i32 1
  %48 = ptrtoint ptr %offset.i.i.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %off.addr.0.off037.i.i.i, ptr %offset.i.i.i, align 4
  %conv3.i.i.i = sub i32 4096, %off.addr.0.off037.i.i.i
  %49 = tail call i32 @llvm.smin.i32(i32 %len.addr.040.i.i.i, i32 %conv3.i.i.i) #14
  %length.i.i.i = getelementptr inbounds %struct.scatterlist, ptr %sg.038.i.i.i, i32 0, i32 2
  %50 = ptrtoint ptr %length.i.i.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %49, ptr %length.i.i.i, align 4
  %sub7.i.i.i = sub i32 %len.addr.040.i.i.i, %49
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.039.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %i.039.i.i.i, 0
  %off.addr.1.off0.i.i.i = select i1 %tobool.not.i.i.i, i32 0, i32 %off.addr.0.off037.i.i.i
  %inc.i.i.i = add nuw nsw i32 %i.039.i.i.i, 1
  %incdec.ptr.i.i.i = getelementptr %struct.scatterlist, ptr %sg.038.i.i.i, i32 1
  %exitcond.not.i.i.i = icmp eq i32 %i.039.i.i.i, %smax.i.i.i
  br i1 %exitcond.not.i.i.i, label %for.body.i.i.i.nvmet_rdma_use_inline_sg.exit.i.i_crit_edge, label %for.body.i.i.i.for.body.i.i.i_crit_edge

for.body.i.i.i.for.body.i.i.i_crit_edge:          ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i.i.i

for.body.i.i.i.nvmet_rdma_use_inline_sg.exit.i.i_crit_edge: ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %nvmet_rdma_use_inline_sg.exit.i.i

nvmet_rdma_use_inline_sg.exit.i.i:                ; preds = %for.body.i.i.i.nvmet_rdma_use_inline_sg.exit.i.i_crit_edge, %if.end10.i.i.nvmet_rdma_use_inline_sg.exit.i.i_crit_edge
  %add.i.i.i.i = add nsw i32 %shr.i.i.i.i, 1
  %51 = ptrtoint ptr %cmd1 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %cmd1, align 8
  %inline_sg11.i.i.i = getelementptr inbounds %struct.nvmet_rdma_cmd, ptr %52, i32 0, i32 3
  %sg13.i.i.i = getelementptr inbounds %struct.nvmet_rdma_rsp, ptr %cmd, i32 0, i32 8, i32 5
  %53 = ptrtoint ptr %sg13.i.i.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr %inline_sg11.i.i.i, ptr %sg13.i.i.i, align 4
  %sg_cnt.i.i.i = getelementptr inbounds %struct.nvmet_rdma_rsp, ptr %cmd, i32 0, i32 8, i32 9
  %54 = ptrtoint ptr %sg_cnt.i.i.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %add.i.i.i.i, ptr %sg_cnt.i.i.i, align 8
  %flags.i.i = getelementptr inbounds %struct.nvmet_rdma_rsp, ptr %cmd, i32 0, i32 11
  %55 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %flags.i.i, align 4
  %or.i.i = or i32 %56, 1
  store i32 %or.i.i, ptr %flags.i.i, align 4
  %transfer_len.i.i = getelementptr inbounds %struct.nvmet_rdma_rsp, ptr %cmd, i32 0, i32 8, i32 11
  %57 = ptrtoint ptr %transfer_len.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %transfer_len.i.i, align 8
  %add12.i.i = add i32 %58, %33
  store i32 %add12.i.i, ptr %transfer_len.i.i, align 8
  br label %if.end12

do.end.i:                                         ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #16
  %call6.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.77, i32 noundef %conv.i37) #17
  %error_loc.i = getelementptr inbounds %struct.nvmet_rdma_rsp, ptr %cmd, i32 0, i32 8, i32 18
  %59 = ptrtoint ptr %error_loc.i to i32
  call void @__asan_store2_noabort(i32 %59)
  store i16 24, ptr %error_loc.i, align 4
  br label %out_err

sw.bb8.i:                                         ; preds = %if.end
  %and11.i = and i32 %conv.i37, 15
  %60 = zext i32 %and11.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %60, ptr @__sancov_gen_cov_switch_values.138)
  switch i32 %and11.i, label %do.end19.i [
    i32 15, label %sw.bb8.i.nvmet_rdma_map_sgl.exit_crit_edge
    i32 0, label %sw.bb14.i
  ]

sw.bb8.i.nvmet_rdma_map_sgl.exit_crit_edge:       ; preds = %sw.bb8.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %nvmet_rdma_map_sgl.exit

sw.bb14.i:                                        ; preds = %sw.bb8.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %nvmet_rdma_map_sgl.exit

do.end19.i:                                       ; preds = %sw.bb8.i
  call void @__sanitizer_cov_trace_pc() #16
  %call23.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.77, i32 noundef %conv.i37) #17
  %error_loc25.i = getelementptr inbounds %struct.nvmet_rdma_rsp, ptr %cmd, i32 0, i32 8, i32 18
  %61 = ptrtoint ptr %error_loc25.i to i32
  call void @__asan_store2_noabort(i32 %61)
  store i16 24, ptr %error_loc25.i, align 4
  br label %out_err

do.end29.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %call33.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.82, i32 noundef %conv.i37) #17
  %error_loc35.i = getelementptr inbounds %struct.nvmet_rdma_rsp, ptr %cmd, i32 0, i32 8, i32 18
  %62 = ptrtoint ptr %error_loc35.i to i32
  call void @__asan_store2_noabort(i32 %62)
  store i16 24, ptr %error_loc35.i, align 4
  br label %out_err

nvmet_rdma_map_sgl.exit:                          ; preds = %sw.bb14.i, %sw.bb8.i.nvmet_rdma_map_sgl.exit_crit_edge
  %.sink = phi i1 [ false, %sw.bb14.i ], [ true, %sw.bb8.i.nvmet_rdma_map_sgl.exit_crit_edge ]
  %call13.i = tail call fastcc zeroext i16 @nvmet_rdma_map_sgl_keyed(ptr noundef %cmd, ptr noundef %dptr.i, i1 noundef zeroext %.sink) #14
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %call13.i)
  %tobool.not = icmp eq i16 %call13.i, 0
  br i1 %tobool.not, label %nvmet_rdma_map_sgl.exit.if.end12_crit_edge, label %nvmet_rdma_map_sgl.exit.out_err_crit_edge

nvmet_rdma_map_sgl.exit.out_err_crit_edge:        ; preds = %nvmet_rdma_map_sgl.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %out_err

nvmet_rdma_map_sgl.exit.if.end12_crit_edge:       ; preds = %nvmet_rdma_map_sgl.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end12

if.end12:                                         ; preds = %nvmet_rdma_map_sgl.exit.if.end12_crit_edge, %nvmet_rdma_use_inline_sg.exit.i.i, %if.end8.i.i.if.end12_crit_edge
  %call13 = tail call fastcc zeroext i1 @nvmet_rdma_execute_command(ptr noundef %cmd)
  br i1 %call13, label %if.end12.cleanup_crit_edge, label %if.then17, !prof !306

if.end12.cleanup_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then17:                                        ; preds = %if.end12
  %rsp_wr_wait_lock = getelementptr inbounds %struct.nvmet_rdma_queue, ptr %queue, i32 0, i32 18
  tail call void @_raw_spin_lock(ptr noundef %rsp_wr_wait_lock) #14
  %wait_list = getelementptr inbounds %struct.nvmet_rdma_rsp, ptr %cmd, i32 0, i32 13
  %rsp_wr_wait_list = getelementptr inbounds %struct.nvmet_rdma_queue, ptr %queue, i32 0, i32 17
  %prev.i = getelementptr inbounds %struct.nvmet_rdma_queue, ptr %queue, i32 0, i32 17, i32 1
  %63 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %wait_list, ptr noundef %64, ptr noundef %rsp_wr_wait_list) #14
  br i1 %call.i.i, label %if.end.i.i38, label %if.then17.list_add_tail.exit_crit_edge

if.then17.list_add_tail.exit_crit_edge:           ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #16
  br label %list_add_tail.exit

if.end.i.i38:                                     ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #16
  %65 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr %wait_list, ptr %prev.i, align 4
  %66 = ptrtoint ptr %wait_list to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr %rsp_wr_wait_list, ptr %wait_list, align 4
  %prev3.i.i = getelementptr inbounds %struct.nvmet_rdma_rsp, ptr %cmd, i32 0, i32 13, i32 1
  %67 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr %64, ptr %prev3.i.i, align 4
  %68 = ptrtoint ptr %64 to i32
  call void @__asan_store4_noabort(i32 %68)
  store volatile ptr %wait_list, ptr %64, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i38, %if.then17.list_add_tail.exit_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %rsp_wr_wait_lock) #14
  br label %cleanup

out_err:                                          ; preds = %nvmet_rdma_map_sgl.exit.out_err_crit_edge, %do.end29.i, %do.end19.i, %do.end.i, %do.end.i.i, %if.then.i.i
  %retval.0.i41 = phi i16 [ %call13.i, %nvmet_rdma_map_sgl.exit.out_err_crit_edge ], [ 16386, %if.then.i.i ], [ 16406, %do.end.i.i ], [ 16386, %do.end.i ], [ 16386, %do.end19.i ], [ 16401, %do.end29.i ]
  tail call void @nvmet_req_complete(ptr noundef %req, i16 noundef zeroext %retval.0.i41) #14
  br label %cleanup

cleanup:                                          ; preds = %out_err, %list_add_tail.exit, %if.end12.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvmet_ctrl_fatal_error(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @nvmet_rdma_alloc_rsp(ptr nocapture noundef readonly %ndev, ptr noundef %r) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3264, i32 noundef 16) #18
  %cqe = getelementptr inbounds %struct.nvmet_rdma_rsp, ptr %r, i32 0, i32 8, i32 1
  %1 = ptrtoint ptr %cqe to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call7.i, ptr %cqe, align 4
  %tobool.not = icmp eq ptr %call7.i, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %return

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %ndev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ndev, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 8
  %call.i.i = tail call zeroext i1 @is_vmalloc_addr(ptr noundef nonnull %call7.i) #14
  br i1 %call.i.i, label %land.rhs.i.i, label %if.end39.i.i

land.rhs.i.i:                                     ; preds = %if.end
  %.b1.i.i = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  br i1 %.b1.i.i, label %land.rhs.i.i.ib_dma_map_single.exit_crit_edge, label %if.then.i.i, !prof !306

land.rhs.i.i.ib_dma_map_single.exit_crit_edge:    ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %ib_dma_map_single.exit

if.then.i.i:                                      ; preds = %land.rhs.i.i
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %call16.i.i = tail call ptr @dev_driver_string(ptr noundef %5) #14
  %init_name.i.i.i = getelementptr inbounds %struct.device, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %init_name.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %init_name.i.i.i, align 8
  %tobool.not.i.i.i = icmp eq ptr %7, null
  br i1 %tobool.not.i.i.i, label %if.end.i.i.i, label %if.then.i.i.dev_name.exit.i.i_crit_edge

if.then.i.i.dev_name.exit.i.i_crit_edge:          ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %dev_name.exit.i.i

if.end.i.i.i:                                     ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %8 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %5, align 4
  br label %dev_name.exit.i.i

dev_name.exit.i.i:                                ; preds = %if.end.i.i.i, %if.then.i.i.dev_name.exit.i.i_crit_edge
  %retval.0.i.i.i = phi ptr [ %9, %if.end.i.i.i ], [ %7, %if.then.i.i.dev_name.exit.i.i_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.56, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.57, ptr noundef %call16.i.i, ptr noundef %retval.0.i.i.i) #14
  br label %ib_dma_map_single.exit

if.end39.i.i:                                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @debug_dma_map_single(ptr noundef %5, ptr noundef nonnull %call7.i, i32 noundef 16) #14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %10 = load ptr, ptr @mem_map, align 4
  %11 = ptrtoint ptr %call7.i to i32
  %sub.i.i = add i32 %11, 1073741824
  %shr.i.i = lshr i32 %sub.i.i, 12
  %add.ptr.i.i = getelementptr %struct.page, ptr %10, i32 %shr.i.i
  %and.i.i = and i32 %11, 4088
  %call41.i.i = tail call i32 @dma_map_page_attrs(ptr noundef %5, ptr noundef %add.ptr.i.i, i32 noundef %and.i.i, i32 noundef 16, i32 noundef 1, i32 noundef 0) #14
  br label %ib_dma_map_single.exit

ib_dma_map_single.exit:                           ; preds = %if.end39.i.i, %dev_name.exit.i.i, %land.rhs.i.i.ib_dma_map_single.exit_crit_edge
  %retval.0.i.i = phi i32 [ %call41.i.i, %if.end39.i.i ], [ -1, %dev_name.exit.i.i ], [ -1, %land.rhs.i.i.ib_dma_map_single.exit_crit_edge ]
  %conv2.i = zext i32 %retval.0.i.i to i64
  %12 = ptrtoint ptr %r to i32
  call void @__asan_store8_noabort(i32 %12)
  store i64 %conv2.i, ptr %r, align 8
  %13 = ptrtoint ptr %ndev to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %ndev, align 4
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %14, align 8
  tail call void @debug_dma_mapping_error(ptr noundef %16, i32 noundef %retval.0.i.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %retval.0.i.i)
  %cmp.i.i = icmp eq i32 %retval.0.i.i, -1
  br i1 %cmp.i.i, label %out_free_rsp, label %if.end12

if.end12:                                         ; preds = %ib_dma_map_single.exit
  call void @__sanitizer_cov_trace_pc() #16
  %17 = ptrtoint ptr %ndev to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %ndev, align 4
  %19 = getelementptr inbounds %struct.ib_device, ptr %18, i32 0, i32 13
  %p2p_client = getelementptr inbounds %struct.nvmet_rdma_rsp, ptr %r, i32 0, i32 8, i32 17
  %20 = ptrtoint ptr %p2p_client to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %19, ptr %p2p_client, align 8
  %length = getelementptr inbounds %struct.ib_sge, ptr %r, i32 0, i32 1
  %21 = ptrtoint ptr %length to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 16, ptr %length, align 8
  %pd = getelementptr inbounds %struct.nvmet_rdma_device, ptr %ndev, i32 0, i32 1
  %22 = ptrtoint ptr %pd to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %pd, align 4
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %23, align 4
  %lkey = getelementptr inbounds %struct.ib_sge, ptr %r, i32 0, i32 2
  %26 = ptrtoint ptr %lkey to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %25, ptr %lkey, align 4
  %send_cqe = getelementptr inbounds %struct.nvmet_rdma_rsp, ptr %r, i32 0, i32 1
  %27 = ptrtoint ptr %send_cqe to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr @nvmet_rdma_send_done, ptr %send_cqe, align 8
  %28 = getelementptr inbounds %struct.nvmet_rdma_rsp, ptr %r, i32 0, i32 2, i32 1
  %29 = ptrtoint ptr %28 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %send_cqe, ptr %28, align 8
  %sg_list = getelementptr inbounds %struct.nvmet_rdma_rsp, ptr %r, i32 0, i32 2, i32 2
  %30 = ptrtoint ptr %sg_list to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %r, ptr %sg_list, align 8
  %num_sge = getelementptr inbounds %struct.nvmet_rdma_rsp, ptr %r, i32 0, i32 2, i32 3
  %31 = ptrtoint ptr %num_sge to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 1, ptr %num_sge, align 4
  %send_flags = getelementptr inbounds %struct.nvmet_rdma_rsp, ptr %r, i32 0, i32 2, i32 5
  %32 = ptrtoint ptr %send_flags to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 2, ptr %send_flags, align 4
  %read_cqe = getelementptr inbounds %struct.nvmet_rdma_rsp, ptr %r, i32 0, i32 5
  %33 = ptrtoint ptr %read_cqe to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr @nvmet_rdma_read_data_done, ptr %read_cqe, align 8
  %write_cqe = getelementptr inbounds %struct.nvmet_rdma_rsp, ptr %r, i32 0, i32 6
  %34 = ptrtoint ptr %write_cqe to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr @nvmet_rdma_write_data_done, ptr %write_cqe, align 4
  br label %return

out_free_rsp:                                     ; preds = %ib_dma_map_single.exit
  call void @__sanitizer_cov_trace_pc() #16
  %35 = ptrtoint ptr %cqe to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %cqe, align 4
  tail call void @kfree(ptr noundef %36) #14
  br label %return

return:                                           ; preds = %out_free_rsp, %if.end12, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %if.end12 ], [ -12, %entry.return_crit_edge ], [ -12, %out_free_rsp ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nvmet_rdma_send_done(ptr nocapture noundef readnone %cq, ptr nocapture noundef readonly %wc) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %wc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %wc, align 8
  %add.ptr = getelementptr i8, ptr %1, i32 -16
  %qp = getelementptr inbounds %struct.ib_wc, ptr %wc, i32 0, i32 5
  %2 = ptrtoint ptr %qp to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %qp, align 8
  %qp_context = getelementptr inbounds %struct.ib_qp, ptr %3, i32 0, i32 16
  %4 = ptrtoint ptr %qp_context to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %qp_context, align 4
  tail call fastcc void @nvmet_rdma_release_rsp(ptr noundef %add.ptr)
  %status = getelementptr inbounds %struct.ib_wc, ptr %wc, i32 0, i32 1
  %6 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %status, align 8
  %8 = zext i32 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.139)
  switch i32 %7, label %do.end [
    i32 5, label %entry.if.end_crit_edge
    i32 0, label %entry.if.end_crit_edge14
  ]

entry.if.end_crit_edge14:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %9 = ptrtoint ptr %wc to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %wc, align 8
  %call = tail call ptr @ib_wc_status_msg(i32 noundef %7) #19
  %call7 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.64, ptr noundef %10, ptr noundef %call, i32 noundef %7) #17
  tail call fastcc void @nvmet_rdma_error_comp(ptr noundef %5)
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge, %entry.if.end_crit_edge14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nvmet_rdma_read_data_done(ptr nocapture noundef readnone %cq, ptr nocapture noundef readonly %wc) #3 align 64 {
entry:
  %mr_status.i = alloca %struct.ib_mr_status, align 8
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %wc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %wc, align 8
  %add.ptr = getelementptr i8, ptr %1, i32 -72
  %qp = getelementptr inbounds %struct.ib_wc, ptr %wc, i32 0, i32 5
  %2 = ptrtoint ptr %qp to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %qp, align 8
  %qp_context = getelementptr inbounds %struct.ib_qp, ptr %3, i32 0, i32 16
  %4 = ptrtoint ptr %qp_context to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %qp_context, align 4
  %n_rdma = getelementptr i8, ptr %1, i32 425
  %6 = ptrtoint ptr %n_rdma to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %n_rdma, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %cmp = icmp eq i8 %7, 0
  br i1 %cmp, label %do.end, label %entry.if.end_crit_edge, !prof !307

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 760, i32 noundef 9, ptr noundef null) #14
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %8 = ptrtoint ptr %n_rdma to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %n_rdma, align 1
  %conv22 = zext i8 %9 to i32
  %sq_wr_avail = getelementptr inbounds %struct.nvmet_rdma_queue, ptr %5, i32 0, i32 4
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %sq_wr_avail, i32 noundef 4) #14
  tail call void @llvm.prefetch.p0(ptr %sq_wr_avail, i32 1, i32 3, i32 1) #14
  %10 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %sq_wr_avail, ptr %sq_wr_avail, i32 %conv22, ptr elementtype(i32) %sq_wr_avail) #14, !srcloc !310
  %11 = ptrtoint ptr %n_rdma to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 0, ptr %n_rdma, align 1
  %status24 = getelementptr inbounds %struct.ib_wc, ptr %wc, i32 0, i32 1
  %12 = ptrtoint ptr %status24 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %status24, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp25.not = icmp eq i32 %13, 0
  br i1 %cmp25.not, label %if.end46, label %if.then33, !prof !306

if.then33:                                        ; preds = %if.end
  tail call fastcc void @nvmet_rdma_rw_ctx_destroy(ptr noundef %add.ptr)
  %req = getelementptr i8, ptr %1, i32 88
  tail call void @nvmet_req_uninit(ptr noundef %req) #14
  tail call fastcc void @nvmet_rdma_release_rsp(ptr noundef %add.ptr)
  %14 = ptrtoint ptr %status24 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %status24, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %15)
  %cmp35.not = icmp eq i32 %15, 5
  br i1 %cmp35.not, label %if.then33.cleanup_crit_edge, label %do.end40

if.then33.cleanup_crit_edge:                      ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

do.end40:                                         ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #16
  %16 = ptrtoint ptr %wc to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %wc, align 8
  %call = tail call ptr @ib_wc_status_msg(i32 noundef %15) #19
  %call44 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.66, ptr noundef %17, ptr noundef %call, i32 noundef %15) #17
  tail call fastcc void @nvmet_rdma_error_comp(ptr noundef %5)
  br label %cleanup

if.end46:                                         ; preds = %if.end
  %req47 = getelementptr i8, ptr %1, i32 88
  %metadata_len = getelementptr i8, ptr %1, i32 388
  %18 = ptrtoint ptr %metadata_len to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %metadata_len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool48.not = icmp eq i32 %19, 0
  br i1 %tobool48.not, label %if.end51.thread, label %if.then49

if.end51.thread:                                  ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #16
  tail call fastcc void @nvmet_rdma_rw_ctx_destroy(ptr noundef %add.ptr)
  br label %if.else

if.then49:                                        ; preds = %if.end46
  %20 = getelementptr i8, ptr %1, i32 16
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %20, align 8
  %mr = getelementptr inbounds %struct.rdma_rw_reg_ctx, ptr %22, i32 0, i32 4
  %23 = ptrtoint ptr %mr to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %mr, align 8
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %mr_status.i) #14
  %25 = call ptr @memset(ptr %mr_status.i, i32 255, i32 40)
  %call.i = call i32 @ib_check_mr_status(ptr noundef %24, i32 noundef 1, ptr noundef nonnull %mr_status.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end51.thread91

if.end51.thread91:                                ; preds = %if.then49
  call void @__sanitizer_cov_trace_pc() #16
  %call1.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.68, i32 noundef %call.i) #17
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %mr_status.i) #14
  call fastcc void @nvmet_rdma_rw_ctx_destroy(ptr noundef %add.ptr)
  br label %if.then59

if.end.i:                                         ; preds = %if.then49
  %26 = ptrtoint ptr %mr_status.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %mr_status.i, align 8
  %and.i = and i32 %27, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool2.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool2.not.i, label %if.end51.thread88, label %if.then3.i, !prof !329

if.end51.thread88:                                ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %mr_status.i) #14
  call fastcc void @nvmet_rdma_rw_ctx_destroy(ptr noundef %add.ptr)
  br label %if.else

if.then3.i:                                       ; preds = %if.end.i
  %sig_err.i = getelementptr inbounds %struct.ib_mr_status, ptr %mr_status.i, i32 0, i32 1
  %28 = ptrtoint ptr %sig_err.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %sig_err.i, align 8
  %30 = zext i32 %29 to i64
  call void @__sanitizer_cov_trace_switch(i64 %30, ptr @__sancov_gen_cov_switch_values.140)
  switch i32 %29, label %if.then3.i.if.end51_crit_edge [
    i32 0, label %sw.bb.i
    i32 1, label %sw.bb4.i
    i32 2, label %sw.bb5.i
  ]

if.then3.i.if.end51_crit_edge:                    ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end51

sw.bb.i:                                          ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end51

sw.bb4.i:                                         ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end51

sw.bb5.i:                                         ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end51

if.end51:                                         ; preds = %sw.bb5.i, %sw.bb4.i, %sw.bb.i, %if.then3.i.if.end51_crit_edge
  %tobool52.not = phi i1 [ true, %if.then3.i.if.end51_crit_edge ], [ false, %sw.bb.i ], [ false, %sw.bb4.i ], [ false, %sw.bb5.i ]
  %status.0.i = phi i16 [ 0, %if.then3.i.if.end51_crit_edge ], [ 642, %sw.bb.i ], [ 644, %sw.bb4.i ], [ 643, %sw.bb5.i ]
  %expected.i = getelementptr inbounds %struct.ib_mr_status, ptr %mr_status.i, i32 0, i32 1, i32 1
  %31 = ptrtoint ptr %expected.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %expected.i, align 4
  %actual.i = getelementptr inbounds %struct.ib_mr_status, ptr %mr_status.i, i32 0, i32 1, i32 2
  %33 = ptrtoint ptr %actual.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %actual.i, align 8
  %call14.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.71, i32 noundef %29, i32 noundef %32, i32 noundef %34) #17
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %mr_status.i) #14
  call fastcc void @nvmet_rdma_rw_ctx_destroy(ptr noundef %add.ptr)
  br i1 %tobool52.not, label %if.end51.if.else_crit_edge, label %if.end51.if.then59_crit_edge, !prof !306

if.end51.if.then59_crit_edge:                     ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then59

if.end51.if.else_crit_edge:                       ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.else

if.then59:                                        ; preds = %if.end51.if.then59_crit_edge, %if.end51.thread91
  %retval.0.i94 = phi i16 [ 385, %if.end51.thread91 ], [ %status.0.i, %if.end51.if.then59_crit_edge ]
  call void @nvmet_req_complete(ptr noundef %req47, i16 noundef zeroext %retval.0.i94) #14
  br label %cleanup

if.else:                                          ; preds = %if.end51.if.else_crit_edge, %if.end51.thread88, %if.end51.thread
  %execute = getelementptr i8, ptr %1, i32 396
  %35 = ptrtoint ptr %execute to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %execute, align 4
  call void %36(ptr noundef %req47) #14
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then59, %do.end40, %if.then33.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nvmet_rdma_write_data_done(ptr nocapture noundef readnone %cq, ptr nocapture noundef readonly %wc) #3 align 64 {
entry:
  %dummy.i = alloca ptr, align 4
  %mr_status.i = alloca %struct.ib_mr_status, align 8
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %wc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %wc, align 8
  %add.ptr = getelementptr i8, ptr %1, i32 -76
  %qp = getelementptr inbounds %struct.ib_wc, ptr %wc, i32 0, i32 5
  %2 = ptrtoint ptr %qp to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %qp, align 8
  %qp_context = getelementptr inbounds %struct.ib_qp, ptr %3, i32 0, i32 16
  %4 = ptrtoint ptr %qp_context to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %qp_context, align 4
  %queue1 = getelementptr i8, ptr %1, i32 -8
  %6 = ptrtoint ptr %queue1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %queue1, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 4
  %n_rdma = getelementptr i8, ptr %1, i32 421
  %10 = ptrtoint ptr %n_rdma to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %n_rdma, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %cmp = icmp eq i8 %11, 0
  br i1 %cmp, label %do.end, label %entry.if.end_crit_edge, !prof !307

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 797, i32 noundef 9, ptr noundef null) #14
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %12 = ptrtoint ptr %n_rdma to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %n_rdma, align 1
  %conv24 = zext i8 %13 to i32
  %sq_wr_avail = getelementptr inbounds %struct.nvmet_rdma_queue, ptr %5, i32 0, i32 4
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %sq_wr_avail, i32 noundef 4) #14
  tail call void @llvm.prefetch.p0(ptr %sq_wr_avail, i32 1, i32 3, i32 1) #14
  %14 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %sq_wr_avail, ptr %sq_wr_avail, i32 %conv24, ptr elementtype(i32) %sq_wr_avail) #14, !srcloc !310
  %15 = ptrtoint ptr %n_rdma to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 0, ptr %n_rdma, align 1
  %status26 = getelementptr inbounds %struct.ib_wc, ptr %wc, i32 0, i32 1
  %16 = ptrtoint ptr %status26 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %status26, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %cmp27.not = icmp eq i32 %17, 0
  br i1 %cmp27.not, label %if.end48, label %if.then35, !prof !306

if.then35:                                        ; preds = %if.end
  tail call fastcc void @nvmet_rdma_rw_ctx_destroy(ptr noundef %add.ptr)
  %req = getelementptr i8, ptr %1, i32 84
  tail call void @nvmet_req_uninit(ptr noundef %req) #14
  tail call fastcc void @nvmet_rdma_release_rsp(ptr noundef %add.ptr)
  %18 = ptrtoint ptr %status26 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %status26, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %19)
  %cmp37.not = icmp eq i32 %19, 5
  br i1 %cmp37.not, label %if.then35.cleanup_crit_edge, label %do.end42

if.then35.cleanup_crit_edge:                      ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

do.end42:                                         ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #16
  %call = tail call ptr @ib_wc_status_msg(i32 noundef %19) #19
  %call46 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.73, ptr noundef %call, i32 noundef %19) #17
  tail call fastcc void @nvmet_rdma_error_comp(ptr noundef %5)
  br label %cleanup

if.end48:                                         ; preds = %if.end
  %20 = getelementptr i8, ptr %1, i32 12
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %20, align 8
  %mr = getelementptr inbounds %struct.rdma_rw_reg_ctx, ptr %22, i32 0, i32 4
  %23 = ptrtoint ptr %mr to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %mr, align 8
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %mr_status.i) #14
  %25 = call ptr @memset(ptr %mr_status.i, i32 255, i32 40)
  %call.i = call i32 @ib_check_mr_status(ptr noundef %24, i32 noundef 1, ptr noundef nonnull %mr_status.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %nvmet_rdma_check_pi_status.exit.thread104

nvmet_rdma_check_pi_status.exit.thread104:        ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #16
  %call1.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.68, i32 noundef %call.i) #17
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %mr_status.i) #14
  br label %if.then57

if.end.i:                                         ; preds = %if.end48
  %26 = ptrtoint ptr %mr_status.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %mr_status.i, align 8
  %and.i = and i32 %27, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool2.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool2.not.i, label %nvmet_rdma_check_pi_status.exit.thread, label %if.then3.i, !prof !329

nvmet_rdma_check_pi_status.exit.thread:           ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %mr_status.i) #14
  br label %if.end62

if.then3.i:                                       ; preds = %if.end.i
  %sig_err.i = getelementptr inbounds %struct.ib_mr_status, ptr %mr_status.i, i32 0, i32 1
  %28 = ptrtoint ptr %sig_err.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %sig_err.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %29)
  %30 = icmp ult i32 %29, 3
  br i1 %30, label %switch.lookup, label %nvmet_rdma_check_pi_status.exit

switch.lookup:                                    ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #16
  %switch.gep = getelementptr inbounds [3 x i16], ptr @switch.table.nvmet_rdma_write_data_done, i32 0, i32 %29
  %31 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load2_noabort(i32 %31)
  %switch.load = load i16, ptr %switch.gep, align 2
  %expected.i111 = getelementptr inbounds %struct.ib_mr_status, ptr %mr_status.i, i32 0, i32 1, i32 1
  %32 = ptrtoint ptr %expected.i111 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %expected.i111, align 4
  %actual.i112 = getelementptr inbounds %struct.ib_mr_status, ptr %mr_status.i, i32 0, i32 1, i32 2
  %34 = ptrtoint ptr %actual.i112 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %actual.i112, align 8
  %call14.i113 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.71, i32 noundef %29, i32 noundef %33, i32 noundef %35) #17
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %mr_status.i) #14
  br label %if.then57

nvmet_rdma_check_pi_status.exit:                  ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #16
  %expected.i = getelementptr inbounds %struct.ib_mr_status, ptr %mr_status.i, i32 0, i32 1, i32 1
  %36 = ptrtoint ptr %expected.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %expected.i, align 4
  %actual.i = getelementptr inbounds %struct.ib_mr_status, ptr %mr_status.i, i32 0, i32 1, i32 2
  %38 = ptrtoint ptr %actual.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %actual.i, align 8
  %call14.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.71, i32 noundef %29, i32 noundef %37, i32 noundef %39) #17
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %mr_status.i) #14
  br label %if.end62

if.then57:                                        ; preds = %switch.lookup, %nvmet_rdma_check_pi_status.exit.thread104
  %retval.0.i107 = phi i16 [ 770, %nvmet_rdma_check_pi_status.exit.thread104 ], [ %switch.load, %switch.lookup ]
  %40 = call i16 @llvm.bswap.i16(i16 %retval.0.i107)
  %cqe = getelementptr i8, ptr %1, i32 88
  %41 = ptrtoint ptr %cqe to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %cqe, align 4
  %status61 = getelementptr inbounds %struct.nvme_completion, ptr %42, i32 0, i32 4
  %43 = ptrtoint ptr %status61 to i32
  call void @__asan_store2_noabort(i32 %43)
  store i16 %40, ptr %status61, align 2
  br label %if.end62

if.end62:                                         ; preds = %if.then57, %nvmet_rdma_check_pi_status.exit, %nvmet_rdma_check_pi_status.exit.thread
  call fastcc void @nvmet_rdma_rw_ctx_destroy(ptr noundef %add.ptr)
  %qp63 = getelementptr inbounds %struct.rdma_cm_id, ptr %9, i32 0, i32 2
  %44 = ptrtoint ptr %qp63 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %qp63, align 4
  %send_wr = getelementptr i8, ptr %1, i32 -52
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %dummy.i) #14
  %46 = ptrtoint ptr %dummy.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr inttoptr (i32 -1 to ptr), ptr %dummy.i, align 4, !annotation !308
  %47 = ptrtoint ptr %45 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %45, align 4
  %post_send.i = getelementptr inbounds %struct.ib_device, ptr %48, i32 0, i32 1, i32 6
  %49 = ptrtoint ptr %post_send.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %post_send.i, align 4
  %call.i101 = call i32 %50(ptr noundef %45, ptr noundef %send_wr, ptr noundef nonnull %dummy.i) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dummy.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i101)
  %tobool65.not = icmp eq i32 %call.i101, 0
  br i1 %tobool65.not, label %if.end62.cleanup_crit_edge, label %do.end75, !prof !306

if.end62.cleanup_crit_edge:                       ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

do.end75:                                         ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #16
  %call77 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1) #17
  call fastcc void @nvmet_rdma_release_rsp(ptr noundef %add.ptr)
  br label %cleanup

cleanup:                                          ; preds = %do.end75, %if.end62.cleanup_crit_edge, %do.end42, %if.then35.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvmet_req_uninit(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ib_check_mr_status(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @nvmet_req_init(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_sync_single_for_cpu(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i16 @nvmet_rdma_map_sgl_keyed(ptr noundef %rsp, ptr nocapture noundef readonly %sgl, i1 noundef zeroext %invalidate) unnamed_addr #3 align 64 {
entry:
  %sig_attrs = alloca %struct.ib_sig_attrs, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %sgl to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %sgl, align 8
  %2 = tail call i64 @llvm.bswap.i64(i64 %1)
  %key2 = getelementptr inbounds %struct.nvme_keyed_sgl_desc, ptr %sgl, i32 0, i32 2
  %3 = ptrtoint ptr %key2 to i32
  call void @__asan_loadN_noabort(i32 %3, i32 4)
  %4 = load i32, ptr %key2, align 1
  %5 = tail call i32 @llvm.bswap.i32(i32 %4) #14
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %sig_attrs) #14
  %6 = call ptr @memset(ptr %sig_attrs, i32 255, i32 64)
  %length = getelementptr inbounds %struct.nvme_keyed_sgl_desc, ptr %sgl, i32 0, i32 1
  %7 = ptrtoint ptr %length to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %length, align 1
  %conv.i.i = zext i8 %8 to i32
  %arrayidx1.i.i = getelementptr %struct.nvme_keyed_sgl_desc, ptr %sgl, i32 0, i32 1, i32 1
  %9 = ptrtoint ptr %arrayidx1.i.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %arrayidx1.i.i, align 1
  %conv2.i.i = zext i8 %10 to i32
  %shl.i.i = shl nuw nsw i32 %conv2.i.i, 8
  %or.i.i = or i32 %shl.i.i, %conv.i.i
  %arrayidx3.i.i = getelementptr %struct.nvme_keyed_sgl_desc, ptr %sgl, i32 0, i32 1, i32 2
  %11 = ptrtoint ptr %arrayidx3.i.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %arrayidx3.i.i, align 1
  %conv4.i.i = zext i8 %12 to i32
  %shl5.i.i = shl nuw nsw i32 %conv4.i.i, 16
  %or6.i.i = or i32 %or.i.i, %shl5.i.i
  %req = getelementptr inbounds %struct.nvmet_rdma_rsp, ptr %rsp, i32 0, i32 8
  %transfer_len = getelementptr inbounds %struct.nvmet_rdma_rsp, ptr %rsp, i32 0, i32 8, i32 11
  %13 = ptrtoint ptr %transfer_len to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %or6.i.i, ptr %transfer_len, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or6.i.i)
  %tobool.not = icmp eq i32 %or6.i.i, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %metadata_len = getelementptr inbounds %struct.nvmet_rdma_rsp, ptr %rsp, i32 0, i32 8, i32 12
  %14 = ptrtoint ptr %metadata_len to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %metadata_len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool8.not = icmp eq i32 %15, 0
  br i1 %tobool8.not, label %if.end.if.end11_crit_edge, label %if.then9

if.end.if.end11_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end11

if.then9:                                         ; preds = %if.end
  %16 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %req, align 8
  %control2.i = getelementptr inbounds %struct.nvme_rw_command, ptr %17, i32 0, i32 9
  %18 = ptrtoint ptr %control2.i to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %control2.i, align 2
  %20 = tail call i16 @llvm.bswap.i16(i16 %19) #14
  %ns.i = getelementptr inbounds %struct.nvmet_rdma_rsp, ptr %rsp, i32 0, i32 8, i32 4
  %21 = ptrtoint ptr %ns.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %ns.i, align 8
  %pi_type3.i = getelementptr inbounds %struct.nvmet_ns, ptr %22, i32 0, i32 21
  %23 = ptrtoint ptr %pi_type3.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %pi_type3.i, align 8
  %conv.i = trunc i32 %24 to i8
  %bdev.i = getelementptr inbounds %struct.nvmet_ns, ptr %22, i32 0, i32 1
  %25 = ptrtoint ptr %bdev.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %bdev.i, align 8
  %bd_disk.i.i = getelementptr inbounds %struct.block_device, ptr %26, i32 0, i32 17
  %27 = ptrtoint ptr %bd_disk.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %bd_disk.i.i, align 8
  %queue.i.i.i = getelementptr inbounds %struct.gendisk, ptr %28, i32 0, i32 9
  %29 = ptrtoint ptr %queue.i.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %queue.i.i.i, align 4
  %integrity.i.i.i = getelementptr inbounds %struct.request_queue, ptr %30, i32 0, i32 18
  %31 = ptrtoint ptr %integrity.i.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %integrity.i.i.i, align 4
  %tobool.not.i.i.i = icmp eq ptr %32, null
  %.integrity.i.i.i = select i1 %tobool.not.i.i.i, ptr null, ptr %integrity.i.i.i
  %33 = call ptr @memset(ptr %sig_attrs, i32 0, i32 64)
  %34 = and i16 %20, 8192
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %34)
  %tobool.not.i = icmp eq i16 %34, 0
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %if.then9
  %mem.i = getelementptr inbounds %struct.ib_sig_attrs, ptr %sig_attrs, i32 0, i32 1
  %35 = ptrtoint ptr %mem.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 1, ptr %mem.i, align 4
  %interval_exp.i.i = getelementptr inbounds %struct.blk_integrity, ptr %.integrity.i.i.i, i32 0, i32 3
  %36 = ptrtoint ptr %interval_exp.i.i to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %interval_exp.i.i, align 2
  %conv.i.i51 = zext i8 %37 to i32
  %shl.i.i52 = shl nuw i32 1, %conv.i.i51
  %conv1.i.i = trunc i32 %shl.i.i52 to i16
  %pi_interval.i.i = getelementptr inbounds %struct.ib_sig_attrs, ptr %sig_attrs, i32 0, i32 1, i32 1, i32 0, i32 1
  %38 = ptrtoint ptr %pi_interval.i.i to i32
  call void @__asan_store2_noabort(i32 %38)
  store i16 %conv1.i.i, ptr %pi_interval.i.i, align 4
  %reftag.i.i = getelementptr inbounds %struct.nvme_rw_command, ptr %17, i32 0, i32 11
  %39 = ptrtoint ptr %reftag.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %reftag.i.i, align 8
  %41 = tail call i32 @llvm.bswap.i32(i32 %40) #14
  %ref_tag.i.i = getelementptr inbounds %struct.ib_sig_attrs, ptr %sig_attrs, i32 0, i32 1, i32 1, i32 0, i32 4
  %42 = ptrtoint ptr %ref_tag.i.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %41, ptr %ref_tag.i.i, align 4
  %43 = and i16 %20, 1024
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %43)
  %tobool.not.i.i = icmp eq i16 %43, 0
  br i1 %tobool.not.i.i, label %if.then.i.if.end.i.i_crit_edge, label %if.then.i.i

if.then.i.if.end.i.i_crit_edge:                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.i.i

if.then.i.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #16
  %ref_remap.i.i = getelementptr inbounds %struct.ib_sig_attrs, ptr %sig_attrs, i32 0, i32 1, i32 1, i32 0, i32 5
  %44 = ptrtoint ptr %ref_remap.i.i to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 1, ptr %ref_remap.i.i, align 4
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i.i, %if.then.i.if.end.i.i_crit_edge
  %apptag.i.i = getelementptr inbounds %struct.nvme_rw_command, ptr %17, i32 0, i32 12
  %45 = ptrtoint ptr %apptag.i.i to i32
  call void @__asan_load2_noabort(i32 %45)
  %46 = load i16, ptr %apptag.i.i, align 4
  %47 = tail call i16 @llvm.bswap.i16(i16 %46) #14
  %app_tag.i.i = getelementptr inbounds %struct.ib_sig_attrs, ptr %sig_attrs, i32 0, i32 1, i32 1, i32 0, i32 3
  %48 = ptrtoint ptr %app_tag.i.i to i32
  call void @__asan_store2_noabort(i32 %48)
  store i16 %47, ptr %app_tag.i.i, align 4
  %appmask.i.i = getelementptr inbounds %struct.nvme_rw_command, ptr %17, i32 0, i32 13
  %49 = ptrtoint ptr %appmask.i.i to i32
  call void @__asan_load2_noabort(i32 %49)
  %50 = load i16, ptr %appmask.i.i, align 2
  %51 = tail call i16 @llvm.bswap.i16(i16 %50) #14
  %apptag_check_mask.i.i = getelementptr inbounds %struct.ib_sig_attrs, ptr %sig_attrs, i32 0, i32 1, i32 1, i32 0, i32 8
  %52 = ptrtoint ptr %apptag_check_mask.i.i to i32
  call void @__asan_store2_noabort(i32 %52)
  store i16 %51, ptr %apptag_check_mask.i.i, align 4
  %app_escape.i.i = getelementptr inbounds %struct.ib_sig_attrs, ptr %sig_attrs, i32 0, i32 1, i32 1, i32 0, i32 6
  %53 = ptrtoint ptr %app_escape.i.i to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 1, ptr %app_escape.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %conv.i)
  %cmp.i.i = icmp eq i8 %conv.i, 3
  br i1 %cmp.i.i, label %if.then11.i.i, label %if.end.i.i.nvmet_rdma_set_sig_domain.exit.i_crit_edge

if.end.i.i.nvmet_rdma_set_sig_domain.exit.i_crit_edge: ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %nvmet_rdma_set_sig_domain.exit.i

if.then11.i.i:                                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %ref_escape.i.i = getelementptr inbounds %struct.ib_sig_attrs, ptr %sig_attrs, i32 0, i32 1, i32 1, i32 0, i32 7
  %54 = ptrtoint ptr %ref_escape.i.i to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 1, ptr %ref_escape.i.i, align 2
  br label %nvmet_rdma_set_sig_domain.exit.i

nvmet_rdma_set_sig_domain.exit.i:                 ; preds = %if.then11.i.i, %if.end.i.i.nvmet_rdma_set_sig_domain.exit.i_crit_edge
  %and7.i = and i16 %20, -8193
  %55 = tail call i16 @llvm.bswap.i16(i16 %and7.i) #14
  %56 = ptrtoint ptr %control2.i to i32
  call void @__asan_store2_noabort(i32 %56)
  store i16 %55, ptr %control2.i, align 2
  %57 = ptrtoint ptr %metadata_len to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %metadata_len, align 4
  %59 = ptrtoint ptr %transfer_len to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %transfer_len, align 8
  %add.i = add i32 %60, %58
  store i32 %add.i, ptr %transfer_len, align 8
  br label %if.end.i

if.else.i:                                        ; preds = %if.then9
  %wire10.i = getelementptr inbounds %struct.ib_sig_attrs, ptr %sig_attrs, i32 0, i32 2
  %61 = ptrtoint ptr %wire10.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 1, ptr %wire10.i, align 4
  %interval_exp.i65.i = getelementptr inbounds %struct.blk_integrity, ptr %.integrity.i.i.i, i32 0, i32 3
  %62 = ptrtoint ptr %interval_exp.i65.i to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %interval_exp.i65.i, align 2
  %conv.i66.i = zext i8 %63 to i32
  %shl.i67.i = shl nuw i32 1, %conv.i66.i
  %conv1.i68.i = trunc i32 %shl.i67.i to i16
  %pi_interval.i69.i = getelementptr inbounds %struct.ib_sig_attrs, ptr %sig_attrs, i32 0, i32 2, i32 1, i32 0, i32 1
  %64 = ptrtoint ptr %pi_interval.i69.i to i32
  call void @__asan_store2_noabort(i32 %64)
  store i16 %conv1.i68.i, ptr %pi_interval.i69.i, align 4
  %reftag.i70.i = getelementptr inbounds %struct.nvme_rw_command, ptr %17, i32 0, i32 11
  %65 = ptrtoint ptr %reftag.i70.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %reftag.i70.i, align 8
  %67 = tail call i32 @llvm.bswap.i32(i32 %66) #14
  %ref_tag.i71.i = getelementptr inbounds %struct.ib_sig_attrs, ptr %sig_attrs, i32 0, i32 2, i32 1, i32 0, i32 4
  %68 = ptrtoint ptr %ref_tag.i71.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 %67, ptr %ref_tag.i71.i, align 4
  %69 = and i16 %20, 1024
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %69)
  %tobool.not.i72.i = icmp eq i16 %69, 0
  br i1 %tobool.not.i72.i, label %if.else.i.if.end.i81.i_crit_edge, label %if.then.i74.i

if.else.i.if.end.i81.i_crit_edge:                 ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.i81.i

if.then.i74.i:                                    ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #16
  %ref_remap.i73.i = getelementptr inbounds %struct.ib_sig_attrs, ptr %sig_attrs, i32 0, i32 2, i32 1, i32 0, i32 5
  %70 = ptrtoint ptr %ref_remap.i73.i to i32
  call void @__asan_store1_noabort(i32 %70)
  store i8 1, ptr %ref_remap.i73.i, align 4
  br label %if.end.i81.i

if.end.i81.i:                                     ; preds = %if.then.i74.i, %if.else.i.if.end.i81.i_crit_edge
  %apptag.i75.i = getelementptr inbounds %struct.nvme_rw_command, ptr %17, i32 0, i32 12
  %71 = ptrtoint ptr %apptag.i75.i to i32
  call void @__asan_load2_noabort(i32 %71)
  %72 = load i16, ptr %apptag.i75.i, align 4
  %73 = tail call i16 @llvm.bswap.i16(i16 %72) #14
  %app_tag.i76.i = getelementptr inbounds %struct.ib_sig_attrs, ptr %sig_attrs, i32 0, i32 2, i32 1, i32 0, i32 3
  %74 = ptrtoint ptr %app_tag.i76.i to i32
  call void @__asan_store2_noabort(i32 %74)
  store i16 %73, ptr %app_tag.i76.i, align 4
  %appmask.i77.i = getelementptr inbounds %struct.nvme_rw_command, ptr %17, i32 0, i32 13
  %75 = ptrtoint ptr %appmask.i77.i to i32
  call void @__asan_load2_noabort(i32 %75)
  %76 = load i16, ptr %appmask.i77.i, align 2
  %77 = tail call i16 @llvm.bswap.i16(i16 %76) #14
  %apptag_check_mask.i78.i = getelementptr inbounds %struct.ib_sig_attrs, ptr %sig_attrs, i32 0, i32 2, i32 1, i32 0, i32 8
  %78 = ptrtoint ptr %apptag_check_mask.i78.i to i32
  call void @__asan_store2_noabort(i32 %78)
  store i16 %77, ptr %apptag_check_mask.i78.i, align 4
  %app_escape.i79.i = getelementptr inbounds %struct.ib_sig_attrs, ptr %sig_attrs, i32 0, i32 2, i32 1, i32 0, i32 6
  %79 = ptrtoint ptr %app_escape.i79.i to i32
  call void @__asan_store1_noabort(i32 %79)
  store i8 1, ptr %app_escape.i79.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %conv.i)
  %cmp.i80.i = icmp eq i8 %conv.i, 3
  br i1 %cmp.i80.i, label %if.then11.i83.i, label %if.end.i81.i.nvmet_rdma_set_sig_domain.exit84.i_crit_edge

if.end.i81.i.nvmet_rdma_set_sig_domain.exit84.i_crit_edge: ; preds = %if.end.i81.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %nvmet_rdma_set_sig_domain.exit84.i

if.then11.i83.i:                                  ; preds = %if.end.i81.i
  call void @__sanitizer_cov_trace_pc() #16
  %ref_escape.i82.i = getelementptr inbounds %struct.ib_sig_attrs, ptr %sig_attrs, i32 0, i32 2, i32 1, i32 0, i32 7
  %80 = ptrtoint ptr %ref_escape.i82.i to i32
  call void @__asan_store1_noabort(i32 %80)
  store i8 1, ptr %ref_escape.i82.i, align 2
  br label %nvmet_rdma_set_sig_domain.exit84.i

nvmet_rdma_set_sig_domain.exit84.i:               ; preds = %if.then11.i83.i, %if.end.i81.i.nvmet_rdma_set_sig_domain.exit84.i_crit_edge
  %mem11.i = getelementptr inbounds %struct.ib_sig_attrs, ptr %sig_attrs, i32 0, i32 1
  %81 = ptrtoint ptr %mem11.i to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 1, ptr %mem11.i, align 4
  %sig.i85.i = getelementptr inbounds %struct.ib_sig_attrs, ptr %sig_attrs, i32 0, i32 1, i32 1
  %82 = ptrtoint ptr %sig.i85.i to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 0, ptr %sig.i85.i, align 4
  %83 = ptrtoint ptr %interval_exp.i65.i to i32
  call void @__asan_load1_noabort(i32 %83)
  %84 = load i8, ptr %interval_exp.i65.i, align 2
  %conv.i87.i = zext i8 %84 to i32
  %shl.i88.i = shl nuw i32 1, %conv.i87.i
  %conv1.i89.i = trunc i32 %shl.i88.i to i16
  %pi_interval.i90.i = getelementptr inbounds %struct.ib_sig_attrs, ptr %sig_attrs, i32 0, i32 1, i32 1, i32 0, i32 1
  %85 = ptrtoint ptr %pi_interval.i90.i to i32
  call void @__asan_store2_noabort(i32 %85)
  store i16 %conv1.i89.i, ptr %pi_interval.i90.i, align 4
  %86 = ptrtoint ptr %reftag.i70.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %reftag.i70.i, align 8
  %88 = tail call i32 @llvm.bswap.i32(i32 %87) #14
  %ref_tag.i92.i = getelementptr inbounds %struct.ib_sig_attrs, ptr %sig_attrs, i32 0, i32 1, i32 1, i32 0, i32 4
  %89 = ptrtoint ptr %ref_tag.i92.i to i32
  call void @__asan_store4_noabort(i32 %89)
  store i32 %88, ptr %ref_tag.i92.i, align 4
  br i1 %tobool.not.i72.i, label %nvmet_rdma_set_sig_domain.exit84.i.if.end.i102.i_crit_edge, label %if.then.i95.i

nvmet_rdma_set_sig_domain.exit84.i.if.end.i102.i_crit_edge: ; preds = %nvmet_rdma_set_sig_domain.exit84.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.i102.i

if.then.i95.i:                                    ; preds = %nvmet_rdma_set_sig_domain.exit84.i
  call void @__sanitizer_cov_trace_pc() #16
  %ref_remap.i94.i = getelementptr inbounds %struct.ib_sig_attrs, ptr %sig_attrs, i32 0, i32 1, i32 1, i32 0, i32 5
  %90 = ptrtoint ptr %ref_remap.i94.i to i32
  call void @__asan_store1_noabort(i32 %90)
  store i8 1, ptr %ref_remap.i94.i, align 4
  br label %if.end.i102.i

if.end.i102.i:                                    ; preds = %if.then.i95.i, %nvmet_rdma_set_sig_domain.exit84.i.if.end.i102.i_crit_edge
  %91 = ptrtoint ptr %apptag.i75.i to i32
  call void @__asan_load2_noabort(i32 %91)
  %92 = load i16, ptr %apptag.i75.i, align 4
  %93 = tail call i16 @llvm.bswap.i16(i16 %92) #14
  %app_tag.i97.i = getelementptr inbounds %struct.ib_sig_attrs, ptr %sig_attrs, i32 0, i32 1, i32 1, i32 0, i32 3
  %94 = ptrtoint ptr %app_tag.i97.i to i32
  call void @__asan_store2_noabort(i32 %94)
  store i16 %93, ptr %app_tag.i97.i, align 4
  %95 = ptrtoint ptr %appmask.i77.i to i32
  call void @__asan_load2_noabort(i32 %95)
  %96 = load i16, ptr %appmask.i77.i, align 2
  %97 = tail call i16 @llvm.bswap.i16(i16 %96) #14
  %apptag_check_mask.i99.i = getelementptr inbounds %struct.ib_sig_attrs, ptr %sig_attrs, i32 0, i32 1, i32 1, i32 0, i32 8
  %98 = ptrtoint ptr %apptag_check_mask.i99.i to i32
  call void @__asan_store2_noabort(i32 %98)
  store i16 %97, ptr %apptag_check_mask.i99.i, align 4
  %app_escape.i100.i = getelementptr inbounds %struct.ib_sig_attrs, ptr %sig_attrs, i32 0, i32 1, i32 1, i32 0, i32 6
  %99 = ptrtoint ptr %app_escape.i100.i to i32
  call void @__asan_store1_noabort(i32 %99)
  store i8 1, ptr %app_escape.i100.i, align 1
  br i1 %cmp.i80.i, label %if.then11.i104.i, label %if.end.i102.i.if.end.i_crit_edge

if.end.i102.i.if.end.i_crit_edge:                 ; preds = %if.end.i102.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.i

if.then11.i104.i:                                 ; preds = %if.end.i102.i
  call void @__sanitizer_cov_trace_pc() #16
  %ref_escape.i103.i = getelementptr inbounds %struct.ib_sig_attrs, ptr %sig_attrs, i32 0, i32 1, i32 1, i32 0, i32 7
  %100 = ptrtoint ptr %ref_escape.i103.i to i32
  call void @__asan_store1_noabort(i32 %100)
  store i8 1, ptr %ref_escape.i103.i, align 2
  br label %if.end.i

if.end.i:                                         ; preds = %if.then11.i104.i, %if.end.i102.i.if.end.i_crit_edge, %nvmet_rdma_set_sig_domain.exit.i
  %control.0.i = phi i16 [ %and7.i, %nvmet_rdma_set_sig_domain.exit.i ], [ %20, %if.end.i102.i.if.end.i_crit_edge ], [ %20, %if.then11.i104.i ]
  %conv12.i = zext i16 %control.0.i to i32
  %and13.i = and i32 %conv12.i, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13.i)
  %tobool14.not.i = icmp eq i32 %and13.i, 0
  br i1 %tobool14.not.i, label %if.end.i.if.end18.i_crit_edge, label %if.then15.i

if.end.i.if.end18.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end18.i

if.then15.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  %101 = ptrtoint ptr %sig_attrs to i32
  call void @__asan_load1_noabort(i32 %101)
  %102 = load i8, ptr %sig_attrs, align 4
  %103 = or i8 %102, 15
  store i8 %103, ptr %sig_attrs, align 4
  br label %if.end18.i

if.end18.i:                                       ; preds = %if.then15.i, %if.end.i.if.end18.i_crit_edge
  %and20.i = and i32 %conv12.i, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and20.i)
  %tobool21.not.i = icmp eq i32 %and20.i, 0
  br i1 %tobool21.not.i, label %if.end18.i.if.end27.i_crit_edge, label %if.then22.i

if.end18.i.if.end27.i_crit_edge:                  ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end27.i

if.then22.i:                                      ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #16
  %104 = ptrtoint ptr %sig_attrs to i32
  call void @__asan_load1_noabort(i32 %104)
  %105 = load i8, ptr %sig_attrs, align 4
  %106 = or i8 %105, -64
  store i8 %106, ptr %sig_attrs, align 4
  br label %if.end27.i

if.end27.i:                                       ; preds = %if.then22.i, %if.end18.i.if.end27.i_crit_edge
  %and29.i = and i32 %conv12.i, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and29.i)
  %tobool30.not.i = icmp eq i32 %and29.i, 0
  br i1 %tobool30.not.i, label %if.end27.i.if.end11_crit_edge, label %if.then31.i

if.end27.i.if.end11_crit_edge:                    ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end11

if.then31.i:                                      ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #16
  %107 = ptrtoint ptr %sig_attrs to i32
  call void @__asan_load1_noabort(i32 %107)
  %108 = load i8, ptr %sig_attrs, align 4
  %109 = or i8 %108, 48
  store i8 %109, ptr %sig_attrs, align 4
  br label %if.end11

if.end11:                                         ; preds = %if.then31.i, %if.end27.i.if.end11_crit_edge, %if.end.if.end11_crit_edge
  %call13 = tail call i32 @nvmet_req_alloc_sgls(ptr noundef %req) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %cmp = icmp slt i32 %call13, 0
  br i1 %cmp, label %if.end11.error_out_crit_edge, label %if.end17, !prof !307

if.end11.error_out_crit_edge:                     ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #16
  br label %error_out

if.end17:                                         ; preds = %if.end11
  %queue.i = getelementptr inbounds %struct.nvmet_rdma_rsp, ptr %rsp, i32 0, i32 4
  %110 = ptrtoint ptr %queue.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %queue.i, align 4
  %112 = ptrtoint ptr %111 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %111, align 4
  %114 = ptrtoint ptr %metadata_len to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %metadata_len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %115)
  %tobool.not.i54 = icmp eq i32 %115, 0
  %rw4.i = getelementptr inbounds %struct.nvmet_rdma_rsp, ptr %rsp, i32 0, i32 7
  %qp5.i = getelementptr inbounds %struct.rdma_cm_id, ptr %113, i32 0, i32 2
  %116 = ptrtoint ptr %qp5.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %qp5.i, align 4
  %port_num6.i = getelementptr inbounds %struct.rdma_cm_id, ptr %113, i32 0, i32 7
  %118 = ptrtoint ptr %port_num6.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %port_num6.i, align 4
  %sg7.i = getelementptr inbounds %struct.nvmet_rdma_rsp, ptr %rsp, i32 0, i32 8, i32 5
  %120 = ptrtoint ptr %sg7.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %sg7.i, align 4
  %sg_cnt8.i = getelementptr inbounds %struct.nvmet_rdma_rsp, ptr %rsp, i32 0, i32 8, i32 9
  %122 = ptrtoint ptr %sg_cnt8.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %sg_cnt8.i, align 8
  br i1 %tobool.not.i54, label %if.else.i56, label %if.then.i55

if.then.i55:                                      ; preds = %if.end17
  %metadata_sg.i = getelementptr inbounds %struct.nvmet_rdma_rsp, ptr %rsp, i32 0, i32 8, i32 6
  %124 = ptrtoint ptr %metadata_sg.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %metadata_sg.i, align 8
  %metadata_sg_cnt.i = getelementptr inbounds %struct.nvmet_rdma_rsp, ptr %rsp, i32 0, i32 8, i32 10
  %126 = ptrtoint ptr %metadata_sg_cnt.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %metadata_sg_cnt.i, align 4
  %128 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %req, align 8
  %130 = ptrtoint ptr %129 to i32
  call void @__asan_load1_noabort(i32 %130)
  %131 = load i8, ptr %129, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 127, i8 %131)
  %cmp.i.i.i.i = icmp eq i8 %131, 127
  br i1 %cmp.i.i.i.i, label %if.then.i.i.i, label %if.then.i55.nvmet_data_dir.exit.i_crit_edge, !prof !307

if.then.i55.nvmet_data_dir.exit.i_crit_edge:      ; preds = %if.then.i55
  call void @__sanitizer_cov_trace_pc() #16
  br label %nvmet_data_dir.exit.i

if.then.i.i.i:                                    ; preds = %if.then.i55
  call void @__sanitizer_cov_trace_pc() #16
  %fctype.i.i.i = getelementptr inbounds %struct.nvmf_common_command, ptr %129, i32 0, i32 3
  br label %nvmet_data_dir.exit.i

nvmet_data_dir.exit.i:                            ; preds = %if.then.i.i.i, %if.then.i55.nvmet_data_dir.exit.i_crit_edge
  %retval.0.in.in.in.i.i.i = phi ptr [ %fctype.i.i.i, %if.then.i.i.i ], [ %129, %if.then.i55.nvmet_data_dir.exit.i_crit_edge ]
  %132 = ptrtoint ptr %retval.0.in.in.in.i.i.i to i32
  call void @__asan_load1_noabort(i32 %132)
  %retval.0.in.in.i.i.i = load i8, ptr %retval.0.in.in.in.i.i.i, align 4
  %retval.0.in.i.i.i = and i8 %retval.0.in.in.i.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %retval.0.in.i.i.i)
  %retval.0.i.not.i.i = icmp eq i8 %retval.0.in.i.i.i, 0
  %cond.i.i = select i1 %retval.0.i.not.i.i, i32 1, i32 2
  %call3.i = call i32 @rdma_rw_ctx_signature_init(ptr noundef %rw4.i, ptr noundef %117, i32 noundef %119, ptr noundef %121, i32 noundef %123, ptr noundef %125, i32 noundef %127, ptr noundef nonnull %sig_attrs, i64 noundef %2, i32 noundef %5, i32 noundef %cond.i.i) #14
  br label %nvmet_rdma_rw_ctx_init.exit

if.else.i56:                                      ; preds = %if.end17
  %133 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %req, align 8
  %135 = ptrtoint ptr %134 to i32
  call void @__asan_load1_noabort(i32 %135)
  %136 = load i8, ptr %134, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 127, i8 %136)
  %cmp.i.i.i27.i = icmp eq i8 %136, 127
  br i1 %cmp.i.i.i27.i, label %if.then.i.i29.i, label %if.else.i56.nvmet_data_dir.exit35.i_crit_edge, !prof !307

if.else.i56.nvmet_data_dir.exit35.i_crit_edge:    ; preds = %if.else.i56
  call void @__sanitizer_cov_trace_pc() #16
  br label %nvmet_data_dir.exit35.i

if.then.i.i29.i:                                  ; preds = %if.else.i56
  call void @__sanitizer_cov_trace_pc() #16
  %fctype.i.i28.i = getelementptr inbounds %struct.nvmf_common_command, ptr %134, i32 0, i32 3
  br label %nvmet_data_dir.exit35.i

nvmet_data_dir.exit35.i:                          ; preds = %if.then.i.i29.i, %if.else.i56.nvmet_data_dir.exit35.i_crit_edge
  %retval.0.in.in.in.i.i30.i = phi ptr [ %fctype.i.i28.i, %if.then.i.i29.i ], [ %134, %if.else.i56.nvmet_data_dir.exit35.i_crit_edge ]
  %137 = ptrtoint ptr %retval.0.in.in.in.i.i30.i to i32
  call void @__asan_load1_noabort(i32 %137)
  %retval.0.in.in.i.i31.i = load i8, ptr %retval.0.in.in.in.i.i30.i, align 4
  %retval.0.in.i.i32.i = and i8 %retval.0.in.in.i.i31.i, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %retval.0.in.i.i32.i)
  %retval.0.i.not.i33.i = icmp eq i8 %retval.0.in.i.i32.i, 0
  %cond.i34.i = select i1 %retval.0.i.not.i33.i, i32 1, i32 2
  %call10.i = tail call i32 @rdma_rw_ctx_init(ptr noundef %rw4.i, ptr noundef %117, i32 noundef %119, ptr noundef %121, i32 noundef %123, i32 noundef 0, i64 noundef %2, i32 noundef %5, i32 noundef %cond.i34.i) #14
  br label %nvmet_rdma_rw_ctx_init.exit

nvmet_rdma_rw_ctx_init.exit:                      ; preds = %nvmet_data_dir.exit35.i, %nvmet_data_dir.exit.i
  %ret.0.i = phi i32 [ %call3.i, %nvmet_data_dir.exit.i ], [ %call10.i, %nvmet_data_dir.exit35.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0.i)
  %cmp19 = icmp slt i32 %ret.0.i, 0
  br i1 %cmp19, label %nvmet_rdma_rw_ctx_init.exit.error_out_crit_edge, label %if.end27, !prof !307

nvmet_rdma_rw_ctx_init.exit.error_out_crit_edge:  ; preds = %nvmet_rdma_rw_ctx_init.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %error_out

if.end27:                                         ; preds = %nvmet_rdma_rw_ctx_init.exit
  %n_rdma = getelementptr inbounds %struct.nvmet_rdma_rsp, ptr %rsp, i32 0, i32 10
  %138 = ptrtoint ptr %n_rdma to i32
  call void @__asan_load1_noabort(i32 %138)
  %139 = load i8, ptr %n_rdma, align 1
  %140 = trunc i32 %ret.0.i to i8
  %conv28 = add i8 %139, %140
  store i8 %conv28, ptr %n_rdma, align 1
  br i1 %invalidate, label %if.then30, label %if.end27.cleanup_crit_edge

if.end27.cleanup_crit_edge:                       ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then30:                                        ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #16
  %invalidate_rkey = getelementptr inbounds %struct.nvmet_rdma_rsp, ptr %rsp, i32 0, i32 12
  %141 = ptrtoint ptr %invalidate_rkey to i32
  call void @__asan_store4_noabort(i32 %141)
  store i32 %5, ptr %invalidate_rkey, align 8
  %flags = getelementptr inbounds %struct.nvmet_rdma_rsp, ptr %rsp, i32 0, i32 11
  %142 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load i32, ptr %flags, align 4
  %or = or i32 %143, 2
  store i32 %or, ptr %flags, align 4
  br label %cleanup

error_out:                                        ; preds = %nvmet_rdma_rw_ctx_init.exit.error_out_crit_edge, %if.end11.error_out_crit_edge
  %144 = ptrtoint ptr %transfer_len to i32
  call void @__asan_store4_noabort(i32 %144)
  store i32 0, ptr %transfer_len, align 8
  br label %cleanup

cleanup:                                          ; preds = %error_out, %if.then30, %if.end27.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i16 [ 6, %error_out ], [ 0, %entry.cleanup_crit_edge ], [ 0, %if.then30 ], [ 0, %if.end27.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %sig_attrs) #14
  ret i16 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #9

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvmet_req_alloc_sgls(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rdma_rw_ctx_signature_init(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i64 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rdma_rw_ctx_init(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i64 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ib_destroy_srq_user(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ib_dealloc_pd_user(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rdma_reject(ptr noundef, ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvmet_sq_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nvmet_rdma_release_queue_work(ptr noundef %w) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %w, i32 -276
  %dev1 = getelementptr i8, ptr %w, i32 -256
  %0 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1, align 4
  tail call fastcc void @nvmet_rdma_free_queue(ptr noundef %add.ptr)
  %ref = getelementptr inbounds %struct.nvmet_rdma_device, ptr %1, i32 0, i32 5
  tail call fastcc void @kref_put(ptr noundef %ref)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ida_alloc_range(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @nvmet_rdma_create_queue_ib(ptr noundef %queue) unnamed_addr #3 align 64 {
entry:
  %dummy.i19.i = alloca ptr, align 4
  %dummy.i.i = alloca ptr, align 4
  %qp_attr = alloca %struct.ib_qp_init_attr, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %qp_attr) #14
  %0 = getelementptr inbounds i8, ptr %qp_attr, i32 16
  %1 = call ptr @memset(ptr %0, i32 0, i32 56)
  %dev = getelementptr inbounds %struct.nvmet_rdma_queue, ptr %queue, i32 0, i32 5
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  %recv_queue_size = getelementptr inbounds %struct.nvmet_rdma_queue, ptr %queue, i32 0, i32 22
  %4 = ptrtoint ptr %recv_queue_size to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %recv_queue_size, align 4
  %send_queue_size = getelementptr inbounds %struct.nvmet_rdma_queue, ptr %queue, i32 0, i32 23
  %6 = ptrtoint ptr %send_queue_size to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %send_queue_size, align 4
  %mul = shl i32 %7, 1
  %8 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %3, align 4
  %add = add i32 %5, 1
  %add1 = add i32 %add, %mul
  %comp_vector = getelementptr inbounds %struct.nvmet_rdma_queue, ptr %queue, i32 0, i32 21
  %10 = ptrtoint ptr %comp_vector to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %comp_vector, align 4
  %call = tail call ptr @ib_cq_pool_get(ptr noundef %9, i32 noundef %add1, i32 noundef %11, i32 noundef 1) #14
  %cq = getelementptr inbounds %struct.nvmet_rdma_queue, ptr %queue, i32 0, i32 3
  %12 = ptrtoint ptr %cq to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call, ptr %cq, align 4
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %13 = ptrtoint ptr %call to i32
  %call7 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.110, i32 noundef %add1, i32 noundef %13) #17
  br label %out

if.end:                                           ; preds = %entry
  %qp_context = getelementptr inbounds %struct.ib_qp_init_attr, ptr %qp_attr, i32 0, i32 1
  %14 = ptrtoint ptr %qp_context to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %queue, ptr %qp_context, align 4
  %15 = ptrtoint ptr %qp_attr to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr @nvmet_rdma_qp_event, ptr %qp_attr, align 4
  %send_cq = getelementptr inbounds %struct.ib_qp_init_attr, ptr %qp_attr, i32 0, i32 2
  %16 = ptrtoint ptr %send_cq to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call, ptr %send_cq, align 4
  %recv_cq = getelementptr inbounds %struct.ib_qp_init_attr, ptr %qp_attr, i32 0, i32 3
  %17 = ptrtoint ptr %recv_cq to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %call, ptr %recv_cq, align 4
  %sq_sig_type = getelementptr inbounds %struct.ib_qp_init_attr, ptr %qp_attr, i32 0, i32 7
  %18 = ptrtoint ptr %sq_sig_type to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 1, ptr %sq_sig_type, align 4
  %qp_type = getelementptr inbounds %struct.ib_qp_init_attr, ptr %qp_attr, i32 0, i32 8
  %19 = ptrtoint ptr %qp_type to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 2, ptr %qp_type, align 4
  %20 = ptrtoint ptr %send_queue_size to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %send_queue_size, align 4
  %add11 = add i32 %21, 1
  %cap = getelementptr inbounds %struct.ib_qp_init_attr, ptr %qp_attr, i32 0, i32 6
  %22 = ptrtoint ptr %cap to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %add11, ptr %cap, align 4
  %23 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %3, align 4
  %25 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %queue, align 4
  %port_num = getelementptr inbounds %struct.rdma_cm_id, ptr %26, i32 0, i32 7
  %27 = ptrtoint ptr %port_num to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %port_num, align 4
  %call13 = tail call i32 @rdma_rw_mr_factor(ptr noundef %24, i32 noundef %28, i32 noundef 256) #14
  %29 = ptrtoint ptr %send_queue_size to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %send_queue_size, align 4
  %mul15 = mul i32 %30, %call13
  %max_rdma_ctxs = getelementptr inbounds %struct.ib_qp_init_attr, ptr %qp_attr, i32 0, i32 6, i32 5
  %31 = ptrtoint ptr %max_rdma_ctxs to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %mul15, ptr %max_rdma_ctxs, align 4
  %32 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %3, align 4
  %max_sge_rd = getelementptr inbounds %struct.ib_device, ptr %33, i32 0, i32 22, i32 12
  %34 = ptrtoint ptr %max_sge_rd to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %max_sge_rd, align 8
  %max_send_sge = getelementptr inbounds %struct.ib_device, ptr %33, i32 0, i32 22, i32 10
  %36 = ptrtoint ptr %max_send_sge to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %max_send_sge, align 8
  %38 = tail call i32 @llvm.smax.i32(i32 %35, i32 %37)
  %max_send_sge22 = getelementptr inbounds %struct.ib_qp_init_attr, ptr %qp_attr, i32 0, i32 6, i32 2
  %39 = ptrtoint ptr %max_send_sge22 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %38, ptr %max_send_sge22, align 4
  %nsrq = getelementptr inbounds %struct.nvmet_rdma_queue, ptr %queue, i32 0, i32 6
  %40 = ptrtoint ptr %nsrq to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %nsrq, align 4
  %tobool.not = icmp eq ptr %41, null
  br i1 %tobool.not, label %if.else, label %if.then23

if.then23:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %42 = ptrtoint ptr %41 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %41, align 4
  %srq25 = getelementptr inbounds %struct.ib_qp_init_attr, ptr %qp_attr, i32 0, i32 4
  %44 = ptrtoint ptr %srq25 to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %43, ptr %srq25, align 4
  br label %if.end31

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %45 = ptrtoint ptr %recv_queue_size to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %recv_queue_size, align 4
  %add27 = add i32 %46, 1
  %max_recv_wr = getelementptr inbounds %struct.ib_qp_init_attr, ptr %qp_attr, i32 0, i32 6, i32 1
  %47 = ptrtoint ptr %max_recv_wr to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %add27, ptr %max_recv_wr, align 4
  %inline_page_count = getelementptr inbounds %struct.nvmet_rdma_device, ptr %3, i32 0, i32 8
  %48 = ptrtoint ptr %inline_page_count to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %inline_page_count, align 4
  %add29 = add i32 %49, 1
  %max_recv_sge = getelementptr inbounds %struct.ib_qp_init_attr, ptr %qp_attr, i32 0, i32 6, i32 3
  %50 = ptrtoint ptr %max_recv_sge to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %add29, ptr %max_recv_sge, align 4
  br label %if.end31

if.end31:                                         ; preds = %if.else, %if.then23
  %port = getelementptr inbounds %struct.nvmet_rdma_queue, ptr %queue, i32 0, i32 2
  %51 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %port, align 4
  %pi_enable = getelementptr inbounds %struct.nvmet_port, ptr %52, i32 0, i32 15
  %53 = ptrtoint ptr %pi_enable to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %pi_enable, align 4, !range !309
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %54)
  %tobool32.not = icmp eq i8 %54, 0
  br i1 %tobool32.not, label %if.end31.if.end35_crit_edge, label %land.lhs.true

if.end31.if.end35_crit_edge:                      ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end35

land.lhs.true:                                    ; preds = %if.end31
  %host_qid = getelementptr inbounds %struct.nvmet_rdma_queue, ptr %queue, i32 0, i32 20
  %55 = ptrtoint ptr %host_qid to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %host_qid, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %56)
  %tobool33.not = icmp eq i32 %56, 0
  br i1 %tobool33.not, label %land.lhs.true.if.end35_crit_edge, label %if.then34

land.lhs.true.if.end35_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end35

if.then34:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  %create_flags = getelementptr inbounds %struct.ib_qp_init_attr, ptr %qp_attr, i32 0, i32 9
  %57 = ptrtoint ptr %create_flags to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %create_flags, align 4
  %or = or i32 %58, 64
  store i32 %or, ptr %create_flags, align 4
  br label %if.end35

if.end35:                                         ; preds = %if.then34, %land.lhs.true.if.end35_crit_edge, %if.end31.if.end35_crit_edge
  %59 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %queue, align 4
  %pd = getelementptr inbounds %struct.nvmet_rdma_device, ptr %3, i32 0, i32 1
  %61 = ptrtoint ptr %pd to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %pd, align 4
  %call37 = call i32 @rdma_create_qp(ptr noundef %60, ptr noundef %62, ptr noundef nonnull %qp_attr) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call37)
  %tobool38.not = icmp eq i32 %call37, 0
  br i1 %tobool38.not, label %if.end45, label %do.end42

do.end42:                                         ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #16
  %call44 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.113, i32 noundef %call37) #17
  br label %err_destroy_cq

if.end45:                                         ; preds = %if.end35
  %63 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %queue, align 4
  %qp = getelementptr inbounds %struct.rdma_cm_id, ptr %64, i32 0, i32 2
  %65 = ptrtoint ptr %qp to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %qp, align 4
  %qp47 = getelementptr inbounds %struct.nvmet_rdma_queue, ptr %queue, i32 0, i32 1
  %67 = ptrtoint ptr %qp47 to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr %66, ptr %qp47, align 4
  %sq_wr_avail = getelementptr inbounds %struct.nvmet_rdma_queue, ptr %queue, i32 0, i32 4
  %68 = ptrtoint ptr %cap to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %cap, align 4
  %call.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %sq_wr_avail, i32 noundef 4) #14
  %70 = ptrtoint ptr %sq_wr_avail to i32
  call void @__asan_store4_noabort(i32 %70)
  store volatile i32 %69, ptr %sq_wr_avail, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @nvmet_rdma_create_queue_ib.__UNIQUE_ID_ddebug548, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@nvmet_rdma_create_queue_ib, %if.then56)) #14
          to label %do.end65 [label %if.then56], !srcloc !315

if.then56:                                        ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #16
  %71 = ptrtoint ptr %cq to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %cq, align 4
  %cqe = getelementptr inbounds %struct.ib_cq, ptr %72, i32 0, i32 5
  %73 = ptrtoint ptr %cqe to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %cqe, align 4
  %75 = ptrtoint ptr %max_send_sge22 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %max_send_sge22, align 4
  %77 = ptrtoint ptr %cap to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %cap, align 4
  %79 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %queue, align 4
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @nvmet_rdma_create_queue_ib.__UNIQUE_ID_ddebug548, ptr noundef nonnull @.str.116, ptr noundef nonnull @.str.111, i32 noundef %74, i32 noundef %76, i32 noundef %78, ptr noundef %80) #14
  br label %do.end65

do.end65:                                         ; preds = %if.then56, %if.end45
  %81 = ptrtoint ptr %nsrq to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %nsrq, align 4
  %tobool67.not = icmp eq ptr %82, null
  br i1 %tobool67.not, label %for.cond.preheader, label %do.end65.out_crit_edge

do.end65.out_crit_edge:                           ; preds = %do.end65
  call void @__sanitizer_cov_trace_pc() #16
  br label %out

for.cond.preheader:                               ; preds = %do.end65
  %83 = ptrtoint ptr %recv_queue_size to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %recv_queue_size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %84)
  %cmp70133 = icmp sgt i32 %84, 0
  br i1 %cmp70133, label %for.body.lr.ph, label %for.cond.preheader.out_crit_edge

for.cond.preheader.out_crit_edge:                 ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #16
  br label %out

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %cmds = getelementptr inbounds %struct.nvmet_rdma_queue, ptr %queue, i32 0, i32 14
  br label %for.body

for.cond:                                         ; preds = %if.end.i
  %inc = add nuw nsw i32 %i.0134, 1
  %85 = ptrtoint ptr %recv_queue_size to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %recv_queue_size, align 4
  %cmp70 = icmp slt i32 %inc, %86
  br i1 %cmp70, label %for.cond.for.body_crit_edge, label %for.cond.out_crit_edge

for.cond.out_crit_edge:                           ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #16
  br label %out

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %for.body.lr.ph
  %i.0134 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.cond.for.body_crit_edge ]
  %87 = ptrtoint ptr %cmds to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %cmds, align 4
  %queue71 = getelementptr %struct.nvmet_rdma_cmd, ptr %88, i32 %i.0134, i32 5
  %89 = ptrtoint ptr %queue71 to i32
  call void @__asan_store4_noabort(i32 %89)
  store ptr %queue, ptr %queue71, align 4
  %90 = load ptr, ptr %cmds, align 4
  %arrayidx73 = getelementptr %struct.nvmet_rdma_cmd, ptr %90, i32 %i.0134
  %91 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %3, align 4
  %93 = ptrtoint ptr %arrayidx73 to i32
  call void @__asan_load8_noabort(i32 %93)
  %94 = load i64, ptr %arrayidx73, align 8
  %length.i = getelementptr inbounds %struct.ib_sge, ptr %arrayidx73, i32 0, i32 1
  %95 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %length.i, align 8
  %97 = ptrtoint ptr %92 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %92, align 8
  %conv.i.i = trunc i64 %94 to i32
  call void @dma_sync_single_for_device(ptr noundef %98, i32 noundef %conv.i.i, i32 noundef %96, i32 noundef 2) #14
  %nsrq.i = getelementptr %struct.nvmet_rdma_cmd, ptr %90, i32 %i.0134, i32 6
  %99 = ptrtoint ptr %nsrq.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %nsrq.i, align 8
  %tobool.not.i = icmp eq ptr %100, null
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  %101 = ptrtoint ptr %100 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %100, align 4
  %wr.i = getelementptr %struct.nvmet_rdma_cmd, ptr %90, i32 %i.0134, i32 2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %dummy.i.i) #14
  %103 = ptrtoint ptr %dummy.i.i to i32
  call void @__asan_store4_noabort(i32 %103)
  store ptr inttoptr (i32 -1 to ptr), ptr %dummy.i.i, align 4, !annotation !308
  %104 = ptrtoint ptr %102 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %102, align 4
  %post_srq_recv.i.i = getelementptr inbounds %struct.ib_device, ptr %105, i32 0, i32 1, i32 13
  %106 = ptrtoint ptr %post_srq_recv.i.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %post_srq_recv.i.i, align 4
  %call.i.i131 = call i32 %107(ptr noundef %102, ptr noundef %wr.i, ptr noundef nonnull %dummy.i.i) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dummy.i.i) #14
  br label %if.end.i

if.else.i:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  %queue.i = getelementptr %struct.nvmet_rdma_cmd, ptr %90, i32 %i.0134, i32 5
  %108 = ptrtoint ptr %queue.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %queue.i, align 4
  %qp.i = getelementptr inbounds %struct.nvmet_rdma_queue, ptr %109, i32 0, i32 1
  %110 = ptrtoint ptr %qp.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %qp.i, align 4
  %wr4.i = getelementptr %struct.nvmet_rdma_cmd, ptr %90, i32 %i.0134, i32 2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %dummy.i19.i) #14
  %112 = ptrtoint ptr %dummy.i19.i to i32
  call void @__asan_store4_noabort(i32 %112)
  store ptr inttoptr (i32 -1 to ptr), ptr %dummy.i19.i, align 4, !annotation !308
  %113 = ptrtoint ptr %111 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %111, align 4
  %post_recv.i.i = getelementptr inbounds %struct.ib_device, ptr %114, i32 0, i32 1, i32 7
  %115 = ptrtoint ptr %post_recv.i.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %post_recv.i.i, align 4
  %call.i20.i = call i32 %116(ptr noundef %111, ptr noundef %wr4.i, ptr noundef nonnull %dummy.i19.i) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dummy.i19.i) #14
  br label %if.end.i

if.end.i:                                         ; preds = %if.else.i, %if.then.i
  %ret.0.i = phi i32 [ %call.i.i131, %if.then.i ], [ %call.i20.i, %if.else.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0.i)
  %tobool6.not.i = icmp eq i32 %ret.0.i, 0
  br i1 %tobool6.not.i, label %for.cond, label %err_destroy_qp, !prof !306

out:                                              ; preds = %err_destroy_cq, %for.cond.out_crit_edge, %for.cond.preheader.out_crit_edge, %do.end65.out_crit_edge, %if.then
  %ret.1 = phi i32 [ %13, %if.then ], [ %ret.2, %err_destroy_cq ], [ 0, %do.end65.out_crit_edge ], [ 0, %for.cond.preheader.out_crit_edge ], [ 0, %for.cond.out_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %qp_attr) #14
  ret i32 %ret.1

err_destroy_qp:                                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  %call10.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3) #17
  %117 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %queue, align 4
  call void @rdma_destroy_qp(ptr noundef %118) #14
  br label %err_destroy_cq

err_destroy_cq:                                   ; preds = %err_destroy_qp, %do.end42
  %ret.2 = phi i32 [ %call37, %do.end42 ], [ %ret.0.i, %err_destroy_qp ]
  %119 = ptrtoint ptr %cq to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %cq, align 4
  call void @ib_cq_pool_put(ptr noundef %120, i32 noundef %add1) #14
  br label %out
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @nvmet_rdma_free_rsps(ptr nocapture noundef readonly %queue) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.nvmet_rdma_queue, ptr %queue, i32 0, i32 5
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %recv_queue_size = getelementptr inbounds %struct.nvmet_rdma_queue, ptr %queue, i32 0, i32 22
  %2 = ptrtoint ptr %recv_queue_size to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %recv_queue_size, align 4
  %mul = shl i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mul)
  %cmp8 = icmp sgt i32 %mul, 0
  br i1 %cmp8, label %for.body.lr.ph, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %rsps = getelementptr inbounds %struct.nvmet_rdma_queue, ptr %queue, i32 0, i32 11
  br label %for.body

for.body:                                         ; preds = %list_del.exit.for.body_crit_edge, %for.body.lr.ph
  %i.09 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %list_del.exit.for.body_crit_edge ]
  %4 = ptrtoint ptr %rsps to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %rsps, align 4
  %arrayidx = getelementptr %struct.nvmet_rdma_rsp, ptr %5, i32 %i.09
  %free_list = getelementptr %struct.nvmet_rdma_rsp, ptr %5, i32 %i.09, i32 14
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %free_list) #14
  br i1 %call.i.i, label %if.end.i.i, label %for.body.list_del.exit_crit_edge

for.body.list_del.exit_crit_edge:                 ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %list_del.exit

if.end.i.i:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  %prev.i.i = getelementptr %struct.nvmet_rdma_rsp, ptr %5, i32 %i.09, i32 14, i32 1
  %6 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %prev.i.i, align 4
  %8 = ptrtoint ptr %free_list to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %free_list, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %7, ptr %prev1.i.i.i, align 4
  %11 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile ptr %9, ptr %7, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %for.body.list_del.exit_crit_edge
  %12 = ptrtoint ptr %free_list to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr inttoptr (i32 256 to ptr), ptr %free_list, align 4
  %prev.i = getelementptr %struct.nvmet_rdma_rsp, ptr %5, i32 %i.09, i32 14, i32 1
  %13 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %14 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %1, align 4
  %16 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %arrayidx, align 8
  %18 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %15, align 8
  %conv.i.i = trunc i64 %17 to i32
  tail call void @dma_unmap_page_attrs(ptr noundef %19, i32 noundef %conv.i.i, i32 noundef 16, i32 noundef 1, i32 noundef 0) #14
  %cqe.i = getelementptr %struct.nvmet_rdma_rsp, ptr %5, i32 %i.09, i32 8, i32 1
  %20 = ptrtoint ptr %cqe.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %cqe.i, align 4
  tail call void @kfree(ptr noundef %21) #14
  %inc = add nuw nsw i32 %i.09, 1
  %exitcond.not = icmp eq i32 %inc, %mul
  br i1 %exitcond.not, label %list_del.exit.for.end_crit_edge, label %list_del.exit.for.body_crit_edge

list_del.exit.for.body_crit_edge:                 ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

list_del.exit.for.end_crit_edge:                  ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.end:                                          ; preds = %list_del.exit.for.end_crit_edge, %entry.for.end_crit_edge
  %rsps1 = getelementptr inbounds %struct.nvmet_rdma_queue, ptr %queue, i32 0, i32 11
  %22 = ptrtoint ptr %rsps1 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %rsps1, align 4
  tail call void @kfree(ptr noundef %23) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ida_free(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvmet_sq_destroy(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ib_cq_pool_get(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nvmet_rdma_qp_event(ptr nocapture noundef readonly %event, ptr noundef %priv) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %event1 = getelementptr inbounds %struct.ib_event, ptr %event, i32 0, i32 2
  %0 = ptrtoint ptr %event1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %event1, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.141)
  switch i32 %1, label %do.end9 [
    i32 4, label %sw.bb
    i32 16, label %do.body
  ]

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %3 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %priv, align 4
  %call = tail call i32 @rdma_notify(ptr noundef %4, i32 noundef 4) #14
  br label %sw.epilog

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @nvmet_rdma_qp_event.__UNIQUE_ID_ddebug551, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@nvmet_rdma_qp_event, %if.then)) #14
          to label %sw.epilog [label %if.then], !srcloc !315

if.then:                                          ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @nvmet_rdma_qp_event.__UNIQUE_ID_ddebug551, ptr noundef nonnull @.str.119, ptr noundef %priv) #14
  br label %sw.epilog

do.end9:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %call12 = tail call ptr @ib_event_msg(i32 noundef %1) #19
  %call14 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.120, ptr noundef %call12, i32 noundef %1) #17
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end9, %if.then, %do.body, %sw.bb
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rdma_rw_mr_factor(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rdma_create_qp(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rdma_destroy_qp(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ib_cq_pool_put(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rdma_notify(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid readnone willreturn
declare dso_local ptr @ib_event_msg(i32 noundef) local_unnamed_addr #12

; Function Attrs: null_pointer_is_valid
declare dso_local void @flush_workqueue(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rdma_accept(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ib_drain_qp(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ib_destroy_qp_user(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_delayed_work_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @inet_addr_is_any(ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #13

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nvmet_rdma_remove_one(ptr noundef readnone %ib_device, ptr nocapture noundef readnone %client_data) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @mutex_lock_nested(ptr noundef nonnull @device_list_mutex, i32 noundef 0) #14
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %entry
  %.pn.in = phi ptr [ @device_list, %entry ], [ %.pn, %for.body.for.cond_crit_edge ]
  %0 = ptrtoint ptr %.pn.in to i32
  call void @__asan_load4_noabort(i32 %0)
  %.pn = load ptr, ptr %.pn.in, align 4
  %cmp.not = icmp eq ptr %.pn, @device_list
  br i1 %cmp.not, label %if.then8.critedge, label %for.body

for.body:                                         ; preds = %for.cond
  %ndev.0 = getelementptr i8, ptr %.pn, i32 -24
  %1 = ptrtoint ptr %ndev.0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %ndev.0, align 4
  %cmp3 = icmp eq ptr %2, %ib_device
  br i1 %cmp3, label %if.end9.critedge, label %for.body.for.cond_crit_edge

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.cond

if.then8.critedge:                                ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @mutex_unlock(ptr noundef nonnull @device_list_mutex) #14
  br label %cleanup

if.end9.critedge:                                 ; preds = %for.body
  tail call void @mutex_unlock(ptr noundef nonnull @device_list_mutex) #14
  tail call void @mutex_lock_nested(ptr noundef nonnull @nvmet_rdma_queue_mutex, i32 noundef 0) #14
  %3 = load ptr, ptr @nvmet_rdma_queue_list, align 4
  %cmp19.not51 = icmp eq ptr %3, @nvmet_rdma_queue_list
  br i1 %cmp19.not51, label %if.end9.critedge.for.end34_crit_edge, label %if.end9.critedge.for.body21_crit_edge

if.end9.critedge.for.body21_crit_edge:            ; preds = %if.end9.critedge
  br label %for.body21

if.end9.critedge.for.end34_crit_edge:             ; preds = %if.end9.critedge
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end34

for.body21:                                       ; preds = %for.inc28.for.body21_crit_edge, %if.end9.critedge.for.body21_crit_edge
  %.pn47.in52 = phi ptr [ %.pn4755, %for.inc28.for.body21_crit_edge ], [ %3, %if.end9.critedge.for.body21_crit_edge ]
  %queue.054 = getelementptr i8, ptr %.pn47.in52, i32 -400
  %4 = ptrtoint ptr %.pn47.in52 to i32
  call void @__asan_load4_noabort(i32 %4)
  %.pn4755 = load ptr, ptr %.pn47.in52, align 4
  %dev = getelementptr i8, ptr %.pn47.in52, i32 -380
  %5 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev, align 4
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %6, align 4
  %cmp23.not = icmp eq ptr %8, %ib_device
  br i1 %cmp23.not, label %do.end, label %for.body21.for.inc28_crit_edge

for.body21.for.inc28_crit_edge:                   ; preds = %for.body21
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc28

do.end:                                           ; preds = %for.body21
  %idx = getelementptr i8, ptr %.pn47.in52, i32 -20
  %9 = ptrtoint ptr %idx to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %idx, align 4
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.131, i32 noundef %10) #17
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn47.in52) #14
  br i1 %call.i.i, label %if.end.i.i, label %do.end.list_del_init.exit_crit_edge

do.end.list_del_init.exit_crit_edge:              ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %list_del_init.exit

if.end.i.i:                                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #16
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %.pn47.in52, i32 0, i32 1
  %11 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %prev.i.i, align 4
  %13 = ptrtoint ptr %.pn47.in52 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %.pn47.in52, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %12, ptr %prev1.i.i.i, align 4
  %16 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %16)
  store volatile ptr %14, ptr %12, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i, %do.end.list_del_init.exit_crit_edge
  %17 = ptrtoint ptr %.pn47.in52 to i32
  call void @__asan_store4_noabort(i32 %17)
  store volatile ptr %.pn47.in52, ptr %.pn47.in52, align 4
  %prev.i3.i = getelementptr inbounds %struct.list_head, ptr %.pn47.in52, i32 0, i32 1
  %18 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %.pn47.in52, ptr %prev.i3.i, align 4
  tail call fastcc void @__nvmet_rdma_queue_disconnect(ptr noundef %queue.054)
  br label %for.inc28

for.inc28:                                        ; preds = %list_del_init.exit, %for.body21.for.inc28_crit_edge
  %cmp19.not = icmp eq ptr %.pn4755, @nvmet_rdma_queue_list
  br i1 %cmp19.not, label %for.inc28.for.end34_crit_edge, label %for.inc28.for.body21_crit_edge

for.inc28.for.body21_crit_edge:                   ; preds = %for.inc28
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body21

for.inc28.for.end34_crit_edge:                    ; preds = %for.inc28
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end34

for.end34:                                        ; preds = %for.inc28.for.end34_crit_edge, %if.end9.critedge.for.end34_crit_edge
  tail call void @mutex_unlock(ptr noundef nonnull @nvmet_rdma_queue_mutex) #14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %19 = load ptr, ptr @system_wq, align 4
  tail call void @flush_workqueue(ptr noundef %19) #14
  br label %cleanup

cleanup:                                          ; preds = %for.end34, %if.then8.critedge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ib_register_client(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvmet_register_transport(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #9

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #14

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

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
define internal void @asan.module_ctor() #15 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 153)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #15 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 153)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #9 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #10 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #12 = { mustprogress nofree nosync nounwind null_pointer_is_valid readnone willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #13 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #14 = { nounwind }
attributes #15 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #16 = { nomerge }
attributes #17 = { cold nounwind }
attributes #18 = { nounwind allocsize(2) }
attributes #19 = { nounwind readnone willreturn }
attributes #20 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !12, !14, !16, !18, !19, !21, !23, !24, !25, !27, !29, !31, !33, !34, !35, !36, !38, !39, !40, !41, !43, !44, !45, !46, !47, !49, !50, !51, !52, !54, !55, !56, !57, !59, !60, !61, !63, !64, !65, !67, !68, !69, !71, !72, !73, !75, !76, !77, !78, !80, !81, !82, !83, !85, !86, !87, !89, !90, !91, !93, !94, !95, !97, !98, !99, !100, !102, !103, !104, !106, !107, !108, !110, !111, !112, !113, !115, !116, !117, !119, !120, !121, !123, !124, !125, !127, !129, !130, !131, !132, !134, !135, !136, !138, !140, !141, !142, !143, !145, !146, !147, !149, !150, !151, !152, !154, !155, !156, !157, !159, !160, !161, !162, !164, !165, !166, !168, !169, !170, !171, !173, !174, !176, !177, !178, !179, !181, !182, !184, !185, !186, !188, !189, !190, !191, !193, !194, !195, !197, !198, !200, !201, !202, !203, !205, !207, !209, !211, !213, !215, !217, !219, !221, !223, !224, !226, !227, !229, !230, !232, !233, !235, !236, !237, !238, !240, !241, !242, !243, !245, !246, !247, !249, !250, !251, !253, !254, !255, !256, !258, !259, !260, !262, !263, !264, !265, !267, !268, !269, !270, !272, !273, !274, !275, !277, !279, !280, !281, !282, !284, !286, !288, !289, !290, !291, !293, !295}
!llvm.named.register.sp = !{!296}
!llvm.module.flags = !{!297, !298, !299, !300, !301, !302, !303, !304}
!llvm.ident = !{!305}

!0 = !{ptr @__param_use_srq, !1, !"__param_use_srq", i1 false, i1 false}
!1 = !{!"../drivers/nvme/target/rdma.c", i32 144, i32 1}
!2 = !{ptr @__UNIQUE_ID_use_srqtype530, !1, !"__UNIQUE_ID_use_srqtype530", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_use_srq531, !4, !"__UNIQUE_ID_use_srq531", i1 false, i1 false}
!4 = !{!"../drivers/nvme/target/rdma.c", i32 145, i32 1}
!5 = !{ptr @__param_srq_size, !6, !"__param_srq_size", i1 false, i1 false}
!6 = !{!"../drivers/nvme/target/rdma.c", i32 154, i32 1}
!7 = !{ptr @__UNIQUE_ID_srq_size532, !8, !"__UNIQUE_ID_srq_size532", i1 false, i1 false}
!8 = !{!"../drivers/nvme/target/rdma.c", i32 155, i32 1}
!9 = distinct !{null, !10, !"__already_done", i1 false, i1 false}
!10 = !{!"../drivers/nvme/target/rdma.c", i32 2087, i32 2}
!11 = !{ptr @.str, !10, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @__initcall__kmod_nvmet_rdma__563_2091_nvmet_rdma_init6, !13, !"__initcall__kmod_nvmet_rdma__563_2091_nvmet_rdma_init6", i1 false, i1 false}
!13 = !{!"../drivers/nvme/target/rdma.c", i32 2091, i32 1}
!14 = !{ptr @__exitcall_nvmet_rdma_exit, !15, !"__exitcall_nvmet_rdma_exit", i1 false, i1 false}
!15 = !{!"../drivers/nvme/target/rdma.c", i32 2092, i32 1}
!16 = !{ptr @__UNIQUE_ID_file564, !17, !"__UNIQUE_ID_file564", i1 false, i1 false}
!17 = !{!"../drivers/nvme/target/rdma.c", i32 2094, i32 1}
!18 = !{ptr @__UNIQUE_ID_license565, !17, !"__UNIQUE_ID_license565", i1 false, i1 false}
!19 = !{ptr @__UNIQUE_ID_alias566, !20, !"__UNIQUE_ID_alias566", i1 false, i1 false}
!20 = !{!"../drivers/nvme/target/rdma.c", i32 2095, i32 1}
!21 = !{ptr @nvmet_rdma_use_srq, !22, !"nvmet_rdma_use_srq", i1 false, i1 false}
!22 = !{!"../drivers/nvme/target/rdma.c", i32 143, i32 13}
!23 = !{ptr @__param_str_use_srq, !1, !"__param_str_use_srq", i1 false, i1 false}
!24 = !{ptr @__param_str_srq_size, !6, !"__param_str_srq_size", i1 false, i1 false}
!25 = !{ptr @srq_size_ops, !26, !"srq_size_ops", i1 false, i1 false}
!26 = !{!"../drivers/nvme/target/rdma.c", i32 148, i32 38}
!27 = !{ptr @nvmet_rdma_srq_size, !28, !"nvmet_rdma_srq_size", i1 false, i1 false}
!28 = !{!"../drivers/nvme/target/rdma.c", i32 153, i32 12}
!29 = !{ptr @nvmet_rdma_ops, !30, !"nvmet_rdma_ops", i1 false, i1 false}
!30 = !{!"../drivers/nvme/target/rdma.c", i32 2008, i32 39}
!31 = !{ptr @.str.1, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/nvme/target/rdma.c", i32 748, i32 3}
!33 = !{ptr @.str.2, !32, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @nvmet_rdma_queue_response._entry, !32, !"_entry", i1 false, i1 false}
!35 = !{ptr @nvmet_rdma_queue_response._entry_ptr, !32, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @.str.3, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/nvme/target/rdma.c", i32 516, i32 3}
!38 = !{ptr @.str.4, !37, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @nvmet_rdma_post_recv._entry, !37, !"_entry", i1 false, i1 false}
!40 = !{ptr @nvmet_rdma_post_recv._entry_ptr, !37, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @.str.5, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/nvme/target/rdma.c", i32 958, i32 3}
!43 = !{ptr @.str.6, !42, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @.str.7, !42, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @nvmet_rdma_execute_command.__UNIQUE_ID_ddebug538, !42, !"__UNIQUE_ID_ddebug538", i1 false, i1 false}
!46 = !{ptr @.str.8, !42, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @nvmet_rdma_add_port.__key, !48, !"__key", i1 false, i1 false}
!48 = !{!"../drivers/nvme/target/rdma.c", i32 1921, i32 2}
!49 = !{ptr @.str.9, !48, !"<string literal>", i1 false, i1 false}
!50 = !{ptr @nvmet_rdma_add_port.__key.10, !48, !"__key", i1 false, i1 false}
!51 = !{ptr @.str.11, !48, !"<string literal>", i1 false, i1 false}
!52 = !{ptr @.str.12, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/nvme/target/rdma.c", i32 1931, i32 3}
!54 = !{ptr @.str.13, !53, !"<string literal>", i1 false, i1 false}
!55 = !{ptr @nvmet_rdma_add_port._entry, !53, !"_entry", i1 false, i1 false}
!56 = !{ptr @nvmet_rdma_add_port._entry_ptr, !53, !"_entry_ptr", i1 false, i1 false}
!57 = !{ptr @.str.15, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/nvme/target/rdma.c", i32 1940, i32 3}
!59 = !{ptr @nvmet_rdma_add_port._entry.14, !58, !"_entry", i1 false, i1 false}
!60 = !{ptr @nvmet_rdma_add_port._entry_ptr.16, !58, !"_entry_ptr", i1 false, i1 false}
!61 = !{ptr @.str.18, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/nvme/target/rdma.c", i32 1949, i32 3}
!63 = !{ptr @nvmet_rdma_add_port._entry.17, !62, !"_entry", i1 false, i1 false}
!64 = !{ptr @nvmet_rdma_add_port._entry_ptr.19, !62, !"_entry_ptr", i1 false, i1 false}
!65 = !{ptr @.str.21, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/nvme/target/rdma.c", i32 1958, i32 2}
!67 = !{ptr @nvmet_rdma_add_port._entry.20, !66, !"_entry", i1 false, i1 false}
!68 = !{ptr @nvmet_rdma_add_port._entry_ptr.22, !66, !"_entry_ptr", i1 false, i1 false}
!69 = !{ptr @.str.23, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/nvme/target/rdma.c", i32 159, i32 8}
!71 = !{ptr @.str.24, !70, !"<string literal>", i1 false, i1 false}
!72 = !{ptr @nvmet_rdma_queue_mutex, !70, !"nvmet_rdma_queue_mutex", i1 false, i1 false}
!73 = !{ptr @.str.25, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/nvme/target/rdma.c", i32 1646, i32 2}
!75 = !{ptr @.str.26, !74, !"<string literal>", i1 false, i1 false}
!76 = !{ptr @__nvmet_rdma_queue_disconnect.__UNIQUE_ID_ddebug554, !74, !"__UNIQUE_ID_ddebug554", i1 false, i1 false}
!77 = !{ptr @.str.27, !74, !"<string literal>", i1 false, i1 false}
!78 = !{ptr @.str.28, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/nvme/target/rdma.c", i32 1863, i32 3}
!80 = !{ptr @.str.29, !79, !"<string literal>", i1 false, i1 false}
!81 = !{ptr @nvmet_rdma_enable_port._entry, !79, !"_entry", i1 false, i1 false}
!82 = !{ptr @nvmet_rdma_enable_port._entry_ptr, !79, !"_entry_ptr", i1 false, i1 false}
!83 = !{ptr @.str.31, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/nvme/target/rdma.c", i32 1873, i32 3}
!85 = !{ptr @nvmet_rdma_enable_port._entry.30, !84, !"_entry", i1 false, i1 false}
!86 = !{ptr @nvmet_rdma_enable_port._entry_ptr.32, !84, !"_entry_ptr", i1 false, i1 false}
!87 = !{ptr @.str.34, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/nvme/target/rdma.c", i32 1879, i32 3}
!89 = !{ptr @nvmet_rdma_enable_port._entry.33, !88, !"_entry", i1 false, i1 false}
!90 = !{ptr @nvmet_rdma_enable_port._entry_ptr.35, !88, !"_entry_ptr", i1 false, i1 false}
!91 = !{ptr @.str.37, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/nvme/target/rdma.c", i32 1885, i32 3}
!93 = !{ptr @nvmet_rdma_enable_port._entry.36, !92, !"_entry", i1 false, i1 false}
!94 = !{ptr @nvmet_rdma_enable_port._entry_ptr.38, !92, !"_entry_ptr", i1 false, i1 false}
!95 = !{ptr @.str.39, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/nvme/target/rdma.c", i32 1761, i32 2}
!97 = !{ptr @.str.40, !96, !"<string literal>", i1 false, i1 false}
!98 = !{ptr @nvmet_rdma_cm_handler.__UNIQUE_ID_ddebug555, !96, !"__UNIQUE_ID_ddebug555", i1 false, i1 false}
!99 = !{ptr @.str.41, !96, !"<string literal>", i1 false, i1 false}
!100 = !{ptr @.str.42, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/nvme/target/rdma.c", i32 1788, i32 3}
!102 = !{ptr @nvmet_rdma_cm_handler.__UNIQUE_ID_ddebug556, !101, !"__UNIQUE_ID_ddebug556", i1 false, i1 false}
!103 = !{ptr @.str.43, !101, !"<string literal>", i1 false, i1 false}
!104 = !{ptr @.str.44, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/nvme/target/rdma.c", i32 1796, i32 3}
!106 = !{ptr @nvmet_rdma_cm_handler._entry, !105, !"_entry", i1 false, i1 false}
!107 = !{ptr @nvmet_rdma_cm_handler._entry_ptr, !105, !"_entry_ptr", i1 false, i1 false}
!108 = !{ptr @.str.45, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/nvme/target/rdma.c", i32 1215, i32 3}
!110 = !{ptr @.str.46, !109, !"<string literal>", i1 false, i1 false}
!111 = !{ptr @nvmet_rdma_find_get_device._entry, !109, !"_entry", i1 false, i1 false}
!112 = !{ptr @nvmet_rdma_find_get_device._entry_ptr, !109, !"_entry_ptr", i1 false, i1 false}
!113 = !{ptr @.str.48, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../drivers/nvme/target/rdma.c", i32 1226, i32 3}
!115 = !{ptr @nvmet_rdma_find_get_device._entry.47, !114, !"_entry", i1 false, i1 false}
!116 = !{ptr @nvmet_rdma_find_get_device._entry_ptr.49, !114, !"_entry_ptr", i1 false, i1 false}
!117 = !{ptr @.str.50, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../drivers/nvme/target/rdma.c", i32 1247, i32 2}
!119 = !{ptr @nvmet_rdma_find_get_device.__UNIQUE_ID_ddebug545, !118, !"__UNIQUE_ID_ddebug545", i1 false, i1 false}
!120 = !{ptr @.str.51, !118, !"<string literal>", i1 false, i1 false}
!121 = !{ptr @.str.52, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../drivers/nvme/target/rdma.c", i32 162, i32 8}
!123 = !{ptr @.str.53, !122, !"<string literal>", i1 false, i1 false}
!124 = !{ptr @device_list_mutex, !122, !"device_list_mutex", i1 false, i1 false}
!125 = !{ptr @device_list, !126, !"device_list", i1 false, i1 false}
!126 = !{!"../drivers/nvme/target/rdma.c", i32 161, i32 8}
!127 = !{ptr @.str.54, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../drivers/nvme/target/rdma.c", i32 1145, i32 3}
!129 = !{ptr @.str.55, !128, !"<string literal>", i1 false, i1 false}
!130 = !{ptr @nvmet_rdma_init_srqs._entry, !128, !"_entry", i1 false, i1 false}
!131 = !{ptr @nvmet_rdma_init_srqs._entry_ptr, !128, !"_entry_ptr", i1 false, i1 false}
!132 = distinct !{null, !133, !"__already_done", i1 false, i1 false}
!133 = !{!"../include/linux/dma-mapping.h", i32 326, i32 6}
!134 = !{ptr @.str.56, !133, !"<string literal>", i1 false, i1 false}
!135 = !{ptr @.str.57, !133, !"<string literal>", i1 false, i1 false}
!136 = distinct !{null, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../include/linux/gfp.h", i32 570, i32 2}
!138 = !{ptr @.str.59, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../drivers/nvme/target/rdma.c", i32 1017, i32 4}
!140 = !{ptr @.str.60, !139, !"<string literal>", i1 false, i1 false}
!141 = !{ptr @nvmet_rdma_recv_done._entry, !139, !"_entry", i1 false, i1 false}
!142 = !{ptr @nvmet_rdma_recv_done._entry_ptr, !139, !"_entry_ptr", i1 false, i1 false}
!143 = !{ptr @.str.62, !144, !"<string literal>", i1 false, i1 false}
!144 = !{!"../drivers/nvme/target/rdma.c", i32 1026, i32 3}
!145 = !{ptr @nvmet_rdma_recv_done._entry.61, !144, !"_entry", i1 false, i1 false}
!146 = !{ptr @nvmet_rdma_recv_done._entry_ptr.63, !144, !"_entry_ptr", i1 false, i1 false}
!147 = !{ptr @.str.64, !148, !"<string literal>", i1 false, i1 false}
!148 = !{!"../drivers/nvme/target/rdma.c", i32 710, i32 3}
!149 = !{ptr @.str.65, !148, !"<string literal>", i1 false, i1 false}
!150 = !{ptr @nvmet_rdma_send_done._entry, !148, !"_entry", i1 false, i1 false}
!151 = !{ptr @nvmet_rdma_send_done._entry_ptr, !148, !"_entry_ptr", i1 false, i1 false}
!152 = !{ptr @.str.66, !153, !"<string literal>", i1 false, i1 false}
!153 = !{!"../drivers/nvme/target/rdma.c", i32 769, i32 4}
!154 = !{ptr @.str.67, !153, !"<string literal>", i1 false, i1 false}
!155 = !{ptr @nvmet_rdma_read_data_done._entry, !153, !"_entry", i1 false, i1 false}
!156 = !{ptr @nvmet_rdma_read_data_done._entry_ptr, !153, !"_entry_ptr", i1 false, i1 false}
!157 = !{ptr @.str.68, !158, !"<string literal>", i1 false, i1 false}
!158 = !{!"../drivers/nvme/target/rdma.c", i32 552, i32 3}
!159 = !{ptr @.str.69, !158, !"<string literal>", i1 false, i1 false}
!160 = !{ptr @nvmet_rdma_check_pi_status._entry, !158, !"_entry", i1 false, i1 false}
!161 = !{ptr @nvmet_rdma_check_pi_status._entry_ptr, !158, !"_entry_ptr", i1 false, i1 false}
!162 = !{ptr @.str.71, !163, !"<string literal>", i1 false, i1 false}
!163 = !{!"../drivers/nvme/target/rdma.c", i32 568, i32 3}
!164 = !{ptr @nvmet_rdma_check_pi_status._entry.70, !163, !"_entry", i1 false, i1 false}
!165 = !{ptr @nvmet_rdma_check_pi_status._entry_ptr.72, !163, !"_entry_ptr", i1 false, i1 false}
!166 = !{ptr @.str.73, !167, !"<string literal>", i1 false, i1 false}
!167 = !{!"../drivers/nvme/target/rdma.c", i32 806, i32 4}
!168 = !{ptr @.str.74, !167, !"<string literal>", i1 false, i1 false}
!169 = !{ptr @nvmet_rdma_write_data_done._entry, !167, !"_entry", i1 false, i1 false}
!170 = !{ptr @nvmet_rdma_write_data_done._entry_ptr, !167, !"_entry_ptr", i1 false, i1 false}
!171 = !{ptr @nvmet_rdma_write_data_done._entry.75, !172, !"_entry", i1 false, i1 false}
!172 = !{!"../drivers/nvme/target/rdma.c", i32 824, i32 3}
!173 = !{ptr @nvmet_rdma_write_data_done._entry_ptr.76, !172, !"_entry_ptr", i1 false, i1 false}
!174 = !{ptr @.str.77, !175, !"<string literal>", i1 false, i1 false}
!175 = !{!"../drivers/nvme/target/rdma.c", i32 928, i32 4}
!176 = !{ptr @.str.78, !175, !"<string literal>", i1 false, i1 false}
!177 = !{ptr @nvmet_rdma_map_sgl._entry, !175, !"_entry", i1 false, i1 false}
!178 = !{ptr @nvmet_rdma_map_sgl._entry_ptr, !175, !"_entry_ptr", i1 false, i1 false}
!179 = !{ptr @nvmet_rdma_map_sgl._entry.79, !180, !"_entry", i1 false, i1 false}
!180 = !{!"../drivers/nvme/target/rdma.c", i32 940, i32 4}
!181 = !{ptr @nvmet_rdma_map_sgl._entry_ptr.80, !180, !"_entry_ptr", i1 false, i1 false}
!182 = !{ptr @.str.82, !183, !"<string literal>", i1 false, i1 false}
!183 = !{!"../drivers/nvme/target/rdma.c", i32 946, i32 3}
!184 = !{ptr @nvmet_rdma_map_sgl._entry.81, !183, !"_entry", i1 false, i1 false}
!185 = !{ptr @nvmet_rdma_map_sgl._entry_ptr.83, !183, !"_entry_ptr", i1 false, i1 false}
!186 = !{ptr @.str.84, !187, !"<string literal>", i1 false, i1 false}
!187 = !{!"../drivers/nvme/target/rdma.c", i32 866, i32 3}
!188 = !{ptr @.str.85, !187, !"<string literal>", i1 false, i1 false}
!189 = !{ptr @nvmet_rdma_map_sgl_inline._entry, !187, !"_entry", i1 false, i1 false}
!190 = !{ptr @nvmet_rdma_map_sgl_inline._entry_ptr, !187, !"_entry_ptr", i1 false, i1 false}
!191 = distinct !{null, !192, !"__already_done", i1 false, i1 false}
!192 = !{!"../include/rdma/ib_verbs.h", i32 3688, i32 2}
!193 = !{ptr @.str.86, !192, !"<string literal>", i1 false, i1 false}
!194 = !{ptr @.str.87, !192, !"<string literal>", i1 false, i1 false}
!195 = distinct !{null, !196, !"__already_done", i1 false, i1 false}
!196 = !{!"../include/rdma/ib_verbs.h", i32 3498, i32 2}
!197 = !{ptr @.str.88, !196, !"<string literal>", i1 false, i1 false}
!198 = !{ptr @.str.89, !199, !"<string literal>", i1 false, i1 false}
!199 = !{!"../drivers/nvme/target/rdma.c", i32 1409, i32 2}
!200 = !{ptr @.str.90, !199, !"<string literal>", i1 false, i1 false}
!201 = !{ptr @nvmet_rdma_cm_reject.__UNIQUE_ID_ddebug550, !199, !"__UNIQUE_ID_ddebug550", i1 false, i1 false}
!202 = !{ptr @.str.91, !199, !"<string literal>", i1 false, i1 false}
!203 = !{ptr @.str.92, !204, !"<string literal>", i1 false, i1 false}
!204 = !{!"../include/linux/nvme-rdma.h", i32 30, i32 10}
!205 = !{ptr @.str.93, !206, !"<string literal>", i1 false, i1 false}
!206 = !{!"../include/linux/nvme-rdma.h", i32 32, i32 10}
!207 = !{ptr @.str.94, !208, !"<string literal>", i1 false, i1 false}
!208 = !{!"../include/linux/nvme-rdma.h", i32 34, i32 10}
!209 = !{ptr @.str.95, !210, !"<string literal>", i1 false, i1 false}
!210 = !{!"../include/linux/nvme-rdma.h", i32 36, i32 10}
!211 = !{ptr @.str.96, !212, !"<string literal>", i1 false, i1 false}
!212 = !{!"../include/linux/nvme-rdma.h", i32 38, i32 10}
!213 = !{ptr @.str.97, !214, !"<string literal>", i1 false, i1 false}
!214 = !{!"../include/linux/nvme-rdma.h", i32 40, i32 10}
!215 = distinct !{null, !216, !"<string literal>", i1 false, i1 false}
!216 = !{!"../include/linux/nvme-rdma.h", i32 42, i32 10}
!217 = distinct !{null, !218, !"<string literal>", i1 false, i1 false}
!218 = !{!"../include/linux/nvme-rdma.h", i32 44, i32 10}
!219 = !{ptr @.str.100, !220, !"<string literal>", i1 false, i1 false}
!220 = !{!"../include/linux/nvme-rdma.h", i32 46, i32 10}
!221 = !{ptr @nvmet_rdma_alloc_queue.__key, !222, !"__key", i1 false, i1 false}
!222 = !{!"../drivers/nvme/target/rdma.c", i32 1448, i32 2}
!223 = !{ptr @.str.101, !222, !"<string literal>", i1 false, i1 false}
!224 = !{ptr @nvmet_rdma_alloc_queue.__key.102, !225, !"__key", i1 false, i1 false}
!225 = !{!"../drivers/nvme/target/rdma.c", i32 1453, i32 2}
!226 = !{ptr @.str.103, !225, !"<string literal>", i1 false, i1 false}
!227 = !{ptr @nvmet_rdma_alloc_queue.__key.104, !228, !"__key", i1 false, i1 false}
!228 = !{!"../drivers/nvme/target/rdma.c", i32 1457, i32 2}
!229 = !{ptr @.str.105, !228, !"<string literal>", i1 false, i1 false}
!230 = !{ptr @nvmet_rdma_alloc_queue.__key.106, !231, !"__key", i1 false, i1 false}
!231 = !{!"../drivers/nvme/target/rdma.c", i32 1459, i32 2}
!232 = !{ptr @.str.107, !231, !"<string literal>", i1 false, i1 false}
!233 = !{ptr @.str.108, !234, !"<string literal>", i1 false, i1 false}
!234 = !{!"../drivers/nvme/target/rdma.c", i32 1496, i32 3}
!235 = !{ptr @.str.109, !234, !"<string literal>", i1 false, i1 false}
!236 = !{ptr @nvmet_rdma_alloc_queue._entry, !234, !"_entry", i1 false, i1 false}
!237 = !{ptr @nvmet_rdma_alloc_queue._entry_ptr, !234, !"_entry_ptr", i1 false, i1 false}
!238 = !{ptr @.str.110, !239, !"<string literal>", i1 false, i1 false}
!239 = !{!"../drivers/nvme/target/rdma.c", i32 1274, i32 3}
!240 = !{ptr @.str.111, !239, !"<string literal>", i1 false, i1 false}
!241 = !{ptr @nvmet_rdma_create_queue_ib._entry, !239, !"_entry", i1 false, i1 false}
!242 = !{ptr @nvmet_rdma_create_queue_ib._entry_ptr, !239, !"_entry_ptr", i1 false, i1 false}
!243 = !{ptr @.str.113, !244, !"<string literal>", i1 false, i1 false}
!244 = !{!"../drivers/nvme/target/rdma.c", i32 1306, i32 3}
!245 = !{ptr @nvmet_rdma_create_queue_ib._entry.112, !244, !"_entry", i1 false, i1 false}
!246 = !{ptr @nvmet_rdma_create_queue_ib._entry_ptr.114, !244, !"_entry_ptr", i1 false, i1 false}
!247 = !{ptr @.str.115, !248, !"<string literal>", i1 false, i1 false}
!248 = !{!"../drivers/nvme/target/rdma.c", i32 1313, i32 2}
!249 = !{ptr @nvmet_rdma_create_queue_ib.__UNIQUE_ID_ddebug548, !248, !"__UNIQUE_ID_ddebug548", i1 false, i1 false}
!250 = !{ptr @.str.116, !248, !"<string literal>", i1 false, i1 false}
!251 = !{ptr @.str.117, !252, !"<string literal>", i1 false, i1 false}
!252 = !{!"../drivers/nvme/target/rdma.c", i32 1532, i32 3}
!253 = !{ptr @.str.118, !252, !"<string literal>", i1 false, i1 false}
!254 = !{ptr @nvmet_rdma_qp_event.__UNIQUE_ID_ddebug551, !252, !"__UNIQUE_ID_ddebug551", i1 false, i1 false}
!255 = !{ptr @.str.119, !252, !"<string literal>", i1 false, i1 false}
!256 = !{ptr @.str.120, !257, !"<string literal>", i1 false, i1 false}
!257 = !{!"../drivers/nvme/target/rdma.c", i32 1536, i32 3}
!258 = !{ptr @nvmet_rdma_qp_event._entry, !257, !"_entry", i1 false, i1 false}
!259 = !{ptr @nvmet_rdma_qp_event._entry_ptr, !257, !"_entry_ptr", i1 false, i1 false}
!260 = !{ptr @.str.121, !261, !"<string literal>", i1 false, i1 false}
!261 = !{!"../drivers/nvme/target/rdma.c", i32 1561, i32 3}
!262 = !{ptr @.str.122, !261, !"<string literal>", i1 false, i1 false}
!263 = !{ptr @nvmet_rdma_cm_accept._entry, !261, !"_entry", i1 false, i1 false}
!264 = !{ptr @nvmet_rdma_cm_accept._entry_ptr, !261, !"_entry_ptr", i1 false, i1 false}
!265 = !{ptr @.str.123, !266, !"<string literal>", i1 false, i1 false}
!266 = !{!"../drivers/nvme/target/rdma.c", i32 1348, i32 2}
!267 = !{ptr @.str.124, !266, !"<string literal>", i1 false, i1 false}
!268 = !{ptr @nvmet_rdma_free_queue.__UNIQUE_ID_ddebug549, !266, !"__UNIQUE_ID_ddebug549", i1 false, i1 false}
!269 = !{ptr @.str.125, !266, !"<string literal>", i1 false, i1 false}
!270 = !{ptr @.str.126, !271, !"<string literal>", i1 false, i1 false}
!271 = !{!"../drivers/nvme/target/rdma.c", i32 1620, i32 3}
!272 = !{ptr @.str.127, !271, !"<string literal>", i1 false, i1 false}
!273 = !{ptr @nvmet_rdma_queue_established._entry, !271, !"_entry", i1 false, i1 false}
!274 = !{ptr @nvmet_rdma_queue_established._entry_ptr, !271, !"_entry_ptr", i1 false, i1 false}
!275 = distinct !{null, !276, !"__already_done", i1 false, i1 false}
!276 = !{!"../drivers/nvme/target/rdma.c", i32 1694, i32 2}
!277 = !{ptr @.str.128, !278, !"<string literal>", i1 false, i1 false}
!278 = !{!"../drivers/nvme/target/rdma.c", i32 1701, i32 2}
!279 = !{ptr @.str.129, !278, !"<string literal>", i1 false, i1 false}
!280 = !{ptr @nvmet_rdma_queue_connect_fail._entry, !278, !"_entry", i1 false, i1 false}
!281 = !{ptr @nvmet_rdma_queue_connect_fail._entry_ptr, !278, !"_entry_ptr", i1 false, i1 false}
!282 = !{ptr @.str.130, !283, !"<string literal>", i1 false, i1 false}
!283 = !{!"../drivers/nvme/target/rdma.c", i32 1990, i32 19}
!284 = !{ptr @nvmet_rdma_ib_client, !285, !"nvmet_rdma_ib_client", i1 false, i1 false}
!285 = !{!"../drivers/nvme/target/rdma.c", i32 2059, i32 25}
!286 = !{ptr @.str.131, !287, !"<string literal>", i1 false, i1 false}
!287 = !{!"../drivers/nvme/target/rdma.c", i32 2050, i32 3}
!288 = !{ptr @.str.132, !287, !"<string literal>", i1 false, i1 false}
!289 = !{ptr @nvmet_rdma_remove_one._entry, !287, !"_entry", i1 false, i1 false}
!290 = !{ptr @nvmet_rdma_remove_one._entry_ptr, !287, !"_entry_ptr", i1 false, i1 false}
!291 = !{ptr @nvmet_rdma_queue_list, !292, !"nvmet_rdma_queue_list", i1 false, i1 false}
!292 = !{!"../drivers/nvme/target/rdma.c", i32 158, i32 8}
!293 = !{ptr @.str.133, !294, !"<string literal>", i1 false, i1 false}
!294 = !{!"../drivers/nvme/target/rdma.c", i32 157, i32 8}
!295 = !{ptr @nvmet_rdma_queue_ida, !294, !"nvmet_rdma_queue_ida", i1 false, i1 false}
!296 = !{!"sp"}
!297 = !{i32 1, !"wchar_size", i32 2}
!298 = !{i32 1, !"min_enum_size", i32 4}
!299 = !{i32 8, !"branch-target-enforcement", i32 0}
!300 = !{i32 8, !"sign-return-address", i32 0}
!301 = !{i32 8, !"sign-return-address-all", i32 0}
!302 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!303 = !{i32 7, !"uwtable", i32 1}
!304 = !{i32 7, !"frame-pointer", i32 2}
!305 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!306 = !{!"branch_weights", i32 2000, i32 1}
!307 = !{!"branch_weights", i32 1, i32 2000}
!308 = !{!"auto-init"}
!309 = !{i8 0, i8 2}
!310 = !{i64 2148169269, i64 2148169295, i64 2148169324, i64 2148169358, i64 2148169389, i64 2148169412}
!311 = !{i64 2149076741}
!312 = !{i64 2148257721}
!313 = !{i64 2148172454, i64 2148172486, i64 2148172515, i64 2148172549, i64 2148172580, i64 2148172603}
!314 = !{i64 2148257950}
!315 = !{i64 2148779993, i64 2148779998, i64 2148780011, i64 2148780055, i64 2148780089, i64 2148780110}
!316 = !{i64 2158514972}
!317 = !{i64 676037, i64 676054, i64 676078, i64 676104, i64 676122}
!318 = !{i64 2158515325}
!319 = !{i64 2158497796}
!320 = !{i64 2158498149}
!321 = !{i64 544103, i64 544127, i64 544148, i64 544165, i64 544182}
!322 = !{i64 2148258800}
!323 = !{i64 2148173264, i64 2148173296, i64 2148173325, i64 2148173359, i64 2148173390, i64 2148173413}
!324 = !{i64 2149684894}
!325 = !{i64 2154358044, i64 2154358536, i64 2154358081, i64 2154358137, i64 2154358171, i64 2154358195, i64 2154358236, i64 2154358257, i64 2154358285, i64 2154358319}
!326 = !{i64 2154359654, i64 2154360146, i64 2154359691, i64 2154359747, i64 2154359781, i64 2154359805, i64 2154359846, i64 2154359867, i64 2154359895, i64 2154359929}
!327 = !{i64 2154361602, i64 2154366155, i64 2154361639, i64 2154361695, i64 2154361729, i64 2154361753, i64 2154361794, i64 2154361815, i64 2154361843, i64 2154361877}
!328 = !{!"branch_weights", i32 1, i32 4000, i32 1}
!329 = !{!"branch_weights", i32 2146410443, i32 1073205}
