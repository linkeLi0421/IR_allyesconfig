; ModuleID = '/llk/IR_all_yes/net/rds/rdma_transport.c_pt.bc'
source_filename = "../net/rds/rdma_transport.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.atomic_t = type { i32 }
%struct.rds_transport = type { [16 x i8], %struct.list_head, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.in6_addr = type { %union.anon.71 }
%union.anon.71 = type { [4 x i32] }
%struct.net = type { %struct.refcount_struct, %struct.spinlock, i32, i32, i32, %struct.spinlock, %struct.atomic_t, %struct.list_head, %struct.list_head, %struct.llist_node, ptr, ptr, ptr, %struct.idr, %struct.ns_common, %struct.ref_tracker_dir, %struct.list_head, ptr, ptr, %struct.ctl_table_set, ptr, ptr, ptr, ptr, ptr, %struct.raw_notifier_head, i32, ptr, %struct.list_head, %struct.netns_core, %struct.netns_mib, %struct.netns_packet, %struct.netns_unix, %struct.netns_nexthop, [80 x i8], %struct.netns_ipv4, %struct.netns_ipv6, %struct.netns_ieee802154_lowpan, %struct.netns_sctp, %struct.netns_nf, %struct.netns_ct, %struct.netns_nftables, %struct.sk_buff_head, ptr, %struct.netns_bpf, [92 x i8], %struct.netns_xfrm, i64, ptr, %struct.netns_mpls, %struct.netns_can, %struct.netns_xdp, %struct.netns_mctp, ptr, ptr, %struct.netns_smc }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
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
%struct.rdma_cm_id = type { ptr, ptr, ptr, ptr, %struct.rdma_route, i32, i32, i32 }
%struct.rdma_route = type { %struct.rdma_addr, ptr, i32 }
%struct.rdma_addr = type { %struct.__kernel_sockaddr_storage, %struct.__kernel_sockaddr_storage, %struct.rdma_dev_addr }
%struct.__kernel_sockaddr_storage = type { %union.anon.172 }
%union.anon.172 = type { ptr, [124 x i8] }
%struct.rdma_dev_addr = type { [32 x i8], [32 x i8], [32 x i8], i16, i32, i32, ptr, ptr, i32, i32 }
%struct.ib_device = type { ptr, %struct.ib_device_ops, [64 x i8], %struct.callback_head, %struct.list_head, %struct.rw_semaphore, %struct.spinlock, %struct.rw_semaphore, %struct.xarray, %struct.mutex, %struct.rwlock_t, ptr, i32, %union.anon.171, [4 x ptr], i64, [64 x i8], i64, i32, i8, i8, i32, %struct.ib_device_attr, ptr, %struct.rdmacg_device, i32, %struct.spinlock, [3 x %struct.list_head], ptr, ptr, %struct.refcount_struct, %struct.completion, %struct.work_struct, ptr, %struct.mutex, %struct.xarray, [16 x i8], i32, i32 }
%struct.ib_device_ops = type { ptr, i32, i32, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.callback_head = type { ptr, ptr }
%union.anon.171 = type { %struct.ib_core_device }
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
%struct.ib_odp_caps = type { i64, %struct.anon.162 }
%struct.anon.162 = type { i32, i32, i32, i32 }
%struct.ib_rss_caps = type { i32, i32, i32 }
%struct.ib_tm_caps = type { i32, i32, i32, i32, i32 }
%struct.ib_cq_caps = type { i16, i16 }
%struct.rdmacg_device = type { %struct.list_head, %struct.list_head, ptr }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.rds_connection = type { %struct.hlist_node, %struct.in6_addr, %struct.in6_addr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, i32, i32, %struct.possible_net_t, i8, %struct.list_head, i32, ptr, %struct.wait_queue_head, i32, i32 }
%struct.rds_conn_path = type { ptr, ptr, i32, i32, i32, i32, i32, i32, %struct.spinlock, i64, %struct.list_head, %struct.list_head, i64, ptr, %struct.atomic_t, i32, i32, i32, %struct.delayed_work, %struct.delayed_work, %struct.delayed_work, %struct.work_struct, %struct.mutex, %struct.wait_queue_head, i32, i32, i32 }
%struct.rds_ib_connection = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, [32 x %struct.ib_wc], [32 x %struct.ib_wc], %struct.atomic_t, %struct.atomic_t, %struct.tasklet_struct, %struct.tasklet_struct, %struct.rds_ib_work_ring, ptr, ptr, ptr, ptr, %struct.atomic_t, %struct.mutex, %struct.rds_ib_work_ring, ptr, i32, ptr, ptr, ptr, i64, %struct.rds_ib_refill_cache, %struct.rds_ib_refill_cache, %struct.atomic_t, i32, %struct.atomic64_t, ptr, %struct.ib_send_wr, %struct.ib_sge, i32, i32, %struct.atomic_t, i8, i32, i8, %struct.atomic_t, i32, i32, i8 }
%struct.ib_wc = type { %union.anon.137, i32, i32, i32, i32, ptr, %union.anon.138, i32, i32, i32, i16, i8, i8, i32, [6 x i8], i16, i8 }
%union.anon.137 = type { i64 }
%union.anon.138 = type { i32 }
%struct.tasklet_struct = type { ptr, i32, %struct.atomic_t, i8, %union.anon.181, i32 }
%union.anon.181 = type { ptr }
%struct.rds_ib_work_ring = type { i32, i32, i32, i32, %struct.atomic_t }
%struct.rds_ib_refill_cache = type { ptr, ptr, ptr }
%struct.atomic64_t = type { i64 }
%struct.ib_send_wr = type { ptr, %union.anon.159, ptr, i32, i32, i32, %union.anon.160 }
%union.anon.159 = type { i64 }
%union.anon.160 = type { i32 }
%struct.ib_sge = type { i64, i32, i32 }
%struct.sa_path_rec = type { %union.ib_gid, %union.ib_gid, i64, i32, i8, i8, i8, i8, i16, i16, i8, i8, i8, i8, i8, i8, i8, i8, %union.anon.174, i32 }
%union.ib_gid = type { %struct.anon.158 }
%struct.anon.158 = type { i64, i64 }
%union.anon.174 = type { %struct.sa_path_rec_opa }
%struct.sa_path_rec_opa = type { i32, i32, i8, i8, i8, i8, i8, i8, i8 }
%struct.rdma_cm_event = type { i32, i32, %union.anon.175, %struct.rdma_ucm_ece }
%union.anon.175 = type { %struct.rdma_ud_param }
%struct.rdma_ud_param = type { ptr, i8, %struct.rdma_ah_attr, i32, i32 }
%struct.rdma_ah_attr = type { %struct.ib_global_route, i8, i8, i32, i8, i32, %union.anon.163 }
%struct.ib_global_route = type { ptr, %union.ib_gid, i32, i8, i8, i8 }
%union.anon.163 = type { %struct.opa_ah_attr }
%struct.opa_ah_attr = type { i32, i8, i8 }
%struct.rdma_ucm_ece = type { i32, i32 }
%struct.sockaddr_in6 = type { i16, i16, i32, %struct.in6_addr, i32 }
%struct.sockaddr_in = type { i16, i16, %struct.in_addr, [8 x i8] }
%struct.in_addr = type { i32 }

@__initcall__kmod_rds_rdma__554_308_rds_rdma_init6 = internal global ptr @rds_rdma_init, section ".initcall6.init", align 4
@__exitcall_rds_rdma_exit = internal global ptr @rds_rdma_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author555 = internal constant [62 x i8] c"rds_rdma.author=Oracle Corporation <rds-devel@oss.oracle.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description556 = internal constant [39 x i8] c"rds_rdma.description=RDS: IB transport\00", section ".modinfo", align 1
@__UNIQUE_ID_file557 = internal constant [31 x i8] c"rds_rdma.file=net/rds/rds_rdma\00", section ".modinfo", align 1
@__UNIQUE_ID_license558 = internal constant [30 x i8] c"rds_rdma.license=Dual BSD/GPL\00", section ".modinfo", align 1
@rds_rdma_cm_event_handler_cmn.__UNIQUE_ID_ddebug546 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 0, i8 15, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"rds_rdma\00", [23 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"rds_rdma_cm_event_handler_cmn\00", [34 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"net/rds/rdma_transport.c\00", [39 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"%s(): conn %p id %p handling event %u (%s)\0A\00", [52 x i8] zeroinitializer }, align 32
@rds_ib_transport = external dso_local local_unnamed_addr global %struct.rds_transport, align 4
@rds_rdma_cm_event_handler_cmn._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 127, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"\014RDS/RDMA: conn <%pI6c, %pI6c> rejected, dropping connection\0A\00", [33 x i8] zeroinitializer }, align 32
@rds_rdma_cm_event_handler_cmn._entry_ptr = internal global ptr @rds_rdma_cm_event_handler_cmn._entry, section ".printk_index", align 4
@rds_rdma_cm_event_handler_cmn.__UNIQUE_ID_ddebug547 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.5, i8 0, i8 33, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.5 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"%s(): Connection rejected: %s\0A\00", [33 x i8] zeroinitializer }, align 32
@rds_rdma_cm_event_handler_cmn.__UNIQUE_ID_ddebug548 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.6, i8 0, i8 38, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.6 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"%s(): DISCONNECT event - dropping connection %pI6c->%pI6c\0A\00", [37 x i8] zeroinitializer }, align 32
@rds_rdma_cm_event_handler_cmn._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.1, ptr @.str.2, i32 159, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [76 x i8], [52 x i8] } { [76 x i8] c"\016RDS: RDMA_CM_EVENT_TIMEWAIT_EXIT event: dropping connection %pI6c->%pI6c\0A\00", [52 x i8] zeroinitializer }, align 32
@rds_rdma_cm_event_handler_cmn._entry_ptr.9 = internal global ptr @rds_rdma_cm_event_handler_cmn._entry.7, section ".printk_index", align 4
@rds_rdma_cm_event_handler_cmn._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.1, ptr @.str.2, i32 167, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\013RDS: unknown event %u (%s)!\0A\00", [33 x i8] zeroinitializer }, align 32
@rds_rdma_cm_event_handler_cmn._entry_ptr.12 = internal global ptr @rds_rdma_cm_event_handler_cmn._entry.10, section ".printk_index", align 4
@rds_rdma_cm_event_handler_cmn.__UNIQUE_ID_ddebug549 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.13, i8 0, i8 44, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.13 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"%s(): id %p event %u (%s) handling ret %d\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"net/rds/rds.h\00", [18 x i8] zeroinitializer }, align 32
@rds_rdma_listen_id = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@in6addr_any = external dso_local local_unnamed_addr constant %struct.in6_addr, align 4
@rds6_rdma_listen_id = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@rds_rdma_listen_init.__UNIQUE_ID_ddebug551 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.15, ptr @.str.2, ptr @.str.16, i8 0, i8 68, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.15 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"rds_rdma_listen_init\00", [43 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"%s(): Cannot set up IPv6 RDMA listener\0A\00", [56 x i8] zeroinitializer }, align 32
@init_net = external dso_local global %struct.net, align 128
@rds_rdma_listen_init_common._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.18, ptr @.str.2, i32 207, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [68 x i8], [60 x i8] } { [68 x i8] c"\013RDS/RDMA: failed to setup listener, rdma_create_id() returned %d\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"rds_rdma_listen_init_common\00", [36 x i8] zeroinitializer }, align 32
@rds_rdma_listen_init_common._entry_ptr = internal global ptr @rds_rdma_listen_init_common._entry, section ".printk_index", align 4
@rds_rdma_listen_init_common._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.18, ptr @.str.2, i32 218, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [68 x i8], [60 x i8] } { [68 x i8] c"\013RDS/RDMA: failed to setup listener, rdma_bind_addr() returned %d\0A\00", [60 x i8] zeroinitializer }, align 32
@rds_rdma_listen_init_common._entry_ptr.21 = internal global ptr @rds_rdma_listen_init_common._entry.19, section ".printk_index", align 4
@rds_rdma_listen_init_common._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.18, ptr @.str.2, i32 225, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"\013RDS/RDMA: failed to setup listener, rdma_listen() returned %d\0A\00", [63 x i8] zeroinitializer }, align 32
@rds_rdma_listen_init_common._entry_ptr.24 = internal global ptr @rds_rdma_listen_init_common._entry.22, section ".printk_index", align 4
@rds_rdma_listen_init_common.__UNIQUE_ID_ddebug550 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.18, ptr @.str.2, ptr @.str.25, i8 0, i8 57, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.25 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"%s(): cm %p listening on port %u\0A\00", [62 x i8] zeroinitializer }, align 32
@rds_rdma_listen_stop.__UNIQUE_ID_ddebug552 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.26, ptr @.str.2, ptr @.str.27, i8 0, i8 70, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.26 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"rds_rdma_listen_stop\00", [43 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"%s(): cm %p\0A\00", [19 x i8] zeroinitializer }, align 32
@rds_rdma_listen_stop.__UNIQUE_ID_ddebug553 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.26, ptr @.str.2, ptr @.str.27, i8 0, i8 71, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@__sancov_gen_cov_switch_values = internal global [15 x i64] [i64 13, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 6, i64 7, i64 8, i64 9, i64 10, i64 11, i64 14, i64 15]
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 60, i32 2 }
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 126, i32 4 }
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 134, i32 3 }
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 150, i32 3 }
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 158, i32 4 }
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 166, i32 3 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 175, i32 2 }
@___asan_gen_.68 = private unnamed_addr constant [17 x i8] c"../net/rds/rds.h\00", align 1
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.68, i32 816, i32 2 }
@___asan_gen_.70 = private unnamed_addr constant [19 x i8] c"rds_rdma_listen_id\00", align 1
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 41, i32 27 }
@___asan_gen_.73 = private unnamed_addr constant [20 x i8] c"rds6_rdma_listen_id\00", align 1
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 43, i32 27 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 273, i32 3 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 206, i32 3 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 217, i32 3 }
@___asan_gen_.97 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 224, i32 3 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 229, i32 2 }
@___asan_gen_.109 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.110 = private constant [28 x i8] c"../net/rds/rdma_transport.c\00", align 1
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 281, i32 3 }
@llvm.compiler.used = appending global [40 x ptr] [ptr @__UNIQUE_ID_author555, ptr @__UNIQUE_ID_description556, ptr @__UNIQUE_ID_file557, ptr @__UNIQUE_ID_license558, ptr @__exitcall_rds_rdma_exit, ptr @__initcall__kmod_rds_rdma__554_308_rds_rdma_init6, ptr @rds_rdma_cm_event_handler_cmn._entry, ptr @rds_rdma_cm_event_handler_cmn._entry.10, ptr @rds_rdma_cm_event_handler_cmn._entry.7, ptr @rds_rdma_cm_event_handler_cmn._entry_ptr, ptr @rds_rdma_cm_event_handler_cmn._entry_ptr.12, ptr @rds_rdma_cm_event_handler_cmn._entry_ptr.9, ptr @rds_rdma_listen_init_common._entry, ptr @rds_rdma_listen_init_common._entry.19, ptr @rds_rdma_listen_init_common._entry.22, ptr @rds_rdma_listen_init_common._entry_ptr, ptr @rds_rdma_listen_init_common._entry_ptr.21, ptr @rds_rdma_listen_init_common._entry_ptr.24, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.8, ptr @.str.11, ptr @.str.13, ptr @.str.14, ptr @rds_rdma_listen_id, ptr @rds6_rdma_listen_id, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.20, ptr @.str.23, ptr @.str.25, ptr @.str.26, ptr @.str.27], section "llvm.metadata"
@0 = internal global [28 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rds_rdma_cm_event_handler_cmn._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rds_rdma_cm_event_handler_cmn._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rds_rdma_cm_event_handler_cmn._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rds_rdma_listen_id to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rds6_rdma_listen_id to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rds_rdma_listen_init_common._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rds_rdma_listen_init_common._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rds_rdma_listen_init_common._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rds_rdma_cm_event_handler(ptr noundef %cm_id, ptr noundef %event) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @rds_rdma_cm_event_handler_cmn(ptr noundef %cm_id, ptr noundef %event, i1 noundef zeroext false)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @rds_rdma_cm_event_handler_cmn(ptr noundef %cm_id, ptr noundef %event, i1 noundef zeroext %isv6) unnamed_addr #0 align 64 {
entry:
  %len = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %context = getelementptr inbounds %struct.rdma_cm_id, ptr %cm_id, i32 0, i32 1
  %0 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %context, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %len) #5
  %2 = ptrtoint ptr %len to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -1, ptr %len, align 1, !annotation !79
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rds_rdma_cm_event_handler_cmn.__UNIQUE_ID_ddebug546, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rds_rdma_cm_event_handler_cmn, %if.then)) #5
          to label %do.end [label %if.then], !srcloc !80

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %3 = ptrtoint ptr %event to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %event, align 8
  %call6 = tail call ptr @rdma_event_msg(i32 noundef %4) #8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @rds_rdma_cm_event_handler_cmn.__UNIQUE_ID_ddebug546, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.1, ptr noundef %1, ptr noundef %cm_id, i32 noundef %4, ptr noundef %call6) #5
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %5 = ptrtoint ptr %cm_id to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %cm_id, align 4
  %node_type = getelementptr inbounds %struct.ib_device, ptr %6, i32 0, i32 20
  %7 = ptrtoint ptr %node_type to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %node_type, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %8)
  %cmp = icmp eq i8 %8, 1
  %tobool10.not = icmp eq ptr %1, null
  br i1 %tobool10.not, label %do.end.if.end22_crit_edge, label %if.then11

do.end.if.end22_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end22

if.then11:                                        ; preds = %do.end
  %c_path = getelementptr inbounds %struct.rds_connection, ptr %1, i32 0, i32 17
  %9 = ptrtoint ptr %c_path to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %c_path, align 4
  %cp_cm_lock = getelementptr inbounds %struct.rds_conn_path, ptr %10, i32 0, i32 22
  tail call void @mutex_lock_nested(ptr noundef %cp_cm_lock, i32 noundef 0) #5
  %c_trans.i = getelementptr inbounds %struct.rds_connection, ptr %1, i32 0, i32 8
  %11 = ptrtoint ptr %c_trans.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %c_trans.i, align 4
  %t_mp_capable.i = getelementptr inbounds %struct.rds_transport, ptr %12, i32 0, i32 3
  %13 = ptrtoint ptr %t_mp_capable.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %bf.load.i = load i8, ptr %t_mp_capable.i, align 4
  %14 = and i8 %bf.load.i, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool.not.i = icmp eq i8 %14, 0
  br i1 %tobool.not.i, label %if.then11.rds_conn_state.exit_crit_edge, label %do.end.i, !prof !81

if.then11.rds_conn_state.exit_crit_edge:          ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #7
  br label %rds_conn_state.exit

do.end.i:                                         ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.14, i32 noundef 816, i32 noundef 9, ptr noundef null) #5
  br label %rds_conn_state.exit

rds_conn_state.exit:                              ; preds = %do.end.i, %if.then11.rds_conn_state.exit_crit_edge
  %15 = ptrtoint ptr %c_path to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %c_path, align 4
  %cp_state.i.i = getelementptr inbounds %struct.rds_conn_path, ptr %16, i32 0, i32 14
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %cp_state.i.i, i32 noundef 4) #5
  %17 = ptrtoint ptr %cp_state.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile i32, ptr %cp_state.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %18)
  %cmp13 = icmp eq i32 %18, 2
  br i1 %cmp13, label %if.then15, label %rds_conn_state.exit.if.end22_crit_edge

rds_conn_state.exit.if.end22_crit_edge:           ; preds = %rds_conn_state.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end22

if.then15:                                        ; preds = %rds_conn_state.exit
  call void @__sanitizer_cov_trace_pc() #7
  %19 = ptrtoint ptr %event to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %event, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %20)
  %cmp17 = icmp eq i32 %20, 4
  %spec.select222 = zext i1 %cmp17 to i32
  br label %if.then139

if.end22:                                         ; preds = %rds_conn_state.exit.if.end22_crit_edge, %do.end.if.end22_crit_edge
  %21 = ptrtoint ptr %event to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %event, align 8
  %23 = zext i32 %22 to i64
  call void @__sanitizer_cov_trace_switch(i64 %23, ptr @__sancov_gen_cov_switch_values)
  switch i32 %22, label %do.end132 [
    i32 4, label %sw.bb
    i32 0, label %sw.bb26
    i32 2, label %sw.bb30
    i32 9, label %sw.bb47
    i32 8, label %sw.bb51
    i32 1, label %if.end22.sw.bb93_crit_edge
    i32 3, label %if.end22.sw.bb93_crit_edge243
    i32 6, label %if.end22.sw.bb93_crit_edge244
    i32 7, label %if.end22.sw.bb93_crit_edge245
    i32 11, label %if.end22.sw.bb93_crit_edge246
    i32 14, label %if.end22.sw.bb93_crit_edge247
    i32 10, label %sw.bb97
    i32 15, label %sw.bb119
  ]

if.end22.sw.bb93_crit_edge247:                    ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb93

if.end22.sw.bb93_crit_edge246:                    ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb93

if.end22.sw.bb93_crit_edge245:                    ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb93

if.end22.sw.bb93_crit_edge244:                    ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb93

if.end22.sw.bb93_crit_edge243:                    ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb93

if.end22.sw.bb93_crit_edge:                       ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb93

sw.bb:                                            ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #7
  %cm_handle_connect = select i1 %cmp, ptr getelementptr inbounds (%struct.rds_transport, ptr @rds_ib_transport, i32 0, i32 18), ptr inttoptr (i32 87 to ptr)
  %24 = ptrtoint ptr %cm_handle_connect to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %cm_handle_connect, align 4
  %call25 = tail call i32 %25(ptr noundef %cm_id, ptr noundef %event, i1 noundef zeroext %isv6) #5
  br label %out

sw.bb26:                                          ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #7
  %c_tos = getelementptr inbounds %struct.rds_connection, ptr %1, i32 0, i32 14
  %26 = ptrtoint ptr %c_tos to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %c_tos, align 4
  %conv27 = zext i8 %27 to i32
  tail call void @rdma_set_service_type(ptr noundef %cm_id, i32 noundef %conv27) #5
  %call28 = tail call i32 @rdma_set_min_rnr_timer(ptr noundef %cm_id, i8 noundef zeroext 10) #5
  %call29 = tail call i32 @rdma_resolve_route(ptr noundef %cm_id, i32 noundef 5000) #5
  br label %out

sw.bb30:                                          ; preds = %if.end22
  br i1 %tobool10.not, label %sw.bb30.do.body144_crit_edge, label %if.then32

sw.bb30.do.body144_crit_edge:                     ; preds = %sw.bb30
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body144

if.then32:                                        ; preds = %sw.bb30
  %c_path33 = getelementptr inbounds %struct.rds_connection, ptr %1, i32 0, i32 17
  %28 = ptrtoint ptr %c_path33 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %c_path33, align 4
  %cp_transport_data = getelementptr inbounds %struct.rds_conn_path, ptr %29, i32 0, i32 13
  %30 = ptrtoint ptr %cp_transport_data to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %cp_transport_data, align 8
  %tobool35.not = icmp eq ptr %31, null
  br i1 %tobool35.not, label %if.then32.if.else_crit_edge, label %land.lhs.true

if.then32.if.else_crit_edge:                      ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else

land.lhs.true:                                    ; preds = %if.then32
  %i_cm_id = getelementptr inbounds %struct.rds_ib_connection, ptr %31, i32 0, i32 3
  %32 = ptrtoint ptr %i_cm_id to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %i_cm_id, align 8
  %cmp36 = icmp eq ptr %33, %cm_id
  br i1 %cmp36, label %if.then38, label %land.lhs.true.if.else_crit_edge

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else

if.then38:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  %c_tos39 = getelementptr inbounds %struct.rds_connection, ptr %1, i32 0, i32 14
  %34 = ptrtoint ptr %c_tos39 to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %c_tos39, align 4
  %36 = and i8 %35, 15
  %path_rec = getelementptr inbounds %struct.rdma_cm_id, ptr %cm_id, i32 0, i32 4, i32 1
  %37 = ptrtoint ptr %path_rec to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %path_rec, align 4
  %sl = getelementptr inbounds %struct.sa_path_rec, ptr %38, i32 0, i32 10
  %39 = ptrtoint ptr %sl to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 %36, ptr %sl, align 4
  %cm_initiate_connect = select i1 %cmp, ptr getelementptr inbounds (%struct.rds_transport, ptr @rds_ib_transport, i32 0, i32 19), ptr inttoptr (i32 91 to ptr)
  %40 = ptrtoint ptr %cm_initiate_connect to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %cm_initiate_connect, align 4
  %call44 = tail call i32 %41(ptr noundef %cm_id, i1 noundef zeroext %isv6) #5
  br label %if.then139

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %if.then32.if.else_crit_edge
  tail call void @rds_conn_drop(ptr noundef nonnull %1) #5
  br label %if.then139

sw.bb47:                                          ; preds = %if.end22
  br i1 %tobool10.not, label %sw.bb47.do.body144_crit_edge, label %if.then49

sw.bb47.do.body144_crit_edge:                     ; preds = %sw.bb47
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body144

if.then49:                                        ; preds = %sw.bb47
  call void @__sanitizer_cov_trace_pc() #7
  %cm_connect_complete = select i1 %cmp, ptr getelementptr inbounds (%struct.rds_transport, ptr @rds_ib_transport, i32 0, i32 20), ptr inttoptr (i32 95 to ptr)
  %42 = ptrtoint ptr %cm_connect_complete to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %cm_connect_complete, align 4
  tail call void %43(ptr noundef nonnull %1, ptr noundef %event) #5
  br label %if.then139

sw.bb51:                                          ; preds = %if.end22
  br i1 %tobool10.not, label %sw.bb51.do.body144_crit_edge, label %if.end54

sw.bb51.do.body144_crit_edge:                     ; preds = %sw.bb51
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body144

if.end54:                                         ; preds = %sw.bb51
  %call55 = call ptr @rdma_consumer_reject_data(ptr noundef %cm_id, ptr noundef %event, ptr noundef nonnull %len) #5
  %tobool56.not = icmp eq ptr %call55, null
  br i1 %tobool56.not, label %if.end54.do.end68_crit_edge, label %land.lhs.true58

if.end54.do.end68_crit_edge:                      ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end68

land.lhs.true58:                                  ; preds = %if.end54
  %44 = ptrtoint ptr %len to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %len, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %45)
  %cmp60 = icmp ugt i8 %45, 3
  br i1 %cmp60, label %land.lhs.true62, label %land.lhs.true58.do.body76_crit_edge

land.lhs.true58.do.body76_crit_edge:              ; preds = %land.lhs.true58
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body76

land.lhs.true62:                                  ; preds = %land.lhs.true58
  %46 = ptrtoint ptr %call55 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %call55, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %47)
  %cmp63 = icmp slt i32 %47, 2
  br i1 %cmp63, label %land.lhs.true62.do.end68_crit_edge, label %land.lhs.true62.do.body76_crit_edge

land.lhs.true62.do.body76_crit_edge:              ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body76

land.lhs.true62.do.end68_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end68

do.end68:                                         ; preds = %land.lhs.true62.do.end68_crit_edge, %if.end54.do.end68_crit_edge
  %c_laddr = getelementptr inbounds %struct.rds_connection, ptr %1, i32 0, i32 1
  %c_faddr = getelementptr inbounds %struct.rds_connection, ptr %1, i32 0, i32 2
  %call70 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef %c_laddr, ptr noundef %c_faddr) #9
  %c_tos71 = getelementptr inbounds %struct.rds_connection, ptr %1, i32 0, i32 14
  %48 = ptrtoint ptr %c_tos71 to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %c_tos71, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %49)
  %tobool72.not = icmp eq i8 %49, 0
  br i1 %tobool72.not, label %if.then73, label %do.end68.if.end74_crit_edge

do.end68.if.end74_crit_edge:                      ; preds = %do.end68
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end74

if.then73:                                        ; preds = %do.end68
  call void @__sanitizer_cov_trace_pc() #7
  %c_proposed_version = getelementptr inbounds %struct.rds_connection, ptr %1, i32 0, i32 11
  %50 = ptrtoint ptr %c_proposed_version to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 769, ptr %c_proposed_version, align 4
  br label %if.end74

if.end74:                                         ; preds = %if.then73, %do.end68.if.end74_crit_edge
  call void @rds_conn_drop(ptr noundef nonnull %1) #5
  br label %do.body76

do.body76:                                        ; preds = %if.end74, %land.lhs.true62.do.body76_crit_edge, %land.lhs.true58.do.body76_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rds_rdma_cm_event_handler_cmn.__UNIQUE_ID_ddebug547, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rds_rdma_cm_event_handler_cmn, %if.then88)) #5
          to label %out [label %if.then88], !srcloc !80

if.then88:                                        ; preds = %do.body76
  call void @__sanitizer_cov_trace_pc() #7
  %status = getelementptr inbounds %struct.rdma_cm_event, ptr %event, i32 0, i32 1
  %51 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %status, align 4
  %call89 = call ptr @rdma_reject_msg(ptr noundef %cm_id, i32 noundef %52) #8
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @rds_rdma_cm_event_handler_cmn.__UNIQUE_ID_ddebug547, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.1, ptr noundef %call89) #5
  br label %if.then139

sw.bb93:                                          ; preds = %if.end22.sw.bb93_crit_edge, %if.end22.sw.bb93_crit_edge243, %if.end22.sw.bb93_crit_edge244, %if.end22.sw.bb93_crit_edge245, %if.end22.sw.bb93_crit_edge246, %if.end22.sw.bb93_crit_edge247
  br i1 %tobool10.not, label %sw.bb93.do.body144_crit_edge, label %if.then95

sw.bb93.do.body144_crit_edge:                     ; preds = %sw.bb93
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body144

if.then95:                                        ; preds = %sw.bb93
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @rds_conn_drop(ptr noundef nonnull %1) #5
  br label %if.then139

sw.bb97:                                          ; preds = %if.end22
  br i1 %tobool10.not, label %sw.bb97.do.body144_crit_edge, label %do.body101

sw.bb97.do.body144_crit_edge:                     ; preds = %sw.bb97
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body144

do.body101:                                       ; preds = %sw.bb97
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rds_rdma_cm_event_handler_cmn.__UNIQUE_ID_ddebug548, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rds_rdma_cm_event_handler_cmn, %if.then113)) #5
          to label %do.end118 [label %if.then113], !srcloc !80

if.then113:                                       ; preds = %do.body101
  call void @__sanitizer_cov_trace_pc() #7
  %c_laddr114 = getelementptr inbounds %struct.rds_connection, ptr %1, i32 0, i32 1
  %c_faddr115 = getelementptr inbounds %struct.rds_connection, ptr %1, i32 0, i32 2
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @rds_rdma_cm_event_handler_cmn.__UNIQUE_ID_ddebug548, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.1, ptr noundef %c_laddr114, ptr noundef %c_faddr115) #5
  br label %do.end118

do.end118:                                        ; preds = %if.then113, %do.body101
  tail call void @rds_conn_drop(ptr noundef nonnull %1) #5
  br label %if.then139

sw.bb119:                                         ; preds = %if.end22
  br i1 %tobool10.not, label %sw.bb119.do.body144_crit_edge, label %do.end124

sw.bb119.do.body144_crit_edge:                    ; preds = %sw.bb119
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body144

do.end124:                                        ; preds = %sw.bb119
  call void @__sanitizer_cov_trace_pc() #7
  %c_laddr126 = getelementptr inbounds %struct.rds_connection, ptr %1, i32 0, i32 1
  %c_faddr127 = getelementptr inbounds %struct.rds_connection, ptr %1, i32 0, i32 2
  %call128 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef %c_laddr126, ptr noundef %c_faddr127) #9
  tail call void @rds_conn_drop(ptr noundef nonnull %1) #5
  br label %if.then139

do.end132:                                        ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #7
  %call136 = tail call ptr @rdma_event_msg(i32 noundef %22) #8
  %call137 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, i32 noundef %22, ptr noundef %call136) #9
  br label %out

out:                                              ; preds = %do.end132, %do.body76, %sw.bb26, %sw.bb
  %ret.1 = phi i32 [ 0, %do.end132 ], [ %call29, %sw.bb26 ], [ %call25, %sw.bb ], [ 0, %do.body76 ]
  br i1 %tobool10.not, label %out.do.body144_crit_edge, label %out.if.then139_crit_edge

out.if.then139_crit_edge:                         ; preds = %out
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then139

out.do.body144_crit_edge:                         ; preds = %out
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body144

if.then139:                                       ; preds = %out.if.then139_crit_edge, %do.end124, %do.end118, %if.then95, %if.then88, %if.then49, %if.else, %if.then38, %if.then15
  %ret.1236 = phi i32 [ %ret.1, %out.if.then139_crit_edge ], [ 0, %if.else ], [ %call44, %if.then38 ], [ %spec.select222, %if.then15 ], [ 0, %if.then49 ], [ 0, %if.then88 ], [ 0, %if.then95 ], [ 0, %do.end118 ], [ 0, %do.end124 ]
  %c_path140 = getelementptr inbounds %struct.rds_connection, ptr %1, i32 0, i32 17
  %53 = ptrtoint ptr %c_path140 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %c_path140, align 4
  %cp_cm_lock142 = getelementptr inbounds %struct.rds_conn_path, ptr %54, i32 0, i32 22
  call void @mutex_unlock(ptr noundef %cp_cm_lock142) #5
  br label %do.body144

do.body144:                                       ; preds = %if.then139, %out.do.body144_crit_edge, %sw.bb119.do.body144_crit_edge, %sw.bb97.do.body144_crit_edge, %sw.bb93.do.body144_crit_edge, %sw.bb51.do.body144_crit_edge, %sw.bb47.do.body144_crit_edge, %sw.bb30.do.body144_crit_edge
  %ret.1237 = phi i32 [ %ret.1, %out.do.body144_crit_edge ], [ %ret.1236, %if.then139 ], [ 0, %sw.bb30.do.body144_crit_edge ], [ 0, %sw.bb47.do.body144_crit_edge ], [ 0, %sw.bb51.do.body144_crit_edge ], [ 0, %sw.bb93.do.body144_crit_edge ], [ 0, %sw.bb97.do.body144_crit_edge ], [ 0, %sw.bb119.do.body144_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rds_rdma_cm_event_handler_cmn.__UNIQUE_ID_ddebug549, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rds_rdma_cm_event_handler_cmn, %if.then156)) #5
          to label %do.end162 [label %if.then156], !srcloc !80

if.then156:                                       ; preds = %do.body144
  call void @__sanitizer_cov_trace_pc() #7
  %55 = ptrtoint ptr %event to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %event, align 8
  %call159 = call ptr @rdma_event_msg(i32 noundef %56) #8
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @rds_rdma_cm_event_handler_cmn.__UNIQUE_ID_ddebug549, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.1, ptr noundef %cm_id, i32 noundef %56, ptr noundef %call159, i32 noundef %ret.1237) #5
  br label %do.end162

do.end162:                                        ; preds = %if.then156, %do.body144
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %len) #5
  ret i32 %ret.1237
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rds6_rdma_cm_event_handler(ptr noundef %cm_id, ptr noundef %event) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @rds_rdma_cm_event_handler_cmn(ptr noundef %cm_id, ptr noundef %event, i1 noundef zeroext true)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rds_rdma_init() #0 align 64 {
entry:
  %sin6.i = alloca %struct.sockaddr_in6, align 4
  %sin.i = alloca %struct.sockaddr_in, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @rds_ib_init() #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.out_crit_edge

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %out

if.end:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %sin6.i) #5
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %sin.i) #5
  %0 = getelementptr inbounds %struct.sockaddr_in, ptr %sin.i, i32 0, i32 1
  %1 = getelementptr inbounds %struct.sockaddr_in, ptr %sin.i, i32 0, i32 2
  %2 = getelementptr inbounds i8, ptr %sin.i, i32 8
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_storeN_noabort(i32 %3, i32 8)
  store i64 -1, ptr %2, align 4
  %4 = ptrtoint ptr %sin.i to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 2, ptr %sin.i, align 4
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %1, align 4
  %6 = ptrtoint ptr %0 to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 18634, ptr %0, align 2
  %call.i = call fastcc i32 @rds_rdma_listen_init_common(ptr noundef nonnull @rds_rdma_cm_event_handler, ptr noundef nonnull %sin.i, ptr noundef nonnull @rds_rdma_listen_id) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.not.i = icmp eq i32 %call.i, 0
  br i1 %cmp.not.i, label %if.end.i, label %if.then3

if.end.i:                                         ; preds = %if.end
  %7 = getelementptr inbounds %struct.sockaddr_in6, ptr %sin6.i, i32 0, i32 4
  %8 = getelementptr inbounds %struct.sockaddr_in6, ptr %sin6.i, i32 0, i32 3
  %9 = getelementptr inbounds %struct.sockaddr_in6, ptr %sin6.i, i32 0, i32 2
  %10 = getelementptr inbounds %struct.sockaddr_in6, ptr %sin6.i, i32 0, i32 1
  %11 = ptrtoint ptr %sin6.i to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 10, ptr %sin6.i, align 4
  %12 = call ptr @memcpy(ptr %8, ptr @in6addr_any, i32 16)
  %13 = ptrtoint ptr %10 to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 16385, ptr %10, align 2
  %14 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %7, align 4
  %15 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %9, align 4
  %call1.i = call fastcc i32 @rds_rdma_listen_init_common(ptr noundef nonnull @rds6_rdma_cm_event_handler, ptr noundef nonnull %sin6.i, ptr noundef nonnull @rds6_rdma_listen_id) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %cmp2.not.i = icmp eq i32 %call1.i, 0
  br i1 %cmp2.not.i, label %if.end.i.rds_rdma_listen_init.exit.thread_crit_edge, label %do.body.i

if.end.i.rds_rdma_listen_init.exit.thread_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %rds_rdma_listen_init.exit.thread

do.body.i:                                        ; preds = %if.end.i
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rds_rdma_listen_init.__UNIQUE_ID_ddebug551, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rds_rdma_init, %if.then7.i)) #5
          to label %rds_rdma_listen_init.exit [label %if.then7.i], !srcloc !80

if.then7.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @rds_rdma_listen_init.__UNIQUE_ID_ddebug551, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.15) #5
  br label %rds_rdma_listen_init.exit.thread

rds_rdma_listen_init.exit.thread:                 ; preds = %if.then7.i, %if.end.i.rds_rdma_listen_init.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %sin.i) #5
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %sin6.i) #5
  br label %out

rds_rdma_listen_init.exit:                        ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %sin.i) #5
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %sin6.i) #5
  br label %out

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %sin.i) #5
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %sin6.i) #5
  call void @rds_ib_exit() #5
  br label %out

out:                                              ; preds = %if.then3, %rds_rdma_listen_init.exit, %rds_rdma_listen_init.exit.thread, %entry.out_crit_edge
  %ret.0 = phi i32 [ %call, %entry.out_crit_edge ], [ %call.i, %if.then3 ], [ 0, %rds_rdma_listen_init.exit ], [ 0, %rds_rdma_listen_init.exit.thread ]
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rds_rdma_exit() #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @rds_rdma_listen_stop()
  tail call void @rds_ib_exit() #5
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid readnone willreturn
declare dso_local ptr @rdma_event_msg(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rdma_set_service_type(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rdma_set_min_rnr_timer(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rdma_resolve_route(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rds_conn_drop(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rdma_consumer_reject_data(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid readnone willreturn
declare dso_local ptr @rdma_reject_msg(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rds_ib_init() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rds_ib_exit() local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @rds_rdma_listen_init_common(ptr noundef %handler, ptr noundef %sa, ptr nocapture noundef writeonly %ret_cm_id) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @__rdma_create_kernel_id(ptr noundef nonnull @init_net, ptr noundef %handler, ptr noundef null, i32 noundef 262, i32 noundef 2, ptr noundef nonnull @.str) #5
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %0 = ptrtoint ptr %call to i32
  %call3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, i32 noundef %0) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %call4 = tail call i32 @rdma_bind_addr(ptr noundef %call, ptr noundef %sa) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool.not = icmp eq i32 %call4, 0
  br i1 %tobool.not, label %if.end11, label %do.end8

do.end8:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %call10 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20, i32 noundef %call4) #9
  br label %out

if.end11:                                         ; preds = %if.end
  %call12 = tail call i32 @rdma_listen(ptr noundef %call, i32 noundef 128) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %do.body21, label %do.end17

do.end17:                                         ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #7
  %call19 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, i32 noundef %call12) #9
  br label %out

do.body21:                                        ; preds = %if.end11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rds_rdma_listen_init_common.__UNIQUE_ID_ddebug550, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rds_rdma_listen_init_common, %if.then27)) #5
          to label %out.thread [label %if.then27], !srcloc !80

if.then27:                                        ; preds = %do.body21
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @rds_rdma_listen_init_common.__UNIQUE_ID_ddebug550, ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.18, ptr noundef %call, i32 noundef 18634) #5
  br label %out.thread

out.thread:                                       ; preds = %if.then27, %do.body21
  %1 = ptrtoint ptr %ret_cm_id to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call, ptr %ret_cm_id, align 4
  br label %cleanup

out:                                              ; preds = %do.end17, %do.end8
  %ret.0 = phi i32 [ %call4, %do.end8 ], [ %call12, %do.end17 ]
  %tobool31.not = icmp eq ptr %call, null
  br i1 %tobool31.not, label %out.cleanup_crit_edge, label %if.then32

out.cleanup_crit_edge:                            ; preds = %out
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then32:                                        ; preds = %out
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @rdma_destroy_id(ptr noundef nonnull %call) #5
  br label %cleanup

cleanup:                                          ; preds = %if.then32, %out.cleanup_crit_edge, %out.thread, %if.then
  %retval.0 = phi i32 [ %0, %if.then ], [ %ret.0, %if.then32 ], [ %ret.0, %out.cleanup_crit_edge ], [ 0, %out.thread ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__rdma_create_kernel_id(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rdma_bind_addr(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rdma_listen(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rdma_destroy_id(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rds_rdma_listen_stop() unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @rds_rdma_listen_id, align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.if.end5_crit_edge, label %do.body

entry.if.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end5

do.body:                                          ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rds_rdma_listen_stop.__UNIQUE_ID_ddebug552, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rds_rdma_listen_stop, %if.then4)) #5
          to label %do.end [label %if.then4], !srcloc !80

if.then4:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  %1 = load ptr, ptr @rds_rdma_listen_id, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @rds_rdma_listen_stop.__UNIQUE_ID_ddebug552, ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.26, ptr noundef %1) #5
  br label %do.end

do.end:                                           ; preds = %if.then4, %do.body
  %2 = load ptr, ptr @rds_rdma_listen_id, align 4
  tail call void @rdma_destroy_id(ptr noundef %2) #5
  store ptr null, ptr @rds_rdma_listen_id, align 4
  br label %if.end5

if.end5:                                          ; preds = %do.end, %entry.if.end5_crit_edge
  %3 = load ptr, ptr @rds6_rdma_listen_id, align 4
  %tobool6.not = icmp eq ptr %3, null
  br i1 %tobool6.not, label %if.end5.if.end23_crit_edge, label %do.body8

if.end5.if.end23_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end23

do.body8:                                         ; preds = %if.end5
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rds_rdma_listen_stop.__UNIQUE_ID_ddebug553, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rds_rdma_listen_stop, %if.then20)) #5
          to label %do.end22 [label %if.then20], !srcloc !80

if.then20:                                        ; preds = %do.body8
  call void @__sanitizer_cov_trace_pc() #7
  %4 = load ptr, ptr @rds6_rdma_listen_id, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @rds_rdma_listen_stop.__UNIQUE_ID_ddebug553, ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.26, ptr noundef %4) #5
  br label %do.end22

do.end22:                                         ; preds = %if.then20, %do.body8
  %5 = load ptr, ptr @rds6_rdma_listen_id, align 4
  tail call void @rdma_destroy_id(ptr noundef %5) #5
  store ptr null, ptr @rds6_rdma_listen_id, align 4
  br label %if.end23

if.end23:                                         ; preds = %do.end22, %if.end5.if.end23_crit_edge
  ret void
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 28)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 28)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { mustprogress nofree nosync nounwind null_pointer_is_valid readnone willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { nounwind readnone willreturn }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !11, !13, !14, !15, !16, !17, !19, !20, !21, !23, !24, !26, !27, !29, !30, !31, !33, !34, !35, !37, !38, !40, !42, !43, !44, !46, !47, !48, !49, !51, !52, !53, !55, !56, !57, !59, !60, !62, !64, !66, !67, !68}
!llvm.module.flags = !{!70, !71, !72, !73, !74, !75, !76, !77}
!llvm.ident = !{!78}

!0 = !{ptr @__initcall__kmod_rds_rdma__554_308_rds_rdma_init6, !1, !"__initcall__kmod_rds_rdma__554_308_rds_rdma_init6", i1 false, i1 false}
!1 = !{!"../net/rds/rdma_transport.c", i32 308, i32 1}
!2 = !{ptr @__exitcall_rds_rdma_exit, !3, !"__exitcall_rds_rdma_exit", i1 false, i1 false}
!3 = !{!"../net/rds/rdma_transport.c", i32 316, i32 1}
!4 = !{ptr @__UNIQUE_ID_author555, !5, !"__UNIQUE_ID_author555", i1 false, i1 false}
!5 = !{!"../net/rds/rdma_transport.c", i32 318, i32 1}
!6 = !{ptr @__UNIQUE_ID_description556, !7, !"__UNIQUE_ID_description556", i1 false, i1 false}
!7 = !{!"../net/rds/rdma_transport.c", i32 319, i32 1}
!8 = !{ptr @__UNIQUE_ID_file557, !9, !"__UNIQUE_ID_file557", i1 false, i1 false}
!9 = !{!"../net/rds/rdma_transport.c", i32 320, i32 1}
!10 = !{ptr @__UNIQUE_ID_license558, !9, !"__UNIQUE_ID_license558", i1 false, i1 false}
!11 = !{ptr @.str, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../net/rds/rdma_transport.c", i32 60, i32 2}
!13 = !{ptr @.str.1, !12, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @.str.2, !12, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @.str.3, !12, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @rds_rdma_cm_event_handler_cmn.__UNIQUE_ID_ddebug546, !12, !"__UNIQUE_ID_ddebug546", i1 false, i1 false}
!17 = !{ptr @.str.4, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../net/rds/rdma_transport.c", i32 126, i32 4}
!19 = !{ptr @rds_rdma_cm_event_handler_cmn._entry, !18, !"_entry", i1 false, i1 false}
!20 = !{ptr @rds_rdma_cm_event_handler_cmn._entry_ptr, !18, !"_entry_ptr", i1 false, i1 false}
!21 = !{ptr @.str.5, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../net/rds/rdma_transport.c", i32 134, i32 3}
!23 = !{ptr @rds_rdma_cm_event_handler_cmn.__UNIQUE_ID_ddebug547, !22, !"__UNIQUE_ID_ddebug547", i1 false, i1 false}
!24 = !{ptr @.str.6, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../net/rds/rdma_transport.c", i32 150, i32 3}
!26 = !{ptr @rds_rdma_cm_event_handler_cmn.__UNIQUE_ID_ddebug548, !25, !"__UNIQUE_ID_ddebug548", i1 false, i1 false}
!27 = !{ptr @.str.8, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../net/rds/rdma_transport.c", i32 158, i32 4}
!29 = !{ptr @rds_rdma_cm_event_handler_cmn._entry.7, !28, !"_entry", i1 false, i1 false}
!30 = !{ptr @rds_rdma_cm_event_handler_cmn._entry_ptr.9, !28, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @.str.11, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../net/rds/rdma_transport.c", i32 166, i32 3}
!33 = !{ptr @rds_rdma_cm_event_handler_cmn._entry.10, !32, !"_entry", i1 false, i1 false}
!34 = !{ptr @rds_rdma_cm_event_handler_cmn._entry_ptr.12, !32, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @.str.13, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../net/rds/rdma_transport.c", i32 175, i32 2}
!37 = !{ptr @rds_rdma_cm_event_handler_cmn.__UNIQUE_ID_ddebug549, !36, !"__UNIQUE_ID_ddebug549", i1 false, i1 false}
!38 = !{ptr @.str.14, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../net/rds/rds.h", i32 816, i32 2}
!40 = !{ptr @.str.15, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../net/rds/rdma_transport.c", i32 273, i32 3}
!42 = !{ptr @.str.16, !41, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @rds_rdma_listen_init.__UNIQUE_ID_ddebug551, !41, !"__UNIQUE_ID_ddebug551", i1 false, i1 false}
!44 = !{ptr @.str.17, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../net/rds/rdma_transport.c", i32 206, i32 3}
!46 = !{ptr @.str.18, !45, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @rds_rdma_listen_init_common._entry, !45, !"_entry", i1 false, i1 false}
!48 = !{ptr @rds_rdma_listen_init_common._entry_ptr, !45, !"_entry_ptr", i1 false, i1 false}
!49 = !{ptr @.str.20, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../net/rds/rdma_transport.c", i32 217, i32 3}
!51 = !{ptr @rds_rdma_listen_init_common._entry.19, !50, !"_entry", i1 false, i1 false}
!52 = !{ptr @rds_rdma_listen_init_common._entry_ptr.21, !50, !"_entry_ptr", i1 false, i1 false}
!53 = !{ptr @.str.23, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../net/rds/rdma_transport.c", i32 224, i32 3}
!55 = !{ptr @rds_rdma_listen_init_common._entry.22, !54, !"_entry", i1 false, i1 false}
!56 = !{ptr @rds_rdma_listen_init_common._entry_ptr.24, !54, !"_entry_ptr", i1 false, i1 false}
!57 = !{ptr @.str.25, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../net/rds/rdma_transport.c", i32 229, i32 2}
!59 = !{ptr @rds_rdma_listen_init_common.__UNIQUE_ID_ddebug550, !58, !"__UNIQUE_ID_ddebug550", i1 false, i1 false}
!60 = !{ptr @rds_rdma_listen_id, !61, !"rds_rdma_listen_id", i1 false, i1 false}
!61 = !{!"../net/rds/rdma_transport.c", i32 41, i32 27}
!62 = !{ptr @rds6_rdma_listen_id, !63, !"rds6_rdma_listen_id", i1 false, i1 false}
!63 = !{!"../net/rds/rdma_transport.c", i32 43, i32 27}
!64 = !{ptr @.str.26, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../net/rds/rdma_transport.c", i32 281, i32 3}
!66 = !{ptr @.str.27, !65, !"<string literal>", i1 false, i1 false}
!67 = !{ptr @rds_rdma_listen_stop.__UNIQUE_ID_ddebug552, !65, !"__UNIQUE_ID_ddebug552", i1 false, i1 false}
!68 = !{ptr @rds_rdma_listen_stop.__UNIQUE_ID_ddebug553, !69, !"__UNIQUE_ID_ddebug553", i1 false, i1 false}
!69 = !{!"../net/rds/rdma_transport.c", i32 287, i32 3}
!70 = !{i32 1, !"wchar_size", i32 2}
!71 = !{i32 1, !"min_enum_size", i32 4}
!72 = !{i32 8, !"branch-target-enforcement", i32 0}
!73 = !{i32 8, !"sign-return-address", i32 0}
!74 = !{i32 8, !"sign-return-address-all", i32 0}
!75 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!76 = !{i32 7, !"uwtable", i32 1}
!77 = !{i32 7, !"frame-pointer", i32 2}
!78 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!79 = !{!"auto-init"}
!80 = !{i64 2148960184, i64 2148960189, i64 2148960202, i64 2148960246, i64 2148960280, i64 2148960301}
!81 = !{!"branch_weights", i32 2000, i32 1}
