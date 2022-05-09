; ModuleID = '/llk/IR_all_yes/drivers/nvme/host/rdma.c_pt.bc'
source_filename = "../drivers/nvme/host/rdma.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.132 }
%union.anon.132 = type { ptr }
%struct.nvmf_transport_ops = type { %struct.list_head, ptr, ptr, i32, i32, ptr }
%struct.list_head = type { ptr, ptr }
%struct.ib_client = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.refcount_struct, %struct.completion, i32, i8 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
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
%struct.hlist_node = type { ptr, ptr }
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
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.nvme_ctrl_ops = type { ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.blk_mq_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.nvme_rdma_ctrl = type { ptr, %struct.blk_mq_tag_set, %struct.work_struct, %struct.nvme_rdma_qe, %struct.delayed_work, %struct.list_head, %struct.blk_mq_tag_set, ptr, i32, %struct.__kernel_sockaddr_storage, %struct.__kernel_sockaddr_storage, %struct.nvme_ctrl, i8, [3 x i32] }
%struct.nvme_rdma_qe = type { %struct.ib_cqe, ptr, i64 }
%struct.ib_cqe = type { ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.blk_mq_tag_set = type { [3 x %struct.blk_mq_queue_map], i32, ptr, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, %struct.mutex, %struct.list_head }
%struct.blk_mq_queue_map = type { ptr, i32, i32 }
%struct.__kernel_sockaddr_storage = type { %union.anon.181 }
%union.anon.181 = type { ptr, [124 x i8] }
%struct.nvme_ctrl = type { i8, i32, i8, %struct.spinlock, %struct.mutex, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, ptr, %struct.list_head, %struct.rw_semaphore, %struct.device, ptr, ptr, %struct.cdev, %struct.work_struct, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.list_head, ptr, [12 x i8], i16, i32, i16, i32, i64, i32, i32, i32, i32, i32, i32, i32, [3 x i16], i16, i16, i16, i16, i16, i32, %struct.atomic_t, i8, i32, i32, i16, i8, i8, i16, i16, i32, i32, i32, i32, i32, i8, i32, [32 x %struct.nvme_id_power_state], ptr, %struct.xarray, %struct.work_struct, %struct.work_struct, %struct.delayed_work, %struct.delayed_work, %struct.nvme_command, %struct.work_struct, i32, i8, i8, i32, i32, %struct.mutex, ptr, i32, %struct.timer_list, %struct.work_struct, i64, i8, i32, i32, i32, i16, i32, i32, i16, i16, i32, i32, ptr, ptr, i32, %struct.nvme_fault_inject }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.cdev = type { %struct.kobject, ptr, ptr, %struct.list_head, i32, i32 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.nvme_id_power_state = type { i16, i8, i8, i32, i32, i8, i8, i8, i8, i16, i8, i8, i16, i8, [9 x i8] }
%struct.nvme_command = type { %union.anon.186 }
%union.anon.186 = type { %struct.nvme_common_command }
%struct.nvme_common_command = type { i8, i8, i16, i32, [2 x i32], i64, %union.nvme_data_ptr, i32, i32, i32, i32, i32, i32 }
%union.nvme_data_ptr = type { %struct.anon.187 }
%struct.anon.187 = type { i64, i64 }
%struct.nvme_fault_inject = type { %struct.fault_attr, ptr, i8, i16 }
%struct.fault_attr = type { i32, i32, %struct.atomic_t, %struct.atomic_t, i32, i8, i32, i32, i32, i32, i32, i32, %struct.ratelimit_state, ptr }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.nvmf_ctrl_options = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i8, i8, i32, ptr, i32, i8, i8, i8, i32, i32, i32, i32 }
%struct.nvme_subsystem = type { i32, %struct.device, %struct.kref, %struct.list_head, %struct.mutex, %struct.list_head, %struct.list_head, [223 x i8], [20 x i8], [40 x i8], [8 x i8], i8, i32, i16, i16, %struct.ida, i32 }
%struct.ida = type { %struct.xarray }
%struct.nvme_rdma_queue = type { ptr, i32, i32, ptr, ptr, ptr, ptr, i32, ptr, i32, %struct.completion, i8, i32, %struct.mutex }
%struct.ib_device = type { ptr, %struct.ib_device_ops, [64 x i8], %struct.callback_head, %struct.list_head, %struct.rw_semaphore, %struct.spinlock, %struct.rw_semaphore, %struct.xarray, %struct.mutex, %struct.rwlock_t, ptr, i32, %union.anon.184, [4 x ptr], i64, [64 x i8], i64, i32, i8, i8, i32, %struct.ib_device_attr, ptr, %struct.rdmacg_device, i32, %struct.spinlock, [3 x %struct.list_head], ptr, ptr, %struct.refcount_struct, %struct.completion, %struct.work_struct, ptr, %struct.mutex, %struct.xarray, [16 x i8], i32, i32 }
%struct.ib_device_ops = type { ptr, i32, i32, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.callback_head = type { ptr, ptr }
%union.anon.184 = type { %struct.ib_core_device }
%struct.ib_core_device = type { %struct.device, %struct.possible_net_t, ptr, %struct.list_head, ptr }
%struct.possible_net_t = type { ptr }
%struct.ib_device_attr = type { i64, i64, i64, i64, i32, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i8, i32, i32, %struct.ib_odp_caps, i64, i64, %struct.ib_rss_caps, i32, i32, %struct.ib_tm_caps, %struct.ib_cq_caps, i64, i32 }
%struct.ib_odp_caps = type { i64, %struct.anon.171 }
%struct.anon.171 = type { i32, i32, i32, i32 }
%struct.ib_rss_caps = type { i32, i32, i32 }
%struct.ib_tm_caps = type { i32, i32, i32, i32, i32 }
%struct.ib_cq_caps = type { i16, i16 }
%struct.rdmacg_device = type { %struct.list_head, %struct.list_head, ptr }
%struct.ib_qp = type { ptr, ptr, ptr, ptr, %struct.spinlock, i32, %struct.list_head, %struct.list_head, ptr, ptr, %struct.list_head, %struct.atomic_t, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, ptr, ptr, i32, i8, %struct.rdma_restrack_entry, ptr }
%struct.rdma_restrack_entry = type { i8, i8, %struct.kref, %struct.completion, ptr, ptr, i32, i8, i32 }
%struct.nvme_rdma_device = type { ptr, ptr, %struct.kref, %struct.list_head, i32 }
%struct.ib_send_wr = type { ptr, %union.anon.166, ptr, i32, i32, i32, %union.anon.167 }
%union.anon.166 = type { i64 }
%union.anon.167 = type { i32 }
%struct.ib_sge = type { i64, i32, i32 }
%struct.nvme_keyed_sgl_desc = type { i64, [3 x i8], [4 x i8], i8 }
%struct.ib_wc = type { %union.anon.169, i32, i32, i32, i32, ptr, %union.anon.170, i32, i32, i32, i16, i8, i8, i32, [6 x i8], i16, i8 }
%union.anon.169 = type { i64 }
%union.anon.170 = type { i32 }
%struct.page = type { i32, %union.anon.2, %union.anon.131, %struct.atomic_t, i32 }
%union.anon.2 = type { %struct.anon.3 }
%struct.anon.3 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.131 = type { %struct.atomic_t }
%struct.ib_recv_wr = type { ptr, %union.anon.168, ptr, i32 }
%union.anon.168 = type { i64 }
%struct.rdma_conn_param = type { ptr, i8, i8, i8, i8, i8, i8, i8, i32, i32 }
%struct.nvme_rdma_cm_req = type { i16, i16, i16, i16, [24 x i8] }
%struct.ib_qp_init_attr = type { ptr, ptr, ptr, ptr, ptr, ptr, %struct.ib_qp_cap, i32, i32, i32, i32, ptr, i32 }
%struct.ib_qp_cap = type { i32, i32, i32, i32, i32, i32 }
%struct.rdma_cm_id = type { ptr, ptr, ptr, ptr, %struct.rdma_route, i32, i32, i32 }
%struct.rdma_route = type { %struct.rdma_addr, ptr, i32 }
%struct.rdma_addr = type { %struct.__kernel_sockaddr_storage, %struct.__kernel_sockaddr_storage, %struct.rdma_dev_addr }
%struct.rdma_dev_addr = type { [32 x i8], [32 x i8], [32 x i8], i16, i32, i32, ptr, ptr, i32, i32 }
%struct.rdma_cm_event = type { i32, i32, %union.anon.180, %struct.rdma_ucm_ece }
%union.anon.180 = type { %struct.rdma_ud_param }
%struct.rdma_ud_param = type { ptr, i8, %struct.rdma_ah_attr, i32, i32 }
%struct.rdma_ah_attr = type { %struct.ib_global_route, i8, i8, i32, i8, i32, %union.anon.172 }
%struct.ib_global_route = type { ptr, %union.ib_gid, i32, i8, i8, i8 }
%union.ib_gid = type { %struct.anon.165 }
%struct.anon.165 = type { i64, i64 }
%union.anon.172 = type { %struct.opa_ah_attr }
%struct.opa_ah_attr = type { i32, i8, i8 }
%struct.rdma_ucm_ece = type { i32, i32 }
%struct.nvme_rdma_cm_rej = type { i16, i16 }
%struct.ib_event = type { ptr, %union.anon.161, i32 }
%union.anon.161 = type { ptr }
%struct.nvme_completion = type { %union.nvme_result, i16, i16, i16, i16 }
%union.nvme_result = type { i64 }
%struct.blk_mq_tags = type { i32, i32, %struct.atomic_t, %struct.sbitmap_queue, %struct.sbitmap_queue, ptr, ptr, %struct.list_head, %struct.spinlock }
%struct.sbitmap_queue = type { %struct.sbitmap, i32, %struct.atomic_t, ptr, %struct.atomic_t, i32 }
%struct.sbitmap = type { i32, i32, i32, i8, ptr, ptr }
%struct.request = type { ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i64, ptr, ptr, %union.anon.93, ptr, i64, i64, i64, i16, i16, i16, i16, ptr, ptr, i16, i16, i32, %struct.atomic_t, i32, %union.anon.94, %union.anon.95, %union.anon.96, %union.anon.101, ptr, ptr }
%union.anon.93 = type { %struct.list_head }
%union.anon.94 = type { %struct.hlist_node }
%union.anon.95 = type { %struct.rb_node }
%union.anon.96 = type { %struct.anon.100 }
%struct.anon.100 = type { i32, %struct.list_head, ptr }
%union.anon.101 = type { i64, [8 x i8] }
%struct.ib_mr = type { ptr, ptr, i32, i32, i64, i64, i32, i32, i8, %union.anon.159, ptr, ptr, %struct.rdma_restrack_entry }
%union.anon.159 = type { %struct.list_head }
%struct.nvme_rdma_request = type { %struct.nvme_request, ptr, %struct.nvme_rdma_qe, %union.nvme_result, i16, %struct.refcount_struct, [5 x %struct.ib_sge], i32, %struct.ib_reg_wr, %struct.ib_cqe, ptr, %struct.nvme_rdma_sgl, ptr, i8 }
%struct.nvme_request = type { ptr, %union.nvme_result, i8, i8, i8, i16, ptr }
%struct.ib_reg_wr = type { %struct.ib_send_wr, ptr, i32, i32 }
%struct.nvme_rdma_sgl = type { i32, %struct.sg_table }
%struct.sg_table = type { ptr, i32, i32 }
%struct.request_queue = type { ptr, ptr, %struct.percpu_ref, ptr, ptr, ptr, ptr, i32, ptr, i32, ptr, i32, %struct.atomic_t, i32, %struct.spinlock, ptr, %struct.kobject, ptr, %struct.blk_integrity, ptr, i32, i32, i32, i32, ptr, i32, i32, ptr, ptr, %struct.timer_list, %struct.work_struct, %struct.atomic_t, ptr, %struct.list_head, [1 x i32], ptr, %struct.list_head, %struct.queue_limits, i32, i32, ptr, ptr, i32, i32, i32, %struct.mutex, ptr, ptr, %struct.list_head, %struct.spinlock, %struct.delayed_work, %struct.mutex, %struct.mutex, %struct.list_head, %struct.spinlock, i32, ptr, %struct.callback_head, %struct.wait_queue_head, %struct.mutex, i32, ptr, %struct.list_head, %struct.bio_set, ptr, ptr, ptr, i8, [5 x i64], ptr, [0 x %struct.srcu_struct] }
%struct.percpu_ref = type { i32, ptr }
%struct.blk_integrity = type { ptr, i8, i8, i8, i8 }
%struct.queue_limits = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i8, i8, i8, i32 }
%struct.bio_set = type { ptr, i32, ptr, %struct.mempool_s, %struct.mempool_s, %struct.mempool_s, %struct.mempool_s, i32, %struct.spinlock, %struct.bio_list, %struct.work_struct, ptr, %struct.hlist_node }
%struct.mempool_s = type { %struct.spinlock, i32, i32, ptr, ptr, ptr, ptr, %struct.wait_queue_head }
%struct.bio_list = type { ptr, ptr }
%struct.srcu_struct = type { [3 x %struct.srcu_node], [3 x ptr], %struct.mutex, %struct.spinlock, %struct.mutex, i32, i32, i32, i32, i32, ptr, i32, %struct.mutex, %struct.completion, %struct.atomic_t, %struct.delayed_work, %struct.lockdep_map }
%struct.srcu_node = type { %struct.spinlock, [4 x i32], [4 x i32], i32, ptr, i32, i32 }
%struct.ib_mr_status = type { i32, %struct.ib_sig_err }
%struct.ib_sig_err = type { i32, i32, i32, i64, i32 }
%struct.blk_mq_hw_ctx = type { %struct.anon.138, %struct.delayed_work, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, %struct.sbitmap, ptr, i32, i16, i16, ptr, %struct.spinlock, %struct.wait_queue_entry, %struct.atomic_t, ptr, ptr, i32, i32, i32, i32, %struct.atomic_t, %struct.hlist_node, %struct.hlist_node, %struct.kobject, ptr, ptr, %struct.list_head, [76 x i8] }
%struct.anon.138 = type { %struct.spinlock, %struct.list_head, i32, [72 x i8] }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.nvme_ns = type { %struct.list_head, ptr, ptr, ptr, i32, i32, %struct.list_head, %struct.kref, ptr, i32, i16, i16, i32, i8, i64, i32, i32, %struct.cdev, %struct.device, %struct.nvme_fault_inject }
%struct.bio = type { ptr, ptr, i32, i16, i16, i16, i8, %struct.atomic_t, %struct.bvec_iter, i32, ptr, ptr, ptr, %struct.bio_issue, i64, ptr, %union.anon.92, i16, i16, %struct.atomic_t, ptr, ptr, [0 x %struct.bio_vec] }
%struct.bvec_iter = type <{ i64, i32, i32, i32 }>
%struct.bio_issue = type { i64 }
%union.anon.92 = type { ptr }
%struct.bio_vec = type { ptr, i32, i32 }
%struct.block_device = type { i64, i64, ptr, i32, i8, i32, i32, ptr, ptr, ptr, %struct.device, ptr, i32, i8, ptr, i8, %struct.spinlock, ptr, ptr, i32, %struct.mutex, ptr, ptr, i8 }
%struct.gendisk = type { i32, i32, i32, [32 x i8], i16, i16, %struct.xarray, ptr, ptr, ptr, ptr, i32, i32, %struct.mutex, i32, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, ptr, %struct.kobject, ptr, i32, ptr, %struct.lockdep_map, i64 }
%struct.nvme_rw_command = type { i8, i8, i16, i32, i64, i64, %union.nvme_data_ptr, i64, i16, i16, i32, i32, i16, i16 }
%struct.ib_sig_attrs = type { i8, %struct.ib_sig_domain, %struct.ib_sig_domain, i32 }
%struct.ib_sig_domain = type { i32, %union.anon.160 }
%union.anon.160 = type { %struct.ib_t10_dif_domain }
%struct.ib_t10_dif_domain = type { i32, i16, i16, i16, i32, i8, i8, i8, i16 }
%struct.ib_pd = type { i32, i32, ptr, ptr, %struct.atomic_t, i32, ptr, %struct.rdma_restrack_entry }
%struct.scatterlist = type { i32, i32, i32, i32, i32 }
%struct.nvme_sgl_desc = type { i64, i32, [3 x i8], i8 }

@__param_str_register_always = internal constant [26 x i8] c"nvme_rdma.register_always\00", align 1
@param_ops_bool = external dso_local constant %struct.kernel_param_ops, align 4
@register_always = internal global { i8, [31 x i8] } { i8 1, [31 x i8] zeroinitializer }, align 32
@__param_register_always = internal constant %struct.kernel_param { ptr @__param_str_register_always, ptr null, ptr @param_ops_bool, i16 292, i8 -1, i8 0, %union.anon.132 { ptr @register_always } }, section "__param", align 4
@__UNIQUE_ID_register_alwaystype567 = internal constant [40 x i8] c"nvme_rdma.parmtype=register_always:bool\00", section ".modinfo", align 1
@__UNIQUE_ID_register_always568 = internal constant [90 x i8] c"nvme_rdma.parm=register_always:Use memory registration even for contiguous memory regions\00", section ".modinfo", align 1
@nvme_rdma_transport = internal global { %struct.nvmf_transport_ops, [36 x i8] } { %struct.nvmf_transport_ops { %struct.list_head zeroinitializer, ptr null, ptr @.str, i32 4, i32 921096, ptr @nvme_rdma_create_ctrl }, [36 x i8] zeroinitializer }, align 32
@nvme_rdma_ib_client = internal global { %struct.ib_client, [32 x i8] } { %struct.ib_client { ptr @.str.56, ptr null, ptr @nvme_rdma_remove_one, ptr null, ptr null, ptr null, ptr null, %struct.refcount_struct zeroinitializer, %struct.completion zeroinitializer, i32 0, i8 0 }, [32 x i8] zeroinitializer }, align 32
@nvme_rdma_ctrl_mutex = internal global { %struct.mutex, [36 x i8] } { %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.144, i8 0, i8 2, i8 0, i32 0, i32 0 } }, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @nvme_rdma_ctrl_mutex, i64 52), ptr getelementptr (i8, ptr @nvme_rdma_ctrl_mutex, i64 52) }, ptr @nvme_rdma_ctrl_mutex, %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.145, i8 0, i8 4, i8 0, i32 0, i32 0 } }, [36 x i8] zeroinitializer }, align 32
@nvme_rdma_ctrl_list = internal global { %struct.list_head, [24 x i8] } { %struct.list_head { ptr @nvme_rdma_ctrl_list, ptr @nvme_rdma_ctrl_list }, [24 x i8] zeroinitializer }, align 32
@nvme_delete_wq = external dso_local local_unnamed_addr global ptr, align 4
@__initcall__kmod_nvme_rdma__593_2499_nvme_rdma_init_module6 = internal global ptr @nvme_rdma_init_module, section ".initcall6.init", align 4
@__exitcall_nvme_rdma_cleanup_module = internal global ptr @nvme_rdma_cleanup_module, section ".exitcall.exit", align 4
@__UNIQUE_ID_file594 = internal constant [43 x i8] c"nvme_rdma.file=drivers/nvme/host/nvme-rdma\00", section ".modinfo", align 1
@__UNIQUE_ID_license595 = internal constant [25 x i8] c"nvme_rdma.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"rdma\00", [27 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"4420\00", [27 x i8] zeroinitializer }, align 32
@init_net = external dso_local global %struct.net, align 128
@nvme_rdma_create_ctrl._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 2351, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\013nvme_rdma: malformed address passed: %s:%s\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"nvme_rdma_create_ctrl\00", [42 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"drivers/nvme/host/rdma.c\00", [39 x i8] zeroinitializer }, align 32
@nvme_rdma_create_ctrl._entry_ptr = internal global ptr @nvme_rdma_create_ctrl._entry, section ".printk_index", align 4
@nvme_rdma_create_ctrl._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.3, ptr @.str.4, i32 2360, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\013nvme_rdma: malformed src address passed: %s\0A\00", [49 x i8] zeroinitializer }, align 32
@nvme_rdma_create_ctrl._entry_ptr.7 = internal global ptr @nvme_rdma_create_ctrl._entry.5, section ".printk_index", align 4
@nvme_rdma_create_ctrl.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.8 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"(work_completion)(&(&ctrl->reconnect_work)->work)\00", [46 x i8] zeroinitializer }, align 32
@nvme_rdma_create_ctrl.__key.9 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.10 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"&(&ctrl->reconnect_work)->timer\00", [32 x i8] zeroinitializer }, align 32
@nvme_rdma_create_ctrl.__key.11 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.12 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"(work_completion)(&ctrl->err_work)\00", [61 x i8] zeroinitializer }, align 32
@nvme_rdma_create_ctrl.__key.13 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.14 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"(work_completion)(&ctrl->ctrl.reset_work)\00", [54 x i8] zeroinitializer }, align 32
@nvme_rdma_ctrl_ops = internal constant { %struct.nvme_ctrl_ops, [56 x i8] } { %struct.nvme_ctrl_ops { ptr @.str, ptr null, i32 3, ptr @nvmf_reg_read32, ptr @nvmf_reg_write32, ptr @nvmf_reg_read64, ptr @nvme_rdma_free_ctrl, ptr @nvme_rdma_submit_async_event, ptr @nvme_rdma_delete_ctrl, ptr @nvmf_get_address }, [56 x i8] zeroinitializer }, align 32
@nvme_rdma_create_ctrl.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@nvme_rdma_create_ctrl._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.3, ptr @.str.4, i32 2399, ptr @.str.17, ptr @.str.18 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"new ctrl: NQN \22%s\22, addr %pISpcs\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@nvme_rdma_create_ctrl._entry_ptr.19 = internal global ptr @nvme_rdma_create_ctrl._entry.15, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@nvme_rdma_reconnect_ctrl_work._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.21, ptr @.str.4, i32 1185, ptr @.str.17, ptr @.str.18 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Successfully reconnected (%d attempts)\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"nvme_rdma_reconnect_ctrl_work\00", [34 x i8] zeroinitializer }, align 32
@nvme_rdma_reconnect_ctrl_work._entry_ptr = internal global ptr @nvme_rdma_reconnect_ctrl_work._entry, section ".printk_index", align 4
@nvme_rdma_reconnect_ctrl_work._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.21, ptr @.str.4, i32 1193, ptr @.str.17, ptr @.str.18 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Failed reconnect attempt %d\0A\00", [35 x i8] zeroinitializer }, align 32
@nvme_rdma_reconnect_ctrl_work._entry_ptr.24 = internal global ptr @nvme_rdma_reconnect_ctrl_work._entry.22, section ".printk_index", align 4
@nvme_rdma_reconnect_or_remove.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@nvme_rdma_reconnect_or_remove._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.26, ptr @.str.4, i32 1081, ptr @.str.17, ptr @.str.18 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Reconnecting in %d seconds...\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"nvme_rdma_reconnect_or_remove\00", [34 x i8] zeroinitializer }, align 32
@nvme_rdma_reconnect_or_remove._entry_ptr = internal global ptr @nvme_rdma_reconnect_or_remove._entry, section ".printk_index", align 4
@nvme_wq = external dso_local local_unnamed_addr global ptr, align 4
@nvme_rdma_error_recovery_work.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@device_list_mutex = internal global { %struct.mutex, [36 x i8] } { %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.27, i8 0, i8 2, i8 0, i32 0, i32 0 } }, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @device_list_mutex, i64 52), ptr getelementptr (i8, ptr @device_list_mutex, i64 52) }, ptr @device_list_mutex, %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.28, i8 0, i8 4, i8 0, i32 0, i32 0 } }, [36 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"device_list_mutex.wait_lock\00", [36 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"device_list_mutex\00", [46 x i8] zeroinitializer }, align 32
@ib_dealloc_pd.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.29 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/rdma/ib_verbs.h\00", [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Destroy of kernel PD shouldn't fail\00", [60 x i8] zeroinitializer }, align 32
@nvme_rdma_reset_ctrl_work.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@nvme_rdma_submit_async_event.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.31 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"ASYNC\00", [26 x i8] zeroinitializer }, align 32
@nvme_rdma_wr_error._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.33, ptr @.str.4, i32 1248, ptr @.str.17, ptr @.str.18 }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"%s for CQE 0x%p failed with status %s (%d)\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"nvme_rdma_wr_error\00", [45 x i8] zeroinitializer }, align 32
@nvme_rdma_wr_error._entry_ptr = internal global ptr @nvme_rdma_wr_error._entry, section ".printk_index", align 4
@nvme_rdma_error_recovery._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.35, ptr @.str.4, i32 1224, ptr @.str.36, ptr @.str.18 }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"starting error recovery\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"nvme_rdma_error_recovery\00", [39 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@nvme_rdma_error_recovery._entry_ptr = internal global ptr @nvme_rdma_error_recovery._entry, section ".printk_index", align 4
@nvme_reset_wq = external dso_local local_unnamed_addr global ptr, align 4
@nvme_rdma_post_send._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.38, ptr @.str.4, i32 1665, ptr @.str.39, ptr @.str.18 }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"%s failed with error code %d\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"nvme_rdma_post_send\00", [44 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@nvme_rdma_post_send._entry_ptr = internal global ptr @nvme_rdma_post_send._entry, section ".printk_index", align 4
@nvme_rdma_setup_ctrl._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.41, ptr @.str.4, i32 1100, ptr @.str.39, ptr @.str.18 }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"icdoff is not supported!\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"nvme_rdma_setup_ctrl\00", [43 x i8] zeroinitializer }, align 32
@nvme_rdma_setup_ctrl._entry_ptr = internal global ptr @nvme_rdma_setup_ctrl._entry, section ".printk_index", align 4
@nvme_rdma_setup_ctrl._entry.42 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.41, ptr @.str.4, i32 1107, ptr @.str.39, ptr @.str.18 }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"Mandatory keyed sgls are not supported!\0A\00", [55 x i8] zeroinitializer }, align 32
@nvme_rdma_setup_ctrl._entry_ptr.44 = internal global ptr @nvme_rdma_setup_ctrl._entry.42, section ".printk_index", align 4
@nvme_rdma_setup_ctrl._entry.45 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.46, ptr @.str.41, ptr @.str.4, i32 1114, ptr @.str.36, ptr @.str.18 }, [40 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"queue_size %zu > ctrl sqsize %u, clamping down\0A\00", [48 x i8] zeroinitializer }, align 32
@nvme_rdma_setup_ctrl._entry_ptr.47 = internal global ptr @nvme_rdma_setup_ctrl._entry.45, section ".printk_index", align 4
@nvme_rdma_setup_ctrl._entry.48 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.49, ptr @.str.41, ptr @.str.4, i32 1120, ptr @.str.36, ptr @.str.18 }, [40 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"ctrl sqsize %u > max queue size %u, clamping down\0A\00", [45 x i8] zeroinitializer }, align 32
@nvme_rdma_setup_ctrl._entry_ptr.50 = internal global ptr @nvme_rdma_setup_ctrl._entry.48, section ".printk_index", align 4
@nvme_rdma_setup_ctrl._entry.51 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.52, ptr @.str.41, ptr @.str.4, i32 1127, ptr @.str.36, ptr @.str.18 }, [40 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"sqsize %u > ctrl maxcmd %u, clamping down\0A\00", [53 x i8] zeroinitializer }, align 32
@nvme_rdma_setup_ctrl._entry_ptr.53 = internal global ptr @nvme_rdma_setup_ctrl._entry.51, section ".printk_index", align 4
@nvme_rdma_setup_ctrl.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@nvme_rdma_setup_ctrl.__already_done.54 = internal unnamed_addr global i1 false, section ".data.once", align 1
@nvme_rdma_alloc_queue.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.55 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"&queue->queue_lock\00", [45 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"nvme_rdma\00", [22 x i8] zeroinitializer }, align 32
@nvme_rdma_alloc_queue._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.57, ptr @.str.58, ptr @.str.4, i32 604, ptr @.str.17, ptr @.str.18 }, [40 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"failed to create CM ID: %ld\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"nvme_rdma_alloc_queue\00", [42 x i8] zeroinitializer }, align 32
@nvme_rdma_alloc_queue._entry_ptr = internal global ptr @nvme_rdma_alloc_queue._entry, section ".printk_index", align 4
@nvme_rdma_alloc_queue._entry.59 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.60, ptr @.str.58, ptr @.str.4, i32 618, ptr @.str.17, ptr @.str.18 }, [40 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"rdma_resolve_addr failed (%d).\0A\00", [32 x i8] zeroinitializer }, align 32
@nvme_rdma_alloc_queue._entry_ptr.61 = internal global ptr @nvme_rdma_alloc_queue._entry.59, section ".printk_index", align 4
@nvme_rdma_alloc_queue._entry.62 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.63, ptr @.str.58, ptr @.str.4, i32 625, ptr @.str.17, ptr @.str.18 }, [40 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"rdma connection establishment failed (%d)\0A\00", [53 x i8] zeroinitializer }, align 32
@nvme_rdma_alloc_queue._entry_ptr.64 = internal global ptr @nvme_rdma_alloc_queue._entry.62, section ".printk_index", align 4
@init_completion.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.65 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&x->wait\00", [23 x i8] zeroinitializer }, align 32
@nvme_rdma_cm_handler.__UNIQUE_ID_ddebug590 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.56, ptr @.str.66, ptr @.str.4, ptr @.str.67, i8 1, i8 -27, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.66 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"nvme_rdma_cm_handler\00", [43 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"%s (%d): status %d id %p\0A\00", [38 x i8] zeroinitializer }, align 32
@nvme_rdma_cm_handler.__UNIQUE_ID_ddebug591 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.56, ptr @.str.66, ptr @.str.4, ptr @.str.68, i8 1, i8 -22, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.68 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"CM error event %d\0A\00", [45 x i8] zeroinitializer }, align 32
@nvme_rdma_cm_handler.__UNIQUE_ID_ddebug592 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.56, ptr @.str.66, ptr @.str.4, ptr @.str.69, i8 1, i8 -20, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.69 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"disconnect received - connection closed\0A\00", [55 x i8] zeroinitializer }, align 32
@nvme_rdma_cm_handler._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.70, ptr @.str.66, ptr @.str.4, i32 1977, ptr @.str.39, ptr @.str.18 }, [40 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Unexpected RDMA CM event (%d)\0A\00", [33 x i8] zeroinitializer }, align 32
@nvme_rdma_cm_handler._entry_ptr = internal global ptr @nvme_rdma_cm_handler._entry, section ".printk_index", align 4
@nvme_rdma_addr_resolved._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.71, ptr @.str.72, ptr @.str.4, i32 1875, ptr @.str.39, ptr @.str.18 }, [40 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"rdma_resolve_route failed (%d).\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"nvme_rdma_addr_resolved\00", [40 x i8] zeroinitializer }, align 32
@nvme_rdma_addr_resolved._entry_ptr = internal global ptr @nvme_rdma_addr_resolved._entry, section ".printk_index", align 4
@nvme_rdma_create_queue_ib._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.73, ptr @.str.74, ptr @.str.4, i32 507, ptr @.str.39, ptr @.str.18 }, [40 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"no client data found!\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"nvme_rdma_create_queue_ib\00", [38 x i8] zeroinitializer }, align 32
@nvme_rdma_create_queue_ib._entry_ptr = internal global ptr @nvme_rdma_create_queue_ib._entry, section ".printk_index", align 4
@nvme_rdma_create_queue_ib._entry.75 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.76, ptr @.str.74, ptr @.str.4, i32 543, ptr @.str.39, ptr @.str.18 }, [40 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"failed to initialize MR pool sized %d for QID %d\0A\00", [46 x i8] zeroinitializer }, align 32
@nvme_rdma_create_queue_ib._entry_ptr.77 = internal global ptr @nvme_rdma_create_queue_ib._entry.75, section ".printk_index", align 4
@nvme_rdma_create_queue_ib._entry.78 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.79, ptr @.str.74, ptr @.str.4, i32 554, ptr @.str.39, ptr @.str.18 }, [40 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"failed to initialize PI MR pool sized %d for QID %d\0A\00", [43 x i8] zeroinitializer }, align 32
@nvme_rdma_create_queue_ib._entry_ptr.80 = internal global ptr @nvme_rdma_create_queue_ib._entry.78, section ".printk_index", align 4
@device_list = internal global { %struct.list_head, [24 x i8] } { %struct.list_head { ptr @device_list, ptr @device_list }, [24 x i8] zeroinitializer }, align 32
@nvme_rdma_find_get_device._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.81, ptr @.str.82, ptr @.str.4, i32 397, ptr @.str.39, ptr @.str.18 }, [40 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Memory registrations not supported.\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"nvme_rdma_find_get_device\00", [38 x i8] zeroinitializer }, align 32
@nvme_rdma_find_get_device._entry_ptr = internal global ptr @nvme_rdma_find_get_device._entry, section ".printk_index", align 4
@nvme_rdma_qp_event.__UNIQUE_ID_ddebug569 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.56, ptr @.str.83, ptr @.str.4, ptr @.str.84, i8 0, i8 60, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.83 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"nvme_rdma_qp_event\00", [45 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"QP event %s (%d)\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"nvme_rdma: QP event %s (%d)\0A\00", [35 x i8] zeroinitializer }, align 32
@nvme_rdma_route_resolved._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.86, ptr @.str.87, ptr @.str.4, i32 1925, ptr @.str.39, ptr @.str.18 }, [40 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"rdma_connect_locked failed (%d).\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"nvme_rdma_route_resolved\00", [39 x i8] zeroinitializer }, align 32
@nvme_rdma_route_resolved._entry_ptr = internal global ptr @nvme_rdma_route_resolved._entry, section ".printk_index", align 4
@nvme_rdma_post_recv._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.88, ptr @.str.4, i32 1691, ptr @.str.39, ptr @.str.18 }, [40 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"nvme_rdma_post_recv\00", [44 x i8] zeroinitializer }, align 32
@nvme_rdma_post_recv._entry_ptr = internal global ptr @nvme_rdma_post_recv._entry, section ".printk_index", align 4
@.str.89 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"RECV\00", [27 x i8] zeroinitializer }, align 32
@nvme_rdma_recv_done._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.90, ptr @.str.91, ptr @.str.4, i32 1799, ptr @.str.39, ptr @.str.18 }, [40 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Unexpected nvme completion length(%d)\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"nvme_rdma_recv_done\00", [44 x i8] zeroinitializer }, align 32
@nvme_rdma_recv_done._entry_ptr = internal global ptr @nvme_rdma_recv_done._entry, section ".printk_index", align 4
@nvme_rdma_process_nvme_rsp._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.92, ptr @.str.93, ptr @.str.4, i32 1748, ptr @.str.39, ptr @.str.18 }, [40 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"got bad command_id %#x on QP %#x\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"nvme_rdma_process_nvme_rsp\00", [37 x i8] zeroinitializer }, align 32
@nvme_rdma_process_nvme_rsp._entry_ptr = internal global ptr @nvme_rdma_process_nvme_rsp._entry, section ".printk_index", align 4
@nvme_rdma_process_nvme_rsp._entry.94 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.95, ptr @.str.93, ptr @.str.4, i32 1762, ptr @.str.39, ptr @.str.18 }, [40 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Bogus remote invalidation for rkey %#x\0A\00", [56 x i8] zeroinitializer }, align 32
@nvme_rdma_process_nvme_rsp._entry_ptr.96 = internal global ptr @nvme_rdma_process_nvme_rsp._entry.94, section ".printk_index", align 4
@nvme_rdma_process_nvme_rsp._entry.97 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.98, ptr @.str.93, ptr @.str.4, i32 1772, ptr @.str.39, ptr @.str.18 }, [40 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"Queueing INV WR for rkey %#x failed (%d)\0A\00", [54 x i8] zeroinitializer }, align 32
@nvme_rdma_process_nvme_rsp._entry_ptr.99 = internal global ptr @nvme_rdma_process_nvme_rsp._entry.97, section ".printk_index", align 4
@nvme_find_rq._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.100, ptr @.str.101, ptr @.str.102, i32 524, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\013nvme_rdma: could not locate request for tag %#x\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"nvme_find_rq\00", [19 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"drivers/nvme/host/nvme.h\00", [39 x i8] zeroinitializer }, align 32
@nvme_find_rq._entry_ptr = internal global ptr @nvme_find_rq._entry, section ".printk_index", align 4
@nvme_find_rq._entry.103 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.104, ptr @.str.101, ptr @.str.102, i32 530, ptr @.str.39, ptr @.str.18 }, [40 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"request %#x genctr mismatch (got %#x expected %#x)\0A\00", [44 x i8] zeroinitializer }, align 32
@nvme_find_rq._entry_ptr.105 = internal global ptr @nvme_find_rq._entry.103, section ".printk_index", align 4
@.str.106 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"LOCAL_INV\00", [22 x i8] zeroinitializer }, align 32
@nvme_rdma_check_pi_status._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.107, ptr @.str.108, ptr @.str.4, i32 2134, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\013nvme_rdma: ib_check_mr_status failed, ret %d\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"nvme_rdma_check_pi_status\00", [38 x i8] zeroinitializer }, align 32
@nvme_rdma_check_pi_status._entry_ptr = internal global ptr @nvme_rdma_check_pi_status._entry, section ".printk_index", align 4
@nvme_rdma_check_pi_status._entry.109 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.110, ptr @.str.108, ptr @.str.4, i32 2153, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [66 x i8], [62 x i8] } { [66 x i8] c"\013nvme_rdma: PI error found type %d expected 0x%x vs actual 0x%x\0A\00", [62 x i8] zeroinitializer }, align 32
@nvme_rdma_check_pi_status._entry_ptr.111 = internal global ptr @nvme_rdma_check_pi_status._entry.109, section ".printk_index", align 4
@nvme_rdma_conn_rejected._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.112, ptr @.str.113, ptr @.str.4, i32 1852, ptr @.str.39, ptr @.str.18 }, [40 x i8] zeroinitializer }, align 32
@.str.112 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"Connect rejected: status %d (%s) nvme status %d (%s).\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.113 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"nvme_rdma_conn_rejected\00", [40 x i8] zeroinitializer }, align 32
@nvme_rdma_conn_rejected._entry_ptr = internal global ptr @nvme_rdma_conn_rejected._entry, section ".printk_index", align 4
@nvme_rdma_conn_rejected._entry.114 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.115, ptr @.str.113, ptr @.str.4, i32 1855, ptr @.str.39, ptr @.str.18 }, [40 x i8] zeroinitializer }, align 32
@.str.115 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Connect rejected: status %d (%s).\0A\00", [61 x i8] zeroinitializer }, align 32
@nvme_rdma_conn_rejected._entry_ptr.116 = internal global ptr @nvme_rdma_conn_rejected._entry.114, section ".printk_index", align 4
@.str.117 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"invalid length\00", [17 x i8] zeroinitializer }, align 32
@.str.118 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"invalid record format\00", [42 x i8] zeroinitializer }, align 32
@.str.119 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"invalid queue ID\00", [47 x i8] zeroinitializer }, align 32
@.str.120 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"invalid host SQ size\00", [43 x i8] zeroinitializer }, align 32
@.str.121 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"invalid host RQ size\00", [43 x i8] zeroinitializer }, align 32
@.str.122 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"resource not found\00", [45 x i8] zeroinitializer }, align 32
@.str.123 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"invalid IRD\00", [20 x i8] zeroinitializer }, align 32
@.str.124 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"Invalid ORD\00", [20 x i8] zeroinitializer }, align 32
@.str.125 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"unrecognized reason\00", [44 x i8] zeroinitializer }, align 32
@nvme_rdma_wait_for_cm.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@dma_map_single_attrs.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.126 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/dma-mapping.h\00", [36 x i8] zeroinitializer }, align 32
@.str.127 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"%s %s: rejecting DMA map of vmalloc memory\0A\00", [52 x i8] zeroinitializer }, align 32
@mem_map = external dso_local local_unnamed_addr global ptr, align 4
@nvme_rdma_admin_mq_ops = internal constant { %struct.blk_mq_ops, [56 x i8] } { %struct.blk_mq_ops { ptr @nvme_rdma_queue_rq, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @nvme_rdma_timeout, ptr null, ptr @nvme_rdma_complete_rq, ptr @nvme_rdma_init_admin_hctx, ptr null, ptr @nvme_rdma_init_request, ptr @nvme_rdma_exit_request, ptr null, ptr null, ptr null, ptr null }, [56 x i8] zeroinitializer }, align 32
@admin_timeout = external dso_local local_unnamed_addr global i32, align 4
@nvme_rdma_mq_ops = internal constant { %struct.blk_mq_ops, [56 x i8] } { %struct.blk_mq_ops { ptr @nvme_rdma_queue_rq, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @nvme_rdma_timeout, ptr @nvme_rdma_poll, ptr @nvme_rdma_complete_rq, ptr @nvme_rdma_init_hctx, ptr null, ptr @nvme_rdma_init_request, ptr @nvme_rdma_exit_request, ptr null, ptr null, ptr @nvme_rdma_map_queues, ptr null }, [56 x i8] zeroinitializer }, align 32
@nvme_io_timeout = external dso_local local_unnamed_addr global i32, align 4
@nvme_rdma_queue_rq.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@nvme_rdma_queue_rq._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.128, ptr @.str.129, ptr @.str.4, i32 2087, ptr @.str.39, ptr @.str.18 }, [40 x i8] zeroinitializer }, align 32
@.str.128 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Failed to map data (%d)\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.129 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"nvme_rdma_queue_rq\00", [45 x i8] zeroinitializer }, align 32
@nvme_rdma_queue_rq._entry_ptr = internal global ptr @nvme_rdma_queue_rq._entry, section ".printk_index", align 4
@nvme_rdma_map_sg_pi.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.130 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"SIG\00", [28 x i8] zeroinitializer }, align 32
@nvme_rdma_map_sg_fr.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.131 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"MEMREG\00", [25 x i8] zeroinitializer }, align 32
@.str.132 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"SEND\00", [27 x i8] zeroinitializer }, align 32
@nvme_rdma_timeout._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.133, ptr @.str.134, ptr @.str.4, i32 2010, ptr @.str.36, ptr @.str.18 }, [40 x i8] zeroinitializer }, align 32
@.str.133 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"I/O %d QID %d timeout\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.134 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"nvme_rdma_timeout\00", [46 x i8] zeroinitializer }, align 32
@nvme_rdma_timeout._entry_ptr = internal global ptr @nvme_rdma_timeout._entry, section ".printk_index", align 4
@nvme_rdma_map_queues._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.135, ptr @.str.136, ptr @.str.4, i32 2214, ptr @.str.17, ptr @.str.18 }, [40 x i8] zeroinitializer }, align 32
@.str.135 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"mapped %d/%d/%d default/read/poll queues.\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.136 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"nvme_rdma_map_queues\00", [43 x i8] zeroinitializer }, align 32
@nvme_rdma_map_queues._entry_ptr = internal global ptr @nvme_rdma_map_queues._entry, section ".printk_index", align 4
@nvme_rdma_start_queue._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.137, ptr @.str.138, ptr @.str.4, i32 697, ptr @.str.17, ptr @.str.18 }, [40 x i8] zeroinitializer }, align 32
@.str.137 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"failed to connect queue: %d ret=%d\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.138 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"nvme_rdma_start_queue\00", [42 x i8] zeroinitializer }, align 32
@nvme_rdma_start_queue._entry_ptr = internal global ptr @nvme_rdma_start_queue._entry, section ".printk_index", align 4
@nvme_rdma_alloc_io_queues._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.139, ptr @.str.140, ptr @.str.4, i32 741, ptr @.str.39, ptr @.str.18 }, [40 x i8] zeroinitializer }, align 32
@.str.139 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"unable to set any I/O queues\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.140 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"nvme_rdma_alloc_io_queues\00", [38 x i8] zeroinitializer }, align 32
@nvme_rdma_alloc_io_queues._entry_ptr = internal global ptr @nvme_rdma_alloc_io_queues._entry, section ".printk_index", align 4
@nvme_rdma_alloc_io_queues._entry.141 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.142, ptr @.str.140, ptr @.str.4, i32 747, ptr @.str.17, ptr @.str.18 }, [40 x i8] zeroinitializer }, align 32
@.str.142 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"creating %d I/O queues.\0A\00", [39 x i8] zeroinitializer }, align 32
@nvme_rdma_alloc_io_queues._entry_ptr.143 = internal global ptr @nvme_rdma_alloc_io_queues._entry.141, section ".printk_index", align 4
@__num_online_cpus = external dso_local global %struct.atomic_t, align 4
@.str.144 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"nvme_rdma_ctrl_mutex.wait_lock\00", [33 x i8] zeroinitializer }, align 32
@.str.145 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"nvme_rdma_ctrl_mutex\00", [43 x i8] zeroinitializer }, align 32
@switch.table.nvme_rdma_cm_handler = internal constant { [8 x ptr], [32 x i8] } { [8 x ptr] [ptr @.str.117, ptr @.str.118, ptr @.str.119, ptr @.str.120, ptr @.str.121, ptr @.str.122, ptr @.str.123, ptr @.str.124], [32 x i8] zeroinitializer }, align 32
@switch.table.nvme_rdma_complete_rq = internal constant { [3 x i16], [26 x i8] } { [3 x i16] [i16 642, i16 644, i16 643], [26 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 3]
@__sancov_gen_cov_switch_values.146 = internal global [14 x i64] [i64 12, i64 32, i64 0, i64 1, i64 2, i64 3, i64 6, i64 7, i64 8, i64 9, i64 10, i64 11, i64 14, i64 15]
@__sancov_gen_cov_switch_values.147 = internal global [5 x i64] [i64 3, i64 32, i64 4294967284, i64 4294967285, i64 4294967291]
@___asan_gen_.148 = private unnamed_addr constant [16 x i8] c"register_always\00", align 1
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.641, i32 147, i32 13 }
@___asan_gen_.151 = private unnamed_addr constant [20 x i8] c"nvme_rdma_transport\00", align 1
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.641, i32 2420, i32 34 }
@___asan_gen_.154 = private unnamed_addr constant [20 x i8] c"nvme_rdma_ib_client\00", align 1
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.641, i32 2461, i32 25 }
@___asan_gen_.157 = private unnamed_addr constant [21 x i8] c"nvme_rdma_ctrl_mutex\00", align 1
@___asan_gen_.160 = private unnamed_addr constant [20 x i8] c"nvme_rdma_ctrl_list\00", align 1
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.641, i32 139, i32 8 }
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.641, i32 2421, i32 11 }
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.641, i32 2339, i32 12 }
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.641, i32 2350, i32 3 }
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.641, i32 2359, i32 4 }
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.641, i32 2370, i32 2 }
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.641, i32 2372, i32 2 }
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.641, i32 2373, i32 2 }
@___asan_gen_.211 = private unnamed_addr constant [19 x i8] c"nvme_rdma_ctrl_ops\00", align 1
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.641, i32 2282, i32 35 }
@___asan_gen_.225 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.641, i32 2398, i32 2 }
@___asan_gen_.234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.641, i32 1184, i32 2 }
@___asan_gen_.240 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.641, i32 1192, i32 2 }
@___asan_gen_.249 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.641, i32 1080, i32 3 }
@___asan_gen_.250 = private unnamed_addr constant [18 x i8] c"device_list_mutex\00", align 1
@___asan_gen_.258 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.641, i32 137, i32 8 }
@___asan_gen_.263 = private unnamed_addr constant [27 x i8] c"../include/rdma/ib_verbs.h\00", align 1
@___asan_gen_.264 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.263, i32 3498, i32 2 }
@___asan_gen_.267 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.641, i32 1708, i32 30 }
@___asan_gen_.276 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.641, i32 1245, i32 3 }
@___asan_gen_.288 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.641, i32 1224, i32 2 }
@___asan_gen_.300 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.641, i32 1664, i32 3 }
@___asan_gen_.309 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.641, i32 1100, i32 3 }
@___asan_gen_.315 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.641, i32 1106, i32 3 }
@___asan_gen_.321 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.641, i32 1112, i32 3 }
@___asan_gen_.327 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.641, i32 1118, i32 3 }
@___asan_gen_.333 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.641, i32 1125, i32 3 }
@___asan_gen_.339 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.641, i32 585, i32 2 }
@___asan_gen_.342 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.641, i32 600, i32 17 }
@___asan_gen_.351 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.641, i32 603, i32 3 }
@___asan_gen_.357 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.641, i32 617, i32 3 }
@___asan_gen_.363 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.641, i32 624, i32 3 }
@___asan_gen_.364 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.368 = private unnamed_addr constant [30 x i8] c"../include/linux/completion.h\00", align 1
@___asan_gen_.369 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.368, i32 87, i32 2 }
@___asan_gen_.375 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.641, i32 1938, i32 2 }
@___asan_gen_.378 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.641, i32 1961, i32 3 }
@___asan_gen_.381 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.641, i32 1968, i32 3 }
@___asan_gen_.387 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.641, i32 1976, i32 3 }
@___asan_gen_.396 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.641, i32 1874, i32 3 }
@___asan_gen_.405 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.641, i32 506, i32 3 }
@___asan_gen_.411 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.641, i32 541, i32 3 }
@___asan_gen_.417 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.641, i32 552, i32 4 }
@___asan_gen_.418 = private unnamed_addr constant [12 x i8] c"device_list\00", align 1
@___asan_gen_.420 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.641, i32 136, i32 8 }
@___asan_gen_.429 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.641, i32 396, i32 3 }
@___asan_gen_.438 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.641, i32 242, i32 2 }
@___asan_gen_.447 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.641, i32 1924, i32 3 }
@___asan_gen_.453 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.641, i32 1690, i32 3 }
@___asan_gen_.456 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.641, i32 1792, i32 30 }
@___asan_gen_.465 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.641, i32 1798, i32 3 }
@___asan_gen_.474 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.641, i32 1746, i32 3 }
@___asan_gen_.480 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.641, i32 1760, i32 4 }
@___asan_gen_.486 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.641, i32 1770, i32 4 }
@___asan_gen_.498 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.503, i32 523, i32 3 }
@___asan_gen_.503 = private unnamed_addr constant [28 x i8] c"../drivers/nvme/host/nvme.h\00", align 1
@___asan_gen_.504 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.503, i32 528, i32 3 }
@___asan_gen_.507 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.641, i32 1264, i32 30 }
@___asan_gen_.516 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.641, i32 2134, i32 3 }
@___asan_gen_.522 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.641, i32 2151, i32 3 }
@___asan_gen_.531 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.641, i32 1850, i32 3 }
@___asan_gen_.537 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.641, i32 1854, i32 3 }
@___asan_gen_.540 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.563, i32 30, i32 10 }
@___asan_gen_.543 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.563, i32 32, i32 10 }
@___asan_gen_.546 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.563, i32 34, i32 10 }
@___asan_gen_.549 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.563, i32 36, i32 10 }
@___asan_gen_.552 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.563, i32 38, i32 10 }
@___asan_gen_.555 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.563, i32 40, i32 10 }
@___asan_gen_.558 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.563, i32 42, i32 10 }
@___asan_gen_.561 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.563, i32 44, i32 10 }
@___asan_gen_.563 = private unnamed_addr constant [29 x i8] c"../include/linux/nvme-rdma.h\00", align 1
@___asan_gen_.564 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.563, i32 46, i32 10 }
@___asan_gen_.569 = private unnamed_addr constant [31 x i8] c"../include/linux/dma-mapping.h\00", align 1
@___asan_gen_.570 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.569, i32 326, i32 6 }
@___asan_gen_.571 = private unnamed_addr constant [23 x i8] c"nvme_rdma_admin_mq_ops\00", align 1
@___asan_gen_.573 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.641, i32 2230, i32 32 }
@___asan_gen_.574 = private unnamed_addr constant [17 x i8] c"nvme_rdma_mq_ops\00", align 1
@___asan_gen_.576 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.641, i32 2219, i32 32 }
@___asan_gen_.585 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.641, i32 2086, i32 3 }
@___asan_gen_.588 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.641, i32 1467, i32 30 }
@___asan_gen_.591 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.641, i32 1255, i32 30 }
@___asan_gen_.594 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.641, i32 1634, i32 30 }
@___asan_gen_.603 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.641, i32 2009, i32 2 }
@___asan_gen_.612 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.641, i32 2210, i32 2 }
@___asan_gen_.621 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.641, i32 696, i32 3 }
@___asan_gen_.630 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.641, i32 740, i32 3 }
@___asan_gen_.631 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.636 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.641, i32 746, i32 2 }
@___asan_gen_.640 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.641 = private constant [28 x i8] c"../drivers/nvme/host/rdma.c\00", align 1
@___asan_gen_.642 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.641, i32 140, i32 8 }
@___asan_gen_.643 = private unnamed_addr constant [34 x i8] c"switch.table.nvme_rdma_cm_handler\00", align 1
@___asan_gen_.644 = private unnamed_addr constant [35 x i8] c"switch.table.nvme_rdma_complete_rq\00", align 1
@llvm.compiler.used = appending global [216 x ptr] [ptr @__UNIQUE_ID_file594, ptr @__UNIQUE_ID_license595, ptr @__UNIQUE_ID_register_always568, ptr @__UNIQUE_ID_register_alwaystype567, ptr @__exitcall_nvme_rdma_cleanup_module, ptr @__initcall__kmod_nvme_rdma__593_2499_nvme_rdma_init_module6, ptr @__param_register_always, ptr @nvme_find_rq._entry, ptr @nvme_find_rq._entry.103, ptr @nvme_find_rq._entry_ptr, ptr @nvme_find_rq._entry_ptr.105, ptr @nvme_rdma_addr_resolved._entry, ptr @nvme_rdma_addr_resolved._entry_ptr, ptr @nvme_rdma_alloc_io_queues._entry, ptr @nvme_rdma_alloc_io_queues._entry.141, ptr @nvme_rdma_alloc_io_queues._entry_ptr, ptr @nvme_rdma_alloc_io_queues._entry_ptr.143, ptr @nvme_rdma_alloc_queue._entry, ptr @nvme_rdma_alloc_queue._entry.59, ptr @nvme_rdma_alloc_queue._entry.62, ptr @nvme_rdma_alloc_queue._entry_ptr, ptr @nvme_rdma_alloc_queue._entry_ptr.61, ptr @nvme_rdma_alloc_queue._entry_ptr.64, ptr @nvme_rdma_check_pi_status._entry, ptr @nvme_rdma_check_pi_status._entry.109, ptr @nvme_rdma_check_pi_status._entry_ptr, ptr @nvme_rdma_check_pi_status._entry_ptr.111, ptr @nvme_rdma_cleanup_module, ptr @nvme_rdma_cm_handler._entry, ptr @nvme_rdma_cm_handler._entry_ptr, ptr @nvme_rdma_conn_rejected._entry, ptr @nvme_rdma_conn_rejected._entry.114, ptr @nvme_rdma_conn_rejected._entry_ptr, ptr @nvme_rdma_conn_rejected._entry_ptr.116, ptr @nvme_rdma_create_ctrl._entry, ptr @nvme_rdma_create_ctrl._entry.15, ptr @nvme_rdma_create_ctrl._entry.5, ptr @nvme_rdma_create_ctrl._entry_ptr, ptr @nvme_rdma_create_ctrl._entry_ptr.19, ptr @nvme_rdma_create_ctrl._entry_ptr.7, ptr @nvme_rdma_create_queue_ib._entry, ptr @nvme_rdma_create_queue_ib._entry.75, ptr @nvme_rdma_create_queue_ib._entry.78, ptr @nvme_rdma_create_queue_ib._entry_ptr, ptr @nvme_rdma_create_queue_ib._entry_ptr.77, ptr @nvme_rdma_create_queue_ib._entry_ptr.80, ptr @nvme_rdma_error_recovery._entry, ptr @nvme_rdma_error_recovery._entry_ptr, ptr @nvme_rdma_find_get_device._entry, ptr @nvme_rdma_find_get_device._entry_ptr, ptr @nvme_rdma_map_queues._entry, ptr @nvme_rdma_map_queues._entry_ptr, ptr @nvme_rdma_post_recv._entry, ptr @nvme_rdma_post_recv._entry_ptr, ptr @nvme_rdma_post_send._entry, ptr @nvme_rdma_post_send._entry_ptr, ptr @nvme_rdma_process_nvme_rsp._entry, ptr @nvme_rdma_process_nvme_rsp._entry.94, ptr @nvme_rdma_process_nvme_rsp._entry.97, ptr @nvme_rdma_process_nvme_rsp._entry_ptr, ptr @nvme_rdma_process_nvme_rsp._entry_ptr.96, ptr @nvme_rdma_process_nvme_rsp._entry_ptr.99, ptr @nvme_rdma_queue_rq._entry, ptr @nvme_rdma_queue_rq._entry_ptr, ptr @nvme_rdma_reconnect_ctrl_work._entry, ptr @nvme_rdma_reconnect_ctrl_work._entry.22, ptr @nvme_rdma_reconnect_ctrl_work._entry_ptr, ptr @nvme_rdma_reconnect_ctrl_work._entry_ptr.24, ptr @nvme_rdma_reconnect_or_remove._entry, ptr @nvme_rdma_reconnect_or_remove._entry_ptr, ptr @nvme_rdma_recv_done._entry, ptr @nvme_rdma_recv_done._entry_ptr, ptr @nvme_rdma_route_resolved._entry, ptr @nvme_rdma_route_resolved._entry_ptr, ptr @nvme_rdma_setup_ctrl._entry, ptr @nvme_rdma_setup_ctrl._entry.42, ptr @nvme_rdma_setup_ctrl._entry.45, ptr @nvme_rdma_setup_ctrl._entry.48, ptr @nvme_rdma_setup_ctrl._entry.51, ptr @nvme_rdma_setup_ctrl._entry_ptr, ptr @nvme_rdma_setup_ctrl._entry_ptr.44, ptr @nvme_rdma_setup_ctrl._entry_ptr.47, ptr @nvme_rdma_setup_ctrl._entry_ptr.50, ptr @nvme_rdma_setup_ctrl._entry_ptr.53, ptr @nvme_rdma_start_queue._entry, ptr @nvme_rdma_start_queue._entry_ptr, ptr @nvme_rdma_timeout._entry, ptr @nvme_rdma_timeout._entry_ptr, ptr @nvme_rdma_wr_error._entry, ptr @nvme_rdma_wr_error._entry_ptr, ptr @register_always, ptr @nvme_rdma_transport, ptr @nvme_rdma_ib_client, ptr @nvme_rdma_ctrl_mutex, ptr @nvme_rdma_ctrl_list, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.6, ptr @nvme_rdma_create_ctrl.__key, ptr @.str.8, ptr @nvme_rdma_create_ctrl.__key.9, ptr @.str.10, ptr @nvme_rdma_create_ctrl.__key.11, ptr @.str.12, ptr @nvme_rdma_create_ctrl.__key.13, ptr @.str.14, ptr @nvme_rdma_ctrl_ops, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.20, ptr @.str.21, ptr @.str.23, ptr @.str.25, ptr @.str.26, ptr @device_list_mutex, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.43, ptr @.str.46, ptr @.str.49, ptr @.str.52, ptr @nvme_rdma_alloc_queue.__key, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.60, ptr @.str.63, ptr @init_completion.__key, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.76, ptr @.str.79, ptr @device_list, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.95, ptr @.str.98, ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.104, ptr @.str.106, ptr @.str.107, ptr @.str.108, ptr @.str.110, ptr @.str.112, ptr @.str.113, ptr @.str.115, ptr @.str.117, ptr @.str.118, ptr @.str.119, ptr @.str.120, ptr @.str.121, ptr @.str.122, ptr @.str.123, ptr @.str.124, ptr @.str.125, ptr @.str.126, ptr @.str.127, ptr @nvme_rdma_admin_mq_ops, ptr @nvme_rdma_mq_ops, ptr @.str.128, ptr @.str.129, ptr @.str.130, ptr @.str.131, ptr @.str.132, ptr @.str.133, ptr @.str.134, ptr @.str.135, ptr @.str.136, ptr @.str.137, ptr @.str.138, ptr @.str.139, ptr @.str.140, ptr @.str.142, ptr @.str.144, ptr @.str.145, ptr @switch.table.nvme_rdma_cm_handler, ptr @switch.table.nvme_rdma_complete_rq], section "llvm.metadata"
@0 = internal global [167 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @register_always to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvme_rdma_transport to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvme_rdma_ib_client to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvme_rdma_ctrl_mutex to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvme_rdma_ctrl_list to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.640 to i32), i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.640 to i32), i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvme_rdma_create_ctrl._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.640 to i32), i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.640 to i32), i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.640 to i32), i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvme_rdma_create_ctrl._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.640 to i32), i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvme_rdma_create_ctrl.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.640 to i32), i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvme_rdma_create_ctrl.__key.9 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.640 to i32), i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvme_rdma_create_ctrl.__key.11 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.640 to i32), i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvme_rdma_create_ctrl.__key.13 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.640 to i32), i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvme_rdma_ctrl_ops to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvme_rdma_create_ctrl._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.640 to i32), i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.640 to i32), i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.640 to i32), i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvme_rdma_reconnect_ctrl_work._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.640 to i32), i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.640 to i32), i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvme_rdma_reconnect_ctrl_work._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.640 to i32), i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvme_rdma_reconnect_or_remove._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.640 to i32), i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.640 to i32), i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @device_list_mutex to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.640 to i32), i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.640 to i32), i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.640 to i32), i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.640 to i32), i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.640 to i32), i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvme_rdma_wr_error._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.640 to i32), i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.640 to i32), i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvme_rdma_error_recovery._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.640 to i32), i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.640 to i32), i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.640 to i32), i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvme_rdma_post_send._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.640 to i32), i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.640 to i32), i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.640 to i32), i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvme_rdma_setup_ctrl._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.640 to i32), i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.640 to i32), i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvme_rdma_setup_ctrl._entry.42 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.640 to i32), i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvme_rdma_setup_ctrl._entry.45 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.640 to i32), i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvme_rdma_setup_ctrl._entry.48 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.640 to i32), i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvme_rdma_setup_ctrl._entry.51 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.640 to i32), i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvme_rdma_alloc_queue.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.640 to i32), i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.640 to i32), i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvme_rdma_alloc_queue._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.640 to i32), i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.640 to i32), i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvme_rdma_alloc_queue._entry.59 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.640 to i32), i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvme_rdma_alloc_queue._entry.62 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.640 to i32), i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_completion.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.640 to i32), i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.640 to i32), i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.640 to i32), i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.640 to i32), i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.640 to i32), i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvme_rdma_cm_handler._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.640 to i32), i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvme_rdma_addr_resolved._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.640 to i32), i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.640 to i32), i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvme_rdma_create_queue_ib._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.640 to i32), i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.640 to i32), i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvme_rdma_create_queue_ib._entry.75 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.640 to i32), i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvme_rdma_create_queue_ib._entry.78 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.640 to i32), i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @device_list to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvme_rdma_find_get_device._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.640 to i32), i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.640 to i32), i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.640 to i32), i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.640 to i32), i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.640 to i32), i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvme_rdma_route_resolved._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.640 to i32), i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.640 to i32), i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvme_rdma_post_recv._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.640 to i32), i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.640 to i32), i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvme_rdma_recv_done._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.640 to i32), i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.640 to i32), i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvme_rdma_process_nvme_rsp._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.640 to i32), i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.640 to i32), i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvme_rdma_process_nvme_rsp._entry.94 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.640 to i32), i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvme_rdma_process_nvme_rsp._entry.97 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.640 to i32), i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvme_find_rq._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.640 to i32), i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.640 to i32), i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.640 to i32), i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvme_find_rq._entry.103 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.640 to i32), i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.640 to i32), i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvme_rdma_check_pi_status._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.640 to i32), i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.640 to i32), i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvme_rdma_check_pi_status._entry.109 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 66, i32 128, i32 ptrtoint (ptr @___asan_gen_.640 to i32), i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvme_rdma_conn_rejected._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.640 to i32), i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.640 to i32), i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvme_rdma_conn_rejected._entry.114 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.640 to i32), i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.640 to i32), i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.640 to i32), i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.640 to i32), i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.640 to i32), i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.640 to i32), i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.122 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.640 to i32), i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.123 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.640 to i32), i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.124 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.640 to i32), i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.125 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.640 to i32), i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.126 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.640 to i32), i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.127 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.640 to i32), i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvme_rdma_admin_mq_ops to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvme_rdma_mq_ops to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvme_rdma_queue_rq._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.128 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.640 to i32), i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.129 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.640 to i32), i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.130 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.640 to i32), i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.131 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.640 to i32), i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.132 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.640 to i32), i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvme_rdma_timeout._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.133 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.640 to i32), i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.134 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.640 to i32), i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvme_rdma_map_queues._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.612 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.135 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.640 to i32), i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.612 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.136 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.640 to i32), i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.612 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvme_rdma_start_queue._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.137 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.640 to i32), i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.138 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.640 to i32), i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvme_rdma_alloc_io_queues._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.139 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.640 to i32), i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.140 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.640 to i32), i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvme_rdma_alloc_io_queues._entry.141 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.636 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.142 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.640 to i32), i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.636 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.144 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.640 to i32), i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.145 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.640 to i32), i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.nvme_rdma_cm_handler to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.643 to i32), i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.nvme_rdma_complete_rq to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @nvme_rdma_cleanup_module() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @nvmf_unregister_transport(ptr noundef nonnull @nvme_rdma_transport) #11
  tail call void @ib_unregister_client(ptr noundef nonnull @nvme_rdma_ib_client) #11
  tail call void @mutex_lock_nested(ptr noundef nonnull @nvme_rdma_ctrl_mutex, i32 noundef 0) #11
  %.pn8 = load ptr, ptr @nvme_rdma_ctrl_list, align 4
  %cmp.not9 = icmp eq ptr %.pn8, @nvme_rdma_ctrl_list
  br i1 %cmp.not9, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %.pn10 = phi ptr [ %.pn, %for.body.for.body_crit_edge ], [ %.pn8, %entry.for.body_crit_edge ]
  %ctrl1 = getelementptr i8, ptr %.pn10, i32 460
  %call = tail call i32 @nvme_delete_ctrl(ptr noundef %ctrl1) #11
  %0 = ptrtoint ptr %.pn10 to i32
  call void @__asan_load4_noabort(i32 %0)
  %.pn = load ptr, ptr %.pn10, align 4
  %cmp.not = icmp eq ptr %.pn, @nvme_rdma_ctrl_list
  br i1 %cmp.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  tail call void @mutex_unlock(ptr noundef nonnull @nvme_rdma_ctrl_mutex) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nvme_delete_wq to i32))
  %1 = load ptr, ptr @nvme_delete_wq, align 4
  tail call void @flush_workqueue(ptr noundef %1) #11
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvmf_unregister_transport(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ib_unregister_client(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvme_delete_ctrl(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @flush_workqueue(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @nvme_rdma_init_module() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @ib_register_client(ptr noundef nonnull @nvme_rdma_ib_client) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @nvmf_register_transport(ptr noundef nonnull @nvme_rdma_transport) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %err_unreg_client

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

err_unreg_client:                                 ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @ib_unregister_client(ptr noundef nonnull @nvme_rdma_ib_client) #11
  br label %cleanup

cleanup:                                          ; preds = %err_unreg_client, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %err_unreg_client ], [ %call, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @nvme_rdma_create_ctrl(ptr noundef %dev, ptr noundef %opts) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 13) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 13), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 4384) #14
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %ctrl2 = getelementptr inbounds %struct.nvme_rdma_ctrl, ptr %call7.i.i, i32 0, i32 11
  %opts3 = getelementptr inbounds %struct.nvme_rdma_ctrl, ptr %call7.i.i, i32 0, i32 11, i32 93
  %1 = ptrtoint ptr %opts3 to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %opts, ptr %opts3, align 8
  %list = getelementptr inbounds %struct.nvme_rdma_ctrl, ptr %call7.i.i, i32 0, i32 5
  %2 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %2)
  store volatile ptr %list, ptr %list, align 4
  %prev.i = getelementptr inbounds %struct.nvme_rdma_ctrl, ptr %call7.i.i, i32 0, i32 5, i32 1
  %3 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %list, ptr %prev.i, align 8
  %4 = ptrtoint ptr %opts to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %opts, align 4
  %and = and i32 %5, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool4.not = icmp eq i32 %and, 0
  br i1 %tobool4.not, label %if.then5, label %if.end.if.end12_crit_edge

if.end.if.end12_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end12

if.then5:                                         ; preds = %if.end
  %call6 = tail call noalias ptr @kstrdup(ptr noundef nonnull @.str.1, i32 noundef 3264) #11
  %trsvcid = getelementptr inbounds %struct.nvmf_ctrl_options, ptr %opts, i32 0, i32 4
  %6 = ptrtoint ptr %trsvcid to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call6, ptr %trsvcid, align 4
  %tobool8.not = icmp eq ptr %call6, null
  br i1 %tobool8.not, label %if.then5.out_free_ctrl_crit_edge, label %if.end10

if.then5.out_free_ctrl_crit_edge:                 ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #13
  br label %out_free_ctrl

if.end10:                                         ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #13
  %7 = ptrtoint ptr %opts to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %opts, align 4
  %or = or i32 %8, 8
  store i32 %or, ptr %opts, align 4
  br label %if.end12

if.end12:                                         ; preds = %if.end10, %if.end.if.end12_crit_edge
  %traddr = getelementptr inbounds %struct.nvmf_ctrl_options, ptr %opts, i32 0, i32 3
  %9 = ptrtoint ptr %traddr to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %traddr, align 4
  %trsvcid13 = getelementptr inbounds %struct.nvmf_ctrl_options, ptr %opts, i32 0, i32 4
  %11 = ptrtoint ptr %trsvcid13 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %trsvcid13, align 4
  %addr = getelementptr inbounds %struct.nvme_rdma_ctrl, ptr %call7.i.i, i32 0, i32 9
  %call14 = tail call i32 @inet_pton_with_scope(ptr noundef nonnull @init_net, i16 noundef zeroext 0, ptr noundef %10, ptr noundef %12, ptr noundef %addr) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %if.end20, label %do.end

do.end:                                           ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #13
  %13 = ptrtoint ptr %traddr to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %traddr, align 4
  %15 = ptrtoint ptr %trsvcid13 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %trsvcid13, align 4
  %call19 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef %14, ptr noundef %16) #15
  br label %out_free_ctrl

if.end20:                                         ; preds = %if.end12
  %17 = ptrtoint ptr %opts to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %opts, align 4
  %and22 = and i32 %18, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and22)
  %tobool23.not = icmp eq i32 %and22, 0
  br i1 %tobool23.not, label %if.end20.if.end35_crit_edge, label %if.then24

if.end20.if.end35_crit_edge:                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end35

if.then24:                                        ; preds = %if.end20
  %host_traddr = getelementptr inbounds %struct.nvmf_ctrl_options, ptr %opts, i32 0, i32 5
  %19 = ptrtoint ptr %host_traddr to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %host_traddr, align 4
  %src_addr = getelementptr inbounds %struct.nvme_rdma_ctrl, ptr %call7.i.i, i32 0, i32 10
  %call25 = tail call i32 @inet_pton_with_scope(ptr noundef nonnull @init_net, i16 noundef zeroext 0, ptr noundef %20, ptr noundef null, ptr noundef %src_addr) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25)
  %tobool26.not = icmp eq i32 %call25, 0
  br i1 %tobool26.not, label %if.then24.if.end35_crit_edge, label %do.end30

if.then24.if.end35_crit_edge:                     ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end35

do.end30:                                         ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #13
  %21 = ptrtoint ptr %host_traddr to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %host_traddr, align 4
  %call33 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef %22) #15
  br label %out_free_ctrl

if.end35:                                         ; preds = %if.then24.if.end35_crit_edge, %if.end20.if.end35_crit_edge
  %duplicate_connect = getelementptr inbounds %struct.nvmf_ctrl_options, ptr %opts, i32 0, i32 11
  %23 = ptrtoint ptr %duplicate_connect to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %duplicate_connect, align 1, !range !336
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %24)
  %tobool36.not = icmp eq i8 %24, 0
  br i1 %tobool36.not, label %land.lhs.true, label %if.end35.do.body41_crit_edge

if.end35.do.body41_crit_edge:                     ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body41

land.lhs.true:                                    ; preds = %if.end35
  tail call void @mutex_lock_nested(ptr noundef nonnull @nvme_rdma_ctrl_mutex, i32 noundef 0) #11
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %land.lhs.true
  %.pn.in.i = phi ptr [ @nvme_rdma_ctrl_list, %land.lhs.true ], [ %.pn.i, %for.body.i.for.cond.i_crit_edge ]
  %25 = ptrtoint ptr %.pn.in.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %.pn.i = load ptr, ptr %.pn.in.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, @nvme_rdma_ctrl_list
  br i1 %cmp.not.i, label %nvme_rdma_existing_controller.exit, label %for.body.i

for.body.i:                                       ; preds = %for.cond.i
  %ctrl1.i = getelementptr i8, ptr %.pn.i, i32 460
  %call.i = tail call zeroext i1 @nvmf_ip_options_match(ptr noundef %ctrl1.i, ptr noundef %opts) #11
  br i1 %call.i, label %nvme_rdma_existing_controller.exit.thread, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond.i

nvme_rdma_existing_controller.exit.thread:        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @mutex_unlock(ptr noundef nonnull @nvme_rdma_ctrl_mutex) #11
  br label %out_free_ctrl

nvme_rdma_existing_controller.exit:               ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @mutex_unlock(ptr noundef nonnull @nvme_rdma_ctrl_mutex) #11
  br label %do.body41

do.body41:                                        ; preds = %nvme_rdma_existing_controller.exit, %if.end35.do.body41_crit_edge
  %reconnect_work = getelementptr inbounds %struct.nvme_rdma_ctrl, ptr %call7.i.i, i32 0, i32 4
  tail call void @__init_work(ptr noundef %reconnect_work, i32 noundef 0) #11
  %26 = ptrtoint ptr %reconnect_work to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 -64, ptr %reconnect_work, align 8
  %lockdep_map = getelementptr inbounds %struct.nvme_rdma_ctrl, ptr %call7.i.i, i32 0, i32 4, i32 0, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.8, ptr noundef nonnull @nvme_rdma_create_ctrl.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #11
  %entry48 = getelementptr inbounds %struct.nvme_rdma_ctrl, ptr %call7.i.i, i32 0, i32 4, i32 0, i32 1
  %27 = ptrtoint ptr %entry48 to i32
  call void @__asan_store4_noabort(i32 %27)
  store volatile ptr %entry48, ptr %entry48, align 4
  %prev.i243 = getelementptr inbounds %struct.nvme_rdma_ctrl, ptr %call7.i.i, i32 0, i32 4, i32 0, i32 1, i32 1
  %28 = ptrtoint ptr %prev.i243 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %entry48, ptr %prev.i243, align 8
  %func = getelementptr inbounds %struct.nvme_rdma_ctrl, ptr %call7.i.i, i32 0, i32 4, i32 0, i32 2
  %29 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr @nvme_rdma_reconnect_ctrl_work, ptr %func, align 4
  %timer = getelementptr inbounds %struct.nvme_rdma_ctrl, ptr %call7.i.i, i32 0, i32 4, i32 1
  tail call void @init_timer_key(ptr noundef %timer, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef nonnull @.str.10, ptr noundef nonnull @nvme_rdma_create_ctrl.__key.9) #11
  %err_work = getelementptr inbounds %struct.nvme_rdma_ctrl, ptr %call7.i.i, i32 0, i32 2
  tail call void @__init_work(ptr noundef %err_work, i32 noundef 0) #11
  %30 = ptrtoint ptr %err_work to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 -64, ptr %err_work, align 4
  %lockdep_map65 = getelementptr inbounds %struct.nvme_rdma_ctrl, ptr %call7.i.i, i32 0, i32 2, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map65, ptr noundef nonnull @.str.12, ptr noundef nonnull @nvme_rdma_create_ctrl.__key.11, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #11
  %entry67 = getelementptr inbounds %struct.nvme_rdma_ctrl, ptr %call7.i.i, i32 0, i32 2, i32 1
  %31 = ptrtoint ptr %entry67 to i32
  call void @__asan_store4_noabort(i32 %31)
  store volatile ptr %entry67, ptr %entry67, align 8
  %prev.i244 = getelementptr inbounds %struct.nvme_rdma_ctrl, ptr %call7.i.i, i32 0, i32 2, i32 1, i32 1
  %32 = ptrtoint ptr %prev.i244 to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %entry67, ptr %prev.i244, align 4
  %func69 = getelementptr inbounds %struct.nvme_rdma_ctrl, ptr %call7.i.i, i32 0, i32 2, i32 2
  %33 = ptrtoint ptr %func69 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr @nvme_rdma_error_recovery_work, ptr %func69, align 8
  %reset_work = getelementptr inbounds %struct.nvme_rdma_ctrl, ptr %call7.i.i, i32 0, i32 11, i32 20
  tail call void @__init_work(ptr noundef %reset_work, i32 noundef 0) #11
  %34 = ptrtoint ptr %reset_work to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 -64, ptr %reset_work, align 8
  %lockdep_map81 = getelementptr inbounds %struct.nvme_rdma_ctrl, ptr %call7.i.i, i32 0, i32 11, i32 20, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map81, ptr noundef nonnull @.str.14, ptr noundef nonnull @nvme_rdma_create_ctrl.__key.13, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #11
  %entry84 = getelementptr inbounds %struct.nvme_rdma_ctrl, ptr %call7.i.i, i32 0, i32 11, i32 20, i32 1
  %35 = ptrtoint ptr %entry84 to i32
  call void @__asan_store4_noabort(i32 %35)
  store volatile ptr %entry84, ptr %entry84, align 4
  %prev.i245 = getelementptr inbounds %struct.nvme_rdma_ctrl, ptr %call7.i.i, i32 0, i32 11, i32 20, i32 1, i32 1
  %36 = ptrtoint ptr %prev.i245 to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %entry84, ptr %prev.i245, align 8
  %func87 = getelementptr inbounds %struct.nvme_rdma_ctrl, ptr %call7.i.i, i32 0, i32 11, i32 20, i32 2
  %37 = ptrtoint ptr %func87 to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr @nvme_rdma_reset_ctrl_work, ptr %func87, align 4
  %nr_io_queues = getelementptr inbounds %struct.nvmf_ctrl_options, ptr %opts, i32 0, i32 8
  %38 = ptrtoint ptr %nr_io_queues to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %nr_io_queues, align 4
  %nr_write_queues = getelementptr inbounds %struct.nvmf_ctrl_options, ptr %opts, i32 0, i32 18
  %40 = ptrtoint ptr %nr_write_queues to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %nr_write_queues, align 4
  %nr_poll_queues = getelementptr inbounds %struct.nvmf_ctrl_options, ptr %opts, i32 0, i32 19
  %42 = ptrtoint ptr %nr_poll_queues to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %nr_poll_queues, align 4
  %add = add i32 %39, 1
  %add90 = add i32 %add, %41
  %add91 = add i32 %add90, %43
  %queue_count = getelementptr inbounds %struct.nvme_rdma_ctrl, ptr %call7.i.i, i32 0, i32 11, i32 30
  %44 = ptrtoint ptr %queue_count to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %add91, ptr %queue_count, align 4
  %queue_size = getelementptr inbounds %struct.nvmf_ctrl_options, ptr %opts, i32 0, i32 7
  %45 = ptrtoint ptr %queue_size to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %queue_size, align 4
  %47 = trunc i32 %46 to i16
  %conv = add i16 %47, -1
  %sqsize = getelementptr inbounds %struct.nvme_rdma_ctrl, ptr %call7.i.i, i32 0, i32 11, i32 44
  %48 = ptrtoint ptr %sqsize to i32
  call void @__asan_store2_noabort(i32 %48)
  store i16 %conv, ptr %sqsize, align 2
  %kato = getelementptr inbounds %struct.nvmf_ctrl_options, ptr %opts, i32 0, i32 12
  %49 = ptrtoint ptr %kato to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %kato, align 4
  %kato95 = getelementptr inbounds %struct.nvme_rdma_ctrl, ptr %call7.i.i, i32 0, i32 11, i32 59
  %51 = ptrtoint ptr %kato95 to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %50, ptr %kato95, align 8
  %52 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %add91, i32 196) #11
  %53 = extractvalue { i32, i1 } %52, 1
  br i1 %53, label %kcalloc.exit.thread, label %if.end7.i.i, !prof !337

kcalloc.exit.thread:                              ; preds = %do.body41
  call void @__sanitizer_cov_trace_pc() #13
  %54 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr null, ptr %call7.i.i, align 8
  br label %out_free_ctrl

if.end7.i.i:                                      ; preds = %do.body41
  %55 = extractvalue { i32, i1 } %52, 0
  %call8.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %55, i32 noundef 3520) #16
  %56 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr %call8.i.i, ptr %call7.i.i, align 8
  %tobool100.not = icmp eq ptr %call8.i.i, null
  br i1 %tobool100.not, label %if.end7.i.i.out_free_ctrl_crit_edge, label %if.end102

if.end7.i.i.out_free_ctrl_crit_edge:              ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %out_free_ctrl

if.end102:                                        ; preds = %if.end7.i.i
  %call104 = tail call i32 @nvme_init_ctrl(ptr noundef %ctrl2, ptr noundef %dev, ptr noundef nonnull @nvme_rdma_ctrl_ops, i32 noundef 0) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call104)
  %tobool105.not = icmp eq i32 %call104, 0
  br i1 %tobool105.not, label %if.end107, label %out_kfree_queues

if.end107:                                        ; preds = %if.end102
  %call109 = tail call zeroext i1 @nvme_change_ctrl_state(ptr noundef %ctrl2, i32 noundef 3) #11
  br i1 %call109, label %if.end107.if.end147_crit_edge, label %land.rhs

if.end107.if.end147_crit_edge:                    ; preds = %if.end107
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end147

land.rhs:                                         ; preds = %if.end107
  %.b242 = load i1, ptr @nvme_rdma_create_ctrl.__already_done, align 1
  br i1 %.b242, label %land.rhs.if.end147_crit_edge, label %if.then121, !prof !338

land.rhs.if.end147_crit_edge:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end147

if.then121:                                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @nvme_rdma_create_ctrl.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 2392, i32 noundef 9, ptr noundef null) #11
  br label %if.end147

if.end147:                                        ; preds = %if.then121, %land.rhs.if.end147_crit_edge, %if.end107.if.end147_crit_edge
  %call155 = tail call fastcc i32 @nvme_rdma_setup_ctrl(ptr noundef nonnull %call7.i.i, i1 noundef zeroext true)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call155)
  %tobool156.not = icmp eq i32 %call155, 0
  br i1 %tobool156.not, label %do.end161, label %out_uninit_ctrl

do.end161:                                        ; preds = %if.end147
  %device = getelementptr inbounds %struct.nvme_rdma_ctrl, ptr %call7.i.i, i32 0, i32 11, i32 17
  %57 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %device, align 8
  %subsys.i = getelementptr inbounds %struct.nvme_rdma_ctrl, ptr %call7.i.i, i32 0, i32 11, i32 23
  %59 = ptrtoint ptr %subsys.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %subsys.i, align 4
  %tobool.not.i = icmp eq ptr %60, null
  br i1 %tobool.not.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %do.end161
  call void @__sanitizer_cov_trace_pc() #13
  %61 = ptrtoint ptr %opts3 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %opts3, align 8
  %subsysnqn.i = getelementptr inbounds %struct.nvmf_ctrl_options, ptr %62, i32 0, i32 2
  %63 = ptrtoint ptr %subsysnqn.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %subsysnqn.i, align 4
  br label %nvmf_ctrl_subsysnqn.exit

if.end.i:                                         ; preds = %do.end161
  call void @__sanitizer_cov_trace_pc() #13
  %subnqn.i = getelementptr inbounds %struct.nvme_subsystem, ptr %60, i32 0, i32 7
  br label %nvmf_ctrl_subsysnqn.exit

nvmf_ctrl_subsysnqn.exit:                         ; preds = %if.end.i, %if.then.i
  %retval.0.i = phi ptr [ %subnqn.i, %if.end.i ], [ %64, %if.then.i ]
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %58, ptr noundef nonnull @.str.16, ptr noundef %retval.0.i, ptr noundef %addr) #15
  tail call void @mutex_lock_nested(ptr noundef nonnull @nvme_rdma_ctrl_mutex, i32 noundef 0) #11
  %65 = load ptr, ptr getelementptr inbounds (%struct.list_head, ptr @nvme_rdma_ctrl_list, i32 0, i32 1), align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %list, ptr noundef %65, ptr noundef nonnull @nvme_rdma_ctrl_list) #11
  br i1 %call.i.i, label %if.end.i.i246, label %nvmf_ctrl_subsysnqn.exit.list_add_tail.exit_crit_edge

nvmf_ctrl_subsysnqn.exit.list_add_tail.exit_crit_edge: ; preds = %nvmf_ctrl_subsysnqn.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_add_tail.exit

if.end.i.i246:                                    ; preds = %nvmf_ctrl_subsysnqn.exit
  call void @__sanitizer_cov_trace_pc() #13
  store ptr %list, ptr getelementptr inbounds (%struct.list_head, ptr @nvme_rdma_ctrl_list, i32 0, i32 1), align 4
  %66 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr @nvme_rdma_ctrl_list, ptr %list, align 4
  %67 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr %65, ptr %prev.i, align 8
  %68 = ptrtoint ptr %65 to i32
  call void @__asan_store4_noabort(i32 %68)
  store volatile ptr %list, ptr %65, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i246, %nvmf_ctrl_subsysnqn.exit.list_add_tail.exit_crit_edge
  tail call void @mutex_unlock(ptr noundef nonnull @nvme_rdma_ctrl_mutex) #11
  br label %cleanup

out_uninit_ctrl:                                  ; preds = %if.end147
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @nvme_uninit_ctrl(ptr noundef %ctrl2) #11
  %device.i = getelementptr inbounds %struct.nvme_rdma_ctrl, ptr %call7.i.i, i32 0, i32 11, i32 17
  %69 = ptrtoint ptr %device.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %device.i, align 8
  tail call void @put_device(ptr noundef %70) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call155)
  %cmp = icmp sgt i32 %call155, 0
  %spec.store.select = select i1 %cmp, i32 -5, i32 %call155
  %71 = inttoptr i32 %spec.store.select to ptr
  br label %cleanup

out_kfree_queues:                                 ; preds = %if.end102
  call void @__sanitizer_cov_trace_pc() #13
  %72 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %call7.i.i, align 8
  tail call void @kfree(ptr noundef %73) #11
  br label %out_free_ctrl

out_free_ctrl:                                    ; preds = %out_kfree_queues, %if.end7.i.i.out_free_ctrl_crit_edge, %kcalloc.exit.thread, %nvme_rdma_existing_controller.exit.thread, %do.end30, %do.end, %if.then5.out_free_ctrl_crit_edge
  %ret.0 = phi i32 [ %call14, %do.end ], [ %call25, %do.end30 ], [ %call104, %out_kfree_queues ], [ -12, %if.end7.i.i.out_free_ctrl_crit_edge ], [ -12, %if.then5.out_free_ctrl_crit_edge ], [ -114, %nvme_rdma_existing_controller.exit.thread ], [ -12, %kcalloc.exit.thread ]
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #11
  %74 = inttoptr i32 %ret.0 to ptr
  br label %cleanup

cleanup:                                          ; preds = %out_free_ctrl, %out_uninit_ctrl, %list_add_tail.exit, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %74, %out_free_ctrl ], [ %71, %out_uninit_ctrl ], [ %ctrl2, %list_add_tail.exit ], [ inttoptr (i32 -12 to ptr), %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kstrdup(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @inet_pton_with_scope(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nvme_rdma_reconnect_ctrl_work(ptr noundef %work) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -248
  %nr_reconnects = getelementptr i8, ptr %work, i32 3968
  %0 = ptrtoint ptr %nr_reconnects to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %nr_reconnects, align 8
  %inc = add i32 %1, 1
  store i32 %inc, ptr %nr_reconnects, align 8
  %call2 = tail call fastcc i32 @nvme_rdma_setup_ctrl(ptr noundef %add.ptr, i1 noundef zeroext false)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  %device = getelementptr i8, ptr %work, i32 1776
  %2 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %device, align 8
  %4 = ptrtoint ptr %nr_reconnects to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %nr_reconnects, align 8
  br i1 %tobool.not, label %do.end, label %do.end10

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %3, ptr noundef nonnull @.str.20, i32 noundef %5) #15
  %6 = ptrtoint ptr %nr_reconnects to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %nr_reconnects, align 8
  br label %cleanup

do.end10:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %3, ptr noundef nonnull @.str.23, i32 noundef %5) #15
  tail call fastcc void @nvme_rdma_reconnect_or_remove(ptr noundef %add.ptr)
  br label %cleanup

cleanup:                                          ; preds = %do.end10, %do.end
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @delayed_work_timer_fn(ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nvme_rdma_error_recovery_work(ptr noundef %work) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -188
  %ctrl1 = getelementptr i8, ptr %work, i32 620
  tail call void @nvme_stop_keep_alive(ptr noundef %ctrl1) #11
  %async_event_work = getelementptr i8, ptr %work, i32 3420
  %call = tail call zeroext i1 @flush_work(ptr noundef %async_event_work) #11
  %queue_count.i = getelementptr i8, ptr %work, i32 2184
  %0 = ptrtoint ptr %queue_count.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %queue_count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp.i = icmp ugt i32 %1, 1
  br i1 %cmp.i, label %if.then.i, label %entry.nvme_rdma_teardown_io_queues.exit_crit_edge

entry.nvme_rdma_teardown_io_queues.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %nvme_rdma_teardown_io_queues.exit

if.then.i:                                        ; preds = %entry
  tail call void @nvme_start_freeze(ptr noundef %ctrl1) #11
  tail call void @nvme_stop_queues(ptr noundef %ctrl1) #11
  tail call void @nvme_sync_io_queues(ptr noundef %ctrl1) #11
  tail call fastcc void @nvme_rdma_stop_io_queues(ptr noundef %add.ptr) #11
  tail call void @nvme_cancel_tagset(ptr noundef %ctrl1) #11
  %2 = ptrtoint ptr %queue_count.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %queue_count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp5.i.i = icmp ugt i32 %3, 1
  br i1 %cmp5.i.i, label %if.then.i.for.body.i.i_crit_edge, label %if.then.i.nvme_rdma_teardown_io_queues.exit_crit_edge

if.then.i.nvme_rdma_teardown_io_queues.exit_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %nvme_rdma_teardown_io_queues.exit

if.then.i.for.body.i.i_crit_edge:                 ; preds = %if.then.i
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %nvme_rdma_free_queue.exit.i.i.for.body.i.i_crit_edge, %if.then.i.for.body.i.i_crit_edge
  %i.06.i.i = phi i32 [ %inc.i.i, %nvme_rdma_free_queue.exit.i.i.for.body.i.i_crit_edge ], [ 1, %if.then.i.for.body.i.i_crit_edge ]
  %4 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %add.ptr, align 8
  %flags.i.i.i = getelementptr %struct.nvme_rdma_queue, ptr %5, i32 %i.06.i.i, i32 7
  %call.i.i.i = tail call i32 @_test_and_clear_bit(i32 noundef 0, ptr noundef %flags.i.i.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %for.body.i.i.nvme_rdma_free_queue.exit.i.i_crit_edge, label %if.end.i.i.i

for.body.i.i.nvme_rdma_free_queue.exit.i.i_crit_edge: ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %nvme_rdma_free_queue.exit.i.i

if.end.i.i.i:                                     ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx.i.i = getelementptr %struct.nvme_rdma_queue, ptr %5, i32 %i.06.i.i
  %cm_id.i.i.i = getelementptr %struct.nvme_rdma_queue, ptr %5, i32 %i.06.i.i, i32 8
  %6 = ptrtoint ptr %cm_id.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %cm_id.i.i.i, align 4
  tail call void @rdma_destroy_id(ptr noundef %7) #11
  tail call fastcc void @nvme_rdma_destroy_queue_ib(ptr noundef %arrayidx.i.i) #11
  %queue_lock.i.i.i = getelementptr %struct.nvme_rdma_queue, ptr %5, i32 %i.06.i.i, i32 13
  tail call void @mutex_destroy(ptr noundef %queue_lock.i.i.i) #11
  br label %nvme_rdma_free_queue.exit.i.i

nvme_rdma_free_queue.exit.i.i:                    ; preds = %if.end.i.i.i, %for.body.i.i.nvme_rdma_free_queue.exit.i.i_crit_edge
  %inc.i.i = add nuw i32 %i.06.i.i, 1
  %8 = ptrtoint ptr %queue_count.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %queue_count.i, align 4
  %cmp.i.i = icmp ult i32 %inc.i.i, %9
  br i1 %cmp.i.i, label %nvme_rdma_free_queue.exit.i.i.for.body.i.i_crit_edge, label %nvme_rdma_free_queue.exit.i.i.nvme_rdma_teardown_io_queues.exit_crit_edge

nvme_rdma_free_queue.exit.i.i.nvme_rdma_teardown_io_queues.exit_crit_edge: ; preds = %nvme_rdma_free_queue.exit.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %nvme_rdma_teardown_io_queues.exit

nvme_rdma_free_queue.exit.i.i.for.body.i.i_crit_edge: ; preds = %nvme_rdma_free_queue.exit.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i.i

nvme_rdma_teardown_io_queues.exit:                ; preds = %nvme_rdma_free_queue.exit.i.i.nvme_rdma_teardown_io_queues.exit_crit_edge, %if.then.i.nvme_rdma_teardown_io_queues.exit_crit_edge, %entry.nvme_rdma_teardown_io_queues.exit_crit_edge
  tail call void @nvme_start_queues(ptr noundef %ctrl1) #11
  tail call fastcc void @nvme_rdma_teardown_admin_queue(ptr noundef %add.ptr, i1 noundef zeroext false)
  tail call void @nvme_start_admin_queue(ptr noundef %ctrl1) #11
  %call6 = tail call zeroext i1 @nvme_change_ctrl_state(ptr noundef %ctrl1, i32 noundef 3) #11
  br i1 %call6, label %if.end49, label %if.then

if.then:                                          ; preds = %nvme_rdma_teardown_io_queues.exit
  %state = getelementptr i8, ptr %work, i32 624
  %10 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %state, align 4
  %12 = add i32 %11, -6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2, i32 %12)
  %13 = icmp ult i32 %12, -2
  br i1 %13, label %land.rhs12, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

land.rhs12:                                       ; preds = %if.then
  %.b61 = load i1, ptr @nvme_rdma_error_recovery_work.__already_done, align 1
  br i1 %.b61, label %land.rhs12.cleanup_crit_edge, label %if.then19, !prof !338

land.rhs12.cleanup_crit_edge:                     ; preds = %land.rhs12
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then19:                                        ; preds = %land.rhs12
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @nvme_rdma_error_recovery_work.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 1212, i32 noundef 9, ptr noundef null) #11
  br label %cleanup

if.end49:                                         ; preds = %nvme_rdma_teardown_io_queues.exit
  call void @__sanitizer_cov_trace_pc() #13
  tail call fastcc void @nvme_rdma_reconnect_or_remove(ptr noundef %add.ptr)
  br label %cleanup

cleanup:                                          ; preds = %if.end49, %if.then19, %land.rhs12.cleanup_crit_edge, %if.then.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nvme_rdma_reset_ctrl_work(ptr noundef %work) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -2192
  %ctrl1 = getelementptr i8, ptr %work, i32 -1384
  tail call void @nvme_stop_ctrl(ptr noundef %ctrl1) #11
  %err_work.i = getelementptr i8, ptr %work, i32 -2004
  %call.i = tail call zeroext i1 @cancel_work_sync(ptr noundef %err_work.i) #11
  %reconnect_work.i = getelementptr i8, ptr %work, i32 -1944
  %call1.i = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %reconnect_work.i) #11
  %queue_count.i = getelementptr i8, ptr %work, i32 180
  %0 = ptrtoint ptr %queue_count.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %queue_count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp.i = icmp ugt i32 %1, 1
  br i1 %cmp.i, label %if.then.i, label %entry.nvme_rdma_teardown_io_queues.exit_crit_edge

entry.nvme_rdma_teardown_io_queues.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %nvme_rdma_teardown_io_queues.exit

if.then.i:                                        ; preds = %entry
  tail call void @nvme_start_freeze(ptr noundef %ctrl1) #11
  tail call void @nvme_stop_queues(ptr noundef %ctrl1) #11
  tail call void @nvme_sync_io_queues(ptr noundef %ctrl1) #11
  tail call fastcc void @nvme_rdma_stop_io_queues(ptr noundef %add.ptr) #11
  tail call void @nvme_cancel_tagset(ptr noundef %ctrl1) #11
  %2 = ptrtoint ptr %queue_count.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %queue_count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp5.i.i = icmp ugt i32 %3, 1
  br i1 %cmp5.i.i, label %if.then.i.for.body.i.i_crit_edge, label %if.then.i.nvme_rdma_teardown_io_queues.exit_crit_edge

if.then.i.nvme_rdma_teardown_io_queues.exit_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %nvme_rdma_teardown_io_queues.exit

if.then.i.for.body.i.i_crit_edge:                 ; preds = %if.then.i
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %nvme_rdma_free_queue.exit.i.i.for.body.i.i_crit_edge, %if.then.i.for.body.i.i_crit_edge
  %i.06.i.i = phi i32 [ %inc.i.i, %nvme_rdma_free_queue.exit.i.i.for.body.i.i_crit_edge ], [ 1, %if.then.i.for.body.i.i_crit_edge ]
  %4 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %add.ptr, align 8
  %flags.i.i.i = getelementptr %struct.nvme_rdma_queue, ptr %5, i32 %i.06.i.i, i32 7
  %call.i.i.i = tail call i32 @_test_and_clear_bit(i32 noundef 0, ptr noundef %flags.i.i.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %for.body.i.i.nvme_rdma_free_queue.exit.i.i_crit_edge, label %if.end.i.i.i

for.body.i.i.nvme_rdma_free_queue.exit.i.i_crit_edge: ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %nvme_rdma_free_queue.exit.i.i

if.end.i.i.i:                                     ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx.i.i = getelementptr %struct.nvme_rdma_queue, ptr %5, i32 %i.06.i.i
  %cm_id.i.i.i = getelementptr %struct.nvme_rdma_queue, ptr %5, i32 %i.06.i.i, i32 8
  %6 = ptrtoint ptr %cm_id.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %cm_id.i.i.i, align 4
  tail call void @rdma_destroy_id(ptr noundef %7) #11
  tail call fastcc void @nvme_rdma_destroy_queue_ib(ptr noundef %arrayidx.i.i) #11
  %queue_lock.i.i.i = getelementptr %struct.nvme_rdma_queue, ptr %5, i32 %i.06.i.i, i32 13
  tail call void @mutex_destroy(ptr noundef %queue_lock.i.i.i) #11
  br label %nvme_rdma_free_queue.exit.i.i

nvme_rdma_free_queue.exit.i.i:                    ; preds = %if.end.i.i.i, %for.body.i.i.nvme_rdma_free_queue.exit.i.i_crit_edge
  %inc.i.i = add nuw i32 %i.06.i.i, 1
  %8 = ptrtoint ptr %queue_count.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %queue_count.i, align 4
  %cmp.i.i = icmp ult i32 %inc.i.i, %9
  br i1 %cmp.i.i, label %nvme_rdma_free_queue.exit.i.i.for.body.i.i_crit_edge, label %nvme_rdma_free_queue.exit.i.i.nvme_rdma_teardown_io_queues.exit_crit_edge

nvme_rdma_free_queue.exit.i.i.nvme_rdma_teardown_io_queues.exit_crit_edge: ; preds = %nvme_rdma_free_queue.exit.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %nvme_rdma_teardown_io_queues.exit

nvme_rdma_free_queue.exit.i.i.for.body.i.i_crit_edge: ; preds = %nvme_rdma_free_queue.exit.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i.i

nvme_rdma_teardown_io_queues.exit:                ; preds = %nvme_rdma_free_queue.exit.i.i.nvme_rdma_teardown_io_queues.exit_crit_edge, %if.then.i.nvme_rdma_teardown_io_queues.exit_crit_edge, %entry.nvme_rdma_teardown_io_queues.exit_crit_edge
  tail call void @nvme_stop_admin_queue(ptr noundef %ctrl1) #11
  %call7.i = tail call i32 @nvme_disable_ctrl(ptr noundef %ctrl1) #11
  tail call fastcc void @nvme_rdma_teardown_admin_queue(ptr noundef %add.ptr, i1 noundef zeroext false) #11
  %call = tail call zeroext i1 @nvme_change_ctrl_state(ptr noundef %ctrl1, i32 noundef 3) #11
  br i1 %call, label %if.end37, label %land.end

land.end:                                         ; preds = %nvme_rdma_teardown_io_queues.exit
  %.b50 = load i1, ptr @nvme_rdma_reset_ctrl_work.__already_done, align 1
  br i1 %.b50, label %land.end.cleanup_crit_edge, label %if.then7, !prof !338

land.end.cleanup_crit_edge:                       ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then7:                                         ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @nvme_rdma_reset_ctrl_work.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 2268, i32 noundef 9, ptr noundef null) #11
  br label %cleanup

if.end37:                                         ; preds = %nvme_rdma_teardown_io_queues.exit
  %call38 = tail call fastcc i32 @nvme_rdma_setup_ctrl(ptr noundef %add.ptr, i1 noundef zeroext false)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call38)
  %tobool39.not = icmp eq i32 %call38, 0
  br i1 %tobool39.not, label %if.end37.cleanup_crit_edge, label %out_fail

if.end37.cleanup_crit_edge:                       ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

out_fail:                                         ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #13
  %nr_reconnects = getelementptr i8, ptr %work, i32 2024
  %10 = ptrtoint ptr %nr_reconnects to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %nr_reconnects, align 8
  %inc = add i32 %11, 1
  store i32 %inc, ptr %nr_reconnects, align 8
  tail call fastcc void @nvme_rdma_reconnect_or_remove(ptr noundef %add.ptr)
  br label %cleanup

cleanup:                                          ; preds = %out_fail, %if.end37.cleanup_crit_edge, %if.then7, %land.end.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvme_init_ctrl(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @nvme_change_ctrl_state(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @nvme_rdma_setup_ctrl(ptr noundef %ctrl, i1 noundef zeroext %new) unnamed_addr #3 align 64 {
entry:
  %nr_io_queues.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call fastcc i32 @nvme_rdma_alloc_queue(ptr noundef %ctrl, i32 noundef 0, i32 noundef 32) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end.i:                                         ; preds = %entry
  %0 = ptrtoint ptr %ctrl to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ctrl, align 8
  %device.i = getelementptr inbounds %struct.nvme_rdma_queue, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %device.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %device.i, align 4
  %device1.i = getelementptr inbounds %struct.nvme_rdma_ctrl, ptr %ctrl, i32 0, i32 7
  %4 = ptrtoint ptr %device1.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %3, ptr %device1.i, align 4
  %ctrl4.i = getelementptr inbounds %struct.nvme_rdma_ctrl, ptr %ctrl, i32 0, i32 11
  %numa_node.i = getelementptr inbounds %struct.nvme_rdma_ctrl, ptr %ctrl, i32 0, i32 11, i32 11
  %5 = ptrtoint ptr %numa_node.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -1, ptr %numa_node.i, align 4
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %3, align 4
  %device_cap_flags.i = getelementptr inbounds %struct.ib_device, ptr %7, i32 0, i32 22, i32 9
  %8 = ptrtoint ptr %device_cap_flags.i to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %device_cap_flags.i, align 8
  %and.i = and i64 %9, 1073741824
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i)
  %tobool7.not.i = icmp eq i64 %and.i, 0
  %max_pi_fast_reg_page_list_len.i.i = getelementptr inbounds %struct.ib_device, ptr %7, i32 0, i32 22, i32 37
  %max_fast_reg_page_list_len.i.i = getelementptr inbounds %struct.ib_device, ptr %7, i32 0, i32 22, i32 36
  %max_page_list_len.0.in.i.i = select i1 %tobool7.not.i, ptr %max_fast_reg_page_list_len.i.i, ptr %max_pi_fast_reg_page_list_len.i.i
  %10 = ptrtoint ptr %max_page_list_len.0.in.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %max_page_list_len.0.i.i = load i32, ptr %max_page_list_len.0.in.i.i, align 4
  %sub.i.i = add i32 %max_page_list_len.0.i.i, -1
  %11 = tail call i32 @llvm.umin.i32(i32 %sub.i.i, i32 256) #11
  %max_fr_pages.i = getelementptr inbounds %struct.nvme_rdma_ctrl, ptr %ctrl, i32 0, i32 8
  %12 = ptrtoint ptr %max_fr_pages.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %max_fr_pages.i, align 8
  %13 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %3, align 4
  %async_event_sqe.i = getelementptr inbounds %struct.nvme_rdma_ctrl, ptr %ctrl, i32 0, i32 3
  %call16.i = tail call fastcc i32 @nvme_rdma_alloc_qe(ptr noundef %14, ptr noundef %async_event_sqe.i, i32 noundef 64, i32 noundef 1) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16.i)
  %tobool17.not.i = icmp eq i32 %call16.i, 0
  br i1 %tobool17.not.i, label %if.end19.i, label %if.end.i.out_free_queue.i_crit_edge

if.end.i.out_free_queue.i_crit_edge:              ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %out_free_queue.i

if.end19.i:                                       ; preds = %if.end.i
  br i1 %new, label %if.then21.i, label %if.end19.i.if.end54.i_crit_edge

if.end19.i.if.end54.i_crit_edge:                  ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end54.i

if.then21.i:                                      ; preds = %if.end19.i
  %admin_tag_set.i.i = getelementptr %struct.nvme_rdma_ctrl, ptr %ctrl, i32 0, i32 6
  %15 = call ptr @memset(ptr %admin_tag_set.i.i, i32 0, i32 184)
  %ops.i.i = getelementptr %struct.nvme_rdma_ctrl, ptr %ctrl, i32 0, i32 6, i32 2
  %16 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr @nvme_rdma_admin_mq_ops, ptr %ops.i.i, align 4
  %queue_depth.i.i = getelementptr %struct.nvme_rdma_ctrl, ptr %ctrl, i32 0, i32 6, i32 4
  %17 = ptrtoint ptr %queue_depth.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 30, ptr %queue_depth.i.i, align 4
  %reserved_tags.i.i = getelementptr %struct.nvme_rdma_ctrl, ptr %ctrl, i32 0, i32 6, i32 5
  %18 = ptrtoint ptr %reserved_tags.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 1, ptr %reserved_tags.i.i, align 4
  %19 = ptrtoint ptr %numa_node.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %numa_node.i, align 4
  %numa_node1.i.i = getelementptr %struct.nvme_rdma_ctrl, ptr %ctrl, i32 0, i32 6, i32 7
  %21 = ptrtoint ptr %numa_node1.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %numa_node1.i.i, align 4
  %cmd_size.i.i = getelementptr %struct.nvme_rdma_ctrl, ptr %ctrl, i32 0, i32 6, i32 6
  %22 = ptrtoint ptr %cmd_size.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 288, ptr %cmd_size.i.i, align 4
  %driver_data.i.i = getelementptr %struct.nvme_rdma_ctrl, ptr %ctrl, i32 0, i32 6, i32 10
  %23 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %ctrl, ptr %driver_data.i.i, align 4
  %nr_hw_queues.i.i = getelementptr %struct.nvme_rdma_ctrl, ptr %ctrl, i32 0, i32 6, i32 3
  %24 = ptrtoint ptr %nr_hw_queues.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 1, ptr %nr_hw_queues.i.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @admin_timeout to i32))
  %25 = load i32, ptr @admin_timeout, align 4
  %mul.i.i = mul i32 %25, 100
  %timeout.i.i = getelementptr %struct.nvme_rdma_ctrl, ptr %ctrl, i32 0, i32 6, i32 8
  %26 = ptrtoint ptr %timeout.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %mul.i.i, ptr %timeout.i.i, align 4
  %nr_maps.i.i = getelementptr %struct.nvme_rdma_ctrl, ptr %ctrl, i32 0, i32 6, i32 9
  %27 = ptrtoint ptr %nr_maps.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 64, ptr %nr_maps.i.i, align 4
  %call19.i.i = tail call i32 @blk_mq_alloc_tag_set(ptr noundef %admin_tag_set.i.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19.i.i)
  %tobool20.not.i.i = icmp eq i32 %call19.i.i, 0
  %28 = inttoptr i32 %call19.i.i to ptr
  %spec.select.i.i = select i1 %tobool20.not.i.i, ptr %admin_tag_set.i.i, ptr %28
  %admin_tagset.i = getelementptr inbounds %struct.nvme_rdma_ctrl, ptr %ctrl, i32 0, i32 11, i32 13
  %29 = ptrtoint ptr %admin_tagset.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %spec.select.i.i, ptr %admin_tagset.i, align 4
  %cmp.i.i = icmp ugt ptr %spec.select.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.then28.i, label %if.end32.i

if.then28.i:                                      ; preds = %if.then21.i
  call void @__sanitizer_cov_trace_pc() #13
  %30 = ptrtoint ptr %spec.select.i.i to i32
  br label %out_free_async_qe.i

if.end32.i:                                       ; preds = %if.then21.i
  %call33.i = tail call ptr @blk_mq_init_queue(ptr noundef %admin_tag_set.i.i) #11
  %fabrics_q.i = getelementptr inbounds %struct.nvme_rdma_ctrl, ptr %ctrl, i32 0, i32 11, i32 8
  %31 = ptrtoint ptr %fabrics_q.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %call33.i, ptr %fabrics_q.i, align 8
  %cmp.i168.i = icmp ugt ptr %call33.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i168.i, label %if.then38.i, label %if.end42.i

if.then38.i:                                      ; preds = %if.end32.i
  call void @__sanitizer_cov_trace_pc() #13
  %32 = ptrtoint ptr %call33.i to i32
  br label %if.then98.i

if.end42.i:                                       ; preds = %if.end32.i
  %call44.i = tail call ptr @blk_mq_init_queue(ptr noundef %admin_tag_set.i.i) #11
  %admin_q.i = getelementptr inbounds %struct.nvme_rdma_ctrl, ptr %ctrl, i32 0, i32 11, i32 6
  %33 = ptrtoint ptr %admin_q.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %call44.i, ptr %admin_q.i, align 8
  %cmp.i169.i = icmp ugt ptr %call44.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i169.i, label %if.then49.i, label %if.end42.i.if.end54.i_crit_edge

if.end42.i.if.end54.i_crit_edge:                  ; preds = %if.end42.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end54.i

if.then49.i:                                      ; preds = %if.end42.i
  call void @__sanitizer_cov_trace_pc() #13
  %34 = ptrtoint ptr %call44.i to i32
  br label %if.then93.i

if.end54.i:                                       ; preds = %if.end42.i.if.end54.i_crit_edge, %if.end19.i.if.end54.i_crit_edge
  %35 = ptrtoint ptr %ctrl to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %ctrl, align 8
  %call3.i.i = tail call i32 @nvmf_connect_admin_queue(ptr noundef %ctrl4.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i.i)
  %tobool4.not.i.i = icmp eq i32 %call3.i.i, 0
  %flags.i.i = getelementptr %struct.nvme_rdma_queue, ptr %36, i32 0, i32 7
  br i1 %tobool4.not.i.i, label %if.end58.i, label %if.else6.i.i

if.else6.i.i:                                     ; preds = %if.end54.i
  %37 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load volatile i32, ptr %flags.i.i, align 4
  %and1.i.i.i = and i32 %38, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i)
  %tobool9.not.i.i = icmp eq i32 %and1.i.i.i, 0
  br i1 %tobool9.not.i.i, label %if.else6.i.i.nvme_rdma_start_queue.exit.i_crit_edge, label %if.then10.i.i

if.else6.i.i.nvme_rdma_start_queue.exit.i_crit_edge: ; preds = %if.else6.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %nvme_rdma_start_queue.exit.i

if.then10.i.i:                                    ; preds = %if.else6.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %cm_id.i.i.i = getelementptr %struct.nvme_rdma_queue, ptr %36, i32 0, i32 8
  %39 = ptrtoint ptr %cm_id.i.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %cm_id.i.i.i, align 4
  %call.i.i.i = tail call i32 @rdma_disconnect(ptr noundef %40) #11
  %qp.i.i.i = getelementptr %struct.nvme_rdma_queue, ptr %36, i32 0, i32 6
  %41 = ptrtoint ptr %qp.i.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %qp.i.i.i, align 4
  tail call void @ib_drain_qp(ptr noundef %42) #11
  br label %nvme_rdma_start_queue.exit.i

nvme_rdma_start_queue.exit.i:                     ; preds = %if.then10.i.i, %if.else6.i.i.nvme_rdma_start_queue.exit.i_crit_edge
  %device.i.i = getelementptr inbounds %struct.nvme_rdma_ctrl, ptr %ctrl, i32 0, i32 11, i32 17
  %43 = ptrtoint ptr %device.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %device.i.i, align 8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %44, ptr noundef nonnull @.str.137, i32 noundef 0, i32 noundef %call3.i.i) #15
  br label %out_cleanup_queue.i

if.end58.i:                                       ; preds = %if.end54.i
  tail call void @_set_bit(i32 noundef 1, ptr noundef %flags.i.i) #11
  %call60.i = tail call i32 @nvme_enable_ctrl(ptr noundef %ctrl4.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60.i)
  %tobool61.not.i = icmp eq i32 %call60.i, 0
  br i1 %tobool61.not.i, label %if.end63.i, label %if.end58.i.out_stop_queue.i_crit_edge

if.end58.i.out_stop_queue.i_crit_edge:            ; preds = %if.end58.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %out_stop_queue.i

if.end63.i:                                       ; preds = %if.end58.i
  %45 = ptrtoint ptr %max_fr_pages.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %max_fr_pages.i, align 8
  %max_segments.i = getelementptr inbounds %struct.nvme_rdma_ctrl, ptr %ctrl, i32 0, i32 11, i32 33
  %47 = ptrtoint ptr %max_segments.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %46, ptr %max_segments.i, align 4
  %shl.i = shl i32 %46, 3
  %max_hw_sectors.i = getelementptr inbounds %struct.nvme_rdma_ctrl, ptr %ctrl, i32 0, i32 11, i32 32
  %48 = ptrtoint ptr %max_hw_sectors.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %shl.i, ptr %max_hw_sectors.i, align 8
  %spec.select.i = select i1 %tobool7.not.i, i32 0, i32 %46
  %49 = getelementptr inbounds %struct.nvme_rdma_ctrl, ptr %ctrl, i32 0, i32 11, i32 34
  %50 = ptrtoint ptr %49 to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %spec.select.i, ptr %49, align 8
  tail call void @nvme_start_admin_queue(ptr noundef %ctrl4.i) #11
  %call77.i = tail call i32 @nvme_init_ctrl_finish(ptr noundef %ctrl4.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call77.i)
  %tobool78.not.i = icmp eq i32 %call77.i, 0
  br i1 %tobool78.not.i, label %if.end63.i.if.end_crit_edge, label %out_quiesce_queue.i

if.end63.i.if.end_crit_edge:                      ; preds = %if.end63.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

out_quiesce_queue.i:                              ; preds = %if.end63.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @nvme_stop_admin_queue(ptr noundef %ctrl4.i) #11
  %admin_q83.i = getelementptr inbounds %struct.nvme_rdma_ctrl, ptr %ctrl, i32 0, i32 11, i32 6
  %51 = ptrtoint ptr %admin_q83.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %admin_q83.i, align 8
  tail call void @blk_sync_queue(ptr noundef %52) #11
  br label %out_stop_queue.i

out_stop_queue.i:                                 ; preds = %out_quiesce_queue.i, %if.end58.i.out_stop_queue.i_crit_edge
  %error.0.i = phi i32 [ %call60.i, %if.end58.i.out_stop_queue.i_crit_edge ], [ %call77.i, %out_quiesce_queue.i ]
  %53 = ptrtoint ptr %ctrl to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %ctrl, align 8
  %queue_lock.i.i = getelementptr inbounds %struct.nvme_rdma_queue, ptr %54, i32 0, i32 13
  tail call void @mutex_lock_nested(ptr noundef %queue_lock.i.i, i32 noundef 0) #11
  %flags.i170.i = getelementptr inbounds %struct.nvme_rdma_queue, ptr %54, i32 0, i32 7
  %call.i.i = tail call i32 @_test_and_clear_bit(i32 noundef 1, ptr noundef %flags.i170.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %out_stop_queue.i.nvme_rdma_stop_queue.exit.i_crit_edge, label %if.then.i.i

out_stop_queue.i.nvme_rdma_stop_queue.exit.i_crit_edge: ; preds = %out_stop_queue.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %nvme_rdma_stop_queue.exit.i

if.then.i.i:                                      ; preds = %out_stop_queue.i
  call void @__sanitizer_cov_trace_pc() #13
  %cm_id.i.i171.i = getelementptr inbounds %struct.nvme_rdma_queue, ptr %54, i32 0, i32 8
  %55 = ptrtoint ptr %cm_id.i.i171.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %cm_id.i.i171.i, align 4
  %call.i.i172.i = tail call i32 @rdma_disconnect(ptr noundef %56) #11
  %qp.i.i173.i = getelementptr inbounds %struct.nvme_rdma_queue, ptr %54, i32 0, i32 6
  %57 = ptrtoint ptr %qp.i.i173.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %qp.i.i173.i, align 4
  tail call void @ib_drain_qp(ptr noundef %58) #11
  br label %nvme_rdma_stop_queue.exit.i

nvme_rdma_stop_queue.exit.i:                      ; preds = %if.then.i.i, %out_stop_queue.i.nvme_rdma_stop_queue.exit.i_crit_edge
  tail call void @mutex_unlock(ptr noundef %queue_lock.i.i) #11
  tail call void @nvme_cancel_admin_tagset(ptr noundef %ctrl4.i) #11
  br label %out_cleanup_queue.i

out_cleanup_queue.i:                              ; preds = %nvme_rdma_stop_queue.exit.i, %nvme_rdma_start_queue.exit.i
  %error.1.i = phi i32 [ %call3.i.i, %nvme_rdma_start_queue.exit.i ], [ %error.0.i, %nvme_rdma_stop_queue.exit.i ]
  br i1 %new, label %if.then88.i, label %out_cleanup_queue.i.out_free_async_qe.i_crit_edge

out_cleanup_queue.i.out_free_async_qe.i_crit_edge: ; preds = %out_cleanup_queue.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %out_free_async_qe.i

if.then88.i:                                      ; preds = %out_cleanup_queue.i
  call void @__sanitizer_cov_trace_pc() #13
  %admin_q90.i = getelementptr inbounds %struct.nvme_rdma_ctrl, ptr %ctrl, i32 0, i32 11, i32 6
  %59 = ptrtoint ptr %admin_q90.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %admin_q90.i, align 8
  tail call void @blk_cleanup_queue(ptr noundef %60) #11
  br label %if.then93.i

if.then93.i:                                      ; preds = %if.then88.i, %if.then49.i
  %error.2.ph.i = phi i32 [ %error.1.i, %if.then88.i ], [ %34, %if.then49.i ]
  %fabrics_q95.i = getelementptr inbounds %struct.nvme_rdma_ctrl, ptr %ctrl, i32 0, i32 11, i32 8
  %61 = ptrtoint ptr %fabrics_q95.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %fabrics_q95.i, align 8
  tail call void @blk_cleanup_queue(ptr noundef %62) #11
  br label %if.then98.i

if.then98.i:                                      ; preds = %if.then93.i, %if.then38.i
  %error.3.ph.i = phi i32 [ %error.2.ph.i, %if.then93.i ], [ %32, %if.then38.i ]
  %admin_tagset100.i = getelementptr inbounds %struct.nvme_rdma_ctrl, ptr %ctrl, i32 0, i32 11, i32 13
  %63 = ptrtoint ptr %admin_tagset100.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %admin_tagset100.i, align 4
  tail call void @blk_mq_free_tag_set(ptr noundef %64) #11
  br label %out_free_async_qe.i

out_free_async_qe.i:                              ; preds = %if.then98.i, %out_cleanup_queue.i.out_free_async_qe.i_crit_edge, %if.then28.i
  %error.4.i = phi i32 [ %30, %if.then28.i ], [ %error.3.ph.i, %if.then98.i ], [ %error.1.i, %out_cleanup_queue.i.out_free_async_qe.i_crit_edge ]
  %data.i = getelementptr inbounds %struct.nvme_rdma_ctrl, ptr %ctrl, i32 0, i32 3, i32 1
  %65 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %data.i, align 4
  %tobool103.not.i = icmp eq ptr %66, null
  br i1 %tobool103.not.i, label %out_free_async_qe.i.out_free_queue.i_crit_edge, label %if.then104.i

out_free_async_qe.i.out_free_queue.i_crit_edge:   ; preds = %out_free_async_qe.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %out_free_queue.i

if.then104.i:                                     ; preds = %out_free_async_qe.i
  call void @__sanitizer_cov_trace_pc() #13
  %67 = ptrtoint ptr %device1.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %device1.i, align 4
  %69 = ptrtoint ptr %68 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %68, align 4
  %dma.i.i = getelementptr inbounds %struct.nvme_rdma_ctrl, ptr %ctrl, i32 0, i32 3, i32 2
  %71 = ptrtoint ptr %dma.i.i to i32
  call void @__asan_load8_noabort(i32 %71)
  %72 = load i64, ptr %dma.i.i, align 8
  %73 = ptrtoint ptr %70 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %70, align 8
  %conv.i.i.i = trunc i64 %72 to i32
  tail call void @dma_unmap_page_attrs(ptr noundef %74, i32 noundef %conv.i.i.i, i32 noundef 64, i32 noundef 1, i32 noundef 0) #11
  %75 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %data.i, align 4
  tail call void @kfree(ptr noundef %76) #11
  %77 = ptrtoint ptr %data.i to i32
  call void @__asan_store4_noabort(i32 %77)
  store ptr null, ptr %data.i, align 4
  br label %out_free_queue.i

out_free_queue.i:                                 ; preds = %if.then104.i, %out_free_async_qe.i.out_free_queue.i_crit_edge, %if.end.i.out_free_queue.i_crit_edge
  %error.5.i = phi i32 [ %call16.i, %if.end.i.out_free_queue.i_crit_edge ], [ %error.4.i, %if.then104.i ], [ %error.4.i, %out_free_async_qe.i.out_free_queue.i_crit_edge ]
  %78 = ptrtoint ptr %ctrl to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %ctrl, align 8
  %flags.i174.i = getelementptr inbounds %struct.nvme_rdma_queue, ptr %79, i32 0, i32 7
  %call.i175.i = tail call i32 @_test_and_clear_bit(i32 noundef 0, ptr noundef %flags.i174.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i175.i)
  %tobool.not.i176.i = icmp eq i32 %call.i175.i, 0
  br i1 %tobool.not.i176.i, label %out_free_queue.i.nvme_rdma_configure_admin_queue.exit_crit_edge, label %if.end.i.i

out_free_queue.i.nvme_rdma_configure_admin_queue.exit_crit_edge: ; preds = %out_free_queue.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %nvme_rdma_configure_admin_queue.exit

if.end.i.i:                                       ; preds = %out_free_queue.i
  call void @__sanitizer_cov_trace_pc() #13
  %cm_id.i.i = getelementptr inbounds %struct.nvme_rdma_queue, ptr %79, i32 0, i32 8
  %80 = ptrtoint ptr %cm_id.i.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %cm_id.i.i, align 4
  tail call void @rdma_destroy_id(ptr noundef %81) #11
  tail call fastcc void @nvme_rdma_destroy_queue_ib(ptr noundef %79) #11
  %queue_lock.i177.i = getelementptr inbounds %struct.nvme_rdma_queue, ptr %79, i32 0, i32 13
  tail call void @mutex_destroy(ptr noundef %queue_lock.i177.i) #11
  br label %nvme_rdma_configure_admin_queue.exit

nvme_rdma_configure_admin_queue.exit:             ; preds = %if.end.i.i, %out_free_queue.i.nvme_rdma_configure_admin_queue.exit_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %error.5.i)
  %tobool1.not = icmp eq i32 %error.5.i, 0
  br i1 %tobool1.not, label %nvme_rdma_configure_admin_queue.exit.if.end_crit_edge, label %nvme_rdma_configure_admin_queue.exit.cleanup_crit_edge

nvme_rdma_configure_admin_queue.exit.cleanup_crit_edge: ; preds = %nvme_rdma_configure_admin_queue.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

nvme_rdma_configure_admin_queue.exit.if.end_crit_edge: ; preds = %nvme_rdma_configure_admin_queue.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.end:                                           ; preds = %nvme_rdma_configure_admin_queue.exit.if.end_crit_edge, %if.end63.i.if.end_crit_edge
  %icdoff = getelementptr inbounds %struct.nvme_rdma_ctrl, ptr %ctrl, i32 0, i32 11, i32 89
  %82 = ptrtoint ptr %icdoff to i32
  call void @__asan_load2_noabort(i32 %82)
  %83 = load i16, ptr %icdoff, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %83)
  %tobool3.not = icmp eq i16 %83, 0
  br i1 %tobool3.not, label %if.end6, label %if.then4

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %device = getelementptr inbounds %struct.nvme_rdma_ctrl, ptr %ctrl, i32 0, i32 11, i32 17
  %84 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %device, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %85, ptr noundef nonnull @.str.40) #15
  br label %destroy_admin

if.end6:                                          ; preds = %if.end
  %sgls = getelementptr inbounds %struct.nvme_rdma_ctrl, ptr %ctrl, i32 0, i32 11, i32 49
  %86 = ptrtoint ptr %sgls to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %sgls, align 4
  %and = and i32 %87, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool8.not = icmp eq i32 %and, 0
  br i1 %tobool8.not, label %if.then9, label %if.end15

if.then9:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #13
  %device14 = getelementptr inbounds %struct.nvme_rdma_ctrl, ptr %ctrl, i32 0, i32 11, i32 17
  %88 = ptrtoint ptr %device14 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %device14, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %89, ptr noundef nonnull @.str.43) #15
  br label %destroy_admin

if.end15:                                         ; preds = %if.end6
  %opts = getelementptr inbounds %struct.nvme_rdma_ctrl, ptr %ctrl, i32 0, i32 11, i32 93
  %90 = ptrtoint ptr %opts to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %opts, align 8
  %queue_size = getelementptr inbounds %struct.nvmf_ctrl_options, ptr %91, i32 0, i32 7
  %92 = ptrtoint ptr %queue_size to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %queue_size, align 4
  %sqsize = getelementptr inbounds %struct.nvme_rdma_ctrl, ptr %ctrl, i32 0, i32 11, i32 44
  %94 = ptrtoint ptr %sqsize to i32
  call void @__asan_load2_noabort(i32 %94)
  %95 = load i16, ptr %sqsize, align 2
  %conv = zext i16 %95 to i32
  %add = add nuw nsw i32 %conv, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %93, i32 %add)
  %cmp = icmp ugt i32 %93, %add
  br i1 %cmp, label %do.end22, label %if.end15.if.end32_crit_edge

if.end15.if.end32_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end32

do.end22:                                         ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #13
  %device24 = getelementptr inbounds %struct.nvme_rdma_ctrl, ptr %ctrl, i32 0, i32 11, i32 17
  %96 = ptrtoint ptr %device24 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %device24, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %97, ptr noundef nonnull @.str.46, i32 noundef %93, i32 noundef %add) #15
  %98 = ptrtoint ptr %sqsize to i32
  call void @__asan_load2_noabort(i32 %98)
  %.pr = load i16, ptr %sqsize, align 2
  br label %if.end32

if.end32:                                         ; preds = %do.end22, %if.end15.if.end32_crit_edge
  %99 = phi i16 [ %.pr, %do.end22 ], [ %95, %if.end15.if.end32_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp2(i16 127, i16 %99)
  %cmp37 = icmp ugt i16 %99, 127
  br i1 %cmp37, label %do.end42, label %if.end32.if.end51_crit_edge

if.end32.if.end51_crit_edge:                      ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end51

do.end42:                                         ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #13
  %conv35 = zext i16 %99 to i32
  %add36 = add nuw nsw i32 %conv35, 1
  %device44 = getelementptr inbounds %struct.nvme_rdma_ctrl, ptr %ctrl, i32 0, i32 11, i32 17
  %100 = ptrtoint ptr %device44 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %device44, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %101, ptr noundef nonnull @.str.49, i32 noundef %add36, i32 noundef 128) #15
  %102 = ptrtoint ptr %sqsize to i32
  call void @__asan_store2_noabort(i32 %102)
  store i16 127, ptr %sqsize, align 2
  br label %if.end51

if.end51:                                         ; preds = %do.end42, %if.end32.if.end51_crit_edge
  %103 = ptrtoint ptr %sqsize to i32
  call void @__asan_load2_noabort(i32 %103)
  %104 = load i16, ptr %sqsize, align 2
  %maxcmd = getelementptr inbounds %struct.nvme_rdma_ctrl, ptr %ctrl, i32 0, i32 11, i32 90
  %105 = ptrtoint ptr %maxcmd to i32
  call void @__asan_load2_noabort(i32 %105)
  %106 = load i16, ptr %maxcmd, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %104, i16 %106)
  %cmp58.not = icmp ult i16 %104, %106
  br i1 %cmp58.not, label %if.end51.if.end79_crit_edge, label %do.end63

if.end51.if.end79_crit_edge:                      ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end79

do.end63:                                         ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #13
  %conv57 = zext i16 %106 to i32
  %conv54 = zext i16 %104 to i32
  %add55 = add nuw nsw i32 %conv54, 1
  %device65 = getelementptr inbounds %struct.nvme_rdma_ctrl, ptr %ctrl, i32 0, i32 11, i32 17
  %107 = ptrtoint ptr %device65 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %device65, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %108, ptr noundef nonnull @.str.52, i32 noundef %add55, i32 noundef %conv57) #15
  %109 = ptrtoint ptr %maxcmd to i32
  call void @__asan_load2_noabort(i32 %109)
  %110 = load i16, ptr %maxcmd, align 2
  %sub = add i16 %110, -1
  %111 = ptrtoint ptr %sqsize to i32
  call void @__asan_store2_noabort(i32 %111)
  store i16 %sub, ptr %sqsize, align 2
  br label %if.end79

if.end79:                                         ; preds = %do.end63, %if.end51.if.end79_crit_edge
  %112 = ptrtoint ptr %sgls to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %sgls, align 4
  %and82 = and i32 %113, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and82)
  %tobool83.not = icmp eq i32 %and82, 0
  br i1 %tobool83.not, label %if.end79.if.end85_crit_edge, label %if.then84

if.end79.if.end85_crit_edge:                      ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end85

if.then84:                                        ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #13
  %use_inline_data = getelementptr inbounds %struct.nvme_rdma_ctrl, ptr %ctrl, i32 0, i32 12
  %114 = ptrtoint ptr %use_inline_data to i32
  call void @__asan_store1_noabort(i32 %114)
  store i8 1, ptr %use_inline_data, align 8
  br label %if.end85

if.end85:                                         ; preds = %if.then84, %if.end79.if.end85_crit_edge
  %queue_count = getelementptr inbounds %struct.nvme_rdma_ctrl, ptr %ctrl, i32 0, i32 11, i32 30
  %115 = ptrtoint ptr %queue_count to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %queue_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %116)
  %cmp87 = icmp ugt i32 %116, 1
  br i1 %cmp87, label %if.then89, label %if.end85.if.end95_crit_edge

if.end85.if.end95_crit_edge:                      ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end95

if.then89:                                        ; preds = %if.end85
  %117 = ptrtoint ptr %opts to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %opts, align 8
  %119 = ptrtoint ptr %device1.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %device1.i, align 4
  %121 = ptrtoint ptr %120 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %120, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %nr_io_queues.i.i) #11
  %num_comp_vectors.i.i = getelementptr inbounds %struct.ib_device, ptr %122, i32 0, i32 12
  %123 = ptrtoint ptr %num_comp_vectors.i.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %num_comp_vectors.i.i, align 4
  %nr_io_queues3.i.i = getelementptr inbounds %struct.nvmf_ctrl_options, ptr %118, i32 0, i32 8
  %125 = ptrtoint ptr %nr_io_queues3.i.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %nr_io_queues3.i.i, align 4
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef nonnull @__num_online_cpus, i32 noundef 4) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__num_online_cpus to i32))
  %127 = load volatile i32, ptr @__num_online_cpus, align 4
  %128 = tail call i32 @llvm.umin.i32(i32 %126, i32 %127) #11
  %129 = tail call i32 @llvm.umin.i32(i32 %124, i32 %128) #11
  %130 = ptrtoint ptr %num_comp_vectors.i.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %num_comp_vectors.i.i, align 4
  %nr_write_queues.i.i = getelementptr inbounds %struct.nvmf_ctrl_options, ptr %118, i32 0, i32 18
  %132 = ptrtoint ptr %nr_write_queues.i.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %nr_write_queues.i.i, align 4
  %call.i.i.i172.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef nonnull @__num_online_cpus, i32 noundef 4) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__num_online_cpus to i32))
  %134 = load volatile i32, ptr @__num_online_cpus, align 4
  %135 = tail call i32 @llvm.umin.i32(i32 %133, i32 %134) #11
  %136 = tail call i32 @llvm.umin.i32(i32 %131, i32 %135) #11
  %nr_poll_queues24.i.i = getelementptr inbounds %struct.nvmf_ctrl_options, ptr %118, i32 0, i32 19
  %137 = ptrtoint ptr %nr_poll_queues24.i.i to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load i32, ptr %nr_poll_queues24.i.i, align 4
  %call.i.i.i173.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef nonnull @__num_online_cpus, i32 noundef 4) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__num_online_cpus to i32))
  %139 = load volatile i32, ptr @__num_online_cpus, align 4
  %140 = tail call i32 @llvm.umin.i32(i32 %138, i32 %139) #11
  %add.i.i = add i32 %136, %129
  %add32.i.i = add i32 %add.i.i, %140
  %141 = ptrtoint ptr %nr_io_queues.i.i to i32
  call void @__asan_store4_noabort(i32 %141)
  store i32 %add32.i.i, ptr %nr_io_queues.i.i, align 4
  %call34.i.i = call i32 @nvme_set_queue_count(ptr noundef %ctrl4.i, ptr noundef nonnull %nr_io_queues.i.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34.i.i)
  %tobool.not.i.i279 = icmp eq i32 %call34.i.i, 0
  br i1 %tobool.not.i.i279, label %if.end.i.i280, label %if.then89.nvme_rdma_configure_io_queues.exit.thread305_crit_edge

if.then89.nvme_rdma_configure_io_queues.exit.thread305_crit_edge: ; preds = %if.then89
  call void @__sanitizer_cov_trace_pc() #13
  br label %nvme_rdma_configure_io_queues.exit.thread305

if.end.i.i280:                                    ; preds = %if.then89
  %142 = ptrtoint ptr %nr_io_queues.i.i to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load i32, ptr %nr_io_queues.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %143)
  %cmp35.i.i = icmp eq i32 %143, 0
  br i1 %cmp35.i.i, label %do.end.i.i, label %if.end39.i.i

do.end.i.i:                                       ; preds = %if.end.i.i280
  call void @__sanitizer_cov_trace_pc() #13
  %device38.i.i = getelementptr inbounds %struct.nvme_rdma_ctrl, ptr %ctrl, i32 0, i32 11, i32 17
  %144 = ptrtoint ptr %device38.i.i to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %device38.i.i, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %145, ptr noundef nonnull @.str.139) #15
  br label %nvme_rdma_configure_io_queues.exit.thread305

if.end39.i.i:                                     ; preds = %if.end.i.i280
  %add40.i.i = add i32 %143, 1
  %146 = ptrtoint ptr %queue_count to i32
  call void @__asan_store4_noabort(i32 %146)
  store i32 %add40.i.i, ptr %queue_count, align 4
  %device46.i.i = getelementptr inbounds %struct.nvme_rdma_ctrl, ptr %ctrl, i32 0, i32 11, i32 17
  %147 = ptrtoint ptr %device46.i.i to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %device46.i.i, align 8
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %148, ptr noundef nonnull @.str.142, i32 noundef %143) #15
  %149 = ptrtoint ptr %nr_write_queues.i.i to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load i32, ptr %nr_write_queues.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %150)
  %tobool48.not.i.i = icmp eq i32 %150, 0
  br i1 %tobool48.not.i.i, label %if.end39.i.i.if.else.i.i_crit_edge, label %land.lhs.true.i.i

if.end39.i.i.if.else.i.i_crit_edge:               ; preds = %if.end39.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else.i.i

land.lhs.true.i.i:                                ; preds = %if.end39.i.i
  %151 = ptrtoint ptr %nr_io_queues.i.i to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load i32, ptr %nr_io_queues.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %152, i32 %129)
  %cmp49.i.i = icmp ugt i32 %152, %129
  br i1 %cmp49.i.i, label %if.then50.i.i, label %land.lhs.true.i.i.if.else.i.i_crit_edge

land.lhs.true.i.i.if.else.i.i_crit_edge:          ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else.i.i

if.then50.i.i:                                    ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %io_queues.i.i = getelementptr inbounds %struct.nvme_rdma_ctrl, ptr %ctrl, i32 0, i32 13
  %arrayidx.i.i = getelementptr %struct.nvme_rdma_ctrl, ptr %ctrl, i32 0, i32 13, i32 1
  %153 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store4_noabort(i32 %153)
  store i32 %129, ptr %arrayidx.i.i, align 4
  %sub.i.i281 = sub i32 %152, %129
  %154 = call i32 @llvm.umin.i32(i32 %136, i32 %sub.i.i281) #11
  %155 = ptrtoint ptr %io_queues.i.i to i32
  call void @__asan_store4_noabort(i32 %155)
  store i32 %154, ptr %io_queues.i.i, align 4
  %sub63.i.i = sub i32 %sub.i.i281, %154
  br label %if.end75.i.i

if.else.i.i:                                      ; preds = %land.lhs.true.i.i.if.else.i.i_crit_edge, %if.end39.i.i.if.else.i.i_crit_edge
  %156 = ptrtoint ptr %nr_io_queues.i.i to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load i32, ptr %nr_io_queues.i.i, align 4
  %158 = call i32 @llvm.umin.i32(i32 %129, i32 %157) #11
  %io_queues70.i.i = getelementptr inbounds %struct.nvme_rdma_ctrl, ptr %ctrl, i32 0, i32 13
  %159 = ptrtoint ptr %io_queues70.i.i to i32
  call void @__asan_store4_noabort(i32 %159)
  store i32 %158, ptr %io_queues70.i.i, align 4
  %sub74.i.i = sub i32 %157, %158
  br label %if.end75.i.i

if.end75.i.i:                                     ; preds = %if.else.i.i, %if.then50.i.i
  %storemerge.i.i = phi i32 [ %sub74.i.i, %if.else.i.i ], [ %sub63.i.i, %if.then50.i.i ]
  %160 = ptrtoint ptr %nr_io_queues.i.i to i32
  call void @__asan_store4_noabort(i32 %160)
  store i32 %storemerge.i.i, ptr %nr_io_queues.i.i, align 4
  %161 = ptrtoint ptr %nr_poll_queues24.i.i to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load i32, ptr %nr_poll_queues24.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %162)
  %tobool77.not.i.i = icmp eq i32 %162, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %storemerge.i.i)
  %tobool79.not.i.i = icmp eq i32 %storemerge.i.i, 0
  %or.cond.i.i = select i1 %tobool77.not.i.i, i1 true, i1 %tobool79.not.i.i
  br i1 %or.cond.i.i, label %if.end75.i.i.if.end89.i.i_crit_edge, label %if.then80.i.i

if.end75.i.i.if.end89.i.i_crit_edge:              ; preds = %if.end75.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end89.i.i

if.then80.i.i:                                    ; preds = %if.end75.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %163 = call i32 @llvm.umin.i32(i32 %140, i32 %storemerge.i.i) #11
  %arrayidx88.i.i = getelementptr %struct.nvme_rdma_ctrl, ptr %ctrl, i32 0, i32 13, i32 2
  %164 = ptrtoint ptr %arrayidx88.i.i to i32
  call void @__asan_store4_noabort(i32 %164)
  store i32 %163, ptr %arrayidx88.i.i, align 4
  br label %if.end89.i.i

if.end89.i.i:                                     ; preds = %if.then80.i.i, %if.end75.i.i.if.end89.i.i_crit_edge
  %165 = ptrtoint ptr %queue_count to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load i32, ptr %queue_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %166)
  %cmp92176.i.i = icmp ugt i32 %166, 1
  br i1 %cmp92176.i.i, label %if.end89.i.i.for.body.i.i_crit_edge, label %if.end89.i.i.nvme_rdma_alloc_io_queues.exit.thread114.i_crit_edge

if.end89.i.i.nvme_rdma_alloc_io_queues.exit.thread114.i_crit_edge: ; preds = %if.end89.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %nvme_rdma_alloc_io_queues.exit.thread114.i

if.end89.i.i.for.body.i.i_crit_edge:              ; preds = %if.end89.i.i
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %if.end89.i.i.for.body.i.i_crit_edge
  %i.0177.i.i = phi i32 [ %inc.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ 1, %if.end89.i.i.for.body.i.i_crit_edge ]
  %167 = ptrtoint ptr %sqsize to i32
  call void @__asan_load2_noabort(i32 %167)
  %168 = load i16, ptr %sqsize, align 2
  %conv.i.i = zext i16 %168 to i32
  %add94.i.i = add nuw nsw i32 %conv.i.i, 1
  %call95.i.i = call fastcc i32 @nvme_rdma_alloc_queue(ptr noundef %ctrl, i32 noundef %i.0177.i.i, i32 noundef %add94.i.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call95.i.i)
  %tobool96.not.i.i = icmp eq i32 %call95.i.i, 0
  br i1 %tobool96.not.i.i, label %for.inc.i.i, label %for.cond99.preheader.i.i

for.cond99.preheader.i.i:                         ; preds = %for.body.i.i
  %i.1178.i.i = add i32 %i.0177.i.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.1178.i.i)
  %cmp100179.i.i = icmp sgt i32 %i.1178.i.i, 0
  br i1 %cmp100179.i.i, label %for.cond99.preheader.i.i.for.body102.i.i_crit_edge, label %for.cond99.preheader.i.i.nvme_rdma_configure_io_queues.exit.thread305_crit_edge

for.cond99.preheader.i.i.nvme_rdma_configure_io_queues.exit.thread305_crit_edge: ; preds = %for.cond99.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %nvme_rdma_configure_io_queues.exit.thread305

for.cond99.preheader.i.i.for.body102.i.i_crit_edge: ; preds = %for.cond99.preheader.i.i
  br label %for.body102.i.i

for.inc.i.i:                                      ; preds = %for.body.i.i
  %inc.i.i = add nuw i32 %i.0177.i.i, 1
  %169 = ptrtoint ptr %queue_count to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load i32, ptr %queue_count, align 4
  %cmp92.i.i = icmp ult i32 %inc.i.i, %170
  br i1 %cmp92.i.i, label %for.inc.i.i.for.body.i.i_crit_edge, label %for.inc.i.i.nvme_rdma_alloc_io_queues.exit.thread114.i_crit_edge

for.inc.i.i.nvme_rdma_alloc_io_queues.exit.thread114.i_crit_edge: ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %nvme_rdma_alloc_io_queues.exit.thread114.i

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i.i

for.body102.i.i:                                  ; preds = %nvme_rdma_free_queue.exit.i.i.for.body102.i.i_crit_edge, %for.cond99.preheader.i.i.for.body102.i.i_crit_edge
  %i.1180.i.i = phi i32 [ %i.1.i.i, %nvme_rdma_free_queue.exit.i.i.for.body102.i.i_crit_edge ], [ %i.1178.i.i, %for.cond99.preheader.i.i.for.body102.i.i_crit_edge ]
  %171 = ptrtoint ptr %ctrl to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load ptr, ptr %ctrl, align 8
  %flags.i.i.i = getelementptr %struct.nvme_rdma_queue, ptr %172, i32 %i.1180.i.i, i32 7
  %call.i.i.i282 = call i32 @_test_and_clear_bit(i32 noundef 0, ptr noundef %flags.i.i.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i282)
  %tobool.not.i.i.i = icmp eq i32 %call.i.i.i282, 0
  br i1 %tobool.not.i.i.i, label %for.body102.i.i.nvme_rdma_free_queue.exit.i.i_crit_edge, label %if.end.i.i.i

for.body102.i.i.nvme_rdma_free_queue.exit.i.i_crit_edge: ; preds = %for.body102.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %nvme_rdma_free_queue.exit.i.i

if.end.i.i.i:                                     ; preds = %for.body102.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx103.i.i = getelementptr %struct.nvme_rdma_queue, ptr %172, i32 %i.1180.i.i
  %cm_id.i.i.i283 = getelementptr %struct.nvme_rdma_queue, ptr %172, i32 %i.1180.i.i, i32 8
  %173 = ptrtoint ptr %cm_id.i.i.i283 to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load ptr, ptr %cm_id.i.i.i283, align 4
  call void @rdma_destroy_id(ptr noundef %174) #11
  call fastcc void @nvme_rdma_destroy_queue_ib(ptr noundef %arrayidx103.i.i) #11
  %queue_lock.i.i.i = getelementptr %struct.nvme_rdma_queue, ptr %172, i32 %i.1180.i.i, i32 13
  call void @mutex_destroy(ptr noundef %queue_lock.i.i.i) #11
  br label %nvme_rdma_free_queue.exit.i.i

nvme_rdma_free_queue.exit.i.i:                    ; preds = %if.end.i.i.i, %for.body102.i.i.nvme_rdma_free_queue.exit.i.i_crit_edge
  %i.1.i.i = add i32 %i.1180.i.i, -1
  %cmp100.i.i = icmp sgt i32 %i.1.i.i, 0
  br i1 %cmp100.i.i, label %nvme_rdma_free_queue.exit.i.i.for.body102.i.i_crit_edge, label %nvme_rdma_alloc_io_queues.exit.i

nvme_rdma_free_queue.exit.i.i.for.body102.i.i_crit_edge: ; preds = %nvme_rdma_free_queue.exit.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body102.i.i

nvme_rdma_configure_io_queues.exit.thread305:     ; preds = %for.cond99.preheader.i.i.nvme_rdma_configure_io_queues.exit.thread305_crit_edge, %do.end.i.i, %if.then89.nvme_rdma_configure_io_queues.exit.thread305_crit_edge
  %retval.0.i.ph.i = phi i32 [ %call95.i.i, %for.cond99.preheader.i.i.nvme_rdma_configure_io_queues.exit.thread305_crit_edge ], [ %call34.i.i, %if.then89.nvme_rdma_configure_io_queues.exit.thread305_crit_edge ], [ -12, %do.end.i.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %nr_io_queues.i.i) #11
  br label %destroy_admin

nvme_rdma_alloc_io_queues.exit.thread114.i:       ; preds = %for.inc.i.i.nvme_rdma_alloc_io_queues.exit.thread114.i_crit_edge, %if.end89.i.i.nvme_rdma_alloc_io_queues.exit.thread114.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %nr_io_queues.i.i) #11
  br i1 %new, label %if.then2.i, label %nvme_rdma_alloc_io_queues.exit.thread114.i.if.end24.i_crit_edge

nvme_rdma_alloc_io_queues.exit.thread114.i.if.end24.i_crit_edge: ; preds = %nvme_rdma_alloc_io_queues.exit.thread114.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end24.i

nvme_rdma_alloc_io_queues.exit.i:                 ; preds = %nvme_rdma_free_queue.exit.i.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %nr_io_queues.i.i) #11
  br label %destroy_admin

if.then2.i:                                       ; preds = %nvme_rdma_alloc_io_queues.exit.thread114.i
  %tag_set.i.i = getelementptr %struct.nvme_rdma_ctrl, ptr %ctrl, i32 0, i32 1
  %175 = call ptr @memset(ptr %tag_set.i.i, i32 0, i32 184)
  %ops2.i.i = getelementptr %struct.nvme_rdma_ctrl, ptr %ctrl, i32 0, i32 1, i32 2
  %176 = ptrtoint ptr %ops2.i.i to i32
  call void @__asan_store4_noabort(i32 %176)
  store ptr @nvme_rdma_mq_ops, ptr %ops2.i.i, align 4
  %177 = ptrtoint ptr %sqsize to i32
  call void @__asan_load2_noabort(i32 %177)
  %178 = load i16, ptr %sqsize, align 2
  %conv.i83.i = zext i16 %178 to i32
  %add.i84.i = add nuw nsw i32 %conv.i83.i, 1
  %queue_depth3.i.i = getelementptr %struct.nvme_rdma_ctrl, ptr %ctrl, i32 0, i32 1, i32 4
  %179 = ptrtoint ptr %queue_depth3.i.i to i32
  call void @__asan_store4_noabort(i32 %179)
  store i32 %add.i84.i, ptr %queue_depth3.i.i, align 4
  %reserved_tags4.i.i = getelementptr %struct.nvme_rdma_ctrl, ptr %ctrl, i32 0, i32 1, i32 5
  %180 = ptrtoint ptr %reserved_tags4.i.i to i32
  call void @__asan_store4_noabort(i32 %180)
  store i32 1, ptr %reserved_tags4.i.i, align 4
  %181 = ptrtoint ptr %numa_node.i to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load i32, ptr %numa_node.i, align 4
  %numa_node6.i.i = getelementptr %struct.nvme_rdma_ctrl, ptr %ctrl, i32 0, i32 1, i32 7
  %183 = ptrtoint ptr %numa_node6.i.i to i32
  call void @__asan_store4_noabort(i32 %183)
  store i32 %182, ptr %numa_node6.i.i, align 4
  %flags7.i.i = getelementptr %struct.nvme_rdma_ctrl, ptr %ctrl, i32 0, i32 1, i32 9
  %184 = ptrtoint ptr %flags7.i.i to i32
  call void @__asan_store4_noabort(i32 %184)
  store i32 1, ptr %flags7.i.i, align 4
  %cmd_size8.i.i = getelementptr %struct.nvme_rdma_ctrl, ptr %ctrl, i32 0, i32 1, i32 6
  %max_integrity_segments.i.i = getelementptr inbounds %struct.nvme_rdma_ctrl, ptr %ctrl, i32 0, i32 11, i32 34
  %185 = ptrtoint ptr %max_integrity_segments.i.i to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load i32, ptr %max_integrity_segments.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %186)
  %tobool9.not.i.i284 = icmp eq i32 %186, 0
  %spec.store.select.i.i = select i1 %tobool9.not.i.i284, i32 288, i32 324
  %187 = ptrtoint ptr %cmd_size8.i.i to i32
  call void @__asan_store4_noabort(i32 %187)
  store i32 %spec.store.select.i.i, ptr %cmd_size8.i.i, align 4
  %driver_data13.i.i = getelementptr %struct.nvme_rdma_ctrl, ptr %ctrl, i32 0, i32 1, i32 10
  %188 = ptrtoint ptr %driver_data13.i.i to i32
  call void @__asan_store4_noabort(i32 %188)
  store ptr %ctrl, ptr %driver_data13.i.i, align 4
  %189 = ptrtoint ptr %queue_count to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load i32, ptr %queue_count, align 4
  %sub.i86.i = add i32 %190, -1
  %nr_hw_queues14.i.i = getelementptr %struct.nvme_rdma_ctrl, ptr %ctrl, i32 0, i32 1, i32 3
  %191 = ptrtoint ptr %nr_hw_queues14.i.i to i32
  call void @__asan_store4_noabort(i32 %191)
  store i32 %sub.i86.i, ptr %nr_hw_queues14.i.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nvme_io_timeout to i32))
  %192 = load i32, ptr @nvme_io_timeout, align 4
  %mul15.i.i = mul i32 %192, 100
  %timeout16.i.i = getelementptr %struct.nvme_rdma_ctrl, ptr %ctrl, i32 0, i32 1, i32 8
  %193 = ptrtoint ptr %timeout16.i.i to i32
  call void @__asan_store4_noabort(i32 %193)
  store i32 %mul15.i.i, ptr %timeout16.i.i, align 4
  %194 = ptrtoint ptr %opts to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load ptr, ptr %opts, align 8
  %nr_poll_queues.i.i = getelementptr inbounds %struct.nvmf_ctrl_options, ptr %195, i32 0, i32 19
  %196 = ptrtoint ptr %nr_poll_queues.i.i to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load i32, ptr %nr_poll_queues.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %197)
  %tobool17.not.i.i = icmp eq i32 %197, 0
  %cond.i.i = select i1 %tobool17.not.i.i, i32 2, i32 3
  %nr_maps.i.i285 = getelementptr %struct.nvme_rdma_ctrl, ptr %ctrl, i32 0, i32 1, i32 1
  %198 = ptrtoint ptr %nr_maps.i.i285 to i32
  call void @__asan_store4_noabort(i32 %198)
  store i32 %cond.i.i, ptr %nr_maps.i.i285, align 4
  %call19.i.i286 = call i32 @blk_mq_alloc_tag_set(ptr noundef %tag_set.i.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19.i.i286)
  %tobool20.not.i.i287 = icmp eq i32 %call19.i.i286, 0
  %199 = inttoptr i32 %call19.i.i286 to ptr
  %spec.select.i.i288 = select i1 %tobool20.not.i.i287, ptr %tag_set.i.i, ptr %199
  %tagset.i = getelementptr inbounds %struct.nvme_rdma_ctrl, ptr %ctrl, i32 0, i32 11, i32 12
  %200 = ptrtoint ptr %tagset.i to i32
  call void @__asan_store4_noabort(i32 %200)
  store ptr %spec.select.i.i288, ptr %tagset.i, align 8
  %cmp.i.i289 = icmp ugt ptr %spec.select.i.i288, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i289, label %if.then9.i, label %if.end13.i

if.then9.i:                                       ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #13
  %201 = ptrtoint ptr %spec.select.i.i288 to i32
  br label %out_free_io_queues.i

if.end13.i:                                       ; preds = %if.then2.i
  %call14.i = call ptr @blk_mq_init_queue(ptr noundef %tag_set.i.i) #11
  %connect_q.i = getelementptr inbounds %struct.nvme_rdma_ctrl, ptr %ctrl, i32 0, i32 11, i32 7
  %202 = ptrtoint ptr %connect_q.i to i32
  call void @__asan_store4_noabort(i32 %202)
  store ptr %call14.i, ptr %connect_q.i, align 4
  %cmp.i88.i = icmp ugt ptr %call14.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i88.i, label %if.then19.i, label %if.end13.i.if.end24.i_crit_edge

if.end13.i.if.end24.i_crit_edge:                  ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end24.i

if.then19.i:                                      ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #13
  %203 = ptrtoint ptr %call14.i to i32
  br label %if.then51.i

if.end24.i:                                       ; preds = %if.end13.i.if.end24.i_crit_edge, %nvme_rdma_alloc_io_queues.exit.thread114.i.if.end24.i_crit_edge
  %204 = ptrtoint ptr %queue_count to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load i32, ptr %queue_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %205)
  %cmp28.i.i = icmp ugt i32 %205, 1
  br i1 %cmp28.i.i, label %if.end24.i.if.end.i.i92.i_crit_edge, label %if.end24.i.if.end28.i_crit_edge

if.end24.i.if.end28.i_crit_edge:                  ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end28.i

if.end24.i.if.end.i.i92.i_crit_edge:              ; preds = %if.end24.i
  br label %if.end.i.i92.i

if.end.i.i92.i:                                   ; preds = %for.inc.i95.i.if.end.i.i92.i_crit_edge, %if.end24.i.if.end.i.i92.i_crit_edge
  %i.029.i.i = phi i32 [ %inc.i93.i, %for.inc.i95.i.if.end.i.i92.i_crit_edge ], [ 1, %if.end24.i.if.end.i.i92.i_crit_edge ]
  %206 = ptrtoint ptr %ctrl to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load ptr, ptr %ctrl, align 8
  %conv.i.i.i290 = trunc i32 %i.029.i.i to i16
  %call.i.i90.i = call i32 @nvmf_connect_io_queue(ptr noundef %ctrl4.i, i16 noundef zeroext %conv.i.i.i290) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i90.i)
  %tobool4.not.i.i.i = icmp eq i32 %call.i.i90.i, 0
  %flags.i.i91.i = getelementptr %struct.nvme_rdma_queue, ptr %207, i32 %i.029.i.i, i32 7
  br i1 %tobool4.not.i.i.i, label %for.inc.i95.i, label %if.else6.i.i.i

if.else6.i.i.i:                                   ; preds = %if.end.i.i92.i
  %208 = ptrtoint ptr %flags.i.i91.i to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load volatile i32, ptr %flags.i.i91.i, align 4
  %and1.i.i.i.i = and i32 %209, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i.i)
  %tobool9.not.i.i.i = icmp eq i32 %and1.i.i.i.i, 0
  br i1 %tobool9.not.i.i.i, label %if.else6.i.i.i.nvme_rdma_start_queue.exit.i.i_crit_edge, label %if.then10.i.i.i

if.else6.i.i.i.nvme_rdma_start_queue.exit.i.i_crit_edge: ; preds = %if.else6.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %nvme_rdma_start_queue.exit.i.i

if.then10.i.i.i:                                  ; preds = %if.else6.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %cm_id.i.i.i.i = getelementptr %struct.nvme_rdma_queue, ptr %207, i32 %i.029.i.i, i32 8
  %210 = ptrtoint ptr %cm_id.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load ptr, ptr %cm_id.i.i.i.i, align 4
  %call.i.i.i.i = call i32 @rdma_disconnect(ptr noundef %211) #11
  %qp.i.i.i.i = getelementptr %struct.nvme_rdma_queue, ptr %207, i32 %i.029.i.i, i32 6
  %212 = ptrtoint ptr %qp.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load ptr, ptr %qp.i.i.i.i, align 4
  call void @ib_drain_qp(ptr noundef %213) #11
  br label %nvme_rdma_start_queue.exit.i.i

nvme_rdma_start_queue.exit.i.i:                   ; preds = %if.then10.i.i.i, %if.else6.i.i.i.nvme_rdma_start_queue.exit.i.i_crit_edge
  %214 = ptrtoint ptr %device46.i.i to i32
  call void @__asan_load4_noabort(i32 %214)
  %215 = load ptr, ptr %device46.i.i, align 8
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %215, ptr noundef nonnull @.str.137, i32 noundef %i.029.i.i, i32 noundef %call.i.i90.i) #15
  %i.130.i.i = add i32 %i.029.i.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.130.i.i)
  %cmp331.i.i = icmp sgt i32 %i.130.i.i, 0
  br i1 %cmp331.i.i, label %nvme_rdma_start_queue.exit.i.i.for.body4.i.i_crit_edge, label %nvme_rdma_start_queue.exit.i.i.out_cleanup_connect_q.i_crit_edge

nvme_rdma_start_queue.exit.i.i.out_cleanup_connect_q.i_crit_edge: ; preds = %nvme_rdma_start_queue.exit.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %out_cleanup_connect_q.i

nvme_rdma_start_queue.exit.i.i.for.body4.i.i_crit_edge: ; preds = %nvme_rdma_start_queue.exit.i.i
  br label %for.body4.i.i

for.inc.i95.i:                                    ; preds = %if.end.i.i92.i
  call void @_set_bit(i32 noundef 1, ptr noundef %flags.i.i91.i) #11
  %inc.i93.i = add nuw i32 %i.029.i.i, 1
  %216 = ptrtoint ptr %queue_count to i32
  call void @__asan_load4_noabort(i32 %216)
  %217 = load i32, ptr %queue_count, align 4
  %cmp.i94.i = icmp ult i32 %inc.i93.i, %217
  br i1 %cmp.i94.i, label %for.inc.i95.i.if.end.i.i92.i_crit_edge, label %for.inc.i95.i.if.end28.i_crit_edge

for.inc.i95.i.if.end28.i_crit_edge:               ; preds = %for.inc.i95.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end28.i

for.inc.i95.i.if.end.i.i92.i_crit_edge:           ; preds = %for.inc.i95.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i.i92.i

for.body4.i.i:                                    ; preds = %nvme_rdma_stop_queue.exit.i.i.for.body4.i.i_crit_edge, %nvme_rdma_start_queue.exit.i.i.for.body4.i.i_crit_edge
  %i.132.i.i = phi i32 [ %i.1.i97.i, %nvme_rdma_stop_queue.exit.i.i.for.body4.i.i_crit_edge ], [ %i.130.i.i, %nvme_rdma_start_queue.exit.i.i.for.body4.i.i_crit_edge ]
  %218 = ptrtoint ptr %ctrl to i32
  call void @__asan_load4_noabort(i32 %218)
  %219 = load ptr, ptr %ctrl, align 8
  %queue_lock.i.i96.i = getelementptr %struct.nvme_rdma_queue, ptr %219, i32 %i.132.i.i, i32 13
  call void @mutex_lock_nested(ptr noundef %queue_lock.i.i96.i, i32 noundef 0) #11
  %flags.i18.i.i = getelementptr %struct.nvme_rdma_queue, ptr %219, i32 %i.132.i.i, i32 7
  %call.i19.i.i = call i32 @_test_and_clear_bit(i32 noundef 1, ptr noundef %flags.i18.i.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i19.i.i)
  %tobool.not.i20.i.i = icmp eq i32 %call.i19.i.i, 0
  br i1 %tobool.not.i20.i.i, label %for.body4.i.i.nvme_rdma_stop_queue.exit.i.i_crit_edge, label %if.then.i24.i.i

for.body4.i.i.nvme_rdma_stop_queue.exit.i.i_crit_edge: ; preds = %for.body4.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %nvme_rdma_stop_queue.exit.i.i

if.then.i24.i.i:                                  ; preds = %for.body4.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %cm_id.i.i21.i.i = getelementptr %struct.nvme_rdma_queue, ptr %219, i32 %i.132.i.i, i32 8
  %220 = ptrtoint ptr %cm_id.i.i21.i.i to i32
  call void @__asan_load4_noabort(i32 %220)
  %221 = load ptr, ptr %cm_id.i.i21.i.i, align 4
  %call.i.i22.i.i = call i32 @rdma_disconnect(ptr noundef %221) #11
  %qp.i.i23.i.i = getelementptr %struct.nvme_rdma_queue, ptr %219, i32 %i.132.i.i, i32 6
  %222 = ptrtoint ptr %qp.i.i23.i.i to i32
  call void @__asan_load4_noabort(i32 %222)
  %223 = load ptr, ptr %qp.i.i23.i.i, align 4
  call void @ib_drain_qp(ptr noundef %223) #11
  br label %nvme_rdma_stop_queue.exit.i.i

nvme_rdma_stop_queue.exit.i.i:                    ; preds = %if.then.i24.i.i, %for.body4.i.i.nvme_rdma_stop_queue.exit.i.i_crit_edge
  call void @mutex_unlock(ptr noundef %queue_lock.i.i96.i) #11
  %i.1.i97.i = add i32 %i.132.i.i, -1
  %cmp3.i.i = icmp sgt i32 %i.1.i97.i, 0
  br i1 %cmp3.i.i, label %nvme_rdma_stop_queue.exit.i.i.for.body4.i.i_crit_edge, label %nvme_rdma_stop_queue.exit.i.i.out_cleanup_connect_q.i_crit_edge

nvme_rdma_stop_queue.exit.i.i.out_cleanup_connect_q.i_crit_edge: ; preds = %nvme_rdma_stop_queue.exit.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %out_cleanup_connect_q.i

nvme_rdma_stop_queue.exit.i.i.for.body4.i.i_crit_edge: ; preds = %nvme_rdma_stop_queue.exit.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body4.i.i

if.end28.i:                                       ; preds = %for.inc.i95.i.if.end28.i_crit_edge, %if.end24.i.if.end28.i_crit_edge
  br i1 %new, label %if.end28.i.if.end95_crit_edge, label %if.then30.i

if.end28.i.if.end95_crit_edge:                    ; preds = %if.end28.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end95

if.then30.i:                                      ; preds = %if.end28.i
  call void @nvme_start_queues(ptr noundef %ctrl4.i) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nvme_io_timeout to i32))
  %224 = load i32, ptr @nvme_io_timeout, align 4
  %mul.i = mul i32 %224, 100
  %call33.i291 = call i32 @nvme_wait_freeze_timeout(ptr noundef %ctrl4.i, i32 noundef %mul.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33.i291)
  %tobool34.not.i = icmp eq i32 %call33.i291, 0
  br i1 %tobool34.not.i, label %out_cleanup_connect_q.thread.i, label %if.end36.i

out_cleanup_connect_q.thread.i:                   ; preds = %if.then30.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @nvme_stop_queues(ptr noundef %ctrl4.i) #11
  call void @nvme_sync_io_queues(ptr noundef %ctrl4.i) #11
  call fastcc void @nvme_rdma_stop_io_queues(ptr noundef %ctrl) #11
  call void @nvme_cancel_tagset(ptr noundef %ctrl4.i) #11
  br label %out_free_io_queues.i

if.end36.i:                                       ; preds = %if.then30.i
  call void @__sanitizer_cov_trace_pc() #13
  %tagset38.i = getelementptr inbounds %struct.nvme_rdma_ctrl, ptr %ctrl, i32 0, i32 11, i32 12
  %225 = ptrtoint ptr %tagset38.i to i32
  call void @__asan_load4_noabort(i32 %225)
  %226 = load ptr, ptr %tagset38.i, align 8
  %227 = ptrtoint ptr %queue_count to i32
  call void @__asan_load4_noabort(i32 %227)
  %228 = load i32, ptr %queue_count, align 4
  %sub.i = add i32 %228, -1
  call void @blk_mq_update_nr_hw_queues(ptr noundef %226, i32 noundef %sub.i) #11
  call void @nvme_unfreeze(ptr noundef %ctrl4.i) #11
  br label %if.end95

out_cleanup_connect_q.i:                          ; preds = %nvme_rdma_stop_queue.exit.i.i.out_cleanup_connect_q.i_crit_edge, %nvme_rdma_start_queue.exit.i.i.out_cleanup_connect_q.i_crit_edge
  call void @nvme_cancel_tagset(ptr noundef %ctrl4.i) #11
  br i1 %new, label %if.then46.i, label %out_cleanup_connect_q.i.out_free_io_queues.i_crit_edge

out_cleanup_connect_q.i.out_free_io_queues.i_crit_edge: ; preds = %out_cleanup_connect_q.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %out_free_io_queues.i

if.then46.i:                                      ; preds = %out_cleanup_connect_q.i
  call void @__sanitizer_cov_trace_pc() #13
  %connect_q48.i = getelementptr inbounds %struct.nvme_rdma_ctrl, ptr %ctrl, i32 0, i32 11, i32 7
  %229 = ptrtoint ptr %connect_q48.i to i32
  call void @__asan_load4_noabort(i32 %229)
  %230 = load ptr, ptr %connect_q48.i, align 4
  call void @blk_cleanup_queue(ptr noundef %230) #11
  br label %if.then51.i

if.then51.i:                                      ; preds = %if.then46.i, %if.then19.i
  %ret.1.ph.i = phi i32 [ %call.i.i90.i, %if.then46.i ], [ %203, %if.then19.i ]
  %tagset53.i = getelementptr inbounds %struct.nvme_rdma_ctrl, ptr %ctrl, i32 0, i32 11, i32 12
  %231 = ptrtoint ptr %tagset53.i to i32
  call void @__asan_load4_noabort(i32 %231)
  %232 = load ptr, ptr %tagset53.i, align 8
  call void @blk_mq_free_tag_set(ptr noundef %232) #11
  br label %out_free_io_queues.i

out_free_io_queues.i:                             ; preds = %if.then51.i, %out_cleanup_connect_q.i.out_free_io_queues.i_crit_edge, %out_cleanup_connect_q.thread.i, %if.then9.i
  %ret.2.i = phi i32 [ %201, %if.then9.i ], [ %ret.1.ph.i, %if.then51.i ], [ %call.i.i90.i, %out_cleanup_connect_q.i.out_free_io_queues.i_crit_edge ], [ -19, %out_cleanup_connect_q.thread.i ]
  %233 = ptrtoint ptr %queue_count to i32
  call void @__asan_load4_noabort(i32 %233)
  %234 = load i32, ptr %queue_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %234)
  %cmp5.i.i = icmp ugt i32 %234, 1
  br i1 %cmp5.i.i, label %out_free_io_queues.i.for.body.i103.i_crit_edge, label %out_free_io_queues.i.destroy_admin_crit_edge

out_free_io_queues.i.destroy_admin_crit_edge:     ; preds = %out_free_io_queues.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %destroy_admin

out_free_io_queues.i.for.body.i103.i_crit_edge:   ; preds = %out_free_io_queues.i
  br label %for.body.i103.i

for.body.i103.i:                                  ; preds = %nvme_rdma_free_queue.exit.i110.i.for.body.i103.i_crit_edge, %out_free_io_queues.i.for.body.i103.i_crit_edge
  %i.06.i.i = phi i32 [ %inc.i108.i, %nvme_rdma_free_queue.exit.i110.i.for.body.i103.i_crit_edge ], [ 1, %out_free_io_queues.i.for.body.i103.i_crit_edge ]
  %235 = ptrtoint ptr %ctrl to i32
  call void @__asan_load4_noabort(i32 %235)
  %236 = load ptr, ptr %ctrl, align 8
  %flags.i.i100.i = getelementptr %struct.nvme_rdma_queue, ptr %236, i32 %i.06.i.i, i32 7
  %call.i.i101.i = call i32 @_test_and_clear_bit(i32 noundef 0, ptr noundef %flags.i.i100.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i101.i)
  %tobool.not.i.i102.i = icmp eq i32 %call.i.i101.i, 0
  br i1 %tobool.not.i.i102.i, label %for.body.i103.i.nvme_rdma_free_queue.exit.i110.i_crit_edge, label %if.end.i.i107.i

for.body.i103.i.nvme_rdma_free_queue.exit.i110.i_crit_edge: ; preds = %for.body.i103.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %nvme_rdma_free_queue.exit.i110.i

if.end.i.i107.i:                                  ; preds = %for.body.i103.i
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx.i104.i = getelementptr %struct.nvme_rdma_queue, ptr %236, i32 %i.06.i.i
  %cm_id.i.i105.i = getelementptr %struct.nvme_rdma_queue, ptr %236, i32 %i.06.i.i, i32 8
  %237 = ptrtoint ptr %cm_id.i.i105.i to i32
  call void @__asan_load4_noabort(i32 %237)
  %238 = load ptr, ptr %cm_id.i.i105.i, align 4
  call void @rdma_destroy_id(ptr noundef %238) #11
  call fastcc void @nvme_rdma_destroy_queue_ib(ptr noundef %arrayidx.i104.i) #11
  %queue_lock.i.i106.i = getelementptr %struct.nvme_rdma_queue, ptr %236, i32 %i.06.i.i, i32 13
  call void @mutex_destroy(ptr noundef %queue_lock.i.i106.i) #11
  br label %nvme_rdma_free_queue.exit.i110.i

nvme_rdma_free_queue.exit.i110.i:                 ; preds = %if.end.i.i107.i, %for.body.i103.i.nvme_rdma_free_queue.exit.i110.i_crit_edge
  %inc.i108.i = add nuw i32 %i.06.i.i, 1
  %239 = ptrtoint ptr %queue_count to i32
  call void @__asan_load4_noabort(i32 %239)
  %240 = load i32, ptr %queue_count, align 4
  %cmp.i109.i = icmp ult i32 %inc.i108.i, %240
  br i1 %cmp.i109.i, label %nvme_rdma_free_queue.exit.i110.i.for.body.i103.i_crit_edge, label %nvme_rdma_free_queue.exit.i110.i.destroy_admin_crit_edge

nvme_rdma_free_queue.exit.i110.i.destroy_admin_crit_edge: ; preds = %nvme_rdma_free_queue.exit.i110.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %destroy_admin

nvme_rdma_free_queue.exit.i110.i.for.body.i103.i_crit_edge: ; preds = %nvme_rdma_free_queue.exit.i110.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i103.i

if.end95:                                         ; preds = %if.end36.i, %if.end28.i.if.end95_crit_edge, %if.end85.if.end95_crit_edge
  %call97 = call zeroext i1 @nvme_change_ctrl_state(ptr noundef %ctrl4.i, i32 noundef 1) #11
  br i1 %call97, label %if.end207, label %if.then100

if.then100:                                       ; preds = %if.end95
  %state = getelementptr inbounds %struct.nvme_rdma_ctrl, ptr %ctrl, i32 0, i32 11, i32 1
  %241 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %241)
  %242 = load i32, ptr %state, align 4
  %243 = add i32 %242, -6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2, i32 %243)
  %244 = icmp ult i32 %243, -2
  br i1 %244, label %land.rhs112, label %if.then100.if.end144_crit_edge

if.then100.if.end144_crit_edge:                   ; preds = %if.then100
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end144

land.rhs112:                                      ; preds = %if.then100
  %.b277 = load i1, ptr @nvme_rdma_setup_ctrl.__already_done, align 1
  br i1 %.b277, label %land.rhs112.if.end144_crit_edge, label %if.then119, !prof !338

land.rhs112.if.end144_crit_edge:                  ; preds = %land.rhs112
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end144

if.then119:                                       ; preds = %land.rhs112
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @nvme_rdma_setup_ctrl.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 1148, i32 noundef 9, ptr noundef null) #11
  br label %if.end144

if.end144:                                        ; preds = %if.then119, %land.rhs112.if.end144_crit_edge, %if.then100.if.end144_crit_edge
  br i1 %new, label %land.rhs161, label %if.end144.if.end199_crit_edge

if.end144.if.end199_crit_edge:                    ; preds = %if.end144
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end199

land.rhs161:                                      ; preds = %if.end144
  %.b275276 = load i1, ptr @nvme_rdma_setup_ctrl.__already_done.54, align 1
  br i1 %.b275276, label %land.rhs161.if.end199_crit_edge, label %if.then172, !prof !338

land.rhs161.if.end199_crit_edge:                  ; preds = %land.rhs161
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end199

if.then172:                                       ; preds = %land.rhs161
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @nvme_rdma_setup_ctrl.__already_done.54, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 1149, i32 noundef 9, ptr noundef null) #11
  br label %if.end199

if.end199:                                        ; preds = %if.then172, %land.rhs161.if.end199_crit_edge, %if.end144.if.end199_crit_edge
  %245 = ptrtoint ptr %queue_count to i32
  call void @__asan_load4_noabort(i32 %245)
  %246 = load i32, ptr %queue_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %246)
  %cmp211 = icmp ugt i32 %246, 1
  br i1 %cmp211, label %if.then213, label %if.end199.destroy_admin_crit_edge

if.end199.destroy_admin_crit_edge:                ; preds = %if.end199
  call void @__sanitizer_cov_trace_pc() #13
  br label %destroy_admin

if.end207:                                        ; preds = %if.end95
  call void @__sanitizer_cov_trace_pc() #13
  call void @nvme_start_ctrl(ptr noundef %ctrl4.i) #11
  br label %cleanup

if.then213:                                       ; preds = %if.end199
  call void @__sanitizer_cov_trace_pc() #13
  call void @nvme_stop_queues(ptr noundef %ctrl4.i) #11
  call void @nvme_sync_io_queues(ptr noundef %ctrl4.i) #11
  call fastcc void @nvme_rdma_stop_io_queues(ptr noundef %ctrl)
  call void @nvme_cancel_tagset(ptr noundef %ctrl4.i) #11
  call fastcc void @nvme_rdma_destroy_io_queues(ptr noundef %ctrl, i1 noundef zeroext %new)
  br label %destroy_admin

destroy_admin:                                    ; preds = %if.then213, %if.end199.destroy_admin_crit_edge, %nvme_rdma_free_queue.exit.i110.i.destroy_admin_crit_edge, %out_free_io_queues.i.destroy_admin_crit_edge, %nvme_rdma_alloc_io_queues.exit.i, %nvme_rdma_configure_io_queues.exit.thread305, %if.then9, %if.then4
  %ret.0 = phi i32 [ -95, %if.then4 ], [ -22, %if.then213 ], [ -22, %if.end199.destroy_admin_crit_edge ], [ -95, %if.then9 ], [ %retval.0.i.ph.i, %nvme_rdma_configure_io_queues.exit.thread305 ], [ %call95.i.i, %nvme_rdma_alloc_io_queues.exit.i ], [ %ret.2.i, %out_free_io_queues.i.destroy_admin_crit_edge ], [ %ret.2.i, %nvme_rdma_free_queue.exit.i110.i.destroy_admin_crit_edge ]
  call void @nvme_stop_admin_queue(ptr noundef %ctrl4.i) #11
  %admin_q = getelementptr inbounds %struct.nvme_rdma_ctrl, ptr %ctrl, i32 0, i32 11, i32 6
  %247 = ptrtoint ptr %admin_q to i32
  call void @__asan_load4_noabort(i32 %247)
  %248 = load ptr, ptr %admin_q, align 8
  call void @blk_sync_queue(ptr noundef %248) #11
  %249 = ptrtoint ptr %ctrl to i32
  call void @__asan_load4_noabort(i32 %249)
  %250 = load ptr, ptr %ctrl, align 8
  %queue_lock.i = getelementptr inbounds %struct.nvme_rdma_queue, ptr %250, i32 0, i32 13
  call void @mutex_lock_nested(ptr noundef %queue_lock.i, i32 noundef 0) #11
  %flags.i = getelementptr inbounds %struct.nvme_rdma_queue, ptr %250, i32 0, i32 7
  %call.i293 = call i32 @_test_and_clear_bit(i32 noundef 1, ptr noundef %flags.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i293)
  %tobool.not.i294 = icmp eq i32 %call.i293, 0
  br i1 %tobool.not.i294, label %destroy_admin.nvme_rdma_stop_queue.exit_crit_edge, label %if.then.i

destroy_admin.nvme_rdma_stop_queue.exit_crit_edge: ; preds = %destroy_admin
  call void @__sanitizer_cov_trace_pc() #13
  br label %nvme_rdma_stop_queue.exit

if.then.i:                                        ; preds = %destroy_admin
  call void @__sanitizer_cov_trace_pc() #13
  %cm_id.i.i295 = getelementptr inbounds %struct.nvme_rdma_queue, ptr %250, i32 0, i32 8
  %251 = ptrtoint ptr %cm_id.i.i295 to i32
  call void @__asan_load4_noabort(i32 %251)
  %252 = load ptr, ptr %cm_id.i.i295, align 4
  %call.i.i296 = call i32 @rdma_disconnect(ptr noundef %252) #11
  %qp.i.i = getelementptr inbounds %struct.nvme_rdma_queue, ptr %250, i32 0, i32 6
  %253 = ptrtoint ptr %qp.i.i to i32
  call void @__asan_load4_noabort(i32 %253)
  %254 = load ptr, ptr %qp.i.i, align 4
  call void @ib_drain_qp(ptr noundef %254) #11
  br label %nvme_rdma_stop_queue.exit

nvme_rdma_stop_queue.exit:                        ; preds = %if.then.i, %destroy_admin.nvme_rdma_stop_queue.exit_crit_edge
  call void @mutex_unlock(ptr noundef %queue_lock.i) #11
  call void @nvme_cancel_admin_tagset(ptr noundef %ctrl4.i) #11
  call fastcc void @nvme_rdma_destroy_admin_queue(ptr noundef %ctrl, i1 noundef zeroext %new)
  br label %cleanup

cleanup:                                          ; preds = %nvme_rdma_stop_queue.exit, %if.end207, %nvme_rdma_configure_admin_queue.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %nvme_rdma_stop_queue.exit ], [ 0, %if.end207 ], [ %error.5.i, %nvme_rdma_configure_admin_queue.exit.cleanup_crit_edge ], [ %call.i, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvme_uninit_ctrl(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @nvmf_ip_options_match(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @nvme_rdma_reconnect_or_remove(ptr noundef %ctrl) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %ctrl1 = getelementptr inbounds %struct.nvme_rdma_ctrl, ptr %ctrl, i32 0, i32 11
  %state = getelementptr inbounds %struct.nvme_rdma_ctrl, ptr %ctrl, i32 0, i32 11, i32 1
  %0 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %state, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i32 %1, label %entry.if.end57_crit_edge [
    i32 3, label %if.end43
    i32 0, label %entry.land.rhs_crit_edge
    i32 1, label %entry.land.rhs_crit_edge69
  ]

entry.land.rhs_crit_edge69:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.rhs

entry.land.rhs_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.rhs

entry.if.end57_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end57

land.rhs:                                         ; preds = %entry.land.rhs_crit_edge, %entry.land.rhs_crit_edge69
  %.b68 = load i1, ptr @nvme_rdma_reconnect_or_remove.__already_done, align 1
  br i1 %.b68, label %land.rhs.if.end57_crit_edge, label %if.then14, !prof !338

land.rhs.if.end57_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end57

if.then14:                                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @nvme_rdma_reconnect_or_remove.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 1075, i32 noundef 9, ptr noundef null) #11
  br label %if.end57

if.end43:                                         ; preds = %entry
  %call = tail call zeroext i1 @nvmf_should_reconnect(ptr noundef %ctrl1) #11
  br i1 %call, label %do.end48, label %if.else

do.end48:                                         ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #13
  %device = getelementptr inbounds %struct.nvme_rdma_ctrl, ptr %ctrl, i32 0, i32 11, i32 17
  %3 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %device, align 8
  %opts = getelementptr inbounds %struct.nvme_rdma_ctrl, ptr %ctrl, i32 0, i32 11, i32 93
  %5 = ptrtoint ptr %opts to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %opts, align 8
  %reconnect_delay = getelementptr inbounds %struct.nvmf_ctrl_options, ptr %6, i32 0, i32 9
  %7 = ptrtoint ptr %reconnect_delay to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %reconnect_delay, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %4, ptr noundef nonnull @.str.25, i32 noundef %8) #15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nvme_wq to i32))
  %9 = load ptr, ptr @nvme_wq, align 4
  %reconnect_work = getelementptr inbounds %struct.nvme_rdma_ctrl, ptr %ctrl, i32 0, i32 4
  %10 = ptrtoint ptr %opts to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %opts, align 8
  %reconnect_delay53 = getelementptr inbounds %struct.nvmf_ctrl_options, ptr %11, i32 0, i32 9
  %12 = ptrtoint ptr %reconnect_delay53 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %reconnect_delay53, align 4
  %mul = mul i32 %13, 100
  %call.i = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %9, ptr noundef %reconnect_work, i32 noundef %mul) #11
  br label %if.end57

if.else:                                          ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #13
  %call56 = tail call i32 @nvme_delete_ctrl(ptr noundef %ctrl1) #11
  br label %if.end57

if.end57:                                         ; preds = %if.else, %do.end48, %if.then14, %land.rhs.if.end57_crit_edge, %entry.if.end57_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @nvmf_should_reconnect(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvme_stop_keep_alive(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @flush_work(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @nvme_rdma_teardown_io_queues(ptr noundef %ctrl, i1 noundef zeroext %remove) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %ctrl1 = getelementptr inbounds %struct.nvme_rdma_ctrl, ptr %ctrl, i32 0, i32 11
  %queue_count = getelementptr inbounds %struct.nvme_rdma_ctrl, ptr %ctrl, i32 0, i32 11, i32 30
  %0 = ptrtoint ptr %queue_count to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %queue_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp = icmp ugt i32 %1, 1
  br i1 %cmp, label %if.then, label %entry.if.end9_crit_edge

entry.if.end9_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end9

if.then:                                          ; preds = %entry
  tail call void @nvme_start_freeze(ptr noundef %ctrl1) #11
  tail call void @nvme_stop_queues(ptr noundef %ctrl1) #11
  tail call void @nvme_sync_io_queues(ptr noundef %ctrl1) #11
  tail call fastcc void @nvme_rdma_stop_io_queues(ptr noundef %ctrl)
  tail call void @nvme_cancel_tagset(ptr noundef %ctrl1) #11
  br i1 %remove, label %if.then6, label %if.then.if.end_crit_edge

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then6:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @nvme_start_queues(ptr noundef %ctrl1) #11
  br label %if.end

if.end:                                           ; preds = %if.then6, %if.then.if.end_crit_edge
  tail call fastcc void @nvme_rdma_destroy_io_queues(ptr noundef %ctrl, i1 noundef zeroext %remove)
  br label %if.end9

if.end9:                                          ; preds = %if.end, %entry.if.end9_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvme_start_queues(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @nvme_rdma_teardown_admin_queue(ptr noundef %ctrl, i1 noundef zeroext %remove) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %ctrl1 = getelementptr inbounds %struct.nvme_rdma_ctrl, ptr %ctrl, i32 0, i32 11
  tail call void @nvme_stop_admin_queue(ptr noundef %ctrl1) #11
  %admin_q = getelementptr inbounds %struct.nvme_rdma_ctrl, ptr %ctrl, i32 0, i32 11, i32 6
  %0 = ptrtoint ptr %admin_q to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %admin_q, align 8
  tail call void @blk_sync_queue(ptr noundef %1) #11
  %2 = ptrtoint ptr %ctrl to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ctrl, align 8
  %queue_lock.i = getelementptr inbounds %struct.nvme_rdma_queue, ptr %3, i32 0, i32 13
  tail call void @mutex_lock_nested(ptr noundef %queue_lock.i, i32 noundef 0) #11
  %flags.i = getelementptr inbounds %struct.nvme_rdma_queue, ptr %3, i32 0, i32 7
  %call.i = tail call i32 @_test_and_clear_bit(i32 noundef 1, ptr noundef %flags.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %entry.nvme_rdma_stop_queue.exit_crit_edge, label %if.then.i

entry.nvme_rdma_stop_queue.exit_crit_edge:        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %nvme_rdma_stop_queue.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %cm_id.i.i = getelementptr inbounds %struct.nvme_rdma_queue, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %cm_id.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %cm_id.i.i, align 4
  %call.i.i = tail call i32 @rdma_disconnect(ptr noundef %5) #11
  %qp.i.i = getelementptr inbounds %struct.nvme_rdma_queue, ptr %3, i32 0, i32 6
  %6 = ptrtoint ptr %qp.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %qp.i.i, align 4
  tail call void @ib_drain_qp(ptr noundef %7) #11
  br label %nvme_rdma_stop_queue.exit

nvme_rdma_stop_queue.exit:                        ; preds = %if.then.i, %entry.nvme_rdma_stop_queue.exit_crit_edge
  tail call void @mutex_unlock(ptr noundef %queue_lock.i) #11
  tail call void @nvme_cancel_admin_tagset(ptr noundef %ctrl1) #11
  br i1 %remove, label %if.then, label %nvme_rdma_stop_queue.exit.if.end_crit_edge

nvme_rdma_stop_queue.exit.if.end_crit_edge:       ; preds = %nvme_rdma_stop_queue.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %nvme_rdma_stop_queue.exit
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @nvme_start_admin_queue(ptr noundef %ctrl1) #11
  br label %if.end

if.end:                                           ; preds = %if.then, %nvme_rdma_stop_queue.exit.if.end_crit_edge
  tail call fastcc void @nvme_rdma_destroy_admin_queue(ptr noundef %ctrl, i1 noundef zeroext %remove)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvme_start_admin_queue(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvme_start_freeze(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvme_stop_queues(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvme_sync_io_queues(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @nvme_rdma_stop_io_queues(ptr nocapture noundef readonly %ctrl) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %queue_count = getelementptr inbounds %struct.nvme_rdma_ctrl, ptr %ctrl, i32 0, i32 11, i32 30
  %0 = ptrtoint ptr %queue_count to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %queue_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp5 = icmp ugt i32 %1, 1
  br i1 %cmp5, label %entry.for.body_crit_edge, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

for.body:                                         ; preds = %nvme_rdma_stop_queue.exit.for.body_crit_edge, %entry.for.body_crit_edge
  %i.06 = phi i32 [ %inc, %nvme_rdma_stop_queue.exit.for.body_crit_edge ], [ 1, %entry.for.body_crit_edge ]
  %2 = ptrtoint ptr %ctrl to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ctrl, align 8
  %queue_lock.i = getelementptr %struct.nvme_rdma_queue, ptr %3, i32 %i.06, i32 13
  tail call void @mutex_lock_nested(ptr noundef %queue_lock.i, i32 noundef 0) #11
  %flags.i = getelementptr %struct.nvme_rdma_queue, ptr %3, i32 %i.06, i32 7
  %call.i = tail call i32 @_test_and_clear_bit(i32 noundef 1, ptr noundef %flags.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %for.body.nvme_rdma_stop_queue.exit_crit_edge, label %if.then.i

for.body.nvme_rdma_stop_queue.exit_crit_edge:     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %nvme_rdma_stop_queue.exit

if.then.i:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  %cm_id.i.i = getelementptr %struct.nvme_rdma_queue, ptr %3, i32 %i.06, i32 8
  %4 = ptrtoint ptr %cm_id.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %cm_id.i.i, align 4
  %call.i.i = tail call i32 @rdma_disconnect(ptr noundef %5) #11
  %qp.i.i = getelementptr %struct.nvme_rdma_queue, ptr %3, i32 %i.06, i32 6
  %6 = ptrtoint ptr %qp.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %qp.i.i, align 4
  tail call void @ib_drain_qp(ptr noundef %7) #11
  br label %nvme_rdma_stop_queue.exit

nvme_rdma_stop_queue.exit:                        ; preds = %if.then.i, %for.body.nvme_rdma_stop_queue.exit_crit_edge
  tail call void @mutex_unlock(ptr noundef %queue_lock.i) #11
  %inc = add nuw i32 %i.06, 1
  %8 = ptrtoint ptr %queue_count to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %queue_count, align 4
  %cmp = icmp ult i32 %inc, %9
  br i1 %cmp, label %nvme_rdma_stop_queue.exit.for.body_crit_edge, label %nvme_rdma_stop_queue.exit.for.end_crit_edge

nvme_rdma_stop_queue.exit.for.end_crit_edge:      ; preds = %nvme_rdma_stop_queue.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

nvme_rdma_stop_queue.exit.for.body_crit_edge:     ; preds = %nvme_rdma_stop_queue.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.end:                                          ; preds = %nvme_rdma_stop_queue.exit.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvme_cancel_tagset(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @nvme_rdma_destroy_io_queues(ptr nocapture noundef readonly %ctrl, i1 noundef zeroext %remove) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  br i1 %remove, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %connect_q = getelementptr inbounds %struct.nvme_rdma_ctrl, ptr %ctrl, i32 0, i32 11, i32 7
  %0 = ptrtoint ptr %connect_q to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %connect_q, align 4
  tail call void @blk_cleanup_queue(ptr noundef %1) #11
  %tagset = getelementptr inbounds %struct.nvme_rdma_ctrl, ptr %ctrl, i32 0, i32 11, i32 12
  %2 = ptrtoint ptr %tagset to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %tagset, align 8
  tail call void @blk_mq_free_tag_set(ptr noundef %3) #11
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %queue_count.i = getelementptr inbounds %struct.nvme_rdma_ctrl, ptr %ctrl, i32 0, i32 11, i32 30
  %4 = ptrtoint ptr %queue_count.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %queue_count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %5)
  %cmp5.i = icmp ugt i32 %5, 1
  br i1 %cmp5.i, label %if.end.for.body.i_crit_edge, label %if.end.nvme_rdma_free_io_queues.exit_crit_edge

if.end.nvme_rdma_free_io_queues.exit_crit_edge:   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %nvme_rdma_free_io_queues.exit

if.end.for.body.i_crit_edge:                      ; preds = %if.end
  br label %for.body.i

for.body.i:                                       ; preds = %nvme_rdma_free_queue.exit.i.for.body.i_crit_edge, %if.end.for.body.i_crit_edge
  %i.06.i = phi i32 [ %inc.i, %nvme_rdma_free_queue.exit.i.for.body.i_crit_edge ], [ 1, %if.end.for.body.i_crit_edge ]
  %6 = ptrtoint ptr %ctrl to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ctrl, align 8
  %flags.i.i = getelementptr %struct.nvme_rdma_queue, ptr %7, i32 %i.06.i, i32 7
  %call.i.i = tail call i32 @_test_and_clear_bit(i32 noundef 0, ptr noundef %flags.i.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %for.body.i.nvme_rdma_free_queue.exit.i_crit_edge, label %if.end.i.i

for.body.i.nvme_rdma_free_queue.exit.i_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %nvme_rdma_free_queue.exit.i

if.end.i.i:                                       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx.i = getelementptr %struct.nvme_rdma_queue, ptr %7, i32 %i.06.i
  %cm_id.i.i = getelementptr %struct.nvme_rdma_queue, ptr %7, i32 %i.06.i, i32 8
  %8 = ptrtoint ptr %cm_id.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %cm_id.i.i, align 4
  tail call void @rdma_destroy_id(ptr noundef %9) #11
  tail call fastcc void @nvme_rdma_destroy_queue_ib(ptr noundef %arrayidx.i) #11
  %queue_lock.i.i = getelementptr %struct.nvme_rdma_queue, ptr %7, i32 %i.06.i, i32 13
  tail call void @mutex_destroy(ptr noundef %queue_lock.i.i) #11
  br label %nvme_rdma_free_queue.exit.i

nvme_rdma_free_queue.exit.i:                      ; preds = %if.end.i.i, %for.body.i.nvme_rdma_free_queue.exit.i_crit_edge
  %inc.i = add nuw i32 %i.06.i, 1
  %10 = ptrtoint ptr %queue_count.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %queue_count.i, align 4
  %cmp.i = icmp ult i32 %inc.i, %11
  br i1 %cmp.i, label %nvme_rdma_free_queue.exit.i.for.body.i_crit_edge, label %nvme_rdma_free_queue.exit.i.nvme_rdma_free_io_queues.exit_crit_edge

nvme_rdma_free_queue.exit.i.nvme_rdma_free_io_queues.exit_crit_edge: ; preds = %nvme_rdma_free_queue.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %nvme_rdma_free_io_queues.exit

nvme_rdma_free_queue.exit.i.for.body.i_crit_edge: ; preds = %nvme_rdma_free_queue.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

nvme_rdma_free_io_queues.exit:                    ; preds = %nvme_rdma_free_queue.exit.i.nvme_rdma_free_io_queues.exit_crit_edge, %if.end.nvme_rdma_free_io_queues.exit_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rdma_disconnect(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ib_drain_qp(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_cleanup_queue(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_mq_free_tag_set(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rdma_destroy_id(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @nvme_rdma_destroy_queue_ib(ptr noundef %queue) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %flags = getelementptr inbounds %struct.nvme_rdma_queue, ptr %queue, i32 0, i32 7
  %call = tail call i32 @_test_and_clear_bit(i32 noundef 2, ptr noundef %flags) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %device = getelementptr inbounds %struct.nvme_rdma_queue, ptr %queue, i32 0, i32 4
  %0 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %pi_support = getelementptr inbounds %struct.nvme_rdma_queue, ptr %queue, i32 0, i32 11
  %4 = ptrtoint ptr %pi_support to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %pi_support, align 4, !range !336
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool2.not = icmp eq i8 %5, 0
  br i1 %tobool2.not, label %if.end.if.end5_crit_edge, label %if.then3

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end5

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %qp = getelementptr inbounds %struct.nvme_rdma_queue, ptr %queue, i32 0, i32 6
  %6 = ptrtoint ptr %qp to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %qp, align 4
  %sig_mrs = getelementptr inbounds %struct.ib_qp, ptr %7, i32 0, i32 7
  tail call void @ib_mr_pool_destroy(ptr noundef %7, ptr noundef %sig_mrs) #11
  br label %if.end5

if.end5:                                          ; preds = %if.then3, %if.end.if.end5_crit_edge
  %qp6 = getelementptr inbounds %struct.nvme_rdma_queue, ptr %queue, i32 0, i32 6
  %8 = ptrtoint ptr %qp6 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %qp6, align 4
  %rdma_mrs = getelementptr inbounds %struct.ib_qp, ptr %9, i32 0, i32 6
  tail call void @ib_mr_pool_destroy(ptr noundef %9, ptr noundef %rdma_mrs) #11
  %10 = ptrtoint ptr %qp6 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %qp6, align 4
  %call.i = tail call i32 @ib_destroy_qp_user(ptr noundef %11, ptr noundef null) #11
  %ctrl.i.i.i = getelementptr inbounds %struct.nvme_rdma_queue, ptr %queue, i32 0, i32 3
  %12 = ptrtoint ptr %ctrl.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ctrl.i.i.i, align 4
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %13, align 8
  %sub.ptr.lhs.cast.i.i.i = ptrtoint ptr %queue to i32
  %sub.ptr.rhs.cast.i.i.i = ptrtoint ptr %15 to i32
  %sub.ptr.sub.i.i.i = sub i32 %sub.ptr.lhs.cast.i.i.i, %sub.ptr.rhs.cast.i.i.i
  %sub.ptr.div.i.i.i = sdiv exact i32 %sub.ptr.sub.i.i.i, 196
  %io_queues.i.i = getelementptr inbounds %struct.nvme_rdma_ctrl, ptr %13, i32 0, i32 13
  %16 = ptrtoint ptr %io_queues.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %io_queues.i.i, align 4
  %arrayidx3.i.i = getelementptr %struct.nvme_rdma_ctrl, ptr %13, i32 0, i32 13, i32 1
  %18 = ptrtoint ptr %arrayidx3.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx3.i.i, align 4
  %add.i.i = add i32 %19, %17
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.ptr.div.i.i.i, i32 %add.i.i)
  %cmp.i.i = icmp ugt i32 %sub.ptr.div.i.i.i, %add.i.i
  %ib_cq.i = getelementptr inbounds %struct.nvme_rdma_queue, ptr %queue, i32 0, i32 5
  %20 = ptrtoint ptr %ib_cq.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %ib_cq.i, align 4
  br i1 %cmp.i.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @ib_free_cq(ptr noundef %21) #11
  br label %nvme_rdma_free_cq.exit

if.else.i:                                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #13
  %cq_size.i = getelementptr inbounds %struct.nvme_rdma_queue, ptr %queue, i32 0, i32 12
  %22 = ptrtoint ptr %cq_size.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %cq_size.i, align 4
  tail call void @ib_cq_pool_put(ptr noundef %21, i32 noundef %23) #11
  br label %nvme_rdma_free_cq.exit

nvme_rdma_free_cq.exit:                           ; preds = %if.else.i, %if.then.i
  %24 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %queue, align 4
  %queue_size = getelementptr inbounds %struct.nvme_rdma_queue, ptr %queue, i32 0, i32 1
  %26 = ptrtoint ptr %queue_size to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %queue_size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %cmp1.not.i = icmp eq i32 %27, 0
  br i1 %cmp1.not.i, label %nvme_rdma_free_cq.exit.nvme_rdma_free_ring.exit_crit_edge, label %nvme_rdma_free_cq.exit.for.body.i_crit_edge

nvme_rdma_free_cq.exit.for.body.i_crit_edge:      ; preds = %nvme_rdma_free_cq.exit
  br label %for.body.i

nvme_rdma_free_cq.exit.nvme_rdma_free_ring.exit_crit_edge: ; preds = %nvme_rdma_free_cq.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %nvme_rdma_free_ring.exit

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %nvme_rdma_free_cq.exit.for.body.i_crit_edge
  %i.02.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %nvme_rdma_free_cq.exit.for.body.i_crit_edge ]
  %dma.i.i = getelementptr %struct.nvme_rdma_qe, ptr %25, i32 %i.02.i, i32 2
  %28 = ptrtoint ptr %dma.i.i to i32
  call void @__asan_load8_noabort(i32 %28)
  %29 = load i64, ptr %dma.i.i, align 8
  %30 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %3, align 8
  %conv.i.i.i = trunc i64 %29 to i32
  tail call void @dma_unmap_page_attrs(ptr noundef %31, i32 noundef %conv.i.i.i, i32 noundef 16, i32 noundef 2, i32 noundef 0) #11
  %data.i.i = getelementptr %struct.nvme_rdma_qe, ptr %25, i32 %i.02.i, i32 1
  %32 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %data.i.i, align 4
  tail call void @kfree(ptr noundef %33) #11
  %inc.i = add nuw i32 %i.02.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %27
  br i1 %exitcond.not.i, label %for.body.i.nvme_rdma_free_ring.exit_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

for.body.i.nvme_rdma_free_ring.exit_crit_edge:    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %nvme_rdma_free_ring.exit

nvme_rdma_free_ring.exit:                         ; preds = %for.body.i.nvme_rdma_free_ring.exit_crit_edge, %nvme_rdma_free_cq.exit.nvme_rdma_free_ring.exit_crit_edge
  tail call void @kfree(ptr noundef %25) #11
  tail call fastcc void @nvme_rdma_dev_put(ptr noundef %1)
  br label %cleanup

cleanup:                                          ; preds = %nvme_rdma_free_ring.exit, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ib_mr_pool_destroy(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @nvme_rdma_free_ring(ptr nocapture noundef readonly %ibdev, ptr noundef %ring, i32 noundef %ib_queue_size) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ib_queue_size)
  %cmp1.not = icmp eq i32 %ib_queue_size, 0
  br i1 %cmp1.not, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %i.02 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %dma.i = getelementptr %struct.nvme_rdma_qe, ptr %ring, i32 %i.02, i32 2
  %0 = ptrtoint ptr %dma.i to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %dma.i, align 8
  %2 = ptrtoint ptr %ibdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ibdev, align 8
  %conv.i.i = trunc i64 %1 to i32
  tail call void @dma_unmap_page_attrs(ptr noundef %3, i32 noundef %conv.i.i, i32 noundef 16, i32 noundef 2, i32 noundef 0) #11
  %data.i = getelementptr %struct.nvme_rdma_qe, ptr %ring, i32 %i.02, i32 1
  %4 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %data.i, align 4
  tail call void @kfree(ptr noundef %5) #11
  %inc = add nuw i32 %i.02, 1
  %exitcond.not = icmp eq i32 %inc, %ib_queue_size
  br i1 %exitcond.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  tail call void @kfree(ptr noundef %ring) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @nvme_rdma_dev_put(ptr noundef %dev) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %ref = getelementptr inbounds %struct.nvme_rdma_device, ptr %dev, i32 0, i32 2
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %ref, i32 noundef 4) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !339
  tail call void @llvm.prefetch.p0(ptr %ref, i32 1, i32 3, i32 1) #11
  %0 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %ref, ptr %ref, i32 1, ptr elementtype(i32) %ref) #11, !srcloc !340
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.kref_put.exit_crit_edge, label %if.then10.i.i.i.i, !prof !338

if.end5.i.i.i.i.kref_put.exit_crit_edge:          ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %kref_put.exit

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @refcount_warn_saturate(ptr noundef %ref, i32 noundef 3) #11
  br label %kref_put.exit

if.then.i:                                        ; preds = %entry
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !341
  tail call void @mutex_lock_nested(ptr noundef nonnull @device_list_mutex, i32 noundef 0) #11
  %entry1.i.i = getelementptr %struct.nvme_rdma_device, ptr %dev, i32 0, i32 3
  %call.i.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %entry1.i.i) #11
  br i1 %call.i.i.i.i, label %if.end.i.i.i.i, label %if.then.i.list_del.exit.i.i_crit_edge

if.then.i.list_del.exit.i.i_crit_edge:            ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_del.exit.i.i

if.end.i.i.i.i:                                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  %prev.i.i.i.i = getelementptr %struct.nvme_rdma_device, ptr %dev, i32 0, i32 3, i32 1
  %1 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %prev.i.i.i.i, align 4
  %3 = ptrtoint ptr %entry1.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %entry1.i.i, align 4
  %prev1.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %prev1.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %2, ptr %prev1.i.i.i.i.i, align 4
  %6 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %6)
  store volatile ptr %4, ptr %2, align 4
  br label %list_del.exit.i.i

list_del.exit.i.i:                                ; preds = %if.end.i.i.i.i, %if.then.i.list_del.exit.i.i_crit_edge
  %7 = ptrtoint ptr %entry1.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr inttoptr (i32 256 to ptr), ptr %entry1.i.i, align 4
  %prev.i.i.i = getelementptr %struct.nvme_rdma_device, ptr %dev, i32 0, i32 3, i32 1
  %8 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i.i, align 4
  tail call void @mutex_unlock(ptr noundef nonnull @device_list_mutex) #11
  %pd.i.i = getelementptr %struct.nvme_rdma_device, ptr %dev, i32 0, i32 1
  %9 = ptrtoint ptr %pd.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %pd.i.i, align 4
  %call.i.i.i = tail call i32 @ib_dealloc_pd_user(ptr noundef %10, ptr noundef null) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %list_del.exit.i.i.nvme_rdma_free_dev.exit.i_crit_edge, label %land.rhs.i.i.i

list_del.exit.i.i.nvme_rdma_free_dev.exit.i_crit_edge: ; preds = %list_del.exit.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %nvme_rdma_free_dev.exit.i

land.rhs.i.i.i:                                   ; preds = %list_del.exit.i.i
  %.b38.i.i.i = load i1, ptr @ib_dealloc_pd.__already_done, align 1
  br i1 %.b38.i.i.i, label %land.rhs.i.i.i.nvme_rdma_free_dev.exit.i_crit_edge, label %if.then.i.i.i, !prof !338

land.rhs.i.i.i.nvme_rdma_free_dev.exit.i_crit_edge: ; preds = %land.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %nvme_rdma_free_dev.exit.i

if.then.i.i.i:                                    ; preds = %land.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @ib_dealloc_pd.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.29, i32 noundef 3498, i32 noundef 9, ptr noundef nonnull @.str.30) #11
  br label %nvme_rdma_free_dev.exit.i

nvme_rdma_free_dev.exit.i:                        ; preds = %if.then.i.i.i, %land.rhs.i.i.i.nvme_rdma_free_dev.exit.i_crit_edge, %list_del.exit.i.i.nvme_rdma_free_dev.exit.i_crit_edge
  tail call void @kfree(ptr noundef %dev) #11
  br label %kref_put.exit

kref_put.exit:                                    ; preds = %nvme_rdma_free_dev.exit.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.kref_put.exit_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ib_destroy_qp_user(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ib_free_cq(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ib_cq_pool_put(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_unmap_page_attrs(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #7

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ib_dealloc_pd_user(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvme_stop_admin_queue(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_sync_queue(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvme_cancel_admin_tagset(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @nvme_rdma_destroy_admin_queue(ptr noundef %ctrl, i1 noundef zeroext %remove) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  br i1 %remove, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %admin_q = getelementptr inbounds %struct.nvme_rdma_ctrl, ptr %ctrl, i32 0, i32 11, i32 6
  %0 = ptrtoint ptr %admin_q to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %admin_q, align 8
  tail call void @blk_cleanup_queue(ptr noundef %1) #11
  %fabrics_q = getelementptr inbounds %struct.nvme_rdma_ctrl, ptr %ctrl, i32 0, i32 11, i32 8
  %2 = ptrtoint ptr %fabrics_q to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %fabrics_q, align 8
  tail call void @blk_cleanup_queue(ptr noundef %3) #11
  %admin_tagset = getelementptr inbounds %struct.nvme_rdma_ctrl, ptr %ctrl, i32 0, i32 11, i32 13
  %4 = ptrtoint ptr %admin_tagset to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %admin_tagset, align 4
  tail call void @blk_mq_free_tag_set(ptr noundef %5) #11
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %data = getelementptr inbounds %struct.nvme_rdma_ctrl, ptr %ctrl, i32 0, i32 3, i32 1
  %6 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %data, align 4
  %tobool4.not = icmp eq ptr %7, null
  br i1 %tobool4.not, label %if.end.if.end10_crit_edge, label %if.then5

if.end.if.end10_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end10

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %async_event_work = getelementptr inbounds %struct.nvme_rdma_ctrl, ptr %ctrl, i32 0, i32 11, i32 66
  %call = tail call zeroext i1 @cancel_work_sync(ptr noundef %async_event_work) #11
  %device = getelementptr inbounds %struct.nvme_rdma_ctrl, ptr %ctrl, i32 0, i32 7
  %8 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %device, align 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %9, align 4
  %dma.i = getelementptr inbounds %struct.nvme_rdma_ctrl, ptr %ctrl, i32 0, i32 3, i32 2
  %12 = ptrtoint ptr %dma.i to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %dma.i, align 8
  %14 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %11, align 8
  %conv.i.i = trunc i64 %13 to i32
  tail call void @dma_unmap_page_attrs(ptr noundef %15, i32 noundef %conv.i.i, i32 noundef 64, i32 noundef 1, i32 noundef 0) #11
  %16 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %data, align 4
  tail call void @kfree(ptr noundef %17) #11
  %18 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr null, ptr %data, align 4
  br label %if.end10

if.end10:                                         ; preds = %if.then5, %if.end.if.end10_crit_edge
  %19 = ptrtoint ptr %ctrl to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %ctrl, align 8
  %flags.i = getelementptr inbounds %struct.nvme_rdma_queue, ptr %20, i32 0, i32 7
  %call.i = tail call i32 @_test_and_clear_bit(i32 noundef 0, ptr noundef %flags.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end10.nvme_rdma_free_queue.exit_crit_edge, label %if.end.i

if.end10.nvme_rdma_free_queue.exit_crit_edge:     ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #13
  br label %nvme_rdma_free_queue.exit

if.end.i:                                         ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #13
  %cm_id.i = getelementptr inbounds %struct.nvme_rdma_queue, ptr %20, i32 0, i32 8
  %21 = ptrtoint ptr %cm_id.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %cm_id.i, align 4
  tail call void @rdma_destroy_id(ptr noundef %22) #11
  tail call fastcc void @nvme_rdma_destroy_queue_ib(ptr noundef %20) #11
  %queue_lock.i = getelementptr inbounds %struct.nvme_rdma_queue, ptr %20, i32 0, i32 13
  tail call void @mutex_destroy(ptr noundef %queue_lock.i) #11
  br label %nvme_rdma_free_queue.exit

nvme_rdma_free_queue.exit:                        ; preds = %if.end.i, %if.end10.nvme_rdma_free_queue.exit_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_work_sync(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvme_stop_ctrl(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_delayed_work_sync(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvme_shutdown_ctrl(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvme_disable_ctrl(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvmf_reg_read32(ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvmf_reg_write32(ptr noundef, i32 noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvmf_reg_read64(ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nvme_rdma_free_ctrl(ptr noundef %nctrl) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %list = getelementptr i8, ptr %nctrl, i32 -460
  %0 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %list, align 4
  %cmp.i.not = icmp eq ptr %1, %list
  br i1 %cmp.i.not, label %entry.free_ctrl_crit_edge, label %if.end

entry.free_ctrl_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %free_ctrl

if.end:                                           ; preds = %entry
  tail call void @mutex_lock_nested(ptr noundef nonnull @nvme_rdma_ctrl_mutex, i32 noundef 0) #11
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %list) #11
  br i1 %call.i.i, label %if.end.i.i, label %if.end.list_del.exit_crit_edge

if.end.list_del.exit_crit_edge:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_del.exit

if.end.i.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %prev.i.i = getelementptr i8, ptr %nctrl, i32 -456
  %2 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %prev.i.i, align 4
  %4 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %list, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %3, ptr %prev1.i.i.i, align 4
  %7 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile ptr %5, ptr %3, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %if.end.list_del.exit_crit_edge
  %8 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr inttoptr (i32 256 to ptr), ptr %list, align 4
  %prev.i = getelementptr i8, ptr %nctrl, i32 -456
  %9 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @mutex_unlock(ptr noundef nonnull @nvme_rdma_ctrl_mutex) #11
  %opts = getelementptr inbounds %struct.nvme_ctrl, ptr %nctrl, i32 0, i32 93
  %10 = ptrtoint ptr %opts to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %opts, align 8
  tail call void @nvmf_free_options(ptr noundef %11) #11
  br label %free_ctrl

free_ctrl:                                        ; preds = %list_del.exit, %entry.free_ctrl_crit_edge
  %add.ptr.i = getelementptr i8, ptr %nctrl, i32 -808
  %12 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %add.ptr.i, align 8
  tail call void @kfree(ptr noundef %13) #11
  tail call void @kfree(ptr noundef %add.ptr.i) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nvme_rdma_submit_async_event(ptr noundef %arg) #3 align 64 {
entry:
  %dummy.i.i = alloca ptr, align 4
  %wr.i = alloca %struct.ib_send_wr, align 8
  %sge = alloca %struct.ib_sge, align 8
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %arg, i32 -808
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i, align 8
  %device = getelementptr inbounds %struct.nvme_rdma_queue, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %device, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %async_event_sqe = getelementptr i8, ptr %arg, i32 -576
  %data = getelementptr i8, ptr %arg, i32 -572
  %6 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %data, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %sge) #11
  %8 = getelementptr inbounds %struct.ib_sge, ptr %sge, i32 0, i32 1
  %9 = getelementptr inbounds %struct.ib_sge, ptr %sge, i32 0, i32 2
  %dma = getelementptr i8, ptr %arg, i32 -568
  %10 = ptrtoint ptr %dma to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %dma, align 8
  %12 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %5, align 8
  %conv.i = trunc i64 %11 to i32
  tail call void @dma_sync_single_for_cpu(ptr noundef %13, i32 noundef %conv.i, i32 noundef 64, i32 noundef 1) #11
  %14 = call ptr @memset(ptr %7, i32 0, i32 64)
  %15 = ptrtoint ptr %7 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 12, ptr %7, align 8
  %command_id = getelementptr inbounds %struct.nvme_common_command, ptr %7, i32 0, i32 2
  %16 = ptrtoint ptr %command_id to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 31, ptr %command_id, align 2
  %flags = getelementptr inbounds %struct.nvme_common_command, ptr %7, i32 0, i32 1
  %17 = ptrtoint ptr %flags to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 64, ptr %flags, align 1
  %dptr.i = getelementptr inbounds %struct.nvme_common_command, ptr %7, i32 0, i32 6
  %type.i = getelementptr inbounds %struct.nvme_keyed_sgl_desc, ptr %dptr.i, i32 0, i32 3
  %18 = call ptr @memset(ptr %dptr.i, i32 0, i32 15)
  %19 = ptrtoint ptr %type.i to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 64, ptr %type.i, align 1
  %20 = ptrtoint ptr %async_event_sqe to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr @nvme_rdma_async_done, ptr %async_event_sqe, align 8
  %21 = ptrtoint ptr %dma to i32
  call void @__asan_load8_noabort(i32 %21)
  %22 = load i64, ptr %dma, align 8
  %23 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %5, align 8
  %conv.i56 = trunc i64 %22 to i32
  tail call void @dma_sync_single_for_device(ptr noundef %24, i32 noundef %conv.i56, i32 noundef 64, i32 noundef 1) #11
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %wr.i) #11
  %25 = call ptr @memset(ptr %wr.i, i32 255, i32 40)
  %26 = ptrtoint ptr %dma to i32
  call void @__asan_load8_noabort(i32 %26)
  %27 = load i64, ptr %dma, align 8
  %28 = ptrtoint ptr %sge to i32
  call void @__asan_store8_noabort(i32 %28)
  store i64 %27, ptr %sge, align 8
  %29 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 64, ptr %8, align 8
  %30 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %device, align 4
  %pd.i = getelementptr inbounds %struct.nvme_rdma_device, ptr %31, i32 0, i32 1
  %32 = ptrtoint ptr %pd.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %pd.i, align 4
  %34 = ptrtoint ptr %33 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %33, align 4
  %36 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %35, ptr %9, align 4
  %37 = ptrtoint ptr %wr.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr null, ptr %wr.i, align 8
  %38 = getelementptr inbounds %struct.ib_send_wr, ptr %wr.i, i32 0, i32 1
  %39 = ptrtoint ptr %38 to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %async_event_sqe, ptr %38, align 8
  %sg_list.i = getelementptr inbounds %struct.ib_send_wr, ptr %wr.i, i32 0, i32 2
  %40 = ptrtoint ptr %sg_list.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %sge, ptr %sg_list.i, align 8
  %num_sge1.i = getelementptr inbounds %struct.ib_send_wr, ptr %wr.i, i32 0, i32 3
  %41 = ptrtoint ptr %num_sge1.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 1, ptr %num_sge1.i, align 4
  %opcode.i = getelementptr inbounds %struct.ib_send_wr, ptr %wr.i, i32 0, i32 4
  %42 = ptrtoint ptr %opcode.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 2, ptr %opcode.i, align 8
  %send_flags.i = getelementptr inbounds %struct.ib_send_wr, ptr %wr.i, i32 0, i32 5
  %43 = ptrtoint ptr %send_flags.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 2, ptr %send_flags.i, align 4
  %qp.i = getelementptr inbounds %struct.nvme_rdma_queue, ptr %1, i32 0, i32 6
  %44 = ptrtoint ptr %qp.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %qp.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %dummy.i.i) #11
  %46 = ptrtoint ptr %dummy.i.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr inttoptr (i32 -1 to ptr), ptr %dummy.i.i, align 4, !annotation !342
  %47 = ptrtoint ptr %45 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %45, align 4
  %post_send.i.i = getelementptr inbounds %struct.ib_device, ptr %48, i32 0, i32 1, i32 6
  %49 = ptrtoint ptr %post_send.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %post_send.i.i, align 4
  %call.i.i = call i32 %50(ptr noundef %45, ptr noundef nonnull %wr.i, ptr noundef nonnull %dummy.i.i) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dummy.i.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool3.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool3.not.i, label %nvme_rdma_post_send.exit.thread, label %land.rhs, !prof !338

nvme_rdma_post_send.exit.thread:                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %wr.i) #11
  br label %if.end34

land.rhs:                                         ; preds = %entry
  %ctrl.i = getelementptr inbounds %struct.nvme_rdma_queue, ptr %1, i32 0, i32 3
  %51 = ptrtoint ptr %ctrl.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %ctrl.i, align 4
  %device8.i = getelementptr inbounds %struct.nvme_rdma_ctrl, ptr %52, i32 0, i32 11, i32 17
  %53 = ptrtoint ptr %device8.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %device8.i, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %54, ptr noundef nonnull @.str.37, ptr noundef nonnull @.str.38, i32 noundef %call.i.i) #15
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %wr.i) #11
  %.b55 = load i1, ptr @nvme_rdma_submit_async_event.__already_done, align 1
  br i1 %.b55, label %land.rhs.if.end34_crit_edge, label %if.then, !prof !338

land.rhs.if.end34_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end34

if.then:                                          ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @nvme_rdma_submit_async_event.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 1735, i32 noundef 9, ptr noundef null) #11
  br label %if.end34

if.end34:                                         ; preds = %if.then, %land.rhs.if.end34_crit_edge, %nvme_rdma_post_send.exit.thread
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %sge) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nvme_rdma_delete_ctrl(ptr noundef %ctrl) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %ctrl, i32 -808
  %err_work.i = getelementptr i8, ptr %ctrl, i32 -620
  %call.i = tail call zeroext i1 @cancel_work_sync(ptr noundef %err_work.i) #11
  %reconnect_work.i = getelementptr i8, ptr %ctrl, i32 -560
  %call1.i = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %reconnect_work.i) #11
  tail call fastcc void @nvme_rdma_teardown_io_queues(ptr noundef %add.ptr.i, i1 noundef zeroext true) #11
  tail call void @nvme_stop_admin_queue(ptr noundef %ctrl) #11
  %call5.i = tail call i32 @nvme_shutdown_ctrl(ptr noundef %ctrl) #11
  tail call fastcc void @nvme_rdma_teardown_admin_queue(ptr noundef %add.ptr.i, i1 noundef zeroext true) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvmf_get_address(ptr noundef, ptr noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvmf_free_options(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nvme_rdma_async_done(ptr nocapture noundef readnone %cq, ptr nocapture noundef readonly %wc) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %status = getelementptr inbounds %struct.ib_wc, ptr %wc, i32 0, i32 1
  %0 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %status, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp.not = icmp eq i32 %1, 0
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %if.then, !prof !338

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call fastcc void @nvme_rdma_wr_error(ptr noundef %wc, ptr noundef nonnull @.str.31)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_sync_single_for_cpu(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #8

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @nvme_rdma_wr_error(ptr nocapture noundef readonly %wc, ptr noundef %op) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %qp = getelementptr inbounds %struct.ib_wc, ptr %wc, i32 0, i32 5
  %0 = ptrtoint ptr %qp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %qp, align 8
  %qp_context = getelementptr inbounds %struct.ib_qp, ptr %1, i32 0, i32 16
  %2 = ptrtoint ptr %qp_context to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %qp_context, align 4
  %ctrl1 = getelementptr inbounds %struct.nvme_rdma_queue, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %ctrl1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ctrl1, align 4
  %state = getelementptr inbounds %struct.nvme_rdma_ctrl, ptr %5, i32 0, i32 11, i32 1
  %6 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %7)
  %cmp = icmp eq i32 %7, 1
  br i1 %cmp, label %do.end, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %device = getelementptr inbounds %struct.nvme_rdma_ctrl, ptr %5, i32 0, i32 11, i32 17
  %8 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %device, align 8
  %10 = ptrtoint ptr %wc to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %wc, align 8
  %status = getelementptr inbounds %struct.ib_wc, ptr %wc, i32 0, i32 1
  %12 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %status, align 8
  %call = tail call ptr @ib_wc_status_msg(i32 noundef %13) #17
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %9, ptr noundef nonnull @.str.32, ptr noundef %op, ptr noundef %11, ptr noundef %call, i32 noundef %13) #15
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %ctrl1.i = getelementptr inbounds %struct.nvme_rdma_ctrl, ptr %5, i32 0, i32 11
  %call.i = tail call zeroext i1 @nvme_change_ctrl_state(ptr noundef %ctrl1.i, i32 noundef 2) #11
  br i1 %call.i, label %do.end.i, label %if.end.nvme_rdma_error_recovery.exit_crit_edge

if.end.nvme_rdma_error_recovery.exit_crit_edge:   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %nvme_rdma_error_recovery.exit

do.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %device.i = getelementptr inbounds %struct.nvme_rdma_ctrl, ptr %5, i32 0, i32 11, i32 17
  %14 = ptrtoint ptr %device.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %device.i, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %15, ptr noundef nonnull @.str.34) #15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nvme_reset_wq to i32))
  %16 = load ptr, ptr @nvme_reset_wq, align 4
  %err_work.i = getelementptr inbounds %struct.nvme_rdma_ctrl, ptr %5, i32 0, i32 2
  %call.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %16, ptr noundef %err_work.i) #11
  br label %nvme_rdma_error_recovery.exit

nvme_rdma_error_recovery.exit:                    ; preds = %do.end.i, %if.end.nvme_rdma_error_recovery.exit_crit_edge
  ret void
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid readnone willreturn
declare dso_local ptr @ib_wc_status_msg(i32 noundef) local_unnamed_addr #9

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @nvme_rdma_error_recovery(ptr noundef %ctrl) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %ctrl1 = getelementptr inbounds %struct.nvme_rdma_ctrl, ptr %ctrl, i32 0, i32 11
  %call = tail call zeroext i1 @nvme_change_ctrl_state(ptr noundef %ctrl1, i32 noundef 2) #11
  br i1 %call, label %do.end, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %device = getelementptr inbounds %struct.nvme_rdma_ctrl, ptr %ctrl, i32 0, i32 11, i32 17
  %0 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %1, ptr noundef nonnull @.str.34) #15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nvme_reset_wq to i32))
  %2 = load ptr, ptr @nvme_reset_wq, align 4
  %err_work = getelementptr inbounds %struct.nvme_rdma_ctrl, ptr %ctrl, i32 0, i32 2
  %call.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %2, ptr noundef %err_work) #11
  br label %return

return:                                           ; preds = %do.end, %entry.return_crit_edge
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_sync_single_for_device(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvme_start_ctrl(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @nvme_rdma_alloc_queue(ptr noundef %ctrl, i32 noundef %idx, i32 noundef %queue_size) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ctrl to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ctrl, align 8
  %arrayidx = getelementptr %struct.nvme_rdma_queue, ptr %1, i32 %idx
  %queue_lock = getelementptr %struct.nvme_rdma_queue, ptr %1, i32 %idx, i32 13
  tail call void @__mutex_init(ptr noundef %queue_lock, ptr noundef nonnull @.str.55, ptr noundef nonnull @nvme_rdma_alloc_queue.__key) #11
  %ctrl1 = getelementptr %struct.nvme_rdma_queue, ptr %1, i32 %idx, i32 3
  %2 = ptrtoint ptr %ctrl1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %ctrl, ptr %ctrl1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %idx)
  %tobool.not = icmp eq i32 %idx, 0
  br i1 %tobool.not, label %entry.if.else_crit_edge, label %land.lhs.true

entry.if.else_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else

land.lhs.true:                                    ; preds = %entry
  %max_integrity_segments = getelementptr inbounds %struct.nvme_rdma_ctrl, ptr %ctrl, i32 0, i32 11, i32 34
  %3 = ptrtoint ptr %max_integrity_segments to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %max_integrity_segments, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool3.not = icmp eq i32 %4, 0
  br i1 %tobool3.not, label %land.lhs.true.if.else_crit_edge, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %entry.if.else_crit_edge
  br label %if.end

if.end:                                           ; preds = %if.else, %land.lhs.true.if.end_crit_edge
  %.sink91 = phi i8 [ 0, %if.else ], [ 1, %land.lhs.true.if.end_crit_edge ]
  %pi_support4 = getelementptr %struct.nvme_rdma_queue, ptr %1, i32 %idx, i32 11
  %5 = ptrtoint ptr %pi_support4 to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %.sink91, ptr %pi_support4, align 4
  %cm_done = getelementptr %struct.nvme_rdma_queue, ptr %1, i32 %idx, i32 10
  %6 = ptrtoint ptr %cm_done to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %cm_done, align 4
  %wait.i = getelementptr %struct.nvme_rdma_queue, ptr %1, i32 %idx, i32 10, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.65, ptr noundef nonnull @init_completion.__key) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %idx)
  %cmp = icmp sgt i32 %idx, 0
  br i1 %cmp, label %if.then5, label %if.end.if.end9_crit_edge

if.end.if.end9_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end9

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %ioccsz = getelementptr inbounds %struct.nvme_rdma_ctrl, ptr %ctrl, i32 0, i32 11, i32 87
  %7 = ptrtoint ptr %ioccsz to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %ioccsz, align 4
  %mul = shl i32 %8, 4
  br label %if.end9

if.end9:                                          ; preds = %if.then5, %if.end.if.end9_crit_edge
  %.sink = phi i32 [ %mul, %if.then5 ], [ 64, %if.end.if.end9_crit_edge ]
  %9 = getelementptr %struct.nvme_rdma_queue, ptr %1, i32 %idx, i32 2
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %.sink, ptr %9, align 4
  %queue_size10 = getelementptr %struct.nvme_rdma_queue, ptr %1, i32 %idx, i32 1
  %11 = ptrtoint ptr %queue_size10 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %queue_size, ptr %queue_size10, align 4
  %call = tail call ptr @__rdma_create_kernel_id(ptr noundef nonnull @init_net, ptr noundef nonnull @nvme_rdma_cm_handler, ptr noundef %arrayidx, i32 noundef 262, i32 noundef 2, ptr noundef nonnull @.str.56) #11
  %cm_id = getelementptr %struct.nvme_rdma_queue, ptr %1, i32 %idx, i32 8
  %12 = ptrtoint ptr %cm_id to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call, ptr %cm_id, align 4
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end16, label %if.end22

do.end16:                                         ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #13
  %device = getelementptr inbounds %struct.nvme_rdma_ctrl, ptr %ctrl, i32 0, i32 11, i32 17
  %13 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %device, align 8
  %15 = ptrtoint ptr %call to i32
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %14, ptr noundef nonnull @.str.57, i32 noundef %15) #15
  %16 = ptrtoint ptr %cm_id to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %cm_id, align 4
  %18 = ptrtoint ptr %17 to i32
  br label %out_destroy_mutex

if.end22:                                         ; preds = %if.end9
  %opts = getelementptr inbounds %struct.nvme_rdma_ctrl, ptr %ctrl, i32 0, i32 11, i32 93
  %19 = ptrtoint ptr %opts to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %opts, align 8
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %20, align 4
  %and = and i32 %22, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool24.not = icmp eq i32 %and, 0
  %src_addr26 = getelementptr inbounds %struct.nvme_rdma_ctrl, ptr %ctrl, i32 0, i32 10
  %spec.select = select i1 %tobool24.not, ptr null, ptr %src_addr26
  %cm_error = getelementptr %struct.nvme_rdma_queue, ptr %1, i32 %idx, i32 9
  %23 = ptrtoint ptr %cm_error to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 -110, ptr %cm_error, align 4
  %addr = getelementptr inbounds %struct.nvme_rdma_ctrl, ptr %ctrl, i32 0, i32 9
  %call29 = tail call i32 @rdma_resolve_addr(ptr noundef %call, ptr noundef %spec.select, ptr noundef %addr, i32 noundef 3000) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29)
  %tobool30.not = icmp eq i32 %call29, 0
  br i1 %tobool30.not, label %if.end37, label %do.end34

do.end34:                                         ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #13
  %device36 = getelementptr inbounds %struct.nvme_rdma_ctrl, ptr %ctrl, i32 0, i32 11, i32 17
  %24 = ptrtoint ptr %device36 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %device36, align 8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %25, ptr noundef nonnull @.str.60, i32 noundef %call29) #15
  br label %out_destroy_cm_id

if.end37:                                         ; preds = %if.end22
  %call1.i = tail call i32 @wait_for_completion_interruptible_timeout(ptr noundef %cm_done, i32 noundef 301) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %cmp.i85 = icmp slt i32 %call1.i, 0
  br i1 %cmp.i85, label %if.end37.do.end43_crit_edge, label %if.end.i

if.end37.do.end43_crit_edge:                      ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end43

if.end.i:                                         ; preds = %if.end37
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %cmp2.i = icmp eq i32 %call1.i, 0
  br i1 %cmp2.i, label %if.end.i.do.end43_crit_edge, label %if.end4.i

if.end.i.do.end43_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end43

if.end4.i:                                        ; preds = %if.end.i
  %26 = ptrtoint ptr %cm_error to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %cm_error, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %cmp5.i = icmp sgt i32 %27, 0
  br i1 %cmp5.i, label %land.rhs.i, label %if.end4.i.nvme_rdma_wait_for_cm.exit_crit_edge

if.end4.i.nvme_rdma_wait_for_cm.exit_crit_edge:   ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %nvme_rdma_wait_for_cm.exit

land.rhs.i:                                       ; preds = %if.end4.i
  %.b49.i = load i1, ptr @nvme_rdma_wait_for_cm.__already_done, align 1
  br i1 %.b49.i, label %land.rhs.i.do.end43_crit_edge, label %if.then12.i, !prof !338

land.rhs.i.do.end43_crit_edge:                    ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end43

if.then12.i:                                      ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @nvme_rdma_wait_for_cm.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 257, i32 noundef 9, ptr noundef null) #11
  %28 = ptrtoint ptr %cm_error to i32
  call void @__asan_load4_noabort(i32 %28)
  %.pr = load i32, ptr %cm_error, align 4
  br label %nvme_rdma_wait_for_cm.exit

nvme_rdma_wait_for_cm.exit:                       ; preds = %if.then12.i, %if.end4.i.nvme_rdma_wait_for_cm.exit_crit_edge
  %29 = phi i32 [ %27, %if.end4.i.nvme_rdma_wait_for_cm.exit_crit_edge ], [ %.pr, %if.then12.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %tobool39.not = icmp eq i32 %29, 0
  br i1 %tobool39.not, label %if.end46, label %nvme_rdma_wait_for_cm.exit.do.end43_crit_edge

nvme_rdma_wait_for_cm.exit.do.end43_crit_edge:    ; preds = %nvme_rdma_wait_for_cm.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end43

do.end43:                                         ; preds = %nvme_rdma_wait_for_cm.exit.do.end43_crit_edge, %land.rhs.i.do.end43_crit_edge, %if.end.i.do.end43_crit_edge, %if.end37.do.end43_crit_edge
  %retval.0.i88 = phi i32 [ %29, %nvme_rdma_wait_for_cm.exit.do.end43_crit_edge ], [ %27, %land.rhs.i.do.end43_crit_edge ], [ -110, %if.end.i.do.end43_crit_edge ], [ %call1.i, %if.end37.do.end43_crit_edge ]
  %device45 = getelementptr inbounds %struct.nvme_rdma_ctrl, ptr %ctrl, i32 0, i32 11, i32 17
  %30 = ptrtoint ptr %device45 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %device45, align 8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %31, ptr noundef nonnull @.str.63, i32 noundef %retval.0.i88) #15
  br label %out_destroy_cm_id

if.end46:                                         ; preds = %nvme_rdma_wait_for_cm.exit
  call void @__sanitizer_cov_trace_pc() #13
  %flags = getelementptr %struct.nvme_rdma_queue, ptr %1, i32 %idx, i32 7
  tail call void @_set_bit(i32 noundef 0, ptr noundef %flags) #11
  br label %cleanup

out_destroy_cm_id:                                ; preds = %do.end43, %do.end34
  %ret.0 = phi i32 [ %call29, %do.end34 ], [ %retval.0.i88, %do.end43 ]
  %32 = ptrtoint ptr %cm_id to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %cm_id, align 4
  tail call void @rdma_destroy_id(ptr noundef %33) #11
  tail call fastcc void @nvme_rdma_destroy_queue_ib(ptr noundef %arrayidx)
  br label %out_destroy_mutex

out_destroy_mutex:                                ; preds = %out_destroy_cm_id, %do.end16
  %ret.1 = phi i32 [ %18, %do.end16 ], [ %ret.0, %out_destroy_cm_id ]
  tail call void @mutex_destroy(ptr noundef %queue_lock) #11
  br label %cleanup

cleanup:                                          ; preds = %out_destroy_mutex, %if.end46
  %retval.0 = phi i32 [ %ret.1, %out_destroy_mutex ], [ 0, %if.end46 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @nvme_rdma_alloc_qe(ptr nocapture noundef readonly %ibdev, ptr nocapture noundef %qe, i32 noundef %capsule_size, i32 noundef %dir) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %capsule_size, i32 noundef 3520) #16
  %data = getelementptr inbounds %struct.nvme_rdma_qe, ptr %qe, i32 0, i32 1
  %0 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %call9.i.i, ptr %data, align 4
  %tobool.not = icmp eq ptr %call9.i.i, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

if.end:                                           ; preds = %entry
  %1 = ptrtoint ptr %ibdev to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %ibdev, align 8
  %call.i.i = tail call zeroext i1 @is_vmalloc_addr(ptr noundef nonnull %call9.i.i) #11
  br i1 %call.i.i, label %land.rhs.i.i, label %if.end39.i.i

land.rhs.i.i:                                     ; preds = %if.end
  %.b1.i.i = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  br i1 %.b1.i.i, label %land.rhs.i.i.ib_dma_map_single.exit_crit_edge, label %if.then.i.i20, !prof !338

land.rhs.i.i.ib_dma_map_single.exit_crit_edge:    ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %ib_dma_map_single.exit

if.then.i.i20:                                    ; preds = %land.rhs.i.i
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %call16.i.i = tail call ptr @dev_driver_string(ptr noundef %2) #11
  %init_name.i.i.i = getelementptr inbounds %struct.device, ptr %2, i32 0, i32 3
  %3 = ptrtoint ptr %init_name.i.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %init_name.i.i.i, align 8
  %tobool.not.i.i.i19 = icmp eq ptr %4, null
  br i1 %tobool.not.i.i.i19, label %if.end.i.i.i21, label %if.then.i.i20.dev_name.exit.i.i_crit_edge

if.then.i.i20.dev_name.exit.i.i_crit_edge:        ; preds = %if.then.i.i20
  call void @__sanitizer_cov_trace_pc() #13
  br label %dev_name.exit.i.i

if.end.i.i.i21:                                   ; preds = %if.then.i.i20
  call void @__sanitizer_cov_trace_pc() #13
  %5 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %2, align 4
  br label %dev_name.exit.i.i

dev_name.exit.i.i:                                ; preds = %if.end.i.i.i21, %if.then.i.i20.dev_name.exit.i.i_crit_edge
  %retval.0.i.i.i = phi ptr [ %6, %if.end.i.i.i21 ], [ %4, %if.then.i.i20.dev_name.exit.i.i_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.126, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.127, ptr noundef %call16.i.i, ptr noundef %retval.0.i.i.i) #11
  br label %ib_dma_map_single.exit

if.end39.i.i:                                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @debug_dma_map_single(ptr noundef %2, ptr noundef nonnull %call9.i.i, i32 noundef %capsule_size) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %7 = load ptr, ptr @mem_map, align 4
  %8 = ptrtoint ptr %call9.i.i to i32
  %sub.i.i = add i32 %8, 1073741824
  %shr.i.i = lshr i32 %sub.i.i, 12
  %add.ptr.i.i = getelementptr %struct.page, ptr %7, i32 %shr.i.i
  %and.i.i = and i32 %8, 3968
  %call41.i.i = tail call i32 @dma_map_page_attrs(ptr noundef %2, ptr noundef %add.ptr.i.i, i32 noundef %and.i.i, i32 noundef %capsule_size, i32 noundef %dir, i32 noundef 0) #11
  br label %ib_dma_map_single.exit

ib_dma_map_single.exit:                           ; preds = %if.end39.i.i, %dev_name.exit.i.i, %land.rhs.i.i.ib_dma_map_single.exit_crit_edge
  %retval.0.i.i = phi i32 [ %call41.i.i, %if.end39.i.i ], [ -1, %dev_name.exit.i.i ], [ -1, %land.rhs.i.i.ib_dma_map_single.exit_crit_edge ]
  %conv2.i = zext i32 %retval.0.i.i to i64
  %dma = getelementptr inbounds %struct.nvme_rdma_qe, ptr %qe, i32 0, i32 2
  %9 = ptrtoint ptr %dma to i32
  call void @__asan_store8_noabort(i32 %9)
  store i64 %conv2.i, ptr %dma, align 8
  %10 = ptrtoint ptr %ibdev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ibdev, align 8
  tail call void @debug_dma_mapping_error(ptr noundef %11, i32 noundef %retval.0.i.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %retval.0.i.i)
  %cmp.i.i22 = icmp eq i32 %retval.0.i.i, -1
  br i1 %cmp.i.i22, label %if.then7, label %ib_dma_map_single.exit.return_crit_edge

ib_dma_map_single.exit.return_crit_edge:          ; preds = %ib_dma_map_single.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

if.then7:                                         ; preds = %ib_dma_map_single.exit
  call void @__sanitizer_cov_trace_pc() #13
  %12 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %data, align 4
  tail call void @kfree(ptr noundef %13) #11
  %14 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr null, ptr %data, align 4
  br label %return

return:                                           ; preds = %if.then7, %ib_dma_map_single.exit.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ -12, %if.then7 ], [ -12, %entry.return_crit_edge ], [ 0, %ib_dma_map_single.exit.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @blk_mq_init_queue(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvme_enable_ctrl(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvme_init_ctrl_finish(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__rdma_create_kernel_id(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nvme_rdma_cm_handler(ptr noundef %cm_id, ptr noundef %ev) #3 align 64 {
entry:
  %rej_data_len.i = alloca i8, align 1
  %dummy.i.i.i = alloca ptr, align 4
  %wr.i.i = alloca %struct.ib_recv_wr, align 8
  %list.i.i = alloca %struct.ib_sge, align 8
  %param.i = alloca %struct.rdma_conn_param, align 4
  %priv.i = alloca %struct.nvme_rdma_cm_req, align 2
  %init_attr.i.i.i = alloca %struct.ib_qp_init_attr, align 4
  %old.i.i.i.i.i.i.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %context = getelementptr inbounds %struct.rdma_cm_id, ptr %cm_id, i32 0, i32 1
  %0 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %context, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @nvme_rdma_cm_handler.__UNIQUE_ID_ddebug590, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@nvme_rdma_cm_handler, %if.then)) #11
          to label %do.end [label %if.then], !srcloc !343

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %ctrl = getelementptr inbounds %struct.nvme_rdma_queue, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %ctrl to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ctrl, align 4
  %device = getelementptr inbounds %struct.nvme_rdma_ctrl, ptr %3, i32 0, i32 11, i32 17
  %4 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %device, align 8
  %6 = ptrtoint ptr %ev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %ev, align 8
  %call4 = tail call ptr @rdma_event_msg(i32 noundef %7) #17
  %status = getelementptr inbounds %struct.rdma_cm_event, ptr %ev, i32 0, i32 1
  %8 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %status, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @nvme_rdma_cm_handler.__UNIQUE_ID_ddebug590, ptr noundef %5, ptr noundef nonnull @.str.67, ptr noundef %call4, i32 noundef %7, i32 noundef %9, ptr noundef %cm_id) #11
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %10 = ptrtoint ptr %ev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %ev, align 8
  %12 = zext i32 %11 to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.146)
  switch i32 %11, label %do.end59 [
    i32 0, label %sw.bb
    i32 2, label %sw.bb8
    i32 9, label %sw.bb10
    i32 8, label %sw.bb13
    i32 3, label %do.end.do.body16_crit_edge
    i32 6, label %do.end.do.body16_crit_edge148
    i32 7, label %do.end.do.body16_crit_edge149
    i32 1, label %do.end.do.body16_crit_edge150
    i32 10, label %do.end.do.body37_crit_edge
    i32 14, label %do.end.do.body37_crit_edge151
    i32 15, label %do.end.do.body37_crit_edge152
    i32 11, label %do.end.cleanup_crit_edge
  ]

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.end.do.body37_crit_edge152:                    ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body37

do.end.do.body37_crit_edge151:                    ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body37

do.end.do.body37_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body37

do.end.do.body16_crit_edge150:                    ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body16

do.end.do.body16_crit_edge149:                    ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body16

do.end.do.body16_crit_edge148:                    ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body16

do.end.do.body16_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body16

sw.bb:                                            ; preds = %do.end
  %ctrl1.i = getelementptr inbounds %struct.nvme_rdma_queue, ptr %1, i32 0, i32 3
  %13 = ptrtoint ptr %ctrl1.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %ctrl1.i, align 4
  %cm_id.i.i = getelementptr inbounds %struct.nvme_rdma_queue, ptr %1, i32 0, i32 8
  %15 = ptrtoint ptr %cm_id.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %cm_id.i.i, align 4
  tail call void @mutex_lock_nested(ptr noundef nonnull @device_list_mutex, i32 noundef 0) #11
  %.pn54.i.i.i = load ptr, ptr @device_list, align 4
  %cmp.not56.i.i.i = icmp eq ptr %.pn54.i.i.i, @device_list
  br i1 %cmp.not56.i.i.i, label %sw.bb.for.end.i.i.i_crit_edge, label %sw.bb.for.body.i.i.i_crit_edge

sw.bb.for.body.i.i.i_crit_edge:                   ; preds = %sw.bb
  br label %for.body.i.i.i

sw.bb.for.end.i.i.i_crit_edge:                    ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end.i.i.i

for.body.i.i.i:                                   ; preds = %for.inc.i.i.i.for.body.i.i.i_crit_edge, %sw.bb.for.body.i.i.i_crit_edge
  %.pn57.i.i.i = phi ptr [ %.pn.i.i.i, %for.inc.i.i.i.for.body.i.i.i_crit_edge ], [ %.pn54.i.i.i, %sw.bb.for.body.i.i.i_crit_edge ]
  %ndev.058.i.i.i = getelementptr i8, ptr %.pn57.i.i.i, i32 -12
  %17 = ptrtoint ptr %ndev.058.i.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %ndev.058.i.i.i, align 4
  %node_guid.i.i.i = getelementptr inbounds %struct.ib_device, ptr %18, i32 0, i32 17
  %19 = ptrtoint ptr %node_guid.i.i.i to i32
  call void @__asan_load8_noabort(i32 %19)
  %20 = load i64, ptr %node_guid.i.i.i, align 8
  %21 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %16, align 4
  %node_guid2.i.i.i = getelementptr inbounds %struct.ib_device, ptr %22, i32 0, i32 17
  %23 = ptrtoint ptr %node_guid2.i.i.i to i32
  call void @__asan_load8_noabort(i32 %23)
  %24 = load i64, ptr %node_guid2.i.i.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %20, i64 %24)
  %cmp3.i.i.i = icmp eq i64 %20, %24
  br i1 %cmp3.i.i.i, label %land.lhs.true.i.i.i, label %for.body.i.i.i.for.inc.i.i.i_crit_edge

for.body.i.i.i.for.inc.i.i.i_crit_edge:           ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i.i.i

land.lhs.true.i.i.i:                              ; preds = %for.body.i.i.i
  %ref.i.i.i.i = getelementptr i8, ptr %.pn57.i.i.i, i32 -4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %old.i.i.i.i.i.i.i.i) #11
  %call.i.i.i.i.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %ref.i.i.i.i, i32 noundef 4) #11
  %25 = ptrtoint ptr %ref.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load volatile i32, ptr %ref.i.i.i.i, align 4
  br label %do.body.i.i.i.i.i.i.i.i

do.body.i.i.i.i.i.i.i.i:                          ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i.i.i_crit_edge, %land.lhs.true.i.i.i
  %27 = phi i32 [ %26, %land.lhs.true.i.i.i ], [ %asmresult3.i.i.i.i.i.i.i.i.i.i.i, %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i.i.i_crit_edge ]
  %28 = ptrtoint ptr %old.i.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %27, ptr %old.i.i.i.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %tobool.not.i.i.i.i.i.i.i.i = icmp eq i32 %27, 0
  br i1 %tobool.not.i.i.i.i.i.i.i.i, label %do.body.i.i.i.i.i.i.i.i.if.end4.i.i.i.i.i.i.i.i_crit_edge, label %do.cond.i.i.i.i.i.i.i.i

do.body.i.i.i.i.i.i.i.i.if.end4.i.i.i.i.i.i.i.i_crit_edge: ; preds = %do.body.i.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end4.i.i.i.i.i.i.i.i

do.cond.i.i.i.i.i.i.i.i:                          ; preds = %do.body.i.i.i.i.i.i.i.i
  %add.i.i.i.i.i.i.i.i = add i32 %27, 1
  %call.i.i.i.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %ref.i.i.i.i, i32 noundef 4) #11
  %call.i3.i.i.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %old.i.i.i.i.i.i.i.i, i32 noundef 4) #11
  %29 = ptrtoint ptr %old.i.i.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %old.i.i.i.i.i.i.i.i, align 4
  call void @llvm.prefetch.p0(ptr %ref.i.i.i.i, i32 1, i32 3, i32 1) #11
  br label %do.body.i.i.i.i.i.i.i.i.i.i.i

do.body.i.i.i.i.i.i.i.i.i.i.i:                    ; preds = %do.body.i.i.i.i.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i.i.i.i.i.i_crit_edge, %do.cond.i.i.i.i.i.i.i.i
  %31 = call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %ref.i.i.i.i, ptr %ref.i.i.i.i, i32 %30, i32 %add.i.i.i.i.i.i.i.i, ptr elementtype(i32) %ref.i.i.i.i) #11, !srcloc !344
  %asmresult.i.i.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32 } %31, 0
  %tobool.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i.i.i.i.i.i.i.i, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i.i.i.i, label %do.body.i.i.i.i.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i.i.i.i.i.i_crit_edge

do.body.i.i.i.i.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i.i.i.i.i.i_crit_edge: ; preds = %do.body.i.i.i.i.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body.i.i.i.i.i.i.i.i.i.i.i

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %do.body.i.i.i.i.i.i.i.i.i.i.i
  %asmresult3.i.i.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32 } %31, 1
  %cmp.not.i.i.i.i.i.i.i.i.i.i = icmp eq i32 %asmresult3.i.i.i.i.i.i.i.i.i.i.i, %30
  br i1 %cmp.not.i.i.i.i.i.i.i.i.i.i, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i.i.i.i.if.end4.i.i.i.i.i.i.i.i_crit_edge, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i.i.i_crit_edge, !prof !338

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i.i.i_crit_edge: ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body.i.i.i.i.i.i.i.i

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i.i.i.i.if.end4.i.i.i.i.i.i.i.i_crit_edge: ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end4.i.i.i.i.i.i.i.i

if.end4.i.i.i.i.i.i.i.i:                          ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i.i.i.i.if.end4.i.i.i.i.i.i.i.i_crit_edge, %do.body.i.i.i.i.i.i.i.i.if.end4.i.i.i.i.i.i.i.i_crit_edge
  %32 = ptrtoint ptr %old.i.i.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %old.i.i.i.i.i.i.i.i, align 4
  %add5.i.i.i.i.i.i.i.i = add i32 %33, 1
  %34 = or i32 %add5.i.i.i.i.i.i.i.i, %33
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %34)
  %.not.i.i.i.i.i.i.i.i = icmp sgt i32 %34, -1
  br i1 %.not.i.i.i.i.i.i.i.i, label %if.end4.i.i.i.i.i.i.i.i.nvme_rdma_dev_get.exit.i.i.i_crit_edge, label %if.then10.i.i.i.i.i.i.i.i, !prof !338

if.end4.i.i.i.i.i.i.i.i.nvme_rdma_dev_get.exit.i.i.i_crit_edge: ; preds = %if.end4.i.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %nvme_rdma_dev_get.exit.i.i.i

if.then10.i.i.i.i.i.i.i.i:                        ; preds = %if.end4.i.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @refcount_warn_saturate(ptr noundef %ref.i.i.i.i, i32 noundef 0) #11
  %35 = ptrtoint ptr %old.i.i.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %.pr.i.i.i = load i32, ptr %old.i.i.i.i.i.i.i.i, align 4
  br label %nvme_rdma_dev_get.exit.i.i.i

nvme_rdma_dev_get.exit.i.i.i:                     ; preds = %if.then10.i.i.i.i.i.i.i.i, %if.end4.i.i.i.i.i.i.i.i.nvme_rdma_dev_get.exit.i.i.i_crit_edge
  %36 = phi i32 [ %33, %if.end4.i.i.i.i.i.i.i.i.nvme_rdma_dev_get.exit.i.i.i_crit_edge ], [ %.pr.i.i.i, %if.then10.i.i.i.i.i.i.i.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %tobool12.i.i.i.i.i.not.i.i.i = icmp eq i32 %36, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %old.i.i.i.i.i.i.i.i) #11
  br i1 %tobool12.i.i.i.i.i.not.i.i.i, label %nvme_rdma_dev_get.exit.i.i.i.for.inc.i.i.i_crit_edge, label %nvme_rdma_find_get_device.exit.i.i

nvme_rdma_dev_get.exit.i.i.i.for.inc.i.i.i_crit_edge: ; preds = %nvme_rdma_dev_get.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i.i.i

for.inc.i.i.i:                                    ; preds = %nvme_rdma_dev_get.exit.i.i.i.for.inc.i.i.i_crit_edge, %for.body.i.i.i.for.inc.i.i.i_crit_edge
  %37 = ptrtoint ptr %.pn57.i.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %.pn.i.i.i = load ptr, ptr %.pn57.i.i.i, align 4
  %cmp.not.i.i.i = icmp eq ptr %.pn.i.i.i, @device_list
  br i1 %cmp.not.i.i.i, label %for.inc.i.i.i.for.end.i.i.i_crit_edge, label %for.inc.i.i.i.for.body.i.i.i_crit_edge

for.inc.i.i.i.for.body.i.i.i_crit_edge:           ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i.i.i

for.inc.i.i.i.for.end.i.i.i_crit_edge:            ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end.i.i.i

for.end.i.i.i:                                    ; preds = %for.inc.i.i.i.for.end.i.i.i_crit_edge, %sw.bb.for.end.i.i.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %38 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %38, i32 noundef 3520, i32 noundef 24) #14
  %tobool9.not.i.i.i = icmp eq ptr %call7.i.i.i.i.i, null
  br i1 %tobool9.not.i.i.i, label %for.end.i.i.i.nvme_rdma_find_get_device.exit.thread.i.i_crit_edge, label %if.end11.i.i.i

for.end.i.i.i.nvme_rdma_find_get_device.exit.thread.i.i_crit_edge: ; preds = %for.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %nvme_rdma_find_get_device.exit.thread.i.i

if.end11.i.i.i:                                   ; preds = %for.end.i.i.i
  %39 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %16, align 4
  %41 = ptrtoint ptr %call7.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %40, ptr %call7.i.i.i.i.i, align 8
  %ref.i.i.i = getelementptr inbounds %struct.nvme_rdma_device, ptr %call7.i.i.i.i.i, i32 0, i32 2
  %call.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %ref.i.i.i, i32 noundef 4) #11
  %42 = ptrtoint ptr %ref.i.i.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store volatile i32 1, ptr %ref.i.i.i, align 8
  %43 = ptrtoint ptr %call7.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %call7.i.i.i.i.i, align 8
  %45 = load i8, ptr @register_always, align 1, !range !336
  %46 = xor i8 %45, 1
  %47 = zext i8 %46 to i32
  %call16.i.i.i = call ptr @__ib_alloc_pd(ptr noundef %44, i32 noundef %47, ptr noundef nonnull @.str.56) #11
  %pd.i.i.i = getelementptr inbounds %struct.nvme_rdma_device, ptr %call7.i.i.i.i.i, i32 0, i32 1
  %48 = ptrtoint ptr %pd.i.i.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %call16.i.i.i, ptr %pd.i.i.i, align 4
  %cmp.i.i.i.i = icmp ugt ptr %call16.i.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i.i.i, label %if.end11.i.i.i.out_free_dev.i.i.i_crit_edge, label %if.end20.i.i.i

if.end11.i.i.i.out_free_dev.i.i.i_crit_edge:      ; preds = %if.end11.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %out_free_dev.i.i.i

if.end20.i.i.i:                                   ; preds = %if.end11.i.i.i
  %49 = ptrtoint ptr %call7.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %call7.i.i.i.i.i, align 8
  %device_cap_flags.i.i.i = getelementptr inbounds %struct.ib_device, ptr %50, i32 0, i32 22, i32 9
  %51 = ptrtoint ptr %device_cap_flags.i.i.i to i32
  call void @__asan_load8_noabort(i32 %51)
  %52 = load i64, ptr %device_cap_flags.i.i.i, align 8
  %and.i.i.i = and i64 %52, 2097152
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i.i.i)
  %tobool22.not.i.i.i = icmp eq i64 %and.i.i.i, 0
  br i1 %tobool22.not.i.i.i, label %do.end.i.i.i, label %if.end25.i.i.i

do.end.i.i.i:                                     ; preds = %if.end20.i.i.i
  %53 = getelementptr inbounds %struct.ib_device, ptr %50, i32 0, i32 13
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %53, ptr noundef nonnull @.str.81) #15
  %54 = ptrtoint ptr %pd.i.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %pd.i.i.i, align 4
  %call.i.i = call i32 @ib_dealloc_pd_user(ptr noundef %55, ptr noundef null) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i23.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i23.i, label %do.end.i.i.i.out_free_dev.i.i.i_crit_edge, label %land.rhs.i.i

do.end.i.i.i.out_free_dev.i.i.i_crit_edge:        ; preds = %do.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %out_free_dev.i.i.i

land.rhs.i.i:                                     ; preds = %do.end.i.i.i
  %.b38.i.i = load i1, ptr @ib_dealloc_pd.__already_done, align 1
  br i1 %.b38.i.i, label %land.rhs.i.i.out_free_dev.i.i.i_crit_edge, label %if.then.i.i, !prof !338

land.rhs.i.i.out_free_dev.i.i.i_crit_edge:        ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %out_free_dev.i.i.i

if.then.i.i:                                      ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @ib_dealloc_pd.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.29, i32 noundef 3498, i32 noundef 9, ptr noundef nonnull @.str.30) #11
  br label %out_free_dev.i.i.i

if.end25.i.i.i:                                   ; preds = %if.end20.i.i.i
  %max_send_sge.i.i.i = getelementptr inbounds %struct.ib_device, ptr %50, i32 0, i32 22, i32 10
  %56 = ptrtoint ptr %max_send_sge.i.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %max_send_sge.i.i.i, align 8
  %sub.i.i.i = add i32 %57, -1
  %58 = call i32 @llvm.smin.i32(i32 %sub.i.i.i, i32 4) #11
  %num_inline_segments.i.i.i = getelementptr inbounds %struct.nvme_rdma_device, ptr %call7.i.i.i.i.i, i32 0, i32 4
  %59 = ptrtoint ptr %num_inline_segments.i.i.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %58, ptr %num_inline_segments.i.i.i, align 4
  %entry31.i.i.i = getelementptr inbounds %struct.nvme_rdma_device, ptr %call7.i.i.i.i.i, i32 0, i32 3
  %60 = load ptr, ptr @device_list, align 4
  %call.i.i.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %entry31.i.i.i, ptr noundef nonnull @device_list, ptr noundef %60) #11
  br i1 %call.i.i.i.i.i, label %if.end.i.i.i.i.i, label %if.end25.i.i.i.nvme_rdma_find_get_device.exit.thread136.i.i_crit_edge

if.end25.i.i.i.nvme_rdma_find_get_device.exit.thread136.i.i_crit_edge: ; preds = %if.end25.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %nvme_rdma_find_get_device.exit.thread136.i.i

if.end.i.i.i.i.i:                                 ; preds = %if.end25.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %prev1.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %60, i32 0, i32 1
  %61 = ptrtoint ptr %prev1.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr %entry31.i.i.i, ptr %prev1.i.i.i.i.i, align 4
  %62 = ptrtoint ptr %entry31.i.i.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr %60, ptr %entry31.i.i.i, align 4
  %prev3.i.i.i.i.i = getelementptr inbounds %struct.nvme_rdma_device, ptr %call7.i.i.i.i.i, i32 0, i32 3, i32 1
  %63 = ptrtoint ptr %prev3.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr @device_list, ptr %prev3.i.i.i.i.i, align 8
  store volatile ptr %entry31.i.i.i, ptr @device_list, align 4
  br label %nvme_rdma_find_get_device.exit.thread136.i.i

out_free_dev.i.i.i:                               ; preds = %if.then.i.i, %land.rhs.i.i.out_free_dev.i.i.i_crit_edge, %do.end.i.i.i.out_free_dev.i.i.i_crit_edge, %if.end11.i.i.i.out_free_dev.i.i.i_crit_edge
  call void @kfree(ptr noundef nonnull %call7.i.i.i.i.i) #11
  br label %nvme_rdma_find_get_device.exit.thread.i.i

nvme_rdma_find_get_device.exit.thread.i.i:        ; preds = %out_free_dev.i.i.i, %for.end.i.i.i.nvme_rdma_find_get_device.exit.thread.i.i_crit_edge
  call void @mutex_unlock(ptr noundef nonnull @device_list_mutex) #11
  %device133.i.i = getelementptr inbounds %struct.nvme_rdma_queue, ptr %1, i32 0, i32 4
  %64 = ptrtoint ptr %device133.i.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr null, ptr %device133.i.i, align 4
  br label %nvme_rdma_create_queue_ib.exit.thread26.i

nvme_rdma_find_get_device.exit.thread136.i.i:     ; preds = %if.end.i.i.i.i.i, %if.end25.i.i.i.nvme_rdma_find_get_device.exit.thread136.i.i_crit_edge
  call void @mutex_unlock(ptr noundef nonnull @device_list_mutex) #11
  %device138.i.i = getelementptr inbounds %struct.nvme_rdma_queue, ptr %1, i32 0, i32 4
  %65 = ptrtoint ptr %device138.i.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr %call7.i.i.i.i.i, ptr %device138.i.i, align 4
  br label %if.end.i.i

nvme_rdma_find_get_device.exit.i.i:               ; preds = %nvme_rdma_dev_get.exit.i.i.i
  %ndev.058.i.i.i.le = getelementptr i8, ptr %.pn57.i.i.i, i32 -12
  call void @mutex_unlock(ptr noundef nonnull @device_list_mutex) #11
  %device.i.i = getelementptr inbounds %struct.nvme_rdma_queue, ptr %1, i32 0, i32 4
  %66 = ptrtoint ptr %device.i.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr %ndev.058.i.i.i.le, ptr %device.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %ndev.058.i.i.i.le, null
  br i1 %tobool.not.i.i, label %nvme_rdma_find_get_device.exit.i.i.nvme_rdma_create_queue_ib.exit.thread26.i_crit_edge, label %nvme_rdma_find_get_device.exit.i.i.if.end.i.i_crit_edge

nvme_rdma_find_get_device.exit.i.i.if.end.i.i_crit_edge: ; preds = %nvme_rdma_find_get_device.exit.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i.i

nvme_rdma_find_get_device.exit.i.i.nvme_rdma_create_queue_ib.exit.thread26.i_crit_edge: ; preds = %nvme_rdma_find_get_device.exit.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %nvme_rdma_create_queue_ib.exit.thread26.i

nvme_rdma_create_queue_ib.exit.thread26.i:        ; preds = %nvme_rdma_find_get_device.exit.i.i.nvme_rdma_create_queue_ib.exit.thread26.i_crit_edge, %nvme_rdma_find_get_device.exit.thread.i.i
  %67 = ptrtoint ptr %cm_id.i.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %cm_id.i.i, align 4
  %69 = ptrtoint ptr %68 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %68, align 4
  %parent.i.i = getelementptr inbounds %struct.ib_device, ptr %70, i32 0, i32 13, i32 0, i32 0, i32 1
  %71 = ptrtoint ptr %parent.i.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %parent.i.i, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %72, ptr noundef nonnull @.str.73) #15
  br label %if.then66

if.end.i.i:                                       ; preds = %nvme_rdma_find_get_device.exit.i.i.if.end.i.i_crit_edge, %nvme_rdma_find_get_device.exit.thread136.i.i
  %device141.i.i = phi ptr [ %device138.i.i, %nvme_rdma_find_get_device.exit.thread136.i.i ], [ %device.i.i, %nvme_rdma_find_get_device.exit.i.i.if.end.i.i_crit_edge ]
  %retval.0.i140.i.i = phi ptr [ %call7.i.i.i.i.i, %nvme_rdma_find_get_device.exit.thread136.i.i ], [ %ndev.058.i.i.i.le, %nvme_rdma_find_get_device.exit.i.i.if.end.i.i_crit_edge ]
  %73 = ptrtoint ptr %retval.0.i140.i.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %retval.0.i140.i.i, align 4
  %queue_size.i.i = getelementptr inbounds %struct.nvme_rdma_queue, ptr %1, i32 0, i32 1
  %75 = ptrtoint ptr %queue_size.i.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %queue_size.i.i, align 4
  %mul.i.i = shl i32 %76, 2
  %add.i.i = or i32 %mul.i.i, 1
  %cq_size.i.i = getelementptr inbounds %struct.nvme_rdma_queue, ptr %1, i32 0, i32 12
  %77 = ptrtoint ptr %cq_size.i.i to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 %add.i.i, ptr %cq_size.i.i, align 4
  %78 = ptrtoint ptr %ctrl1.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %ctrl1.i, align 4
  %80 = ptrtoint ptr %79 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %79, align 8
  %sub.ptr.lhs.cast.i.i.i.i = ptrtoint ptr %1 to i32
  %sub.ptr.rhs.cast.i.i.i.i = ptrtoint ptr %81 to i32
  %sub.ptr.sub.i.i.i.i = sub i32 %sub.ptr.lhs.cast.i.i.i.i, %sub.ptr.rhs.cast.i.i.i.i
  %sub.ptr.div.i.i.i.i = sdiv exact i32 %sub.ptr.sub.i.i.i.i, 196
  %82 = icmp eq ptr %81, %1
  %sub.i107.i.i = add nsw i32 %sub.ptr.div.i.i.i.i, -1
  %cond.i.i.i = select i1 %82, i32 0, i32 %sub.i107.i.i
  %num_comp_vectors.i.i.i = getelementptr inbounds %struct.ib_device, ptr %74, i32 0, i32 12
  %83 = ptrtoint ptr %num_comp_vectors.i.i.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %num_comp_vectors.i.i.i, align 4
  %rem.i.i.i = srem i32 %cond.i.i.i, %84
  %io_queues.i.i.i.i = getelementptr inbounds %struct.nvme_rdma_ctrl, ptr %79, i32 0, i32 13
  %85 = ptrtoint ptr %io_queues.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %io_queues.i.i.i.i, align 4
  %arrayidx3.i.i.i.i = getelementptr %struct.nvme_rdma_ctrl, ptr %79, i32 0, i32 13, i32 1
  %87 = ptrtoint ptr %arrayidx3.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %arrayidx3.i.i.i.i, align 4
  %add.i.i.i.i = add i32 %88, %86
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.ptr.div.i.i.i.i, i32 %add.i.i.i.i)
  %cmp.i.i108.i.i = icmp ugt i32 %sub.ptr.div.i.i.i.i, %add.i.i.i.i
  br i1 %cmp.i.i108.i.i, label %if.then.i.i.i, label %if.else.i.i.i

if.then.i.i.i:                                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %call.i.i.i.i = call ptr @__ib_alloc_cq(ptr noundef %74, ptr noundef %1, i32 noundef %add.i.i, i32 noundef %rem.i.i.i, i32 noundef 3, ptr noundef nonnull @.str.56) #11
  br label %nvme_rdma_create_cq.exit.i.i

if.else.i.i.i:                                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %call4.i.i.i = call ptr @ib_cq_pool_get(ptr noundef %74, i32 noundef %add.i.i, i32 noundef %rem.i.i.i, i32 noundef 0) #11
  br label %nvme_rdma_create_cq.exit.i.i

nvme_rdma_create_cq.exit.i.i:                     ; preds = %if.else.i.i.i, %if.then.i.i.i
  %call4.sink.i.i.i = phi ptr [ %call.i.i.i.i, %if.then.i.i.i ], [ %call4.i.i.i, %if.else.i.i.i ]
  %89 = getelementptr inbounds %struct.nvme_rdma_queue, ptr %1, i32 0, i32 5
  %90 = ptrtoint ptr %89 to i32
  call void @__asan_store4_noabort(i32 %90)
  store ptr %call4.sink.i.i.i, ptr %89, align 4
  %cmp.i29.i.not.i.i = icmp ugt ptr %call4.sink.i.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i29.i.not.i.i, label %nvme_rdma_create_queue_ib.exit.i, label %if.end8.i.i

if.end8.i.i:                                      ; preds = %nvme_rdma_create_cq.exit.i.i
  %91 = ptrtoint ptr %device141.i.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %device141.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %init_attr.i.i.i) #11
  %93 = getelementptr inbounds i8, ptr %init_attr.i.i.i, i32 4
  %94 = call ptr @memset(ptr %93, i32 0, i32 68)
  %95 = ptrtoint ptr %init_attr.i.i.i to i32
  call void @__asan_store4_noabort(i32 %95)
  store ptr @nvme_rdma_qp_event, ptr %init_attr.i.i.i, align 4
  %96 = ptrtoint ptr %queue_size.i.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %queue_size.i.i, align 4
  %mul.i.i.i = mul i32 %97, 3
  %add.i.i.i = add i32 %mul.i.i.i, 1
  %cap.i.i.i = getelementptr inbounds %struct.ib_qp_init_attr, ptr %init_attr.i.i.i, i32 0, i32 6
  %98 = ptrtoint ptr %cap.i.i.i to i32
  call void @__asan_store4_noabort(i32 %98)
  store i32 %add.i.i.i, ptr %cap.i.i.i, align 4
  %add2.i.i.i = add i32 %97, 1
  %max_recv_wr.i.i.i = getelementptr inbounds %struct.ib_qp_init_attr, ptr %init_attr.i.i.i, i32 0, i32 6, i32 1
  %99 = ptrtoint ptr %max_recv_wr.i.i.i to i32
  call void @__asan_store4_noabort(i32 %99)
  store i32 %add2.i.i.i, ptr %max_recv_wr.i.i.i, align 4
  %max_recv_sge.i.i.i = getelementptr inbounds %struct.ib_qp_init_attr, ptr %init_attr.i.i.i, i32 0, i32 6, i32 3
  %100 = ptrtoint ptr %max_recv_sge.i.i.i to i32
  call void @__asan_store4_noabort(i32 %100)
  store i32 1, ptr %max_recv_sge.i.i.i, align 4
  %num_inline_segments.i109.i.i = getelementptr inbounds %struct.nvme_rdma_device, ptr %92, i32 0, i32 4
  %101 = ptrtoint ptr %num_inline_segments.i109.i.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %num_inline_segments.i109.i.i, align 4
  %add5.i.i.i = add i32 %102, 1
  %max_send_sge.i110.i.i = getelementptr inbounds %struct.ib_qp_init_attr, ptr %init_attr.i.i.i, i32 0, i32 6, i32 2
  %103 = ptrtoint ptr %max_send_sge.i110.i.i to i32
  call void @__asan_store4_noabort(i32 %103)
  store i32 %add5.i.i.i, ptr %max_send_sge.i110.i.i, align 4
  %sq_sig_type.i.i.i = getelementptr inbounds %struct.ib_qp_init_attr, ptr %init_attr.i.i.i, i32 0, i32 7
  %104 = ptrtoint ptr %sq_sig_type.i.i.i to i32
  call void @__asan_store4_noabort(i32 %104)
  store i32 1, ptr %sq_sig_type.i.i.i, align 4
  %qp_type.i.i.i = getelementptr inbounds %struct.ib_qp_init_attr, ptr %init_attr.i.i.i, i32 0, i32 8
  %105 = ptrtoint ptr %qp_type.i.i.i to i32
  call void @__asan_store4_noabort(i32 %105)
  store i32 2, ptr %qp_type.i.i.i, align 4
  %send_cq.i.i.i = getelementptr inbounds %struct.ib_qp_init_attr, ptr %init_attr.i.i.i, i32 0, i32 2
  %106 = ptrtoint ptr %send_cq.i.i.i to i32
  call void @__asan_store4_noabort(i32 %106)
  store ptr %call4.sink.i.i.i, ptr %send_cq.i.i.i, align 4
  %recv_cq.i.i.i = getelementptr inbounds %struct.ib_qp_init_attr, ptr %init_attr.i.i.i, i32 0, i32 3
  %107 = ptrtoint ptr %recv_cq.i.i.i to i32
  call void @__asan_store4_noabort(i32 %107)
  store ptr %call4.sink.i.i.i, ptr %recv_cq.i.i.i, align 4
  %pi_support.i.i.i = getelementptr inbounds %struct.nvme_rdma_queue, ptr %1, i32 0, i32 11
  %108 = ptrtoint ptr %pi_support.i.i.i to i32
  call void @__asan_load1_noabort(i32 %108)
  %109 = load i8, ptr %pi_support.i.i.i, align 4, !range !336
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %109)
  %tobool.not.i.i.i = icmp eq i8 %109, 0
  br i1 %tobool.not.i.i.i, label %if.end8.i.i.nvme_rdma_create_qp.exit.i.i_crit_edge, label %if.then.i111.i.i

if.end8.i.i.nvme_rdma_create_qp.exit.i.i_crit_edge: ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %nvme_rdma_create_qp.exit.i.i

if.then.i111.i.i:                                 ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %create_flags.i.i.i = getelementptr inbounds %struct.ib_qp_init_attr, ptr %init_attr.i.i.i, i32 0, i32 9
  %110 = ptrtoint ptr %create_flags.i.i.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %create_flags.i.i.i, align 4
  %or.i.i.i = or i32 %111, 64
  store i32 %or.i.i.i, ptr %create_flags.i.i.i, align 4
  br label %nvme_rdma_create_qp.exit.i.i

nvme_rdma_create_qp.exit.i.i:                     ; preds = %if.then.i111.i.i, %if.end8.i.i.nvme_rdma_create_qp.exit.i.i_crit_edge
  %112 = ptrtoint ptr %93 to i32
  call void @__asan_store4_noabort(i32 %112)
  store ptr %1, ptr %93, align 4
  %113 = ptrtoint ptr %cm_id.i.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %cm_id.i.i, align 4
  %pd.i112.i.i = getelementptr inbounds %struct.nvme_rdma_device, ptr %92, i32 0, i32 1
  %115 = ptrtoint ptr %pd.i112.i.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %pd.i112.i.i, align 4
  %call.i.i.i = call i32 @rdma_create_qp(ptr noundef %114, ptr noundef %116, ptr noundef nonnull %init_attr.i.i.i) #11
  %117 = ptrtoint ptr %cm_id.i.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %cm_id.i.i, align 4
  %qp.i.i.i = getelementptr inbounds %struct.rdma_cm_id, ptr %118, i32 0, i32 2
  %119 = ptrtoint ptr %qp.i.i.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %qp.i.i.i, align 4
  %qp9.i.i.i = getelementptr inbounds %struct.nvme_rdma_queue, ptr %1, i32 0, i32 6
  %121 = ptrtoint ptr %qp9.i.i.i to i32
  call void @__asan_store4_noabort(i32 %121)
  store ptr %120, ptr %qp9.i.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %init_attr.i.i.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool10.not.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool10.not.i.i, label %if.end12.i.i, label %nvme_rdma_create_qp.exit.i.i.out_destroy_ib_cq.i.i_crit_edge

nvme_rdma_create_qp.exit.i.i.out_destroy_ib_cq.i.i_crit_edge: ; preds = %nvme_rdma_create_qp.exit.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %out_destroy_ib_cq.i.i

if.end12.i.i:                                     ; preds = %nvme_rdma_create_qp.exit.i.i
  %122 = ptrtoint ptr %queue_size.i.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %queue_size.i.i, align 4
  %124 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %123, i32 16) #11
  %125 = extractvalue { i32, i1 } %124, 1
  br i1 %125, label %if.end12.i.i.nvme_rdma_alloc_ring.exit.thread.i.i_crit_edge, label %if.end7.i.i.i.i.i, !prof !337

if.end12.i.i.nvme_rdma_alloc_ring.exit.thread.i.i_crit_edge: ; preds = %if.end12.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %nvme_rdma_alloc_ring.exit.thread.i.i

if.end7.i.i.i.i.i:                                ; preds = %if.end12.i.i
  %126 = extractvalue { i32, i1 } %124, 0
  %call8.i.i.i.i.i = call noalias align 128 ptr @__kmalloc(i32 noundef %126, i32 noundef 3520) #16
  %tobool.not.i114.i.i = icmp eq ptr %call8.i.i.i.i.i, null
  br i1 %tobool.not.i114.i.i, label %if.end7.i.i.i.i.i.nvme_rdma_alloc_ring.exit.thread.i.i_crit_edge, label %for.cond.preheader.i.i.i

if.end7.i.i.i.i.i.nvme_rdma_alloc_ring.exit.thread.i.i_crit_edge: ; preds = %if.end7.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %nvme_rdma_alloc_ring.exit.thread.i.i

for.cond.preheader.i.i.i:                         ; preds = %if.end7.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %123)
  %cmp5.not.i.i.i = icmp eq i32 %123, 0
  br i1 %cmp5.not.i.i.i, label %for.cond.preheader.i.i.i.nvme_rdma_alloc_ring.exit.i.i_crit_edge, label %for.cond.preheader.i.i.i.for.body.i115.i.i_crit_edge

for.cond.preheader.i.i.i.for.body.i115.i.i_crit_edge: ; preds = %for.cond.preheader.i.i.i
  br label %for.body.i115.i.i

for.cond.preheader.i.i.i.nvme_rdma_alloc_ring.exit.i.i_crit_edge: ; preds = %for.cond.preheader.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %nvme_rdma_alloc_ring.exit.i.i

for.body.i115.i.i:                                ; preds = %for.inc.i116.i.i.for.body.i115.i.i_crit_edge, %for.cond.preheader.i.i.i.for.body.i115.i.i_crit_edge
  %i.06.i.i.i = phi i32 [ %inc.i.i.i, %for.inc.i116.i.i.for.body.i115.i.i_crit_edge ], [ 0, %for.cond.preheader.i.i.i.for.body.i115.i.i_crit_edge ]
  %arrayidx.i.i.i = getelementptr %struct.nvme_rdma_qe, ptr %call8.i.i.i.i.i, i32 %i.06.i.i.i
  %call1.i.i.i = call fastcc i32 @nvme_rdma_alloc_qe(ptr noundef %74, ptr noundef %arrayidx.i.i.i, i32 noundef 16, i32 noundef 2) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %tobool2.not.i.i.i = icmp eq i32 %call1.i.i.i, 0
  br i1 %tobool2.not.i.i.i, label %for.inc.i116.i.i, label %out_free_ring.i.i.i

for.inc.i116.i.i:                                 ; preds = %for.body.i115.i.i
  %inc.i.i.i = add nuw i32 %i.06.i.i.i, 1
  %exitcond.not.i.i.i = icmp eq i32 %inc.i.i.i, %123
  br i1 %exitcond.not.i.i.i, label %for.inc.i116.i.i.nvme_rdma_alloc_ring.exit.i.i_crit_edge, label %for.inc.i116.i.i.for.body.i115.i.i_crit_edge

for.inc.i116.i.i.for.body.i115.i.i_crit_edge:     ; preds = %for.inc.i116.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i115.i.i

for.inc.i116.i.i.nvme_rdma_alloc_ring.exit.i.i_crit_edge: ; preds = %for.inc.i116.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %nvme_rdma_alloc_ring.exit.i.i

out_free_ring.i.i.i:                              ; preds = %for.body.i115.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.06.i.i.i)
  %cmp1.not.i.i.i.i = icmp eq i32 %i.06.i.i.i, 0
  br i1 %cmp1.not.i.i.i.i, label %out_free_ring.i.i.i.nvme_rdma_free_ring.exit.i.i.i_crit_edge, label %out_free_ring.i.i.i.for.body.i.i.i.i_crit_edge

out_free_ring.i.i.i.for.body.i.i.i.i_crit_edge:   ; preds = %out_free_ring.i.i.i
  br label %for.body.i.i.i.i

out_free_ring.i.i.i.nvme_rdma_free_ring.exit.i.i.i_crit_edge: ; preds = %out_free_ring.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %nvme_rdma_free_ring.exit.i.i.i

for.body.i.i.i.i:                                 ; preds = %for.body.i.i.i.i.for.body.i.i.i.i_crit_edge, %out_free_ring.i.i.i.for.body.i.i.i.i_crit_edge
  %i.02.i.i.i.i = phi i32 [ %inc.i.i.i.i, %for.body.i.i.i.i.for.body.i.i.i.i_crit_edge ], [ 0, %out_free_ring.i.i.i.for.body.i.i.i.i_crit_edge ]
  %dma.i.i.i.i.i = getelementptr %struct.nvme_rdma_qe, ptr %call8.i.i.i.i.i, i32 %i.02.i.i.i.i, i32 2
  %127 = ptrtoint ptr %dma.i.i.i.i.i to i32
  call void @__asan_load8_noabort(i32 %127)
  %128 = load i64, ptr %dma.i.i.i.i.i, align 8
  %129 = ptrtoint ptr %74 to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %74, align 8
  %conv.i.i.i.i.i.i = trunc i64 %128 to i32
  call void @dma_unmap_page_attrs(ptr noundef %130, i32 noundef %conv.i.i.i.i.i.i, i32 noundef 16, i32 noundef 2, i32 noundef 0) #11
  %data.i.i.i.i.i = getelementptr %struct.nvme_rdma_qe, ptr %call8.i.i.i.i.i, i32 %i.02.i.i.i.i, i32 1
  %131 = ptrtoint ptr %data.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %data.i.i.i.i.i, align 4
  call void @kfree(ptr noundef %132) #11
  %inc.i.i.i.i = add nuw i32 %i.02.i.i.i.i, 1
  %exitcond.not.i.i.i.i = icmp eq i32 %inc.i.i.i.i, %i.06.i.i.i
  br i1 %exitcond.not.i.i.i.i, label %for.body.i.i.i.i.nvme_rdma_free_ring.exit.i.i.i_crit_edge, label %for.body.i.i.i.i.for.body.i.i.i.i_crit_edge

for.body.i.i.i.i.for.body.i.i.i.i_crit_edge:      ; preds = %for.body.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i.i.i.i

for.body.i.i.i.i.nvme_rdma_free_ring.exit.i.i.i_crit_edge: ; preds = %for.body.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %nvme_rdma_free_ring.exit.i.i.i

nvme_rdma_free_ring.exit.i.i.i:                   ; preds = %for.body.i.i.i.i.nvme_rdma_free_ring.exit.i.i.i_crit_edge, %out_free_ring.i.i.i.nvme_rdma_free_ring.exit.i.i.i_crit_edge
  call void @kfree(ptr noundef nonnull %call8.i.i.i.i.i) #11
  br label %nvme_rdma_alloc_ring.exit.thread.i.i

nvme_rdma_alloc_ring.exit.thread.i.i:             ; preds = %nvme_rdma_free_ring.exit.i.i.i, %if.end7.i.i.i.i.i.nvme_rdma_alloc_ring.exit.thread.i.i_crit_edge, %if.end12.i.i.nvme_rdma_alloc_ring.exit.thread.i.i_crit_edge
  %133 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %133)
  store ptr null, ptr %1, align 4
  br label %out_destroy_qp.i.i

nvme_rdma_alloc_ring.exit.i.i:                    ; preds = %for.inc.i116.i.i.nvme_rdma_alloc_ring.exit.i.i_crit_edge, %for.cond.preheader.i.i.i.nvme_rdma_alloc_ring.exit.i.i_crit_edge
  %134 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %134)
  store ptr %call8.i.i.i.i.i, ptr %1, align 4
  %135 = ptrtoint ptr %pi_support.i.i.i to i32
  call void @__asan_load1_noabort(i32 %135)
  %136 = load i8, ptr %pi_support.i.i.i, align 4, !range !336
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %136)
  %tobool19.not.i.i = icmp eq i8 %136, 0
  %max_pi_fast_reg_page_list_len.i.i.i = getelementptr inbounds %struct.ib_device, ptr %74, i32 0, i32 22, i32 37
  %max_fast_reg_page_list_len.i.i.i = getelementptr inbounds %struct.ib_device, ptr %74, i32 0, i32 22, i32 36
  %max_page_list_len.0.in.i.i.i = select i1 %tobool19.not.i.i, ptr %max_fast_reg_page_list_len.i.i.i, ptr %max_pi_fast_reg_page_list_len.i.i.i
  %137 = ptrtoint ptr %max_page_list_len.0.in.i.i.i to i32
  call void @__asan_load4_noabort(i32 %137)
  %max_page_list_len.0.i.i.i = load i32, ptr %max_page_list_len.0.in.i.i.i, align 4
  %sub.i118.i.i = add i32 %max_page_list_len.0.i.i.i, -1
  %138 = call i32 @llvm.umin.i32(i32 %sub.i118.i.i, i32 256) #11
  %add21.i.i = add nuw nsw i32 %138, 1
  %139 = ptrtoint ptr %qp9.i.i.i to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %qp9.i.i.i, align 4
  %rdma_mrs.i.i = getelementptr inbounds %struct.ib_qp, ptr %140, i32 0, i32 6
  %141 = ptrtoint ptr %queue_size.i.i to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load i32, ptr %queue_size.i.i, align 4
  %call24.i.i = call i32 @ib_mr_pool_init(ptr noundef %140, ptr noundef %rdma_mrs.i.i, i32 noundef %142, i32 noundef 0, i32 noundef %add21.i.i, i32 noundef 0) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24.i.i)
  %tobool25.not.i.i = icmp eq i32 %call24.i.i, 0
  br i1 %tobool25.not.i.i, label %if.end34.i.i, label %do.end29.i.i

do.end29.i.i:                                     ; preds = %nvme_rdma_alloc_ring.exit.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %143 = ptrtoint ptr %ctrl1.i to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %ctrl1.i, align 4
  %device31.i.i = getelementptr inbounds %struct.nvme_rdma_ctrl, ptr %144, i32 0, i32 11, i32 17
  %145 = ptrtoint ptr %device31.i.i to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %device31.i.i, align 8
  %147 = ptrtoint ptr %queue_size.i.i to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load i32, ptr %queue_size.i.i, align 4
  %149 = ptrtoint ptr %144 to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %144, align 8
  %sub.ptr.rhs.cast.i.i.i = ptrtoint ptr %150 to i32
  %sub.ptr.sub.i.i.i = sub i32 %sub.ptr.lhs.cast.i.i.i.i, %sub.ptr.rhs.cast.i.i.i
  %sub.ptr.div.i.i.i = sdiv exact i32 %sub.ptr.sub.i.i.i, 196
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %146, ptr noundef nonnull @.str.76, i32 noundef %148, i32 noundef %sub.ptr.div.i.i.i) #15
  br label %out_destroy_ring.i.i

if.end34.i.i:                                     ; preds = %nvme_rdma_alloc_ring.exit.i.i
  %151 = ptrtoint ptr %pi_support.i.i.i to i32
  call void @__asan_load1_noabort(i32 %151)
  %152 = load i8, ptr %pi_support.i.i.i, align 4, !range !336
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %152)
  %tobool36.not.i.i = icmp eq i8 %152, 0
  br i1 %tobool36.not.i.i, label %if.end34.i.i.nvme_rdma_create_queue_ib.exit.thread.i_crit_edge, label %if.then37.i.i

if.end34.i.i.nvme_rdma_create_queue_ib.exit.thread.i_crit_edge: ; preds = %if.end34.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %nvme_rdma_create_queue_ib.exit.thread.i

if.then37.i.i:                                    ; preds = %if.end34.i.i
  %153 = ptrtoint ptr %qp9.i.i.i to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %qp9.i.i.i, align 4
  %sig_mrs.i.i = getelementptr inbounds %struct.ib_qp, ptr %154, i32 0, i32 7
  %155 = ptrtoint ptr %queue_size.i.i to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load i32, ptr %queue_size.i.i, align 4
  %call41.i.i = call i32 @ib_mr_pool_init(ptr noundef %154, ptr noundef %sig_mrs.i.i, i32 noundef %156, i32 noundef 5, i32 noundef %add21.i.i, i32 noundef %add21.i.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call41.i.i)
  %tobool42.not.i.i = icmp eq i32 %call41.i.i, 0
  br i1 %tobool42.not.i.i, label %if.then37.i.i.nvme_rdma_create_queue_ib.exit.thread.i_crit_edge, label %do.end46.i.i

if.then37.i.i.nvme_rdma_create_queue_ib.exit.thread.i_crit_edge: ; preds = %if.then37.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %nvme_rdma_create_queue_ib.exit.thread.i

do.end46.i.i:                                     ; preds = %if.then37.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %157 = ptrtoint ptr %ctrl1.i to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %ctrl1.i, align 4
  %device49.i.i = getelementptr inbounds %struct.nvme_rdma_ctrl, ptr %158, i32 0, i32 11, i32 17
  %159 = ptrtoint ptr %device49.i.i to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load ptr, ptr %device49.i.i, align 8
  %161 = ptrtoint ptr %queue_size.i.i to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load i32, ptr %queue_size.i.i, align 4
  %163 = ptrtoint ptr %158 to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load ptr, ptr %158, align 8
  %sub.ptr.rhs.cast.i121.i.i = ptrtoint ptr %164 to i32
  %sub.ptr.sub.i122.i.i = sub i32 %sub.ptr.lhs.cast.i.i.i.i, %sub.ptr.rhs.cast.i121.i.i
  %sub.ptr.div.i123.i.i = sdiv exact i32 %sub.ptr.sub.i122.i.i, 196
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %160, ptr noundef nonnull @.str.79, i32 noundef %162, i32 noundef %sub.ptr.div.i123.i.i) #15
  %165 = ptrtoint ptr %qp9.i.i.i to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load ptr, ptr %qp9.i.i.i, align 4
  %rdma_mrs56.i.i = getelementptr inbounds %struct.ib_qp, ptr %166, i32 0, i32 6
  call void @ib_mr_pool_destroy(ptr noundef %166, ptr noundef %rdma_mrs56.i.i) #11
  br label %out_destroy_ring.i.i

nvme_rdma_create_queue_ib.exit.thread.i:          ; preds = %if.then37.i.i.nvme_rdma_create_queue_ib.exit.thread.i_crit_edge, %if.end34.i.i.nvme_rdma_create_queue_ib.exit.thread.i_crit_edge
  %flags.i.i = getelementptr inbounds %struct.nvme_rdma_queue, ptr %1, i32 0, i32 7
  call void @_set_bit(i32 noundef 2, ptr noundef %flags.i.i) #11
  %opts.i = getelementptr inbounds %struct.nvme_rdma_ctrl, ptr %14, i32 0, i32 11, i32 93
  %167 = ptrtoint ptr %opts.i to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load ptr, ptr %opts.i, align 8
  %tos.i = getelementptr inbounds %struct.nvmf_ctrl_options, ptr %168, i32 0, i32 20
  %169 = ptrtoint ptr %tos.i to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load i32, ptr %tos.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %170)
  %cmp.i = icmp sgt i32 %170, -1
  br i1 %cmp.i, label %if.then3.i, label %nvme_rdma_create_queue_ib.exit.thread.i.if.end6.i_crit_edge

nvme_rdma_create_queue_ib.exit.thread.i.if.end6.i_crit_edge: ; preds = %nvme_rdma_create_queue_ib.exit.thread.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end6.i

out_destroy_ring.i.i:                             ; preds = %do.end46.i.i, %do.end29.i.i
  %ret.0.i.i = phi i32 [ %call24.i.i, %do.end29.i.i ], [ %call41.i.i, %do.end46.i.i ]
  %171 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load ptr, ptr %1, align 4
  %173 = ptrtoint ptr %queue_size.i.i to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load i32, ptr %queue_size.i.i, align 4
  call fastcc void @nvme_rdma_free_ring(ptr noundef %74, ptr noundef %172, i32 noundef %174) #11
  br label %out_destroy_qp.i.i

out_destroy_qp.i.i:                               ; preds = %out_destroy_ring.i.i, %nvme_rdma_alloc_ring.exit.thread.i.i
  %ret.1.i.i = phi i32 [ %ret.0.i.i, %out_destroy_ring.i.i ], [ -12, %nvme_rdma_alloc_ring.exit.thread.i.i ]
  %175 = ptrtoint ptr %cm_id.i.i to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load ptr, ptr %cm_id.i.i, align 4
  call void @rdma_destroy_qp(ptr noundef %176) #11
  br label %out_destroy_ib_cq.i.i

out_destroy_ib_cq.i.i:                            ; preds = %out_destroy_qp.i.i, %nvme_rdma_create_qp.exit.i.i.out_destroy_ib_cq.i.i_crit_edge
  %ret.2.i.i = phi i32 [ %call.i.i.i, %nvme_rdma_create_qp.exit.i.i.out_destroy_ib_cq.i.i_crit_edge ], [ %ret.1.i.i, %out_destroy_qp.i.i ]
  %177 = ptrtoint ptr %ctrl1.i to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load ptr, ptr %ctrl1.i, align 4
  %179 = ptrtoint ptr %178 to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load ptr, ptr %178, align 8
  %sub.ptr.rhs.cast.i.i.i.i.i = ptrtoint ptr %180 to i32
  %sub.ptr.sub.i.i.i.i.i = sub i32 %sub.ptr.lhs.cast.i.i.i.i, %sub.ptr.rhs.cast.i.i.i.i.i
  %sub.ptr.div.i.i.i.i.i = sdiv exact i32 %sub.ptr.sub.i.i.i.i.i, 196
  %io_queues.i.i124.i.i = getelementptr inbounds %struct.nvme_rdma_ctrl, ptr %178, i32 0, i32 13
  %181 = ptrtoint ptr %io_queues.i.i124.i.i to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load i32, ptr %io_queues.i.i124.i.i, align 4
  %arrayidx3.i.i125.i.i = getelementptr %struct.nvme_rdma_ctrl, ptr %178, i32 0, i32 13, i32 1
  %183 = ptrtoint ptr %arrayidx3.i.i125.i.i to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load i32, ptr %arrayidx3.i.i125.i.i, align 4
  %add.i.i126.i.i = add i32 %184, %182
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.ptr.div.i.i.i.i.i, i32 %add.i.i126.i.i)
  %cmp.i.i127.i.i = icmp ugt i32 %sub.ptr.div.i.i.i.i.i, %add.i.i126.i.i
  %185 = ptrtoint ptr %89 to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load ptr, ptr %89, align 4
  br i1 %cmp.i.i127.i.i, label %if.then.i129.i.i, label %if.else.i131.i.i

if.then.i129.i.i:                                 ; preds = %out_destroy_ib_cq.i.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @ib_free_cq(ptr noundef %186) #11
  br label %nvme_rdma_create_queue_ib.exit.thread29.i

if.else.i131.i.i:                                 ; preds = %out_destroy_ib_cq.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %187 = ptrtoint ptr %cq_size.i.i to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load i32, ptr %cq_size.i.i, align 4
  call void @ib_cq_pool_put(ptr noundef %186, i32 noundef %188) #11
  br label %nvme_rdma_create_queue_ib.exit.thread29.i

nvme_rdma_create_queue_ib.exit.thread29.i:        ; preds = %if.else.i131.i.i, %if.then.i129.i.i
  %189 = ptrtoint ptr %device141.i.i to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load ptr, ptr %device141.i.i, align 4
  call fastcc void @nvme_rdma_dev_put(ptr noundef %190) #11
  br label %if.then66

nvme_rdma_create_queue_ib.exit.i:                 ; preds = %nvme_rdma_create_cq.exit.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %191 = ptrtoint ptr %call4.sink.i.i.i to i32
  %192 = ptrtoint ptr %device141.i.i to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load ptr, ptr %device141.i.i, align 4
  call fastcc void @nvme_rdma_dev_put(ptr noundef %193) #11
  br label %sw.epilog

if.then3.i:                                       ; preds = %nvme_rdma_create_queue_ib.exit.thread.i
  call void @__sanitizer_cov_trace_pc() #13
  %194 = ptrtoint ptr %cm_id.i.i to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load ptr, ptr %cm_id.i.i, align 4
  call void @rdma_set_service_type(ptr noundef %195, i32 noundef %170) #11
  br label %if.end6.i

if.end6.i:                                        ; preds = %if.then3.i, %nvme_rdma_create_queue_ib.exit.thread.i.if.end6.i_crit_edge
  %196 = ptrtoint ptr %cm_id.i.i to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load ptr, ptr %cm_id.i.i, align 4
  %call8.i = call i32 @rdma_resolve_route(ptr noundef %197, i32 noundef 3000) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i)
  %tobool9.not.i = icmp eq i32 %call8.i, 0
  br i1 %tobool9.not.i, label %if.end6.i.cleanup_crit_edge, label %do.end.i

if.end6.i.cleanup_crit_edge:                      ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.end.i:                                         ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #13
  %device.i = getelementptr inbounds %struct.nvme_rdma_ctrl, ptr %14, i32 0, i32 11, i32 17
  %198 = ptrtoint ptr %device.i to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load ptr, ptr %device.i, align 8
  %cm_error.i = getelementptr inbounds %struct.nvme_rdma_queue, ptr %1, i32 0, i32 9
  %200 = ptrtoint ptr %cm_error.i to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load i32, ptr %cm_error.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %199, ptr noundef nonnull @.str.71, i32 noundef %201) #15
  call fastcc void @nvme_rdma_destroy_queue_ib(ptr noundef %1) #11
  br label %if.then66

sw.bb8:                                           ; preds = %do.end
  %ctrl1.i99 = getelementptr inbounds %struct.nvme_rdma_queue, ptr %1, i32 0, i32 3
  %202 = ptrtoint ptr %ctrl1.i99 to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load ptr, ptr %ctrl1.i99, align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %param.i) #11
  %204 = getelementptr inbounds i8, ptr %param.i, i32 4
  %205 = call ptr @memset(ptr %204, i32 0, i32 16)
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %priv.i) #11
  %206 = getelementptr inbounds i8, ptr %priv.i, i32 8
  %207 = call ptr @memset(ptr %206, i32 0, i32 24)
  %qp.i = getelementptr inbounds %struct.nvme_rdma_queue, ptr %1, i32 0, i32 6
  %208 = ptrtoint ptr %qp.i to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load ptr, ptr %qp.i, align 4
  %qp_num.i = getelementptr inbounds %struct.ib_qp, ptr %209, i32 0, i32 19
  %210 = ptrtoint ptr %qp_num.i to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load i32, ptr %qp_num.i, align 4
  %qp_num2.i = getelementptr inbounds %struct.rdma_conn_param, ptr %param.i, i32 0, i32 8
  %212 = ptrtoint ptr %qp_num2.i to i32
  call void @__asan_store4_noabort(i32 %212)
  store i32 %211, ptr %qp_num2.i, align 4
  %flow_control.i = getelementptr inbounds %struct.rdma_conn_param, ptr %param.i, i32 0, i32 4
  %213 = ptrtoint ptr %flow_control.i to i32
  call void @__asan_store1_noabort(i32 %213)
  store i8 1, ptr %flow_control.i, align 1
  %device.i100 = getelementptr inbounds %struct.nvme_rdma_queue, ptr %1, i32 0, i32 4
  %214 = ptrtoint ptr %device.i100 to i32
  call void @__asan_load4_noabort(i32 %214)
  %215 = load ptr, ptr %device.i100, align 4
  %216 = ptrtoint ptr %215 to i32
  call void @__asan_load4_noabort(i32 %216)
  %217 = load ptr, ptr %215, align 4
  %max_qp_rd_atom.i = getelementptr inbounds %struct.ib_device, ptr %217, i32 0, i32 22, i32 17
  %218 = ptrtoint ptr %max_qp_rd_atom.i to i32
  call void @__asan_load4_noabort(i32 %218)
  %219 = load i32, ptr %max_qp_rd_atom.i, align 4
  %conv.i = trunc i32 %219 to i8
  %responder_resources.i = getelementptr inbounds %struct.rdma_conn_param, ptr %param.i, i32 0, i32 2
  %220 = ptrtoint ptr %responder_resources.i to i32
  call void @__asan_store1_noabort(i32 %220)
  store i8 %conv.i, ptr %responder_resources.i, align 1
  %retry_count.i = getelementptr inbounds %struct.rdma_conn_param, ptr %param.i, i32 0, i32 5
  %221 = ptrtoint ptr %retry_count.i to i32
  call void @__asan_store1_noabort(i32 %221)
  store i8 7, ptr %retry_count.i, align 4
  %rnr_retry_count.i = getelementptr inbounds %struct.rdma_conn_param, ptr %param.i, i32 0, i32 6
  %222 = ptrtoint ptr %rnr_retry_count.i to i32
  call void @__asan_store1_noabort(i32 %222)
  store i8 7, ptr %rnr_retry_count.i, align 1
  %223 = ptrtoint ptr %param.i to i32
  call void @__asan_store4_noabort(i32 %223)
  store ptr %priv.i, ptr %param.i, align 4
  %224 = ptrtoint ptr %204 to i32
  call void @__asan_store1_noabort(i32 %224)
  store i8 32, ptr %204, align 4
  %225 = ptrtoint ptr %priv.i to i32
  call void @__asan_store2_noabort(i32 %225)
  store i16 0, ptr %priv.i, align 2
  %226 = ptrtoint ptr %203 to i32
  call void @__asan_load4_noabort(i32 %226)
  %227 = load ptr, ptr %203, align 8
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %1 to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %227 to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  %sub.ptr.div.i.i = sdiv exact i32 %sub.ptr.sub.i.i, 196
  %conv3.i = trunc i32 %sub.ptr.div.i.i to i16
  %228 = call i16 @llvm.bswap.i16(i16 %conv3.i) #11
  %qid.i = getelementptr inbounds %struct.nvme_rdma_cm_req, ptr %priv.i, i32 0, i32 1
  %229 = ptrtoint ptr %qid.i to i32
  call void @__asan_store2_noabort(i32 %229)
  store i16 %228, ptr %qid.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %conv3.i)
  %cmp.i101 = icmp eq i16 %conv3.i, 0
  br i1 %cmp.i101, label %sw.bb8.if.end.i_crit_edge, label %if.else.i

sw.bb8.if.end.i_crit_edge:                        ; preds = %sw.bb8
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i

if.else.i:                                        ; preds = %sw.bb8
  call void @__sanitizer_cov_trace_pc() #13
  %queue_size.i = getelementptr inbounds %struct.nvme_rdma_queue, ptr %1, i32 0, i32 1
  %230 = ptrtoint ptr %queue_size.i to i32
  call void @__asan_load4_noabort(i32 %230)
  %231 = load i32, ptr %queue_size.i, align 4
  %conv7.i = trunc i32 %231 to i16
  %232 = call i16 @llvm.bswap.i16(i16 %conv7.i) #11
  %sqsize.i = getelementptr inbounds %struct.nvme_rdma_ctrl, ptr %203, i32 0, i32 11, i32 44
  %233 = ptrtoint ptr %sqsize.i to i32
  call void @__asan_load2_noabort(i32 %233)
  %234 = load i16, ptr %sqsize.i, align 2
  %235 = call i16 @llvm.bswap.i16(i16 %234) #11
  br label %if.end.i

if.end.i:                                         ; preds = %if.else.i, %sw.bb8.if.end.i_crit_edge
  %.sink28.i = phi i16 [ %232, %if.else.i ], [ 8192, %sw.bb8.if.end.i_crit_edge ]
  %.sink.i = phi i16 [ %235, %if.else.i ], [ 7936, %sw.bb8.if.end.i_crit_edge ]
  %236 = getelementptr inbounds %struct.nvme_rdma_cm_req, ptr %priv.i, i32 0, i32 2
  %237 = ptrtoint ptr %236 to i32
  call void @__asan_store2_noabort(i32 %237)
  store i16 %.sink28.i, ptr %236, align 2
  %238 = getelementptr inbounds %struct.nvme_rdma_cm_req, ptr %priv.i, i32 0, i32 3
  %239 = ptrtoint ptr %238 to i32
  call void @__asan_store2_noabort(i32 %239)
  store i16 %.sink.i, ptr %238, align 2
  %cm_id.i = getelementptr inbounds %struct.nvme_rdma_queue, ptr %1, i32 0, i32 8
  %240 = ptrtoint ptr %cm_id.i to i32
  call void @__asan_load4_noabort(i32 %240)
  %241 = load ptr, ptr %cm_id.i, align 4
  %call12.i = call i32 @rdma_connect_locked(ptr noundef %241, ptr noundef nonnull %param.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12.i)
  %tobool.not.i = icmp eq i32 %call12.i, 0
  br i1 %tobool.not.i, label %if.end.i.nvme_rdma_route_resolved.exit_crit_edge, label %do.end.i102

if.end.i.nvme_rdma_route_resolved.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %nvme_rdma_route_resolved.exit

do.end.i102:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %device15.i = getelementptr inbounds %struct.nvme_rdma_ctrl, ptr %203, i32 0, i32 11, i32 17
  %242 = ptrtoint ptr %device15.i to i32
  call void @__asan_load4_noabort(i32 %242)
  %243 = load ptr, ptr %device15.i, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %243, ptr noundef nonnull @.str.86, i32 noundef %call12.i) #15
  br label %nvme_rdma_route_resolved.exit

nvme_rdma_route_resolved.exit:                    ; preds = %do.end.i102, %if.end.i.nvme_rdma_route_resolved.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %priv.i) #11
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %param.i) #11
  br label %sw.epilog

sw.bb10:                                          ; preds = %do.end
  %queue_size.i103 = getelementptr inbounds %struct.nvme_rdma_queue, ptr %1, i32 0, i32 1
  %244 = ptrtoint ptr %queue_size.i103 to i32
  call void @__asan_load4_noabort(i32 %244)
  %245 = load i32, ptr %queue_size.i103, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %245)
  %cmp7.i = icmp sgt i32 %245, 0
  br i1 %cmp7.i, label %for.body.lr.ph.i, label %sw.bb10.nvme_rdma_conn_established.exit_crit_edge

sw.bb10.nvme_rdma_conn_established.exit_crit_edge: ; preds = %sw.bb10
  call void @__sanitizer_cov_trace_pc() #13
  br label %nvme_rdma_conn_established.exit

for.body.lr.ph.i:                                 ; preds = %sw.bb10
  %246 = getelementptr inbounds %struct.ib_sge, ptr %list.i.i, i32 0, i32 1
  %247 = getelementptr inbounds %struct.ib_sge, ptr %list.i.i, i32 0, i32 2
  %device.i.i104 = getelementptr inbounds %struct.nvme_rdma_queue, ptr %1, i32 0, i32 4
  %248 = getelementptr inbounds %struct.ib_recv_wr, ptr %wr.i.i, i32 0, i32 1
  %sg_list.i.i = getelementptr inbounds %struct.ib_recv_wr, ptr %wr.i.i, i32 0, i32 2
  %num_sge.i.i = getelementptr inbounds %struct.ib_recv_wr, ptr %wr.i.i, i32 0, i32 3
  %qp.i.i = getelementptr inbounds %struct.nvme_rdma_queue, ptr %1, i32 0, i32 6
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.08.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %249 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %249)
  %250 = load ptr, ptr %1, align 4
  %arrayidx.i = getelementptr %struct.nvme_rdma_qe, ptr %250, i32 %i.08.i
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %wr.i.i) #11
  %251 = call ptr @memset(ptr %wr.i.i, i32 255, i32 16)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %list.i.i) #11
  %dma.i.i = getelementptr %struct.nvme_rdma_qe, ptr %250, i32 %i.08.i, i32 2
  %252 = ptrtoint ptr %dma.i.i to i32
  call void @__asan_load8_noabort(i32 %252)
  %253 = load i64, ptr %dma.i.i, align 8
  %254 = ptrtoint ptr %list.i.i to i32
  call void @__asan_store8_noabort(i32 %254)
  store i64 %253, ptr %list.i.i, align 8
  %255 = ptrtoint ptr %246 to i32
  call void @__asan_store4_noabort(i32 %255)
  store i32 16, ptr %246, align 8
  %256 = ptrtoint ptr %device.i.i104 to i32
  call void @__asan_load4_noabort(i32 %256)
  %257 = load ptr, ptr %device.i.i104, align 4
  %pd.i.i = getelementptr inbounds %struct.nvme_rdma_device, ptr %257, i32 0, i32 1
  %258 = ptrtoint ptr %pd.i.i to i32
  call void @__asan_load4_noabort(i32 %258)
  %259 = load ptr, ptr %pd.i.i, align 4
  %260 = ptrtoint ptr %259 to i32
  call void @__asan_load4_noabort(i32 %260)
  %261 = load i32, ptr %259, align 4
  %262 = ptrtoint ptr %247 to i32
  call void @__asan_store4_noabort(i32 %262)
  store i32 %261, ptr %247, align 4
  %263 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %263)
  store ptr @nvme_rdma_recv_done, ptr %arrayidx.i, align 8
  %264 = ptrtoint ptr %wr.i.i to i32
  call void @__asan_store4_noabort(i32 %264)
  store ptr null, ptr %wr.i.i, align 8
  %265 = ptrtoint ptr %248 to i32
  call void @__asan_store4_noabort(i32 %265)
  store ptr %arrayidx.i, ptr %248, align 8
  %266 = ptrtoint ptr %sg_list.i.i to i32
  call void @__asan_store4_noabort(i32 %266)
  store ptr %list.i.i, ptr %sg_list.i.i, align 8
  %267 = ptrtoint ptr %num_sge.i.i to i32
  call void @__asan_store4_noabort(i32 %267)
  store i32 1, ptr %num_sge.i.i, align 4
  %268 = ptrtoint ptr %qp.i.i to i32
  call void @__asan_load4_noabort(i32 %268)
  %269 = load ptr, ptr %qp.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %dummy.i.i.i) #11
  %270 = ptrtoint ptr %dummy.i.i.i to i32
  call void @__asan_store4_noabort(i32 %270)
  store ptr inttoptr (i32 -1 to ptr), ptr %dummy.i.i.i, align 4, !annotation !342
  %271 = ptrtoint ptr %269 to i32
  call void @__asan_load4_noabort(i32 %271)
  %272 = load ptr, ptr %269, align 4
  %post_recv.i.i.i = getelementptr inbounds %struct.ib_device, ptr %272, i32 0, i32 1, i32 7
  %273 = ptrtoint ptr %post_recv.i.i.i to i32
  call void @__asan_load4_noabort(i32 %273)
  %274 = load ptr, ptr %post_recv.i.i.i, align 4
  %call.i.i.i105 = call i32 %274(ptr noundef %269, ptr noundef nonnull %wr.i.i, ptr noundef nonnull %dummy.i.i.i) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dummy.i.i.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i105)
  %tobool.not.i.i106 = icmp eq i32 %call.i.i.i105, 0
  br i1 %tobool.not.i.i106, label %for.inc.i, label %nvme_rdma_post_recv.exit.i, !prof !338

nvme_rdma_post_recv.exit.i:                       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  %ctrl.i.i = getelementptr inbounds %struct.nvme_rdma_queue, ptr %1, i32 0, i32 3
  %275 = ptrtoint ptr %ctrl.i.i to i32
  call void @__asan_load4_noabort(i32 %275)
  %276 = load ptr, ptr %ctrl.i.i, align 4
  %device5.i.i = getelementptr inbounds %struct.nvme_rdma_ctrl, ptr %276, i32 0, i32 11, i32 17
  %277 = ptrtoint ptr %device5.i.i to i32
  call void @__asan_load4_noabort(i32 %277)
  %278 = load ptr, ptr %device5.i.i, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %278, ptr noundef nonnull @.str.37, ptr noundef nonnull @.str.88, i32 noundef %call.i.i.i105) #15
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %list.i.i) #11
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %wr.i.i) #11
  br label %nvme_rdma_conn_established.exit

for.inc.i:                                        ; preds = %for.body.i
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %list.i.i) #11
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %wr.i.i) #11
  %inc.i = add nuw nsw i32 %i.08.i, 1
  %279 = ptrtoint ptr %queue_size.i103 to i32
  call void @__asan_load4_noabort(i32 %279)
  %280 = load i32, ptr %queue_size.i103, align 4
  %cmp.i107 = icmp slt i32 %inc.i, %280
  br i1 %cmp.i107, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.nvme_rdma_conn_established.exit_crit_edge

for.inc.i.nvme_rdma_conn_established.exit_crit_edge: ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %nvme_rdma_conn_established.exit

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

nvme_rdma_conn_established.exit:                  ; preds = %for.inc.i.nvme_rdma_conn_established.exit_crit_edge, %nvme_rdma_post_recv.exit.i, %sw.bb10.nvme_rdma_conn_established.exit_crit_edge
  %retval.0.i108 = phi i32 [ %call.i.i.i105, %nvme_rdma_post_recv.exit.i ], [ 0, %sw.bb10.nvme_rdma_conn_established.exit_crit_edge ], [ 0, %for.inc.i.nvme_rdma_conn_established.exit_crit_edge ]
  %cm_error12 = getelementptr inbounds %struct.nvme_rdma_queue, ptr %1, i32 0, i32 9
  %281 = ptrtoint ptr %cm_error12 to i32
  call void @__asan_store4_noabort(i32 %281)
  store i32 %retval.0.i108, ptr %cm_error12, align 4
  %cm_done = getelementptr inbounds %struct.nvme_rdma_queue, ptr %1, i32 0, i32 10
  call void @complete(ptr noundef %cm_done) #11
  br label %cleanup

sw.bb13:                                          ; preds = %do.end
  %cm_id1.i = getelementptr inbounds %struct.nvme_rdma_queue, ptr %1, i32 0, i32 8
  %282 = ptrtoint ptr %cm_id1.i to i32
  call void @__asan_load4_noabort(i32 %282)
  %283 = load ptr, ptr %cm_id1.i, align 4
  %status2.i = getelementptr inbounds %struct.rdma_cm_event, ptr %ev, i32 0, i32 1
  %284 = ptrtoint ptr %status2.i to i32
  call void @__asan_load4_noabort(i32 %284)
  %285 = load i32, ptr %status2.i, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %rej_data_len.i) #11
  %286 = ptrtoint ptr %rej_data_len.i to i32
  call void @__asan_store1_noabort(i32 %286)
  store i8 -1, ptr %rej_data_len.i, align 1, !annotation !342
  %call.i = tail call ptr @rdma_reject_msg(ptr noundef %283, i32 noundef %285) #17
  %call3.i = call ptr @rdma_consumer_reject_data(ptr noundef %283, ptr noundef %ev, ptr noundef nonnull %rej_data_len.i) #11
  %tobool.not.i109 = icmp eq ptr %call3.i, null
  br i1 %tobool.not.i109, label %sw.bb13.do.end12.i_crit_edge, label %land.lhs.true.i

sw.bb13.do.end12.i_crit_edge:                     ; preds = %sw.bb13
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end12.i

land.lhs.true.i:                                  ; preds = %sw.bb13
  %287 = ptrtoint ptr %rej_data_len.i to i32
  call void @__asan_load1_noabort(i32 %287)
  %288 = load i8, ptr %rej_data_len.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %288)
  %cmp.i110 = icmp ugt i8 %288, 1
  br i1 %cmp.i110, label %if.then.i, label %land.lhs.true.i.do.end12.i_crit_edge

land.lhs.true.i.do.end12.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end12.i

if.then.i:                                        ; preds = %land.lhs.true.i
  %sts5.i = getelementptr inbounds %struct.nvme_rdma_cm_rej, ptr %call3.i, i32 0, i32 1
  %289 = ptrtoint ptr %sts5.i to i32
  call void @__asan_load2_noabort(i32 %289)
  %290 = load i16, ptr %sts5.i, align 2
  %291 = call i16 @llvm.bswap.i16(i16 %290) #11
  %ctrl.i = getelementptr inbounds %struct.nvme_rdma_queue, ptr %1, i32 0, i32 3
  %292 = ptrtoint ptr %ctrl.i to i32
  call void @__asan_load4_noabort(i32 %292)
  %293 = load ptr, ptr %ctrl.i, align 4
  %device.i111 = getelementptr inbounds %struct.nvme_rdma_ctrl, ptr %293, i32 0, i32 11, i32 17
  %294 = ptrtoint ptr %device.i111 to i32
  call void @__asan_load4_noabort(i32 %294)
  %295 = load ptr, ptr %device.i111, align 8
  %conv7.i112 = zext i16 %291 to i32
  %switch.tableidx = add i16 %291, -1
  call void @__sanitizer_cov_trace_const_cmp2(i16 8, i16 %switch.tableidx)
  %296 = icmp ult i16 %switch.tableidx, 8
  br i1 %296, label %switch.lookup, label %if.then.i.nvme_rdma_cm_msg.exit.i_crit_edge

if.then.i.nvme_rdma_cm_msg.exit.i_crit_edge:      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %nvme_rdma_cm_msg.exit.i

switch.lookup:                                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  %297 = sext i16 %switch.tableidx to i32
  %switch.gep = getelementptr inbounds [8 x ptr], ptr @switch.table.nvme_rdma_cm_handler, i32 0, i32 %297
  %298 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %298)
  %switch.load = load ptr, ptr %switch.gep, align 4
  br label %nvme_rdma_cm_msg.exit.i

nvme_rdma_cm_msg.exit.i:                          ; preds = %switch.lookup, %if.then.i.nvme_rdma_cm_msg.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %switch.load, %switch.lookup ], [ @.str.125, %if.then.i.nvme_rdma_cm_msg.exit.i_crit_edge ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %295, ptr noundef nonnull @.str.112, i32 noundef %285, ptr noundef %call.i, i32 noundef %conv7.i112, ptr noundef nonnull %retval.0.i.i) #15
  br label %nvme_rdma_conn_rejected.exit

do.end12.i:                                       ; preds = %land.lhs.true.i.do.end12.i_crit_edge, %sw.bb13.do.end12.i_crit_edge
  %ctrl13.i = getelementptr inbounds %struct.nvme_rdma_queue, ptr %1, i32 0, i32 3
  %299 = ptrtoint ptr %ctrl13.i to i32
  call void @__asan_load4_noabort(i32 %299)
  %300 = load ptr, ptr %ctrl13.i, align 4
  %device15.i113 = getelementptr inbounds %struct.nvme_rdma_ctrl, ptr %300, i32 0, i32 11, i32 17
  %301 = ptrtoint ptr %device15.i113 to i32
  call void @__asan_load4_noabort(i32 %301)
  %302 = load ptr, ptr %device15.i113, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %302, ptr noundef nonnull @.str.115, i32 noundef %285, ptr noundef %call.i) #15
  br label %nvme_rdma_conn_rejected.exit

nvme_rdma_conn_rejected.exit:                     ; preds = %do.end12.i, %nvme_rdma_cm_msg.exit.i
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %rej_data_len.i) #11
  br label %if.then66

do.body16:                                        ; preds = %do.end.do.body16_crit_edge, %do.end.do.body16_crit_edge148, %do.end.do.body16_crit_edge149, %do.end.do.body16_crit_edge150
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @nvme_rdma_cm_handler.__UNIQUE_ID_ddebug591, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@nvme_rdma_cm_handler, %if.then28)) #11
          to label %sw.epilog [label %if.then28], !srcloc !343

if.then28:                                        ; preds = %do.body16
  call void @__sanitizer_cov_trace_pc() #13
  %ctrl29 = getelementptr inbounds %struct.nvme_rdma_queue, ptr %1, i32 0, i32 3
  %303 = ptrtoint ptr %ctrl29 to i32
  call void @__asan_load4_noabort(i32 %303)
  %304 = load ptr, ptr %ctrl29, align 4
  %device31 = getelementptr inbounds %struct.nvme_rdma_ctrl, ptr %304, i32 0, i32 11, i32 17
  %305 = ptrtoint ptr %device31 to i32
  call void @__asan_load4_noabort(i32 %305)
  %306 = load ptr, ptr %device31, align 8
  %307 = ptrtoint ptr %ev to i32
  call void @__asan_load4_noabort(i32 %307)
  %308 = load i32, ptr %ev, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @nvme_rdma_cm_handler.__UNIQUE_ID_ddebug591, ptr noundef %306, ptr noundef nonnull @.str.68, i32 noundef %308) #11
  br label %if.then66

do.body37:                                        ; preds = %do.end.do.body37_crit_edge, %do.end.do.body37_crit_edge151, %do.end.do.body37_crit_edge152
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @nvme_rdma_cm_handler.__UNIQUE_ID_ddebug592, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@nvme_rdma_cm_handler, %if.then49)) #11
          to label %do.end55 [label %if.then49], !srcloc !343

if.then49:                                        ; preds = %do.body37
  call void @__sanitizer_cov_trace_pc() #13
  %ctrl50 = getelementptr inbounds %struct.nvme_rdma_queue, ptr %1, i32 0, i32 3
  %309 = ptrtoint ptr %ctrl50 to i32
  call void @__asan_load4_noabort(i32 %309)
  %310 = load ptr, ptr %ctrl50, align 4
  %device52 = getelementptr inbounds %struct.nvme_rdma_ctrl, ptr %310, i32 0, i32 11, i32 17
  %311 = ptrtoint ptr %device52 to i32
  call void @__asan_load4_noabort(i32 %311)
  %312 = load ptr, ptr %device52, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @nvme_rdma_cm_handler.__UNIQUE_ID_ddebug592, ptr noundef %312, ptr noundef nonnull @.str.69) #11
  br label %do.end55

do.end55:                                         ; preds = %if.then49, %do.body37
  %ctrl56 = getelementptr inbounds %struct.nvme_rdma_queue, ptr %1, i32 0, i32 3
  %313 = ptrtoint ptr %ctrl56 to i32
  call void @__asan_load4_noabort(i32 %313)
  %314 = load ptr, ptr %ctrl56, align 4
  %ctrl1.i115 = getelementptr inbounds %struct.nvme_rdma_ctrl, ptr %314, i32 0, i32 11
  %call.i116 = tail call zeroext i1 @nvme_change_ctrl_state(ptr noundef %ctrl1.i115, i32 noundef 2) #11
  br i1 %call.i116, label %do.end.i119, label %do.end55.cleanup_crit_edge

do.end55.cleanup_crit_edge:                       ; preds = %do.end55
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.end.i119:                                      ; preds = %do.end55
  call void @__sanitizer_cov_trace_pc() #13
  %device.i117 = getelementptr inbounds %struct.nvme_rdma_ctrl, ptr %314, i32 0, i32 11, i32 17
  %315 = ptrtoint ptr %device.i117 to i32
  call void @__asan_load4_noabort(i32 %315)
  %316 = load ptr, ptr %device.i117, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %316, ptr noundef nonnull @.str.34) #15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nvme_reset_wq to i32))
  %317 = load ptr, ptr @nvme_reset_wq, align 4
  %err_work.i = getelementptr inbounds %struct.nvme_rdma_ctrl, ptr %314, i32 0, i32 2
  %call.i.i118 = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %317, ptr noundef %err_work.i) #11
  br label %cleanup

do.end59:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  %ctrl60 = getelementptr inbounds %struct.nvme_rdma_queue, ptr %1, i32 0, i32 3
  %318 = ptrtoint ptr %ctrl60 to i32
  call void @__asan_load4_noabort(i32 %318)
  %319 = load ptr, ptr %ctrl60, align 4
  %device62 = getelementptr inbounds %struct.nvme_rdma_ctrl, ptr %319, i32 0, i32 11, i32 17
  %320 = ptrtoint ptr %device62 to i32
  call void @__asan_load4_noabort(i32 %320)
  %321 = load ptr, ptr %device62, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %321, ptr noundef nonnull @.str.70, i32 noundef %11) #15
  %322 = ptrtoint ptr %ctrl60 to i32
  call void @__asan_load4_noabort(i32 %322)
  %323 = load ptr, ptr %ctrl60, align 4
  tail call fastcc void @nvme_rdma_error_recovery(ptr noundef %323)
  br label %cleanup

sw.epilog:                                        ; preds = %do.body16, %nvme_rdma_route_resolved.exit, %nvme_rdma_create_queue_ib.exit.i
  %cm_error.0 = phi i32 [ %call12.i, %nvme_rdma_route_resolved.exit ], [ %191, %nvme_rdma_create_queue_ib.exit.i ], [ -104, %do.body16 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cm_error.0)
  %tobool65.not = icmp eq i32 %cm_error.0, 0
  br i1 %tobool65.not, label %sw.epilog.cleanup_crit_edge, label %sw.epilog.if.then66_crit_edge

sw.epilog.if.then66_crit_edge:                    ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then66

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then66:                                        ; preds = %sw.epilog.if.then66_crit_edge, %if.then28, %nvme_rdma_conn_rejected.exit, %do.end.i, %nvme_rdma_create_queue_ib.exit.thread29.i, %nvme_rdma_create_queue_ib.exit.thread26.i
  %cm_error.0129 = phi i32 [ %cm_error.0, %sw.epilog.if.then66_crit_edge ], [ %ret.2.i.i, %nvme_rdma_create_queue_ib.exit.thread29.i ], [ -111, %nvme_rdma_create_queue_ib.exit.thread26.i ], [ %call8.i, %do.end.i ], [ -104, %if.then28 ], [ -104, %nvme_rdma_conn_rejected.exit ]
  %cm_error67 = getelementptr inbounds %struct.nvme_rdma_queue, ptr %1, i32 0, i32 9
  %324 = ptrtoint ptr %cm_error67 to i32
  call void @__asan_store4_noabort(i32 %324)
  store i32 %cm_error.0129, ptr %cm_error67, align 4
  %cm_done68 = getelementptr inbounds %struct.nvme_rdma_queue, ptr %1, i32 0, i32 10
  call void @complete(ptr noundef %cm_done68) #11
  br label %cleanup

cleanup:                                          ; preds = %if.then66, %sw.epilog.cleanup_crit_edge, %do.end59, %do.end.i119, %do.end55.cleanup_crit_edge, %nvme_rdma_conn_established.exit, %if.end6.i.cleanup_crit_edge, %do.end.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rdma_resolve_addr(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid readnone willreturn
declare dso_local ptr @rdma_event_msg(i32 noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rdma_set_service_type(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rdma_resolve_route(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ib_mr_pool_init(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rdma_destroy_qp(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__ib_alloc_pd(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ib_cq_pool_get(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__ib_alloc_cq(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nvme_rdma_qp_event(ptr nocapture noundef readonly %event, ptr nocapture noundef readnone %context) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @nvme_rdma_qp_event.__UNIQUE_ID_ddebug569, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@nvme_rdma_qp_event, %if.then)) #11
          to label %do.end [label %if.then], !srcloc !343

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %event3 = getelementptr inbounds %struct.ib_event, ptr %event, i32 0, i32 2
  %0 = ptrtoint ptr %event3 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %event3, align 4
  %call4 = tail call ptr @ib_event_msg(i32 noundef %1) #17
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @nvme_rdma_qp_event.__UNIQUE_ID_ddebug569, ptr noundef nonnull @.str.85, ptr noundef %call4, i32 noundef %1) #11
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rdma_create_qp(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid readnone willreturn
declare dso_local ptr @ib_event_msg(i32 noundef) local_unnamed_addr #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rdma_connect_locked(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nvme_rdma_recv_done(ptr nocapture noundef readnone %cq, ptr nocapture noundef readonly %wc) #3 align 64 {
entry:
  %dummy.i.i = alloca ptr, align 4
  %wr.i = alloca %struct.ib_recv_wr, align 8
  %list.i = alloca %struct.ib_sge, align 8
  %dummy.i.i.i = alloca ptr, align 4
  %wr.i.i = alloca %struct.ib_send_wr, align 8
  call void @__sanitizer_cov_trace_pc() #13
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
  %device = getelementptr inbounds %struct.nvme_rdma_queue, ptr %5, i32 0, i32 4
  %6 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %device, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 4
  %data = getelementptr inbounds %struct.nvme_rdma_qe, ptr %1, i32 0, i32 1
  %10 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %data, align 4
  %status = getelementptr inbounds %struct.ib_wc, ptr %wc, i32 0, i32 1
  %12 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %status, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp.not = icmp eq i32 %13, 0
  br i1 %cmp.not, label %if.end, label %if.then, !prof !338

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call fastcc void @nvme_rdma_wr_error(ptr noundef %wc, ptr noundef nonnull @.str.89)
  br label %cleanup

if.end:                                           ; preds = %entry
  %byte_len = getelementptr inbounds %struct.ib_wc, ptr %wc, i32 0, i32 4
  %14 = ptrtoint ptr %byte_len to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %byte_len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %15)
  %cmp2 = icmp ult i32 %15, 16
  br i1 %cmp2, label %do.end, label %if.end14, !prof !337

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %ctrl = getelementptr inbounds %struct.nvme_rdma_queue, ptr %5, i32 0, i32 3
  %16 = ptrtoint ptr %ctrl to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %ctrl, align 4
  %device11 = getelementptr inbounds %struct.nvme_rdma_ctrl, ptr %17, i32 0, i32 11, i32 17
  %18 = ptrtoint ptr %device11 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %device11, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %19, ptr noundef nonnull @.str.90, i32 noundef %15) #15
  %20 = ptrtoint ptr %ctrl to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %ctrl, align 4
  tail call fastcc void @nvme_rdma_error_recovery(ptr noundef %21)
  br label %cleanup

if.end14:                                         ; preds = %if.end
  %dma = getelementptr inbounds %struct.nvme_rdma_qe, ptr %1, i32 0, i32 2
  %22 = ptrtoint ptr %dma to i32
  call void @__asan_load8_noabort(i32 %22)
  %23 = load i64, ptr %dma, align 8
  %24 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %9, align 8
  %conv.i = trunc i64 %23 to i32
  tail call void @dma_sync_single_for_cpu(ptr noundef %25, i32 noundef %conv.i, i32 noundef 16, i32 noundef 2) #11
  %ctrl.i = getelementptr inbounds %struct.nvme_rdma_queue, ptr %5, i32 0, i32 3
  %26 = ptrtoint ptr %ctrl.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %ctrl.i, align 4
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %27, align 8
  %sub.ptr.lhs.cast.i = ptrtoint ptr %5 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %29 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %sub.ptr.div.i = sdiv exact i32 %sub.ptr.sub.i, 196
  %conv = trunc i32 %sub.ptr.div.i to i16
  %command_id = getelementptr inbounds %struct.nvme_completion, ptr %11, i32 0, i32 3
  %30 = ptrtoint ptr %command_id to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %command_id, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %conv)
  %tobool.not.i = icmp eq i16 %conv, 0
  %32 = and i16 %31, 4095
  call void @__sanitizer_cov_trace_const_cmp2(i16 30, i16 %32)
  %cmp.i = icmp ugt i16 %32, 30
  %33 = and i1 %cmp.i, %tobool.not.i
  br i1 %33, label %if.then22, label %if.else, !prof !337

if.then22:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #13
  %ctrl24 = getelementptr inbounds %struct.nvme_rdma_ctrl, ptr %27, i32 0, i32 11
  %status25 = getelementptr inbounds %struct.nvme_completion, ptr %11, i32 0, i32 4
  %34 = ptrtoint ptr %status25 to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %status25, align 2
  tail call void @nvme_complete_async_event(ptr noundef %ctrl24, i16 noundef zeroext %35, ptr noundef %11) #11
  br label %if.end26

if.else:                                          ; preds = %if.end14
  %36 = icmp eq ptr %29, %5
  br i1 %36, label %if.then.i.i, label %if.end.i.i

if.then.i.i:                                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  %tags.i.i = getelementptr inbounds %struct.nvme_rdma_ctrl, ptr %27, i32 0, i32 6, i32 11
  %37 = ptrtoint ptr %tags.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %tags.i.i, align 4
  br label %nvme_rdma_tagset.exit.i

if.end.i.i:                                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  %tags2.i.i = getelementptr inbounds %struct.nvme_rdma_ctrl, ptr %27, i32 0, i32 1, i32 11
  %39 = ptrtoint ptr %tags2.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %tags2.i.i, align 4
  %sub.i.i = add nsw i32 %sub.ptr.div.i, -1
  %arrayidx3.i.i = getelementptr ptr, ptr %40, i32 %sub.i.i
  br label %nvme_rdma_tagset.exit.i

nvme_rdma_tagset.exit.i:                          ; preds = %if.end.i.i, %if.then.i.i
  %retval.0.in.i.i = phi ptr [ %38, %if.then.i.i ], [ %arrayidx3.i.i, %if.end.i.i ]
  %41 = ptrtoint ptr %retval.0.in.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %retval.0.i.i = load ptr, ptr %retval.0.in.i.i, align 4
  %conv5.i.i = zext i16 %32 to i32
  %42 = ptrtoint ptr %retval.0.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %retval.0.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %43, i32 %conv5.i.i)
  %cmp.i.i.i = icmp ugt i32 %43, %conv5.i.i
  br i1 %cmp.i.i.i, label %blk_mq_tag_to_rq.exit.i.i, label %nvme_rdma_tagset.exit.i.do.end.i.i_crit_edge

nvme_rdma_tagset.exit.i.do.end.i.i_crit_edge:     ; preds = %nvme_rdma_tagset.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end.i.i

blk_mq_tag_to_rq.exit.i.i:                        ; preds = %nvme_rdma_tagset.exit.i
  %rqs.i.i.i = getelementptr inbounds %struct.blk_mq_tags, ptr %retval.0.i.i, i32 0, i32 5
  %44 = ptrtoint ptr %rqs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %rqs.i.i.i, align 4
  %arrayidx.i.i.i = getelementptr ptr, ptr %45, i32 %conv5.i.i
  %46 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %arrayidx.i.i.i, align 4
  tail call void asm sideeffect "pld\09${0:a}", "r"(ptr %47) #11, !srcloc !345
  %48 = ptrtoint ptr %rqs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %rqs.i.i.i, align 4
  %arrayidx2.i.i.i = getelementptr ptr, ptr %49, i32 %conv5.i.i
  %50 = ptrtoint ptr %arrayidx2.i.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %arrayidx2.i.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %51, null
  br i1 %tobool.not.i.i, label %blk_mq_tag_to_rq.exit.i.i.do.end.i.i_crit_edge, label %if.end.i78.i, !prof !337

blk_mq_tag_to_rq.exit.i.i.do.end.i.i_crit_edge:   ; preds = %blk_mq_tag_to_rq.exit.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end.i.i

do.end.i.i:                                       ; preds = %blk_mq_tag_to_rq.exit.i.i.do.end.i.i_crit_edge, %nvme_rdma_tagset.exit.i.do.end.i.i_crit_edge
  %call10.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.100, i32 noundef %conv5.i.i) #15
  br label %do.end.i

if.end.i78.i:                                     ; preds = %blk_mq_tag_to_rq.exit.i.i
  %52 = lshr i16 %31, 12
  %genctr12.i.i = getelementptr %struct.request, ptr %51, i32 1, i32 4
  %53 = ptrtoint ptr %genctr12.i.i to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %genctr12.i.i, align 8
  %55 = and i8 %54, 15
  %56 = zext i8 %55 to i16
  call void @__sanitizer_cov_trace_cmp2(i16 %52, i16 %56)
  %cmp.not.i.i = icmp eq i16 %52, %56
  br i1 %cmp.not.i.i, label %if.end.i, label %do.end26.i.i, !prof !338

do.end26.i.i:                                     ; preds = %if.end.i78.i
  call void @__sanitizer_cov_trace_pc() #13
  %conv1.i.i = zext i16 %52 to i32
  %ctrl.i.i = getelementptr %struct.request, ptr %51, i32 1, i32 6
  %57 = ptrtoint ptr %ctrl.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %ctrl.i.i, align 8
  %device.i.i = getelementptr inbounds %struct.nvme_ctrl, ptr %58, i32 0, i32 17
  %59 = ptrtoint ptr %device.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %device.i.i, align 8
  %and33.i.i = zext i8 %55 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %60, ptr noundef nonnull @.str.104, i32 noundef %conv5.i.i, i32 noundef %conv1.i.i, i32 noundef %and33.i.i) #15
  br label %do.end.i

do.end.i:                                         ; preds = %do.end26.i.i, %do.end.i.i
  %61 = ptrtoint ptr %ctrl.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %ctrl.i, align 4
  %device.i = getelementptr inbounds %struct.nvme_rdma_ctrl, ptr %62, i32 0, i32 11, i32 17
  %63 = ptrtoint ptr %device.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %device.i, align 8
  %65 = ptrtoint ptr %command_id to i32
  call void @__asan_load2_noabort(i32 %65)
  %66 = load i16, ptr %command_id, align 4
  %conv.i52 = zext i16 %66 to i32
  %qp.i = getelementptr inbounds %struct.nvme_rdma_queue, ptr %5, i32 0, i32 6
  %67 = ptrtoint ptr %qp.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %qp.i, align 4
  %qp_num.i = getelementptr inbounds %struct.ib_qp, ptr %68, i32 0, i32 19
  %69 = ptrtoint ptr %qp_num.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %qp_num.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %64, ptr noundef nonnull @.str.92, i32 noundef %conv.i52, i32 noundef %70) #15
  %71 = ptrtoint ptr %ctrl.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %ctrl.i, align 4
  %ctrl1.i.i = getelementptr inbounds %struct.nvme_rdma_ctrl, ptr %72, i32 0, i32 11
  %call.i.i = tail call zeroext i1 @nvme_change_ctrl_state(ptr noundef %ctrl1.i.i, i32 noundef 2) #11
  br i1 %call.i.i, label %do.end.i81.i, label %do.end.i.if.end26_crit_edge

do.end.i.if.end26_crit_edge:                      ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end26

do.end.i81.i:                                     ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %device.i80.i = getelementptr inbounds %struct.nvme_rdma_ctrl, ptr %72, i32 0, i32 11, i32 17
  %73 = ptrtoint ptr %device.i80.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %device.i80.i, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %74, ptr noundef nonnull @.str.34) #15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nvme_reset_wq to i32))
  %75 = load ptr, ptr @nvme_reset_wq, align 4
  %err_work.i.i = getelementptr inbounds %struct.nvme_rdma_ctrl, ptr %72, i32 0, i32 2
  %call.i.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %75, ptr noundef %err_work.i.i) #11
  br label %if.end26

if.end.i:                                         ; preds = %if.end.i78.i
  %add.ptr.i.i = getelementptr %struct.request, ptr %51, i32 1
  %status.i = getelementptr inbounds %struct.nvme_completion, ptr %11, i32 0, i32 4
  %76 = ptrtoint ptr %status.i to i32
  call void @__asan_load2_noabort(i32 %76)
  %77 = load i16, ptr %status.i, align 2
  %status6.i = getelementptr %struct.request, ptr %51, i32 1, i32 13
  %78 = ptrtoint ptr %status6.i to i32
  call void @__asan_store2_noabort(i32 %78)
  store i16 %77, ptr %status6.i, align 8
  %result.i = getelementptr %struct.request, ptr %51, i32 1, i32 12
  %79 = ptrtoint ptr %11 to i32
  call void @__asan_load8_noabort(i32 %79)
  %80 = load i64, ptr %11, align 8
  %81 = ptrtoint ptr %result.i to i32
  call void @__asan_store8_noabort(i32 %81)
  store i64 %80, ptr %result.i, align 8
  %wc_flags.i = getelementptr inbounds %struct.ib_wc, ptr %wc, i32 0, i32 9
  %82 = ptrtoint ptr %wc_flags.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %wc_flags.i, align 8
  %and.i = and i32 %83, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool8.not.i = icmp eq i32 %and.i, 0
  %mr28.i = getelementptr %struct.request, ptr %51, i32 1, i32 8
  %84 = ptrtoint ptr %mr28.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %mr28.i, align 8
  %tobool29.not.i = icmp eq ptr %85, null
  br i1 %tobool8.not.i, label %if.else.i, label %if.then9.i

if.then9.i:                                       ; preds = %if.end.i
  br i1 %tobool29.not.i, label %if.then9.i.cond.end.i_crit_edge, label %lor.rhs.i, !prof !337

if.then9.i.cond.end.i_crit_edge:                  ; preds = %if.then9.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.end.i

lor.rhs.i:                                        ; preds = %if.then9.i
  %ex.i = getelementptr inbounds %struct.ib_wc, ptr %wc, i32 0, i32 6
  %86 = ptrtoint ptr %ex.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %ex.i, align 4
  %rkey.i = getelementptr inbounds %struct.ib_mr, ptr %85, i32 0, i32 3
  %88 = ptrtoint ptr %rkey.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %rkey.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %87, i32 %89)
  %cmp.not.i = icmp eq i32 %87, %89
  br i1 %cmp.not.i, label %lor.rhs.i.if.end52.i_crit_edge, label %lor.rhs.i.cond.end.i_crit_edge, !prof !338

lor.rhs.i.cond.end.i_crit_edge:                   ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.end.i

lor.rhs.i.if.end52.i_crit_edge:                   ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end52.i

cond.end.i:                                       ; preds = %lor.rhs.i.cond.end.i_crit_edge, %if.then9.i.cond.end.i_crit_edge
  %cond.i = phi i32 [ 0, %if.then9.i.cond.end.i_crit_edge ], [ %89, %lor.rhs.i.cond.end.i_crit_edge ]
  %90 = ptrtoint ptr %ctrl.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %.pn.i = load ptr, ptr %ctrl.i, align 4
  %.in.i = getelementptr inbounds %struct.nvme_rdma_ctrl, ptr %.pn.i, i32 0, i32 11, i32 17
  %91 = ptrtoint ptr %.in.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %.in.i, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %92, ptr noundef nonnull @.str.95, i32 noundef %cond.i) #15
  %93 = ptrtoint ptr %ctrl.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %ctrl.i, align 4
  tail call fastcc void @nvme_rdma_error_recovery(ptr noundef %94) #11
  br label %if.end52.i

if.else.i:                                        ; preds = %if.end.i
  br i1 %tobool29.not.i, label %if.else.i.if.end52.i_crit_edge, label %if.then30.i

if.else.i.if.end52.i_crit_edge:                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end52.i

if.then30.i:                                      ; preds = %if.else.i
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %wr.i.i) #11
  %95 = call ptr @memset(ptr %wr.i.i, i32 255, i32 40)
  %96 = ptrtoint ptr %wr.i.i to i32
  call void @__asan_store4_noabort(i32 %96)
  store ptr null, ptr %wr.i.i, align 8
  %97 = getelementptr inbounds %struct.ib_send_wr, ptr %wr.i.i, i32 0, i32 1
  %opcode.i.i = getelementptr inbounds %struct.ib_send_wr, ptr %wr.i.i, i32 0, i32 4
  %98 = call ptr @memset(ptr %97, i32 0, i32 16)
  %99 = ptrtoint ptr %opcode.i.i to i32
  call void @__asan_store4_noabort(i32 %99)
  store i32 7, ptr %opcode.i.i, align 8
  %send_flags.i.i = getelementptr inbounds %struct.ib_send_wr, ptr %wr.i.i, i32 0, i32 5
  %100 = ptrtoint ptr %send_flags.i.i to i32
  call void @__asan_store4_noabort(i32 %100)
  store i32 2, ptr %send_flags.i.i, align 4
  %ex.i.i = getelementptr inbounds %struct.ib_send_wr, ptr %wr.i.i, i32 0, i32 6
  %101 = ptrtoint ptr %mr28.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %mr28.i, align 8
  %rkey.i.i = getelementptr inbounds %struct.ib_mr, ptr %102, i32 0, i32 3
  %103 = ptrtoint ptr %rkey.i.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %rkey.i.i, align 4
  %105 = ptrtoint ptr %ex.i.i to i32
  call void @__asan_store4_noabort(i32 %105)
  store i32 %104, ptr %ex.i.i, align 8
  %reg_cqe.i.i = getelementptr %struct.request, ptr %51, i32 2, i32 6
  %106 = ptrtoint ptr %reg_cqe.i.i to i32
  call void @__asan_store4_noabort(i32 %106)
  store ptr @nvme_rdma_inv_rkey_done, ptr %reg_cqe.i.i, align 8
  %107 = ptrtoint ptr %97 to i32
  call void @__asan_store4_noabort(i32 %107)
  store ptr %reg_cqe.i.i, ptr %97, align 8
  %qp.i.i = getelementptr inbounds %struct.nvme_rdma_queue, ptr %5, i32 0, i32 6
  %108 = ptrtoint ptr %qp.i.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %qp.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %dummy.i.i.i) #11
  %110 = ptrtoint ptr %dummy.i.i.i to i32
  call void @__asan_store4_noabort(i32 %110)
  store ptr inttoptr (i32 -1 to ptr), ptr %dummy.i.i.i, align 4, !annotation !342
  %111 = ptrtoint ptr %109 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %109, align 4
  %post_send.i.i.i = getelementptr inbounds %struct.ib_device, ptr %112, i32 0, i32 1, i32 6
  %113 = ptrtoint ptr %post_send.i.i.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %post_send.i.i.i, align 4
  %call.i.i82.i = call i32 %114(ptr noundef %109, ptr noundef nonnull %wr.i.i, ptr noundef nonnull %dummy.i.i.i) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dummy.i.i.i) #11
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %wr.i.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i82.i)
  %cmp32.i = icmp slt i32 %call.i.i82.i, 0
  br i1 %cmp32.i, label %do.end43.i, label %if.then30.i.if.end26_crit_edge, !prof !337

if.then30.i.if.end26_crit_edge:                   ; preds = %if.then30.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end26

do.end43.i:                                       ; preds = %if.then30.i
  call void @__sanitizer_cov_trace_pc() #13
  %115 = ptrtoint ptr %ctrl.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %ctrl.i, align 4
  %device46.i = getelementptr inbounds %struct.nvme_rdma_ctrl, ptr %116, i32 0, i32 11, i32 17
  %117 = ptrtoint ptr %device46.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %device46.i, align 8
  %119 = ptrtoint ptr %mr28.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %mr28.i, align 8
  %rkey48.i = getelementptr inbounds %struct.ib_mr, ptr %120, i32 0, i32 3
  %121 = ptrtoint ptr %rkey48.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %rkey48.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %118, ptr noundef nonnull @.str.98, i32 noundef %122, i32 noundef %call.i.i82.i) #15
  %123 = ptrtoint ptr %ctrl.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %ctrl.i, align 4
  call fastcc void @nvme_rdma_error_recovery(ptr noundef %124) #11
  br label %if.end26

if.end52.i:                                       ; preds = %if.else.i.if.end52.i_crit_edge, %cond.end.i, %lor.rhs.i.if.end52.i_crit_edge
  tail call fastcc void @nvme_rdma_end_request(ptr noundef %add.ptr.i.i) #11
  br label %if.end26

if.end26:                                         ; preds = %if.end52.i, %do.end43.i, %if.then30.i.if.end26_crit_edge, %do.end.i81.i, %do.end.i.if.end26_crit_edge, %if.then22
  %125 = ptrtoint ptr %dma to i32
  call void @__asan_load8_noabort(i32 %125)
  %126 = load i64, ptr %dma, align 8
  %127 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %9, align 8
  %conv.i53 = trunc i64 %126 to i32
  call void @dma_sync_single_for_device(ptr noundef %128, i32 noundef %conv.i53, i32 noundef 16, i32 noundef 2) #11
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %wr.i) #11
  %129 = call ptr @memset(ptr %wr.i, i32 255, i32 16)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %list.i) #11
  %130 = getelementptr inbounds %struct.ib_sge, ptr %list.i, i32 0, i32 1
  %131 = getelementptr inbounds %struct.ib_sge, ptr %list.i, i32 0, i32 2
  %132 = ptrtoint ptr %dma to i32
  call void @__asan_load8_noabort(i32 %132)
  %133 = load i64, ptr %dma, align 8
  %134 = ptrtoint ptr %list.i to i32
  call void @__asan_store8_noabort(i32 %134)
  store i64 %133, ptr %list.i, align 8
  %135 = ptrtoint ptr %130 to i32
  call void @__asan_store4_noabort(i32 %135)
  store i32 16, ptr %130, align 8
  %136 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %device, align 4
  %pd.i = getelementptr inbounds %struct.nvme_rdma_device, ptr %137, i32 0, i32 1
  %138 = ptrtoint ptr %pd.i to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %pd.i, align 4
  %140 = ptrtoint ptr %139 to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load i32, ptr %139, align 4
  %142 = ptrtoint ptr %131 to i32
  call void @__asan_store4_noabort(i32 %142)
  store i32 %141, ptr %131, align 4
  %143 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %143)
  store ptr @nvme_rdma_recv_done, ptr %1, align 8
  %144 = ptrtoint ptr %wr.i to i32
  call void @__asan_store4_noabort(i32 %144)
  store ptr null, ptr %wr.i, align 8
  %145 = getelementptr inbounds %struct.ib_recv_wr, ptr %wr.i, i32 0, i32 1
  %146 = ptrtoint ptr %145 to i32
  call void @__asan_store4_noabort(i32 %146)
  store ptr %1, ptr %145, align 8
  %sg_list.i = getelementptr inbounds %struct.ib_recv_wr, ptr %wr.i, i32 0, i32 2
  %147 = ptrtoint ptr %sg_list.i to i32
  call void @__asan_store4_noabort(i32 %147)
  store ptr %list.i, ptr %sg_list.i, align 8
  %num_sge.i = getelementptr inbounds %struct.ib_recv_wr, ptr %wr.i, i32 0, i32 3
  %148 = ptrtoint ptr %num_sge.i to i32
  call void @__asan_store4_noabort(i32 %148)
  store i32 1, ptr %num_sge.i, align 4
  %qp.i55 = getelementptr inbounds %struct.nvme_rdma_queue, ptr %5, i32 0, i32 6
  %149 = ptrtoint ptr %qp.i55 to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %qp.i55, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %dummy.i.i) #11
  %151 = ptrtoint ptr %dummy.i.i to i32
  call void @__asan_store4_noabort(i32 %151)
  store ptr inttoptr (i32 -1 to ptr), ptr %dummy.i.i, align 4, !annotation !342
  %152 = ptrtoint ptr %150 to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %150, align 4
  %post_recv.i.i = getelementptr inbounds %struct.ib_device, ptr %153, i32 0, i32 1, i32 7
  %154 = ptrtoint ptr %post_recv.i.i to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %post_recv.i.i, align 4
  %call.i.i56 = call i32 %155(ptr noundef %150, ptr noundef nonnull %wr.i, ptr noundef nonnull %dummy.i.i) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dummy.i.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i56)
  %tobool.not.i57 = icmp eq i32 %call.i.i56, 0
  br i1 %tobool.not.i57, label %if.end26.nvme_rdma_post_recv.exit_crit_edge, label %do.end.i59, !prof !338

if.end26.nvme_rdma_post_recv.exit_crit_edge:      ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #13
  br label %nvme_rdma_post_recv.exit

do.end.i59:                                       ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #13
  %156 = ptrtoint ptr %ctrl.i to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %ctrl.i, align 4
  %device5.i = getelementptr inbounds %struct.nvme_rdma_ctrl, ptr %157, i32 0, i32 11, i32 17
  %158 = ptrtoint ptr %device5.i to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %device5.i, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %159, ptr noundef nonnull @.str.37, ptr noundef nonnull @.str.88, i32 noundef %call.i.i56) #15
  br label %nvme_rdma_post_recv.exit

nvme_rdma_post_recv.exit:                         ; preds = %do.end.i59, %if.end26.nvme_rdma_post_recv.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %list.i) #11
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %wr.i) #11
  br label %cleanup

cleanup:                                          ; preds = %nvme_rdma_post_recv.exit, %do.end, %if.then
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvme_complete_async_event(ptr noundef, i16 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @nvme_rdma_end_request(ptr noundef %req) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %req, i32 -192
  %ref = getelementptr inbounds %struct.nvme_rdma_request, ptr %req, i32 0, i32 5
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %ref, i32 noundef 4) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !339
  tail call void @llvm.prefetch.p0(ptr %ref, i32 1, i32 3, i32 1) #11
  %0 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %ref, ptr %ref, i32 1, ptr elementtype(i32) %ref) #11, !srcloc !340
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i)
  %cmp.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i, label %if.end, label %if.end5.i.i.i

if.end5.i.i.i:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %.not.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i, label %if.end5.i.i.i.cleanup_crit_edge, label %if.then10.i.i.i, !prof !338

if.end5.i.i.i.cleanup_crit_edge:                  ; preds = %if.end5.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then10.i.i.i:                                  ; preds = %if.end5.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @refcount_warn_saturate(ptr noundef %ref, i32 noundef 3) #11
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !341
  %status = getelementptr inbounds %struct.nvme_rdma_request, ptr %req, i32 0, i32 4
  %1 = ptrtoint ptr %status to i32
  call void @__asan_load2_noabort(i32 %1)
  %2 = load i16, ptr %status, align 8
  %result = getelementptr inbounds %struct.nvme_rdma_request, ptr %req, i32 0, i32 3
  %3 = ptrtoint ptr %result to i32
  call void @__asan_load8_noabort(i32 %3)
  %.unpack = load i64, ptr %result, align 8
  %ctrl1.i = getelementptr i8, ptr %req, i32 24
  %4 = ptrtoint ptr %ctrl1.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ctrl1.i, align 8
  %quirks.i = getelementptr inbounds %struct.nvme_ctrl, ptr %5, i32 0, i32 61
  %6 = ptrtoint ptr %quirks.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %quirks.i, align 8
  %and.i = and i32 %7, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %if.end.if.end.i_crit_edge

if.end.if.end.i_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %genctr.i = getelementptr i8, ptr %req, i32 16
  %8 = ptrtoint ptr %genctr.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %genctr.i, align 8
  %inc.i = add i8 %9, 1
  store i8 %inc.i, ptr %genctr.i, align 8
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %if.end.if.end.i_crit_edge
  %10 = tail call i16 @llvm.bswap.i16(i16 %2) #11
  %11 = lshr i16 %10, 1
  %status3.i = getelementptr i8, ptr %req, i32 20
  %12 = ptrtoint ptr %status3.i to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 %11, ptr %status3.i, align 4
  %result4.i = getelementptr i8, ptr %req, i32 8
  %13 = ptrtoint ptr %result4.i to i32
  call void @__asan_store8_noabort(i32 %13)
  store i64 %.unpack, ptr %result4.i, align 8
  tail call void @nvme_should_fail(ptr noundef %add.ptr.i) #11
  %14 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %add.ptr.i, align 8
  %queue_flags.i.i = getelementptr inbounds %struct.request_queue, ptr %15, i32 0, i32 11
  %16 = ptrtoint ptr %queue_flags.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %queue_flags.i.i, align 4
  %18 = and i32 %17, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool.not.i.i = icmp eq i32 %18, 0
  br i1 %tobool.not.i.i, label %if.end.i.nvme_try_complete_req.exit_crit_edge, label %blk_should_fake_timeout.exit.i

if.end.i.nvme_try_complete_req.exit_crit_edge:    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %nvme_try_complete_req.exit

blk_should_fake_timeout.exit.i:                   ; preds = %if.end.i
  %call1.i.i = tail call zeroext i1 @__blk_should_fake_timeout(ptr noundef %15) #11
  br i1 %call1.i.i, label %blk_should_fake_timeout.exit.i.cleanup_crit_edge, label %blk_should_fake_timeout.exit.i.nvme_try_complete_req.exit_crit_edge, !prof !337

blk_should_fake_timeout.exit.i.nvme_try_complete_req.exit_crit_edge: ; preds = %blk_should_fake_timeout.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %nvme_try_complete_req.exit

blk_should_fake_timeout.exit.i.cleanup_crit_edge: ; preds = %blk_should_fake_timeout.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

nvme_try_complete_req.exit:                       ; preds = %blk_should_fake_timeout.exit.i.nvme_try_complete_req.exit_crit_edge, %if.end.i.nvme_try_complete_req.exit_crit_edge
  %call10.i = tail call zeroext i1 @blk_mq_complete_request_remote(ptr noundef %add.ptr.i) #11
  br i1 %call10.i, label %nvme_try_complete_req.exit.cleanup_crit_edge, label %if.then3

nvme_try_complete_req.exit.cleanup_crit_edge:     ; preds = %nvme_try_complete_req.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then3:                                         ; preds = %nvme_try_complete_req.exit
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @nvme_rdma_complete_rq(ptr noundef %add.ptr.i)
  br label %cleanup

cleanup:                                          ; preds = %if.then3, %nvme_try_complete_req.exit.cleanup_crit_edge, %blk_should_fake_timeout.exit.i.cleanup_crit_edge, %if.then10.i.i.i, %if.end5.i.i.i.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nvme_rdma_inv_rkey_done(ptr nocapture noundef readnone %cq, ptr nocapture noundef readonly %wc) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %status = getelementptr inbounds %struct.ib_wc, ptr %wc, i32 0, i32 1
  %0 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %status, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp.not = icmp eq i32 %1, 0
  br i1 %cmp.not, label %if.else, label %if.then, !prof !338

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call fastcc void @nvme_rdma_wr_error(ptr noundef %wc, ptr noundef nonnull @.str.106)
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %2 = ptrtoint ptr %wc to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %wc, align 8
  %add.ptr = getelementptr i8, ptr %3, i32 -216
  tail call fastcc void @nvme_rdma_end_request(ptr noundef %add.ptr)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nvme_rdma_complete_rq(ptr noundef %rq) #3 align 64 {
entry:
  %mr_status.i = alloca %struct.ib_mr_status, align 8
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %queue1 = getelementptr %struct.request, ptr %rq, i32 2, i32 7
  %0 = ptrtoint ptr %queue1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %queue1, align 4
  %device = getelementptr inbounds %struct.nvme_rdma_queue, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %device, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %use_sig_mr = getelementptr %struct.request, ptr %rq, i32 2, i32 11
  %6 = ptrtoint ptr %use_sig_mr to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %use_sig_mr, align 4, !range !336
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not = icmp eq i8 %7, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %mr_status.i) #11
  %8 = call ptr @memset(ptr %mr_status.i, i32 255, i32 40)
  %mr.i = getelementptr %struct.request, ptr %rq, i32 1, i32 8
  %9 = ptrtoint ptr %mr.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %mr.i, align 8
  %call1.i = call i32 @ib_check_mr_status(ptr noundef %10, i32 noundef 1, ptr noundef nonnull %mr_status.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %do.end.i

do.end.i:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  %call2.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.107, i32 noundef %call1.i) #15
  %status.i = getelementptr %struct.request, ptr %rq, i32 1, i32 5
  %11 = ptrtoint ptr %status.i to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 385, ptr %status.i, align 4
  br label %nvme_rdma_check_pi_status.exit

if.end.i:                                         ; preds = %if.then
  %12 = ptrtoint ptr %mr_status.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %mr_status.i, align 8
  %and.i = and i32 %13, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool4.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool4.not.i, label %if.end.i.nvme_rdma_check_pi_status.exit_crit_edge, label %if.then5.i

if.end.i.nvme_rdma_check_pi_status.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %nvme_rdma_check_pi_status.exit

if.then5.i:                                       ; preds = %if.end.i
  %sig_err.i = getelementptr inbounds %struct.ib_mr_status, ptr %mr_status.i, i32 0, i32 1
  %14 = ptrtoint ptr %sig_err.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %sig_err.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %15)
  %16 = icmp ult i32 %15, 3
  br i1 %16, label %switch.lookup, label %if.then5.i.do.end16.i_crit_edge

if.then5.i.do.end16.i_crit_edge:                  ; preds = %if.then5.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end16.i

switch.lookup:                                    ; preds = %if.then5.i
  call void @__sanitizer_cov_trace_pc() #13
  %switch.gep = getelementptr inbounds [3 x i16], ptr @switch.table.nvme_rdma_complete_rq, i32 0, i32 %15
  %17 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load2_noabort(i32 %17)
  %switch.load = load i16, ptr %switch.gep, align 2
  %status7.i = getelementptr %struct.request, ptr %rq, i32 1, i32 5
  %18 = ptrtoint ptr %status7.i to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 %switch.load, ptr %status7.i, align 4
  br label %do.end16.i

do.end16.i:                                       ; preds = %switch.lookup, %if.then5.i.do.end16.i_crit_edge
  %expected.i = getelementptr inbounds %struct.ib_mr_status, ptr %mr_status.i, i32 0, i32 1, i32 1
  %19 = ptrtoint ptr %expected.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %expected.i, align 4
  %actual.i = getelementptr inbounds %struct.ib_mr_status, ptr %mr_status.i, i32 0, i32 1, i32 2
  %21 = ptrtoint ptr %actual.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %actual.i, align 8
  %call22.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.110, i32 noundef %15, i32 noundef %20, i32 noundef %22) #15
  br label %nvme_rdma_check_pi_status.exit

nvme_rdma_check_pi_status.exit:                   ; preds = %do.end16.i, %if.end.i.nvme_rdma_check_pi_status.exit_crit_edge, %do.end.i
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %mr_status.i) #11
  br label %if.end

if.end:                                           ; preds = %nvme_rdma_check_pi_status.exit, %entry.if.end_crit_edge
  call fastcc void @nvme_rdma_unmap_data(ptr noundef %1, ptr noundef %rq)
  %dma = getelementptr %struct.request, ptr %rq, i32 1, i32 10
  %23 = ptrtoint ptr %dma to i32
  call void @__asan_load8_noabort(i32 %23)
  %24 = load i64, ptr %dma, align 8
  %25 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %5, align 8
  %conv.i = trunc i64 %24 to i32
  call void @dma_unmap_page_attrs(ptr noundef %26, i32 noundef %conv.i, i32 noundef 64, i32 noundef 1, i32 noundef 0) #11
  call void @nvme_complete_rq(ptr noundef %rq) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvme_should_fail(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @blk_mq_complete_request_remote(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__blk_should_fake_timeout(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @nvme_rdma_unmap_data(ptr nocapture noundef readonly %queue, ptr noundef %rq) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr %struct.request, ptr %rq, i32 1
  %device = getelementptr inbounds %struct.nvme_rdma_queue, ptr %queue, i32 0, i32 4
  %0 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %qp = getelementptr inbounds %struct.nvme_rdma_queue, ptr %queue, i32 0, i32 6
  %4 = ptrtoint ptr %qp to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %qp, align 4
  %rdma_mrs = getelementptr inbounds %struct.ib_qp, ptr %5, i32 0, i32 6
  %rq_flags.i = getelementptr inbounds %struct.request, ptr %rq, i32 0, i32 4
  %6 = ptrtoint ptr %rq_flags.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %rq_flags.i, align 8
  %and.i = and i32 %7, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %blk_rq_nr_phys_segments.exit, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

blk_rq_nr_phys_segments.exit:                     ; preds = %entry
  %nr_phys_segments.i = getelementptr inbounds %struct.request, ptr %rq, i32 0, i32 19
  %8 = ptrtoint ptr %nr_phys_segments.i to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %nr_phys_segments.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %9)
  %tobool.not = icmp eq i16 %9, 0
  br i1 %tobool.not, label %blk_rq_nr_phys_segments.exit.cleanup_crit_edge, label %blk_rq_nr_phys_segments.exit.if.end_crit_edge

blk_rq_nr_phys_segments.exit.if.end_crit_edge:    ; preds = %blk_rq_nr_phys_segments.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

blk_rq_nr_phys_segments.exit.cleanup_crit_edge:   ; preds = %blk_rq_nr_phys_segments.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %blk_rq_nr_phys_segments.exit.if.end_crit_edge, %entry.if.end_crit_edge
  %cmd_flags.i = getelementptr inbounds %struct.request, ptr %rq, i32 0, i32 3
  %10 = ptrtoint ptr %cmd_flags.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %cmd_flags.i, align 4
  %12 = and i32 %11, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool.i.not = icmp eq i32 %12, 0
  br i1 %tobool.i.not, label %if.end.if.end9_crit_edge, label %if.then4

if.end.if.end9_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end9

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %metadata_sgl = getelementptr %struct.request, ptr %rq, i32 2, i32 10
  %13 = ptrtoint ptr %metadata_sgl to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %metadata_sgl, align 8
  %sg_table = getelementptr inbounds %struct.nvme_rdma_sgl, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %sg_table to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %sg_table, align 4
  %17 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %14, align 4
  %and.i50 = and i32 %11, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i50)
  %tobool.i51.not = icmp eq i32 %and.i50, 0
  %cond = select i1 %tobool.i51.not, i32 2, i32 1
  %19 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %3, align 8
  tail call void @dma_unmap_sg_attrs(ptr noundef %20, ptr noundef %16, i32 noundef %18, i32 noundef %cond, i32 noundef 0) #11
  %21 = ptrtoint ptr %metadata_sgl to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %metadata_sgl, align 8
  %sg_table8 = getelementptr inbounds %struct.nvme_rdma_sgl, ptr %22, i32 0, i32 1
  tail call void @sg_free_table_chained(ptr noundef %sg_table8, i32 noundef 1) #11
  br label %if.end9

if.end9:                                          ; preds = %if.then4, %if.end.if.end9_crit_edge
  %use_sig_mr = getelementptr %struct.request, ptr %rq, i32 2, i32 11
  %23 = ptrtoint ptr %use_sig_mr to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %use_sig_mr, align 4, !range !336
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %24)
  %tobool10.not = icmp eq i8 %24, 0
  br i1 %tobool10.not, label %if.end9.if.end13_crit_edge, label %if.then11

if.end9.if.end13_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end13

if.then11:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #13
  %25 = ptrtoint ptr %qp to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %qp, align 4
  %sig_mrs = getelementptr inbounds %struct.ib_qp, ptr %26, i32 0, i32 7
  br label %if.end13

if.end13:                                         ; preds = %if.then11, %if.end9.if.end13_crit_edge
  %pool.0 = phi ptr [ %sig_mrs, %if.then11 ], [ %rdma_mrs, %if.end9.if.end13_crit_edge ]
  %mr = getelementptr %struct.request, ptr %rq, i32 1, i32 8
  %27 = ptrtoint ptr %mr to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %mr, align 8
  %tobool14.not = icmp eq ptr %28, null
  br i1 %tobool14.not, label %if.end13.if.end19_crit_edge, label %if.then15

if.end13.if.end19_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end19

if.then15:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #13
  %29 = ptrtoint ptr %qp to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %qp, align 4
  tail call void @ib_mr_pool_put(ptr noundef %30, ptr noundef %pool.0, ptr noundef nonnull %28) #11
  %31 = ptrtoint ptr %mr to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr null, ptr %mr, align 8
  br label %if.end19

if.end19:                                         ; preds = %if.then15, %if.end13.if.end19_crit_edge
  %data_sgl = getelementptr %struct.request, ptr %rq, i32 2, i32 8
  %sg_table20 = getelementptr inbounds %struct.nvme_rdma_request, ptr %add.ptr.i, i32 0, i32 11, i32 1
  %32 = ptrtoint ptr %sg_table20 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %sg_table20, align 4
  %34 = ptrtoint ptr %data_sgl to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %data_sgl, align 8
  %36 = ptrtoint ptr %cmd_flags.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %cmd_flags.i, align 4
  %and.i52 = and i32 %37, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i52)
  %tobool.i53.not = icmp eq i32 %and.i52, 0
  %cond27 = select i1 %tobool.i53.not, i32 2, i32 1
  %38 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %3, align 8
  tail call void @dma_unmap_sg_attrs(ptr noundef %39, ptr noundef %33, i32 noundef %35, i32 noundef %cond27, i32 noundef 0) #11
  tail call void @sg_free_table_chained(ptr noundef %sg_table20, i32 noundef 2) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end19, %blk_rq_nr_phys_segments.exit.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvme_complete_rq(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ib_check_mr_status(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @sg_free_table_chained(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ib_mr_pool_put(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_unmap_sg_attrs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid readnone willreturn
declare dso_local ptr @rdma_reject_msg(ptr noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rdma_consumer_reject_data(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_for_completion_interruptible_timeout(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @is_vmalloc_addr(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_driver_string(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @debug_dma_map_single(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_map_page_attrs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @debug_dma_mapping_error(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @blk_mq_alloc_tag_set(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i8 @nvme_rdma_queue_rq(ptr nocapture noundef readonly %hctx, ptr nocapture noundef readonly %bd) #3 align 64 {
entry:
  %dummy.i.i = alloca ptr, align 4
  %wr.i = alloca %struct.ib_send_wr, align 8
  %last_sg.i.i = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %queue = getelementptr inbounds %struct.blk_mq_hw_ctx, ptr %hctx, i32 0, i32 7
  %0 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %queue, align 8
  %queuedata = getelementptr inbounds %struct.request_queue, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %queuedata to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %queuedata, align 4
  %driver_data = getelementptr inbounds %struct.blk_mq_hw_ctx, ptr %hctx, i32 0, i32 9
  %4 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_data, align 128
  %6 = ptrtoint ptr %bd to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %bd, align 4
  %add.ptr.i = getelementptr %struct.request, ptr %7, i32 1
  %sqe3 = getelementptr %struct.request, ptr %7, i32 1, i32 9
  %8 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %add.ptr.i, align 8
  %flags = getelementptr inbounds %struct.nvme_rdma_queue, ptr %5, i32 0, i32 7
  %10 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %flags, align 4
  %12 = and i32 %11, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool = icmp ne i32 %12, 0
  %tag = getelementptr inbounds %struct.request, ptr %7, i32 0, i32 5
  %13 = ptrtoint ptr %tag to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %tag, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %cmp = icmp slt i32 %14, 0
  br i1 %cmp, label %land.rhs, label %entry.if.end34_crit_edge

entry.if.end34_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end34

land.rhs:                                         ; preds = %entry
  %.b187 = load i1, ptr @nvme_rdma_queue_rq.__already_done, align 1
  br i1 %.b187, label %land.rhs.if.end34_crit_edge, label %if.then, !prof !338

land.rhs.if.end34_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end34

if.then:                                          ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @nvme_rdma_queue_rq.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 2052, i32 noundef 9, ptr noundef null) #11
  br label %if.end34

if.end34:                                         ; preds = %if.then, %land.rhs.if.end34_crit_edge, %entry.if.end34_crit_edge
  %ctrl = getelementptr inbounds %struct.nvme_rdma_queue, ptr %5, i32 0, i32 3
  %15 = ptrtoint ptr %ctrl to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %ctrl, align 4
  %ctrl42 = getelementptr inbounds %struct.nvme_rdma_ctrl, ptr %16, i32 0, i32 11
  %state.i = getelementptr inbounds %struct.nvme_rdma_ctrl, ptr %16, i32 0, i32 11, i32 1
  %17 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %state.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %18)
  %cmp.i = icmp eq i32 %18, 1
  br i1 %cmp.i, label %if.end34.if.end49_crit_edge, label %if.end.i, !prof !338

if.end34.if.end49_crit_edge:                      ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end49

if.end.i:                                         ; preds = %if.end34
  %ops.i = getelementptr inbounds %struct.nvme_rdma_ctrl, ptr %16, i32 0, i32 11, i32 5
  %19 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %ops.i, align 4
  %flags.i = getelementptr inbounds %struct.nvme_ctrl_ops, ptr %20, i32 0, i32 2
  %21 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %22, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool2.not.i = icmp ne i32 %and.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %18)
  %cmp4.i = icmp eq i32 %18, 4
  %or.cond.i = select i1 %tobool2.not.i, i1 %cmp4.i, i1 false
  br i1 %or.cond.i, label %nvme_check_ready.exit, label %if.end7.i

if.end7.i:                                        ; preds = %if.end.i
  %call.i = tail call zeroext i1 @__nvme_check_ready(ptr noundef %ctrl42, ptr noundef %7, i1 noundef zeroext %tobool) #11
  br i1 %call.i, label %if.end7.i.if.end49_crit_edge, label %if.end7.i.if.then45_crit_edge

if.end7.i.if.then45_crit_edge:                    ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then45

if.end7.i.if.end49_crit_edge:                     ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end49

nvme_check_ready.exit:                            ; preds = %if.end.i
  br i1 %tobool, label %nvme_check_ready.exit.if.end49_crit_edge, label %nvme_check_ready.exit.if.then45_crit_edge

nvme_check_ready.exit.if.then45_crit_edge:        ; preds = %nvme_check_ready.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then45

nvme_check_ready.exit.if.end49_crit_edge:         ; preds = %nvme_check_ready.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end49

if.then45:                                        ; preds = %nvme_check_ready.exit.if.then45_crit_edge, %if.end7.i.if.then45_crit_edge
  %23 = ptrtoint ptr %ctrl to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %ctrl, align 4
  %ctrl47 = getelementptr inbounds %struct.nvme_rdma_ctrl, ptr %24, i32 0, i32 11
  %call48 = tail call zeroext i8 @nvme_fail_nonready_command(ptr noundef %ctrl47, ptr noundef %7) #11
  br label %cleanup

if.end49:                                         ; preds = %nvme_check_ready.exit.if.end49_crit_edge, %if.end7.i.if.end49_crit_edge, %if.end34.if.end49_crit_edge
  %device = getelementptr inbounds %struct.nvme_rdma_queue, ptr %5, i32 0, i32 4
  %25 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %device, align 4
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %26, align 4
  %data = getelementptr inbounds %struct.nvme_rdma_request, ptr %add.ptr.i, i32 0, i32 2, i32 1
  %29 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %data, align 4
  %31 = ptrtoint ptr %28 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %28, align 8
  %call.i.i = tail call zeroext i1 @is_vmalloc_addr(ptr noundef %30) #11
  br i1 %call.i.i, label %land.rhs.i.i, label %if.end39.i.i

land.rhs.i.i:                                     ; preds = %if.end49
  %.b1.i.i = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  br i1 %.b1.i.i, label %land.rhs.i.i.ib_dma_map_single.exit_crit_edge, label %if.then.i.i, !prof !338

land.rhs.i.i.ib_dma_map_single.exit_crit_edge:    ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %ib_dma_map_single.exit

if.then.i.i:                                      ; preds = %land.rhs.i.i
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %call16.i.i = tail call ptr @dev_driver_string(ptr noundef %32) #11
  %init_name.i.i.i = getelementptr inbounds %struct.device, ptr %32, i32 0, i32 3
  %33 = ptrtoint ptr %init_name.i.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %init_name.i.i.i, align 8
  %tobool.not.i.i.i = icmp eq ptr %34, null
  br i1 %tobool.not.i.i.i, label %if.end.i.i.i, label %if.then.i.i.dev_name.exit.i.i_crit_edge

if.then.i.i.dev_name.exit.i.i_crit_edge:          ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %dev_name.exit.i.i

if.end.i.i.i:                                     ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %35 = ptrtoint ptr %32 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %32, align 4
  br label %dev_name.exit.i.i

dev_name.exit.i.i:                                ; preds = %if.end.i.i.i, %if.then.i.i.dev_name.exit.i.i_crit_edge
  %retval.0.i.i.i = phi ptr [ %36, %if.end.i.i.i ], [ %34, %if.then.i.i.dev_name.exit.i.i_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.126, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.127, ptr noundef %call16.i.i, ptr noundef %retval.0.i.i.i) #11
  br label %ib_dma_map_single.exit

if.end39.i.i:                                     ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @debug_dma_map_single(ptr noundef %32, ptr noundef %30, i32 noundef 64) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %37 = load ptr, ptr @mem_map, align 4
  %38 = ptrtoint ptr %30 to i32
  %sub.i.i = add i32 %38, 1073741824
  %shr.i.i = lshr i32 %sub.i.i, 12
  %add.ptr.i.i188 = getelementptr %struct.page, ptr %37, i32 %shr.i.i
  %and.i.i = and i32 %38, 4095
  %call41.i.i = tail call i32 @dma_map_page_attrs(ptr noundef %32, ptr noundef %add.ptr.i.i188, i32 noundef %and.i.i, i32 noundef 64, i32 noundef 1, i32 noundef 0) #11
  br label %ib_dma_map_single.exit

ib_dma_map_single.exit:                           ; preds = %if.end39.i.i, %dev_name.exit.i.i, %land.rhs.i.i.ib_dma_map_single.exit_crit_edge
  %retval.0.i.i = phi i32 [ %call41.i.i, %if.end39.i.i ], [ -1, %dev_name.exit.i.i ], [ -1, %land.rhs.i.i.ib_dma_map_single.exit_crit_edge ]
  %conv2.i = zext i32 %retval.0.i.i to i64
  %dma = getelementptr %struct.request, ptr %7, i32 1, i32 10
  %39 = ptrtoint ptr %dma to i32
  call void @__asan_store8_noabort(i32 %39)
  store i64 %conv2.i, ptr %dma, align 8
  %40 = ptrtoint ptr %28 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %28, align 8
  tail call void @debug_dma_mapping_error(ptr noundef %41, i32 noundef %retval.0.i.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %retval.0.i.i)
  %cmp.i.i = icmp eq i32 %retval.0.i.i, -1
  br i1 %cmp.i.i, label %ib_dma_map_single.exit.cleanup_crit_edge, label %if.end65

ib_dma_map_single.exit.cleanup_crit_edge:         ; preds = %ib_dma_map_single.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end65:                                         ; preds = %ib_dma_map_single.exit
  %42 = ptrtoint ptr %dma to i32
  call void @__asan_load8_noabort(i32 %42)
  %43 = load i64, ptr %dma, align 8
  %44 = ptrtoint ptr %28 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %28, align 8
  %conv.i = trunc i64 %43 to i32
  tail call void @dma_sync_single_for_cpu(ptr noundef %45, i32 noundef %conv.i, i32 noundef 64, i32 noundef 1) #11
  %call67 = tail call zeroext i8 @nvme_setup_cmd(ptr noundef %3, ptr noundef %7) #11
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %call67)
  %tobool68.not = icmp eq i8 %call67, 0
  br i1 %tobool68.not, label %if.end70, label %if.end65.unmap_qe_crit_edge

if.end65.unmap_qe_crit_edge:                      ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #13
  br label %unmap_qe

if.end70:                                         ; preds = %if.end65
  tail call void @blk_mq_start_request(ptr noundef %7) #11
  %pi_support = getelementptr inbounds %struct.nvme_rdma_queue, ptr %5, i32 0, i32 11
  %46 = ptrtoint ptr %pi_support to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %pi_support, align 4, !range !336
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %47)
  %tobool71.not = icmp eq i8 %47, 0
  br i1 %tobool71.not, label %if.end70.if.else_crit_edge, label %land.lhs.true

if.end70.if.else_crit_edge:                       ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else

land.lhs.true:                                    ; preds = %if.end70
  %48 = ptrtoint ptr %9 to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %9, align 8
  %.off = add i8 %49, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %.off)
  %switch = icmp ult i8 %.off, 2
  br i1 %switch, label %land.lhs.true78, label %land.lhs.true.if.else_crit_edge

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else

land.lhs.true78:                                  ; preds = %land.lhs.true
  %pi_type.i = getelementptr inbounds %struct.nvme_ns, ptr %3, i32 0, i32 13
  %50 = ptrtoint ptr %pi_type.i to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %pi_type.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %51)
  %tobool.not.i = icmp eq i8 %51, 0
  br i1 %tobool.not.i, label %land.lhs.true78.if.else_crit_edge, label %nvme_ns_has_pi.exit

land.lhs.true78.if.else_crit_edge:                ; preds = %land.lhs.true78
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else

nvme_ns_has_pi.exit:                              ; preds = %land.lhs.true78
  %ms.i = getelementptr inbounds %struct.nvme_ns, ptr %3, i32 0, i32 10
  %52 = ptrtoint ptr %ms.i to i32
  call void @__asan_load2_noabort(i32 %52)
  %53 = load i16, ptr %ms.i, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 8, i16 %53)
  %cmp.i189 = icmp eq i16 %53, 8
  br i1 %cmp.i189, label %nvme_ns_has_pi.exit.if.end83_crit_edge, label %nvme_ns_has_pi.exit.if.else_crit_edge

nvme_ns_has_pi.exit.if.else_crit_edge:            ; preds = %nvme_ns_has_pi.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else

nvme_ns_has_pi.exit.if.end83_crit_edge:           ; preds = %nvme_ns_has_pi.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end83

if.else:                                          ; preds = %nvme_ns_has_pi.exit.if.else_crit_edge, %land.lhs.true78.if.else_crit_edge, %land.lhs.true.if.else_crit_edge, %if.end70.if.else_crit_edge
  br label %if.end83

if.end83:                                         ; preds = %if.else, %nvme_ns_has_pi.exit.if.end83_crit_edge
  %.sink = phi i8 [ 0, %if.else ], [ 1, %nvme_ns_has_pi.exit.if.end83_crit_edge ]
  %use_sig_mr82 = getelementptr %struct.request, ptr %7, i32 2, i32 11
  %54 = ptrtoint ptr %use_sig_mr82 to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 %.sink, ptr %use_sig_mr82, align 4
  %55 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %device, align 4
  %57 = ptrtoint ptr %56 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %56, align 4
  %num_sge.i = getelementptr %struct.request, ptr %7, i32 1, i32 30, i32 0, i32 1
  %59 = ptrtoint ptr %num_sge.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 1, ptr %num_sge.i, align 8
  %ref.i = getelementptr inbounds %struct.nvme_rdma_request, ptr %add.ptr.i, i32 0, i32 5
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %ref.i, i32 noundef 4) #11
  %60 = ptrtoint ptr %ref.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store volatile i32 2, ptr %ref.i, align 4
  %flags.i191 = getelementptr inbounds %struct.nvme_common_command, ptr %9, i32 0, i32 1
  %61 = ptrtoint ptr %flags.i191 to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %flags.i191, align 1
  %63 = or i8 %62, 64
  store i8 %63, ptr %flags.i191, align 1
  %rq_flags.i.i = getelementptr inbounds %struct.request, ptr %7, i32 0, i32 4
  %64 = ptrtoint ptr %rq_flags.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %rq_flags.i.i, align 8
  %and.i.i192 = and i32 %65, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i192)
  %tobool.not.i.i = icmp eq i32 %and.i.i192, 0
  br i1 %tobool.not.i.i, label %blk_rq_nr_phys_segments.exit.i, label %if.end.i195

blk_rq_nr_phys_segments.exit.i:                   ; preds = %if.end83
  %nr_phys_segments.i.i = getelementptr inbounds %struct.request, ptr %7, i32 0, i32 19
  %66 = ptrtoint ptr %nr_phys_segments.i.i to i32
  call void @__asan_load2_noabort(i32 %66)
  %67 = load i16, ptr %nr_phys_segments.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %67)
  %tobool.not.i193 = icmp eq i16 %67, 0
  br i1 %tobool.not.i193, label %if.then.i, label %if.end.i244.i

if.then.i:                                        ; preds = %blk_rq_nr_phys_segments.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  %dptr.i.i = getelementptr inbounds %struct.nvme_common_command, ptr %9, i32 0, i32 6
  %type.i.i = getelementptr inbounds %struct.nvme_keyed_sgl_desc, ptr %dptr.i.i, i32 0, i32 3
  %68 = call ptr @memset(ptr %dptr.i.i, i32 0, i32 15)
  %69 = ptrtoint ptr %type.i.i to i32
  call void @__asan_store1_noabort(i32 %69)
  store i8 64, ptr %type.i.i, align 1
  br label %if.end100

if.end.i195:                                      ; preds = %if.end83
  call void @__sanitizer_cov_trace_pc() #13
  %add.ptr.i194 = getelementptr %struct.request, ptr %7, i32 2, i32 12
  %sg_table.i = getelementptr inbounds %struct.nvme_rdma_request, ptr %add.ptr.i, i32 0, i32 11, i32 1
  %70 = ptrtoint ptr %sg_table.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr %add.ptr.i194, ptr %sg_table.i, align 4
  br label %blk_rq_nr_phys_segments.exit246.i

if.end.i244.i:                                    ; preds = %blk_rq_nr_phys_segments.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  %add.ptr303.i = getelementptr %struct.request, ptr %7, i32 2, i32 12
  %sg_table305.i = getelementptr inbounds %struct.nvme_rdma_request, ptr %add.ptr.i, i32 0, i32 11, i32 1
  %71 = ptrtoint ptr %sg_table305.i to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr %add.ptr303.i, ptr %sg_table305.i, align 4
  br label %blk_rq_nr_phys_segments.exit246.i

blk_rq_nr_phys_segments.exit246.i:                ; preds = %if.end.i244.i, %if.end.i195
  %sg_table310.i = phi ptr [ %sg_table305.i, %if.end.i244.i ], [ %sg_table.i, %if.end.i195 ]
  %add.ptr306.i = phi ptr [ %add.ptr303.i, %if.end.i244.i ], [ %add.ptr.i194, %if.end.i195 ]
  %retval.0.i245.i = phi i16 [ %67, %if.end.i244.i ], [ 1, %if.end.i195 ]
  %data_sgl308.i = getelementptr %struct.request, ptr %7, i32 2, i32 8
  %conv8.i = zext i16 %retval.0.i245.i to i32
  %call12.i = tail call i32 @sg_alloc_table_chained(ptr noundef %sg_table310.i, i32 noundef %conv8.i, ptr noundef %add.ptr306.i, i32 noundef 2) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12.i)
  %tobool13.not.i = icmp eq i32 %call12.i, 0
  br i1 %tobool13.not.i, label %if.end15.i, label %blk_rq_nr_phys_segments.exit246.i.do.end96_crit_edge

blk_rq_nr_phys_segments.exit246.i.do.end96_crit_edge: ; preds = %blk_rq_nr_phys_segments.exit246.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end96

if.end15.i:                                       ; preds = %blk_rq_nr_phys_segments.exit246.i
  %72 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %7, align 8
  %74 = ptrtoint ptr %sg_table310.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %sg_table310.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %last_sg.i.i) #11
  %76 = ptrtoint ptr %last_sg.i.i to i32
  call void @__asan_store4_noabort(i32 %76)
  store ptr null, ptr %last_sg.i.i, align 4
  %call.i.i196 = call i32 @__blk_rq_map_sg(ptr noundef %73, ptr noundef %7, ptr noundef %75, ptr noundef nonnull %last_sg.i.i) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %last_sg.i.i) #11
  %77 = ptrtoint ptr %data_sgl308.i to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 %call.i.i196, ptr %data_sgl308.i, align 8
  %78 = ptrtoint ptr %sg_table310.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %sg_table310.i, align 4
  %cmd_flags.i = getelementptr inbounds %struct.request, ptr %7, i32 0, i32 3
  %80 = ptrtoint ptr %cmd_flags.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %cmd_flags.i, align 4
  %and.i247.i = and i32 %81, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i247.i)
  %tobool.i.not.i = icmp eq i32 %and.i247.i, 0
  %cond.i = select i1 %tobool.i.not.i, i32 2, i32 1
  %82 = ptrtoint ptr %58 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %58, align 8
  %call2.i.i.i = call i32 @dma_map_sg_attrs(ptr noundef %83, ptr noundef %79, i32 noundef %call.i.i196, i32 noundef %cond.i, i32 noundef 0) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call2.i.i.i)
  %cmp.i197 = icmp slt i32 %call2.i.i.i, 1
  br i1 %cmp.i197, label %if.end15.i.out_free_table.i_crit_edge, label %if.end33.i, !prof !337

if.end15.i.out_free_table.i_crit_edge:            ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %out_free_table.i

if.end33.i:                                       ; preds = %if.end15.i
  %84 = ptrtoint ptr %cmd_flags.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %cmd_flags.i, align 4
  %86 = and i32 %85, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %86)
  %tobool.i248.not.i = icmp eq i32 %86, 0
  br i1 %tobool.i248.not.i, label %if.end33.i.if.end86.i_crit_edge, label %if.then35.i

if.end33.i.if.end86.i_crit_edge:                  ; preds = %if.end33.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end86.i

if.then35.i:                                      ; preds = %if.end33.i
  %metadata_sgl.i = getelementptr %struct.request, ptr %7, i32 2, i32 10
  %87 = ptrtoint ptr %metadata_sgl.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %metadata_sgl.i, align 8
  %add.ptr36.i = getelementptr %struct.nvme_rdma_sgl, ptr %88, i32 1
  %sg_table38.i = getelementptr inbounds %struct.nvme_rdma_sgl, ptr %88, i32 0, i32 1
  %89 = ptrtoint ptr %sg_table38.i to i32
  call void @__asan_store4_noabort(i32 %89)
  store ptr %add.ptr36.i, ptr %sg_table38.i, align 4
  %90 = load ptr, ptr %metadata_sgl.i, align 8
  %sg_table41.i = getelementptr inbounds %struct.nvme_rdma_sgl, ptr %90, i32 0, i32 1
  %91 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %7, align 8
  %bio.i = getelementptr inbounds %struct.request, ptr %7, i32 0, i32 10
  %93 = ptrtoint ptr %bio.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %bio.i, align 8
  %call43.i = call i32 @blk_rq_count_integrity_sg(ptr noundef %92, ptr noundef %94) #11
  %95 = ptrtoint ptr %metadata_sgl.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %metadata_sgl.i, align 8
  %sg_table45.i = getelementptr inbounds %struct.nvme_rdma_sgl, ptr %96, i32 0, i32 1
  %97 = ptrtoint ptr %sg_table45.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %sg_table45.i, align 4
  %call47.i = call i32 @sg_alloc_table_chained(ptr noundef %sg_table41.i, i32 noundef %call43.i, ptr noundef %98, i32 noundef 1) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call47.i)
  %tobool48.not.i = icmp eq i32 %call47.i, 0
  br i1 %tobool48.not.i, label %if.end56.i, label %if.then35.i.out_unmap_sg.i_crit_edge, !prof !338

if.then35.i.out_unmap_sg.i_crit_edge:             ; preds = %if.then35.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %out_unmap_sg.i

if.end56.i:                                       ; preds = %if.then35.i
  %99 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %7, align 8
  %101 = ptrtoint ptr %bio.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %bio.i, align 8
  %103 = ptrtoint ptr %metadata_sgl.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %metadata_sgl.i, align 8
  %sg_table60.i = getelementptr inbounds %struct.nvme_rdma_sgl, ptr %104, i32 0, i32 1
  %105 = ptrtoint ptr %sg_table60.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %sg_table60.i, align 4
  %call62.i = call i32 @blk_rq_map_integrity_sg(ptr noundef %100, ptr noundef %102, ptr noundef %106) #11
  %107 = ptrtoint ptr %metadata_sgl.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %metadata_sgl.i, align 8
  %109 = ptrtoint ptr %108 to i32
  call void @__asan_store4_noabort(i32 %109)
  store i32 %call62.i, ptr %108, align 4
  %110 = load ptr, ptr %metadata_sgl.i, align 8
  %sg_table66.i = getelementptr inbounds %struct.nvme_rdma_sgl, ptr %110, i32 0, i32 1
  %111 = ptrtoint ptr %sg_table66.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %sg_table66.i, align 4
  %113 = ptrtoint ptr %110 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %110, align 4
  %115 = ptrtoint ptr %cmd_flags.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %cmd_flags.i, align 4
  %and.i249.i = and i32 %116, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i249.i)
  %tobool.i250.not.i = icmp eq i32 %and.i249.i, 0
  %cond74.i = select i1 %tobool.i250.not.i, i32 2, i32 1
  %117 = ptrtoint ptr %58 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %58, align 8
  %call2.i.i251.i = call i32 @dma_map_sg_attrs(ptr noundef %118, ptr noundef %112, i32 noundef %114, i32 noundef %cond74.i, i32 noundef 0) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call2.i.i251.i)
  %cmp76.i = icmp slt i32 %call2.i.i251.i, 1
  br i1 %cmp76.i, label %if.end56.i.out_free_pi_table.i_crit_edge, label %if.end56.i.if.end86.i_crit_edge, !prof !337

if.end56.i.if.end86.i_crit_edge:                  ; preds = %if.end56.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end86.i

if.end56.i.out_free_pi_table.i_crit_edge:         ; preds = %if.end56.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %out_free_pi_table.i

if.end86.i:                                       ; preds = %if.end56.i.if.end86.i_crit_edge, %if.end33.i.if.end86.i_crit_edge
  %pi_count.0.i = phi i32 [ %call2.i.i251.i, %if.end56.i.if.end86.i_crit_edge ], [ 0, %if.end33.i.if.end86.i_crit_edge ]
  %use_sig_mr.i = getelementptr %struct.request, ptr %7, i32 2, i32 11
  %119 = ptrtoint ptr %use_sig_mr.i to i32
  call void @__asan_load1_noabort(i32 %119)
  %120 = load i8, ptr %use_sig_mr.i, align 4, !range !336
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %120)
  %tobool87.not.i = icmp eq i8 %120, 0
  br i1 %tobool87.not.i, label %if.end90.i, label %if.then88.i

if.then88.i:                                      ; preds = %if.end86.i
  %reg_wr.i.i = getelementptr %struct.request, ptr %7, i32 1, i32 30, i32 0, i32 2
  %121 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %7, align 8
  %queuedata.i.i = getelementptr inbounds %struct.request_queue, ptr %122, i32 0, i32 10
  %123 = ptrtoint ptr %queuedata.i.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %queuedata.i.i, align 4
  %bio1.i.i = getelementptr %struct.request, ptr %7, i32 0, i32 10
  %125 = ptrtoint ptr %bio1.i.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %bio1.i.i, align 8
  %dptr.i252.i = getelementptr inbounds %struct.nvme_common_command, ptr %9, i32 0, i32 6
  %qp.i.i = getelementptr inbounds %struct.nvme_rdma_queue, ptr %5, i32 0, i32 6
  %127 = ptrtoint ptr %qp.i.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %qp.i.i, align 4
  %sig_mrs.i.i = getelementptr inbounds %struct.ib_qp, ptr %128, i32 0, i32 7
  %call3.i.i = call ptr @ib_mr_pool_get(ptr noundef %128, ptr noundef %sig_mrs.i.i) #11
  %mr.i.i = getelementptr %struct.request, ptr %7, i32 1, i32 8
  %129 = ptrtoint ptr %mr.i.i to i32
  call void @__asan_store4_noabort(i32 %129)
  store ptr %call3.i.i, ptr %mr.i.i, align 8
  %tobool.not.i253.i = icmp eq ptr %call3.i.i, null
  br i1 %tobool.not.i253.i, label %land.rhs.i.i198, label %if.end43.i.i

land.rhs.i.i198:                                  ; preds = %if.then88.i
  %.b135.i.i = load i1, ptr @nvme_rdma_map_sg_pi.__already_done, align 1
  br i1 %.b135.i.i, label %land.rhs.i.i198.out_unmap_pi_sg.i_crit_edge, label %if.then.i.i199, !prof !338

land.rhs.i.i198.out_unmap_pi_sg.i_crit_edge:      ; preds = %land.rhs.i.i198
  call void @__sanitizer_cov_trace_pc() #13
  br label %out_unmap_pi_sg.i

if.then.i.i199:                                   ; preds = %land.rhs.i.i198
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @nvme_rdma_map_sg_pi.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 1483, i32 noundef 9, ptr noundef null) #11
  br label %out_unmap_pi_sg.i

if.end43.i.i:                                     ; preds = %if.then88.i
  %130 = ptrtoint ptr %sg_table310.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %sg_table310.i, align 4
  %metadata_sgl.i.i = getelementptr %struct.request, ptr %7, i32 2, i32 10
  %132 = ptrtoint ptr %metadata_sgl.i.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %metadata_sgl.i.i, align 8
  %sg_table46.i.i = getelementptr inbounds %struct.nvme_rdma_sgl, ptr %133, i32 0, i32 1
  %134 = ptrtoint ptr %sg_table46.i.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %sg_table46.i.i, align 4
  %call48.i.i = call i32 @ib_map_mr_sg_pi(ptr noundef nonnull %call3.i.i, ptr noundef %131, i32 noundef %call2.i.i.i, ptr noundef null, ptr noundef %135, i32 noundef %pi_count.0.i, ptr noundef null, i32 noundef 4096) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call48.i.i)
  %tobool49.not.i.i = icmp eq i32 %call48.i.i, 0
  br i1 %tobool49.not.i.i, label %if.end57.i.i, label %mr_put.i.i, !prof !338

if.end57.i.i:                                     ; preds = %if.end43.i.i
  %bi_bdev.i.i = getelementptr inbounds %struct.bio, ptr %126, i32 0, i32 1
  %136 = ptrtoint ptr %bi_bdev.i.i to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %bi_bdev.i.i, align 4
  %bd_disk.i.i = getelementptr inbounds %struct.block_device, ptr %137, i32 0, i32 17
  %138 = ptrtoint ptr %bd_disk.i.i to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %bd_disk.i.i, align 8
  %queue.i.i.i = getelementptr inbounds %struct.gendisk, ptr %139, i32 0, i32 9
  %140 = ptrtoint ptr %queue.i.i.i to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %queue.i.i.i, align 4
  %integrity.i.i.i = getelementptr inbounds %struct.request_queue, ptr %141, i32 0, i32 18
  %142 = ptrtoint ptr %integrity.i.i.i to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %integrity.i.i.i, align 4
  %tobool.not.i.i.i200 = icmp eq ptr %143, null
  %.integrity.i.i.i = select i1 %tobool.not.i.i.i200, ptr null, ptr %integrity.i.i.i
  %144 = ptrtoint ptr %mr.i.i to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %mr.i.i, align 8
  %sig_attrs.i.i = getelementptr inbounds %struct.ib_mr, ptr %145, i32 0, i32 11
  %146 = ptrtoint ptr %sig_attrs.i.i to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %sig_attrs.i.i, align 8
  %pi_type.i.i = getelementptr inbounds %struct.nvme_ns, ptr %124, i32 0, i32 13
  %148 = ptrtoint ptr %pi_type.i.i to i32
  call void @__asan_load1_noabort(i32 %148)
  %149 = load i8, ptr %pi_type.i.i, align 8
  %control1.i.i.i = getelementptr inbounds %struct.nvme_rw_command, ptr %9, i32 0, i32 9
  %150 = ptrtoint ptr %control1.i.i.i to i32
  call void @__asan_load2_noabort(i32 %150)
  %151 = load i16, ptr %control1.i.i.i, align 2
  %152 = call i16 @llvm.bswap.i16(i16 %151) #11
  %153 = call ptr @memset(ptr %147, i32 0, i32 64)
  %154 = and i16 %152, 8192
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %154)
  %tobool.not.i137.i.i = icmp eq i16 %154, 0
  %wire6.i.i.i = getelementptr inbounds %struct.ib_sig_attrs, ptr %147, i32 0, i32 2
  %155 = ptrtoint ptr %wire6.i.i.i to i32
  call void @__asan_store4_noabort(i32 %155)
  store i32 1, ptr %wire6.i.i.i, align 4
  %interval_exp.i26.i.i.i = getelementptr inbounds %struct.blk_integrity, ptr %.integrity.i.i.i, i32 0, i32 3
  %156 = ptrtoint ptr %interval_exp.i26.i.i.i to i32
  call void @__asan_load1_noabort(i32 %156)
  %157 = load i8, ptr %interval_exp.i26.i.i.i, align 2
  %conv.i27.i.i.i = zext i8 %157 to i32
  %shl.i28.i.i.i = shl nuw i32 1, %conv.i27.i.i.i
  %conv1.i29.i.i.i = trunc i32 %shl.i28.i.i.i to i16
  %pi_interval.i30.i.i.i = getelementptr inbounds %struct.ib_sig_attrs, ptr %147, i32 0, i32 2, i32 1, i32 0, i32 1
  %158 = ptrtoint ptr %pi_interval.i30.i.i.i to i32
  call void @__asan_store2_noabort(i32 %158)
  store i16 %conv1.i29.i.i.i, ptr %pi_interval.i30.i.i.i, align 4
  %reftag.i31.i.i.i = getelementptr inbounds %struct.nvme_rw_command, ptr %9, i32 0, i32 11
  %159 = ptrtoint ptr %reftag.i31.i.i.i to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load i32, ptr %reftag.i31.i.i.i, align 8
  %161 = call i32 @llvm.bswap.i32(i32 %160) #11
  %ref_tag.i32.i.i.i = getelementptr inbounds %struct.ib_sig_attrs, ptr %147, i32 0, i32 2, i32 1, i32 0, i32 4
  %162 = ptrtoint ptr %ref_tag.i32.i.i.i to i32
  call void @__asan_store4_noabort(i32 %162)
  store i32 %161, ptr %ref_tag.i32.i.i.i, align 4
  %163 = and i16 %152, 1024
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %163)
  %tobool.not.i33.i.i.i = icmp eq i16 %163, 0
  br i1 %tobool.not.i137.i.i, label %if.else.i.i.i, label %if.then.i.i.i

if.then.i.i.i:                                    ; preds = %if.end57.i.i
  br i1 %tobool.not.i33.i.i.i, label %if.then.i.i.i.if.end.i.i.i.i_crit_edge, label %if.then.i.i.i.i

if.then.i.i.i.if.end.i.i.i.i_crit_edge:           ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i.i.i.i

if.then.i.i.i.i:                                  ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %ref_remap.i.i.i.i = getelementptr inbounds %struct.ib_sig_attrs, ptr %147, i32 0, i32 2, i32 1, i32 0, i32 5
  %164 = ptrtoint ptr %ref_remap.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %164)
  store i8 1, ptr %ref_remap.i.i.i.i, align 4
  br label %if.end.i.i.i.i

if.end.i.i.i.i:                                   ; preds = %if.then.i.i.i.i, %if.then.i.i.i.if.end.i.i.i.i_crit_edge
  %apptag.i.i.i.i = getelementptr inbounds %struct.nvme_rw_command, ptr %9, i32 0, i32 12
  %165 = ptrtoint ptr %apptag.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %165)
  %166 = load i16, ptr %apptag.i.i.i.i, align 4
  %167 = call i16 @llvm.bswap.i16(i16 %166) #11
  %app_tag.i.i.i.i = getelementptr inbounds %struct.ib_sig_attrs, ptr %147, i32 0, i32 2, i32 1, i32 0, i32 3
  %168 = ptrtoint ptr %app_tag.i.i.i.i to i32
  call void @__asan_store2_noabort(i32 %168)
  store i16 %167, ptr %app_tag.i.i.i.i, align 4
  %appmask.i.i.i.i = getelementptr inbounds %struct.nvme_rw_command, ptr %9, i32 0, i32 13
  %169 = ptrtoint ptr %appmask.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %169)
  %170 = load i16, ptr %appmask.i.i.i.i, align 2
  %171 = call i16 @llvm.bswap.i16(i16 %170) #11
  %apptag_check_mask.i.i.i.i = getelementptr inbounds %struct.ib_sig_attrs, ptr %147, i32 0, i32 2, i32 1, i32 0, i32 8
  %172 = ptrtoint ptr %apptag_check_mask.i.i.i.i to i32
  call void @__asan_store2_noabort(i32 %172)
  store i16 %171, ptr %apptag_check_mask.i.i.i.i, align 4
  %app_escape.i.i.i.i = getelementptr inbounds %struct.ib_sig_attrs, ptr %147, i32 0, i32 2, i32 1, i32 0, i32 6
  %173 = ptrtoint ptr %app_escape.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %173)
  store i8 1, ptr %app_escape.i.i.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %149)
  %cmp.i.i.i.i = icmp eq i8 %149, 3
  br i1 %cmp.i.i.i.i, label %if.then11.i.i.i.i, label %if.end.i.i.i.i.nvme_rdma_set_sig_domain.exit.i.i.i_crit_edge

if.end.i.i.i.i.nvme_rdma_set_sig_domain.exit.i.i.i_crit_edge: ; preds = %if.end.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %nvme_rdma_set_sig_domain.exit.i.i.i

if.then11.i.i.i.i:                                ; preds = %if.end.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %ref_escape.i.i.i.i = getelementptr inbounds %struct.ib_sig_attrs, ptr %147, i32 0, i32 2, i32 1, i32 0, i32 7
  %174 = ptrtoint ptr %ref_escape.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %174)
  store i8 1, ptr %ref_escape.i.i.i.i, align 2
  br label %nvme_rdma_set_sig_domain.exit.i.i.i

nvme_rdma_set_sig_domain.exit.i.i.i:              ; preds = %if.then11.i.i.i.i, %if.end.i.i.i.i.nvme_rdma_set_sig_domain.exit.i.i.i_crit_edge
  %and3.i.i.i = and i16 %152, -8193
  %175 = call i16 @llvm.bswap.i16(i16 %and3.i.i.i) #11
  %176 = ptrtoint ptr %control1.i.i.i to i32
  call void @__asan_store2_noabort(i32 %176)
  store i16 %175, ptr %control1.i.i.i, align 2
  br label %nvme_rdma_set_sig_attrs.exit.i.i

if.else.i.i.i:                                    ; preds = %if.end57.i.i
  br i1 %tobool.not.i33.i.i.i, label %if.else.i.i.i.if.end.i42.i.i.i_crit_edge, label %if.then.i35.i.i.i

if.else.i.i.i.if.end.i42.i.i.i_crit_edge:         ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i42.i.i.i

if.then.i35.i.i.i:                                ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %ref_remap.i34.i.i.i = getelementptr inbounds %struct.ib_sig_attrs, ptr %147, i32 0, i32 2, i32 1, i32 0, i32 5
  %177 = ptrtoint ptr %ref_remap.i34.i.i.i to i32
  call void @__asan_store1_noabort(i32 %177)
  store i8 1, ptr %ref_remap.i34.i.i.i, align 4
  br label %if.end.i42.i.i.i

if.end.i42.i.i.i:                                 ; preds = %if.then.i35.i.i.i, %if.else.i.i.i.if.end.i42.i.i.i_crit_edge
  %apptag.i36.i.i.i = getelementptr inbounds %struct.nvme_rw_command, ptr %9, i32 0, i32 12
  %178 = ptrtoint ptr %apptag.i36.i.i.i to i32
  call void @__asan_load2_noabort(i32 %178)
  %179 = load i16, ptr %apptag.i36.i.i.i, align 4
  %180 = call i16 @llvm.bswap.i16(i16 %179) #11
  %app_tag.i37.i.i.i = getelementptr inbounds %struct.ib_sig_attrs, ptr %147, i32 0, i32 2, i32 1, i32 0, i32 3
  %181 = ptrtoint ptr %app_tag.i37.i.i.i to i32
  call void @__asan_store2_noabort(i32 %181)
  store i16 %180, ptr %app_tag.i37.i.i.i, align 4
  %appmask.i38.i.i.i = getelementptr inbounds %struct.nvme_rw_command, ptr %9, i32 0, i32 13
  %182 = ptrtoint ptr %appmask.i38.i.i.i to i32
  call void @__asan_load2_noabort(i32 %182)
  %183 = load i16, ptr %appmask.i38.i.i.i, align 2
  %184 = call i16 @llvm.bswap.i16(i16 %183) #11
  %apptag_check_mask.i39.i.i.i = getelementptr inbounds %struct.ib_sig_attrs, ptr %147, i32 0, i32 2, i32 1, i32 0, i32 8
  %185 = ptrtoint ptr %apptag_check_mask.i39.i.i.i to i32
  call void @__asan_store2_noabort(i32 %185)
  store i16 %184, ptr %apptag_check_mask.i39.i.i.i, align 4
  %app_escape.i40.i.i.i = getelementptr inbounds %struct.ib_sig_attrs, ptr %147, i32 0, i32 2, i32 1, i32 0, i32 6
  %186 = ptrtoint ptr %app_escape.i40.i.i.i to i32
  call void @__asan_store1_noabort(i32 %186)
  store i8 1, ptr %app_escape.i40.i.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %149)
  %cmp.i41.i.i.i = icmp eq i8 %149, 3
  br i1 %cmp.i41.i.i.i, label %if.then11.i44.i.i.i, label %if.end.i42.i.i.i.nvme_rdma_set_sig_domain.exit45.i.i.i_crit_edge

if.end.i42.i.i.i.nvme_rdma_set_sig_domain.exit45.i.i.i_crit_edge: ; preds = %if.end.i42.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %nvme_rdma_set_sig_domain.exit45.i.i.i

if.then11.i44.i.i.i:                              ; preds = %if.end.i42.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %ref_escape.i43.i.i.i = getelementptr inbounds %struct.ib_sig_attrs, ptr %147, i32 0, i32 2, i32 1, i32 0, i32 7
  %187 = ptrtoint ptr %ref_escape.i43.i.i.i to i32
  call void @__asan_store1_noabort(i32 %187)
  store i8 1, ptr %ref_escape.i43.i.i.i, align 2
  br label %nvme_rdma_set_sig_domain.exit45.i.i.i

nvme_rdma_set_sig_domain.exit45.i.i.i:            ; preds = %if.then11.i44.i.i.i, %if.end.i42.i.i.i.nvme_rdma_set_sig_domain.exit45.i.i.i_crit_edge
  %mem7.i.i.i = getelementptr inbounds %struct.ib_sig_attrs, ptr %147, i32 0, i32 1
  %188 = ptrtoint ptr %mem7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %188)
  store i32 1, ptr %mem7.i.i.i, align 4
  %sig.i46.i.i.i = getelementptr inbounds %struct.ib_sig_attrs, ptr %147, i32 0, i32 1, i32 1
  %189 = ptrtoint ptr %sig.i46.i.i.i to i32
  call void @__asan_store4_noabort(i32 %189)
  store i32 0, ptr %sig.i46.i.i.i, align 4
  %190 = ptrtoint ptr %interval_exp.i26.i.i.i to i32
  call void @__asan_load1_noabort(i32 %190)
  %191 = load i8, ptr %interval_exp.i26.i.i.i, align 2
  %conv.i48.i.i.i = zext i8 %191 to i32
  %shl.i49.i.i.i = shl nuw i32 1, %conv.i48.i.i.i
  %conv1.i50.i.i.i = trunc i32 %shl.i49.i.i.i to i16
  %pi_interval.i51.i.i.i = getelementptr inbounds %struct.ib_sig_attrs, ptr %147, i32 0, i32 1, i32 1, i32 0, i32 1
  %192 = ptrtoint ptr %pi_interval.i51.i.i.i to i32
  call void @__asan_store2_noabort(i32 %192)
  store i16 %conv1.i50.i.i.i, ptr %pi_interval.i51.i.i.i, align 4
  %193 = ptrtoint ptr %reftag.i31.i.i.i to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load i32, ptr %reftag.i31.i.i.i, align 8
  %195 = call i32 @llvm.bswap.i32(i32 %194) #11
  %ref_tag.i53.i.i.i = getelementptr inbounds %struct.ib_sig_attrs, ptr %147, i32 0, i32 1, i32 1, i32 0, i32 4
  %196 = ptrtoint ptr %ref_tag.i53.i.i.i to i32
  call void @__asan_store4_noabort(i32 %196)
  store i32 %195, ptr %ref_tag.i53.i.i.i, align 4
  br i1 %tobool.not.i33.i.i.i, label %nvme_rdma_set_sig_domain.exit45.i.i.i.if.end.i63.i.i.i_crit_edge, label %if.then.i56.i.i.i

nvme_rdma_set_sig_domain.exit45.i.i.i.if.end.i63.i.i.i_crit_edge: ; preds = %nvme_rdma_set_sig_domain.exit45.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i63.i.i.i

if.then.i56.i.i.i:                                ; preds = %nvme_rdma_set_sig_domain.exit45.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %ref_remap.i55.i.i.i = getelementptr inbounds %struct.ib_sig_attrs, ptr %147, i32 0, i32 1, i32 1, i32 0, i32 5
  %197 = ptrtoint ptr %ref_remap.i55.i.i.i to i32
  call void @__asan_store1_noabort(i32 %197)
  store i8 1, ptr %ref_remap.i55.i.i.i, align 4
  br label %if.end.i63.i.i.i

if.end.i63.i.i.i:                                 ; preds = %if.then.i56.i.i.i, %nvme_rdma_set_sig_domain.exit45.i.i.i.if.end.i63.i.i.i_crit_edge
  %198 = ptrtoint ptr %apptag.i36.i.i.i to i32
  call void @__asan_load2_noabort(i32 %198)
  %199 = load i16, ptr %apptag.i36.i.i.i, align 4
  %200 = call i16 @llvm.bswap.i16(i16 %199) #11
  %app_tag.i58.i.i.i = getelementptr inbounds %struct.ib_sig_attrs, ptr %147, i32 0, i32 1, i32 1, i32 0, i32 3
  %201 = ptrtoint ptr %app_tag.i58.i.i.i to i32
  call void @__asan_store2_noabort(i32 %201)
  store i16 %200, ptr %app_tag.i58.i.i.i, align 4
  %202 = ptrtoint ptr %appmask.i38.i.i.i to i32
  call void @__asan_load2_noabort(i32 %202)
  %203 = load i16, ptr %appmask.i38.i.i.i, align 2
  %204 = call i16 @llvm.bswap.i16(i16 %203) #11
  %apptag_check_mask.i60.i.i.i = getelementptr inbounds %struct.ib_sig_attrs, ptr %147, i32 0, i32 1, i32 1, i32 0, i32 8
  %205 = ptrtoint ptr %apptag_check_mask.i60.i.i.i to i32
  call void @__asan_store2_noabort(i32 %205)
  store i16 %204, ptr %apptag_check_mask.i60.i.i.i, align 4
  %app_escape.i61.i.i.i = getelementptr inbounds %struct.ib_sig_attrs, ptr %147, i32 0, i32 1, i32 1, i32 0, i32 6
  %206 = ptrtoint ptr %app_escape.i61.i.i.i to i32
  call void @__asan_store1_noabort(i32 %206)
  store i8 1, ptr %app_escape.i61.i.i.i, align 1
  br i1 %cmp.i41.i.i.i, label %if.then11.i65.i.i.i, label %if.end.i63.i.i.i.nvme_rdma_set_sig_attrs.exit.i.i_crit_edge

if.end.i63.i.i.i.nvme_rdma_set_sig_attrs.exit.i.i_crit_edge: ; preds = %if.end.i63.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %nvme_rdma_set_sig_attrs.exit.i.i

if.then11.i65.i.i.i:                              ; preds = %if.end.i63.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %ref_escape.i64.i.i.i = getelementptr inbounds %struct.ib_sig_attrs, ptr %147, i32 0, i32 1, i32 1, i32 0, i32 7
  %207 = ptrtoint ptr %ref_escape.i64.i.i.i to i32
  call void @__asan_store1_noabort(i32 %207)
  store i8 1, ptr %ref_escape.i64.i.i.i, align 2
  br label %nvme_rdma_set_sig_attrs.exit.i.i

nvme_rdma_set_sig_attrs.exit.i.i:                 ; preds = %if.then11.i65.i.i.i, %if.end.i63.i.i.i.nvme_rdma_set_sig_attrs.exit.i.i_crit_edge, %nvme_rdma_set_sig_domain.exit.i.i.i
  %208 = ptrtoint ptr %mr.i.i to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load ptr, ptr %mr.i.i, align 8
  %sig_attrs61.i.i = getelementptr inbounds %struct.ib_mr, ptr %209, i32 0, i32 11
  %210 = ptrtoint ptr %sig_attrs61.i.i to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load ptr, ptr %sig_attrs61.i.i, align 8
  %212 = ptrtoint ptr %211 to i32
  call void @__asan_store1_noabort(i32 %212)
  store i8 0, ptr %211, align 1
  %213 = ptrtoint ptr %control1.i.i.i to i32
  call void @__asan_load2_noabort(i32 %213)
  %214 = load i16, ptr %control1.i.i.i, align 2
  %215 = and i16 %214, 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %215)
  %tobool.not.i138.i.i = icmp eq i16 %215, 0
  %spec.store.select.i.i.i = select i1 %tobool.not.i138.i.i, i8 0, i8 15
  %216 = ptrtoint ptr %211 to i32
  call void @__asan_store1_noabort(i32 %216)
  store i8 %spec.store.select.i.i.i, ptr %211, align 1
  %217 = ptrtoint ptr %control1.i.i.i to i32
  call void @__asan_load2_noabort(i32 %217)
  %218 = load i16, ptr %control1.i.i.i, align 2
  %219 = and i16 %218, 16
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %219)
  %tobool6.not.i.i.i = icmp eq i16 %219, 0
  br i1 %tobool6.not.i.i.i, label %nvme_rdma_set_sig_attrs.exit.i.i.nvme_rdma_set_prot_checks.exit.i.i_crit_edge, label %if.then7.i.i.i

nvme_rdma_set_sig_attrs.exit.i.i.nvme_rdma_set_prot_checks.exit.i.i_crit_edge: ; preds = %nvme_rdma_set_sig_attrs.exit.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %nvme_rdma_set_prot_checks.exit.i.i

if.then7.i.i.i:                                   ; preds = %nvme_rdma_set_sig_attrs.exit.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %220 = or i8 %spec.store.select.i.i.i, -64
  %221 = ptrtoint ptr %211 to i32
  call void @__asan_store1_noabort(i32 %221)
  store i8 %220, ptr %211, align 1
  br label %nvme_rdma_set_prot_checks.exit.i.i

nvme_rdma_set_prot_checks.exit.i.i:               ; preds = %if.then7.i.i.i, %nvme_rdma_set_sig_attrs.exit.i.i.nvme_rdma_set_prot_checks.exit.i.i_crit_edge
  %222 = ptrtoint ptr %mr.i.i to i32
  call void @__asan_load4_noabort(i32 %222)
  %223 = load ptr, ptr %mr.i.i, align 8
  %rkey.i.i = getelementptr inbounds %struct.ib_mr, ptr %223, i32 0, i32 3
  %224 = ptrtoint ptr %rkey.i.i to i32
  call void @__asan_load4_noabort(i32 %224)
  %225 = load i32, ptr %rkey.i.i, align 4
  %and1.i.i.i = and i32 %225, -256
  %conv.i.i = add i32 %225, 1
  %lkey.i.i.i = getelementptr inbounds %struct.ib_mr, ptr %223, i32 0, i32 2
  %226 = ptrtoint ptr %lkey.i.i.i to i32
  call void @__asan_load4_noabort(i32 %226)
  %227 = load i32, ptr %lkey.i.i.i, align 8
  %and.i139.i.i = and i32 %227, -256
  %conv.i.i.i = and i32 %conv.i.i, 255
  %or.i140.i.i = or i32 %and.i139.i.i, %conv.i.i.i
  store i32 %or.i140.i.i, ptr %lkey.i.i.i, align 8
  %or4.i.i.i = or i32 %conv.i.i.i, %and1.i.i.i
  store i32 %or4.i.i.i, ptr %rkey.i.i, align 4
  %reg_cqe.i.i = getelementptr %struct.request, ptr %7, i32 2, i32 6
  %228 = ptrtoint ptr %reg_cqe.i.i to i32
  call void @__asan_store4_noabort(i32 %228)
  store ptr @nvme_rdma_sig_done, ptr %reg_cqe.i.i, align 8
  %229 = call ptr @memset(ptr %reg_wr.i.i, i32 0, i32 56)
  %opcode.i.i = getelementptr %struct.request, ptr %7, i32 1, i32 32
  %230 = ptrtoint ptr %opcode.i.i to i32
  call void @__asan_store4_noabort(i32 %230)
  store i32 33, ptr %opcode.i.i, align 8
  %231 = getelementptr %struct.request, ptr %7, i32 1, i32 31
  %232 = ptrtoint ptr %231 to i32
  call void @__asan_store4_noabort(i32 %232)
  store ptr %reg_cqe.i.i, ptr %231, align 8
  %233 = load ptr, ptr %mr.i.i, align 8
  %mr71.i.i = getelementptr %struct.request, ptr %7, i32 2, i32 2
  %234 = ptrtoint ptr %mr71.i.i to i32
  call void @__asan_store4_noabort(i32 %234)
  store ptr %233, ptr %mr71.i.i, align 8
  %rkey73.i.i = getelementptr inbounds %struct.ib_mr, ptr %233, i32 0, i32 3
  %235 = ptrtoint ptr %rkey73.i.i to i32
  call void @__asan_load4_noabort(i32 %235)
  %236 = load i32, ptr %rkey73.i.i, align 4
  %key.i.i = getelementptr %struct.request, ptr %7, i32 2, i32 3
  %237 = ptrtoint ptr %key.i.i to i32
  call void @__asan_store4_noabort(i32 %237)
  store i32 %236, ptr %key.i.i, align 4
  %access.i.i = getelementptr %struct.request, ptr %7, i32 2, i32 4
  %238 = ptrtoint ptr %access.i.i to i32
  call void @__asan_store4_noabort(i32 %238)
  store i32 7, ptr %access.i.i, align 8
  %iova.i.i = getelementptr inbounds %struct.ib_mr, ptr %233, i32 0, i32 4
  %239 = ptrtoint ptr %iova.i.i to i32
  call void @__asan_load8_noabort(i32 %239)
  %240 = load i64, ptr %iova.i.i, align 8
  %241 = call i64 @llvm.bswap.i64(i64 %240) #11
  %242 = ptrtoint ptr %dptr.i252.i to i32
  call void @__asan_store8_noabort(i32 %242)
  store i64 %241, ptr %dptr.i252.i, align 8
  %243 = ptrtoint ptr %mr.i.i to i32
  call void @__asan_load4_noabort(i32 %243)
  %244 = load ptr, ptr %mr.i.i, align 8
  %length.i.i = getelementptr inbounds %struct.ib_mr, ptr %244, i32 0, i32 5
  %245 = ptrtoint ptr %length.i.i to i32
  call void @__asan_load8_noabort(i32 %245)
  %246 = load i64, ptr %length.i.i, align 8
  %length77.i.i = getelementptr inbounds %struct.nvme_common_command, ptr %9, i32 0, i32 6, i32 0, i32 1
  %conv.i.i.i.i = trunc i64 %246 to i8
  %incdec.ptr.i.i.i.i = getelementptr i8, ptr %length77.i.i, i32 1
  %247 = ptrtoint ptr %length77.i.i to i32
  call void @__asan_store1_noabort(i32 %247)
  store i8 %conv.i.i.i.i, ptr %length77.i.i, align 1
  %shr.i.i141.i.i = lshr i64 %246, 8
  %conv1.i.i.i.i = trunc i64 %shr.i.i141.i.i to i8
  %incdec.ptr2.i.i.i.i = getelementptr i8, ptr %length77.i.i, i32 2
  %248 = ptrtoint ptr %incdec.ptr.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %248)
  store i8 %conv1.i.i.i.i, ptr %incdec.ptr.i.i.i.i, align 1
  %shr3.i.i142.i.i = lshr i64 %246, 16
  %conv4.i.i.i.i = trunc i64 %shr3.i.i142.i.i to i8
  %249 = ptrtoint ptr %incdec.ptr2.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %249)
  store i8 %conv4.i.i.i.i, ptr %incdec.ptr2.i.i.i.i, align 1
  %250 = load ptr, ptr %mr.i.i, align 8
  %rkey79.i.i = getelementptr inbounds %struct.ib_mr, ptr %250, i32 0, i32 3
  %251 = ptrtoint ptr %rkey79.i.i to i32
  call void @__asan_load4_noabort(i32 %251)
  %252 = load i32, ptr %rkey79.i.i, align 4
  %key80.i.i = getelementptr inbounds %struct.nvme_keyed_sgl_desc, ptr %dptr.i252.i, i32 0, i32 2
  %253 = call i32 @llvm.bswap.i32(i32 %252) #11
  %254 = ptrtoint ptr %key80.i.i to i32
  call void @__asan_storeN_noabort(i32 %254, i32 4)
  store i32 %253, ptr %key80.i.i, align 1
  %type.i254.i = getelementptr inbounds %struct.nvme_keyed_sgl_desc, ptr %dptr.i252.i, i32 0, i32 3
  %255 = ptrtoint ptr %type.i254.i to i32
  call void @__asan_store1_noabort(i32 %255)
  store i8 64, ptr %type.i254.i, align 1
  br label %if.end100

mr_put.i.i:                                       ; preds = %if.end43.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %256 = ptrtoint ptr %qp.i.i to i32
  call void @__asan_load4_noabort(i32 %256)
  %257 = load ptr, ptr %qp.i.i, align 4
  %sig_mrs84.i.i = getelementptr inbounds %struct.ib_qp, ptr %257, i32 0, i32 7
  %258 = ptrtoint ptr %mr.i.i to i32
  call void @__asan_load4_noabort(i32 %258)
  %259 = load ptr, ptr %mr.i.i, align 8
  call void @ib_mr_pool_put(ptr noundef %257, ptr noundef %sig_mrs84.i.i, ptr noundef %259) #11
  %260 = ptrtoint ptr %mr.i.i to i32
  call void @__asan_store4_noabort(i32 %260)
  store ptr null, ptr %mr.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call48.i.i)
  %cmp.i.i201 = icmp slt i32 %call48.i.i, 0
  %call48..i.i = select i1 %cmp.i.i201, i32 %call48.i.i, i32 -22
  br label %out_unmap_pi_sg.i

if.end90.i:                                       ; preds = %if.end86.i
  %num_inline_segments.i = getelementptr inbounds %struct.nvme_rdma_device, ptr %56, i32 0, i32 4
  %261 = ptrtoint ptr %num_inline_segments.i to i32
  call void @__asan_load4_noabort(i32 %261)
  %262 = load i32, ptr %num_inline_segments.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call2.i.i.i, i32 %262)
  %cmp91.not.i = icmp ugt i32 %call2.i.i.i, %262
  br i1 %cmp91.not.i, label %if.end90.i.if.end123.i_crit_edge, label %if.then93.i

if.end90.i.if.end123.i_crit_edge:                 ; preds = %if.end90.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end123.i

if.then93.i:                                      ; preds = %if.end90.i
  %263 = ptrtoint ptr %cmd_flags.i to i32
  call void @__asan_load4_noabort(i32 %263)
  %264 = load i32, ptr %cmd_flags.i, align 4
  %and.i256.i = and i32 %264, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i256.i)
  %tobool.i257.not.i = icmp eq i32 %and.i256.i, 0
  br i1 %tobool.i257.not.i, label %if.then93.i.if.end113.i_crit_edge, label %land.lhs.true.i

if.then93.i.if.end113.i_crit_edge:                ; preds = %if.then93.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end113.i

land.lhs.true.i:                                  ; preds = %if.then93.i
  %265 = ptrtoint ptr %ctrl to i32
  call void @__asan_load4_noabort(i32 %265)
  %266 = load ptr, ptr %ctrl, align 4
  %267 = ptrtoint ptr %266 to i32
  call void @__asan_load4_noabort(i32 %267)
  %268 = load ptr, ptr %266, align 8
  %269 = icmp eq ptr %268, %5
  br i1 %269, label %land.lhs.true.i.if.end113.i_crit_edge, label %land.lhs.true103.i

land.lhs.true.i.if.end113.i_crit_edge:            ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end113.i

land.lhs.true103.i:                               ; preds = %land.lhs.true.i
  %use_inline_data.i = getelementptr inbounds %struct.nvme_rdma_ctrl, ptr %266, i32 0, i32 12
  %270 = ptrtoint ptr %use_inline_data.i to i32
  call void @__asan_load1_noabort(i32 %270)
  %271 = load i8, ptr %use_inline_data.i, align 8, !range !336
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %271)
  %tobool104.not.i = icmp eq i8 %271, 0
  br i1 %tobool104.not.i, label %land.lhs.true103.i.if.end113.i_crit_edge, label %land.lhs.true106.i

land.lhs.true103.i.if.end113.i_crit_edge:         ; preds = %land.lhs.true103.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end113.i

land.lhs.true106.i:                               ; preds = %land.lhs.true103.i
  %272 = ptrtoint ptr %rq_flags.i.i to i32
  call void @__asan_load4_noabort(i32 %272)
  %273 = load i32, ptr %rq_flags.i.i, align 8
  %and.i259.i = and i32 %273, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i259.i)
  %tobool.not.i260.i = icmp eq i32 %and.i259.i, 0
  %bv_len.i.i = getelementptr inbounds %struct.request, ptr %7, i32 0, i32 29, i32 0, i32 1
  %__data_len.i.i.i = getelementptr inbounds %struct.request, ptr %7, i32 0, i32 8
  %retval.0.in.i.i = select i1 %tobool.not.i260.i, ptr %__data_len.i.i.i, ptr %bv_len.i.i
  %274 = ptrtoint ptr %retval.0.in.i.i to i32
  call void @__asan_load4_noabort(i32 %274)
  %retval.0.i261.i = load i32, ptr %retval.0.in.i.i, align 4
  %cmnd_capsule_len.i.i = getelementptr inbounds %struct.nvme_rdma_queue, ptr %5, i32 0, i32 2
  %275 = ptrtoint ptr %cmnd_capsule_len.i.i to i32
  call void @__asan_load4_noabort(i32 %275)
  %276 = load i32, ptr %cmnd_capsule_len.i.i, align 4
  %sub.i.i202 = add i32 %276, -64
  call void @__sanitizer_cov_trace_cmp4(i32 %retval.0.i261.i, i32 %sub.i.i202)
  %cmp109.not.i = icmp ugt i32 %retval.0.i261.i, %sub.i.i202
  br i1 %cmp109.not.i, label %land.lhs.true106.i.if.end113.i_crit_edge, label %if.then111.i

land.lhs.true106.i.if.end113.i_crit_edge:         ; preds = %land.lhs.true106.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end113.i

if.then111.i:                                     ; preds = %land.lhs.true106.i
  call void @__sanitizer_cov_trace_pc() #13
  call fastcc void @nvme_rdma_map_sg_inline(ptr noundef %5, ptr noundef %add.ptr.i, ptr noundef %9, i32 noundef %call2.i.i.i) #11
  br label %if.end100

if.end113.i:                                      ; preds = %land.lhs.true106.i.if.end113.i_crit_edge, %land.lhs.true103.i.if.end113.i_crit_edge, %land.lhs.true.i.if.end113.i_crit_edge, %if.then93.i.if.end113.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call2.i.i.i)
  %cmp114.i = icmp eq i32 %call2.i.i.i, 1
  br i1 %cmp114.i, label %land.lhs.true116.i, label %if.end113.i.if.end123.i_crit_edge

if.end113.i.if.end123.i_crit_edge:                ; preds = %if.end113.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end123.i

land.lhs.true116.i:                               ; preds = %if.end113.i
  %pd.i = getelementptr inbounds %struct.nvme_rdma_device, ptr %56, i32 0, i32 1
  %277 = ptrtoint ptr %pd.i to i32
  call void @__asan_load4_noabort(i32 %277)
  %278 = load ptr, ptr %pd.i, align 4
  %flags117.i = getelementptr inbounds %struct.ib_pd, ptr %278, i32 0, i32 1
  %279 = ptrtoint ptr %flags117.i to i32
  call void @__asan_load4_noabort(i32 %279)
  %280 = load i32, ptr %flags117.i, align 4
  %and118.i = and i32 %280, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and118.i)
  %tobool119.not.i = icmp eq i32 %and118.i, 0
  br i1 %tobool119.not.i, label %land.lhs.true116.i.if.end123.i_crit_edge, label %if.then120.i

land.lhs.true116.i.if.end123.i_crit_edge:         ; preds = %land.lhs.true116.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end123.i

if.then120.i:                                     ; preds = %land.lhs.true116.i
  call void @__sanitizer_cov_trace_pc() #13
  call fastcc void @nvme_rdma_map_sg_single(ptr noundef %5, ptr noundef %add.ptr.i, ptr noundef %9) #11
  br label %if.end100

if.end123.i:                                      ; preds = %land.lhs.true116.i.if.end123.i_crit_edge, %if.end113.i.if.end123.i_crit_edge, %if.end90.i.if.end123.i_crit_edge
  %dptr.i262.i = getelementptr inbounds %struct.nvme_common_command, ptr %9, i32 0, i32 6
  %qp.i263.i = getelementptr inbounds %struct.nvme_rdma_queue, ptr %5, i32 0, i32 6
  %281 = ptrtoint ptr %qp.i263.i to i32
  call void @__asan_load4_noabort(i32 %281)
  %282 = load ptr, ptr %qp.i263.i, align 4
  %rdma_mrs.i.i = getelementptr inbounds %struct.ib_qp, ptr %282, i32 0, i32 6
  %call.i264.i = call ptr @ib_mr_pool_get(ptr noundef %282, ptr noundef %rdma_mrs.i.i) #11
  %mr.i265.i = getelementptr %struct.request, ptr %7, i32 1, i32 8
  %283 = ptrtoint ptr %mr.i265.i to i32
  call void @__asan_store4_noabort(i32 %283)
  store ptr %call.i264.i, ptr %mr.i265.i, align 8
  %tobool.not.i266.i = icmp eq ptr %call.i264.i, null
  br i1 %tobool.not.i266.i, label %land.rhs.i267.i, label %if.end41.i.i

land.rhs.i267.i:                                  ; preds = %if.end123.i
  %.b117.i.i = load i1, ptr @nvme_rdma_map_sg_fr.__already_done, align 1
  br i1 %.b117.i.i, label %land.rhs.i267.i.out_unmap_pi_sg.i_crit_edge, label %if.then.i268.i, !prof !338

land.rhs.i267.i.out_unmap_pi_sg.i_crit_edge:      ; preds = %land.rhs.i267.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %out_unmap_pi_sg.i

if.then.i268.i:                                   ; preds = %land.rhs.i267.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @nvme_rdma_map_sg_fr.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 1374, i32 noundef 9, ptr noundef null) #11
  br label %out_unmap_pi_sg.i

if.end41.i.i:                                     ; preds = %if.end123.i
  %284 = ptrtoint ptr %sg_table310.i to i32
  call void @__asan_load4_noabort(i32 %284)
  %285 = load ptr, ptr %sg_table310.i, align 4
  %call43.i.i = call i32 @ib_map_mr_sg(ptr noundef nonnull %call.i264.i, ptr noundef %285, i32 noundef %call2.i.i.i, ptr noundef null, i32 noundef 4096) #11
  call void @__sanitizer_cov_trace_cmp4(i32 %call43.i.i, i32 %call2.i.i.i)
  %cmp.i270.i = icmp slt i32 %call43.i.i, %call2.i.i.i
  br i1 %cmp.i270.i, label %if.then50.i.i, label %if.end59.i.i, !prof !337

if.then50.i.i:                                    ; preds = %if.end41.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %286 = ptrtoint ptr %qp.i263.i to i32
  call void @__asan_load4_noabort(i32 %286)
  %287 = load ptr, ptr %qp.i263.i, align 4
  %rdma_mrs53.i.i = getelementptr inbounds %struct.ib_qp, ptr %287, i32 0, i32 6
  %288 = ptrtoint ptr %mr.i265.i to i32
  call void @__asan_load4_noabort(i32 %288)
  %289 = load ptr, ptr %mr.i265.i, align 8
  call void @ib_mr_pool_put(ptr noundef %287, ptr noundef %rdma_mrs53.i.i, ptr noundef %289) #11
  %290 = ptrtoint ptr %mr.i265.i to i32
  call void @__asan_store4_noabort(i32 %290)
  store ptr null, ptr %mr.i265.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call43.i.i)
  %cmp56.i.i = icmp slt i32 %call43.i.i, 0
  %spec.select.i = select i1 %cmp56.i.i, i32 %call43.i.i, i32 -22
  br label %out_unmap_pi_sg.i

if.end59.i.i:                                     ; preds = %if.end41.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %291 = ptrtoint ptr %mr.i265.i to i32
  call void @__asan_load4_noabort(i32 %291)
  %292 = load ptr, ptr %mr.i265.i, align 8
  %rkey.i271.i = getelementptr inbounds %struct.ib_mr, ptr %292, i32 0, i32 3
  %293 = ptrtoint ptr %rkey.i271.i to i32
  call void @__asan_load4_noabort(i32 %293)
  %294 = load i32, ptr %rkey.i271.i, align 4
  %and1.i.i272.i = and i32 %294, -256
  %conv.i273.i = add i32 %294, 1
  %lkey.i.i274.i = getelementptr inbounds %struct.ib_mr, ptr %292, i32 0, i32 2
  %295 = ptrtoint ptr %lkey.i.i274.i to i32
  call void @__asan_load4_noabort(i32 %295)
  %296 = load i32, ptr %lkey.i.i274.i, align 8
  %and.i119.i.i = and i32 %296, -256
  %conv.i.i275.i = and i32 %conv.i273.i, 255
  %or.i120.i.i = or i32 %and.i119.i.i, %conv.i.i275.i
  store i32 %or.i120.i.i, ptr %lkey.i.i274.i, align 8
  %or4.i.i276.i = or i32 %conv.i.i275.i, %and1.i.i272.i
  store i32 %or4.i.i276.i, ptr %rkey.i271.i, align 4
  %reg_cqe.i277.i = getelementptr %struct.request, ptr %7, i32 2, i32 6
  %297 = ptrtoint ptr %reg_cqe.i277.i to i32
  call void @__asan_store4_noabort(i32 %297)
  store ptr @nvme_rdma_memreg_done, ptr %reg_cqe.i277.i, align 8
  %reg_wr.i278.i = getelementptr %struct.request, ptr %7, i32 1, i32 30, i32 0, i32 2
  %298 = call ptr @memset(ptr %reg_wr.i278.i, i32 0, i32 56)
  %opcode.i279.i = getelementptr %struct.request, ptr %7, i32 1, i32 32
  %299 = ptrtoint ptr %opcode.i279.i to i32
  call void @__asan_store4_noabort(i32 %299)
  store i32 32, ptr %opcode.i279.i, align 8
  %300 = getelementptr %struct.request, ptr %7, i32 1, i32 31
  %301 = ptrtoint ptr %300 to i32
  call void @__asan_store4_noabort(i32 %301)
  store ptr %reg_cqe.i277.i, ptr %300, align 8
  %302 = load ptr, ptr %mr.i265.i, align 8
  %mr71.i280.i = getelementptr %struct.request, ptr %7, i32 2, i32 2
  %303 = ptrtoint ptr %mr71.i280.i to i32
  call void @__asan_store4_noabort(i32 %303)
  store ptr %302, ptr %mr71.i280.i, align 8
  %rkey73.i281.i = getelementptr inbounds %struct.ib_mr, ptr %302, i32 0, i32 3
  %304 = ptrtoint ptr %rkey73.i281.i to i32
  call void @__asan_load4_noabort(i32 %304)
  %305 = load i32, ptr %rkey73.i281.i, align 4
  %key.i282.i = getelementptr %struct.request, ptr %7, i32 2, i32 3
  %306 = ptrtoint ptr %key.i282.i to i32
  call void @__asan_store4_noabort(i32 %306)
  store i32 %305, ptr %key.i282.i, align 4
  %access.i283.i = getelementptr %struct.request, ptr %7, i32 2, i32 4
  %307 = ptrtoint ptr %access.i283.i to i32
  call void @__asan_store4_noabort(i32 %307)
  store i32 7, ptr %access.i283.i, align 8
  %iova.i284.i = getelementptr inbounds %struct.ib_mr, ptr %302, i32 0, i32 4
  %308 = ptrtoint ptr %iova.i284.i to i32
  call void @__asan_load8_noabort(i32 %308)
  %309 = load i64, ptr %iova.i284.i, align 8
  %310 = call i64 @llvm.bswap.i64(i64 %309) #11
  %311 = ptrtoint ptr %dptr.i262.i to i32
  call void @__asan_store8_noabort(i32 %311)
  store i64 %310, ptr %dptr.i262.i, align 8
  %312 = ptrtoint ptr %mr.i265.i to i32
  call void @__asan_load4_noabort(i32 %312)
  %313 = load ptr, ptr %mr.i265.i, align 8
  %length.i285.i = getelementptr inbounds %struct.ib_mr, ptr %313, i32 0, i32 5
  %314 = ptrtoint ptr %length.i285.i to i32
  call void @__asan_load8_noabort(i32 %314)
  %315 = load i64, ptr %length.i285.i, align 8
  %length79.i.i = getelementptr inbounds %struct.nvme_common_command, ptr %9, i32 0, i32 6, i32 0, i32 1
  %conv.i.i.i286.i = trunc i64 %315 to i8
  %incdec.ptr.i.i.i287.i = getelementptr i8, ptr %length79.i.i, i32 1
  %316 = ptrtoint ptr %length79.i.i to i32
  call void @__asan_store1_noabort(i32 %316)
  store i8 %conv.i.i.i286.i, ptr %length79.i.i, align 1
  %shr.i.i121.i.i = lshr i64 %315, 8
  %conv1.i.i.i288.i = trunc i64 %shr.i.i121.i.i to i8
  %incdec.ptr2.i.i.i289.i = getelementptr i8, ptr %length79.i.i, i32 2
  %317 = ptrtoint ptr %incdec.ptr.i.i.i287.i to i32
  call void @__asan_store1_noabort(i32 %317)
  store i8 %conv1.i.i.i288.i, ptr %incdec.ptr.i.i.i287.i, align 1
  %shr3.i.i122.i.i = lshr i64 %315, 16
  %conv4.i.i.i290.i = trunc i64 %shr3.i.i122.i.i to i8
  %318 = ptrtoint ptr %incdec.ptr2.i.i.i289.i to i32
  call void @__asan_store1_noabort(i32 %318)
  store i8 %conv4.i.i.i290.i, ptr %incdec.ptr2.i.i.i289.i, align 1
  %319 = load ptr, ptr %mr.i265.i, align 8
  %rkey81.i.i = getelementptr inbounds %struct.ib_mr, ptr %319, i32 0, i32 3
  %320 = ptrtoint ptr %rkey81.i.i to i32
  call void @__asan_load4_noabort(i32 %320)
  %321 = load i32, ptr %rkey81.i.i, align 4
  %key82.i.i = getelementptr inbounds %struct.nvme_keyed_sgl_desc, ptr %dptr.i262.i, i32 0, i32 2
  %322 = call i32 @llvm.bswap.i32(i32 %321) #11
  %323 = ptrtoint ptr %key82.i.i to i32
  call void @__asan_storeN_noabort(i32 %323, i32 4)
  store i32 %322, ptr %key82.i.i, align 1
  %type.i291.i = getelementptr inbounds %struct.nvme_keyed_sgl_desc, ptr %dptr.i262.i, i32 0, i32 3
  %324 = ptrtoint ptr %type.i291.i to i32
  call void @__asan_store1_noabort(i32 %324)
  store i8 79, ptr %type.i291.i, align 1
  br label %if.end100

out_unmap_pi_sg.i:                                ; preds = %if.then50.i.i, %if.then.i268.i, %land.rhs.i267.i.out_unmap_pi_sg.i_crit_edge, %mr_put.i.i, %if.then.i.i199, %land.rhs.i.i198.out_unmap_pi_sg.i_crit_edge
  %ret.0.ph.i = phi i32 [ -11, %land.rhs.i267.i.out_unmap_pi_sg.i_crit_edge ], [ -11, %if.then.i268.i ], [ -11, %land.rhs.i.i198.out_unmap_pi_sg.i_crit_edge ], [ %call48..i.i, %mr_put.i.i ], [ -11, %if.then.i.i199 ], [ %spec.select.i, %if.then50.i.i ]
  %325 = ptrtoint ptr %cmd_flags.i to i32
  call void @__asan_load4_noabort(i32 %325)
  %326 = load i32, ptr %cmd_flags.i, align 4
  %327 = and i32 %326, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %327)
  %tobool.i294.not.i = icmp eq i32 %327, 0
  br i1 %tobool.i294.not.i, label %out_unmap_pi_sg.i.out_free_pi_table.i_crit_edge, label %if.then135.i

out_unmap_pi_sg.i.out_free_pi_table.i_crit_edge:  ; preds = %out_unmap_pi_sg.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %out_free_pi_table.i

if.then135.i:                                     ; preds = %out_unmap_pi_sg.i
  call void @__sanitizer_cov_trace_pc() #13
  %metadata_sgl136.i = getelementptr %struct.request, ptr %7, i32 2, i32 10
  %328 = ptrtoint ptr %metadata_sgl136.i to i32
  call void @__asan_load4_noabort(i32 %328)
  %329 = load ptr, ptr %metadata_sgl136.i, align 8
  %sg_table137.i = getelementptr inbounds %struct.nvme_rdma_sgl, ptr %329, i32 0, i32 1
  %330 = ptrtoint ptr %sg_table137.i to i32
  call void @__asan_load4_noabort(i32 %330)
  %331 = load ptr, ptr %sg_table137.i, align 4
  %332 = ptrtoint ptr %329 to i32
  call void @__asan_load4_noabort(i32 %332)
  %333 = load i32, ptr %329, align 4
  %and.i295.i = and i32 %326, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i295.i)
  %tobool.i296.not.i = icmp eq i32 %and.i295.i, 0
  %cond145.i = select i1 %tobool.i296.not.i, i32 2, i32 1
  %334 = ptrtoint ptr %58 to i32
  call void @__asan_load4_noabort(i32 %334)
  %335 = load ptr, ptr %58, align 8
  call void @dma_unmap_sg_attrs(ptr noundef %335, ptr noundef %331, i32 noundef %333, i32 noundef %cond145.i, i32 noundef 0) #11
  br label %out_free_pi_table.i

out_free_pi_table.i:                              ; preds = %if.then135.i, %out_unmap_pi_sg.i.out_free_pi_table.i_crit_edge, %if.end56.i.out_free_pi_table.i_crit_edge
  %ret.1.i = phi i32 [ %ret.0.ph.i, %if.then135.i ], [ %ret.0.ph.i, %out_unmap_pi_sg.i.out_free_pi_table.i_crit_edge ], [ -5, %if.end56.i.out_free_pi_table.i_crit_edge ]
  %336 = ptrtoint ptr %cmd_flags.i to i32
  call void @__asan_load4_noabort(i32 %336)
  %337 = load i32, ptr %cmd_flags.i, align 4
  %338 = and i32 %337, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %338)
  %tobool.i298.not.i = icmp eq i32 %338, 0
  br i1 %tobool.i298.not.i, label %out_free_pi_table.i.out_unmap_sg.i_crit_edge, label %if.then148.i

out_free_pi_table.i.out_unmap_sg.i_crit_edge:     ; preds = %out_free_pi_table.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %out_unmap_sg.i

if.then148.i:                                     ; preds = %out_free_pi_table.i
  call void @__sanitizer_cov_trace_pc() #13
  %metadata_sgl149.i = getelementptr %struct.request, ptr %7, i32 2, i32 10
  %339 = ptrtoint ptr %metadata_sgl149.i to i32
  call void @__asan_load4_noabort(i32 %339)
  %340 = load ptr, ptr %metadata_sgl149.i, align 8
  %sg_table150.i = getelementptr inbounds %struct.nvme_rdma_sgl, ptr %340, i32 0, i32 1
  call void @sg_free_table_chained(ptr noundef %sg_table150.i, i32 noundef 1) #11
  br label %out_unmap_sg.i

out_unmap_sg.i:                                   ; preds = %if.then148.i, %out_free_pi_table.i.out_unmap_sg.i_crit_edge, %if.then35.i.out_unmap_sg.i_crit_edge
  %ret.2.i = phi i32 [ %ret.1.i, %if.then148.i ], [ %ret.1.i, %out_free_pi_table.i.out_unmap_sg.i_crit_edge ], [ -12, %if.then35.i.out_unmap_sg.i_crit_edge ]
  %341 = ptrtoint ptr %sg_table310.i to i32
  call void @__asan_load4_noabort(i32 %341)
  %342 = load ptr, ptr %sg_table310.i, align 4
  %343 = ptrtoint ptr %data_sgl308.i to i32
  call void @__asan_load4_noabort(i32 %343)
  %344 = load i32, ptr %data_sgl308.i, align 8
  %345 = ptrtoint ptr %cmd_flags.i to i32
  call void @__asan_load4_noabort(i32 %345)
  %346 = load i32, ptr %cmd_flags.i, align 4
  %and.i299.i = and i32 %346, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i299.i)
  %tobool.i300.not.i = icmp eq i32 %and.i299.i, 0
  %cond161.i = select i1 %tobool.i300.not.i, i32 2, i32 1
  %347 = ptrtoint ptr %58 to i32
  call void @__asan_load4_noabort(i32 %347)
  %348 = load ptr, ptr %58, align 8
  call void @dma_unmap_sg_attrs(ptr noundef %348, ptr noundef %342, i32 noundef %344, i32 noundef %cond161.i, i32 noundef 0) #11
  br label %out_free_table.i

out_free_table.i:                                 ; preds = %out_unmap_sg.i, %if.end15.i.out_free_table.i_crit_edge
  %ret.3.i = phi i32 [ %ret.2.i, %out_unmap_sg.i ], [ -5, %if.end15.i.out_free_table.i_crit_edge ]
  call void @sg_free_table_chained(ptr noundef %sg_table310.i, i32 noundef 2) #11
  br label %do.end96

do.end96:                                         ; preds = %out_free_table.i, %blk_rq_nr_phys_segments.exit246.i.do.end96_crit_edge
  %retval.0.i203 = phi i32 [ %ret.3.i, %out_free_table.i ], [ -12, %blk_rq_nr_phys_segments.exit246.i.do.end96_crit_edge ]
  %349 = ptrtoint ptr %ctrl to i32
  call void @__asan_load4_noabort(i32 %349)
  %350 = load ptr, ptr %ctrl, align 4
  %device99 = getelementptr inbounds %struct.nvme_rdma_ctrl, ptr %350, i32 0, i32 11, i32 17
  %351 = ptrtoint ptr %device99 to i32
  call void @__asan_load4_noabort(i32 %351)
  %352 = load ptr, ptr %device99, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %352, ptr noundef nonnull @.str.128, i32 noundef %retval.0.i203) #15
  br label %err113

if.end100:                                        ; preds = %if.end59.i.i, %if.then120.i, %if.then111.i, %nvme_rdma_set_prot_checks.exit.i.i, %if.then.i
  %353 = ptrtoint ptr %sqe3 to i32
  call void @__asan_store4_noabort(i32 %353)
  store ptr @nvme_rdma_send_done, ptr %sqe3, align 8
  %354 = ptrtoint ptr %dma to i32
  call void @__asan_load8_noabort(i32 %354)
  %355 = load i64, ptr %dma, align 8
  %356 = ptrtoint ptr %28 to i32
  call void @__asan_load4_noabort(i32 %356)
  %357 = load ptr, ptr %28, align 8
  %conv.i204 = trunc i64 %355 to i32
  call void @dma_sync_single_for_device(ptr noundef %357, i32 noundef %conv.i204, i32 noundef 64, i32 noundef 1) #11
  %sge = getelementptr %struct.request, ptr %7, i32 1, i32 14
  %358 = ptrtoint ptr %num_sge.i to i32
  call void @__asan_load4_noabort(i32 %358)
  %359 = load i32, ptr %num_sge.i, align 8
  %mr = getelementptr %struct.request, ptr %7, i32 1, i32 8
  %360 = ptrtoint ptr %mr to i32
  call void @__asan_load4_noabort(i32 %360)
  %361 = load ptr, ptr %mr, align 8
  %tobool102.not = icmp eq ptr %361, null
  %reg_wr = getelementptr %struct.request, ptr %7, i32 1, i32 30, i32 0, i32 2
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %wr.i) #11
  %362 = call ptr @memset(ptr %wr.i, i32 255, i32 40)
  %363 = ptrtoint ptr %dma to i32
  call void @__asan_load8_noabort(i32 %363)
  %364 = load i64, ptr %dma, align 8
  %365 = ptrtoint ptr %sge to i32
  call void @__asan_store8_noabort(i32 %365)
  store i64 %364, ptr %sge, align 8
  %length.i = getelementptr %struct.request, ptr %7, i32 1, i32 15
  %366 = ptrtoint ptr %length.i to i32
  call void @__asan_store4_noabort(i32 %366)
  store i32 64, ptr %length.i, align 8
  %367 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %367)
  %368 = load ptr, ptr %device, align 4
  %pd.i206 = getelementptr inbounds %struct.nvme_rdma_device, ptr %368, i32 0, i32 1
  %369 = ptrtoint ptr %pd.i206 to i32
  call void @__asan_load4_noabort(i32 %369)
  %370 = load ptr, ptr %pd.i206, align 4
  %371 = ptrtoint ptr %370 to i32
  call void @__asan_load4_noabort(i32 %371)
  %372 = load i32, ptr %370, align 4
  %lkey.i = getelementptr inbounds %struct.ib_sge, ptr %sge, i32 0, i32 2
  %373 = ptrtoint ptr %lkey.i to i32
  call void @__asan_store4_noabort(i32 %373)
  store i32 %372, ptr %lkey.i, align 4
  %374 = ptrtoint ptr %wr.i to i32
  call void @__asan_store4_noabort(i32 %374)
  store ptr null, ptr %wr.i, align 8
  %375 = getelementptr inbounds %struct.ib_send_wr, ptr %wr.i, i32 0, i32 1
  %376 = ptrtoint ptr %375 to i32
  call void @__asan_store4_noabort(i32 %376)
  store ptr %sqe3, ptr %375, align 8
  %sg_list.i = getelementptr inbounds %struct.ib_send_wr, ptr %wr.i, i32 0, i32 2
  %377 = ptrtoint ptr %sg_list.i to i32
  call void @__asan_store4_noabort(i32 %377)
  store ptr %sge, ptr %sg_list.i, align 8
  %num_sge1.i = getelementptr inbounds %struct.ib_send_wr, ptr %wr.i, i32 0, i32 3
  %378 = ptrtoint ptr %num_sge1.i to i32
  call void @__asan_store4_noabort(i32 %378)
  store i32 %359, ptr %num_sge1.i, align 4
  %opcode.i = getelementptr inbounds %struct.ib_send_wr, ptr %wr.i, i32 0, i32 4
  %379 = ptrtoint ptr %opcode.i to i32
  call void @__asan_store4_noabort(i32 %379)
  store i32 2, ptr %opcode.i, align 8
  %send_flags.i = getelementptr inbounds %struct.ib_send_wr, ptr %wr.i, i32 0, i32 5
  %380 = ptrtoint ptr %send_flags.i to i32
  call void @__asan_store4_noabort(i32 %380)
  store i32 2, ptr %send_flags.i, align 4
  %tobool.not.i207216 = icmp eq ptr %reg_wr, null
  %tobool.not.i207 = select i1 %tobool102.not, i1 true, i1 %tobool.not.i207216
  br i1 %tobool.not.i207, label %if.end100.if.end.i210_crit_edge, label %if.then.i208

if.end100.if.end.i210_crit_edge:                  ; preds = %if.end100
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i210

if.then.i208:                                     ; preds = %if.end100
  call void @__sanitizer_cov_trace_pc() #13
  %381 = ptrtoint ptr %reg_wr to i32
  call void @__asan_store4_noabort(i32 %381)
  store ptr %wr.i, ptr %reg_wr, align 8
  br label %if.end.i210

if.end.i210:                                      ; preds = %if.then.i208, %if.end100.if.end.i210_crit_edge
  %first.addr.0.i = phi ptr [ %reg_wr, %if.then.i208 ], [ %wr.i, %if.end100.if.end.i210_crit_edge ]
  %qp.i = getelementptr inbounds %struct.nvme_rdma_queue, ptr %5, i32 0, i32 6
  %382 = ptrtoint ptr %qp.i to i32
  call void @__asan_load4_noabort(i32 %382)
  %383 = load ptr, ptr %qp.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %dummy.i.i) #11
  %384 = ptrtoint ptr %dummy.i.i to i32
  call void @__asan_store4_noabort(i32 %384)
  store ptr inttoptr (i32 -1 to ptr), ptr %dummy.i.i, align 4, !annotation !342
  %385 = ptrtoint ptr %383 to i32
  call void @__asan_load4_noabort(i32 %385)
  %386 = load ptr, ptr %383, align 4
  %post_send.i.i = getelementptr inbounds %struct.ib_device, ptr %386, i32 0, i32 1, i32 6
  %387 = ptrtoint ptr %post_send.i.i to i32
  call void @__asan_load4_noabort(i32 %387)
  %388 = load ptr, ptr %post_send.i.i, align 4
  %call.i.i209 = call i32 %388(ptr noundef %383, ptr noundef nonnull %first.addr.0.i, ptr noundef nonnull %dummy.i.i) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dummy.i.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i209)
  %tobool3.not.i = icmp eq i32 %call.i.i209, 0
  br i1 %tobool3.not.i, label %nvme_rdma_post_send.exit.thread, label %err_unmap, !prof !338

nvme_rdma_post_send.exit.thread:                  ; preds = %if.end.i210
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %wr.i) #11
  br label %cleanup

err_unmap:                                        ; preds = %if.end.i210
  call void @__sanitizer_cov_trace_pc() #13
  %389 = ptrtoint ptr %ctrl to i32
  call void @__asan_load4_noabort(i32 %389)
  %390 = load ptr, ptr %ctrl, align 4
  %device8.i = getelementptr inbounds %struct.nvme_rdma_ctrl, ptr %390, i32 0, i32 11, i32 17
  %391 = ptrtoint ptr %device8.i to i32
  call void @__asan_load4_noabort(i32 %391)
  %392 = load ptr, ptr %device8.i, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %392, ptr noundef nonnull @.str.37, ptr noundef nonnull @.str.38, i32 noundef %call.i.i209) #15
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %wr.i) #11
  call fastcc void @nvme_rdma_unmap_data(ptr noundef %5, ptr noundef %7)
  br label %err113

err113:                                           ; preds = %err_unmap, %do.end96
  %err.0 = phi i32 [ %retval.0.i203, %do.end96 ], [ %call.i.i209, %err_unmap ]
  %393 = zext i32 %err.0 to i64
  call void @__sanitizer_cov_trace_switch(i64 %393, ptr @__sancov_gen_cov_switch_values.147)
  switch i32 %err.0, label %if.else125 [
    i32 -5, label %if.then116
    i32 -12, label %err113.if.end127_crit_edge
    i32 -11, label %err113.if.end127_crit_edge217
  ]

err113.if.end127_crit_edge217:                    ; preds = %err113
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end127

err113.if.end127_crit_edge:                       ; preds = %err113
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end127

if.then116:                                       ; preds = %err113
  call void @__sanitizer_cov_trace_pc() #13
  %call117 = call zeroext i8 @nvme_host_path_error(ptr noundef %7) #11
  br label %if.end127

if.else125:                                       ; preds = %err113
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end127

if.end127:                                        ; preds = %if.else125, %if.then116, %err113.if.end127_crit_edge, %err113.if.end127_crit_edge217
  %ret.0 = phi i8 [ %call117, %if.then116 ], [ 10, %if.else125 ], [ 9, %err113.if.end127_crit_edge ], [ 9, %err113.if.end127_crit_edge217 ]
  call void @nvme_cleanup_cmd(ptr noundef %7) #11
  br label %unmap_qe

unmap_qe:                                         ; preds = %if.end127, %if.end65.unmap_qe_crit_edge
  %ret.1 = phi i8 [ %call67, %if.end65.unmap_qe_crit_edge ], [ %ret.0, %if.end127 ]
  %394 = ptrtoint ptr %dma to i32
  call void @__asan_load8_noabort(i32 %394)
  %395 = load i64, ptr %dma, align 8
  %396 = ptrtoint ptr %28 to i32
  call void @__asan_load4_noabort(i32 %396)
  %397 = load ptr, ptr %28, align 8
  %conv.i211 = trunc i64 %395 to i32
  call void @dma_unmap_page_attrs(ptr noundef %397, i32 noundef %conv.i211, i32 noundef 64, i32 noundef 1, i32 noundef 0) #11
  br label %cleanup

cleanup:                                          ; preds = %unmap_qe, %nvme_rdma_post_send.exit.thread, %ib_dma_map_single.exit.cleanup_crit_edge, %if.then45
  %retval.0 = phi i8 [ %ret.1, %unmap_qe ], [ %call48, %if.then45 ], [ 9, %ib_dma_map_single.exit.cleanup_crit_edge ], [ 0, %nvme_rdma_post_send.exit.thread ]
  ret i8 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nvme_rdma_timeout(ptr noundef %rq, i1 noundef zeroext %reserved) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %queue1 = getelementptr %struct.request, ptr %rq, i32 2, i32 7
  %0 = ptrtoint ptr %queue1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %queue1, align 4
  %ctrl2 = getelementptr inbounds %struct.nvme_rdma_queue, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %ctrl2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ctrl2, align 4
  %device = getelementptr inbounds %struct.nvme_rdma_ctrl, ptr %3, i32 0, i32 11, i32 17
  %4 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %device, align 8
  %tag = getelementptr inbounds %struct.request, ptr %rq, i32 0, i32 5
  %6 = ptrtoint ptr %tag to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %tag, align 4
  %8 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %3, align 8
  %sub.ptr.lhs.cast.i = ptrtoint ptr %1 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %9 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %sub.ptr.div.i = sdiv exact i32 %sub.ptr.sub.i, 196
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %5, ptr noundef nonnull @.str.133, i32 noundef %7, i32 noundef %sub.ptr.div.i) #15
  %state = getelementptr inbounds %struct.nvme_rdma_ctrl, ptr %3, i32 0, i32 11, i32 1
  %10 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %11)
  %cmp.not = icmp eq i32 %11, 1
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %12 = ptrtoint ptr %queue1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %queue1, align 4
  %queue_lock.i.i = getelementptr inbounds %struct.nvme_rdma_queue, ptr %13, i32 0, i32 13
  tail call void @mutex_lock_nested(ptr noundef %queue_lock.i.i, i32 noundef 0) #11
  %flags.i.i = getelementptr inbounds %struct.nvme_rdma_queue, ptr %13, i32 0, i32 7
  %call.i.i = tail call i32 @_test_and_clear_bit(i32 noundef 1, ptr noundef %flags.i.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %if.then.nvme_rdma_stop_queue.exit.i_crit_edge, label %if.then.i.i

if.then.nvme_rdma_stop_queue.exit.i_crit_edge:    ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %nvme_rdma_stop_queue.exit.i

if.then.i.i:                                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  %cm_id.i.i.i = getelementptr inbounds %struct.nvme_rdma_queue, ptr %13, i32 0, i32 8
  %14 = ptrtoint ptr %cm_id.i.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %cm_id.i.i.i, align 4
  %call.i.i.i = tail call i32 @rdma_disconnect(ptr noundef %15) #11
  %qp.i.i.i = getelementptr inbounds %struct.nvme_rdma_queue, ptr %13, i32 0, i32 6
  %16 = ptrtoint ptr %qp.i.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %qp.i.i.i, align 4
  tail call void @ib_drain_qp(ptr noundef %17) #11
  br label %nvme_rdma_stop_queue.exit.i

nvme_rdma_stop_queue.exit.i:                      ; preds = %if.then.i.i, %if.then.nvme_rdma_stop_queue.exit.i_crit_edge
  tail call void @mutex_unlock(ptr noundef %queue_lock.i.i) #11
  %state.i.i.i = getelementptr inbounds %struct.request, ptr %rq, i32 0, i32 25
  %18 = ptrtoint ptr %state.i.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile i32, ptr %state.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %cmp.i.not.i = icmp eq i32 %19, 0
  br i1 %cmp.i.not.i, label %nvme_rdma_stop_queue.exit.i.cleanup_crit_edge, label %land.lhs.true.i

nvme_rdma_stop_queue.exit.i.cleanup_crit_edge:    ; preds = %nvme_rdma_stop_queue.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

land.lhs.true.i:                                  ; preds = %nvme_rdma_stop_queue.exit.i
  %20 = ptrtoint ptr %state.i.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile i32, ptr %state.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %21)
  %cmp.i11.not.i = icmp eq i32 %21, 2
  br i1 %cmp.i11.not.i, label %land.lhs.true.i.cleanup_crit_edge, label %if.then.i

land.lhs.true.i.cleanup_crit_edge:                ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  %status.i = getelementptr %struct.request, ptr %rq, i32 1, i32 5
  %22 = ptrtoint ptr %status.i to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 881, ptr %status.i, align 4
  tail call void @blk_mq_complete_request(ptr noundef %rq) #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %ctrl1.i = getelementptr inbounds %struct.nvme_rdma_ctrl, ptr %3, i32 0, i32 11
  %call.i = tail call zeroext i1 @nvme_change_ctrl_state(ptr noundef %ctrl1.i, i32 noundef 2) #11
  br i1 %call.i, label %do.end.i, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %23 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %device, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %24, ptr noundef nonnull @.str.34) #15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nvme_reset_wq to i32))
  %25 = load ptr, ptr @nvme_reset_wq, align 4
  %err_work.i = getelementptr inbounds %struct.nvme_rdma_ctrl, ptr %3, i32 0, i32 2
  %call.i.i13 = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %25, ptr noundef %err_work.i) #11
  br label %cleanup

cleanup:                                          ; preds = %do.end.i, %if.end.cleanup_crit_edge, %if.then.i, %land.lhs.true.i.cleanup_crit_edge, %nvme_rdma_stop_queue.exit.i.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %nvme_rdma_stop_queue.exit.i.cleanup_crit_edge ], [ 0, %land.lhs.true.i.cleanup_crit_edge ], [ 0, %if.then.i ], [ 1, %if.end.cleanup_crit_edge ], [ 1, %do.end.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nvme_rdma_init_admin_hctx(ptr nocapture noundef writeonly %hctx, ptr nocapture noundef readonly %data, i32 noundef %hctx_idx) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %hctx_idx)
  %cmp.not = icmp eq i32 %hctx_idx, 0
  br i1 %cmp.not, label %do.end7, label %do.body2, !prof !338

do.body2:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/nvme/host/rdma.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 341, 0\0A.popsection", ""() #11, !srcloc !346
  unreachable

do.end7:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 8
  %driver_data = getelementptr inbounds %struct.blk_mq_hw_ctx, ptr %hctx, i32 0, i32 9
  %2 = ptrtoint ptr %driver_data to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %1, ptr %driver_data, align 128
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nvme_rdma_init_request(ptr noundef readonly %set, ptr noundef %rq, i32 noundef %hctx_idx, i32 noundef %numa_node) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data = getelementptr inbounds %struct.blk_mq_tag_set, ptr %set, i32 0, i32 10
  %0 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data, align 4
  %add.ptr.i = getelementptr %struct.request, ptr %rq, i32 1
  %tag_set = getelementptr inbounds %struct.nvme_rdma_ctrl, ptr %1, i32 0, i32 1
  %cmp = icmp eq ptr %tag_set, %set
  %add = add i32 %hctx_idx, 1
  %spec.select = select i1 %cmp, i32 %add, i32 0
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %arrayidx = getelementptr %struct.nvme_rdma_queue, ptr %3, i32 %spec.select
  %ctrl1 = getelementptr inbounds %struct.nvme_rdma_ctrl, ptr %1, i32 0, i32 11
  %ctrl3 = getelementptr %struct.request, ptr %rq, i32 1, i32 6
  %4 = ptrtoint ptr %ctrl3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %ctrl1, ptr %ctrl3, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %5 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %5, i32 noundef 3520, i32 noundef 64) #14
  %data = getelementptr inbounds %struct.nvme_rdma_request, ptr %add.ptr.i, i32 0, i32 2, i32 1
  %6 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call7.i.i, ptr %data, align 4
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %pi_support = getelementptr %struct.nvme_rdma_queue, ptr %3, i32 %spec.select, i32 11
  %7 = ptrtoint ptr %pi_support to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %pi_support, align 4, !range !336
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool7.not = icmp eq i8 %8, 0
  br i1 %tobool7.not, label %if.end.if.end11_crit_edge, label %if.then8

if.end.if.end11_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end11

if.then8:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %add.ptr10 = getelementptr %struct.request, ptr %rq, i32 2, i32 17
  %metadata_sgl = getelementptr %struct.request, ptr %rq, i32 2, i32 10
  %9 = ptrtoint ptr %metadata_sgl to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %add.ptr10, ptr %metadata_sgl, align 8
  br label %if.end11

if.end11:                                         ; preds = %if.then8, %if.end.if.end11_crit_edge
  %queue12 = getelementptr %struct.request, ptr %rq, i32 2, i32 7
  %10 = ptrtoint ptr %queue12 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %arrayidx, ptr %queue12, align 4
  %11 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call7.i.i, ptr %add.ptr.i, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end11, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end11 ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nvme_rdma_exit_request(ptr nocapture noundef readnone %set, ptr nocapture noundef readonly %rq, i32 noundef %hctx_idx) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr %struct.request, ptr %rq, i32 1
  %data = getelementptr inbounds %struct.nvme_rdma_request, ptr %add.ptr.i, i32 0, i32 2, i32 1
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  tail call void @kfree(ptr noundef %1) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @nvme_fail_nonready_command(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @nvme_setup_cmd(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_mq_start_request(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nvme_rdma_send_done(ptr nocapture noundef readnone %cq, ptr nocapture noundef readonly %wc) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %status = getelementptr inbounds %struct.ib_wc, ptr %wc, i32 0, i32 1
  %0 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %status, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp.not = icmp eq i32 %1, 0
  br i1 %cmp.not, label %if.else, label %if.then, !prof !338

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call fastcc void @nvme_rdma_wr_error(ptr noundef %wc, ptr noundef nonnull @.str.132)
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %2 = ptrtoint ptr %wc to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %wc, align 8
  %add.ptr3 = getelementptr i8, ptr %3, i32 -40
  tail call fastcc void @nvme_rdma_end_request(ptr noundef %add.ptr3)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @nvme_host_path_error(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvme_cleanup_cmd(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__nvme_check_ready(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sg_alloc_table_chained(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @blk_rq_count_integrity_sg(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @blk_rq_map_integrity_sg(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @nvme_rdma_map_sg_inline(ptr nocapture noundef readonly %queue, ptr nocapture noundef %req, ptr nocapture noundef writeonly %c, i32 noundef %count) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count)
  %cmp1 = icmp sgt i32 %count, 0
  br i1 %cmp1, label %for.body.lr.ph, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %sg_table = getelementptr inbounds %struct.nvme_rdma_request, ptr %req, i32 0, i32 11, i32 1
  %0 = ptrtoint ptr %sg_table to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sg_table, align 4
  %arrayidx = getelementptr %struct.nvme_rdma_request, ptr %req, i32 0, i32 6, i32 1
  %device = getelementptr inbounds %struct.nvme_rdma_queue, ptr %queue, i32 0, i32 4
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.05 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %len.04 = phi i32 [ 0, %for.body.lr.ph ], [ %add, %for.body.for.body_crit_edge ]
  %sgl.03 = phi ptr [ %1, %for.body.lr.ph ], [ %call, %for.body.for.body_crit_edge ]
  %sge.02 = phi ptr [ %arrayidx, %for.body.lr.ph ], [ %incdec.ptr, %for.body.for.body_crit_edge ]
  %dma_address = getelementptr inbounds %struct.scatterlist, ptr %sgl.03, i32 0, i32 3
  %2 = ptrtoint ptr %dma_address to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %dma_address, align 4
  %conv = zext i32 %3 to i64
  %4 = ptrtoint ptr %sge.02 to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 %conv, ptr %sge.02, align 8
  %dma_length = getelementptr inbounds %struct.scatterlist, ptr %sgl.03, i32 0, i32 4
  %5 = ptrtoint ptr %dma_length to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %dma_length, align 4
  %length = getelementptr inbounds %struct.ib_sge, ptr %sge.02, i32 0, i32 1
  %7 = ptrtoint ptr %length to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %length, align 8
  %8 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %device, align 4
  %pd = getelementptr inbounds %struct.nvme_rdma_device, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %pd to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pd, align 4
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %11, align 4
  %lkey = getelementptr inbounds %struct.ib_sge, ptr %sge.02, i32 0, i32 2
  %14 = ptrtoint ptr %lkey to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %lkey, align 4
  %add = add i32 %6, %len.04
  %incdec.ptr = getelementptr %struct.ib_sge, ptr %sge.02, i32 1
  %inc = add nuw nsw i32 %i.05, 1
  %call = tail call ptr @sg_next(ptr noundef %sgl.03) #11
  %exitcond.not = icmp eq i32 %inc, %count
  br i1 %exitcond.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  %len.0.lcssa = phi i32 [ 0, %entry.for.end_crit_edge ], [ %add, %for.body.for.end_crit_edge ]
  %dptr = getelementptr inbounds %struct.nvme_common_command, ptr %c, i32 0, i32 6
  %ctrl = getelementptr inbounds %struct.nvme_rdma_queue, ptr %queue, i32 0, i32 3
  %15 = ptrtoint ptr %ctrl to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %ctrl, align 4
  %icdoff = getelementptr inbounds %struct.nvme_rdma_ctrl, ptr %16, i32 0, i32 11, i32 89
  %17 = ptrtoint ptr %icdoff to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %icdoff, align 4
  %conv5 = zext i16 %18 to i64
  %19 = tail call i64 @llvm.bswap.i64(i64 %conv5)
  %20 = ptrtoint ptr %dptr to i32
  call void @__asan_store8_noabort(i32 %20)
  store i64 %19, ptr %dptr, align 8
  %21 = tail call i32 @llvm.bswap.i32(i32 %len.0.lcssa)
  %length7 = getelementptr inbounds %struct.nvme_common_command, ptr %c, i32 0, i32 6, i32 0, i32 1
  %22 = ptrtoint ptr %length7 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %length7, align 8
  %type = getelementptr inbounds %struct.nvme_sgl_desc, ptr %dptr, i32 0, i32 3
  %23 = ptrtoint ptr %type to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 1, ptr %type, align 1
  %num_sge = getelementptr inbounds %struct.nvme_rdma_request, ptr %req, i32 0, i32 7
  %24 = ptrtoint ptr %num_sge to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %num_sge, align 8
  %add8 = add i32 %25, %count
  store i32 %add8, ptr %num_sge, align 8
  ret void
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal fastcc void @nvme_rdma_map_sg_single(ptr nocapture noundef readonly %queue, ptr nocapture noundef readonly %req, ptr nocapture noundef writeonly %c) unnamed_addr #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %dptr = getelementptr inbounds %struct.nvme_common_command, ptr %c, i32 0, i32 6
  %sg_table = getelementptr inbounds %struct.nvme_rdma_request, ptr %req, i32 0, i32 11, i32 1
  %0 = ptrtoint ptr %sg_table to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sg_table, align 4
  %dma_address = getelementptr inbounds %struct.scatterlist, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %dma_address to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %dma_address, align 4
  %conv = zext i32 %3 to i64
  %4 = tail call i64 @llvm.bswap.i64(i64 %conv)
  %5 = ptrtoint ptr %dptr to i32
  call void @__asan_store8_noabort(i32 %5)
  store i64 %4, ptr %dptr, align 8
  %6 = ptrtoint ptr %sg_table to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %sg_table, align 4
  %dma_length = getelementptr inbounds %struct.scatterlist, ptr %7, i32 0, i32 4
  %8 = ptrtoint ptr %dma_length to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %dma_length, align 4
  %length = getelementptr inbounds %struct.nvme_common_command, ptr %c, i32 0, i32 6, i32 0, i32 1
  %conv.i.i = trunc i32 %9 to i8
  %incdec.ptr.i.i = getelementptr i8, ptr %length, i32 1
  %10 = ptrtoint ptr %length to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %conv.i.i, ptr %length, align 1
  %shr.i.i = lshr i32 %9, 8
  %conv1.i.i = trunc i32 %shr.i.i to i8
  %incdec.ptr2.i.i = getelementptr i8, ptr %length, i32 2
  %11 = ptrtoint ptr %incdec.ptr.i.i to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %conv1.i.i, ptr %incdec.ptr.i.i, align 1
  %shr3.i.i = lshr i32 %9, 16
  %conv4.i.i = trunc i32 %shr3.i.i to i8
  %12 = ptrtoint ptr %incdec.ptr2.i.i to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %conv4.i.i, ptr %incdec.ptr2.i.i, align 1
  %device = getelementptr inbounds %struct.nvme_rdma_queue, ptr %queue, i32 0, i32 4
  %13 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %device, align 4
  %pd = getelementptr inbounds %struct.nvme_rdma_device, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %pd to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %pd, align 4
  %unsafe_global_rkey = getelementptr inbounds %struct.ib_pd, ptr %16, i32 0, i32 5
  %17 = ptrtoint ptr %unsafe_global_rkey to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %unsafe_global_rkey, align 4
  %key = getelementptr inbounds %struct.nvme_keyed_sgl_desc, ptr %dptr, i32 0, i32 2
  %19 = tail call i32 @llvm.bswap.i32(i32 %18) #11
  %20 = ptrtoint ptr %key to i32
  call void @__asan_storeN_noabort(i32 %20, i32 4)
  store i32 %19, ptr %key, align 1
  %type = getelementptr inbounds %struct.nvme_keyed_sgl_desc, ptr %dptr, i32 0, i32 3
  %21 = ptrtoint ptr %type to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 64, ptr %type, align 1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__blk_rq_map_sg(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_map_sg_attrs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ib_mr_pool_get(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ib_map_mr_sg_pi(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nvme_rdma_sig_done(ptr nocapture noundef readnone %cq, ptr nocapture noundef readonly %wc) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %status = getelementptr inbounds %struct.ib_wc, ptr %wc, i32 0, i32 1
  %0 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %status, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp.not = icmp eq i32 %1, 0
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %if.then, !prof !338

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call fastcc void @nvme_rdma_wr_error(ptr noundef %wc, ptr noundef nonnull @.str.130)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #8

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sg_next(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ib_map_mr_sg(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nvme_rdma_memreg_done(ptr nocapture noundef readnone %cq, ptr nocapture noundef readonly %wc) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %status = getelementptr inbounds %struct.ib_wc, ptr %wc, i32 0, i32 1
  %0 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %status, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp.not = icmp eq i32 %1, 0
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %if.then, !prof !338

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call fastcc void @nvme_rdma_wr_error(ptr noundef %wc, ptr noundef nonnull @.str.131)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_mq_complete_request(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nvme_rdma_poll(ptr nocapture noundef readonly %hctx, ptr nocapture noundef readnone %iob) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data = getelementptr inbounds %struct.blk_mq_hw_ctx, ptr %hctx, i32 0, i32 9
  %0 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data, align 128
  %ib_cq = getelementptr inbounds %struct.nvme_rdma_queue, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %ib_cq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ib_cq, align 4
  %call = tail call i32 @ib_process_cq_direct(ptr noundef %3, i32 noundef -1) #11
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nvme_rdma_init_hctx(ptr nocapture noundef writeonly %hctx, ptr nocapture noundef readonly %data, i32 noundef %hctx_idx) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %queue_count = getelementptr inbounds %struct.nvme_rdma_ctrl, ptr %data, i32 0, i32 11, i32 30
  %0 = ptrtoint ptr %queue_count to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %queue_count, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %hctx_idx)
  %cmp.not = icmp ugt i32 %1, %hctx_idx
  br i1 %cmp.not, label %do.end8, label %do.body3, !prof !338

do.body3:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/nvme/host/rdma.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 329, 0\0A.popsection", ""() #11, !srcloc !347
  unreachable

do.end8:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %2 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data, align 8
  %add = add nuw i32 %hctx_idx, 1
  %arrayidx = getelementptr %struct.nvme_rdma_queue, ptr %3, i32 %add
  %driver_data = getelementptr inbounds %struct.blk_mq_hw_ctx, ptr %hctx, i32 0, i32 9
  %4 = ptrtoint ptr %driver_data to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %arrayidx, ptr %driver_data, align 128
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nvme_rdma_map_queues(ptr noundef %set) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data = getelementptr inbounds %struct.blk_mq_tag_set, ptr %set, i32 0, i32 10
  %0 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data, align 4
  %opts2 = getelementptr inbounds %struct.nvme_rdma_ctrl, ptr %1, i32 0, i32 11, i32 93
  %2 = ptrtoint ptr %opts2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %opts2, align 8
  %nr_write_queues = getelementptr inbounds %struct.nvmf_ctrl_options, ptr %3, i32 0, i32 18
  %4 = ptrtoint ptr %nr_write_queues to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %nr_write_queues, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  br i1 %tobool.not, label %entry.if.else_crit_edge, label %land.lhs.true

entry.if.else_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else

land.lhs.true:                                    ; preds = %entry
  %arrayidx = getelementptr %struct.nvme_rdma_ctrl, ptr %1, i32 0, i32 13, i32 1
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool3.not = icmp eq i32 %7, 0
  br i1 %tobool3.not, label %land.lhs.true.if.else_crit_edge, label %if.then

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  %io_queues = getelementptr inbounds %struct.nvme_rdma_ctrl, ptr %1, i32 0, i32 13
  %8 = ptrtoint ptr %io_queues to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %io_queues, align 4
  %nr_queues = getelementptr inbounds %struct.blk_mq_queue_map, ptr %set, i32 0, i32 1
  %10 = ptrtoint ptr %nr_queues to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %nr_queues, align 4
  %queue_offset = getelementptr inbounds %struct.blk_mq_queue_map, ptr %set, i32 0, i32 2
  %11 = ptrtoint ptr %queue_offset to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %queue_offset, align 4
  %12 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx, align 4
  %nr_queues13 = getelementptr [3 x %struct.blk_mq_queue_map], ptr %set, i32 0, i32 1, i32 1
  %14 = ptrtoint ptr %nr_queues13 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %nr_queues13, align 4
  %15 = load i32, ptr %io_queues, align 4
  br label %if.end

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %entry.if.else_crit_edge
  %io_queues19 = getelementptr inbounds %struct.nvme_rdma_ctrl, ptr %1, i32 0, i32 13
  %16 = ptrtoint ptr %io_queues19 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %io_queues19, align 4
  %nr_queues23 = getelementptr inbounds %struct.blk_mq_queue_map, ptr %set, i32 0, i32 1
  %18 = ptrtoint ptr %nr_queues23 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %nr_queues23, align 4
  %queue_offset26 = getelementptr inbounds %struct.blk_mq_queue_map, ptr %set, i32 0, i32 2
  %19 = ptrtoint ptr %queue_offset26 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 0, ptr %queue_offset26, align 4
  %20 = load i32, ptr %io_queues19, align 4
  %nr_queues31 = getelementptr [3 x %struct.blk_mq_queue_map], ptr %set, i32 0, i32 1, i32 1
  %21 = ptrtoint ptr %nr_queues31 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %nr_queues31, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %.sink = phi i32 [ 0, %if.else ], [ %15, %if.then ]
  %queue_offset34 = getelementptr [3 x %struct.blk_mq_queue_map], ptr %set, i32 0, i32 1, i32 2
  %22 = ptrtoint ptr %queue_offset34 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %.sink, ptr %queue_offset34, align 4
  %device = getelementptr inbounds %struct.nvme_rdma_ctrl, ptr %1, i32 0, i32 7
  %23 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %device, align 4
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %24, align 4
  %call = tail call i32 @blk_mq_rdma_map_queues(ptr noundef %set, ptr noundef %26, i32 noundef 0) #11
  %arrayidx38 = getelementptr [3 x %struct.blk_mq_queue_map], ptr %set, i32 0, i32 1
  %27 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %device, align 4
  %29 = ptrtoint ptr %28 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %28, align 4
  %call41 = tail call i32 @blk_mq_rdma_map_queues(ptr noundef %arrayidx38, ptr noundef %30, i32 noundef 0) #11
  %nr_poll_queues = getelementptr inbounds %struct.nvmf_ctrl_options, ptr %3, i32 0, i32 19
  %31 = ptrtoint ptr %nr_poll_queues to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %nr_poll_queues, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %tobool42.not = icmp eq i32 %32, 0
  br i1 %tobool42.not, label %if.end.do.end_crit_edge, label %land.lhs.true43

if.end.do.end_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

land.lhs.true43:                                  ; preds = %if.end
  %arrayidx45 = getelementptr %struct.nvme_rdma_ctrl, ptr %1, i32 0, i32 13, i32 2
  %33 = ptrtoint ptr %arrayidx45 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %arrayidx45, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %tobool46.not = icmp eq i32 %34, 0
  br i1 %tobool46.not, label %land.lhs.true43.do.end_crit_edge, label %if.then47

land.lhs.true43.do.end_crit_edge:                 ; preds = %land.lhs.true43
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

if.then47:                                        ; preds = %land.lhs.true43
  call void @__sanitizer_cov_trace_pc() #13
  %io_queues44 = getelementptr inbounds %struct.nvme_rdma_ctrl, ptr %1, i32 0, i32 13
  %arrayidx51 = getelementptr [3 x %struct.blk_mq_queue_map], ptr %set, i32 0, i32 2
  %nr_queues52 = getelementptr [3 x %struct.blk_mq_queue_map], ptr %set, i32 0, i32 2, i32 1
  %35 = ptrtoint ptr %nr_queues52 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %34, ptr %nr_queues52, align 4
  %36 = ptrtoint ptr %io_queues44 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %io_queues44, align 4
  %arrayidx56 = getelementptr %struct.nvme_rdma_ctrl, ptr %1, i32 0, i32 13, i32 1
  %38 = ptrtoint ptr %arrayidx56 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %arrayidx56, align 4
  %add = add i32 %39, %37
  %queue_offset59 = getelementptr [3 x %struct.blk_mq_queue_map], ptr %set, i32 0, i32 2, i32 2
  %40 = ptrtoint ptr %queue_offset59 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %add, ptr %queue_offset59, align 4
  %call62 = tail call i32 @blk_mq_map_queues(ptr noundef %arrayidx51) #11
  br label %do.end

do.end:                                           ; preds = %if.then47, %land.lhs.true43.do.end_crit_edge, %if.end.do.end_crit_edge
  %device65 = getelementptr inbounds %struct.nvme_rdma_ctrl, ptr %1, i32 0, i32 11, i32 17
  %41 = ptrtoint ptr %device65 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %device65, align 8
  %io_queues66 = getelementptr inbounds %struct.nvme_rdma_ctrl, ptr %1, i32 0, i32 13
  %43 = ptrtoint ptr %io_queues66 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %io_queues66, align 4
  %arrayidx69 = getelementptr %struct.nvme_rdma_ctrl, ptr %1, i32 0, i32 13, i32 1
  %45 = ptrtoint ptr %arrayidx69 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %arrayidx69, align 4
  %arrayidx71 = getelementptr %struct.nvme_rdma_ctrl, ptr %1, i32 0, i32 13, i32 2
  %47 = ptrtoint ptr %arrayidx71 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %arrayidx71, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %42, ptr noundef nonnull @.str.135, i32 noundef %44, i32 noundef %46, i32 noundef %48) #15
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ib_process_cq_direct(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @blk_mq_rdma_map_queues(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @blk_mq_map_queues(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvmf_connect_io_queue(ptr noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvmf_connect_admin_queue(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvme_wait_freeze_timeout(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_mq_update_nr_hw_queues(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvme_unfreeze(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvme_set_queue_count(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nvme_rdma_remove_one(ptr noundef readnone %ib_device, ptr nocapture noundef readnone %client_data) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @mutex_lock_nested(ptr noundef nonnull @device_list_mutex, i32 noundef 0) #11
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %entry
  %.pn.in = phi ptr [ @device_list, %entry ], [ %.pn, %for.body.for.cond_crit_edge ]
  %0 = ptrtoint ptr %.pn.in to i32
  call void @__asan_load4_noabort(i32 %0)
  %.pn = load ptr, ptr %.pn.in, align 4
  %cmp.not = icmp eq ptr %.pn, @device_list
  br i1 %cmp.not, label %if.then7.critedge, label %for.body

for.body:                                         ; preds = %for.cond
  %ndev.0 = getelementptr i8, ptr %.pn, i32 -12
  %1 = ptrtoint ptr %ndev.0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %ndev.0, align 4
  %cmp2 = icmp eq ptr %2, %ib_device
  br i1 %cmp2, label %if.end8.critedge, label %for.body.for.cond_crit_edge

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond

if.then7.critedge:                                ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @mutex_unlock(ptr noundef nonnull @device_list_mutex) #11
  br label %cleanup

if.end8.critedge:                                 ; preds = %for.body
  tail call void @mutex_unlock(ptr noundef nonnull @device_list_mutex) #11
  tail call void @mutex_lock_nested(ptr noundef nonnull @nvme_rdma_ctrl_mutex, i32 noundef 0) #11
  %.pn3637 = load ptr, ptr @nvme_rdma_ctrl_list, align 4
  %cmp13.not38 = icmp eq ptr %.pn3637, @nvme_rdma_ctrl_list
  br i1 %cmp13.not38, label %if.end8.critedge.for.end27_crit_edge, label %if.end8.critedge.for.body15_crit_edge

if.end8.critedge.for.body15_crit_edge:            ; preds = %if.end8.critedge
  br label %for.body15

if.end8.critedge.for.end27_crit_edge:             ; preds = %if.end8.critedge
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end27

for.body15:                                       ; preds = %for.inc21.for.body15_crit_edge, %if.end8.critedge.for.body15_crit_edge
  %.pn3639 = phi ptr [ %.pn36, %for.inc21.for.body15_crit_edge ], [ %.pn3637, %if.end8.critedge.for.body15_crit_edge ]
  %device = getelementptr i8, ptr %.pn3639, i32 192
  %3 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %device, align 4
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %4, align 4
  %cmp17.not = icmp eq ptr %6, %ib_device
  br i1 %cmp17.not, label %if.end19, label %for.body15.for.inc21_crit_edge

for.body15.for.inc21_crit_edge:                   ; preds = %for.body15
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc21

if.end19:                                         ; preds = %for.body15
  call void @__sanitizer_cov_trace_pc() #13
  %ctrl20 = getelementptr i8, ptr %.pn3639, i32 460
  %call = tail call i32 @nvme_delete_ctrl(ptr noundef %ctrl20) #11
  br label %for.inc21

for.inc21:                                        ; preds = %if.end19, %for.body15.for.inc21_crit_edge
  %7 = ptrtoint ptr %.pn3639 to i32
  call void @__asan_load4_noabort(i32 %7)
  %.pn36 = load ptr, ptr %.pn3639, align 4
  %cmp13.not = icmp eq ptr %.pn36, @nvme_rdma_ctrl_list
  br i1 %cmp13.not, label %for.inc21.for.end27_crit_edge, label %for.inc21.for.body15_crit_edge

for.inc21.for.body15_crit_edge:                   ; preds = %for.inc21
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body15

for.inc21.for.end27_crit_edge:                    ; preds = %for.inc21
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end27

for.end27:                                        ; preds = %for.inc21.for.end27_crit_edge, %if.end8.critedge.for.end27_crit_edge
  tail call void @mutex_unlock(ptr noundef nonnull @nvme_rdma_ctrl_mutex) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nvme_delete_wq to i32))
  %8 = load ptr, ptr @nvme_delete_wq, align 4
  tail call void @flush_workqueue(ptr noundef %8) #11
  br label %cleanup

cleanup:                                          ; preds = %for.end27, %if.then7.critedge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ib_register_client(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvmf_register_transport(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #8

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #11

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

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
define internal void @asan.module_ctor() #12 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 167)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #12 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 167)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { mustprogress nofree nosync nounwind null_pointer_is_valid readnone willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #11 = { nounwind }
attributes #12 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #13 = { nomerge }
attributes #14 = { nounwind allocsize(2) }
attributes #15 = { cold nounwind }
attributes #16 = { nounwind allocsize(0) }
attributes #17 = { nounwind readnone willreturn }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !12, !13, !15, !17, !19, !21, !23, !24, !25, !26, !27, !29, !30, !31, !33, !34, !35, !36, !38, !39, !41, !42, !44, !46, !47, !48, !49, !50, !52, !53, !54, !55, !57, !58, !59, !61, !63, !64, !65, !66, !68, !70, !71, !72, !74, !75, !76, !78, !80, !82, !84, !86, !87, !88, !89, !91, !92, !93, !94, !95, !97, !98, !99, !100, !101, !103, !104, !105, !106, !108, !109, !110, !112, !113, !114, !116, !117, !118, !120, !121, !122, !124, !126, !128, !129, !131, !133, !134, !135, !136, !138, !139, !140, !142, !143, !144, !146, !147, !149, !150, !151, !153, !154, !156, !157, !159, !160, !161, !163, !164, !165, !166, !168, !169, !170, !171, !173, !174, !175, !177, !178, !179, !181, !182, !183, !184, !186, !188, !189, !190, !191, !193, !194, !195, !196, !198, !199, !200, !202, !204, !205, !206, !207, !209, !210, !211, !212, !214, !215, !216, !218, !219, !220, !222, !223, !224, !225, !226, !228, !229, !230, !232, !234, !235, !236, !237, !239, !240, !241, !243, !244, !245, !246, !248, !249, !250, !252, !254, !256, !258, !260, !262, !264, !266, !268, !270, !272, !273, !274, !276, !278, !280, !281, !282, !283, !285, !287, !289, !291, !293, !295, !296, !297, !298, !300, !302, !303, !304, !305, !307, !308, !309, !310, !312, !313, !314, !315, !317, !318, !319, !321, !323, !324, !325}
!llvm.module.flags = !{!327, !328, !329, !330, !331, !332, !333, !334}
!llvm.ident = !{!335}

!0 = !{ptr @__param_register_always, !1, !"__param_register_always", i1 false, i1 false}
!1 = !{!"../drivers/nvme/host/rdma.c", i32 148, i32 1}
!2 = !{ptr @__UNIQUE_ID_register_alwaystype567, !1, !"__UNIQUE_ID_register_alwaystype567", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_register_always568, !4, !"__UNIQUE_ID_register_always568", i1 false, i1 false}
!4 = !{!"../drivers/nvme/host/rdma.c", i32 149, i32 1}
!5 = !{ptr @__initcall__kmod_nvme_rdma__593_2499_nvme_rdma_init_module6, !6, !"__initcall__kmod_nvme_rdma__593_2499_nvme_rdma_init_module6", i1 false, i1 false}
!6 = !{!"../drivers/nvme/host/rdma.c", i32 2499, i32 1}
!7 = !{ptr @__exitcall_nvme_rdma_cleanup_module, !8, !"__exitcall_nvme_rdma_cleanup_module", i1 false, i1 false}
!8 = !{!"../drivers/nvme/host/rdma.c", i32 2500, i32 1}
!9 = !{ptr @__UNIQUE_ID_file594, !10, !"__UNIQUE_ID_file594", i1 false, i1 false}
!10 = !{!"../drivers/nvme/host/rdma.c", i32 2502, i32 1}
!11 = !{ptr @__UNIQUE_ID_license595, !10, !"__UNIQUE_ID_license595", i1 false, i1 false}
!12 = !{ptr @__param_str_register_always, !1, !"__param_str_register_always", i1 false, i1 false}
!13 = !{ptr @register_always, !14, !"register_always", i1 false, i1 false}
!14 = !{!"../drivers/nvme/host/rdma.c", i32 147, i32 13}
!15 = !{ptr @.str, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/nvme/host/rdma.c", i32 2421, i32 11}
!17 = !{ptr @nvme_rdma_transport, !18, !"nvme_rdma_transport", i1 false, i1 false}
!18 = !{!"../drivers/nvme/host/rdma.c", i32 2420, i32 34}
!19 = !{ptr @.str.1, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/nvme/host/rdma.c", i32 2339, i32 12}
!21 = !{ptr @.str.2, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/nvme/host/rdma.c", i32 2350, i32 3}
!23 = !{ptr @.str.3, !22, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.4, !22, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @nvme_rdma_create_ctrl._entry, !22, !"_entry", i1 false, i1 false}
!26 = !{ptr @nvme_rdma_create_ctrl._entry_ptr, !22, !"_entry_ptr", i1 false, i1 false}
!27 = !{ptr @.str.6, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/nvme/host/rdma.c", i32 2359, i32 4}
!29 = !{ptr @nvme_rdma_create_ctrl._entry.5, !28, !"_entry", i1 false, i1 false}
!30 = !{ptr @nvme_rdma_create_ctrl._entry_ptr.7, !28, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @nvme_rdma_create_ctrl.__key, !32, !"__key", i1 false, i1 false}
!32 = !{!"../drivers/nvme/host/rdma.c", i32 2370, i32 2}
!33 = !{ptr @.str.8, !32, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @nvme_rdma_create_ctrl.__key.9, !32, !"__key", i1 false, i1 false}
!35 = !{ptr @.str.10, !32, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @nvme_rdma_create_ctrl.__key.11, !37, !"__key", i1 false, i1 false}
!37 = !{!"../drivers/nvme/host/rdma.c", i32 2372, i32 2}
!38 = !{ptr @.str.12, !37, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @nvme_rdma_create_ctrl.__key.13, !40, !"__key", i1 false, i1 false}
!40 = !{!"../drivers/nvme/host/rdma.c", i32 2373, i32 2}
!41 = !{ptr @.str.14, !40, !"<string literal>", i1 false, i1 false}
!42 = distinct !{null, !43, !"__already_done", i1 false, i1 false}
!43 = !{!"../drivers/nvme/host/rdma.c", i32 2392, i32 2}
!44 = !{ptr @.str.16, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/nvme/host/rdma.c", i32 2398, i32 2}
!46 = !{ptr @.str.17, !45, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @.str.18, !45, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @nvme_rdma_create_ctrl._entry.15, !45, !"_entry", i1 false, i1 false}
!49 = !{ptr @nvme_rdma_create_ctrl._entry_ptr.19, !45, !"_entry_ptr", i1 false, i1 false}
!50 = !{ptr @.str.20, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/nvme/host/rdma.c", i32 1184, i32 2}
!52 = !{ptr @.str.21, !51, !"<string literal>", i1 false, i1 false}
!53 = !{ptr @nvme_rdma_reconnect_ctrl_work._entry, !51, !"_entry", i1 false, i1 false}
!54 = !{ptr @nvme_rdma_reconnect_ctrl_work._entry_ptr, !51, !"_entry_ptr", i1 false, i1 false}
!55 = !{ptr @.str.23, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/nvme/host/rdma.c", i32 1192, i32 2}
!57 = !{ptr @nvme_rdma_reconnect_ctrl_work._entry.22, !56, !"_entry", i1 false, i1 false}
!58 = !{ptr @nvme_rdma_reconnect_ctrl_work._entry_ptr.24, !56, !"_entry_ptr", i1 false, i1 false}
!59 = distinct !{null, !60, !"__already_done", i1 false, i1 false}
!60 = !{!"../drivers/nvme/host/rdma.c", i32 1074, i32 3}
!61 = !{ptr @.str.25, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/nvme/host/rdma.c", i32 1080, i32 3}
!63 = !{ptr @.str.26, !62, !"<string literal>", i1 false, i1 false}
!64 = !{ptr @nvme_rdma_reconnect_or_remove._entry, !62, !"_entry", i1 false, i1 false}
!65 = !{ptr @nvme_rdma_reconnect_or_remove._entry_ptr, !62, !"_entry_ptr", i1 false, i1 false}
!66 = distinct !{null, !67, !"__already_done", i1 false, i1 false}
!67 = !{!"../drivers/nvme/host/rdma.c", i32 1211, i32 3}
!68 = !{ptr @.str.27, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/nvme/host/rdma.c", i32 137, i32 8}
!70 = !{ptr @.str.28, !69, !"<string literal>", i1 false, i1 false}
!71 = !{ptr @device_list_mutex, !69, !"device_list_mutex", i1 false, i1 false}
!72 = distinct !{null, !73, !"__already_done", i1 false, i1 false}
!73 = !{!"../include/rdma/ib_verbs.h", i32 3498, i32 2}
!74 = !{ptr @.str.29, !73, !"<string literal>", i1 false, i1 false}
!75 = !{ptr @.str.30, !73, !"<string literal>", i1 false, i1 false}
!76 = distinct !{null, !77, !"__already_done", i1 false, i1 false}
!77 = !{!"../drivers/nvme/host/rdma.c", i32 2268, i32 3}
!78 = !{ptr @nvme_rdma_ctrl_ops, !79, !"nvme_rdma_ctrl_ops", i1 false, i1 false}
!79 = !{!"../drivers/nvme/host/rdma.c", i32 2282, i32 35}
!80 = distinct !{null, !81, !"__already_done", i1 false, i1 false}
!81 = !{!"../drivers/nvme/host/rdma.c", i32 1735, i32 2}
!82 = !{ptr @.str.31, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/nvme/host/rdma.c", i32 1708, i32 30}
!84 = !{ptr @.str.32, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/nvme/host/rdma.c", i32 1245, i32 3}
!86 = !{ptr @.str.33, !85, !"<string literal>", i1 false, i1 false}
!87 = !{ptr @nvme_rdma_wr_error._entry, !85, !"_entry", i1 false, i1 false}
!88 = !{ptr @nvme_rdma_wr_error._entry_ptr, !85, !"_entry_ptr", i1 false, i1 false}
!89 = !{ptr @.str.34, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/nvme/host/rdma.c", i32 1224, i32 2}
!91 = !{ptr @.str.35, !90, !"<string literal>", i1 false, i1 false}
!92 = !{ptr @.str.36, !90, !"<string literal>", i1 false, i1 false}
!93 = !{ptr @nvme_rdma_error_recovery._entry, !90, !"_entry", i1 false, i1 false}
!94 = !{ptr @nvme_rdma_error_recovery._entry_ptr, !90, !"_entry_ptr", i1 false, i1 false}
!95 = !{ptr @.str.37, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/nvme/host/rdma.c", i32 1664, i32 3}
!97 = !{ptr @.str.38, !96, !"<string literal>", i1 false, i1 false}
!98 = !{ptr @.str.39, !96, !"<string literal>", i1 false, i1 false}
!99 = !{ptr @nvme_rdma_post_send._entry, !96, !"_entry", i1 false, i1 false}
!100 = !{ptr @nvme_rdma_post_send._entry_ptr, !96, !"_entry_ptr", i1 false, i1 false}
!101 = !{ptr @.str.40, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/nvme/host/rdma.c", i32 1100, i32 3}
!103 = !{ptr @.str.41, !102, !"<string literal>", i1 false, i1 false}
!104 = !{ptr @nvme_rdma_setup_ctrl._entry, !102, !"_entry", i1 false, i1 false}
!105 = !{ptr @nvme_rdma_setup_ctrl._entry_ptr, !102, !"_entry_ptr", i1 false, i1 false}
!106 = !{ptr @.str.43, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/nvme/host/rdma.c", i32 1106, i32 3}
!108 = !{ptr @nvme_rdma_setup_ctrl._entry.42, !107, !"_entry", i1 false, i1 false}
!109 = !{ptr @nvme_rdma_setup_ctrl._entry_ptr.44, !107, !"_entry_ptr", i1 false, i1 false}
!110 = !{ptr @.str.46, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/nvme/host/rdma.c", i32 1112, i32 3}
!112 = !{ptr @nvme_rdma_setup_ctrl._entry.45, !111, !"_entry", i1 false, i1 false}
!113 = !{ptr @nvme_rdma_setup_ctrl._entry_ptr.47, !111, !"_entry_ptr", i1 false, i1 false}
!114 = !{ptr @.str.49, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/nvme/host/rdma.c", i32 1118, i32 3}
!116 = !{ptr @nvme_rdma_setup_ctrl._entry.48, !115, !"_entry", i1 false, i1 false}
!117 = !{ptr @nvme_rdma_setup_ctrl._entry_ptr.50, !115, !"_entry_ptr", i1 false, i1 false}
!118 = !{ptr @.str.52, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/nvme/host/rdma.c", i32 1125, i32 3}
!120 = !{ptr @nvme_rdma_setup_ctrl._entry.51, !119, !"_entry", i1 false, i1 false}
!121 = !{ptr @nvme_rdma_setup_ctrl._entry_ptr.53, !119, !"_entry_ptr", i1 false, i1 false}
!122 = distinct !{null, !123, !"__already_done", i1 false, i1 false}
!123 = !{!"../drivers/nvme/host/rdma.c", i32 1147, i32 3}
!124 = distinct !{null, !125, !"__already_done", i1 false, i1 false}
!125 = !{!"../drivers/nvme/host/rdma.c", i32 1149, i32 3}
!126 = !{ptr @nvme_rdma_alloc_queue.__key, !127, !"__key", i1 false, i1 false}
!127 = !{!"../drivers/nvme/host/rdma.c", i32 585, i32 2}
!128 = !{ptr @.str.55, !127, !"<string literal>", i1 false, i1 false}
!129 = !{ptr @.str.56, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../drivers/nvme/host/rdma.c", i32 600, i32 17}
!131 = !{ptr @.str.57, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../drivers/nvme/host/rdma.c", i32 603, i32 3}
!133 = !{ptr @.str.58, !132, !"<string literal>", i1 false, i1 false}
!134 = !{ptr @nvme_rdma_alloc_queue._entry, !132, !"_entry", i1 false, i1 false}
!135 = !{ptr @nvme_rdma_alloc_queue._entry_ptr, !132, !"_entry_ptr", i1 false, i1 false}
!136 = !{ptr @.str.60, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../drivers/nvme/host/rdma.c", i32 617, i32 3}
!138 = !{ptr @nvme_rdma_alloc_queue._entry.59, !137, !"_entry", i1 false, i1 false}
!139 = !{ptr @nvme_rdma_alloc_queue._entry_ptr.61, !137, !"_entry_ptr", i1 false, i1 false}
!140 = !{ptr @.str.63, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../drivers/nvme/host/rdma.c", i32 624, i32 3}
!142 = !{ptr @nvme_rdma_alloc_queue._entry.62, !141, !"_entry", i1 false, i1 false}
!143 = !{ptr @nvme_rdma_alloc_queue._entry_ptr.64, !141, !"_entry_ptr", i1 false, i1 false}
!144 = !{ptr @init_completion.__key, !145, !"__key", i1 false, i1 false}
!145 = !{!"../include/linux/completion.h", i32 87, i32 2}
!146 = !{ptr @.str.65, !145, !"<string literal>", i1 false, i1 false}
!147 = !{ptr @.str.66, !148, !"<string literal>", i1 false, i1 false}
!148 = !{!"../drivers/nvme/host/rdma.c", i32 1938, i32 2}
!149 = !{ptr @.str.67, !148, !"<string literal>", i1 false, i1 false}
!150 = !{ptr @nvme_rdma_cm_handler.__UNIQUE_ID_ddebug590, !148, !"__UNIQUE_ID_ddebug590", i1 false, i1 false}
!151 = !{ptr @.str.68, !152, !"<string literal>", i1 false, i1 false}
!152 = !{!"../drivers/nvme/host/rdma.c", i32 1961, i32 3}
!153 = !{ptr @nvme_rdma_cm_handler.__UNIQUE_ID_ddebug591, !152, !"__UNIQUE_ID_ddebug591", i1 false, i1 false}
!154 = !{ptr @.str.69, !155, !"<string literal>", i1 false, i1 false}
!155 = !{!"../drivers/nvme/host/rdma.c", i32 1968, i32 3}
!156 = !{ptr @nvme_rdma_cm_handler.__UNIQUE_ID_ddebug592, !155, !"__UNIQUE_ID_ddebug592", i1 false, i1 false}
!157 = !{ptr @.str.70, !158, !"<string literal>", i1 false, i1 false}
!158 = !{!"../drivers/nvme/host/rdma.c", i32 1976, i32 3}
!159 = !{ptr @nvme_rdma_cm_handler._entry, !158, !"_entry", i1 false, i1 false}
!160 = !{ptr @nvme_rdma_cm_handler._entry_ptr, !158, !"_entry_ptr", i1 false, i1 false}
!161 = !{ptr @.str.71, !162, !"<string literal>", i1 false, i1 false}
!162 = !{!"../drivers/nvme/host/rdma.c", i32 1874, i32 3}
!163 = !{ptr @.str.72, !162, !"<string literal>", i1 false, i1 false}
!164 = !{ptr @nvme_rdma_addr_resolved._entry, !162, !"_entry", i1 false, i1 false}
!165 = !{ptr @nvme_rdma_addr_resolved._entry_ptr, !162, !"_entry_ptr", i1 false, i1 false}
!166 = !{ptr @.str.73, !167, !"<string literal>", i1 false, i1 false}
!167 = !{!"../drivers/nvme/host/rdma.c", i32 506, i32 3}
!168 = !{ptr @.str.74, !167, !"<string literal>", i1 false, i1 false}
!169 = !{ptr @nvme_rdma_create_queue_ib._entry, !167, !"_entry", i1 false, i1 false}
!170 = !{ptr @nvme_rdma_create_queue_ib._entry_ptr, !167, !"_entry_ptr", i1 false, i1 false}
!171 = !{ptr @.str.76, !172, !"<string literal>", i1 false, i1 false}
!172 = !{!"../drivers/nvme/host/rdma.c", i32 541, i32 3}
!173 = !{ptr @nvme_rdma_create_queue_ib._entry.75, !172, !"_entry", i1 false, i1 false}
!174 = !{ptr @nvme_rdma_create_queue_ib._entry_ptr.77, !172, !"_entry_ptr", i1 false, i1 false}
!175 = !{ptr @.str.79, !176, !"<string literal>", i1 false, i1 false}
!176 = !{!"../drivers/nvme/host/rdma.c", i32 552, i32 4}
!177 = !{ptr @nvme_rdma_create_queue_ib._entry.78, !176, !"_entry", i1 false, i1 false}
!178 = !{ptr @nvme_rdma_create_queue_ib._entry_ptr.80, !176, !"_entry_ptr", i1 false, i1 false}
!179 = !{ptr @.str.81, !180, !"<string literal>", i1 false, i1 false}
!180 = !{!"../drivers/nvme/host/rdma.c", i32 396, i32 3}
!181 = !{ptr @.str.82, !180, !"<string literal>", i1 false, i1 false}
!182 = !{ptr @nvme_rdma_find_get_device._entry, !180, !"_entry", i1 false, i1 false}
!183 = !{ptr @nvme_rdma_find_get_device._entry_ptr, !180, !"_entry_ptr", i1 false, i1 false}
!184 = !{ptr @device_list, !185, !"device_list", i1 false, i1 false}
!185 = !{!"../drivers/nvme/host/rdma.c", i32 136, i32 8}
!186 = !{ptr @.str.83, !187, !"<string literal>", i1 false, i1 false}
!187 = !{!"../drivers/nvme/host/rdma.c", i32 242, i32 2}
!188 = !{ptr @.str.84, !187, !"<string literal>", i1 false, i1 false}
!189 = !{ptr @nvme_rdma_qp_event.__UNIQUE_ID_ddebug569, !187, !"__UNIQUE_ID_ddebug569", i1 false, i1 false}
!190 = !{ptr @.str.85, !187, !"<string literal>", i1 false, i1 false}
!191 = !{ptr @.str.86, !192, !"<string literal>", i1 false, i1 false}
!192 = !{!"../drivers/nvme/host/rdma.c", i32 1924, i32 3}
!193 = !{ptr @.str.87, !192, !"<string literal>", i1 false, i1 false}
!194 = !{ptr @nvme_rdma_route_resolved._entry, !192, !"_entry", i1 false, i1 false}
!195 = !{ptr @nvme_rdma_route_resolved._entry_ptr, !192, !"_entry_ptr", i1 false, i1 false}
!196 = !{ptr @.str.88, !197, !"<string literal>", i1 false, i1 false}
!197 = !{!"../drivers/nvme/host/rdma.c", i32 1690, i32 3}
!198 = !{ptr @nvme_rdma_post_recv._entry, !197, !"_entry", i1 false, i1 false}
!199 = !{ptr @nvme_rdma_post_recv._entry_ptr, !197, !"_entry_ptr", i1 false, i1 false}
!200 = !{ptr @.str.89, !201, !"<string literal>", i1 false, i1 false}
!201 = !{!"../drivers/nvme/host/rdma.c", i32 1792, i32 30}
!202 = !{ptr @.str.90, !203, !"<string literal>", i1 false, i1 false}
!203 = !{!"../drivers/nvme/host/rdma.c", i32 1798, i32 3}
!204 = !{ptr @.str.91, !203, !"<string literal>", i1 false, i1 false}
!205 = !{ptr @nvme_rdma_recv_done._entry, !203, !"_entry", i1 false, i1 false}
!206 = !{ptr @nvme_rdma_recv_done._entry_ptr, !203, !"_entry_ptr", i1 false, i1 false}
!207 = !{ptr @.str.92, !208, !"<string literal>", i1 false, i1 false}
!208 = !{!"../drivers/nvme/host/rdma.c", i32 1746, i32 3}
!209 = !{ptr @.str.93, !208, !"<string literal>", i1 false, i1 false}
!210 = !{ptr @nvme_rdma_process_nvme_rsp._entry, !208, !"_entry", i1 false, i1 false}
!211 = !{ptr @nvme_rdma_process_nvme_rsp._entry_ptr, !208, !"_entry_ptr", i1 false, i1 false}
!212 = !{ptr @.str.95, !213, !"<string literal>", i1 false, i1 false}
!213 = !{!"../drivers/nvme/host/rdma.c", i32 1760, i32 4}
!214 = !{ptr @nvme_rdma_process_nvme_rsp._entry.94, !213, !"_entry", i1 false, i1 false}
!215 = !{ptr @nvme_rdma_process_nvme_rsp._entry_ptr.96, !213, !"_entry_ptr", i1 false, i1 false}
!216 = !{ptr @.str.98, !217, !"<string literal>", i1 false, i1 false}
!217 = !{!"../drivers/nvme/host/rdma.c", i32 1770, i32 4}
!218 = !{ptr @nvme_rdma_process_nvme_rsp._entry.97, !217, !"_entry", i1 false, i1 false}
!219 = !{ptr @nvme_rdma_process_nvme_rsp._entry_ptr.99, !217, !"_entry_ptr", i1 false, i1 false}
!220 = !{ptr @.str.100, !221, !"<string literal>", i1 false, i1 false}
!221 = !{!"../drivers/nvme/host/nvme.h", i32 523, i32 3}
!222 = !{ptr @.str.101, !221, !"<string literal>", i1 false, i1 false}
!223 = !{ptr @.str.102, !221, !"<string literal>", i1 false, i1 false}
!224 = !{ptr @nvme_find_rq._entry, !221, !"_entry", i1 false, i1 false}
!225 = !{ptr @nvme_find_rq._entry_ptr, !221, !"_entry_ptr", i1 false, i1 false}
!226 = !{ptr @.str.104, !227, !"<string literal>", i1 false, i1 false}
!227 = !{!"../drivers/nvme/host/nvme.h", i32 528, i32 3}
!228 = !{ptr @nvme_find_rq._entry.103, !227, !"_entry", i1 false, i1 false}
!229 = !{ptr @nvme_find_rq._entry_ptr.105, !227, !"_entry_ptr", i1 false, i1 false}
!230 = !{ptr @.str.106, !231, !"<string literal>", i1 false, i1 false}
!231 = !{!"../drivers/nvme/host/rdma.c", i32 1264, i32 30}
!232 = !{ptr @.str.107, !233, !"<string literal>", i1 false, i1 false}
!233 = !{!"../drivers/nvme/host/rdma.c", i32 2134, i32 3}
!234 = !{ptr @.str.108, !233, !"<string literal>", i1 false, i1 false}
!235 = !{ptr @nvme_rdma_check_pi_status._entry, !233, !"_entry", i1 false, i1 false}
!236 = !{ptr @nvme_rdma_check_pi_status._entry_ptr, !233, !"_entry_ptr", i1 false, i1 false}
!237 = !{ptr @.str.110, !238, !"<string literal>", i1 false, i1 false}
!238 = !{!"../drivers/nvme/host/rdma.c", i32 2151, i32 3}
!239 = !{ptr @nvme_rdma_check_pi_status._entry.109, !238, !"_entry", i1 false, i1 false}
!240 = !{ptr @nvme_rdma_check_pi_status._entry_ptr.111, !238, !"_entry_ptr", i1 false, i1 false}
!241 = !{ptr @.str.112, !242, !"<string literal>", i1 false, i1 false}
!242 = !{!"../drivers/nvme/host/rdma.c", i32 1850, i32 3}
!243 = !{ptr @.str.113, !242, !"<string literal>", i1 false, i1 false}
!244 = !{ptr @nvme_rdma_conn_rejected._entry, !242, !"_entry", i1 false, i1 false}
!245 = !{ptr @nvme_rdma_conn_rejected._entry_ptr, !242, !"_entry_ptr", i1 false, i1 false}
!246 = !{ptr @.str.115, !247, !"<string literal>", i1 false, i1 false}
!247 = !{!"../drivers/nvme/host/rdma.c", i32 1854, i32 3}
!248 = !{ptr @nvme_rdma_conn_rejected._entry.114, !247, !"_entry", i1 false, i1 false}
!249 = !{ptr @nvme_rdma_conn_rejected._entry_ptr.116, !247, !"_entry_ptr", i1 false, i1 false}
!250 = !{ptr @.str.117, !251, !"<string literal>", i1 false, i1 false}
!251 = !{!"../include/linux/nvme-rdma.h", i32 30, i32 10}
!252 = !{ptr @.str.118, !253, !"<string literal>", i1 false, i1 false}
!253 = !{!"../include/linux/nvme-rdma.h", i32 32, i32 10}
!254 = !{ptr @.str.119, !255, !"<string literal>", i1 false, i1 false}
!255 = !{!"../include/linux/nvme-rdma.h", i32 34, i32 10}
!256 = !{ptr @.str.120, !257, !"<string literal>", i1 false, i1 false}
!257 = !{!"../include/linux/nvme-rdma.h", i32 36, i32 10}
!258 = !{ptr @.str.121, !259, !"<string literal>", i1 false, i1 false}
!259 = !{!"../include/linux/nvme-rdma.h", i32 38, i32 10}
!260 = !{ptr @.str.122, !261, !"<string literal>", i1 false, i1 false}
!261 = !{!"../include/linux/nvme-rdma.h", i32 40, i32 10}
!262 = !{ptr @.str.123, !263, !"<string literal>", i1 false, i1 false}
!263 = !{!"../include/linux/nvme-rdma.h", i32 42, i32 10}
!264 = !{ptr @.str.124, !265, !"<string literal>", i1 false, i1 false}
!265 = !{!"../include/linux/nvme-rdma.h", i32 44, i32 10}
!266 = !{ptr @.str.125, !267, !"<string literal>", i1 false, i1 false}
!267 = !{!"../include/linux/nvme-rdma.h", i32 46, i32 10}
!268 = distinct !{null, !269, !"__already_done", i1 false, i1 false}
!269 = !{!"../drivers/nvme/host/rdma.c", i32 257, i32 2}
!270 = distinct !{null, !271, !"__already_done", i1 false, i1 false}
!271 = !{!"../include/linux/dma-mapping.h", i32 326, i32 6}
!272 = !{ptr @.str.126, !271, !"<string literal>", i1 false, i1 false}
!273 = !{ptr @.str.127, !271, !"<string literal>", i1 false, i1 false}
!274 = !{ptr @nvme_rdma_admin_mq_ops, !275, !"nvme_rdma_admin_mq_ops", i1 false, i1 false}
!275 = !{!"../drivers/nvme/host/rdma.c", i32 2230, i32 32}
!276 = distinct !{null, !277, !"__already_done", i1 false, i1 false}
!277 = !{!"../drivers/nvme/host/rdma.c", i32 2052, i32 2}
!278 = !{ptr @.str.128, !279, !"<string literal>", i1 false, i1 false}
!279 = !{!"../drivers/nvme/host/rdma.c", i32 2086, i32 3}
!280 = !{ptr @.str.129, !279, !"<string literal>", i1 false, i1 false}
!281 = !{ptr @nvme_rdma_queue_rq._entry, !279, !"_entry", i1 false, i1 false}
!282 = !{ptr @nvme_rdma_queue_rq._entry_ptr, !279, !"_entry_ptr", i1 false, i1 false}
!283 = distinct !{null, !284, !"__already_done", i1 false, i1 false}
!284 = !{!"../drivers/nvme/host/rdma.c", i32 1483, i32 6}
!285 = !{ptr @.str.130, !286, !"<string literal>", i1 false, i1 false}
!286 = !{!"../drivers/nvme/host/rdma.c", i32 1467, i32 30}
!287 = distinct !{null, !288, !"__already_done", i1 false, i1 false}
!288 = !{!"../drivers/nvme/host/rdma.c", i32 1374, i32 6}
!289 = !{ptr @.str.131, !290, !"<string literal>", i1 false, i1 false}
!290 = !{!"../drivers/nvme/host/rdma.c", i32 1255, i32 30}
!291 = !{ptr @.str.132, !292, !"<string literal>", i1 false, i1 false}
!292 = !{!"../drivers/nvme/host/rdma.c", i32 1634, i32 30}
!293 = !{ptr @.str.133, !294, !"<string literal>", i1 false, i1 false}
!294 = !{!"../drivers/nvme/host/rdma.c", i32 2009, i32 2}
!295 = !{ptr @.str.134, !294, !"<string literal>", i1 false, i1 false}
!296 = !{ptr @nvme_rdma_timeout._entry, !294, !"_entry", i1 false, i1 false}
!297 = !{ptr @nvme_rdma_timeout._entry_ptr, !294, !"_entry_ptr", i1 false, i1 false}
!298 = !{ptr @nvme_rdma_mq_ops, !299, !"nvme_rdma_mq_ops", i1 false, i1 false}
!299 = !{!"../drivers/nvme/host/rdma.c", i32 2219, i32 32}
!300 = !{ptr @.str.135, !301, !"<string literal>", i1 false, i1 false}
!301 = !{!"../drivers/nvme/host/rdma.c", i32 2210, i32 2}
!302 = !{ptr @.str.136, !301, !"<string literal>", i1 false, i1 false}
!303 = !{ptr @nvme_rdma_map_queues._entry, !301, !"_entry", i1 false, i1 false}
!304 = !{ptr @nvme_rdma_map_queues._entry_ptr, !301, !"_entry_ptr", i1 false, i1 false}
!305 = !{ptr @.str.137, !306, !"<string literal>", i1 false, i1 false}
!306 = !{!"../drivers/nvme/host/rdma.c", i32 696, i32 3}
!307 = !{ptr @.str.138, !306, !"<string literal>", i1 false, i1 false}
!308 = !{ptr @nvme_rdma_start_queue._entry, !306, !"_entry", i1 false, i1 false}
!309 = !{ptr @nvme_rdma_start_queue._entry_ptr, !306, !"_entry_ptr", i1 false, i1 false}
!310 = !{ptr @.str.139, !311, !"<string literal>", i1 false, i1 false}
!311 = !{!"../drivers/nvme/host/rdma.c", i32 740, i32 3}
!312 = !{ptr @.str.140, !311, !"<string literal>", i1 false, i1 false}
!313 = !{ptr @nvme_rdma_alloc_io_queues._entry, !311, !"_entry", i1 false, i1 false}
!314 = !{ptr @nvme_rdma_alloc_io_queues._entry_ptr, !311, !"_entry_ptr", i1 false, i1 false}
!315 = !{ptr @.str.142, !316, !"<string literal>", i1 false, i1 false}
!316 = !{!"../drivers/nvme/host/rdma.c", i32 746, i32 2}
!317 = !{ptr @nvme_rdma_alloc_io_queues._entry.141, !316, !"_entry", i1 false, i1 false}
!318 = !{ptr @nvme_rdma_alloc_io_queues._entry_ptr.143, !316, !"_entry_ptr", i1 false, i1 false}
!319 = !{ptr @nvme_rdma_ib_client, !320, !"nvme_rdma_ib_client", i1 false, i1 false}
!320 = !{!"../drivers/nvme/host/rdma.c", i32 2461, i32 25}
!321 = !{ptr @.str.144, !322, !"<string literal>", i1 false, i1 false}
!322 = !{!"../drivers/nvme/host/rdma.c", i32 140, i32 8}
!323 = !{ptr @.str.145, !322, !"<string literal>", i1 false, i1 false}
!324 = !{ptr @nvme_rdma_ctrl_mutex, !322, !"nvme_rdma_ctrl_mutex", i1 false, i1 false}
!325 = !{ptr @nvme_rdma_ctrl_list, !326, !"nvme_rdma_ctrl_list", i1 false, i1 false}
!326 = !{!"../drivers/nvme/host/rdma.c", i32 139, i32 8}
!327 = !{i32 1, !"wchar_size", i32 2}
!328 = !{i32 1, !"min_enum_size", i32 4}
!329 = !{i32 8, !"branch-target-enforcement", i32 0}
!330 = !{i32 8, !"sign-return-address", i32 0}
!331 = !{i32 8, !"sign-return-address-all", i32 0}
!332 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!333 = !{i32 7, !"uwtable", i32 1}
!334 = !{i32 7, !"frame-pointer", i32 2}
!335 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!336 = !{i8 0, i8 2}
!337 = !{!"branch_weights", i32 1, i32 2000}
!338 = !{!"branch_weights", i32 2000, i32 1}
!339 = !{i64 2148494383}
!340 = !{i64 2148408823, i64 2148408855, i64 2148408884, i64 2148408918, i64 2148408949, i64 2148408972}
!341 = !{i64 2149370497}
!342 = !{!"auto-init"}
!343 = !{i64 2149018205, i64 2149018210, i64 2149018223, i64 2149018267, i64 2149018301, i64 2149018322}
!344 = !{i64 889361, i64 889385, i64 889406, i64 889423, i64 889440}
!345 = !{i64 903116}
!346 = !{i64 2159295137, i64 2159295626, i64 2159295174, i64 2159295230, i64 2159295264, i64 2159295288, i64 2159295329, i64 2159295350, i64 2159295378, i64 2159295412}
!347 = !{i64 2159293540, i64 2159294029, i64 2159293577, i64 2159293633, i64 2159293667, i64 2159293691, i64 2159293732, i64 2159293753, i64 2159293781, i64 2159293815}
