; ModuleID = '/llk/IR_all_yes/drivers/target/iscsi/iscsi_target_configfs.c_pt.bc'
source_filename = "../drivers/target/iscsi/iscsi_target_configfs.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.target_core_fabric_ops = type { ptr, ptr, ptr, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8 }
%struct.atomic_t = type { i32 }
%struct.config_item_type = type { ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
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
%struct.netns_ipv6 = type { %struct.dst_ops, %struct.netns_sysctl_ipv6, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.timer_list, ptr, ptr, %struct.list_head, %struct.rwlock_t, %struct.spinlock, i32, i32, i8, i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, i32, %struct.anon.90, ptr, [24 x i8] }
%struct.dst_ops = type { i16, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [60 x i8], %struct.percpu_counter, [56 x i8] }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.netns_sysctl_ipv6 = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i32, i8, i8, i8, [8 x i32], ptr, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8, i8 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.anon.90 = type { %struct.hlist_head, %struct.spinlock, i32 }
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
%struct.configfs_attribute = type { ptr, ptr, i16, ptr, ptr }
%struct.iscsi_tiqn = type { [224 x i8], i32, i32, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.spinlock, %struct.spinlock, %struct.se_wwn, %struct.iscsi_wwn_stat_grps, i32, [64 x i8], %struct.iscsi_sess_err_stats, %struct.iscsi_login_stats, %struct.iscsi_logout_stats }
%struct.se_wwn = type { ptr, ptr, %struct.config_group, %struct.config_group, %struct.config_group, i32 }
%struct.config_group = type { %struct.config_item, %struct.list_head, ptr, %struct.list_head, %struct.list_head }
%struct.config_item = type { ptr, [20 x i8], %struct.kref, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.kref = type { %struct.refcount_struct }
%struct.iscsi_wwn_stat_grps = type { %struct.config_group, %struct.config_group, %struct.config_group, %struct.config_group, %struct.config_group, %struct.config_group }
%struct.iscsi_sess_err_stats = type { %struct.spinlock, i32, i32, i32, i32, [224 x i8], [100 x i8] }
%struct.iscsi_login_stats = type { %struct.spinlock, i32, i32, i32, i32, i32, i32, i64, i32, i32, %struct.__kernel_sockaddr_storage, [224 x i8], [72 x i8] }
%struct.__kernel_sockaddr_storage = type { %union.anon.145 }
%union.anon.145 = type { ptr, [124 x i8] }
%struct.iscsi_logout_stats = type { %struct.spinlock, i32, i32, [76 x i8] }
%struct.se_session = type { %struct.atomic_t, i64, i32, i32, ptr, ptr, ptr, %struct.percpu_ref, %struct.list_head, %struct.list_head, %struct.spinlock, %struct.wait_queue_head, %struct.completion, ptr, %struct.sbitmap_queue }
%struct.percpu_ref = type { i32, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.sbitmap_queue = type { %struct.sbitmap, i32, %struct.atomic_t, ptr, %struct.atomic_t, i32 }
%struct.sbitmap = type { i32, i32, i32, i8, ptr, ptr }
%struct.iscsi_session = type { i8, [6 x i8], i32, i8, i16, i16, i16, i32, i32, i32, i32, %struct.mutex, i32, %struct.atomic_t, %struct.list_head, i32, [8 x i8], i32, i32, i32, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, i64, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.list_head, %struct.list_head, %struct.list_head, %struct.spinlock, %struct.spinlock, %struct.spinlock, %struct.spinlock, %struct.spinlock, %struct.completion, %struct.completion, %struct.completion, %struct.completion, %struct.timer_list, ptr, ptr, ptr, [12 x i8] }
%struct.iscsi_portal_group = type { i8, i32, i16, i16, i32, i32, i32, %struct.spinlock, %struct.spinlock, %struct.se_portal_group, %struct.mutex, %struct.semaphore, %struct.iscsi_tpg_attrib, %struct.iscsi_node_auth, ptr, ptr, %struct.list_head, %struct.list_head, [92 x i8] }
%struct.se_portal_group = type { i32, i8, %struct.atomic_t, %struct.mutex, %struct.spinlock, %struct.mutex, %struct.list_head, %struct.hlist_head, ptr, %struct.list_head, ptr, ptr, %struct.config_group, %struct.config_group, %struct.config_group, %struct.config_group, %struct.config_group, %struct.config_group, %struct.config_group }
%struct.semaphore = type { %struct.raw_spinlock, i32, %struct.list_head }
%struct.iscsi_tpg_attrib = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i32, i32, i32, ptr }
%struct.iscsi_node_auth = type { i32, i32, i32, [256 x i8], [256 x i8], [256 x i8], [256 x i8] }
%struct.iscsi_conn = type { %struct.wait_queue_head, i8, i8, i8, i8, i32, i32, i8, i16, i16, i32, i32, i32, i32, i32, i32, i32, %struct.__kernel_sockaddr_storage, %struct.__kernel_sockaddr_storage, i32, i32, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.completion, %struct.completion, %struct.completion, %struct.completion, %struct.completion, %struct.completion, %struct.completion, ptr, ptr, ptr, i32, %struct.delayed_work, ptr, %struct.timer_list, %struct.timer_list, %struct.timer_list, ptr, %struct.spinlock, %struct.spinlock, %struct.spinlock, %struct.spinlock, %struct.spinlock, %struct.spinlock, ptr, ptr, ptr, i8, %struct.list_head, %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, %struct.completion, i32, ptr, %struct.list_head, [52 x i8] }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.iscsit_transport = type { [16 x i8], i32, i8, i32, ptr, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.se_node_acl = type { [224 x i8], i8, i8, i32, i32, i32, [64 x i8], %struct.atomic_t, %struct.hlist_head, ptr, ptr, %struct.mutex, %struct.spinlock, %struct.config_group, %struct.config_group, %struct.config_group, %struct.config_group, %struct.config_group, %struct.list_head, %struct.list_head, %struct.completion, %struct.kref }
%struct.iscsi_node_acl = type { %struct.se_node_acl, %struct.iscsi_node_attrib, %struct.iscsi_node_auth, %struct.iscsi_node_stat_grps }
%struct.iscsi_node_attrib = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr }
%struct.iscsi_node_stat_grps = type { %struct.config_group, %struct.config_group }
%struct.se_cmd = type { i32, i8, i16, i8, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, ptr, %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, %struct.llist_node, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [32 x i8], i64, i32, i32, %struct.spinlock, %struct.kref, %struct.completion, %struct.work_struct, ptr, ptr, i32, i32, ptr, ptr, i32, i32, %struct.list_head, ptr, i32, i32, i8, i8, i32, i32, ptr, i32, i32, i64, i32 }
%struct.iscsi_tpg_np = type { ptr, ptr, ptr, %struct.list_head, %struct.list_head, %struct.list_head, %struct.se_tpg_np, %struct.spinlock, %struct.completion, %struct.kref }
%struct.se_tpg_np = type { ptr, %struct.config_group }
%struct.iscsi_np = type { i32, i32, i32, i32, i8, %struct.atomic_t, i32, i32, i32, %struct.spinlock, %struct.completion, ptr, %struct.__kernel_sockaddr_storage, ptr, %struct.timer_list, ptr, ptr, %struct.list_head, [48 x i8] }
%struct.iscsit_global = type { i32, i32, i32, i32, ptr, %struct.spinlock, %struct.iscsi_node_acl, ptr }
%struct.iscsi_param = type { ptr, ptr, i8, i8, i8, i8, i8, i8, i16, i32, %struct.list_head, [100 x i8] }
%struct.iscsi_sess_ops = type { [224 x i8], [256 x i8], [224 x i8], [256 x i8], [256 x i8], i16, i16, i8, i8, i32, i32, i16, i16, i16, i8, i8, i8, i8, i8 }

@.str = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"iscsi\00", [26 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"iSCSI\00", [26 x i8] zeroinitializer }, align 32
@lio_target_discovery_auth_attrs = internal global { [7 x ptr], [36 x i8] } { [7 x ptr] [ptr @iscsi_disc_attr_userid, ptr @iscsi_disc_attr_password, ptr @iscsi_disc_attr_authenticate_target, ptr @iscsi_disc_attr_userid_mutual, ptr @iscsi_disc_attr_password_mutual, ptr @iscsi_disc_attr_enforce_discovery_auth, ptr null], [36 x i8] zeroinitializer }, align 32
@lio_target_wwn_attrs = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @lio_target_wwn_attr_lio_version, ptr null], [24 x i8] zeroinitializer }, align 32
@lio_target_tpg_attrs = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @lio_target_tpg_attr_dynamic_sessions, ptr null], [24 x i8] zeroinitializer }, align 32
@lio_target_portal_attrs = internal global { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @lio_target_np_attr_iser, ptr @lio_target_np_attr_cxgbit, ptr null], [20 x i8] zeroinitializer }, align 32
@lio_target_tpg_attrib_attrs = internal global { [15 x ptr], [36 x i8] } { [15 x ptr] [ptr @iscsi_tpg_attrib_attr_authentication, ptr @iscsi_tpg_attrib_attr_login_timeout, ptr @iscsi_tpg_attrib_attr_netif_timeout, ptr @iscsi_tpg_attrib_attr_generate_node_acls, ptr @iscsi_tpg_attrib_attr_default_cmdsn_depth, ptr @iscsi_tpg_attrib_attr_cache_dynamic_acls, ptr @iscsi_tpg_attrib_attr_demo_mode_write_protect, ptr @iscsi_tpg_attrib_attr_prod_mode_write_protect, ptr @iscsi_tpg_attrib_attr_demo_mode_discovery, ptr @iscsi_tpg_attrib_attr_default_erl, ptr @iscsi_tpg_attrib_attr_t10_pi, ptr @iscsi_tpg_attrib_attr_fabric_prot_type, ptr @iscsi_tpg_attrib_attr_tpg_enabled_sendtargets, ptr @iscsi_tpg_attrib_attr_login_keys_workaround, ptr null], [36 x i8] zeroinitializer }, align 32
@lio_target_tpg_auth_attrs = internal global { [6 x ptr], [40 x i8] } { [6 x ptr] [ptr @iscsi_tpg_auth_attr_userid, ptr @iscsi_tpg_auth_attr_password, ptr @iscsi_tpg_auth_attr_authenticate_target, ptr @iscsi_tpg_auth_attr_userid_mutual, ptr @iscsi_tpg_auth_attr_password_mutual, ptr null], [40 x i8] zeroinitializer }, align 32
@lio_target_tpg_param_attrs = internal global { [22 x ptr], [40 x i8] } { [22 x ptr] [ptr @iscsi_tpg_param_attr_AuthMethod, ptr @iscsi_tpg_param_attr_HeaderDigest, ptr @iscsi_tpg_param_attr_DataDigest, ptr @iscsi_tpg_param_attr_MaxConnections, ptr @iscsi_tpg_param_attr_TargetAlias, ptr @iscsi_tpg_param_attr_InitialR2T, ptr @iscsi_tpg_param_attr_ImmediateData, ptr @iscsi_tpg_param_attr_MaxRecvDataSegmentLength, ptr @iscsi_tpg_param_attr_MaxXmitDataSegmentLength, ptr @iscsi_tpg_param_attr_MaxBurstLength, ptr @iscsi_tpg_param_attr_FirstBurstLength, ptr @iscsi_tpg_param_attr_DefaultTime2Wait, ptr @iscsi_tpg_param_attr_DefaultTime2Retain, ptr @iscsi_tpg_param_attr_MaxOutstandingR2T, ptr @iscsi_tpg_param_attr_DataPDUInOrder, ptr @iscsi_tpg_param_attr_DataSequenceInOrder, ptr @iscsi_tpg_param_attr_ErrorRecoveryLevel, ptr @iscsi_tpg_param_attr_IFMarker, ptr @iscsi_tpg_param_attr_OFMarker, ptr @iscsi_tpg_param_attr_IFMarkInt, ptr @iscsi_tpg_param_attr_OFMarkInt, ptr null], [40 x i8] zeroinitializer }, align 32
@lio_target_initiator_attrs = internal global { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @lio_target_nacl_attr_info, ptr @lio_target_nacl_attr_cmdsn_depth, ptr @lio_target_nacl_attr_tag, ptr null], [16 x i8] zeroinitializer }, align 32
@lio_target_nacl_attrib_attrs = internal global { [9 x ptr], [60 x i8] } { [9 x ptr] [ptr @iscsi_nacl_attrib_attr_dataout_timeout, ptr @iscsi_nacl_attrib_attr_dataout_timeout_retries, ptr @iscsi_nacl_attrib_attr_default_erl, ptr @iscsi_nacl_attrib_attr_nopin_timeout, ptr @iscsi_nacl_attrib_attr_nopin_response_timeout, ptr @iscsi_nacl_attrib_attr_random_datain_pdu_offsets, ptr @iscsi_nacl_attrib_attr_random_datain_seq_offsets, ptr @iscsi_nacl_attrib_attr_random_r2t_offsets, ptr null], [60 x i8] zeroinitializer }, align 32
@lio_target_nacl_auth_attrs = internal global { [6 x ptr], [40 x i8] } { [6 x ptr] [ptr @iscsi_nacl_auth_attr_userid, ptr @iscsi_nacl_auth_attr_password, ptr @iscsi_nacl_auth_attr_authenticate_target, ptr @iscsi_nacl_auth_attr_userid_mutual, ptr @iscsi_nacl_auth_attr_password_mutual, ptr null], [40 x i8] zeroinitializer }, align 32
@lio_target_nacl_param_attrs = internal global { [12 x ptr], [48 x i8] } { [12 x ptr] [ptr @iscsi_nacl_param_attr_MaxConnections, ptr @iscsi_nacl_param_attr_InitialR2T, ptr @iscsi_nacl_param_attr_ImmediateData, ptr @iscsi_nacl_param_attr_MaxBurstLength, ptr @iscsi_nacl_param_attr_FirstBurstLength, ptr @iscsi_nacl_param_attr_DefaultTime2Wait, ptr @iscsi_nacl_param_attr_DefaultTime2Retain, ptr @iscsi_nacl_param_attr_MaxOutstandingR2T, ptr @iscsi_nacl_param_attr_DataPDUInOrder, ptr @iscsi_nacl_param_attr_DataSequenceInOrder, ptr @iscsi_nacl_param_attr_ErrorRecoveryLevel, ptr null], [48 x i8] zeroinitializer }, align 32
@iscsi_ops = dso_local constant { %struct.target_core_fabric_ops, [56 x i8] } { %struct.target_core_fabric_ops { ptr null, ptr @.str, ptr @.str.1, i32 2172, i32 0, ptr @lio_tpg_get_endpoint_wwn, ptr @lio_tpg_get_tag, ptr @lio_tpg_get_default_depth, ptr @lio_tpg_check_demo_mode, ptr @lio_tpg_check_demo_mode_cache, ptr @lio_tpg_check_demo_mode_write_protect, ptr @lio_tpg_check_prod_mode_write_protect, ptr null, ptr @lio_tpg_check_prot_fabric_only, ptr @lio_tpg_get_inst_index, ptr @lio_check_stop_free, ptr @lio_release_cmd, ptr @lio_tpg_close_session, ptr @lio_sess_get_index, ptr @lio_sess_get_initiator_sid, ptr @lio_write_pending, ptr @lio_set_default_node_attributes, ptr @iscsi_get_cmd_state, ptr @lio_queue_data_in, ptr @lio_queue_status, ptr @lio_queue_tm_rsp, ptr @lio_aborted_task, ptr @lio_target_call_coreaddtiqn, ptr @lio_target_call_coredeltiqn, ptr @lio_target_add_wwn_groups, ptr @lio_target_tiqn_addtpg, ptr @lio_target_tiqn_enabletpg, ptr @lio_target_tiqn_deltpg, ptr null, ptr null, ptr @lio_target_call_addnptotpg, ptr @lio_target_call_delnpfromtpg, ptr @lio_target_init_nodeacl, ptr @lio_target_discovery_auth_attrs, ptr @lio_target_wwn_attrs, ptr @lio_target_tpg_attrs, ptr @lio_target_portal_attrs, ptr @lio_target_tpg_attrib_attrs, ptr @lio_target_tpg_auth_attrs, ptr @lio_target_tpg_param_attrs, ptr @lio_target_initiator_attrs, ptr @lio_target_nacl_attrib_attrs, ptr @lio_target_nacl_auth_attrs, ptr @lio_target_nacl_param_attrs, i8 1 }, [56 x i8] zeroinitializer }, align 32
@lio_release_cmd.__UNIQUE_ID_ddebug494 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, i8 1, i8 117, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.2 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"iscsi_target_mod\00", [47 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"lio_release_cmd\00", [16 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"drivers/target/iscsi/iscsi_target_configfs.c\00", [51 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"Entering lio_release_cmd for se_cmd: %p\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"%6phN\00", [26 x i8] zeroinitializer }, align 32
@lio_target_call_coreaddtiqn.__UNIQUE_ID_ddebug489 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.2, ptr @.str.7, ptr @.str.4, ptr @.str.8, i8 1, i8 30, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.7 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"lio_target_call_coreaddtiqn\00", [36 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"LIO_Target_ConfigFS: REGISTER -> %s\0A\00", [59 x i8] zeroinitializer }, align 32
@lio_target_call_coreaddtiqn.__UNIQUE_ID_ddebug490 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.2, ptr @.str.7, ptr @.str.4, ptr @.str.9, i8 1, i8 31, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.9 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"LIO_Target_ConfigFS: REGISTER -> Allocated Node: %s\0A\00", [43 x i8] zeroinitializer }, align 32
@lio_target_call_coredeltiqn.__UNIQUE_ID_ddebug491 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.2, ptr @.str.10, ptr @.str.4, ptr @.str.11, i8 1, i8 41, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.10 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"lio_target_call_coredeltiqn\00", [36 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"LIO_Target_ConfigFS: DEREGISTER -> %s\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"iscsi_instance\00", [17 x i8] zeroinitializer }, align 32
@iscsi_stat_instance_cit = external dso_local constant %struct.config_item_type, align 4
@.str.13 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"iscsi_sess_err\00", [17 x i8] zeroinitializer }, align 32
@iscsi_stat_sess_err_cit = external dso_local constant %struct.config_item_type, align 4
@.str.14 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"iscsi_tgt_attr\00", [17 x i8] zeroinitializer }, align 32
@iscsi_stat_tgt_attr_cit = external dso_local constant %struct.config_item_type, align 4
@.str.15 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"iscsi_login_stats\00", [46 x i8] zeroinitializer }, align 32
@iscsi_stat_login_cit = external dso_local constant %struct.config_item_type, align 4
@.str.16 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"iscsi_logout_stats\00", [45 x i8] zeroinitializer }, align 32
@iscsi_stat_logout_cit = external dso_local constant %struct.config_item_type, align 4
@.str.17 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"tpgt_\00", [26 x i8] zeroinitializer }, align 32
@lio_target_tiqn_addtpg._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.19, ptr @.str.4, i32 1042, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\013Unable to locate \22tpgt_#\22 directory group\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"lio_target_tiqn_addtpg\00", [41 x i8] zeroinitializer }, align 32
@lio_target_tiqn_addtpg._entry_ptr = internal global ptr @lio_target_tiqn_addtpg._entry, section ".printk_index", align 4
@lio_target_tiqn_addtpg.__UNIQUE_ID_ddebug486 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.2, ptr @.str.19, ptr @.str.4, ptr @.str.8, i8 1, i8 9, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@lio_target_tiqn_addtpg.__UNIQUE_ID_ddebug487 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.2, ptr @.str.19, ptr @.str.4, ptr @.str.20, i8 1, i8 10, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.20 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"LIO_Target_ConfigFS: REGISTER -> Allocated TPG: %s\0A\00", [44 x i8] zeroinitializer }, align 32
@lio_target_tiqn_deltpg.__UNIQUE_ID_ddebug488 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.2, ptr @.str.21, ptr @.str.4, ptr @.str.22, i8 1, i8 22, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.21 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"lio_target_tiqn_deltpg\00", [41 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"LIO_Target_ConfigFS: DEREGISTER -> Releasing TPG\0A\00", [46 x i8] zeroinitializer }, align 32
@lio_target_call_addnptotpg._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.24, ptr @.str.4, i32 168, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\013strlen(name): %d exceeds MAX_PORTAL_LEN: %d\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"lio_target_call_addnptotpg\00", [37 x i8] zeroinitializer }, align 32
@lio_target_call_addnptotpg._entry_ptr = internal global ptr @lio_target_call_addnptotpg._entry, section ".printk_index", align 4
@.str.25 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"%s\00", [29 x i8] zeroinitializer }, align 32
@lio_target_call_addnptotpg._entry.28 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.24, ptr @.str.4, i32 178, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [70 x i8], [58 x i8] } { [70 x i8] c"\013Unable to locate trailing \22]\22 in IPv6 iSCSI network portal address\0A\00", [58 x i8] zeroinitializer }, align 32
@lio_target_call_addnptotpg._entry_ptr.30 = internal global ptr @lio_target_call_addnptotpg._entry.28, section ".printk_index", align 4
@lio_target_call_addnptotpg._entry.32 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.24, ptr @.str.4, i32 189, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"\013Unable to locate \22:port\22 in IPv6 iSCSI network portal address\0A\00", [63 x i8] zeroinitializer }, align 32
@lio_target_call_addnptotpg._entry_ptr.34 = internal global ptr @lio_target_call_addnptotpg._entry.32, section ".printk_index", align 4
@lio_target_call_addnptotpg._entry.35 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.24, ptr @.str.4, i32 199, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"\013Unable to locate \22:port\22 in IPv4 iSCSI network portal address\0A\00", [63 x i8] zeroinitializer }, align 32
@lio_target_call_addnptotpg._entry_ptr.37 = internal global ptr @lio_target_call_addnptotpg._entry.35, section ".printk_index", align 4
@init_net = external dso_local global %struct.net, align 128
@lio_target_call_addnptotpg._entry.38 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.24, ptr @.str.4, i32 209, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\013malformed ip/port passed: %s\0A\00", [32 x i8] zeroinitializer }, align 32
@lio_target_call_addnptotpg._entry_ptr.40 = internal global ptr @lio_target_call_addnptotpg._entry.38, section ".printk_index", align 4
@lio_target_call_addnptotpg.__UNIQUE_ID_ddebug481 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.2, ptr @.str.24, ptr @.str.4, ptr @.str.41, i8 0, i8 55, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.41 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"LIO_Target_ConfigFS: REGISTER -> %s TPGT: %hu PORTAL: %s\0A\00", [38 x i8] zeroinitializer }, align 32
@lio_target_call_addnptotpg.__UNIQUE_ID_ddebug482 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.2, ptr @.str.24, ptr @.str.4, ptr @.str.42, i8 0, i8 60, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.42 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"LIO_Target_ConfigFS: addnptotpg done!\0A\00", [57 x i8] zeroinitializer }, align 32
@lio_target_call_delnpfromtpg.__UNIQUE_ID_ddebug483 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.2, ptr @.str.43, ptr @.str.4, ptr @.str.44, i8 0, i8 66, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.43 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"lio_target_call_delnpfromtpg\00", [35 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"LIO_Target_ConfigFS: DEREGISTER -> %s TPGT: %hu PORTAL: %pISpc\0A\00", [32 x i8] zeroinitializer }, align 32
@lio_target_call_delnpfromtpg.__UNIQUE_ID_ddebug484 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.2, ptr @.str.43, ptr @.str.4, ptr @.str.45, i8 0, i8 67, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.45 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"LIO_Target_ConfigFS: delnpfromtpg done!\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"iscsi_sess_stats\00", [47 x i8] zeroinitializer }, align 32
@iscsi_stat_sess_cit = external dso_local constant %struct.config_item_type, align 4
@iscsi_disc_attr_userid = internal global { %struct.configfs_attribute, [44 x i8] } { %struct.configfs_attribute { ptr @.str.47, ptr null, i16 420, ptr @iscsi_disc_userid_show, ptr @iscsi_disc_userid_store }, [44 x i8] zeroinitializer }, align 32
@iscsi_disc_attr_password = internal global { %struct.configfs_attribute, [44 x i8] } { %struct.configfs_attribute { ptr @.str.50, ptr null, i16 420, ptr @iscsi_disc_password_show, ptr @iscsi_disc_password_store }, [44 x i8] zeroinitializer }, align 32
@iscsi_disc_attr_authenticate_target = internal global { %struct.configfs_attribute, [44 x i8] } { %struct.configfs_attribute { ptr @.str.51, ptr null, i16 292, ptr @iscsi_disc_authenticate_target_show, ptr null }, [44 x i8] zeroinitializer }, align 32
@iscsi_disc_attr_userid_mutual = internal global { %struct.configfs_attribute, [44 x i8] } { %struct.configfs_attribute { ptr @.str.53, ptr null, i16 420, ptr @iscsi_disc_userid_mutual_show, ptr @iscsi_disc_userid_mutual_store }, [44 x i8] zeroinitializer }, align 32
@iscsi_disc_attr_password_mutual = internal global { %struct.configfs_attribute, [44 x i8] } { %struct.configfs_attribute { ptr @.str.54, ptr null, i16 420, ptr @iscsi_disc_password_mutual_show, ptr @iscsi_disc_password_mutual_store }, [44 x i8] zeroinitializer }, align 32
@iscsi_disc_attr_enforce_discovery_auth = internal global { %struct.configfs_attribute, [44 x i8] } { %struct.configfs_attribute { ptr @.str.55, ptr null, i16 420, ptr @iscsi_disc_enforce_discovery_auth_show, ptr @iscsi_disc_enforce_discovery_auth_store }, [44 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"userid\00", [25 x i8] zeroinitializer }, align 32
@iscsit_global = external dso_local local_unnamed_addr global ptr, align 4
@.str.48 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%s\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"NULL\00", [27 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"password\00", [23 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"authenticate_target\00", [44 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%d\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"userid_mutual\00", [18 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"password_mutual\00", [16 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"enforce_discovery_auth\00", [41 x i8] zeroinitializer }, align 32
@iscsi_disc_enforce_discovery_auth_store._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.56, ptr @.str.57, ptr @.str.4, i32 1250, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\013Illegal value for enforce_discovery_auth: %u\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"iscsi_disc_enforce_discovery_auth_store\00", [56 x i8] zeroinitializer }, align 32
@iscsi_disc_enforce_discovery_auth_store._entry_ptr = internal global ptr @iscsi_disc_enforce_discovery_auth_store._entry, section ".printk_index", align 4
@iscsi_disc_enforce_discovery_auth_store._entry.58 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.59, ptr @.str.57, ptr @.str.4, i32 1255, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\013iscsit_global->discovery_tpg is NULL\0A\00", [56 x i8] zeroinitializer }, align 32
@iscsi_disc_enforce_discovery_auth_store._entry_ptr.60 = internal global ptr @iscsi_disc_enforce_discovery_auth_store._entry.58, section ".printk_index", align 4
@.str.61 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"AuthMethod\00", [21 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"CHAP\00", [27 x i8] zeroinitializer }, align 32
@iscsi_disc_enforce_discovery_auth_store.__UNIQUE_ID_ddebug492 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.2, ptr @.str.57, ptr @.str.4, ptr @.str.63, i8 1, i8 62, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.63 = internal constant { [85 x i8], [43 x i8] } { [85 x i8] c"LIO-CORE[0] Successfully enabled authentication enforcement for iSCSI Discovery TPG\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"CHAP,None\00", [22 x i8] zeroinitializer }, align 32
@iscsi_disc_enforce_discovery_auth_store.__UNIQUE_ID_ddebug493 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.2, ptr @.str.57, ptr @.str.4, ptr @.str.65, i8 1, i8 65, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.65 = internal constant { [86 x i8], [42 x i8] } { [86 x i8] c"LIO-CORE[0] Successfully disabled authentication enforcement for iSCSI Discovery TPG\0A\00", [42 x i8] zeroinitializer }, align 32
@lio_target_wwn_attr_lio_version = internal global { %struct.configfs_attribute, [44 x i8] } { %struct.configfs_attribute { ptr @.str.66, ptr null, i16 292, ptr @lio_target_wwn_lio_version_show, ptr null }, [44 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"lio_version\00", [20 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Datera Inc. iSCSI Target v4.1.0\0A\00", [63 x i8] zeroinitializer }, align 32
@lio_target_tpg_attr_dynamic_sessions = internal global { %struct.configfs_attribute, [44 x i8] } { %struct.configfs_attribute { ptr @.str.68, ptr null, i16 292, ptr @lio_target_tpg_dynamic_sessions_show, ptr null }, [44 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"dynamic_sessions\00", [47 x i8] zeroinitializer }, align 32
@lio_target_np_attr_iser = internal global { %struct.configfs_attribute, [44 x i8] } { %struct.configfs_attribute { ptr @.str.69, ptr null, i16 420, ptr @lio_target_np_iser_show, ptr @lio_target_np_iser_store }, [44 x i8] zeroinitializer }, align 32
@lio_target_np_attr_cxgbit = internal global { %struct.configfs_attribute, [44 x i8] } { %struct.configfs_attribute { ptr @.str.81, ptr null, i16 420, ptr @lio_target_np_cxgbit_show, ptr @lio_target_np_cxgbit_store }, [44 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"iser\00", [27 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"1\0A\00", [29 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"0\0A\00", [29 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"ib_isert\00", [23 x i8] zeroinitializer }, align 32
@lio_target_np_driver_store._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.73, ptr @.str.74, ptr @.str.4, i32 70, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\013Illegal value for tpg_enable: %u\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"lio_target_np_driver_store\00", [37 x i8] zeroinitializer }, align 32
@lio_target_np_driver_store._entry_ptr = internal global ptr @lio_target_np_driver_store._entry, section ".printk_index", align 4
@lio_target_np_driver_store._entry.75 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.76, ptr @.str.74, ptr @.str.4, i32 76, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"\013Unable to locate struct iscsi_np from struct iscsi_tpg_np\0A\00", [35 x i8] zeroinitializer }, align 32
@lio_target_np_driver_store._entry_ptr.77 = internal global ptr @lio_target_np_driver_store._entry.75, section ".printk_index", align 4
@lio_target_np_driver_store._entry.78 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.79, ptr @.str.74, ptr @.str.4, i32 89, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\014Unable to request_module for %s\0A\00", [61 x i8] zeroinitializer }, align 32
@lio_target_np_driver_store._entry_ptr.80 = internal global ptr @lio_target_np_driver_store._entry.78, section ".printk_index", align 4
@.str.81 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"cxgbit\00", [25 x i8] zeroinitializer }, align 32
@iscsi_tpg_attrib_attr_authentication = internal global { %struct.configfs_attribute, [44 x i8] } { %struct.configfs_attribute { ptr @.str.82, ptr null, i16 420, ptr @iscsi_tpg_attrib_authentication_show, ptr @iscsi_tpg_attrib_authentication_store }, [44 x i8] zeroinitializer }, align 32
@iscsi_tpg_attrib_attr_login_timeout = internal global { %struct.configfs_attribute, [44 x i8] } { %struct.configfs_attribute { ptr @.str.84, ptr null, i16 420, ptr @iscsi_tpg_attrib_login_timeout_show, ptr @iscsi_tpg_attrib_login_timeout_store }, [44 x i8] zeroinitializer }, align 32
@iscsi_tpg_attrib_attr_netif_timeout = internal global { %struct.configfs_attribute, [44 x i8] } { %struct.configfs_attribute { ptr @.str.85, ptr null, i16 420, ptr @iscsi_tpg_attrib_netif_timeout_show, ptr @iscsi_tpg_attrib_netif_timeout_store }, [44 x i8] zeroinitializer }, align 32
@iscsi_tpg_attrib_attr_generate_node_acls = internal global { %struct.configfs_attribute, [44 x i8] } { %struct.configfs_attribute { ptr @.str.86, ptr null, i16 420, ptr @iscsi_tpg_attrib_generate_node_acls_show, ptr @iscsi_tpg_attrib_generate_node_acls_store }, [44 x i8] zeroinitializer }, align 32
@iscsi_tpg_attrib_attr_default_cmdsn_depth = internal global { %struct.configfs_attribute, [44 x i8] } { %struct.configfs_attribute { ptr @.str.87, ptr null, i16 420, ptr @iscsi_tpg_attrib_default_cmdsn_depth_show, ptr @iscsi_tpg_attrib_default_cmdsn_depth_store }, [44 x i8] zeroinitializer }, align 32
@iscsi_tpg_attrib_attr_cache_dynamic_acls = internal global { %struct.configfs_attribute, [44 x i8] } { %struct.configfs_attribute { ptr @.str.88, ptr null, i16 420, ptr @iscsi_tpg_attrib_cache_dynamic_acls_show, ptr @iscsi_tpg_attrib_cache_dynamic_acls_store }, [44 x i8] zeroinitializer }, align 32
@iscsi_tpg_attrib_attr_demo_mode_write_protect = internal global { %struct.configfs_attribute, [44 x i8] } { %struct.configfs_attribute { ptr @.str.89, ptr null, i16 420, ptr @iscsi_tpg_attrib_demo_mode_write_protect_show, ptr @iscsi_tpg_attrib_demo_mode_write_protect_store }, [44 x i8] zeroinitializer }, align 32
@iscsi_tpg_attrib_attr_prod_mode_write_protect = internal global { %struct.configfs_attribute, [44 x i8] } { %struct.configfs_attribute { ptr @.str.90, ptr null, i16 420, ptr @iscsi_tpg_attrib_prod_mode_write_protect_show, ptr @iscsi_tpg_attrib_prod_mode_write_protect_store }, [44 x i8] zeroinitializer }, align 32
@iscsi_tpg_attrib_attr_demo_mode_discovery = internal global { %struct.configfs_attribute, [44 x i8] } { %struct.configfs_attribute { ptr @.str.91, ptr null, i16 420, ptr @iscsi_tpg_attrib_demo_mode_discovery_show, ptr @iscsi_tpg_attrib_demo_mode_discovery_store }, [44 x i8] zeroinitializer }, align 32
@iscsi_tpg_attrib_attr_default_erl = internal global { %struct.configfs_attribute, [44 x i8] } { %struct.configfs_attribute { ptr @.str.92, ptr null, i16 420, ptr @iscsi_tpg_attrib_default_erl_show, ptr @iscsi_tpg_attrib_default_erl_store }, [44 x i8] zeroinitializer }, align 32
@iscsi_tpg_attrib_attr_t10_pi = internal global { %struct.configfs_attribute, [44 x i8] } { %struct.configfs_attribute { ptr @.str.93, ptr null, i16 420, ptr @iscsi_tpg_attrib_t10_pi_show, ptr @iscsi_tpg_attrib_t10_pi_store }, [44 x i8] zeroinitializer }, align 32
@iscsi_tpg_attrib_attr_fabric_prot_type = internal global { %struct.configfs_attribute, [44 x i8] } { %struct.configfs_attribute { ptr @.str.94, ptr null, i16 420, ptr @iscsi_tpg_attrib_fabric_prot_type_show, ptr @iscsi_tpg_attrib_fabric_prot_type_store }, [44 x i8] zeroinitializer }, align 32
@iscsi_tpg_attrib_attr_tpg_enabled_sendtargets = internal global { %struct.configfs_attribute, [44 x i8] } { %struct.configfs_attribute { ptr @.str.95, ptr null, i16 420, ptr @iscsi_tpg_attrib_tpg_enabled_sendtargets_show, ptr @iscsi_tpg_attrib_tpg_enabled_sendtargets_store }, [44 x i8] zeroinitializer }, align 32
@iscsi_tpg_attrib_attr_login_keys_workaround = internal global { %struct.configfs_attribute, [44 x i8] } { %struct.configfs_attribute { ptr @.str.96, ptr null, i16 420, ptr @iscsi_tpg_attrib_login_keys_workaround_show, ptr @iscsi_tpg_attrib_login_keys_workaround_store }, [44 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"authentication\00", [17 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%u\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"login_timeout\00", [18 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"netif_timeout\00", [18 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"generate_node_acls\00", [45 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"default_cmdsn_depth\00", [44 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"cache_dynamic_acls\00", [45 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"demo_mode_write_protect\00", [40 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"prod_mode_write_protect\00", [40 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"demo_mode_discovery\00", [44 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"default_erl\00", [20 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"t10_pi\00", [25 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"fabric_prot_type\00", [47 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"tpg_enabled_sendtargets\00", [40 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"login_keys_workaround\00", [42 x i8] zeroinitializer }, align 32
@iscsi_tpg_auth_attr_userid = internal global { %struct.configfs_attribute, [44 x i8] } { %struct.configfs_attribute { ptr @.str.47, ptr null, i16 420, ptr @iscsi_tpg_auth_userid_show, ptr @iscsi_tpg_auth_userid_store }, [44 x i8] zeroinitializer }, align 32
@iscsi_tpg_auth_attr_password = internal global { %struct.configfs_attribute, [44 x i8] } { %struct.configfs_attribute { ptr @.str.50, ptr null, i16 420, ptr @iscsi_tpg_auth_password_show, ptr @iscsi_tpg_auth_password_store }, [44 x i8] zeroinitializer }, align 32
@iscsi_tpg_auth_attr_authenticate_target = internal global { %struct.configfs_attribute, [44 x i8] } { %struct.configfs_attribute { ptr @.str.51, ptr null, i16 292, ptr @iscsi_tpg_auth_authenticate_target_show, ptr null }, [44 x i8] zeroinitializer }, align 32
@iscsi_tpg_auth_attr_userid_mutual = internal global { %struct.configfs_attribute, [44 x i8] } { %struct.configfs_attribute { ptr @.str.53, ptr null, i16 420, ptr @iscsi_tpg_auth_userid_mutual_show, ptr @iscsi_tpg_auth_userid_mutual_store }, [44 x i8] zeroinitializer }, align 32
@iscsi_tpg_auth_attr_password_mutual = internal global { %struct.configfs_attribute, [44 x i8] } { %struct.configfs_attribute { ptr @.str.54, ptr null, i16 420, ptr @iscsi_tpg_auth_password_mutual_show, ptr @iscsi_tpg_auth_password_mutual_store }, [44 x i8] zeroinitializer }, align 32
@iscsi_tpg_param_attr_AuthMethod = internal global { %struct.configfs_attribute, [44 x i8] } { %struct.configfs_attribute { ptr @.str.61, ptr null, i16 420, ptr @iscsi_tpg_param_AuthMethod_show, ptr @iscsi_tpg_param_AuthMethod_store }, [44 x i8] zeroinitializer }, align 32
@iscsi_tpg_param_attr_HeaderDigest = internal global { %struct.configfs_attribute, [44 x i8] } { %struct.configfs_attribute { ptr @.str.98, ptr null, i16 420, ptr @iscsi_tpg_param_HeaderDigest_show, ptr @iscsi_tpg_param_HeaderDigest_store }, [44 x i8] zeroinitializer }, align 32
@iscsi_tpg_param_attr_DataDigest = internal global { %struct.configfs_attribute, [44 x i8] } { %struct.configfs_attribute { ptr @.str.99, ptr null, i16 420, ptr @iscsi_tpg_param_DataDigest_show, ptr @iscsi_tpg_param_DataDigest_store }, [44 x i8] zeroinitializer }, align 32
@iscsi_tpg_param_attr_MaxConnections = internal global { %struct.configfs_attribute, [44 x i8] } { %struct.configfs_attribute { ptr @.str.100, ptr null, i16 420, ptr @iscsi_tpg_param_MaxConnections_show, ptr @iscsi_tpg_param_MaxConnections_store }, [44 x i8] zeroinitializer }, align 32
@iscsi_tpg_param_attr_TargetAlias = internal global { %struct.configfs_attribute, [44 x i8] } { %struct.configfs_attribute { ptr @.str.101, ptr null, i16 420, ptr @iscsi_tpg_param_TargetAlias_show, ptr @iscsi_tpg_param_TargetAlias_store }, [44 x i8] zeroinitializer }, align 32
@iscsi_tpg_param_attr_InitialR2T = internal global { %struct.configfs_attribute, [44 x i8] } { %struct.configfs_attribute { ptr @.str.102, ptr null, i16 420, ptr @iscsi_tpg_param_InitialR2T_show, ptr @iscsi_tpg_param_InitialR2T_store }, [44 x i8] zeroinitializer }, align 32
@iscsi_tpg_param_attr_ImmediateData = internal global { %struct.configfs_attribute, [44 x i8] } { %struct.configfs_attribute { ptr @.str.103, ptr null, i16 420, ptr @iscsi_tpg_param_ImmediateData_show, ptr @iscsi_tpg_param_ImmediateData_store }, [44 x i8] zeroinitializer }, align 32
@iscsi_tpg_param_attr_MaxRecvDataSegmentLength = internal global { %struct.configfs_attribute, [44 x i8] } { %struct.configfs_attribute { ptr @.str.104, ptr null, i16 420, ptr @iscsi_tpg_param_MaxRecvDataSegmentLength_show, ptr @iscsi_tpg_param_MaxRecvDataSegmentLength_store }, [44 x i8] zeroinitializer }, align 32
@iscsi_tpg_param_attr_MaxXmitDataSegmentLength = internal global { %struct.configfs_attribute, [44 x i8] } { %struct.configfs_attribute { ptr @.str.105, ptr null, i16 420, ptr @iscsi_tpg_param_MaxXmitDataSegmentLength_show, ptr @iscsi_tpg_param_MaxXmitDataSegmentLength_store }, [44 x i8] zeroinitializer }, align 32
@iscsi_tpg_param_attr_MaxBurstLength = internal global { %struct.configfs_attribute, [44 x i8] } { %struct.configfs_attribute { ptr @.str.106, ptr null, i16 420, ptr @iscsi_tpg_param_MaxBurstLength_show, ptr @iscsi_tpg_param_MaxBurstLength_store }, [44 x i8] zeroinitializer }, align 32
@iscsi_tpg_param_attr_FirstBurstLength = internal global { %struct.configfs_attribute, [44 x i8] } { %struct.configfs_attribute { ptr @.str.107, ptr null, i16 420, ptr @iscsi_tpg_param_FirstBurstLength_show, ptr @iscsi_tpg_param_FirstBurstLength_store }, [44 x i8] zeroinitializer }, align 32
@iscsi_tpg_param_attr_DefaultTime2Wait = internal global { %struct.configfs_attribute, [44 x i8] } { %struct.configfs_attribute { ptr @.str.108, ptr null, i16 420, ptr @iscsi_tpg_param_DefaultTime2Wait_show, ptr @iscsi_tpg_param_DefaultTime2Wait_store }, [44 x i8] zeroinitializer }, align 32
@iscsi_tpg_param_attr_DefaultTime2Retain = internal global { %struct.configfs_attribute, [44 x i8] } { %struct.configfs_attribute { ptr @.str.109, ptr null, i16 420, ptr @iscsi_tpg_param_DefaultTime2Retain_show, ptr @iscsi_tpg_param_DefaultTime2Retain_store }, [44 x i8] zeroinitializer }, align 32
@iscsi_tpg_param_attr_MaxOutstandingR2T = internal global { %struct.configfs_attribute, [44 x i8] } { %struct.configfs_attribute { ptr @.str.110, ptr null, i16 420, ptr @iscsi_tpg_param_MaxOutstandingR2T_show, ptr @iscsi_tpg_param_MaxOutstandingR2T_store }, [44 x i8] zeroinitializer }, align 32
@iscsi_tpg_param_attr_DataPDUInOrder = internal global { %struct.configfs_attribute, [44 x i8] } { %struct.configfs_attribute { ptr @.str.111, ptr null, i16 420, ptr @iscsi_tpg_param_DataPDUInOrder_show, ptr @iscsi_tpg_param_DataPDUInOrder_store }, [44 x i8] zeroinitializer }, align 32
@iscsi_tpg_param_attr_DataSequenceInOrder = internal global { %struct.configfs_attribute, [44 x i8] } { %struct.configfs_attribute { ptr @.str.112, ptr null, i16 420, ptr @iscsi_tpg_param_DataSequenceInOrder_show, ptr @iscsi_tpg_param_DataSequenceInOrder_store }, [44 x i8] zeroinitializer }, align 32
@iscsi_tpg_param_attr_ErrorRecoveryLevel = internal global { %struct.configfs_attribute, [44 x i8] } { %struct.configfs_attribute { ptr @.str.113, ptr null, i16 420, ptr @iscsi_tpg_param_ErrorRecoveryLevel_show, ptr @iscsi_tpg_param_ErrorRecoveryLevel_store }, [44 x i8] zeroinitializer }, align 32
@iscsi_tpg_param_attr_IFMarker = internal global { %struct.configfs_attribute, [44 x i8] } { %struct.configfs_attribute { ptr @.str.114, ptr null, i16 420, ptr @iscsi_tpg_param_IFMarker_show, ptr @iscsi_tpg_param_IFMarker_store }, [44 x i8] zeroinitializer }, align 32
@iscsi_tpg_param_attr_OFMarker = internal global { %struct.configfs_attribute, [44 x i8] } { %struct.configfs_attribute { ptr @.str.115, ptr null, i16 420, ptr @iscsi_tpg_param_OFMarker_show, ptr @iscsi_tpg_param_OFMarker_store }, [44 x i8] zeroinitializer }, align 32
@iscsi_tpg_param_attr_IFMarkInt = internal global { %struct.configfs_attribute, [44 x i8] } { %struct.configfs_attribute { ptr @.str.116, ptr null, i16 420, ptr @iscsi_tpg_param_IFMarkInt_show, ptr @iscsi_tpg_param_IFMarkInt_store }, [44 x i8] zeroinitializer }, align 32
@iscsi_tpg_param_attr_OFMarkInt = internal global { %struct.configfs_attribute, [44 x i8] } { %struct.configfs_attribute { ptr @.str.117, ptr null, i16 420, ptr @iscsi_tpg_param_OFMarkInt_show, ptr @iscsi_tpg_param_OFMarkInt_store }, [44 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"%s=%s\00", [26 x i8] zeroinitializer }, align 32
@_ctype = external dso_local local_unnamed_addr constant [0 x i8], align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.98 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"HeaderDigest\00", [19 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"DataDigest\00", [21 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"MaxConnections\00", [17 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"TargetAlias\00", [20 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"InitialR2T\00", [21 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"ImmediateData\00", [18 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"MaxRecvDataSegmentLength\00", [39 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"MaxXmitDataSegmentLength\00", [39 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"MaxBurstLength\00", [17 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"FirstBurstLength\00", [47 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"DefaultTime2Wait\00", [47 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"DefaultTime2Retain\00", [45 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"MaxOutstandingR2T\00", [46 x i8] zeroinitializer }, align 32
@.str.111 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"DataPDUInOrder\00", [17 x i8] zeroinitializer }, align 32
@.str.112 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"DataSequenceInOrder\00", [44 x i8] zeroinitializer }, align 32
@.str.113 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"ErrorRecoveryLevel\00", [45 x i8] zeroinitializer }, align 32
@.str.114 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"IFMarker\00", [23 x i8] zeroinitializer }, align 32
@.str.115 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"OFMarker\00", [23 x i8] zeroinitializer }, align 32
@.str.116 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"IFMarkInt\00", [22 x i8] zeroinitializer }, align 32
@.str.117 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"OFMarkInt\00", [22 x i8] zeroinitializer }, align 32
@lio_target_nacl_attr_info = internal global { %struct.configfs_attribute, [44 x i8] } { %struct.configfs_attribute { ptr @.str.118, ptr null, i16 292, ptr @lio_target_nacl_info_show, ptr null }, [44 x i8] zeroinitializer }, align 32
@lio_target_nacl_attr_cmdsn_depth = internal global { %struct.configfs_attribute, [44 x i8] } { %struct.configfs_attribute { ptr @.str.150, ptr null, i16 420, ptr @lio_target_nacl_cmdsn_depth_show, ptr @lio_target_nacl_cmdsn_depth_store }, [44 x i8] zeroinitializer }, align 32
@lio_target_nacl_attr_tag = internal global { %struct.configfs_attribute, [44 x i8] } { %struct.configfs_attribute { ptr @.str.163, ptr null, i16 420, ptr @lio_target_nacl_tag_show, ptr @lio_target_nacl_tag_store }, [44 x i8] zeroinitializer }, align 32
@.str.118 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"info\00", [27 x i8] zeroinitializer }, align 32
@.str.119 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"No active iSCSI Session for Initiator Endpoint: %s\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.120 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"InitiatorName: %s\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.121 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"InitiatorAlias: %s\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.122 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"LIO Session ID: %u   ISID: 0x%6ph  TSIH: %hu  \00", [49 x i8] zeroinitializer }, align 32
@.str.123 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"SessionType: %s\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.124 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"Discovery\00", [22 x i8] zeroinitializer }, align 32
@.str.125 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"Normal\00", [25 x i8] zeroinitializer }, align 32
@.str.126 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Session State: \00", [16 x i8] zeroinitializer }, align 32
@.str.127 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"TARG_SESS_FREE\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.128 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"TARG_SESS_STATE_ACTIVE\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.129 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"TARG_SESS_STATE_LOGGED_IN\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.130 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"TARG_SESS_STATE_FAILED\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.131 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"TARG_SESS_STATE_IN_CONTINUE\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.132 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"ERROR: Unknown Session State!\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.133 = internal constant { [68 x i8], [60 x i8] } { [68 x i8] c"---------------------[iSCSI Session Values]-----------------------\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.134 = internal constant { [75 x i8], [53 x i8] } { [75 x i8] c"  CmdSN/WR  :  CmdSN/WC  :  ExpCmdSN  :  MaxCmdSN  :     ITT    :     TTT\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.135 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c" 0x%08x   0x%08x   0x%08x   0x%08x   0x%08x   0x%08x\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.136 = internal constant { [68 x i8], [60 x i8] } { [68 x i8] c"----------------------[iSCSI Connections]-------------------------\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.137 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"CID: %hu  Connection State: \00", [35 x i8] zeroinitializer }, align 32
@.str.138 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"TARG_CONN_STATE_FREE\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.139 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"TARG_CONN_STATE_XPT_UP\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.140 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"TARG_CONN_STATE_IN_LOGIN\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.141 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"TARG_CONN_STATE_LOGGED_IN\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.142 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"TARG_CONN_STATE_IN_LOGOUT\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.143 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"TARG_CONN_STATE_LOGOUT_REQUESTED\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.144 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"TARG_CONN_STATE_CLEANUP_WAIT\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.145 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"ERROR: Unknown Connection State!\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.146 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"   Address %pISc %s\00", [44 x i8] zeroinitializer }, align 32
@.str.147 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"TCP\00", [28 x i8] zeroinitializer }, align 32
@.str.148 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"SCTP\00", [27 x i8] zeroinitializer }, align 32
@.str.149 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"  StatSN: 0x%08x\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.150 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"cmdsn_depth\00", [20 x i8] zeroinitializer }, align 32
@lio_target_nacl_cmdsn_depth_store._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.151, ptr @.str.152, ptr @.str.4, i32 638, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.151 = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"\013Passed cmdsn_depth: %u exceeds TA_DEFAULT_CMDSN_DEPTH_MAX: %u\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.152 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"lio_target_nacl_cmdsn_depth_store\00", [62 x i8] zeroinitializer }, align 32
@lio_target_nacl_cmdsn_depth_store._entry_ptr = internal global ptr @lio_target_nacl_cmdsn_depth_store._entry, section ".printk_index", align 4
@lio_target_nacl_cmdsn_depth_store._entry.153 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.154, ptr @.str.152, ptr @.str.4, i32 643, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.154 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"\013Unable to locatel acl_ci\0A\00", [36 x i8] zeroinitializer }, align 32
@lio_target_nacl_cmdsn_depth_store._entry_ptr.155 = internal global ptr @lio_target_nacl_cmdsn_depth_store._entry.153, section ".printk_index", align 4
@lio_target_nacl_cmdsn_depth_store._entry.156 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.157, ptr @.str.152, ptr @.str.4, i32 648, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.157 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\013Unable to locate tpg_ci\0A\00", [37 x i8] zeroinitializer }, align 32
@lio_target_nacl_cmdsn_depth_store._entry_ptr.158 = internal global ptr @lio_target_nacl_cmdsn_depth_store._entry.156, section ".printk_index", align 4
@lio_target_nacl_cmdsn_depth_store._entry.159 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.160, ptr @.str.152, ptr @.str.4, i32 653, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.160 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\013Unable to locate config_item wwn_ci\0A\00", [57 x i8] zeroinitializer }, align 32
@lio_target_nacl_cmdsn_depth_store._entry_ptr.161 = internal global ptr @lio_target_nacl_cmdsn_depth_store._entry.159, section ".printk_index", align 4
@lio_target_nacl_cmdsn_depth_store.__UNIQUE_ID_ddebug485 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.2, ptr @.str.152, ptr @.str.4, ptr @.str.162, i8 0, i8 -90, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.162 = internal constant { [70 x i8], [58 x i8] } { [70 x i8] c"LIO_Target_ConfigFS: %s/%s Set CmdSN Window: %u forInitiatorName: %s\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.163 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"tag\00", [28 x i8] zeroinitializer }, align 32
@iscsi_nacl_attrib_attr_dataout_timeout = internal global { %struct.configfs_attribute, [44 x i8] } { %struct.configfs_attribute { ptr @.str.164, ptr null, i16 420, ptr @iscsi_nacl_attrib_dataout_timeout_show, ptr @iscsi_nacl_attrib_dataout_timeout_store }, [44 x i8] zeroinitializer }, align 32
@iscsi_nacl_attrib_attr_dataout_timeout_retries = internal global { %struct.configfs_attribute, [44 x i8] } { %struct.configfs_attribute { ptr @.str.165, ptr null, i16 420, ptr @iscsi_nacl_attrib_dataout_timeout_retries_show, ptr @iscsi_nacl_attrib_dataout_timeout_retries_store }, [44 x i8] zeroinitializer }, align 32
@iscsi_nacl_attrib_attr_default_erl = internal global { %struct.configfs_attribute, [44 x i8] } { %struct.configfs_attribute { ptr @.str.92, ptr null, i16 420, ptr @iscsi_nacl_attrib_default_erl_show, ptr @iscsi_nacl_attrib_default_erl_store }, [44 x i8] zeroinitializer }, align 32
@iscsi_nacl_attrib_attr_nopin_timeout = internal global { %struct.configfs_attribute, [44 x i8] } { %struct.configfs_attribute { ptr @.str.166, ptr null, i16 420, ptr @iscsi_nacl_attrib_nopin_timeout_show, ptr @iscsi_nacl_attrib_nopin_timeout_store }, [44 x i8] zeroinitializer }, align 32
@iscsi_nacl_attrib_attr_nopin_response_timeout = internal global { %struct.configfs_attribute, [44 x i8] } { %struct.configfs_attribute { ptr @.str.167, ptr null, i16 420, ptr @iscsi_nacl_attrib_nopin_response_timeout_show, ptr @iscsi_nacl_attrib_nopin_response_timeout_store }, [44 x i8] zeroinitializer }, align 32
@iscsi_nacl_attrib_attr_random_datain_pdu_offsets = internal global { %struct.configfs_attribute, [44 x i8] } { %struct.configfs_attribute { ptr @.str.168, ptr null, i16 420, ptr @iscsi_nacl_attrib_random_datain_pdu_offsets_show, ptr @iscsi_nacl_attrib_random_datain_pdu_offsets_store }, [44 x i8] zeroinitializer }, align 32
@iscsi_nacl_attrib_attr_random_datain_seq_offsets = internal global { %struct.configfs_attribute, [44 x i8] } { %struct.configfs_attribute { ptr @.str.169, ptr null, i16 420, ptr @iscsi_nacl_attrib_random_datain_seq_offsets_show, ptr @iscsi_nacl_attrib_random_datain_seq_offsets_store }, [44 x i8] zeroinitializer }, align 32
@iscsi_nacl_attrib_attr_random_r2t_offsets = internal global { %struct.configfs_attribute, [44 x i8] } { %struct.configfs_attribute { ptr @.str.170, ptr null, i16 420, ptr @iscsi_nacl_attrib_random_r2t_offsets_show, ptr @iscsi_nacl_attrib_random_r2t_offsets_store }, [44 x i8] zeroinitializer }, align 32
@.str.164 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"dataout_timeout\00", [16 x i8] zeroinitializer }, align 32
@.str.165 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"dataout_timeout_retries\00", [40 x i8] zeroinitializer }, align 32
@.str.166 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"nopin_timeout\00", [18 x i8] zeroinitializer }, align 32
@.str.167 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"nopin_response_timeout\00", [41 x i8] zeroinitializer }, align 32
@.str.168 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"random_datain_pdu_offsets\00", [38 x i8] zeroinitializer }, align 32
@.str.169 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"random_datain_seq_offsets\00", [38 x i8] zeroinitializer }, align 32
@.str.170 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"random_r2t_offsets\00", [45 x i8] zeroinitializer }, align 32
@iscsi_nacl_auth_attr_userid = internal global { %struct.configfs_attribute, [44 x i8] } { %struct.configfs_attribute { ptr @.str.47, ptr null, i16 420, ptr @iscsi_nacl_auth_userid_show, ptr @iscsi_nacl_auth_userid_store }, [44 x i8] zeroinitializer }, align 32
@iscsi_nacl_auth_attr_password = internal global { %struct.configfs_attribute, [44 x i8] } { %struct.configfs_attribute { ptr @.str.50, ptr null, i16 420, ptr @iscsi_nacl_auth_password_show, ptr @iscsi_nacl_auth_password_store }, [44 x i8] zeroinitializer }, align 32
@iscsi_nacl_auth_attr_authenticate_target = internal global { %struct.configfs_attribute, [44 x i8] } { %struct.configfs_attribute { ptr @.str.51, ptr null, i16 292, ptr @iscsi_nacl_auth_authenticate_target_show, ptr null }, [44 x i8] zeroinitializer }, align 32
@iscsi_nacl_auth_attr_userid_mutual = internal global { %struct.configfs_attribute, [44 x i8] } { %struct.configfs_attribute { ptr @.str.53, ptr null, i16 420, ptr @iscsi_nacl_auth_userid_mutual_show, ptr @iscsi_nacl_auth_userid_mutual_store }, [44 x i8] zeroinitializer }, align 32
@iscsi_nacl_auth_attr_password_mutual = internal global { %struct.configfs_attribute, [44 x i8] } { %struct.configfs_attribute { ptr @.str.54, ptr null, i16 420, ptr @iscsi_nacl_auth_password_mutual_show, ptr @iscsi_nacl_auth_password_mutual_store }, [44 x i8] zeroinitializer }, align 32
@iscsi_nacl_param_attr_MaxConnections = internal global { %struct.configfs_attribute, [44 x i8] } { %struct.configfs_attribute { ptr @.str.100, ptr null, i16 292, ptr @iscsi_nacl_param_MaxConnections_show, ptr null }, [44 x i8] zeroinitializer }, align 32
@iscsi_nacl_param_attr_InitialR2T = internal global { %struct.configfs_attribute, [44 x i8] } { %struct.configfs_attribute { ptr @.str.102, ptr null, i16 292, ptr @iscsi_nacl_param_InitialR2T_show, ptr null }, [44 x i8] zeroinitializer }, align 32
@iscsi_nacl_param_attr_ImmediateData = internal global { %struct.configfs_attribute, [44 x i8] } { %struct.configfs_attribute { ptr @.str.103, ptr null, i16 292, ptr @iscsi_nacl_param_ImmediateData_show, ptr null }, [44 x i8] zeroinitializer }, align 32
@iscsi_nacl_param_attr_MaxBurstLength = internal global { %struct.configfs_attribute, [44 x i8] } { %struct.configfs_attribute { ptr @.str.106, ptr null, i16 292, ptr @iscsi_nacl_param_MaxBurstLength_show, ptr null }, [44 x i8] zeroinitializer }, align 32
@iscsi_nacl_param_attr_FirstBurstLength = internal global { %struct.configfs_attribute, [44 x i8] } { %struct.configfs_attribute { ptr @.str.107, ptr null, i16 292, ptr @iscsi_nacl_param_FirstBurstLength_show, ptr null }, [44 x i8] zeroinitializer }, align 32
@iscsi_nacl_param_attr_DefaultTime2Wait = internal global { %struct.configfs_attribute, [44 x i8] } { %struct.configfs_attribute { ptr @.str.108, ptr null, i16 292, ptr @iscsi_nacl_param_DefaultTime2Wait_show, ptr null }, [44 x i8] zeroinitializer }, align 32
@iscsi_nacl_param_attr_DefaultTime2Retain = internal global { %struct.configfs_attribute, [44 x i8] } { %struct.configfs_attribute { ptr @.str.109, ptr null, i16 292, ptr @iscsi_nacl_param_DefaultTime2Retain_show, ptr null }, [44 x i8] zeroinitializer }, align 32
@iscsi_nacl_param_attr_MaxOutstandingR2T = internal global { %struct.configfs_attribute, [44 x i8] } { %struct.configfs_attribute { ptr @.str.110, ptr null, i16 292, ptr @iscsi_nacl_param_MaxOutstandingR2T_show, ptr null }, [44 x i8] zeroinitializer }, align 32
@iscsi_nacl_param_attr_DataPDUInOrder = internal global { %struct.configfs_attribute, [44 x i8] } { %struct.configfs_attribute { ptr @.str.111, ptr null, i16 292, ptr @iscsi_nacl_param_DataPDUInOrder_show, ptr null }, [44 x i8] zeroinitializer }, align 32
@iscsi_nacl_param_attr_DataSequenceInOrder = internal global { %struct.configfs_attribute, [44 x i8] } { %struct.configfs_attribute { ptr @.str.112, ptr null, i16 292, ptr @iscsi_nacl_param_DataSequenceInOrder_show, ptr null }, [44 x i8] zeroinitializer }, align 32
@iscsi_nacl_param_attr_ErrorRecoveryLevel = internal global { %struct.configfs_attribute, [44 x i8] } { %struct.configfs_attribute { ptr @.str.113, ptr null, i16 292, ptr @iscsi_nacl_param_ErrorRecoveryLevel_show, ptr null }, [44 x i8] zeroinitializer }, align 32
@.str.171 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"No Active iSCSI Session\0A\00", [39 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [7 x i64] [i64 5, i64 32, i64 1, i64 2, i64 3, i64 4, i64 5]
@__sancov_gen_cov_switch_values.172 = internal global [9 x i64] [i64 7, i64 8, i64 1, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8]
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.930, i32 1501, i32 20 }
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.930, i32 1502, i32 19 }
@___asan_gen_.179 = private unnamed_addr constant [32 x i8] c"lio_target_discovery_auth_attrs\00", align 1
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.930, i32 1295, i32 35 }
@___asan_gen_.182 = private unnamed_addr constant [21 x i8] c"lio_target_wwn_attrs\00", align 1
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.930, i32 1130, i32 35 }
@___asan_gen_.185 = private unnamed_addr constant [21 x i8] c"lio_target_tpg_attrs\00", align 1
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.930, i32 1016, i32 35 }
@___asan_gen_.188 = private unnamed_addr constant [24 x i8] c"lio_target_portal_attrs\00", align 1
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.930, i32 142, i32 35 }
@___asan_gen_.191 = private unnamed_addr constant [28 x i8] c"lio_target_tpg_attrib_attrs\00", align 1
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.930, i32 777, i32 35 }
@___asan_gen_.194 = private unnamed_addr constant [26 x i8] c"lio_target_tpg_auth_attrs\00", align 1
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.930, i32 885, i32 35 }
@___asan_gen_.197 = private unnamed_addr constant [27 x i8] c"lio_target_tpg_param_attrs\00", align 1
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.930, i32 979, i32 35 }
@___asan_gen_.200 = private unnamed_addr constant [27 x i8] c"lio_target_initiator_attrs\00", align 1
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.930, i32 693, i32 35 }
@___asan_gen_.203 = private unnamed_addr constant [29 x i8] c"lio_target_nacl_attrib_attrs\00", align 1
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.930, i32 320, i32 35 }
@___asan_gen_.206 = private unnamed_addr constant [27 x i8] c"lio_target_nacl_auth_attrs\00", align 1
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.930, i32 428, i32 35 }
@___asan_gen_.209 = private unnamed_addr constant [28 x i8] c"lio_target_nacl_param_attrs\00", align 1
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.930, i32 479, i32 35 }
@___asan_gen_.212 = private unnamed_addr constant [10 x i8] c"iscsi_ops\00", align 1
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.930, i32 1499, i32 37 }
@___asan_gen_.226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.930, i32 1495, i32 2 }
@___asan_gen_.229 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.930, i32 1332, i32 29 }
@___asan_gen_.235 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.930, i32 1146, i32 2 }
@___asan_gen_.238 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.930, i32 1147, i32 2 }
@___asan_gen_.244 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.930, i32 1187, i32 2 }
@___asan_gen_.247 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.930, i32 1157, i32 4 }
@___asan_gen_.250 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.930, i32 1162, i32 4 }
@___asan_gen_.253 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.930, i32 1167, i32 4 }
@___asan_gen_.256 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.930, i32 1172, i32 4 }
@___asan_gen_.259 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.930, i32 1177, i32 4 }
@___asan_gen_.262 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.930, i32 1039, i32 26 }
@___asan_gen_.271 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.930, i32 1041, i32 3 }
@___asan_gen_.274 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.930, i32 1063, i32 2 }
@___asan_gen_.280 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.930, i32 1114, i32 2 }
@___asan_gen_.289 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.930, i32 167, i32 3 }
@___asan_gen_.292 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.930, i32 171, i32 36 }
@___asan_gen_.298 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.930, i32 177, i32 4 }
@___asan_gen_.304 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.930, i32 188, i32 4 }
@___asan_gen_.310 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.930, i32 198, i32 4 }
@___asan_gen_.316 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.930, i32 209, i32 3 }
@___asan_gen_.319 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.930, i32 218, i32 2 }
@___asan_gen_.322 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.930, i32 241, i32 2 }
@___asan_gen_.328 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.930, i32 262, i32 2 }
@___asan_gen_.331 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.930, i32 270, i32 2 }
@___asan_gen_.334 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.930, i32 707, i32 4 }
@___asan_gen_.335 = private unnamed_addr constant [23 x i8] c"iscsi_disc_attr_userid\00", align 1
@___asan_gen_.338 = private unnamed_addr constant [25 x i8] c"iscsi_disc_attr_password\00", align 1
@___asan_gen_.341 = private unnamed_addr constant [36 x i8] c"iscsi_disc_attr_authenticate_target\00", align 1
@___asan_gen_.344 = private unnamed_addr constant [30 x i8] c"iscsi_disc_attr_userid_mutual\00", align 1
@___asan_gen_.347 = private unnamed_addr constant [32 x i8] c"iscsi_disc_attr_password_mutual\00", align 1
@___asan_gen_.350 = private unnamed_addr constant [39 x i8] c"iscsi_disc_attr_enforce_discovery_auth\00", align 1
@___asan_gen_.361 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.930, i32 1212, i32 1 }
@___asan_gen_.364 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.930, i32 1213, i32 1 }
@___asan_gen_.370 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.930, i32 1226, i32 1 }
@___asan_gen_.373 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.930, i32 1214, i32 1 }
@___asan_gen_.376 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.930, i32 1215, i32 1 }
@___asan_gen_.379 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.930, i32 1293, i32 1 }
@___asan_gen_.388 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.930, i32 1249, i32 3 }
@___asan_gen_.394 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.930, i32 1255, i32 3 }
@___asan_gen_.397 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.930, i32 1259, i32 36 }
@___asan_gen_.400 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.930, i32 1268, i32 39 }
@___asan_gen_.403 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.930, i32 1273, i32 3 }
@___asan_gen_.406 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.930, i32 1280, i32 39 }
@___asan_gen_.409 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.930, i32 1285, i32 3 }
@___asan_gen_.410 = private unnamed_addr constant [32 x i8] c"lio_target_wwn_attr_lio_version\00", align 1
@___asan_gen_.415 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.930, i32 1128, i32 1 }
@___asan_gen_.418 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.930, i32 1125, i32 23 }
@___asan_gen_.419 = private unnamed_addr constant [37 x i8] c"lio_target_tpg_attr_dynamic_sessions\00", align 1
@___asan_gen_.424 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.930, i32 1014, i32 1 }
@___asan_gen_.425 = private unnamed_addr constant [24 x i8] c"lio_target_np_attr_iser\00", align 1
@___asan_gen_.428 = private unnamed_addr constant [26 x i8] c"lio_target_np_attr_cxgbit\00", align 1
@___asan_gen_.433 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.930, i32 127, i32 1 }
@___asan_gen_.436 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.930, i32 48, i32 22 }
@___asan_gen_.439 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.930, i32 50, i32 22 }
@___asan_gen_.442 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.930, i32 125, i32 26 }
@___asan_gen_.451 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.930, i32 70, i32 3 }
@___asan_gen_.457 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.930, i32 75, i32 3 }
@___asan_gen_.463 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.930, i32 88, i32 5 }
@___asan_gen_.466 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.930, i32 140, i32 1 }
@___asan_gen_.467 = private unnamed_addr constant [37 x i8] c"iscsi_tpg_attrib_attr_authentication\00", align 1
@___asan_gen_.470 = private unnamed_addr constant [36 x i8] c"iscsi_tpg_attrib_attr_login_timeout\00", align 1
@___asan_gen_.473 = private unnamed_addr constant [36 x i8] c"iscsi_tpg_attrib_attr_netif_timeout\00", align 1
@___asan_gen_.476 = private unnamed_addr constant [41 x i8] c"iscsi_tpg_attrib_attr_generate_node_acls\00", align 1
@___asan_gen_.479 = private unnamed_addr constant [42 x i8] c"iscsi_tpg_attrib_attr_default_cmdsn_depth\00", align 1
@___asan_gen_.482 = private unnamed_addr constant [41 x i8] c"iscsi_tpg_attrib_attr_cache_dynamic_acls\00", align 1
@___asan_gen_.485 = private unnamed_addr constant [46 x i8] c"iscsi_tpg_attrib_attr_demo_mode_write_protect\00", align 1
@___asan_gen_.488 = private unnamed_addr constant [46 x i8] c"iscsi_tpg_attrib_attr_prod_mode_write_protect\00", align 1
@___asan_gen_.491 = private unnamed_addr constant [42 x i8] c"iscsi_tpg_attrib_attr_demo_mode_discovery\00", align 1
@___asan_gen_.494 = private unnamed_addr constant [34 x i8] c"iscsi_tpg_attrib_attr_default_erl\00", align 1
@___asan_gen_.497 = private unnamed_addr constant [29 x i8] c"iscsi_tpg_attrib_attr_t10_pi\00", align 1
@___asan_gen_.500 = private unnamed_addr constant [39 x i8] c"iscsi_tpg_attrib_attr_fabric_prot_type\00", align 1
@___asan_gen_.503 = private unnamed_addr constant [46 x i8] c"iscsi_tpg_attrib_attr_tpg_enabled_sendtargets\00", align 1
@___asan_gen_.506 = private unnamed_addr constant [44 x i8] c"iscsi_tpg_attrib_attr_login_keys_workaround\00", align 1
@___asan_gen_.514 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.930, i32 762, i32 1 }
@___asan_gen_.517 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.930, i32 763, i32 1 }
@___asan_gen_.520 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.930, i32 764, i32 1 }
@___asan_gen_.523 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.930, i32 765, i32 1 }
@___asan_gen_.526 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.930, i32 766, i32 1 }
@___asan_gen_.529 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.930, i32 767, i32 1 }
@___asan_gen_.532 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.930, i32 768, i32 1 }
@___asan_gen_.535 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.930, i32 769, i32 1 }
@___asan_gen_.538 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.930, i32 770, i32 1 }
@___asan_gen_.541 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.930, i32 771, i32 1 }
@___asan_gen_.544 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.930, i32 772, i32 1 }
@___asan_gen_.547 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.930, i32 773, i32 1 }
@___asan_gen_.550 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.930, i32 774, i32 1 }
@___asan_gen_.553 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.930, i32 775, i32 1 }
@___asan_gen_.554 = private unnamed_addr constant [27 x i8] c"iscsi_tpg_auth_attr_userid\00", align 1
@___asan_gen_.556 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.930, i32 855, i32 1 }
@___asan_gen_.557 = private unnamed_addr constant [29 x i8] c"iscsi_tpg_auth_attr_password\00", align 1
@___asan_gen_.559 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.930, i32 856, i32 1 }
@___asan_gen_.560 = private unnamed_addr constant [40 x i8] c"iscsi_tpg_auth_attr_authenticate_target\00", align 1
@___asan_gen_.562 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.930, i32 883, i32 1 }
@___asan_gen_.563 = private unnamed_addr constant [34 x i8] c"iscsi_tpg_auth_attr_userid_mutual\00", align 1
@___asan_gen_.565 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.930, i32 857, i32 1 }
@___asan_gen_.566 = private unnamed_addr constant [36 x i8] c"iscsi_tpg_auth_attr_password_mutual\00", align 1
@___asan_gen_.568 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.930, i32 858, i32 1 }
@___asan_gen_.569 = private unnamed_addr constant [32 x i8] c"iscsi_tpg_param_attr_AuthMethod\00", align 1
@___asan_gen_.572 = private unnamed_addr constant [34 x i8] c"iscsi_tpg_param_attr_HeaderDigest\00", align 1
@___asan_gen_.575 = private unnamed_addr constant [32 x i8] c"iscsi_tpg_param_attr_DataDigest\00", align 1
@___asan_gen_.578 = private unnamed_addr constant [36 x i8] c"iscsi_tpg_param_attr_MaxConnections\00", align 1
@___asan_gen_.581 = private unnamed_addr constant [33 x i8] c"iscsi_tpg_param_attr_TargetAlias\00", align 1
@___asan_gen_.584 = private unnamed_addr constant [32 x i8] c"iscsi_tpg_param_attr_InitialR2T\00", align 1
@___asan_gen_.587 = private unnamed_addr constant [35 x i8] c"iscsi_tpg_param_attr_ImmediateData\00", align 1
@___asan_gen_.590 = private unnamed_addr constant [46 x i8] c"iscsi_tpg_param_attr_MaxRecvDataSegmentLength\00", align 1
@___asan_gen_.593 = private unnamed_addr constant [46 x i8] c"iscsi_tpg_param_attr_MaxXmitDataSegmentLength\00", align 1
@___asan_gen_.596 = private unnamed_addr constant [36 x i8] c"iscsi_tpg_param_attr_MaxBurstLength\00", align 1
@___asan_gen_.599 = private unnamed_addr constant [38 x i8] c"iscsi_tpg_param_attr_FirstBurstLength\00", align 1
@___asan_gen_.602 = private unnamed_addr constant [38 x i8] c"iscsi_tpg_param_attr_DefaultTime2Wait\00", align 1
@___asan_gen_.605 = private unnamed_addr constant [40 x i8] c"iscsi_tpg_param_attr_DefaultTime2Retain\00", align 1
@___asan_gen_.608 = private unnamed_addr constant [39 x i8] c"iscsi_tpg_param_attr_MaxOutstandingR2T\00", align 1
@___asan_gen_.611 = private unnamed_addr constant [36 x i8] c"iscsi_tpg_param_attr_DataPDUInOrder\00", align 1
@___asan_gen_.614 = private unnamed_addr constant [41 x i8] c"iscsi_tpg_param_attr_DataSequenceInOrder\00", align 1
@___asan_gen_.617 = private unnamed_addr constant [40 x i8] c"iscsi_tpg_param_attr_ErrorRecoveryLevel\00", align 1
@___asan_gen_.620 = private unnamed_addr constant [30 x i8] c"iscsi_tpg_param_attr_IFMarker\00", align 1
@___asan_gen_.623 = private unnamed_addr constant [30 x i8] c"iscsi_tpg_param_attr_OFMarker\00", align 1
@___asan_gen_.626 = private unnamed_addr constant [31 x i8] c"iscsi_tpg_param_attr_IFMarkInt\00", align 1
@___asan_gen_.629 = private unnamed_addr constant [31 x i8] c"iscsi_tpg_param_attr_OFMarkInt\00", align 1
@___asan_gen_.634 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.930, i32 957, i32 1 }
@___asan_gen_.637 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.930, i32 958, i32 1 }
@___asan_gen_.640 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.930, i32 959, i32 1 }
@___asan_gen_.643 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.930, i32 960, i32 1 }
@___asan_gen_.646 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.930, i32 961, i32 1 }
@___asan_gen_.649 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.930, i32 962, i32 1 }
@___asan_gen_.652 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.930, i32 963, i32 1 }
@___asan_gen_.655 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.930, i32 964, i32 1 }
@___asan_gen_.658 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.930, i32 965, i32 1 }
@___asan_gen_.661 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.930, i32 966, i32 1 }
@___asan_gen_.664 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.930, i32 967, i32 1 }
@___asan_gen_.667 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.930, i32 968, i32 1 }
@___asan_gen_.670 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.930, i32 969, i32 1 }
@___asan_gen_.673 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.930, i32 970, i32 1 }
@___asan_gen_.676 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.930, i32 971, i32 1 }
@___asan_gen_.679 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.930, i32 972, i32 1 }
@___asan_gen_.682 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.930, i32 973, i32 1 }
@___asan_gen_.685 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.930, i32 974, i32 1 }
@___asan_gen_.688 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.930, i32 975, i32 1 }
@___asan_gen_.691 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.930, i32 976, i32 1 }
@___asan_gen_.694 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.930, i32 977, i32 1 }
@___asan_gen_.695 = private unnamed_addr constant [26 x i8] c"lio_target_nacl_attr_info\00", align 1
@___asan_gen_.698 = private unnamed_addr constant [33 x i8] c"lio_target_nacl_attr_cmdsn_depth\00", align 1
@___asan_gen_.701 = private unnamed_addr constant [25 x i8] c"lio_target_nacl_attr_tag\00", align 1
@___asan_gen_.706 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.930, i32 689, i32 1 }
@___asan_gen_.709 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.930, i32 510, i32 26 }
@___asan_gen_.712 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.930, i32 515, i32 26 }
@___asan_gen_.715 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.930, i32 517, i32 26 }
@___asan_gen_.718 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.930, i32 521, i32 10 }
@___asan_gen_.721 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.930, i32 523, i32 26 }
@___asan_gen_.724 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.930, i32 525, i32 5 }
@___asan_gen_.727 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.930, i32 525, i32 19 }
@___asan_gen_.730 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.930, i32 526, i32 26 }
@___asan_gen_.733 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.930, i32 529, i32 27 }
@___asan_gen_.736 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.930, i32 532, i32 27 }
@___asan_gen_.739 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.930, i32 535, i32 27 }
@___asan_gen_.742 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.930, i32 538, i32 27 }
@___asan_gen_.745 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.930, i32 541, i32 27 }
@___asan_gen_.748 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.930, i32 544, i32 27 }
@___asan_gen_.751 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.930, i32 549, i32 26 }
@___asan_gen_.754 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.930, i32 551, i32 26 }
@___asan_gen_.757 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.930, i32 554, i32 26 }
@___asan_gen_.760 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.930, i32 560, i32 26 }
@___asan_gen_.763 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.930, i32 565, i32 27 }
@___asan_gen_.766 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.930, i32 570, i32 6 }
@___asan_gen_.769 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.930, i32 574, i32 6 }
@___asan_gen_.772 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.930, i32 578, i32 6 }
@___asan_gen_.775 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.930, i32 582, i32 6 }
@___asan_gen_.778 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.930, i32 586, i32 6 }
@___asan_gen_.781 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.930, i32 590, i32 6 }
@___asan_gen_.784 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.930, i32 594, i32 6 }
@___asan_gen_.787 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.930, i32 598, i32 6 }
@___asan_gen_.790 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.930, i32 602, i32 27 }
@___asan_gen_.793 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.930, i32 604, i32 5 }
@___asan_gen_.796 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.930, i32 604, i32 13 }
@___asan_gen_.799 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.930, i32 605, i32 27 }
@___asan_gen_.802 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.930, i32 690, i32 1 }
@___asan_gen_.811 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.930, i32 636, i32 3 }
@___asan_gen_.817 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.930, i32 643, i32 3 }
@___asan_gen_.823 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.930, i32 648, i32 3 }
@___asan_gen_.824 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.829 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.930, i32 653, i32 3 }
@___asan_gen_.832 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.930, i32 662, i32 2 }
@___asan_gen_.835 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.930, i32 691, i32 1 }
@___asan_gen_.836 = private unnamed_addr constant [39 x i8] c"iscsi_nacl_attrib_attr_dataout_timeout\00", align 1
@___asan_gen_.839 = private unnamed_addr constant [47 x i8] c"iscsi_nacl_attrib_attr_dataout_timeout_retries\00", align 1
@___asan_gen_.842 = private unnamed_addr constant [35 x i8] c"iscsi_nacl_attrib_attr_default_erl\00", align 1
@___asan_gen_.844 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.930, i32 313, i32 1 }
@___asan_gen_.845 = private unnamed_addr constant [37 x i8] c"iscsi_nacl_attrib_attr_nopin_timeout\00", align 1
@___asan_gen_.848 = private unnamed_addr constant [46 x i8] c"iscsi_nacl_attrib_attr_nopin_response_timeout\00", align 1
@___asan_gen_.851 = private unnamed_addr constant [49 x i8] c"iscsi_nacl_attrib_attr_random_datain_pdu_offsets\00", align 1
@___asan_gen_.854 = private unnamed_addr constant [49 x i8] c"iscsi_nacl_attrib_attr_random_datain_seq_offsets\00", align 1
@___asan_gen_.857 = private unnamed_addr constant [42 x i8] c"iscsi_nacl_attrib_attr_random_r2t_offsets\00", align 1
@___asan_gen_.862 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.930, i32 311, i32 1 }
@___asan_gen_.865 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.930, i32 312, i32 1 }
@___asan_gen_.868 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.930, i32 314, i32 1 }
@___asan_gen_.871 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.930, i32 315, i32 1 }
@___asan_gen_.874 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.930, i32 316, i32 1 }
@___asan_gen_.877 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.930, i32 317, i32 1 }
@___asan_gen_.880 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.930, i32 318, i32 1 }
@___asan_gen_.881 = private unnamed_addr constant [28 x i8] c"iscsi_nacl_auth_attr_userid\00", align 1
@___asan_gen_.883 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.930, i32 396, i32 1 }
@___asan_gen_.884 = private unnamed_addr constant [30 x i8] c"iscsi_nacl_auth_attr_password\00", align 1
@___asan_gen_.886 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.930, i32 397, i32 1 }
@___asan_gen_.887 = private unnamed_addr constant [41 x i8] c"iscsi_nacl_auth_attr_authenticate_target\00", align 1
@___asan_gen_.889 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.930, i32 426, i32 1 }
@___asan_gen_.890 = private unnamed_addr constant [35 x i8] c"iscsi_nacl_auth_attr_userid_mutual\00", align 1
@___asan_gen_.892 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.930, i32 398, i32 1 }
@___asan_gen_.893 = private unnamed_addr constant [37 x i8] c"iscsi_nacl_auth_attr_password_mutual\00", align 1
@___asan_gen_.895 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.930, i32 399, i32 1 }
@___asan_gen_.896 = private unnamed_addr constant [37 x i8] c"iscsi_nacl_param_attr_MaxConnections\00", align 1
@___asan_gen_.899 = private unnamed_addr constant [33 x i8] c"iscsi_nacl_param_attr_InitialR2T\00", align 1
@___asan_gen_.901 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.930, i32 468, i32 1 }
@___asan_gen_.902 = private unnamed_addr constant [36 x i8] c"iscsi_nacl_param_attr_ImmediateData\00", align 1
@___asan_gen_.904 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.930, i32 469, i32 1 }
@___asan_gen_.905 = private unnamed_addr constant [37 x i8] c"iscsi_nacl_param_attr_MaxBurstLength\00", align 1
@___asan_gen_.907 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.930, i32 470, i32 1 }
@___asan_gen_.908 = private unnamed_addr constant [39 x i8] c"iscsi_nacl_param_attr_FirstBurstLength\00", align 1
@___asan_gen_.910 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.930, i32 471, i32 1 }
@___asan_gen_.911 = private unnamed_addr constant [39 x i8] c"iscsi_nacl_param_attr_DefaultTime2Wait\00", align 1
@___asan_gen_.913 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.930, i32 472, i32 1 }
@___asan_gen_.914 = private unnamed_addr constant [41 x i8] c"iscsi_nacl_param_attr_DefaultTime2Retain\00", align 1
@___asan_gen_.916 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.930, i32 473, i32 1 }
@___asan_gen_.917 = private unnamed_addr constant [40 x i8] c"iscsi_nacl_param_attr_MaxOutstandingR2T\00", align 1
@___asan_gen_.919 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.930, i32 474, i32 1 }
@___asan_gen_.920 = private unnamed_addr constant [37 x i8] c"iscsi_nacl_param_attr_DataPDUInOrder\00", align 1
@___asan_gen_.922 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.930, i32 475, i32 1 }
@___asan_gen_.923 = private unnamed_addr constant [42 x i8] c"iscsi_nacl_param_attr_DataSequenceInOrder\00", align 1
@___asan_gen_.925 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.930, i32 476, i32 1 }
@___asan_gen_.926 = private unnamed_addr constant [41 x i8] c"iscsi_nacl_param_attr_ErrorRecoveryLevel\00", align 1
@___asan_gen_.928 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.930, i32 477, i32 1 }
@___asan_gen_.929 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.930 = private constant [48 x i8] c"../drivers/target/iscsi/iscsi_target_configfs.c\00", align 1
@___asan_gen_.931 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.930, i32 467, i32 1 }
@llvm.compiler.used = appending global [268 x ptr] [ptr @iscsi_disc_enforce_discovery_auth_store._entry, ptr @iscsi_disc_enforce_discovery_auth_store._entry.58, ptr @iscsi_disc_enforce_discovery_auth_store._entry_ptr, ptr @iscsi_disc_enforce_discovery_auth_store._entry_ptr.60, ptr @lio_target_call_addnptotpg._entry, ptr @lio_target_call_addnptotpg._entry.28, ptr @lio_target_call_addnptotpg._entry.32, ptr @lio_target_call_addnptotpg._entry.35, ptr @lio_target_call_addnptotpg._entry.38, ptr @lio_target_call_addnptotpg._entry_ptr, ptr @lio_target_call_addnptotpg._entry_ptr.30, ptr @lio_target_call_addnptotpg._entry_ptr.34, ptr @lio_target_call_addnptotpg._entry_ptr.37, ptr @lio_target_call_addnptotpg._entry_ptr.40, ptr @lio_target_nacl_cmdsn_depth_store._entry, ptr @lio_target_nacl_cmdsn_depth_store._entry.153, ptr @lio_target_nacl_cmdsn_depth_store._entry.156, ptr @lio_target_nacl_cmdsn_depth_store._entry.159, ptr @lio_target_nacl_cmdsn_depth_store._entry_ptr, ptr @lio_target_nacl_cmdsn_depth_store._entry_ptr.155, ptr @lio_target_nacl_cmdsn_depth_store._entry_ptr.158, ptr @lio_target_nacl_cmdsn_depth_store._entry_ptr.161, ptr @lio_target_np_driver_store._entry, ptr @lio_target_np_driver_store._entry.75, ptr @lio_target_np_driver_store._entry.78, ptr @lio_target_np_driver_store._entry_ptr, ptr @lio_target_np_driver_store._entry_ptr.77, ptr @lio_target_np_driver_store._entry_ptr.80, ptr @lio_target_tiqn_addtpg._entry, ptr @lio_target_tiqn_addtpg._entry_ptr, ptr @.str, ptr @.str.1, ptr @lio_target_discovery_auth_attrs, ptr @lio_target_wwn_attrs, ptr @lio_target_tpg_attrs, ptr @lio_target_portal_attrs, ptr @lio_target_tpg_attrib_attrs, ptr @lio_target_tpg_auth_attrs, ptr @lio_target_tpg_param_attrs, ptr @lio_target_initiator_attrs, ptr @lio_target_nacl_attrib_attrs, ptr @lio_target_nacl_auth_attrs, ptr @lio_target_nacl_param_attrs, ptr @iscsi_ops, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.29, ptr @.str.33, ptr @.str.36, ptr @.str.39, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @iscsi_disc_attr_userid, ptr @iscsi_disc_attr_password, ptr @iscsi_disc_attr_authenticate_target, ptr @iscsi_disc_attr_userid_mutual, ptr @iscsi_disc_attr_password_mutual, ptr @iscsi_disc_attr_enforce_discovery_auth, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.59, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @lio_target_wwn_attr_lio_version, ptr @.str.66, ptr @.str.67, ptr @lio_target_tpg_attr_dynamic_sessions, ptr @.str.68, ptr @lio_target_np_attr_iser, ptr @lio_target_np_attr_cxgbit, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.76, ptr @.str.79, ptr @.str.81, ptr @iscsi_tpg_attrib_attr_authentication, ptr @iscsi_tpg_attrib_attr_login_timeout, ptr @iscsi_tpg_attrib_attr_netif_timeout, ptr @iscsi_tpg_attrib_attr_generate_node_acls, ptr @iscsi_tpg_attrib_attr_default_cmdsn_depth, ptr @iscsi_tpg_attrib_attr_cache_dynamic_acls, ptr @iscsi_tpg_attrib_attr_demo_mode_write_protect, ptr @iscsi_tpg_attrib_attr_prod_mode_write_protect, ptr @iscsi_tpg_attrib_attr_demo_mode_discovery, ptr @iscsi_tpg_attrib_attr_default_erl, ptr @iscsi_tpg_attrib_attr_t10_pi, ptr @iscsi_tpg_attrib_attr_fabric_prot_type, ptr @iscsi_tpg_attrib_attr_tpg_enabled_sendtargets, ptr @iscsi_tpg_attrib_attr_login_keys_workaround, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @iscsi_tpg_auth_attr_userid, ptr @iscsi_tpg_auth_attr_password, ptr @iscsi_tpg_auth_attr_authenticate_target, ptr @iscsi_tpg_auth_attr_userid_mutual, ptr @iscsi_tpg_auth_attr_password_mutual, ptr @iscsi_tpg_param_attr_AuthMethod, ptr @iscsi_tpg_param_attr_HeaderDigest, ptr @iscsi_tpg_param_attr_DataDigest, ptr @iscsi_tpg_param_attr_MaxConnections, ptr @iscsi_tpg_param_attr_TargetAlias, ptr @iscsi_tpg_param_attr_InitialR2T, ptr @iscsi_tpg_param_attr_ImmediateData, ptr @iscsi_tpg_param_attr_MaxRecvDataSegmentLength, ptr @iscsi_tpg_param_attr_MaxXmitDataSegmentLength, ptr @iscsi_tpg_param_attr_MaxBurstLength, ptr @iscsi_tpg_param_attr_FirstBurstLength, ptr @iscsi_tpg_param_attr_DefaultTime2Wait, ptr @iscsi_tpg_param_attr_DefaultTime2Retain, ptr @iscsi_tpg_param_attr_MaxOutstandingR2T, ptr @iscsi_tpg_param_attr_DataPDUInOrder, ptr @iscsi_tpg_param_attr_DataSequenceInOrder, ptr @iscsi_tpg_param_attr_ErrorRecoveryLevel, ptr @iscsi_tpg_param_attr_IFMarker, ptr @iscsi_tpg_param_attr_OFMarker, ptr @iscsi_tpg_param_attr_IFMarkInt, ptr @iscsi_tpg_param_attr_OFMarkInt, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.104, ptr @.str.105, ptr @.str.106, ptr @.str.107, ptr @.str.108, ptr @.str.109, ptr @.str.110, ptr @.str.111, ptr @.str.112, ptr @.str.113, ptr @.str.114, ptr @.str.115, ptr @.str.116, ptr @.str.117, ptr @lio_target_nacl_attr_info, ptr @lio_target_nacl_attr_cmdsn_depth, ptr @lio_target_nacl_attr_tag, ptr @.str.118, ptr @.str.119, ptr @.str.120, ptr @.str.121, ptr @.str.122, ptr @.str.123, ptr @.str.124, ptr @.str.125, ptr @.str.126, ptr @.str.127, ptr @.str.128, ptr @.str.129, ptr @.str.130, ptr @.str.131, ptr @.str.132, ptr @.str.133, ptr @.str.134, ptr @.str.135, ptr @.str.136, ptr @.str.137, ptr @.str.138, ptr @.str.139, ptr @.str.140, ptr @.str.141, ptr @.str.142, ptr @.str.143, ptr @.str.144, ptr @.str.145, ptr @.str.146, ptr @.str.147, ptr @.str.148, ptr @.str.149, ptr @.str.150, ptr @.str.151, ptr @.str.152, ptr @.str.154, ptr @.str.157, ptr @.str.160, ptr @.str.162, ptr @.str.163, ptr @iscsi_nacl_attrib_attr_dataout_timeout, ptr @iscsi_nacl_attrib_attr_dataout_timeout_retries, ptr @iscsi_nacl_attrib_attr_default_erl, ptr @iscsi_nacl_attrib_attr_nopin_timeout, ptr @iscsi_nacl_attrib_attr_nopin_response_timeout, ptr @iscsi_nacl_attrib_attr_random_datain_pdu_offsets, ptr @iscsi_nacl_attrib_attr_random_datain_seq_offsets, ptr @iscsi_nacl_attrib_attr_random_r2t_offsets, ptr @.str.164, ptr @.str.165, ptr @.str.166, ptr @.str.167, ptr @.str.168, ptr @.str.169, ptr @.str.170, ptr @iscsi_nacl_auth_attr_userid, ptr @iscsi_nacl_auth_attr_password, ptr @iscsi_nacl_auth_attr_authenticate_target, ptr @iscsi_nacl_auth_attr_userid_mutual, ptr @iscsi_nacl_auth_attr_password_mutual, ptr @iscsi_nacl_param_attr_MaxConnections, ptr @iscsi_nacl_param_attr_InitialR2T, ptr @iscsi_nacl_param_attr_ImmediateData, ptr @iscsi_nacl_param_attr_MaxBurstLength, ptr @iscsi_nacl_param_attr_FirstBurstLength, ptr @iscsi_nacl_param_attr_DefaultTime2Wait, ptr @iscsi_nacl_param_attr_DefaultTime2Retain, ptr @iscsi_nacl_param_attr_MaxOutstandingR2T, ptr @iscsi_nacl_param_attr_DataPDUInOrder, ptr @iscsi_nacl_param_attr_DataSequenceInOrder, ptr @iscsi_nacl_param_attr_ErrorRecoveryLevel, ptr @.str.171], section "llvm.metadata"
@0 = internal global [253 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.929 to i32), i32 ptrtoint (ptr @___asan_gen_.930 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.929 to i32), i32 ptrtoint (ptr @___asan_gen_.930 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lio_target_discovery_auth_attrs to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.930 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lio_target_wwn_attrs to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.930 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lio_target_tpg_attrs to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.930 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lio_target_portal_attrs to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.930 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lio_target_tpg_attrib_attrs to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.930 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lio_target_tpg_auth_attrs to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.930 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lio_target_tpg_param_attrs to i32), i32 88, i32 128, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.930 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lio_target_initiator_attrs to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.930 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lio_target_nacl_attrib_attrs to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.930 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lio_target_nacl_auth_attrs to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.930 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lio_target_nacl_param_attrs to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.930 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iscsi_ops to i32), i32 200, i32 256, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.930 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.929 to i32), i32 ptrtoint (ptr @___asan_gen_.930 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.929 to i32), i32 ptrtoint (ptr @___asan_gen_.930 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.929 to i32), i32 ptrtoint (ptr @___asan_gen_.930 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.929 to i32), i32 ptrtoint (ptr @___asan_gen_.930 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.929 to i32), i32 ptrtoint (ptr @___asan_gen_.930 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.929 to i32), i32 ptrtoint (ptr @___asan_gen_.930 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.929 to i32), i32 ptrtoint (ptr @___asan_gen_.930 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.929 to i32), i32 ptrtoint (ptr @___asan_gen_.930 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.929 to i32), i32 ptrtoint (ptr @___asan_gen_.930 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.929 to i32), i32 ptrtoint (ptr @___asan_gen_.930 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.929 to i32), i32 ptrtoint (ptr @___asan_gen_.930 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.929 to i32), i32 ptrtoint (ptr @___asan_gen_.930 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.929 to i32), i32 ptrtoint (ptr @___asan_gen_.930 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.929 to i32), i32 ptrtoint (ptr @___asan_gen_.930 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.929 to i32), i32 ptrtoint (ptr @___asan_gen_.930 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.929 to i32), i32 ptrtoint (ptr @___asan_gen_.930 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lio_target_tiqn_addtpg._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.824 to i32), i32 ptrtoint (ptr @___asan_gen_.930 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.929 to i32), i32 ptrtoint (ptr @___asan_gen_.930 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.929 to i32), i32 ptrtoint (ptr @___asan_gen_.930 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.929 to i32), i32 ptrtoint (ptr @___asan_gen_.930 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.929 to i32), i32 ptrtoint (ptr @___asan_gen_.930 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.929 to i32), i32 ptrtoint (ptr @___asan_gen_.930 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lio_target_call_addnptotpg._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.824 to i32), i32 ptrtoint (ptr @___asan_gen_.930 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.929 to i32), i32 ptrtoint (ptr @___asan_gen_.930 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.929 to i32), i32 ptrtoint (ptr @___asan_gen_.930 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.929 to i32), i32 ptrtoint (ptr @___asan_gen_.930 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lio_target_call_addnptotpg._entry.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.824 to i32), i32 ptrtoint (ptr @___asan_gen_.930 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 70, i32 128, i32 ptrtoint (ptr @___asan_gen_.929 to i32), i32 ptrtoint (ptr @___asan_gen_.930 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lio_target_call_addnptotpg._entry.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.824 to i32), i32 ptrtoint (ptr @___asan_gen_.930 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.929 to i32), i32 ptrtoint (ptr @___asan_gen_.930 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lio_target_call_addnptotpg._entry.35 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.824 to i32), i32 ptrtoint (ptr @___asan_gen_.930 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.929 to i32), i32 ptrtoint (ptr @___asan_gen_.930 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lio_target_call_addnptotpg._entry.38 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.824 to i32), i32 ptrtoint (ptr @___asan_gen_.930 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.929 to i32), i32 ptrtoint (ptr @___asan_gen_.930 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.929 to i32), i32 ptrtoint (ptr @___asan_gen_.930 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.929 to i32), i32 ptrtoint (ptr @___asan_gen_.930 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.929 to i32), i32 ptrtoint (ptr @___asan_gen_.930 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.929 to i32), i32 ptrtoint (ptr @___asan_gen_.930 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.929 to i32), i32 ptrtoint (ptr @___asan_gen_.930 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.929 to i32), i32 ptrtoint (ptr @___asan_gen_.930 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iscsi_disc_attr_userid to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.930 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iscsi_disc_attr_password to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 ptrtoint (ptr @___asan_gen_.930 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iscsi_disc_attr_authenticate_target to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 ptrtoint (ptr @___asan_gen_.930 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iscsi_disc_attr_userid_mutual to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 ptrtoint (ptr @___asan_gen_.930 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iscsi_disc_attr_password_mutual to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.930 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iscsi_disc_attr_enforce_discovery_auth to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.930 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.929 to i32), i32 ptrtoint (ptr @___asan_gen_.930 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.929 to i32), i32 ptrtoint (ptr @___asan_gen_.930 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.929 to i32), i32 ptrtoint (ptr @___asan_gen_.930 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.929 to i32), i32 ptrtoint (ptr @___asan_gen_.930 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.929 to i32), i32 ptrtoint (ptr @___asan_gen_.930 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.929 to i32), i32 ptrtoint (ptr @___asan_gen_.930 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.929 to i32), i32 ptrtoint (ptr @___asan_gen_.930 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.929 to i32), i32 ptrtoint (ptr @___asan_gen_.930 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.929 to i32), i32 ptrtoint (ptr @___asan_gen_.930 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iscsi_disc_enforce_discovery_auth_store._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.824 to i32), i32 ptrtoint (ptr @___asan_gen_.930 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.929 to i32), i32 ptrtoint (ptr @___asan_gen_.930 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.929 to i32), i32 ptrtoint (ptr @___asan_gen_.930 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iscsi_disc_enforce_discovery_auth_store._entry.58 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.824 to i32), i32 ptrtoint (ptr @___asan_gen_.930 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.929 to i32), i32 ptrtoint (ptr @___asan_gen_.930 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.929 to i32), i32 ptrtoint (ptr @___asan_gen_.930 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.929 to i32), i32 ptrtoint (ptr @___asan_gen_.930 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 85, i32 128, i32 ptrtoint (ptr @___asan_gen_.929 to i32), i32 ptrtoint (ptr @___asan_gen_.930 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.929 to i32), i32 ptrtoint (ptr @___asan_gen_.930 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 86, i32 128, i32 ptrtoint (ptr @___asan_gen_.929 to i32), i32 ptrtoint (ptr @___asan_gen_.930 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lio_target_wwn_attr_lio_version to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 ptrtoint (ptr @___asan_gen_.930 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.929 to i32), i32 ptrtoint (ptr @___asan_gen_.930 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.929 to i32), i32 ptrtoint (ptr @___asan_gen_.930 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lio_target_tpg_attr_dynamic_sessions to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.930 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.929 to i32), i32 ptrtoint (ptr @___asan_gen_.930 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lio_target_np_attr_iser to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 ptrtoint (ptr @___asan_gen_.930 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lio_target_np_attr_cxgbit to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.930 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.929 to i32), i32 ptrtoint (ptr @___asan_gen_.930 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.929 to i32), i32 ptrtoint (ptr @___asan_gen_.930 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.929 to i32), i32 ptrtoint (ptr @___asan_gen_.930 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.929 to i32), i32 ptrtoint (ptr @___asan_gen_.930 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lio_target_np_driver_store._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.824 to i32), i32 ptrtoint (ptr @___asan_gen_.930 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.929 to i32), i32 ptrtoint (ptr @___asan_gen_.930 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.929 to i32), i32 ptrtoint (ptr @___asan_gen_.930 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lio_target_np_driver_store._entry.75 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.824 to i32), i32 ptrtoint (ptr @___asan_gen_.930 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.929 to i32), i32 ptrtoint (ptr @___asan_gen_.930 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lio_target_np_driver_store._entry.78 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.824 to i32), i32 ptrtoint (ptr @___asan_gen_.930 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.929 to i32), i32 ptrtoint (ptr @___asan_gen_.930 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.929 to i32), i32 ptrtoint (ptr @___asan_gen_.930 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iscsi_tpg_attrib_attr_authentication to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 ptrtoint (ptr @___asan_gen_.930 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iscsi_tpg_attrib_attr_login_timeout to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 ptrtoint (ptr @___asan_gen_.930 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iscsi_tpg_attrib_attr_netif_timeout to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 ptrtoint (ptr @___asan_gen_.930 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iscsi_tpg_attrib_attr_generate_node_acls to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 ptrtoint (ptr @___asan_gen_.930 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iscsi_tpg_attrib_attr_default_cmdsn_depth to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 ptrtoint (ptr @___asan_gen_.930 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iscsi_tpg_attrib_attr_cache_dynamic_acls to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 ptrtoint (ptr @___asan_gen_.930 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iscsi_tpg_attrib_attr_demo_mode_write_protect to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.930 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iscsi_tpg_attrib_attr_prod_mode_write_protect to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 ptrtoint (ptr @___asan_gen_.930 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iscsi_tpg_attrib_attr_demo_mode_discovery to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 ptrtoint (ptr @___asan_gen_.930 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iscsi_tpg_attrib_attr_default_erl to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 ptrtoint (ptr @___asan_gen_.930 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iscsi_tpg_attrib_attr_t10_pi to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 ptrtoint (ptr @___asan_gen_.930 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iscsi_tpg_attrib_attr_fabric_prot_type to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.930 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iscsi_tpg_attrib_attr_tpg_enabled_sendtargets to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 ptrtoint (ptr @___asan_gen_.930 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.550 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iscsi_tpg_attrib_attr_login_keys_workaround to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 ptrtoint (ptr @___asan_gen_.930 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.929 to i32), i32 ptrtoint (ptr @___asan_gen_.930 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.929 to i32), i32 ptrtoint (ptr @___asan_gen_.930 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.929 to i32), i32 ptrtoint (ptr @___asan_gen_.930 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.929 to i32), i32 ptrtoint (ptr @___asan_gen_.930 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.929 to i32), i32 ptrtoint (ptr @___asan_gen_.930 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.929 to i32), i32 ptrtoint (ptr @___asan_gen_.930 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.929 to i32), i32 ptrtoint (ptr @___asan_gen_.930 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.929 to i32), i32 ptrtoint (ptr @___asan_gen_.930 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.929 to i32), i32 ptrtoint (ptr @___asan_gen_.930 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.929 to i32), i32 ptrtoint (ptr @___asan_gen_.930 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.929 to i32), i32 ptrtoint (ptr @___asan_gen_.930 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.929 to i32), i32 ptrtoint (ptr @___asan_gen_.930 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.929 to i32), i32 ptrtoint (ptr @___asan_gen_.930 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.929 to i32), i32 ptrtoint (ptr @___asan_gen_.930 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.550 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.929 to i32), i32 ptrtoint (ptr @___asan_gen_.930 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iscsi_tpg_auth_attr_userid to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 ptrtoint (ptr @___asan_gen_.930 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iscsi_tpg_auth_attr_password to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 ptrtoint (ptr @___asan_gen_.930 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iscsi_tpg_auth_attr_authenticate_target to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 ptrtoint (ptr @___asan_gen_.930 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iscsi_tpg_auth_attr_userid_mutual to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 ptrtoint (ptr @___asan_gen_.930 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iscsi_tpg_auth_attr_password_mutual to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 ptrtoint (ptr @___asan_gen_.930 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iscsi_tpg_param_attr_AuthMethod to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 ptrtoint (ptr @___asan_gen_.930 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iscsi_tpg_param_attr_HeaderDigest to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.930 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.637 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iscsi_tpg_param_attr_DataDigest to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 ptrtoint (ptr @___asan_gen_.930 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.640 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iscsi_tpg_param_attr_MaxConnections to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 ptrtoint (ptr @___asan_gen_.930 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.643 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iscsi_tpg_param_attr_TargetAlias to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.581 to i32), i32 ptrtoint (ptr @___asan_gen_.930 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.646 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iscsi_tpg_param_attr_InitialR2T to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 ptrtoint (ptr @___asan_gen_.930 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.649 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iscsi_tpg_param_attr_ImmediateData to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 ptrtoint (ptr @___asan_gen_.930 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iscsi_tpg_param_attr_MaxRecvDataSegmentLength to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 ptrtoint (ptr @___asan_gen_.930 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.655 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iscsi_tpg_param_attr_MaxXmitDataSegmentLength to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 ptrtoint (ptr @___asan_gen_.930 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iscsi_tpg_param_attr_MaxBurstLength to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 ptrtoint (ptr @___asan_gen_.930 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iscsi_tpg_param_attr_FirstBurstLength to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 ptrtoint (ptr @___asan_gen_.930 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.664 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iscsi_tpg_param_attr_DefaultTime2Wait to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 ptrtoint (ptr @___asan_gen_.930 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iscsi_tpg_param_attr_DefaultTime2Retain to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 ptrtoint (ptr @___asan_gen_.930 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iscsi_tpg_param_attr_MaxOutstandingR2T to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 ptrtoint (ptr @___asan_gen_.930 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iscsi_tpg_param_attr_DataPDUInOrder to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 ptrtoint (ptr @___asan_gen_.930 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iscsi_tpg_param_attr_DataSequenceInOrder to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 ptrtoint (ptr @___asan_gen_.930 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.679 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iscsi_tpg_param_attr_ErrorRecoveryLevel to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.617 to i32), i32 ptrtoint (ptr @___asan_gen_.930 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.682 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iscsi_tpg_param_attr_IFMarker to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 ptrtoint (ptr @___asan_gen_.930 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iscsi_tpg_param_attr_OFMarker to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 ptrtoint (ptr @___asan_gen_.930 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iscsi_tpg_param_attr_IFMarkInt to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 ptrtoint (ptr @___asan_gen_.930 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iscsi_tpg_param_attr_OFMarkInt to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 ptrtoint (ptr @___asan_gen_.930 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.694 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.929 to i32), i32 ptrtoint (ptr @___asan_gen_.930 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.929 to i32), i32 ptrtoint (ptr @___asan_gen_.930 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.637 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.929 to i32), i32 ptrtoint (ptr @___asan_gen_.930 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.640 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.929 to i32), i32 ptrtoint (ptr @___asan_gen_.930 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.643 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.929 to i32), i32 ptrtoint (ptr @___asan_gen_.930 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.646 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.929 to i32), i32 ptrtoint (ptr @___asan_gen_.930 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.649 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.929 to i32), i32 ptrtoint (ptr @___asan_gen_.930 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.929 to i32), i32 ptrtoint (ptr @___asan_gen_.930 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.655 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.929 to i32), i32 ptrtoint (ptr @___asan_gen_.930 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.929 to i32), i32 ptrtoint (ptr @___asan_gen_.930 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.929 to i32), i32 ptrtoint (ptr @___asan_gen_.930 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.664 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.929 to i32), i32 ptrtoint (ptr @___asan_gen_.930 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.929 to i32), i32 ptrtoint (ptr @___asan_gen_.930 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.929 to i32), i32 ptrtoint (ptr @___asan_gen_.930 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.929 to i32), i32 ptrtoint (ptr @___asan_gen_.930 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.929 to i32), i32 ptrtoint (ptr @___asan_gen_.930 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.679 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.929 to i32), i32 ptrtoint (ptr @___asan_gen_.930 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.682 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.929 to i32), i32 ptrtoint (ptr @___asan_gen_.930 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.929 to i32), i32 ptrtoint (ptr @___asan_gen_.930 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.929 to i32), i32 ptrtoint (ptr @___asan_gen_.930 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.929 to i32), i32 ptrtoint (ptr @___asan_gen_.930 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.694 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lio_target_nacl_attr_info to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 ptrtoint (ptr @___asan_gen_.930 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.706 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lio_target_nacl_attr_cmdsn_depth to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 ptrtoint (ptr @___asan_gen_.930 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lio_target_nacl_attr_tag to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 ptrtoint (ptr @___asan_gen_.930 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.835 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.929 to i32), i32 ptrtoint (ptr @___asan_gen_.930 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.706 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.929 to i32), i32 ptrtoint (ptr @___asan_gen_.930 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.929 to i32), i32 ptrtoint (ptr @___asan_gen_.930 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.929 to i32), i32 ptrtoint (ptr @___asan_gen_.930 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.122 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.929 to i32), i32 ptrtoint (ptr @___asan_gen_.930 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.718 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.123 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.929 to i32), i32 ptrtoint (ptr @___asan_gen_.930 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.721 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.124 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.929 to i32), i32 ptrtoint (ptr @___asan_gen_.930 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.724 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.125 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.929 to i32), i32 ptrtoint (ptr @___asan_gen_.930 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.727 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.126 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.929 to i32), i32 ptrtoint (ptr @___asan_gen_.930 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.730 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.127 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.929 to i32), i32 ptrtoint (ptr @___asan_gen_.930 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.128 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.929 to i32), i32 ptrtoint (ptr @___asan_gen_.930 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.129 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.929 to i32), i32 ptrtoint (ptr @___asan_gen_.930 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.130 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.929 to i32), i32 ptrtoint (ptr @___asan_gen_.930 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.131 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.929 to i32), i32 ptrtoint (ptr @___asan_gen_.930 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.132 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.929 to i32), i32 ptrtoint (ptr @___asan_gen_.930 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.748 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.133 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.929 to i32), i32 ptrtoint (ptr @___asan_gen_.930 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.751 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.134 to i32), i32 75, i32 128, i32 ptrtoint (ptr @___asan_gen_.929 to i32), i32 ptrtoint (ptr @___asan_gen_.930 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.754 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.135 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.929 to i32), i32 ptrtoint (ptr @___asan_gen_.930 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.136 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.929 to i32), i32 ptrtoint (ptr @___asan_gen_.930 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.760 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.137 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.929 to i32), i32 ptrtoint (ptr @___asan_gen_.930 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.763 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.138 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.929 to i32), i32 ptrtoint (ptr @___asan_gen_.930 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.766 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.139 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.929 to i32), i32 ptrtoint (ptr @___asan_gen_.930 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.140 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.929 to i32), i32 ptrtoint (ptr @___asan_gen_.930 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.141 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.929 to i32), i32 ptrtoint (ptr @___asan_gen_.930 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.142 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.929 to i32), i32 ptrtoint (ptr @___asan_gen_.930 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.778 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.143 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.929 to i32), i32 ptrtoint (ptr @___asan_gen_.930 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.144 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.929 to i32), i32 ptrtoint (ptr @___asan_gen_.930 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.145 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.929 to i32), i32 ptrtoint (ptr @___asan_gen_.930 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.787 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.146 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.929 to i32), i32 ptrtoint (ptr @___asan_gen_.930 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.790 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.147 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.929 to i32), i32 ptrtoint (ptr @___asan_gen_.930 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.793 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.148 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.929 to i32), i32 ptrtoint (ptr @___asan_gen_.930 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.796 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.149 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.929 to i32), i32 ptrtoint (ptr @___asan_gen_.930 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.799 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.150 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.929 to i32), i32 ptrtoint (ptr @___asan_gen_.930 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lio_target_nacl_cmdsn_depth_store._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.824 to i32), i32 ptrtoint (ptr @___asan_gen_.930 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.811 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.151 to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.929 to i32), i32 ptrtoint (ptr @___asan_gen_.930 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.811 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.152 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.929 to i32), i32 ptrtoint (ptr @___asan_gen_.930 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.811 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lio_target_nacl_cmdsn_depth_store._entry.153 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.824 to i32), i32 ptrtoint (ptr @___asan_gen_.930 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.817 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.154 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.929 to i32), i32 ptrtoint (ptr @___asan_gen_.930 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.817 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lio_target_nacl_cmdsn_depth_store._entry.156 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.824 to i32), i32 ptrtoint (ptr @___asan_gen_.930 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.157 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.929 to i32), i32 ptrtoint (ptr @___asan_gen_.930 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lio_target_nacl_cmdsn_depth_store._entry.159 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.824 to i32), i32 ptrtoint (ptr @___asan_gen_.930 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.829 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.160 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.929 to i32), i32 ptrtoint (ptr @___asan_gen_.930 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.829 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.162 to i32), i32 70, i32 128, i32 ptrtoint (ptr @___asan_gen_.929 to i32), i32 ptrtoint (ptr @___asan_gen_.930 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.832 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.163 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.929 to i32), i32 ptrtoint (ptr @___asan_gen_.930 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.835 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iscsi_nacl_attrib_attr_dataout_timeout to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 ptrtoint (ptr @___asan_gen_.930 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.862 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iscsi_nacl_attrib_attr_dataout_timeout_retries to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.839 to i32), i32 ptrtoint (ptr @___asan_gen_.930 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.865 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iscsi_nacl_attrib_attr_default_erl to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 ptrtoint (ptr @___asan_gen_.930 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.844 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iscsi_nacl_attrib_attr_nopin_timeout to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.845 to i32), i32 ptrtoint (ptr @___asan_gen_.930 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.868 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iscsi_nacl_attrib_attr_nopin_response_timeout to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 ptrtoint (ptr @___asan_gen_.930 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.871 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iscsi_nacl_attrib_attr_random_datain_pdu_offsets to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.851 to i32), i32 ptrtoint (ptr @___asan_gen_.930 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.874 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iscsi_nacl_attrib_attr_random_datain_seq_offsets to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.854 to i32), i32 ptrtoint (ptr @___asan_gen_.930 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iscsi_nacl_attrib_attr_random_r2t_offsets to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 ptrtoint (ptr @___asan_gen_.930 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.880 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.164 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.929 to i32), i32 ptrtoint (ptr @___asan_gen_.930 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.862 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.165 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.929 to i32), i32 ptrtoint (ptr @___asan_gen_.930 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.865 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.166 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.929 to i32), i32 ptrtoint (ptr @___asan_gen_.930 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.868 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.167 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.929 to i32), i32 ptrtoint (ptr @___asan_gen_.930 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.871 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.168 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.929 to i32), i32 ptrtoint (ptr @___asan_gen_.930 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.874 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.169 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.929 to i32), i32 ptrtoint (ptr @___asan_gen_.930 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.170 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.929 to i32), i32 ptrtoint (ptr @___asan_gen_.930 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.880 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iscsi_nacl_auth_attr_userid to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 ptrtoint (ptr @___asan_gen_.930 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.883 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iscsi_nacl_auth_attr_password to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 ptrtoint (ptr @___asan_gen_.930 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.886 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iscsi_nacl_auth_attr_authenticate_target to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.887 to i32), i32 ptrtoint (ptr @___asan_gen_.930 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.889 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iscsi_nacl_auth_attr_userid_mutual to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.890 to i32), i32 ptrtoint (ptr @___asan_gen_.930 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.892 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iscsi_nacl_auth_attr_password_mutual to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.893 to i32), i32 ptrtoint (ptr @___asan_gen_.930 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.895 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iscsi_nacl_param_attr_MaxConnections to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.896 to i32), i32 ptrtoint (ptr @___asan_gen_.930 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iscsi_nacl_param_attr_InitialR2T to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 ptrtoint (ptr @___asan_gen_.930 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iscsi_nacl_param_attr_ImmediateData to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.902 to i32), i32 ptrtoint (ptr @___asan_gen_.930 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iscsi_nacl_param_attr_MaxBurstLength to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.905 to i32), i32 ptrtoint (ptr @___asan_gen_.930 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.907 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iscsi_nacl_param_attr_FirstBurstLength to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.908 to i32), i32 ptrtoint (ptr @___asan_gen_.930 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.910 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iscsi_nacl_param_attr_DefaultTime2Wait to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.911 to i32), i32 ptrtoint (ptr @___asan_gen_.930 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.913 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iscsi_nacl_param_attr_DefaultTime2Retain to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.914 to i32), i32 ptrtoint (ptr @___asan_gen_.930 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.916 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iscsi_nacl_param_attr_MaxOutstandingR2T to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.917 to i32), i32 ptrtoint (ptr @___asan_gen_.930 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.919 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iscsi_nacl_param_attr_DataPDUInOrder to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.920 to i32), i32 ptrtoint (ptr @___asan_gen_.930 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.922 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iscsi_nacl_param_attr_DataSequenceInOrder to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.923 to i32), i32 ptrtoint (ptr @___asan_gen_.930 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.925 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iscsi_nacl_param_attr_ErrorRecoveryLevel to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.926 to i32), i32 ptrtoint (ptr @___asan_gen_.930 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.928 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.171 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.929 to i32), i32 ptrtoint (ptr @___asan_gen_.930 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal ptr @lio_tpg_get_endpoint_wwn(ptr nocapture noundef readonly %se_tpg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %tpg_tiqn = getelementptr i8, ptr %se_tpg, i32 2080
  %0 = ptrtoint ptr %tpg_tiqn to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tpg_tiqn, align 16
  ret ptr %1
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i16 @lio_tpg_get_tag(ptr nocapture noundef readonly %se_tpg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %tpgt = getelementptr i8, ptr %se_tpg, i32 -104
  %0 = ptrtoint ptr %tpgt to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %tpgt, align 8
  ret i16 %1
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @lio_tpg_get_default_depth(ptr nocapture noundef readonly %se_tpg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %default_cmdsn_depth = getelementptr i8, ptr %se_tpg, i32 1000
  %0 = ptrtoint ptr %default_cmdsn_depth to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %default_cmdsn_depth, align 4
  ret i32 %1
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @lio_tpg_check_demo_mode(ptr nocapture noundef readonly %se_tpg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %generate_node_acls = getelementptr i8, ptr %se_tpg, i32 992
  %0 = ptrtoint ptr %generate_node_acls to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %generate_node_acls, align 4
  ret i32 %1
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @lio_tpg_check_demo_mode_cache(ptr nocapture noundef readonly %se_tpg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %cache_dynamic_acls = getelementptr i8, ptr %se_tpg, i32 996
  %0 = ptrtoint ptr %cache_dynamic_acls to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %cache_dynamic_acls, align 4
  ret i32 %1
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @lio_tpg_check_demo_mode_write_protect(ptr nocapture noundef readonly %se_tpg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %demo_mode_write_protect = getelementptr i8, ptr %se_tpg, i32 1004
  %0 = ptrtoint ptr %demo_mode_write_protect to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %demo_mode_write_protect, align 4
  ret i32 %1
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @lio_tpg_check_prod_mode_write_protect(ptr nocapture noundef readonly %se_tpg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %prod_mode_write_protect = getelementptr i8, ptr %se_tpg, i32 1008
  %0 = ptrtoint ptr %prod_mode_write_protect to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %prod_mode_write_protect, align 4
  ret i32 %1
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @lio_tpg_check_prot_fabric_only(ptr nocapture noundef readonly %se_tpg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %t10_pi = getelementptr i8, ptr %se_tpg, i32 1020
  %0 = ptrtoint ptr %t10_pi to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %t10_pi, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %fabric_prot_type = getelementptr i8, ptr %se_tpg, i32 1024
  %2 = ptrtoint ptr %fabric_prot_type to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %fabric_prot_type, align 4
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi i32 [ %3, %if.end ], [ 0, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @lio_tpg_get_inst_index(ptr nocapture noundef readonly %se_tpg) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %tpg_tiqn = getelementptr i8, ptr %se_tpg, i32 2080
  %0 = ptrtoint ptr %tpg_tiqn to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tpg_tiqn, align 16
  %tiqn_index = getelementptr inbounds %struct.iscsi_tiqn, ptr %1, i32 0, i32 13
  %2 = ptrtoint ptr %tiqn_index to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %tiqn_index, align 4
  ret i32 %3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lio_check_stop_free(ptr noundef %se_cmd) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @target_put_sess_cmd(ptr noundef %se_cmd) #12
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @lio_release_cmd(ptr noundef %se_cmd) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @lio_release_cmd.__UNIQUE_ID_ddebug494, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@lio_release_cmd, %if.then)) #12
          to label %do.end [label %if.then], !srcloc !464

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @lio_release_cmd.__UNIQUE_ID_ddebug494, ptr noundef nonnull @.str.5, ptr noundef %se_cmd) #12
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %add.ptr = getelementptr i8, ptr %se_cmd, i32 -592
  tail call void @iscsit_release_cmd(ptr noundef %add.ptr) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @lio_tpg_close_session(ptr nocapture noundef readonly %se_sess) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %fabric_sess_ptr = getelementptr inbounds %struct.se_session, ptr %se_sess, i32 0, i32 6
  %0 = ptrtoint ptr %fabric_sess_ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fabric_sess_ptr, align 8
  %tpg = getelementptr inbounds %struct.iscsi_session, ptr %1, i32 0, i32 49
  %2 = ptrtoint ptr %tpg to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %tpg, align 16
  %session_lock = getelementptr inbounds %struct.iscsi_portal_group, ptr %3, i32 0, i32 9, i32 4
  tail call void @_raw_spin_lock_bh(ptr noundef %session_lock) #12
  %conn_lock = getelementptr inbounds %struct.iscsi_session, ptr %1, i32 0, i32 37
  tail call void @_raw_spin_lock(ptr noundef %conn_lock) #12
  %session_fall_back_to_erl0 = getelementptr inbounds %struct.iscsi_session, ptr %1, i32 0, i32 29
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %session_fall_back_to_erl0, i32 noundef 4) #12
  %4 = ptrtoint ptr %session_fall_back_to_erl0 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %session_fall_back_to_erl0, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  br i1 %tobool.not, label %lor.lhs.false, label %entry.if.then_crit_edge

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  %session_logout = getelementptr inbounds %struct.iscsi_session, ptr %1, i32 0, i32 30
  %call.i.i32 = tail call zeroext i1 @__kasan_check_read(ptr noundef %session_logout, i32 noundef 4) #12
  %6 = ptrtoint ptr %session_logout to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %session_logout, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool2.not = icmp eq i32 %7, 0
  br i1 %tobool2.not, label %lor.lhs.false3, label %lor.lhs.false.if.then_crit_edge

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then

lor.lhs.false3:                                   ; preds = %lor.lhs.false
  %session_close = getelementptr inbounds %struct.iscsi_session, ptr %1, i32 0, i32 33
  %call.i.i33 = tail call zeroext i1 @__kasan_check_read(ptr noundef %session_close, i32 noundef 4) #12
  %8 = ptrtoint ptr %session_close to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %session_close, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool5.not = icmp eq i32 %9, 0
  br i1 %tobool5.not, label %lor.lhs.false6, label %lor.lhs.false3.if.then_crit_edge

lor.lhs.false3.if.then_crit_edge:                 ; preds = %lor.lhs.false3
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then

lor.lhs.false6:                                   ; preds = %lor.lhs.false3
  %time2retain_timer_flags = getelementptr inbounds %struct.iscsi_session, ptr %1, i32 0, i32 2
  %10 = ptrtoint ptr %time2retain_timer_flags to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %time2retain_timer_flags, align 8
  %and = and i32 %11, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool7.not = icmp eq i32 %and, 0
  br i1 %tobool7.not, label %if.end, label %lor.lhs.false6.if.then_crit_edge

lor.lhs.false6.if.then_crit_edge:                 ; preds = %lor.lhs.false6
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then

if.then:                                          ; preds = %lor.lhs.false6.if.then_crit_edge, %lor.lhs.false3.if.then_crit_edge, %lor.lhs.false.if.then_crit_edge, %entry.if.then_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %conn_lock) #12
  tail call void @_raw_spin_unlock_bh(ptr noundef %session_lock) #12
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false6
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @iscsit_inc_session_usage_count(ptr noundef %1) #12
  %session_reinstatement = getelementptr inbounds %struct.iscsi_session, ptr %1, i32 0, i32 31
  %call.i.i34 = tail call zeroext i1 @__kasan_check_write(ptr noundef %session_reinstatement, i32 noundef 4) #12
  %12 = ptrtoint ptr %session_reinstatement to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile i32 1, ptr %session_reinstatement, align 4
  %call.i.i35 = tail call zeroext i1 @__kasan_check_write(ptr noundef %session_fall_back_to_erl0, i32 noundef 4) #12
  %13 = ptrtoint ptr %session_fall_back_to_erl0 to i32
  call void @__asan_store4_noabort(i32 %13)
  store volatile i32 1, ptr %session_fall_back_to_erl0, align 4
  %call.i.i36 = tail call zeroext i1 @__kasan_check_write(ptr noundef %session_close, i32 noundef 4) #12
  %14 = ptrtoint ptr %session_close to i32
  call void @__asan_store4_noabort(i32 %14)
  store volatile i32 1, ptr %session_close, align 4
  tail call void @_raw_spin_unlock(ptr noundef %conn_lock) #12
  %call13 = tail call i32 @iscsit_stop_time2retain_timer(ptr noundef %1) #12
  tail call void @_raw_spin_unlock_bh(ptr noundef %session_lock) #12
  tail call void @iscsit_stop_session(ptr noundef %1, i32 noundef 1, i32 noundef 1) #12
  tail call void @iscsit_dec_session_usage_count(ptr noundef %1) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @lio_sess_get_index(ptr nocapture noundef readonly %se_sess) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %fabric_sess_ptr = getelementptr inbounds %struct.se_session, ptr %se_sess, i32 0, i32 6
  %0 = ptrtoint ptr %fabric_sess_ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fabric_sess_ptr, align 8
  %session_index = getelementptr inbounds %struct.iscsi_session, ptr %1, i32 0, i32 17
  %2 = ptrtoint ptr %session_index to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %session_index, align 4
  ret i32 %3
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lio_sess_get_initiator_sid(ptr nocapture noundef readonly %se_sess, ptr nocapture noundef writeonly %buf, i32 noundef %size) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %fabric_sess_ptr = getelementptr inbounds %struct.se_session, ptr %se_sess, i32 0, i32 6
  %0 = ptrtoint ptr %fabric_sess_ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fabric_sess_ptr, align 8
  %isid = getelementptr inbounds %struct.iscsi_session, ptr %1, i32 0, i32 1
  %call = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %buf, i32 noundef %size, ptr noundef nonnull @.str.6, ptr noundef %isid)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lio_write_pending(ptr noundef %se_cmd) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %se_cmd, i32 -592
  %conn1 = getelementptr i8, ptr %se_cmd, i32 -24
  %0 = ptrtoint ptr %conn1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %conn1, align 8
  %immediate_data = getelementptr i8, ptr %se_cmd, i32 -575
  %2 = ptrtoint ptr %immediate_data to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %immediate_data, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %land.lhs.true, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

land.lhs.true:                                    ; preds = %entry
  %unsolicited_data = getelementptr i8, ptr %se_cmd, i32 -569
  %4 = ptrtoint ptr %unsolicited_data to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %unsolicited_data, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool2.not = icmp eq i8 %5, 0
  br i1 %tobool2.not, label %if.then, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  %conn_transport = getelementptr inbounds %struct.iscsi_conn, ptr %1, i32 0, i32 61
  %6 = ptrtoint ptr %conn_transport to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %conn_transport, align 8
  %iscsit_get_dataout = getelementptr inbounds %struct.iscsit_transport, ptr %7, i32 0, i32 15
  %8 = ptrtoint ptr %iscsit_get_dataout to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %iscsit_get_dataout, align 4
  %call = tail call i32 %9(ptr noundef %1, ptr noundef %add.ptr, i1 noundef zeroext false) #12
  br label %cleanup

cleanup:                                          ; preds = %if.then, %land.lhs.true.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %if.then ], [ 0, %land.lhs.true.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @lio_set_default_node_attributes(ptr noundef %se_acl) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %se_tpg1 = getelementptr inbounds %struct.se_node_acl, ptr %se_acl, i32 0, i32 10
  %0 = ptrtoint ptr %se_tpg1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %se_tpg1, align 4
  %add.ptr4 = getelementptr i8, ptr %1, i32 -112
  %nacl = getelementptr inbounds %struct.iscsi_node_acl, ptr %se_acl, i32 0, i32 1, i32 10
  %2 = ptrtoint ptr %nacl to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %se_acl, ptr %nacl, align 4
  tail call void @iscsit_set_default_node_attribues(ptr noundef %se_acl, ptr noundef %add.ptr4) #12
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @iscsi_get_cmd_state(ptr nocapture noundef readonly %se_cmd) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %i_state = getelementptr i8, ptr %se_cmd, i32 -580
  %0 = ptrtoint ptr %i_state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %i_state, align 4
  ret i32 %1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lio_queue_data_in(ptr noundef %se_cmd) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %se_cmd, i32 -592
  %conn1 = getelementptr i8, ptr %se_cmd, i32 -24
  %0 = ptrtoint ptr %conn1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %conn1, align 8
  %i_state = getelementptr i8, ptr %se_cmd, i32 -580
  %2 = ptrtoint ptr %i_state to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 12, ptr %i_state, align 4
  %conn_transport = getelementptr inbounds %struct.iscsi_conn, ptr %1, i32 0, i32 61
  %3 = ptrtoint ptr %conn_transport to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %conn_transport, align 8
  %iscsit_queue_data_in = getelementptr inbounds %struct.iscsit_transport, ptr %4, i32 0, i32 16
  %5 = ptrtoint ptr %iscsit_queue_data_in to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %iscsit_queue_data_in, align 4
  %call = tail call i32 %6(ptr noundef %1, ptr noundef %add.ptr) #12
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lio_queue_status(ptr noundef %se_cmd) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %se_cmd, i32 -592
  %conn1 = getelementptr i8, ptr %se_cmd, i32 -24
  %0 = ptrtoint ptr %conn1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %conn1, align 8
  %i_state = getelementptr i8, ptr %se_cmd, i32 -580
  %2 = ptrtoint ptr %i_state to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 29, ptr %i_state, align 4
  %scsi_status = getelementptr inbounds %struct.se_cmd, ptr %se_cmd, i32 0, i32 1
  %3 = ptrtoint ptr %scsi_status to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %scsi_status, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.not = icmp eq i8 %4, 0
  br i1 %tobool.not, label %lor.lhs.false, label %entry.if.then_crit_edge

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  %sense_reason = getelementptr i8, ptr %se_cmd, i32 560
  %5 = ptrtoint ptr %sense_reason to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %sense_reason, align 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool3.not = icmp eq i32 %6, 0
  br i1 %tobool3.not, label %if.end, label %lor.lhs.false.if.then_crit_edge

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %entry.if.then_crit_edge
  %call = tail call i32 @iscsit_add_cmd_to_response_queue(ptr noundef %add.ptr, ptr noundef %1, i8 noundef zeroext 29) #12
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  %conn_transport = getelementptr inbounds %struct.iscsi_conn, ptr %1, i32 0, i32 61
  %7 = ptrtoint ptr %conn_transport to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %conn_transport, align 8
  %iscsit_queue_status = getelementptr inbounds %struct.iscsit_transport, ptr %8, i32 0, i32 17
  %9 = ptrtoint ptr %iscsit_queue_status to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %iscsit_queue_status, align 4
  %call6 = tail call i32 %10(ptr noundef %1, ptr noundef %add.ptr) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ %call, %if.then ], [ %call6, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @lio_queue_tm_rsp(ptr noundef %se_cmd) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %se_cmd, i32 -592
  %i_state = getelementptr i8, ptr %se_cmd, i32 -580
  %0 = ptrtoint ptr %i_state to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 34, ptr %i_state, align 4
  %conn = getelementptr i8, ptr %se_cmd, i32 -24
  %1 = ptrtoint ptr %conn to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %conn, align 8
  %call = tail call i32 @iscsit_add_cmd_to_response_queue(ptr noundef %add.ptr, ptr noundef %2, i8 noundef zeroext 34) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @lio_aborted_task(ptr noundef %se_cmd) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %se_cmd, i32 -592
  %conn = getelementptr i8, ptr %se_cmd, i32 -24
  %0 = ptrtoint ptr %conn to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %conn, align 8
  %conn_transport = getelementptr inbounds %struct.iscsi_conn, ptr %1, i32 0, i32 61
  %2 = ptrtoint ptr %conn_transport to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %conn_transport, align 8
  %iscsit_aborted_task = getelementptr inbounds %struct.iscsit_transport, ptr %3, i32 0, i32 18
  %4 = ptrtoint ptr %iscsit_aborted_task to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %iscsit_aborted_task, align 4
  tail call void %5(ptr noundef %1, ptr noundef %add.ptr) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @lio_target_call_coreaddtiqn(ptr nocapture noundef readnone %tf, ptr nocapture noundef readnone %group, ptr noundef %name) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @iscsit_add_tiqn(ptr noundef %name) #12
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %entry.cleanup_crit_edge, label %do.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

do.body:                                          ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @lio_target_call_coreaddtiqn.__UNIQUE_ID_ddebug489, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@lio_target_call_coreaddtiqn, %if.then6)) #12
          to label %do.body9 [label %if.then6], !srcloc !464

if.then6:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @lio_target_call_coreaddtiqn.__UNIQUE_ID_ddebug489, ptr noundef nonnull @.str.8, ptr noundef %call) #12
  br label %do.body9

do.body9:                                         ; preds = %if.then6, %do.body
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @lio_target_call_coreaddtiqn.__UNIQUE_ID_ddebug490, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@lio_target_call_coreaddtiqn, %if.then21)) #12
          to label %do.end24 [label %if.then21], !srcloc !464

if.then21:                                        ; preds = %do.body9
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @lio_target_call_coreaddtiqn.__UNIQUE_ID_ddebug490, ptr noundef nonnull @.str.9, ptr noundef %name) #12
  br label %do.end24

do.end24:                                         ; preds = %if.then21, %do.body9
  %tiqn_wwn = getelementptr inbounds %struct.iscsi_tiqn, ptr %call, i32 0, i32 11
  br label %cleanup

cleanup:                                          ; preds = %do.end24, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %tiqn_wwn, %do.end24 ], [ %call, %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @lio_target_call_coredeltiqn(ptr noundef %wwn) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %wwn, i32 -352
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @lio_target_call_coredeltiqn.__UNIQUE_ID_ddebug491, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@lio_target_call_coredeltiqn, %if.then)) #12
          to label %do.end [label %if.then], !srcloc !464

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @lio_target_call_coredeltiqn.__UNIQUE_ID_ddebug491, ptr noundef nonnull @.str.11, ptr noundef %add.ptr) #12
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  tail call void @iscsit_del_tiqn(ptr noundef %add.ptr) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @lio_target_add_wwn_groups(ptr noundef %wwn) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %iscsi_instance_group = getelementptr i8, ptr %wwn, i32 332
  tail call void @config_group_init_type_name(ptr noundef %iscsi_instance_group, ptr noundef nonnull @.str.12, ptr noundef nonnull @iscsi_stat_instance_cit) #12
  %group_entry.i = getelementptr i8, ptr %wwn, i32 404
  %default_groups.i = getelementptr inbounds %struct.se_wwn, ptr %wwn, i32 0, i32 3, i32 3
  %prev.i.i = getelementptr inbounds %struct.se_wwn, ptr %wwn, i32 0, i32 3, i32 3, i32 1
  %0 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %prev.i.i, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %group_entry.i, ptr noundef %1, ptr noundef %default_groups.i) #12
  br i1 %call.i.i.i, label %if.end.i.i.i, label %entry.configfs_add_default_group.exit_crit_edge

entry.configfs_add_default_group.exit_crit_edge:  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %configfs_add_default_group.exit

if.end.i.i.i:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %2 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %group_entry.i, ptr %prev.i.i, align 4
  %3 = ptrtoint ptr %group_entry.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %default_groups.i, ptr %group_entry.i, align 4
  %prev3.i.i.i = getelementptr i8, ptr %wwn, i32 408
  %4 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %1, ptr %prev3.i.i.i, align 4
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile ptr %group_entry.i, ptr %1, align 4
  br label %configfs_add_default_group.exit

configfs_add_default_group.exit:                  ; preds = %if.end.i.i.i, %entry.configfs_add_default_group.exit_crit_edge
  %iscsi_sess_err_group = getelementptr i8, ptr %wwn, i32 412
  tail call void @config_group_init_type_name(ptr noundef %iscsi_sess_err_group, ptr noundef nonnull @.str.13, ptr noundef nonnull @iscsi_stat_sess_err_cit) #12
  %group_entry.i37 = getelementptr i8, ptr %wwn, i32 484
  %6 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %prev.i.i, align 4
  %call.i.i.i40 = tail call zeroext i1 @__list_add_valid(ptr noundef %group_entry.i37, ptr noundef %7, ptr noundef %default_groups.i) #12
  br i1 %call.i.i.i40, label %if.end.i.i.i42, label %configfs_add_default_group.exit.configfs_add_default_group.exit43_crit_edge

configfs_add_default_group.exit.configfs_add_default_group.exit43_crit_edge: ; preds = %configfs_add_default_group.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %configfs_add_default_group.exit43

if.end.i.i.i42:                                   ; preds = %configfs_add_default_group.exit
  call void @__sanitizer_cov_trace_pc() #14
  %8 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %group_entry.i37, ptr %prev.i.i, align 4
  %9 = ptrtoint ptr %group_entry.i37 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %default_groups.i, ptr %group_entry.i37, align 4
  %prev3.i.i.i41 = getelementptr i8, ptr %wwn, i32 488
  %10 = ptrtoint ptr %prev3.i.i.i41 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %7, ptr %prev3.i.i.i41, align 4
  %11 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile ptr %group_entry.i37, ptr %7, align 4
  br label %configfs_add_default_group.exit43

configfs_add_default_group.exit43:                ; preds = %if.end.i.i.i42, %configfs_add_default_group.exit.configfs_add_default_group.exit43_crit_edge
  %iscsi_tgt_attr_group = getelementptr i8, ptr %wwn, i32 492
  tail call void @config_group_init_type_name(ptr noundef %iscsi_tgt_attr_group, ptr noundef nonnull @.str.14, ptr noundef nonnull @iscsi_stat_tgt_attr_cit) #12
  %group_entry.i44 = getelementptr i8, ptr %wwn, i32 564
  %12 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %prev.i.i, align 4
  %call.i.i.i47 = tail call zeroext i1 @__list_add_valid(ptr noundef %group_entry.i44, ptr noundef %13, ptr noundef %default_groups.i) #12
  br i1 %call.i.i.i47, label %if.end.i.i.i49, label %configfs_add_default_group.exit43.configfs_add_default_group.exit50_crit_edge

configfs_add_default_group.exit43.configfs_add_default_group.exit50_crit_edge: ; preds = %configfs_add_default_group.exit43
  call void @__sanitizer_cov_trace_pc() #14
  br label %configfs_add_default_group.exit50

if.end.i.i.i49:                                   ; preds = %configfs_add_default_group.exit43
  call void @__sanitizer_cov_trace_pc() #14
  %14 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %group_entry.i44, ptr %prev.i.i, align 4
  %15 = ptrtoint ptr %group_entry.i44 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %default_groups.i, ptr %group_entry.i44, align 4
  %prev3.i.i.i48 = getelementptr i8, ptr %wwn, i32 568
  %16 = ptrtoint ptr %prev3.i.i.i48 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %13, ptr %prev3.i.i.i48, align 4
  %17 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %17)
  store volatile ptr %group_entry.i44, ptr %13, align 4
  br label %configfs_add_default_group.exit50

configfs_add_default_group.exit50:                ; preds = %if.end.i.i.i49, %configfs_add_default_group.exit43.configfs_add_default_group.exit50_crit_edge
  %iscsi_login_stats_group = getelementptr i8, ptr %wwn, i32 572
  tail call void @config_group_init_type_name(ptr noundef %iscsi_login_stats_group, ptr noundef nonnull @.str.15, ptr noundef nonnull @iscsi_stat_login_cit) #12
  %group_entry.i51 = getelementptr i8, ptr %wwn, i32 644
  %18 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %prev.i.i, align 4
  %call.i.i.i54 = tail call zeroext i1 @__list_add_valid(ptr noundef %group_entry.i51, ptr noundef %19, ptr noundef %default_groups.i) #12
  br i1 %call.i.i.i54, label %if.end.i.i.i56, label %configfs_add_default_group.exit50.configfs_add_default_group.exit57_crit_edge

configfs_add_default_group.exit50.configfs_add_default_group.exit57_crit_edge: ; preds = %configfs_add_default_group.exit50
  call void @__sanitizer_cov_trace_pc() #14
  br label %configfs_add_default_group.exit57

if.end.i.i.i56:                                   ; preds = %configfs_add_default_group.exit50
  call void @__sanitizer_cov_trace_pc() #14
  %20 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %group_entry.i51, ptr %prev.i.i, align 4
  %21 = ptrtoint ptr %group_entry.i51 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %default_groups.i, ptr %group_entry.i51, align 4
  %prev3.i.i.i55 = getelementptr i8, ptr %wwn, i32 648
  %22 = ptrtoint ptr %prev3.i.i.i55 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %19, ptr %prev3.i.i.i55, align 4
  %23 = ptrtoint ptr %19 to i32
  call void @__asan_store4_noabort(i32 %23)
  store volatile ptr %group_entry.i51, ptr %19, align 4
  br label %configfs_add_default_group.exit57

configfs_add_default_group.exit57:                ; preds = %if.end.i.i.i56, %configfs_add_default_group.exit50.configfs_add_default_group.exit57_crit_edge
  %iscsi_logout_stats_group = getelementptr i8, ptr %wwn, i32 652
  tail call void @config_group_init_type_name(ptr noundef %iscsi_logout_stats_group, ptr noundef nonnull @.str.16, ptr noundef nonnull @iscsi_stat_logout_cit) #12
  %group_entry.i58 = getelementptr i8, ptr %wwn, i32 724
  %24 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %prev.i.i, align 4
  %call.i.i.i61 = tail call zeroext i1 @__list_add_valid(ptr noundef %group_entry.i58, ptr noundef %25, ptr noundef %default_groups.i) #12
  br i1 %call.i.i.i61, label %if.end.i.i.i63, label %configfs_add_default_group.exit57.configfs_add_default_group.exit64_crit_edge

configfs_add_default_group.exit57.configfs_add_default_group.exit64_crit_edge: ; preds = %configfs_add_default_group.exit57
  call void @__sanitizer_cov_trace_pc() #14
  br label %configfs_add_default_group.exit64

if.end.i.i.i63:                                   ; preds = %configfs_add_default_group.exit57
  call void @__sanitizer_cov_trace_pc() #14
  %26 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %group_entry.i58, ptr %prev.i.i, align 4
  %27 = ptrtoint ptr %group_entry.i58 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %default_groups.i, ptr %group_entry.i58, align 4
  %prev3.i.i.i62 = getelementptr i8, ptr %wwn, i32 728
  %28 = ptrtoint ptr %prev3.i.i.i62 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %25, ptr %prev3.i.i.i62, align 4
  %29 = ptrtoint ptr %25 to i32
  call void @__asan_store4_noabort(i32 %29)
  store volatile ptr %group_entry.i58, ptr %25, align 4
  br label %configfs_add_default_group.exit64

configfs_add_default_group.exit64:                ; preds = %if.end.i.i.i63, %configfs_add_default_group.exit57.configfs_add_default_group.exit64_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @lio_target_tiqn_addtpg(ptr noundef %wwn, ptr noundef %name) #2 align 64 {
entry:
  %tpgt = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %tpgt) #12
  %0 = ptrtoint ptr %tpgt to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 -1, ptr %tpgt, align 2, !annotation !465
  %add.ptr = getelementptr i8, ptr %wwn, i32 -352
  %call = tail call ptr @strstr(ptr noundef %name, ptr noundef nonnull @.str.17)
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %call2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18) #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %add.ptr3 = getelementptr i8, ptr %call, i32 5
  %call4 = call i32 @kstrtou16(ptr noundef %add.ptr3, i32 noundef 0, ptr noundef nonnull %tpgt) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.end7, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %1 = ptrtoint ptr %tpgt to i32
  call void @__asan_load2_noabort(i32 %1)
  %2 = load i16, ptr %tpgt, align 2
  %call8 = call ptr @iscsit_alloc_portal_group(ptr noundef %add.ptr, i16 noundef zeroext %2) #12
  %tobool9.not = icmp eq ptr %call8, null
  br i1 %tobool9.not, label %if.end7.cleanup_crit_edge, label %if.end11

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end11:                                         ; preds = %if.end7
  %tpg_se_tpg = getelementptr inbounds %struct.iscsi_portal_group, ptr %call8, i32 0, i32 9
  %call12 = call i32 @core_tpg_register(ptr noundef %wwn, ptr noundef %tpg_se_tpg, i32 noundef 5) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %cmp = icmp slt i32 %call12, 0
  br i1 %cmp, label %if.end11.free_out_crit_edge, label %if.end14

if.end11.free_out_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #14
  br label %free_out

if.end14:                                         ; preds = %if.end11
  %call15 = call i32 @iscsit_tpg_add_portal_group(ptr noundef %add.ptr, ptr noundef nonnull %call8) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %cmp16.not = icmp eq i32 %call15, 0
  br i1 %cmp16.not, label %do.body19, label %out

do.body19:                                        ; preds = %if.end14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @lio_target_tiqn_addtpg.__UNIQUE_ID_ddebug486, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@lio_target_tiqn_addtpg, %if.then25)) #12
          to label %do.body30 [label %if.then25], !srcloc !464

if.then25:                                        ; preds = %do.body19
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @lio_target_tiqn_addtpg.__UNIQUE_ID_ddebug486, ptr noundef nonnull @.str.8, ptr noundef %add.ptr) #12
  br label %do.body30

do.body30:                                        ; preds = %if.then25, %do.body19
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @lio_target_tiqn_addtpg.__UNIQUE_ID_ddebug487, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@lio_target_tiqn_addtpg, %if.then42)) #12
          to label %cleanup [label %if.then42], !srcloc !464

if.then42:                                        ; preds = %do.body30
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @lio_target_tiqn_addtpg.__UNIQUE_ID_ddebug487, ptr noundef nonnull @.str.20, ptr noundef %name) #12
  br label %cleanup

out:                                              ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #14
  %call48 = call i32 @core_tpg_deregister(ptr noundef %tpg_se_tpg) #12
  br label %free_out

free_out:                                         ; preds = %out, %if.end11.free_out_crit_edge
  call void @kfree(ptr noundef nonnull %call8) #12
  br label %cleanup

cleanup:                                          ; preds = %free_out, %if.then42, %do.body30, %if.end7.cleanup_crit_edge, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi ptr [ null, %free_out ], [ null, %do.end ], [ null, %if.end.cleanup_crit_edge ], [ null, %if.end7.cleanup_crit_edge ], [ %tpg_se_tpg, %if.then42 ], [ %tpg_se_tpg, %do.body30 ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %tpgt) #12
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lio_target_tiqn_enabletpg(ptr noundef %se_tpg, i1 noundef zeroext %enable) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %se_tpg, i32 -112
  %call = tail call i32 @iscsit_get_tpg(ptr noundef %add.ptr) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  br i1 %enable, label %if.then1, label %if.else

if.then1:                                         ; preds = %if.end
  %call2 = tail call i32 @iscsit_tpg_enable_portal_group(ptr noundef %add.ptr) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp3 = icmp slt i32 %call2, 0
  br i1 %cmp3, label %if.then1.out_crit_edge, label %if.then1.cleanup.sink.split_crit_edge

if.then1.cleanup.sink.split_crit_edge:            ; preds = %if.then1
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.sink.split

if.then1.out_crit_edge:                           ; preds = %if.then1
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

if.else:                                          ; preds = %if.end
  %call6 = tail call i32 @iscsit_tpg_disable_portal_group(ptr noundef %add.ptr, i32 noundef 1) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %cmp7 = icmp slt i32 %call6, 0
  br i1 %cmp7, label %if.else.out_crit_edge, label %if.else.cleanup.sink.split_crit_edge

if.else.cleanup.sink.split_crit_edge:             ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.sink.split

if.else.out_crit_edge:                            ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

out:                                              ; preds = %if.else.out_crit_edge, %if.then1.out_crit_edge
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %out, %if.else.cleanup.sink.split_crit_edge, %if.then1.cleanup.sink.split_crit_edge
  %retval.0.ph = phi i32 [ -22, %out ], [ 0, %if.else.cleanup.sink.split_crit_edge ], [ 0, %if.then1.cleanup.sink.split_crit_edge ]
  tail call void @iscsit_put_tpg(ptr noundef %add.ptr) #12
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @lio_target_tiqn_deltpg(ptr noundef %se_tpg) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %tpg_tiqn = getelementptr i8, ptr %se_tpg, i32 2080
  %0 = ptrtoint ptr %tpg_tiqn to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tpg_tiqn, align 16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @lio_target_tiqn_deltpg.__UNIQUE_ID_ddebug488, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@lio_target_tiqn_deltpg, %if.then)) #12
          to label %do.end [label %if.then], !srcloc !464

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @lio_target_tiqn_deltpg.__UNIQUE_ID_ddebug488, ptr noundef nonnull @.str.22) #12
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %add.ptr = getelementptr i8, ptr %se_tpg, i32 -112
  %call4 = tail call i32 @iscsit_tpg_del_portal_group(ptr noundef %1, ptr noundef %add.ptr, i32 noundef 1) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @lio_target_call_addnptotpg(ptr noundef %se_tpg, ptr nocapture noundef readnone %group, ptr noundef %name) #2 align 64 {
entry:
  %sockaddr = alloca %struct.__kernel_sockaddr_storage, align 4
  %buf = alloca [257 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %sockaddr) #12
  %0 = call ptr @memset(ptr %sockaddr, i32 0, i32 128)
  call void @llvm.lifetime.start.p0(i64 257, ptr nonnull %buf) #12
  %1 = call ptr @memset(ptr %buf, i32 0, i32 257)
  %call = tail call i32 @strlen(ptr noundef %name) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %call)
  %cmp = icmp ugt i32 %call, 256
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %call2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, i32 noundef %call, i32 noundef 256) #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %call4 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %buf, i32 noundef 257, ptr noundef nonnull @.str.25, ptr noundef %name)
  %strchr = call ptr @strchr(ptr noundef nonnull %buf, i32 91)
  %tobool.not = icmp eq ptr %strchr, null
  br i1 %tobool.not, label %if.else, label %if.then7

if.then7:                                         ; preds = %if.end
  %strchr124 = call ptr @strchr(ptr noundef nonnull %strchr, i32 93)
  %tobool9.not = icmp eq ptr %strchr124, null
  br i1 %tobool9.not, label %do.end13, label %if.end17

do.end13:                                         ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #14
  %call15 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.29) #15
  br label %cleanup

if.end17:                                         ; preds = %if.then7
  %2 = ptrtoint ptr %strchr124 to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 0, ptr %strchr124, align 1
  %incdec.ptr = getelementptr i8, ptr %strchr124, i32 1
  %strchr125 = call ptr @strchr(ptr noundef %incdec.ptr, i32 58)
  %tobool19.not = icmp eq ptr %strchr125, null
  br i1 %tobool19.not, label %do.end23, label %if.end27

do.end23:                                         ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #14
  %call25 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.33) #15
  br label %cleanup

if.end27:                                         ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #14
  %add.ptr = getelementptr i8, ptr %strchr, i32 1
  br label %if.end40

if.else:                                          ; preds = %if.end
  %strchr123 = call ptr @strchr(ptr noundef nonnull %buf, i32 58)
  %tobool30.not = icmp eq ptr %strchr123, null
  br i1 %tobool30.not, label %do.end34, label %if.else.if.end40_crit_edge

if.else.if.end40_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end40

do.end34:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  %call36 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.36) #15
  br label %cleanup

if.end40:                                         ; preds = %if.else.if.end40_crit_edge, %if.end27
  %strchr123.sink = phi ptr [ %strchr125, %if.end27 ], [ %strchr123, %if.else.if.end40_crit_edge ]
  %ip_str.0 = phi ptr [ %add.ptr, %if.end27 ], [ %buf, %if.else.if.end40_crit_edge ]
  %3 = ptrtoint ptr %strchr123.sink to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 0, ptr %strchr123.sink, align 1
  %port_str.0 = getelementptr i8, ptr %strchr123.sink, i32 1
  %call41 = call i32 @inet_pton_with_scope(ptr noundef nonnull @init_net, i16 noundef zeroext 0, ptr noundef %ip_str.0, ptr noundef %port_str.0, ptr noundef nonnull %sockaddr) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call41)
  %tobool42.not = icmp eq i32 %call41, 0
  br i1 %tobool42.not, label %if.end50, label %do.end46

do.end46:                                         ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #14
  %call48 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.39, ptr noundef %name) #15
  %4 = inttoptr i32 %call41 to ptr
  br label %cleanup

if.end50:                                         ; preds = %if.end40
  %add.ptr52 = getelementptr i8, ptr %se_tpg, i32 -112
  %call53 = call i32 @iscsit_get_tpg(ptr noundef %add.ptr52) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call53)
  %cmp54 = icmp slt i32 %call53, 0
  br i1 %cmp54, label %if.end50.cleanup_crit_edge, label %do.body58

if.end50.cleanup_crit_edge:                       ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

do.body58:                                        ; preds = %if.end50
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @lio_target_call_addnptotpg.__UNIQUE_ID_ddebug481, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@lio_target_call_addnptotpg, %if.then64)) #12
          to label %do.end68 [label %if.then64], !srcloc !464

if.then64:                                        ; preds = %do.body58
  call void @__sanitizer_cov_trace_pc() #14
  %se_tpg_wwn = getelementptr inbounds %struct.se_portal_group, ptr %se_tpg, i32 0, i32 11
  %5 = ptrtoint ptr %se_tpg_wwn to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %se_tpg_wwn, align 4
  %wwn_group = getelementptr inbounds %struct.se_wwn, ptr %6, i32 0, i32 2
  %7 = ptrtoint ptr %wwn_group to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %wwn_group, align 4
  %tpgt = getelementptr i8, ptr %se_tpg, i32 -104
  %9 = ptrtoint ptr %tpgt to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %tpgt, align 8
  %conv = zext i16 %10 to i32
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @lio_target_call_addnptotpg.__UNIQUE_ID_ddebug481, ptr noundef nonnull @.str.41, ptr noundef %8, i32 noundef %conv, ptr noundef %name) #12
  br label %do.end68

do.end68:                                         ; preds = %if.then64, %do.body58
  %call69 = call ptr @iscsit_tpg_add_network_portal(ptr noundef %add.ptr52, ptr noundef nonnull %sockaddr, ptr noundef null, i32 noundef 0) #12
  %cmp.i = icmp ugt ptr %call69, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then71, label %do.body74

if.then71:                                        ; preds = %do.end68
  call void @__sanitizer_cov_trace_pc() #14
  call void @iscsit_put_tpg(ptr noundef %add.ptr52) #12
  br label %cleanup

do.body74:                                        ; preds = %do.end68
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @lio_target_call_addnptotpg.__UNIQUE_ID_ddebug482, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@lio_target_call_addnptotpg, %if.then86)) #12
          to label %do.end89 [label %if.then86], !srcloc !464

if.then86:                                        ; preds = %do.body74
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @lio_target_call_addnptotpg.__UNIQUE_ID_ddebug482, ptr noundef nonnull @.str.42) #12
  br label %do.end89

do.end89:                                         ; preds = %if.then86, %do.body74
  call void @iscsit_put_tpg(ptr noundef %add.ptr52) #12
  %se_tpg_np = getelementptr inbounds %struct.iscsi_tpg_np, ptr %call69, i32 0, i32 6
  br label %cleanup

cleanup:                                          ; preds = %do.end89, %if.then71, %if.end50.cleanup_crit_edge, %do.end46, %do.end34, %do.end23, %do.end13, %do.end
  %retval.0 = phi ptr [ inttoptr (i32 -75 to ptr), %do.end ], [ %4, %do.end46 ], [ %call69, %if.then71 ], [ %se_tpg_np, %do.end89 ], [ inttoptr (i32 -22 to ptr), %do.end23 ], [ inttoptr (i32 -22 to ptr), %do.end13 ], [ inttoptr (i32 -22 to ptr), %do.end34 ], [ inttoptr (i32 -22 to ptr), %if.end50.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 257, ptr nonnull %buf) #12
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %sockaddr) #12
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @lio_target_call_delnpfromtpg(ptr noundef %se_tpg_np) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %se_tpg_np, i32 -36
  %tpg1 = getelementptr i8, ptr %se_tpg_np, i32 -32
  %0 = ptrtoint ptr %tpg1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tpg1, align 4
  %call = tail call i32 @iscsit_get_tpg(ptr noundef %1) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @lio_target_call_delnpfromtpg.__UNIQUE_ID_ddebug483, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@lio_target_call_delnpfromtpg, %if.then6)) #12
          to label %do.end [label %if.then6], !srcloc !464

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %se_tpg_wwn = getelementptr inbounds %struct.iscsi_portal_group, ptr %1, i32 0, i32 9, i32 11
  %2 = ptrtoint ptr %se_tpg_wwn to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %se_tpg_wwn, align 4
  %wwn_group = getelementptr inbounds %struct.se_wwn, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %wwn_group to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %wwn_group, align 4
  %tpgt = getelementptr inbounds %struct.iscsi_portal_group, ptr %1, i32 0, i32 2
  %6 = ptrtoint ptr %tpgt to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %tpgt, align 8
  %conv = zext i16 %7 to i32
  %8 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %add.ptr, align 4
  %np_sockaddr = getelementptr inbounds %struct.iscsi_np, ptr %9, i32 0, i32 12
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @lio_target_call_delnpfromtpg.__UNIQUE_ID_ddebug483, ptr noundef nonnull @.str.44, ptr noundef %5, i32 noundef %conv, ptr noundef %np_sockaddr) #12
  br label %do.end

do.end:                                           ; preds = %if.then6, %if.end
  %call10 = tail call i32 @iscsit_tpg_del_network_portal(ptr noundef %1, ptr noundef %add.ptr) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %cmp11 = icmp slt i32 %call10, 0
  br i1 %cmp11, label %do.end.out_crit_edge, label %do.body15

do.end.out_crit_edge:                             ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

do.body15:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @lio_target_call_delnpfromtpg.__UNIQUE_ID_ddebug484, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@lio_target_call_delnpfromtpg, %if.then27)) #12
          to label %out [label %if.then27], !srcloc !464

if.then27:                                        ; preds = %do.body15
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @lio_target_call_delnpfromtpg.__UNIQUE_ID_ddebug484, ptr noundef nonnull @.str.45) #12
  br label %out

out:                                              ; preds = %if.then27, %do.body15, %do.end.out_crit_edge
  tail call void @iscsit_put_tpg(ptr noundef %1) #12
  br label %cleanup

cleanup:                                          ; preds = %out, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lio_target_init_nodeacl(ptr noundef %se_nacl, ptr nocapture noundef readnone %name) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %node_stat_grps = getelementptr inbounds %struct.iscsi_node_acl, ptr %se_nacl, i32 0, i32 3
  tail call void @config_group_init_type_name(ptr noundef %node_stat_grps, ptr noundef nonnull @.str.46, ptr noundef nonnull @iscsi_stat_sess_cit) #12
  %group_entry.i = getelementptr inbounds %struct.iscsi_node_acl, ptr %se_nacl, i32 0, i32 3, i32 0, i32 4
  %default_groups.i = getelementptr inbounds %struct.se_node_acl, ptr %se_nacl, i32 0, i32 17, i32 3
  %prev.i.i = getelementptr inbounds %struct.se_node_acl, ptr %se_nacl, i32 0, i32 17, i32 3, i32 1
  %0 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %prev.i.i, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %group_entry.i, ptr noundef %1, ptr noundef %default_groups.i) #12
  br i1 %call.i.i.i, label %if.end.i.i.i, label %entry.configfs_add_default_group.exit_crit_edge

entry.configfs_add_default_group.exit_crit_edge:  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %configfs_add_default_group.exit

if.end.i.i.i:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %2 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %group_entry.i, ptr %prev.i.i, align 4
  %3 = ptrtoint ptr %group_entry.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %default_groups.i, ptr %group_entry.i, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.iscsi_node_acl, ptr %se_nacl, i32 0, i32 3, i32 0, i32 4, i32 1
  %4 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %1, ptr %prev3.i.i.i, align 4
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile ptr %group_entry.i, ptr %1, align 4
  br label %configfs_add_default_group.exit

configfs_add_default_group.exit:                  ; preds = %if.end.i.i.i, %entry.configfs_add_default_group.exit_crit_edge
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @target_put_sess_cmd(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @iscsit_release_cmd(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @iscsit_inc_session_usage_count(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iscsit_stop_time2retain_timer(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @iscsit_stop_session(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @iscsit_dec_session_usage_count(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_bh(ptr noundef) local_unnamed_addr #5 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #5 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #5 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #5 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @iscsit_set_default_node_attribues(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iscsit_add_cmd_to_response_queue(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @iscsit_add_tiqn(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @iscsit_del_tiqn(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @config_group_init_type_name(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local ptr @strstr(ptr noundef, ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtou16(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @iscsit_alloc_portal_group(ptr noundef, i16 noundef zeroext) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @core_tpg_register(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iscsit_tpg_add_portal_group(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @core_tpg_deregister(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iscsit_get_tpg(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iscsit_tpg_enable_portal_group(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iscsit_tpg_disable_portal_group(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @iscsit_put_tpg(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iscsit_tpg_del_portal_group(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @inet_pton_with_scope(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @iscsit_tpg_add_network_portal(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iscsit_tpg_del_network_portal(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @iscsi_disc_userid_show(ptr nocapture noundef readnone %item, ptr nocapture noundef writeonly %page) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @iscsit_global to i32))
  %0 = load ptr, ptr @iscsit_global, align 4
  %call.i = tail call zeroext i1 @capable(i32 noundef 21) #12
  br i1 %call.i, label %if.end.i, label %entry.__iscsi_disc_userid_show.exit_crit_edge

entry.__iscsi_disc_userid_show.exit_crit_edge:    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %__iscsi_disc_userid_show.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %userid.i = getelementptr inbounds %struct.iscsit_global, ptr %0, i32 0, i32 6, i32 2, i32 3
  %call1.i = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %page, i32 noundef 4096, ptr noundef nonnull @.str.48, ptr noundef %userid.i) #12
  br label %__iscsi_disc_userid_show.exit

__iscsi_disc_userid_show.exit:                    ; preds = %if.end.i, %entry.__iscsi_disc_userid_show.exit_crit_edge
  %retval.0.i = phi i32 [ %call1.i, %if.end.i ], [ -1, %entry.__iscsi_disc_userid_show.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @iscsi_disc_userid_store(ptr nocapture noundef readnone %item, ptr noundef %page, i32 noundef %count) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @iscsit_global to i32))
  %0 = load ptr, ptr @iscsit_global, align 4
  %node_auth.i = getelementptr inbounds %struct.iscsit_global, ptr %0, i32 0, i32 6, i32 2
  %call.i = tail call zeroext i1 @capable(i32 noundef 21) #12
  br i1 %call.i, label %if.end.i, label %entry.__iscsi_disc_userid_store.exit_crit_edge

entry.__iscsi_disc_userid_store.exit_crit_edge:   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %__iscsi_disc_userid_store.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %count)
  %cmp.i = icmp ugt i32 %count, 255
  br i1 %cmp.i, label %if.end.i.__iscsi_disc_userid_store.exit_crit_edge, label %if.end2.i

if.end.i.__iscsi_disc_userid_store.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %__iscsi_disc_userid_store.exit

if.end2.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  %userid.i = getelementptr inbounds %struct.iscsit_global, ptr %0, i32 0, i32 6, i32 2, i32 3
  %call3.i = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %userid.i, i32 noundef 256, ptr noundef nonnull @.str.25, ptr noundef %page) #12
  %call6.i = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(5) @.str.49, ptr noundef %userid.i, i32 noundef 4) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i)
  %tobool.not.i = icmp ne i32 %call6.i, 0
  %1 = ptrtoint ptr %node_auth.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %node_auth.i, align 4
  %and.i = and i32 %2, -2
  %masksel.i = zext i1 %tobool.not.i to i32
  %storemerge.i = or i32 %and.i, %masksel.i
  store i32 %storemerge.i, ptr %node_auth.i, align 4
  %3 = and i32 %2, 12
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %3)
  %.not.i = icmp eq i32 %3, 12
  %.sink.i = zext i1 %.not.i to i32
  %authenticate_target.i = getelementptr inbounds %struct.iscsit_global, ptr %0, i32 0, i32 6, i32 2, i32 1
  %4 = ptrtoint ptr %authenticate_target.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %.sink.i, ptr %authenticate_target.i, align 4
  br label %__iscsi_disc_userid_store.exit

__iscsi_disc_userid_store.exit:                   ; preds = %if.end2.i, %if.end.i.__iscsi_disc_userid_store.exit_crit_edge, %entry.__iscsi_disc_userid_store.exit_crit_edge
  %retval.0.i = phi i32 [ -1, %entry.__iscsi_disc_userid_store.exit_crit_edge ], [ -22, %if.end.i.__iscsi_disc_userid_store.exit_crit_edge ], [ %count, %if.end2.i ]
  ret i32 %retval.0.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @capable(i32 noundef) local_unnamed_addr #5

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @iscsi_disc_password_show(ptr nocapture noundef readnone %item, ptr nocapture noundef writeonly %page) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @iscsit_global to i32))
  %0 = load ptr, ptr @iscsit_global, align 4
  %call.i = tail call zeroext i1 @capable(i32 noundef 21) #12
  br i1 %call.i, label %if.end.i, label %entry.__iscsi_disc_password_show.exit_crit_edge

entry.__iscsi_disc_password_show.exit_crit_edge:  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %__iscsi_disc_password_show.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %password.i = getelementptr inbounds %struct.iscsit_global, ptr %0, i32 0, i32 6, i32 2, i32 4
  %call1.i = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %page, i32 noundef 4096, ptr noundef nonnull @.str.48, ptr noundef %password.i) #12
  br label %__iscsi_disc_password_show.exit

__iscsi_disc_password_show.exit:                  ; preds = %if.end.i, %entry.__iscsi_disc_password_show.exit_crit_edge
  %retval.0.i = phi i32 [ %call1.i, %if.end.i ], [ -1, %entry.__iscsi_disc_password_show.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @iscsi_disc_password_store(ptr nocapture noundef readnone %item, ptr noundef %page, i32 noundef %count) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @iscsit_global to i32))
  %0 = load ptr, ptr @iscsit_global, align 4
  %node_auth.i = getelementptr inbounds %struct.iscsit_global, ptr %0, i32 0, i32 6, i32 2
  %call.i = tail call zeroext i1 @capable(i32 noundef 21) #12
  br i1 %call.i, label %if.end.i, label %entry.__iscsi_disc_password_store.exit_crit_edge

entry.__iscsi_disc_password_store.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %__iscsi_disc_password_store.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %count)
  %cmp.i = icmp ugt i32 %count, 255
  br i1 %cmp.i, label %if.end.i.__iscsi_disc_password_store.exit_crit_edge, label %if.end2.i

if.end.i.__iscsi_disc_password_store.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %__iscsi_disc_password_store.exit

if.end2.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  %password.i = getelementptr inbounds %struct.iscsit_global, ptr %0, i32 0, i32 6, i32 2, i32 4
  %call3.i = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %password.i, i32 noundef 256, ptr noundef nonnull @.str.25, ptr noundef %page) #12
  %call6.i = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(5) @.str.49, ptr noundef %password.i, i32 noundef 4) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i)
  %tobool.not.i = icmp eq i32 %call6.i, 0
  %1 = ptrtoint ptr %node_auth.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %node_auth.i, align 4
  %and.i = and i32 %2, -3
  %masksel.i = select i1 %tobool.not.i, i32 0, i32 2
  %storemerge.i = or i32 %and.i, %masksel.i
  store i32 %storemerge.i, ptr %node_auth.i, align 4
  %3 = and i32 %2, 12
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %3)
  %.not.i = icmp eq i32 %3, 12
  %.sink.i = zext i1 %.not.i to i32
  %authenticate_target.i = getelementptr inbounds %struct.iscsit_global, ptr %0, i32 0, i32 6, i32 2, i32 1
  %4 = ptrtoint ptr %authenticate_target.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %.sink.i, ptr %authenticate_target.i, align 4
  br label %__iscsi_disc_password_store.exit

__iscsi_disc_password_store.exit:                 ; preds = %if.end2.i, %if.end.i.__iscsi_disc_password_store.exit_crit_edge, %entry.__iscsi_disc_password_store.exit_crit_edge
  %retval.0.i = phi i32 [ -1, %entry.__iscsi_disc_password_store.exit_crit_edge ], [ -22, %if.end.i.__iscsi_disc_password_store.exit_crit_edge ], [ %count, %if.end2.i ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @iscsi_disc_authenticate_target_show(ptr nocapture noundef readnone %item, ptr nocapture noundef writeonly %page) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @iscsit_global to i32))
  %0 = load ptr, ptr @iscsit_global, align 4
  %call.i = tail call zeroext i1 @capable(i32 noundef 21) #12
  br i1 %call.i, label %if.end.i, label %entry.__iscsi_disc_authenticate_target_show.exit_crit_edge

entry.__iscsi_disc_authenticate_target_show.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %__iscsi_disc_authenticate_target_show.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %authenticate_target.i = getelementptr inbounds %struct.iscsit_global, ptr %0, i32 0, i32 6, i32 2, i32 1
  %1 = ptrtoint ptr %authenticate_target.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %authenticate_target.i, align 4
  %call1.i = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %page, i32 noundef 4096, ptr noundef nonnull @.str.52, i32 noundef %2) #12
  br label %__iscsi_disc_authenticate_target_show.exit

__iscsi_disc_authenticate_target_show.exit:       ; preds = %if.end.i, %entry.__iscsi_disc_authenticate_target_show.exit_crit_edge
  %retval.0.i = phi i32 [ %call1.i, %if.end.i ], [ -1, %entry.__iscsi_disc_authenticate_target_show.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @iscsi_disc_userid_mutual_show(ptr nocapture noundef readnone %item, ptr nocapture noundef writeonly %page) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @iscsit_global to i32))
  %0 = load ptr, ptr @iscsit_global, align 4
  %call.i = tail call zeroext i1 @capable(i32 noundef 21) #12
  br i1 %call.i, label %if.end.i, label %entry.__iscsi_disc_userid_mutual_show.exit_crit_edge

entry.__iscsi_disc_userid_mutual_show.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %__iscsi_disc_userid_mutual_show.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %userid_mutual.i = getelementptr inbounds %struct.iscsit_global, ptr %0, i32 0, i32 6, i32 2, i32 5
  %call1.i = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %page, i32 noundef 4096, ptr noundef nonnull @.str.48, ptr noundef %userid_mutual.i) #12
  br label %__iscsi_disc_userid_mutual_show.exit

__iscsi_disc_userid_mutual_show.exit:             ; preds = %if.end.i, %entry.__iscsi_disc_userid_mutual_show.exit_crit_edge
  %retval.0.i = phi i32 [ %call1.i, %if.end.i ], [ -1, %entry.__iscsi_disc_userid_mutual_show.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @iscsi_disc_userid_mutual_store(ptr nocapture noundef readnone %item, ptr noundef %page, i32 noundef %count) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @iscsit_global to i32))
  %0 = load ptr, ptr @iscsit_global, align 4
  %node_auth.i = getelementptr inbounds %struct.iscsit_global, ptr %0, i32 0, i32 6, i32 2
  %call.i = tail call zeroext i1 @capable(i32 noundef 21) #12
  br i1 %call.i, label %if.end.i, label %entry.__iscsi_disc_userid_mutual_store.exit_crit_edge

entry.__iscsi_disc_userid_mutual_store.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %__iscsi_disc_userid_mutual_store.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %count)
  %cmp.i = icmp ugt i32 %count, 255
  br i1 %cmp.i, label %if.end.i.__iscsi_disc_userid_mutual_store.exit_crit_edge, label %if.end2.i

if.end.i.__iscsi_disc_userid_mutual_store.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %__iscsi_disc_userid_mutual_store.exit

if.end2.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  %userid_mutual.i = getelementptr inbounds %struct.iscsit_global, ptr %0, i32 0, i32 6, i32 2, i32 5
  %call3.i = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %userid_mutual.i, i32 noundef 256, ptr noundef nonnull @.str.25, ptr noundef %page) #12
  %call6.i = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(5) @.str.49, ptr noundef %userid_mutual.i, i32 noundef 4) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i)
  %tobool.not.i = icmp eq i32 %call6.i, 0
  %1 = ptrtoint ptr %node_auth.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %node_auth.i, align 4
  %and.i = and i32 %2, -5
  %masksel.i = select i1 %tobool.not.i, i32 0, i32 4
  %storemerge.i = or i32 %and.i, %masksel.i
  store i32 %storemerge.i, ptr %node_auth.i, align 4
  %3 = and i32 %storemerge.i, 12
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %3)
  %.not.i = icmp eq i32 %3, 12
  %.sink.i = zext i1 %.not.i to i32
  %authenticate_target.i = getelementptr inbounds %struct.iscsit_global, ptr %0, i32 0, i32 6, i32 2, i32 1
  %4 = ptrtoint ptr %authenticate_target.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %.sink.i, ptr %authenticate_target.i, align 4
  br label %__iscsi_disc_userid_mutual_store.exit

__iscsi_disc_userid_mutual_store.exit:            ; preds = %if.end2.i, %if.end.i.__iscsi_disc_userid_mutual_store.exit_crit_edge, %entry.__iscsi_disc_userid_mutual_store.exit_crit_edge
  %retval.0.i = phi i32 [ -1, %entry.__iscsi_disc_userid_mutual_store.exit_crit_edge ], [ -22, %if.end.i.__iscsi_disc_userid_mutual_store.exit_crit_edge ], [ %count, %if.end2.i ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @iscsi_disc_password_mutual_show(ptr nocapture noundef readnone %item, ptr nocapture noundef writeonly %page) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @iscsit_global to i32))
  %0 = load ptr, ptr @iscsit_global, align 4
  %call.i = tail call zeroext i1 @capable(i32 noundef 21) #12
  br i1 %call.i, label %if.end.i, label %entry.__iscsi_disc_password_mutual_show.exit_crit_edge

entry.__iscsi_disc_password_mutual_show.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %__iscsi_disc_password_mutual_show.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %password_mutual.i = getelementptr inbounds %struct.iscsit_global, ptr %0, i32 0, i32 6, i32 2, i32 6
  %call1.i = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %page, i32 noundef 4096, ptr noundef nonnull @.str.48, ptr noundef %password_mutual.i) #12
  br label %__iscsi_disc_password_mutual_show.exit

__iscsi_disc_password_mutual_show.exit:           ; preds = %if.end.i, %entry.__iscsi_disc_password_mutual_show.exit_crit_edge
  %retval.0.i = phi i32 [ %call1.i, %if.end.i ], [ -1, %entry.__iscsi_disc_password_mutual_show.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @iscsi_disc_password_mutual_store(ptr nocapture noundef readnone %item, ptr noundef %page, i32 noundef %count) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @iscsit_global to i32))
  %0 = load ptr, ptr @iscsit_global, align 4
  %node_auth.i = getelementptr inbounds %struct.iscsit_global, ptr %0, i32 0, i32 6, i32 2
  %call.i = tail call zeroext i1 @capable(i32 noundef 21) #12
  br i1 %call.i, label %if.end.i, label %entry.__iscsi_disc_password_mutual_store.exit_crit_edge

entry.__iscsi_disc_password_mutual_store.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %__iscsi_disc_password_mutual_store.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %count)
  %cmp.i = icmp ugt i32 %count, 255
  br i1 %cmp.i, label %if.end.i.__iscsi_disc_password_mutual_store.exit_crit_edge, label %if.end2.i

if.end.i.__iscsi_disc_password_mutual_store.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %__iscsi_disc_password_mutual_store.exit

if.end2.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  %password_mutual.i = getelementptr inbounds %struct.iscsit_global, ptr %0, i32 0, i32 6, i32 2, i32 6
  %call3.i = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %password_mutual.i, i32 noundef 256, ptr noundef nonnull @.str.25, ptr noundef %page) #12
  %call6.i = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(5) @.str.49, ptr noundef %password_mutual.i, i32 noundef 4) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i)
  %tobool.not.i = icmp eq i32 %call6.i, 0
  %1 = ptrtoint ptr %node_auth.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %node_auth.i, align 4
  %and.i = and i32 %2, -9
  %masksel.i = select i1 %tobool.not.i, i32 0, i32 8
  %storemerge.i = or i32 %and.i, %masksel.i
  store i32 %storemerge.i, ptr %node_auth.i, align 4
  %3 = and i32 %storemerge.i, 12
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %3)
  %.not.i = icmp eq i32 %3, 12
  %.sink.i = zext i1 %.not.i to i32
  %authenticate_target.i = getelementptr inbounds %struct.iscsit_global, ptr %0, i32 0, i32 6, i32 2, i32 1
  %4 = ptrtoint ptr %authenticate_target.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %.sink.i, ptr %authenticate_target.i, align 4
  br label %__iscsi_disc_password_mutual_store.exit

__iscsi_disc_password_mutual_store.exit:          ; preds = %if.end2.i, %if.end.i.__iscsi_disc_password_mutual_store.exit_crit_edge, %entry.__iscsi_disc_password_mutual_store.exit_crit_edge
  %retval.0.i = phi i32 [ -1, %entry.__iscsi_disc_password_mutual_store.exit_crit_edge ], [ -22, %if.end.i.__iscsi_disc_password_mutual_store.exit_crit_edge ], [ %count, %if.end2.i ]
  ret i32 %retval.0.i
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @iscsi_disc_enforce_discovery_auth_show(ptr nocapture noundef readnone %item, ptr nocapture noundef writeonly %page) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @iscsit_global to i32))
  %0 = load ptr, ptr @iscsit_global, align 4
  %enforce_discovery_auth = getelementptr inbounds %struct.iscsit_global, ptr %0, i32 0, i32 6, i32 2, i32 2
  %1 = ptrtoint ptr %enforce_discovery_auth to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %enforce_discovery_auth, align 4
  %call = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %page, ptr noundef nonnull @.str.52, i32 noundef %2)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @iscsi_disc_enforce_discovery_auth_store(ptr nocapture noundef readnone %item, ptr noundef %page, i32 noundef %count) #2 align 64 {
entry:
  %op = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @iscsit_global to i32))
  %0 = load ptr, ptr @iscsit_global, align 4
  %discovery_tpg1 = getelementptr inbounds %struct.iscsit_global, ptr %0, i32 0, i32 7
  %1 = ptrtoint ptr %discovery_tpg1 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %discovery_tpg1, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %op) #12
  %3 = ptrtoint ptr %op to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %op, align 4, !annotation !465
  %call.i = call i32 @kstrtouint(ptr noundef %page, i32 noundef 0, ptr noundef nonnull %op) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = ptrtoint ptr %op to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %op, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %5)
  %switch = icmp ult i32 %5, 2
  br i1 %switch, label %if.end5, label %do.end

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %call4 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.56, i32 noundef %5) #15
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %tobool6.not = icmp eq ptr %2, null
  br i1 %tobool6.not, label %do.end10, label %if.end13

do.end10:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #14
  %call12 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.59) #15
  br label %cleanup

if.end13:                                         ; preds = %if.end5
  %param_list = getelementptr inbounds %struct.iscsi_portal_group, ptr %2, i32 0, i32 14
  %6 = ptrtoint ptr %param_list to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %param_list, align 4
  %call14 = call ptr @iscsi_find_param_from_key(ptr noundef nonnull @.str.61, ptr noundef %7) #12
  %tobool15.not = icmp eq ptr %call14, null
  br i1 %tobool15.not, label %if.end13.cleanup_crit_edge, label %if.end17

if.end13.cleanup_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end17:                                         ; preds = %if.end13
  %8 = ptrtoint ptr %op to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %op, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool18.not = icmp eq i32 %9, 0
  br i1 %tobool18.not, label %if.else, label %if.then19

if.then19:                                        ; preds = %if.end17
  %call20 = call i32 @iscsi_update_param_value(ptr noundef nonnull %call14, ptr noundef nonnull @.str.62) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %cmp21 = icmp slt i32 %call20, 0
  br i1 %cmp21, label %if.then19.cleanup_crit_edge, label %if.end23

if.then19.cleanup_crit_edge:                      ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end23:                                         ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #14
  %tpg_attrib = getelementptr inbounds %struct.iscsi_portal_group, ptr %2, i32 0, i32 12
  %10 = ptrtoint ptr %tpg_attrib to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 1, ptr %tpg_attrib, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @iscsit_global to i32))
  %11 = load ptr, ptr @iscsit_global, align 4
  %enforce_discovery_auth = getelementptr inbounds %struct.iscsit_global, ptr %11, i32 0, i32 6, i32 2, i32 2
  %12 = ptrtoint ptr %enforce_discovery_auth to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 1, ptr %enforce_discovery_auth, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @iscsi_disc_enforce_discovery_auth_store.__UNIQUE_ID_ddebug492, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@iscsi_disc_enforce_discovery_auth_store, %if.then30)) #12
          to label %cleanup [label %if.then30], !srcloc !464

if.then30:                                        ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @iscsi_disc_enforce_discovery_auth_store.__UNIQUE_ID_ddebug492, ptr noundef nonnull @.str.63) #12
  br label %cleanup

if.else:                                          ; preds = %if.end17
  %call34 = call i32 @iscsi_update_param_value(ptr noundef nonnull %call14, ptr noundef nonnull @.str.64) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34)
  %cmp35 = icmp slt i32 %call34, 0
  br i1 %cmp35, label %if.else.cleanup_crit_edge, label %if.end37

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end37:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  %tpg_attrib38 = getelementptr inbounds %struct.iscsi_portal_group, ptr %2, i32 0, i32 12
  %13 = ptrtoint ptr %tpg_attrib38 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %tpg_attrib38, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @iscsit_global to i32))
  %14 = load ptr, ptr @iscsit_global, align 4
  %enforce_discovery_auth42 = getelementptr inbounds %struct.iscsit_global, ptr %14, i32 0, i32 6, i32 2, i32 2
  %15 = ptrtoint ptr %enforce_discovery_auth42 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %enforce_discovery_auth42, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @iscsi_disc_enforce_discovery_auth_store.__UNIQUE_ID_ddebug493, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@iscsi_disc_enforce_discovery_auth_store, %if.then55)) #12
          to label %cleanup [label %if.then55], !srcloc !464

if.then55:                                        ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @iscsi_disc_enforce_discovery_auth_store.__UNIQUE_ID_ddebug493, ptr noundef nonnull @.str.65) #12
  br label %cleanup

cleanup:                                          ; preds = %if.then55, %if.end37, %if.else.cleanup_crit_edge, %if.then30, %if.end23, %if.then19.cleanup_crit_edge, %if.end13.cleanup_crit_edge, %do.end10, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end ], [ -22, %do.end10 ], [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end13.cleanup_crit_edge ], [ -22, %if.then19.cleanup_crit_edge ], [ -22, %if.else.cleanup_crit_edge ], [ %count, %if.then55 ], [ %count, %if.then30 ], [ %count, %if.end23 ], [ %count, %if.end37 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %op) #12
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @iscsi_find_param_from_key(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iscsi_update_param_value(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtouint(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @lio_target_wwn_lio_version_show(ptr nocapture noundef readnone %item, ptr nocapture noundef writeonly %page) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = call ptr @memcpy(ptr %page, ptr @.str.67, i32 33)
  ret i32 32
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lio_target_tpg_dynamic_sessions_show(ptr noundef %item, ptr noundef %page) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %item, i32 -272
  %call1 = tail call i32 @target_show_dynamic_sessions(ptr noundef %add.ptr.i, ptr noundef %page) #12
  ret i32 %call1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @target_show_dynamic_sessions(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lio_target_np_iser_show(ptr noundef %item, ptr nocapture noundef writeonly %page) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i.i = getelementptr i8, ptr %item, i32 -40
  %call1.i = tail call ptr @iscsit_tpg_locate_child_np(ptr noundef %add.ptr.i.i, i32 noundef 5) #12
  %tobool.not.i = icmp eq ptr %call1.i, null
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %0 = call ptr @memcpy(ptr %page, ptr @.str.70, i32 3)
  br label %lio_target_np_driver_show.exit

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %1 = call ptr @memcpy(ptr %page, ptr @.str.71, i32 3)
  br label %lio_target_np_driver_show.exit

lio_target_np_driver_show.exit:                   ; preds = %if.else.i, %if.then.i
  ret i32 2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lio_target_np_iser_store(ptr noundef %item, ptr noundef %page, i32 noundef %count) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @lio_target_np_driver_store(ptr noundef %item, ptr noundef %page, i32 noundef %count, i32 noundef 5, ptr noundef nonnull @.str.72)
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @iscsit_tpg_locate_child_np(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @lio_target_np_driver_store(ptr noundef %item, ptr noundef %page, i32 noundef %count, i32 noundef %type, ptr noundef %mod_name) unnamed_addr #2 align 64 {
entry:
  %op = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %item, i32 -40
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %op) #12
  %0 = ptrtoint ptr %op to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %op, align 4, !annotation !465
  %call.i = call i32 @kstrtouint(ptr noundef %page, i32 noundef 0, ptr noundef nonnull %op) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = ptrtoint ptr %op to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %op, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %2)
  %switch = icmp ult i32 %2, 2
  br i1 %switch, label %if.end5, label %do.end

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %call4 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.73, i32 noundef %2) #15
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %3 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %add.ptr.i, align 4
  %tobool7.not = icmp eq ptr %4, null
  br i1 %tobool7.not, label %do.end11, label %if.end14

do.end11:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #14
  %call13 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.76) #15
  br label %cleanup

if.end14:                                         ; preds = %if.end5
  %tpg15 = getelementptr i8, ptr %item, i32 -36
  %5 = ptrtoint ptr %tpg15 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %tpg15, align 4
  %call16 = call i32 @iscsit_get_tpg(ptr noundef %6) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %cmp17 = icmp slt i32 %call16, 0
  br i1 %cmp17, label %if.end14.cleanup_crit_edge, label %if.end19

if.end14.cleanup_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end19:                                         ; preds = %if.end14
  %7 = ptrtoint ptr %op to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %op, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool20.not = icmp eq i32 %8, 0
  br i1 %tobool20.not, label %if.else, label %if.then21

if.then21:                                        ; preds = %if.end19
  %9 = ptrtoint ptr %mod_name to i32
  call void @__asan_load1_noabort(i32 %9)
  %char0 = load i8, ptr %mod_name, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %char0)
  %tobool23.not = icmp eq i8 %char0, 0
  br i1 %tobool23.not, label %if.then21.if.end34_crit_edge, label %if.then24

if.then21.if.end34_crit_edge:                     ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end34

if.then24:                                        ; preds = %if.then21
  %call25 = call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef %mod_name) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25)
  %cmp26.not = icmp eq i32 %call25, 0
  br i1 %cmp26.not, label %if.then24.if.end34_crit_edge, label %do.end30

if.then24.if.end34_crit_edge:                     ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end34

do.end30:                                         ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #14
  %call32 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.79, ptr noundef %mod_name) #15
  br label %if.end34

if.end34:                                         ; preds = %do.end30, %if.then24.if.end34_crit_edge, %if.then21.if.end34_crit_edge
  %np_sockaddr = getelementptr inbounds %struct.iscsi_np, ptr %4, i32 0, i32 12
  %call35 = call ptr @iscsit_tpg_add_network_portal(ptr noundef %6, ptr noundef %np_sockaddr, ptr noundef %add.ptr.i, i32 noundef %type) #12
  %cmp.i = icmp ugt ptr %call35, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then37, label %if.end34.if.end48_crit_edge

if.end34.if.end48_crit_edge:                      ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end48

if.then37:                                        ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #14
  %10 = ptrtoint ptr %call35 to i32
  br label %out

if.else:                                          ; preds = %if.end19
  %call40 = call ptr @iscsit_tpg_locate_child_np(ptr noundef %add.ptr.i, i32 noundef %type) #12
  %tobool41.not = icmp eq ptr %call40, null
  br i1 %tobool41.not, label %if.else.if.end48_crit_edge, label %if.then42

if.else.if.end48_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end48

if.then42:                                        ; preds = %if.else
  %call43 = call i32 @iscsit_tpg_del_network_portal(ptr noundef %6, ptr noundef nonnull %call40) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call43)
  %cmp44 = icmp slt i32 %call43, 0
  br i1 %cmp44, label %if.then42.out_crit_edge, label %if.then42.if.end48_crit_edge

if.then42.if.end48_crit_edge:                     ; preds = %if.then42
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end48

if.then42.out_crit_edge:                          ; preds = %if.then42
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

if.end48:                                         ; preds = %if.then42.if.end48_crit_edge, %if.else.if.end48_crit_edge, %if.end34.if.end48_crit_edge
  call void @iscsit_put_tpg(ptr noundef %6) #12
  br label %cleanup

out:                                              ; preds = %if.then42.out_crit_edge, %if.then37
  %rc.0 = phi i32 [ %10, %if.then37 ], [ %call43, %if.then42.out_crit_edge ]
  call void @iscsit_put_tpg(ptr noundef %6) #12
  br label %cleanup

cleanup:                                          ; preds = %out, %if.end48, %if.end14.cleanup_crit_edge, %do.end11, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end ], [ %rc.0, %out ], [ %count, %if.end48 ], [ -22, %do.end11 ], [ %call.i, %entry.cleanup_crit_edge ], [ -22, %if.end14.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %op) #12
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__request_module(i1 noundef zeroext, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lio_target_np_cxgbit_show(ptr noundef %item, ptr nocapture noundef writeonly %page) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i.i = getelementptr i8, ptr %item, i32 -40
  %call1.i = tail call ptr @iscsit_tpg_locate_child_np(ptr noundef %add.ptr.i.i, i32 noundef 6) #12
  %tobool.not.i = icmp eq ptr %call1.i, null
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %0 = call ptr @memcpy(ptr %page, ptr @.str.70, i32 3)
  br label %lio_target_np_driver_show.exit

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %1 = call ptr @memcpy(ptr %page, ptr @.str.71, i32 3)
  br label %lio_target_np_driver_show.exit

lio_target_np_driver_show.exit:                   ; preds = %if.else.i, %if.then.i
  ret i32 2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lio_target_np_cxgbit_store(ptr noundef %item, ptr noundef %page, i32 noundef %count) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @lio_target_np_driver_store(ptr noundef %item, ptr noundef %page, i32 noundef %count, i32 noundef 6, ptr noundef nonnull @.str.81)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @iscsi_tpg_attrib_authentication_show(ptr noundef %item, ptr nocapture noundef writeonly %page) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %item, i32 -704
  %call1 = tail call i32 @iscsit_get_tpg(ptr noundef %add.ptr) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %tpg_attrib = getelementptr i8, ptr %item, i32 388
  %0 = ptrtoint ptr %tpg_attrib to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %tpg_attrib, align 4
  %call2 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %page, ptr noundef nonnull @.str.83, i32 noundef %1)
  tail call void @iscsit_put_tpg(ptr noundef %add.ptr) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @iscsi_tpg_attrib_authentication_store(ptr noundef %item, ptr noundef %page, i32 noundef %count) #2 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %item, i32 -704
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #12
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %val, align 4, !annotation !465
  %call1 = tail call i32 @iscsit_get_tpg(ptr noundef %add.ptr) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i = call i32 @kstrtouint(ptr noundef %page, i32 noundef 0, ptr noundef nonnull %val) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end4, label %if.end.out_crit_edge

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

if.end4:                                          ; preds = %if.end
  %1 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %val, align 4
  %call5 = call i32 @iscsit_ta_authentication(ptr noundef %add.ptr, i32 noundef %2) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %cmp6 = icmp slt i32 %call5, 0
  br i1 %cmp6, label %if.end4.out_crit_edge, label %if.end4.cleanup.sink.split_crit_edge

if.end4.cleanup.sink.split_crit_edge:             ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.sink.split

if.end4.out_crit_edge:                            ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

out:                                              ; preds = %if.end4.out_crit_edge, %if.end.out_crit_edge
  %ret.0 = phi i32 [ %call.i, %if.end.out_crit_edge ], [ %call5, %if.end4.out_crit_edge ]
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %out, %if.end4.cleanup.sink.split_crit_edge
  %retval.0.ph = phi i32 [ %ret.0, %out ], [ %count, %if.end4.cleanup.sink.split_crit_edge ]
  call void @iscsit_put_tpg(ptr noundef %add.ptr) #12
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #12
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iscsit_ta_authentication(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @iscsi_tpg_attrib_login_timeout_show(ptr noundef %item, ptr nocapture noundef writeonly %page) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %item, i32 -704
  %call1 = tail call i32 @iscsit_get_tpg(ptr noundef %add.ptr) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %login_timeout = getelementptr i8, ptr %item, i32 392
  %0 = ptrtoint ptr %login_timeout to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %login_timeout, align 4
  %call2 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %page, ptr noundef nonnull @.str.83, i32 noundef %1)
  tail call void @iscsit_put_tpg(ptr noundef %add.ptr) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @iscsi_tpg_attrib_login_timeout_store(ptr noundef %item, ptr noundef %page, i32 noundef %count) #2 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %item, i32 -704
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #12
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %val, align 4, !annotation !465
  %call1 = tail call i32 @iscsit_get_tpg(ptr noundef %add.ptr) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i = call i32 @kstrtouint(ptr noundef %page, i32 noundef 0, ptr noundef nonnull %val) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end4, label %if.end.out_crit_edge

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

if.end4:                                          ; preds = %if.end
  %1 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %val, align 4
  %call5 = call i32 @iscsit_ta_login_timeout(ptr noundef %add.ptr, i32 noundef %2) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %cmp6 = icmp slt i32 %call5, 0
  br i1 %cmp6, label %if.end4.out_crit_edge, label %if.end4.cleanup.sink.split_crit_edge

if.end4.cleanup.sink.split_crit_edge:             ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.sink.split

if.end4.out_crit_edge:                            ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

out:                                              ; preds = %if.end4.out_crit_edge, %if.end.out_crit_edge
  %ret.0 = phi i32 [ %call.i, %if.end.out_crit_edge ], [ %call5, %if.end4.out_crit_edge ]
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %out, %if.end4.cleanup.sink.split_crit_edge
  %retval.0.ph = phi i32 [ %ret.0, %out ], [ %count, %if.end4.cleanup.sink.split_crit_edge ]
  call void @iscsit_put_tpg(ptr noundef %add.ptr) #12
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #12
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iscsit_ta_login_timeout(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @iscsi_tpg_attrib_netif_timeout_show(ptr noundef %item, ptr nocapture noundef writeonly %page) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %item, i32 -704
  %call1 = tail call i32 @iscsit_get_tpg(ptr noundef %add.ptr) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %netif_timeout = getelementptr i8, ptr %item, i32 396
  %0 = ptrtoint ptr %netif_timeout to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %netif_timeout, align 4
  %call2 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %page, ptr noundef nonnull @.str.83, i32 noundef %1)
  tail call void @iscsit_put_tpg(ptr noundef %add.ptr) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @iscsi_tpg_attrib_netif_timeout_store(ptr noundef %item, ptr noundef %page, i32 noundef %count) #2 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %item, i32 -704
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #12
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %val, align 4, !annotation !465
  %call1 = tail call i32 @iscsit_get_tpg(ptr noundef %add.ptr) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i = call i32 @kstrtouint(ptr noundef %page, i32 noundef 0, ptr noundef nonnull %val) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end4, label %if.end.out_crit_edge

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

if.end4:                                          ; preds = %if.end
  %1 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %val, align 4
  %call5 = call i32 @iscsit_ta_netif_timeout(ptr noundef %add.ptr, i32 noundef %2) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %cmp6 = icmp slt i32 %call5, 0
  br i1 %cmp6, label %if.end4.out_crit_edge, label %if.end4.cleanup.sink.split_crit_edge

if.end4.cleanup.sink.split_crit_edge:             ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.sink.split

if.end4.out_crit_edge:                            ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

out:                                              ; preds = %if.end4.out_crit_edge, %if.end.out_crit_edge
  %ret.0 = phi i32 [ %call.i, %if.end.out_crit_edge ], [ %call5, %if.end4.out_crit_edge ]
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %out, %if.end4.cleanup.sink.split_crit_edge
  %retval.0.ph = phi i32 [ %ret.0, %out ], [ %count, %if.end4.cleanup.sink.split_crit_edge ]
  call void @iscsit_put_tpg(ptr noundef %add.ptr) #12
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #12
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iscsit_ta_netif_timeout(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @iscsi_tpg_attrib_generate_node_acls_show(ptr noundef %item, ptr nocapture noundef writeonly %page) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %item, i32 -704
  %call1 = tail call i32 @iscsit_get_tpg(ptr noundef %add.ptr) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %generate_node_acls = getelementptr i8, ptr %item, i32 400
  %0 = ptrtoint ptr %generate_node_acls to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %generate_node_acls, align 4
  %call2 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %page, ptr noundef nonnull @.str.83, i32 noundef %1)
  tail call void @iscsit_put_tpg(ptr noundef %add.ptr) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @iscsi_tpg_attrib_generate_node_acls_store(ptr noundef %item, ptr noundef %page, i32 noundef %count) #2 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %item, i32 -704
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #12
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %val, align 4, !annotation !465
  %call1 = tail call i32 @iscsit_get_tpg(ptr noundef %add.ptr) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i = call i32 @kstrtouint(ptr noundef %page, i32 noundef 0, ptr noundef nonnull %val) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end4, label %if.end.out_crit_edge

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

if.end4:                                          ; preds = %if.end
  %1 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %val, align 4
  %call5 = call i32 @iscsit_ta_generate_node_acls(ptr noundef %add.ptr, i32 noundef %2) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %cmp6 = icmp slt i32 %call5, 0
  br i1 %cmp6, label %if.end4.out_crit_edge, label %if.end4.cleanup.sink.split_crit_edge

if.end4.cleanup.sink.split_crit_edge:             ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.sink.split

if.end4.out_crit_edge:                            ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

out:                                              ; preds = %if.end4.out_crit_edge, %if.end.out_crit_edge
  %ret.0 = phi i32 [ %call.i, %if.end.out_crit_edge ], [ %call5, %if.end4.out_crit_edge ]
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %out, %if.end4.cleanup.sink.split_crit_edge
  %retval.0.ph = phi i32 [ %ret.0, %out ], [ %count, %if.end4.cleanup.sink.split_crit_edge ]
  call void @iscsit_put_tpg(ptr noundef %add.ptr) #12
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #12
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iscsit_ta_generate_node_acls(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @iscsi_tpg_attrib_default_cmdsn_depth_show(ptr noundef %item, ptr nocapture noundef writeonly %page) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %item, i32 -704
  %call1 = tail call i32 @iscsit_get_tpg(ptr noundef %add.ptr) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %default_cmdsn_depth = getelementptr i8, ptr %item, i32 408
  %0 = ptrtoint ptr %default_cmdsn_depth to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %default_cmdsn_depth, align 4
  %call2 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %page, ptr noundef nonnull @.str.83, i32 noundef %1)
  tail call void @iscsit_put_tpg(ptr noundef %add.ptr) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @iscsi_tpg_attrib_default_cmdsn_depth_store(ptr noundef %item, ptr noundef %page, i32 noundef %count) #2 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %item, i32 -704
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #12
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %val, align 4, !annotation !465
  %call1 = tail call i32 @iscsit_get_tpg(ptr noundef %add.ptr) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i = call i32 @kstrtouint(ptr noundef %page, i32 noundef 0, ptr noundef nonnull %val) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end4, label %if.end.out_crit_edge

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

if.end4:                                          ; preds = %if.end
  %1 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %val, align 4
  %call5 = call i32 @iscsit_ta_default_cmdsn_depth(ptr noundef %add.ptr, i32 noundef %2) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %cmp6 = icmp slt i32 %call5, 0
  br i1 %cmp6, label %if.end4.out_crit_edge, label %if.end4.cleanup.sink.split_crit_edge

if.end4.cleanup.sink.split_crit_edge:             ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.sink.split

if.end4.out_crit_edge:                            ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

out:                                              ; preds = %if.end4.out_crit_edge, %if.end.out_crit_edge
  %ret.0 = phi i32 [ %call.i, %if.end.out_crit_edge ], [ %call5, %if.end4.out_crit_edge ]
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %out, %if.end4.cleanup.sink.split_crit_edge
  %retval.0.ph = phi i32 [ %ret.0, %out ], [ %count, %if.end4.cleanup.sink.split_crit_edge ]
  call void @iscsit_put_tpg(ptr noundef %add.ptr) #12
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #12
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iscsit_ta_default_cmdsn_depth(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @iscsi_tpg_attrib_cache_dynamic_acls_show(ptr noundef %item, ptr nocapture noundef writeonly %page) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %item, i32 -704
  %call1 = tail call i32 @iscsit_get_tpg(ptr noundef %add.ptr) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %cache_dynamic_acls = getelementptr i8, ptr %item, i32 404
  %0 = ptrtoint ptr %cache_dynamic_acls to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %cache_dynamic_acls, align 4
  %call2 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %page, ptr noundef nonnull @.str.83, i32 noundef %1)
  tail call void @iscsit_put_tpg(ptr noundef %add.ptr) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @iscsi_tpg_attrib_cache_dynamic_acls_store(ptr noundef %item, ptr noundef %page, i32 noundef %count) #2 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %item, i32 -704
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #12
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %val, align 4, !annotation !465
  %call1 = tail call i32 @iscsit_get_tpg(ptr noundef %add.ptr) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i = call i32 @kstrtouint(ptr noundef %page, i32 noundef 0, ptr noundef nonnull %val) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end4, label %if.end.out_crit_edge

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

if.end4:                                          ; preds = %if.end
  %1 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %val, align 4
  %call5 = call i32 @iscsit_ta_cache_dynamic_acls(ptr noundef %add.ptr, i32 noundef %2) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %cmp6 = icmp slt i32 %call5, 0
  br i1 %cmp6, label %if.end4.out_crit_edge, label %if.end4.cleanup.sink.split_crit_edge

if.end4.cleanup.sink.split_crit_edge:             ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.sink.split

if.end4.out_crit_edge:                            ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

out:                                              ; preds = %if.end4.out_crit_edge, %if.end.out_crit_edge
  %ret.0 = phi i32 [ %call.i, %if.end.out_crit_edge ], [ %call5, %if.end4.out_crit_edge ]
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %out, %if.end4.cleanup.sink.split_crit_edge
  %retval.0.ph = phi i32 [ %ret.0, %out ], [ %count, %if.end4.cleanup.sink.split_crit_edge ]
  call void @iscsit_put_tpg(ptr noundef %add.ptr) #12
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #12
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iscsit_ta_cache_dynamic_acls(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @iscsi_tpg_attrib_demo_mode_write_protect_show(ptr noundef %item, ptr nocapture noundef writeonly %page) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %item, i32 -704
  %call1 = tail call i32 @iscsit_get_tpg(ptr noundef %add.ptr) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %demo_mode_write_protect = getelementptr i8, ptr %item, i32 412
  %0 = ptrtoint ptr %demo_mode_write_protect to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %demo_mode_write_protect, align 4
  %call2 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %page, ptr noundef nonnull @.str.83, i32 noundef %1)
  tail call void @iscsit_put_tpg(ptr noundef %add.ptr) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @iscsi_tpg_attrib_demo_mode_write_protect_store(ptr noundef %item, ptr noundef %page, i32 noundef %count) #2 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %item, i32 -704
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #12
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %val, align 4, !annotation !465
  %call1 = tail call i32 @iscsit_get_tpg(ptr noundef %add.ptr) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i = call i32 @kstrtouint(ptr noundef %page, i32 noundef 0, ptr noundef nonnull %val) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end4, label %if.end.out_crit_edge

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

if.end4:                                          ; preds = %if.end
  %1 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %val, align 4
  %call5 = call i32 @iscsit_ta_demo_mode_write_protect(ptr noundef %add.ptr, i32 noundef %2) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %cmp6 = icmp slt i32 %call5, 0
  br i1 %cmp6, label %if.end4.out_crit_edge, label %if.end4.cleanup.sink.split_crit_edge

if.end4.cleanup.sink.split_crit_edge:             ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.sink.split

if.end4.out_crit_edge:                            ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

out:                                              ; preds = %if.end4.out_crit_edge, %if.end.out_crit_edge
  %ret.0 = phi i32 [ %call.i, %if.end.out_crit_edge ], [ %call5, %if.end4.out_crit_edge ]
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %out, %if.end4.cleanup.sink.split_crit_edge
  %retval.0.ph = phi i32 [ %ret.0, %out ], [ %count, %if.end4.cleanup.sink.split_crit_edge ]
  call void @iscsit_put_tpg(ptr noundef %add.ptr) #12
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #12
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iscsit_ta_demo_mode_write_protect(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @iscsi_tpg_attrib_prod_mode_write_protect_show(ptr noundef %item, ptr nocapture noundef writeonly %page) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %item, i32 -704
  %call1 = tail call i32 @iscsit_get_tpg(ptr noundef %add.ptr) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %prod_mode_write_protect = getelementptr i8, ptr %item, i32 416
  %0 = ptrtoint ptr %prod_mode_write_protect to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %prod_mode_write_protect, align 4
  %call2 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %page, ptr noundef nonnull @.str.83, i32 noundef %1)
  tail call void @iscsit_put_tpg(ptr noundef %add.ptr) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @iscsi_tpg_attrib_prod_mode_write_protect_store(ptr noundef %item, ptr noundef %page, i32 noundef %count) #2 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %item, i32 -704
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #12
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %val, align 4, !annotation !465
  %call1 = tail call i32 @iscsit_get_tpg(ptr noundef %add.ptr) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i = call i32 @kstrtouint(ptr noundef %page, i32 noundef 0, ptr noundef nonnull %val) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end4, label %if.end.out_crit_edge

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

if.end4:                                          ; preds = %if.end
  %1 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %val, align 4
  %call5 = call i32 @iscsit_ta_prod_mode_write_protect(ptr noundef %add.ptr, i32 noundef %2) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %cmp6 = icmp slt i32 %call5, 0
  br i1 %cmp6, label %if.end4.out_crit_edge, label %if.end4.cleanup.sink.split_crit_edge

if.end4.cleanup.sink.split_crit_edge:             ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.sink.split

if.end4.out_crit_edge:                            ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

out:                                              ; preds = %if.end4.out_crit_edge, %if.end.out_crit_edge
  %ret.0 = phi i32 [ %call.i, %if.end.out_crit_edge ], [ %call5, %if.end4.out_crit_edge ]
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %out, %if.end4.cleanup.sink.split_crit_edge
  %retval.0.ph = phi i32 [ %ret.0, %out ], [ %count, %if.end4.cleanup.sink.split_crit_edge ]
  call void @iscsit_put_tpg(ptr noundef %add.ptr) #12
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #12
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iscsit_ta_prod_mode_write_protect(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @iscsi_tpg_attrib_demo_mode_discovery_show(ptr noundef %item, ptr nocapture noundef writeonly %page) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %item, i32 -704
  %call1 = tail call i32 @iscsit_get_tpg(ptr noundef %add.ptr) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %demo_mode_discovery = getelementptr i8, ptr %item, i32 420
  %0 = ptrtoint ptr %demo_mode_discovery to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %demo_mode_discovery, align 4
  %call2 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %page, ptr noundef nonnull @.str.83, i32 noundef %1)
  tail call void @iscsit_put_tpg(ptr noundef %add.ptr) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @iscsi_tpg_attrib_demo_mode_discovery_store(ptr noundef %item, ptr noundef %page, i32 noundef %count) #2 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %item, i32 -704
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #12
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %val, align 4, !annotation !465
  %call1 = tail call i32 @iscsit_get_tpg(ptr noundef %add.ptr) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i = call i32 @kstrtouint(ptr noundef %page, i32 noundef 0, ptr noundef nonnull %val) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end4, label %if.end.out_crit_edge

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

if.end4:                                          ; preds = %if.end
  %1 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %val, align 4
  %call5 = call i32 @iscsit_ta_demo_mode_discovery(ptr noundef %add.ptr, i32 noundef %2) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %cmp6 = icmp slt i32 %call5, 0
  br i1 %cmp6, label %if.end4.out_crit_edge, label %if.end4.cleanup.sink.split_crit_edge

if.end4.cleanup.sink.split_crit_edge:             ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.sink.split

if.end4.out_crit_edge:                            ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

out:                                              ; preds = %if.end4.out_crit_edge, %if.end.out_crit_edge
  %ret.0 = phi i32 [ %call.i, %if.end.out_crit_edge ], [ %call5, %if.end4.out_crit_edge ]
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %out, %if.end4.cleanup.sink.split_crit_edge
  %retval.0.ph = phi i32 [ %ret.0, %out ], [ %count, %if.end4.cleanup.sink.split_crit_edge ]
  call void @iscsit_put_tpg(ptr noundef %add.ptr) #12
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #12
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iscsit_ta_demo_mode_discovery(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @iscsi_tpg_attrib_default_erl_show(ptr noundef %item, ptr nocapture noundef writeonly %page) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %item, i32 -704
  %call1 = tail call i32 @iscsit_get_tpg(ptr noundef %add.ptr) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %default_erl = getelementptr i8, ptr %item, i32 424
  %0 = ptrtoint ptr %default_erl to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %default_erl, align 4
  %call2 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %page, ptr noundef nonnull @.str.83, i32 noundef %1)
  tail call void @iscsit_put_tpg(ptr noundef %add.ptr) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @iscsi_tpg_attrib_default_erl_store(ptr noundef %item, ptr noundef %page, i32 noundef %count) #2 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %item, i32 -704
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #12
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %val, align 4, !annotation !465
  %call1 = tail call i32 @iscsit_get_tpg(ptr noundef %add.ptr) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i = call i32 @kstrtouint(ptr noundef %page, i32 noundef 0, ptr noundef nonnull %val) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end4, label %if.end.out_crit_edge

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

if.end4:                                          ; preds = %if.end
  %1 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %val, align 4
  %call5 = call i32 @iscsit_ta_default_erl(ptr noundef %add.ptr, i32 noundef %2) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %cmp6 = icmp slt i32 %call5, 0
  br i1 %cmp6, label %if.end4.out_crit_edge, label %if.end4.cleanup.sink.split_crit_edge

if.end4.cleanup.sink.split_crit_edge:             ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.sink.split

if.end4.out_crit_edge:                            ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

out:                                              ; preds = %if.end4.out_crit_edge, %if.end.out_crit_edge
  %ret.0 = phi i32 [ %call.i, %if.end.out_crit_edge ], [ %call5, %if.end4.out_crit_edge ]
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %out, %if.end4.cleanup.sink.split_crit_edge
  %retval.0.ph = phi i32 [ %ret.0, %out ], [ %count, %if.end4.cleanup.sink.split_crit_edge ]
  call void @iscsit_put_tpg(ptr noundef %add.ptr) #12
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #12
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iscsit_ta_default_erl(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @iscsi_tpg_attrib_t10_pi_show(ptr noundef %item, ptr nocapture noundef writeonly %page) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %item, i32 -704
  %call1 = tail call i32 @iscsit_get_tpg(ptr noundef %add.ptr) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %t10_pi = getelementptr i8, ptr %item, i32 428
  %0 = ptrtoint ptr %t10_pi to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %t10_pi, align 4
  %conv = zext i8 %1 to i32
  %call2 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %page, ptr noundef nonnull @.str.83, i32 noundef %conv)
  tail call void @iscsit_put_tpg(ptr noundef %add.ptr) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @iscsi_tpg_attrib_t10_pi_store(ptr noundef %item, ptr noundef %page, i32 noundef %count) #2 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %item, i32 -704
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #12
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %val, align 4, !annotation !465
  %call1 = tail call i32 @iscsit_get_tpg(ptr noundef %add.ptr) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i = call i32 @kstrtouint(ptr noundef %page, i32 noundef 0, ptr noundef nonnull %val) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end4, label %if.end.out_crit_edge

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

if.end4:                                          ; preds = %if.end
  %1 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %val, align 4
  %call5 = call i32 @iscsit_ta_t10_pi(ptr noundef %add.ptr, i32 noundef %2) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %cmp6 = icmp slt i32 %call5, 0
  br i1 %cmp6, label %if.end4.out_crit_edge, label %if.end4.cleanup.sink.split_crit_edge

if.end4.cleanup.sink.split_crit_edge:             ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.sink.split

if.end4.out_crit_edge:                            ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

out:                                              ; preds = %if.end4.out_crit_edge, %if.end.out_crit_edge
  %ret.0 = phi i32 [ %call.i, %if.end.out_crit_edge ], [ %call5, %if.end4.out_crit_edge ]
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %out, %if.end4.cleanup.sink.split_crit_edge
  %retval.0.ph = phi i32 [ %ret.0, %out ], [ %count, %if.end4.cleanup.sink.split_crit_edge ]
  call void @iscsit_put_tpg(ptr noundef %add.ptr) #12
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #12
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iscsit_ta_t10_pi(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @iscsi_tpg_attrib_fabric_prot_type_show(ptr noundef %item, ptr nocapture noundef writeonly %page) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %item, i32 -704
  %call1 = tail call i32 @iscsit_get_tpg(ptr noundef %add.ptr) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %fabric_prot_type = getelementptr i8, ptr %item, i32 432
  %0 = ptrtoint ptr %fabric_prot_type to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %fabric_prot_type, align 4
  %call2 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %page, ptr noundef nonnull @.str.83, i32 noundef %1)
  tail call void @iscsit_put_tpg(ptr noundef %add.ptr) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @iscsi_tpg_attrib_fabric_prot_type_store(ptr noundef %item, ptr noundef %page, i32 noundef %count) #2 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %item, i32 -704
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #12
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %val, align 4, !annotation !465
  %call1 = tail call i32 @iscsit_get_tpg(ptr noundef %add.ptr) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i = call i32 @kstrtouint(ptr noundef %page, i32 noundef 0, ptr noundef nonnull %val) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end4, label %if.end.out_crit_edge

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

if.end4:                                          ; preds = %if.end
  %1 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %val, align 4
  %call5 = call i32 @iscsit_ta_fabric_prot_type(ptr noundef %add.ptr, i32 noundef %2) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %cmp6 = icmp slt i32 %call5, 0
  br i1 %cmp6, label %if.end4.out_crit_edge, label %if.end4.cleanup.sink.split_crit_edge

if.end4.cleanup.sink.split_crit_edge:             ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.sink.split

if.end4.out_crit_edge:                            ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

out:                                              ; preds = %if.end4.out_crit_edge, %if.end.out_crit_edge
  %ret.0 = phi i32 [ %call.i, %if.end.out_crit_edge ], [ %call5, %if.end4.out_crit_edge ]
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %out, %if.end4.cleanup.sink.split_crit_edge
  %retval.0.ph = phi i32 [ %ret.0, %out ], [ %count, %if.end4.cleanup.sink.split_crit_edge ]
  call void @iscsit_put_tpg(ptr noundef %add.ptr) #12
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #12
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iscsit_ta_fabric_prot_type(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @iscsi_tpg_attrib_tpg_enabled_sendtargets_show(ptr noundef %item, ptr nocapture noundef writeonly %page) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %item, i32 -704
  %call1 = tail call i32 @iscsit_get_tpg(ptr noundef %add.ptr) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %tpg_enabled_sendtargets = getelementptr i8, ptr %item, i32 436
  %0 = ptrtoint ptr %tpg_enabled_sendtargets to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %tpg_enabled_sendtargets, align 4
  %call2 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %page, ptr noundef nonnull @.str.83, i32 noundef %1)
  tail call void @iscsit_put_tpg(ptr noundef %add.ptr) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @iscsi_tpg_attrib_tpg_enabled_sendtargets_store(ptr noundef %item, ptr noundef %page, i32 noundef %count) #2 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %item, i32 -704
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #12
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %val, align 4, !annotation !465
  %call1 = tail call i32 @iscsit_get_tpg(ptr noundef %add.ptr) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i = call i32 @kstrtouint(ptr noundef %page, i32 noundef 0, ptr noundef nonnull %val) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end4, label %if.end.out_crit_edge

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

if.end4:                                          ; preds = %if.end
  %1 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %val, align 4
  %call5 = call i32 @iscsit_ta_tpg_enabled_sendtargets(ptr noundef %add.ptr, i32 noundef %2) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %cmp6 = icmp slt i32 %call5, 0
  br i1 %cmp6, label %if.end4.out_crit_edge, label %if.end4.cleanup.sink.split_crit_edge

if.end4.cleanup.sink.split_crit_edge:             ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.sink.split

if.end4.out_crit_edge:                            ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

out:                                              ; preds = %if.end4.out_crit_edge, %if.end.out_crit_edge
  %ret.0 = phi i32 [ %call.i, %if.end.out_crit_edge ], [ %call5, %if.end4.out_crit_edge ]
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %out, %if.end4.cleanup.sink.split_crit_edge
  %retval.0.ph = phi i32 [ %ret.0, %out ], [ %count, %if.end4.cleanup.sink.split_crit_edge ]
  call void @iscsit_put_tpg(ptr noundef %add.ptr) #12
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #12
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iscsit_ta_tpg_enabled_sendtargets(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @iscsi_tpg_attrib_login_keys_workaround_show(ptr noundef %item, ptr nocapture noundef writeonly %page) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %item, i32 -704
  %call1 = tail call i32 @iscsit_get_tpg(ptr noundef %add.ptr) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %login_keys_workaround = getelementptr i8, ptr %item, i32 440
  %0 = ptrtoint ptr %login_keys_workaround to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %login_keys_workaround, align 4
  %call2 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %page, ptr noundef nonnull @.str.83, i32 noundef %1)
  tail call void @iscsit_put_tpg(ptr noundef %add.ptr) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @iscsi_tpg_attrib_login_keys_workaround_store(ptr noundef %item, ptr noundef %page, i32 noundef %count) #2 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %item, i32 -704
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #12
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %val, align 4, !annotation !465
  %call1 = tail call i32 @iscsit_get_tpg(ptr noundef %add.ptr) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i = call i32 @kstrtouint(ptr noundef %page, i32 noundef 0, ptr noundef nonnull %val) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end4, label %if.end.out_crit_edge

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

if.end4:                                          ; preds = %if.end
  %1 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %val, align 4
  %call5 = call i32 @iscsit_ta_login_keys_workaround(ptr noundef %add.ptr, i32 noundef %2) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %cmp6 = icmp slt i32 %call5, 0
  br i1 %cmp6, label %if.end4.out_crit_edge, label %if.end4.cleanup.sink.split_crit_edge

if.end4.cleanup.sink.split_crit_edge:             ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.sink.split

if.end4.out_crit_edge:                            ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

out:                                              ; preds = %if.end4.out_crit_edge, %if.end.out_crit_edge
  %ret.0 = phi i32 [ %call.i, %if.end.out_crit_edge ], [ %call5, %if.end4.out_crit_edge ]
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %out, %if.end4.cleanup.sink.split_crit_edge
  %retval.0.ph = phi i32 [ %ret.0, %out ], [ %count, %if.end4.cleanup.sink.split_crit_edge ]
  call void @iscsit_put_tpg(ptr noundef %add.ptr) #12
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #12
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iscsit_ta_login_keys_workaround(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @iscsi_tpg_auth_userid_show(ptr noundef %item, ptr nocapture noundef writeonly %page) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call zeroext i1 @capable(i32 noundef 21) #12
  br i1 %call.i, label %if.end.i, label %entry.__iscsi_tpg_auth_userid_show.exit_crit_edge

entry.__iscsi_tpg_auth_userid_show.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %__iscsi_tpg_auth_userid_show.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %userid.i = getelementptr i8, ptr %item, i32 380
  %call1.i = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %page, i32 noundef 4096, ptr noundef nonnull @.str.48, ptr noundef %userid.i) #12
  br label %__iscsi_tpg_auth_userid_show.exit

__iscsi_tpg_auth_userid_show.exit:                ; preds = %if.end.i, %entry.__iscsi_tpg_auth_userid_show.exit_crit_edge
  %retval.0.i = phi i32 [ %call1.i, %if.end.i ], [ -1, %entry.__iscsi_tpg_auth_userid_show.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @iscsi_tpg_auth_userid_store(ptr nocapture noundef %item, ptr noundef %page, i32 noundef %count) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call zeroext i1 @capable(i32 noundef 21) #12
  br i1 %call.i, label %if.end.i, label %entry.__iscsi_tpg_auth_userid_store.exit_crit_edge

entry.__iscsi_tpg_auth_userid_store.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %__iscsi_tpg_auth_userid_store.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %tpg_demo_auth.i = getelementptr i8, ptr %item, i32 368
  %userid.i = getelementptr i8, ptr %item, i32 380
  %call1.i = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %userid.i, i32 noundef 256, ptr noundef nonnull @.str.25, ptr noundef %page) #12
  %call4.i = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(5) @.str.49, ptr noundef %userid.i, i32 noundef 4) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %tobool.not.i = icmp ne i32 %call4.i, 0
  %0 = ptrtoint ptr %tpg_demo_auth.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %tpg_demo_auth.i, align 4
  %and.i = and i32 %1, -2
  %masksel.i = zext i1 %tobool.not.i to i32
  %storemerge.i = or i32 %and.i, %masksel.i
  store i32 %storemerge.i, ptr %tpg_demo_auth.i, align 4
  %2 = and i32 %1, 12
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %2)
  %.not.i = icmp eq i32 %2, 12
  %.sink.i = zext i1 %.not.i to i32
  %authenticate_target.i = getelementptr i8, ptr %item, i32 372
  %3 = ptrtoint ptr %authenticate_target.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %.sink.i, ptr %authenticate_target.i, align 4
  br label %__iscsi_tpg_auth_userid_store.exit

__iscsi_tpg_auth_userid_store.exit:               ; preds = %if.end.i, %entry.__iscsi_tpg_auth_userid_store.exit_crit_edge
  %retval.0.i = phi i32 [ -1, %entry.__iscsi_tpg_auth_userid_store.exit_crit_edge ], [ %count, %if.end.i ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @iscsi_tpg_auth_password_show(ptr noundef %item, ptr nocapture noundef writeonly %page) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call zeroext i1 @capable(i32 noundef 21) #12
  br i1 %call.i, label %if.end.i, label %entry.__iscsi_tpg_auth_password_show.exit_crit_edge

entry.__iscsi_tpg_auth_password_show.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %__iscsi_tpg_auth_password_show.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %password.i = getelementptr i8, ptr %item, i32 636
  %call1.i = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %page, i32 noundef 4096, ptr noundef nonnull @.str.48, ptr noundef %password.i) #12
  br label %__iscsi_tpg_auth_password_show.exit

__iscsi_tpg_auth_password_show.exit:              ; preds = %if.end.i, %entry.__iscsi_tpg_auth_password_show.exit_crit_edge
  %retval.0.i = phi i32 [ %call1.i, %if.end.i ], [ -1, %entry.__iscsi_tpg_auth_password_show.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @iscsi_tpg_auth_password_store(ptr nocapture noundef %item, ptr noundef %page, i32 noundef %count) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call zeroext i1 @capable(i32 noundef 21) #12
  br i1 %call.i, label %if.end.i, label %entry.__iscsi_tpg_auth_password_store.exit_crit_edge

entry.__iscsi_tpg_auth_password_store.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %__iscsi_tpg_auth_password_store.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %tpg_demo_auth.i = getelementptr i8, ptr %item, i32 368
  %password.i = getelementptr i8, ptr %item, i32 636
  %call1.i = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %password.i, i32 noundef 256, ptr noundef nonnull @.str.25, ptr noundef %page) #12
  %call4.i = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(5) @.str.49, ptr noundef %password.i, i32 noundef 4) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %tobool.not.i = icmp eq i32 %call4.i, 0
  %0 = ptrtoint ptr %tpg_demo_auth.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %tpg_demo_auth.i, align 4
  %and.i = and i32 %1, -3
  %masksel.i = select i1 %tobool.not.i, i32 0, i32 2
  %storemerge.i = or i32 %and.i, %masksel.i
  store i32 %storemerge.i, ptr %tpg_demo_auth.i, align 4
  %2 = and i32 %1, 12
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %2)
  %.not.i = icmp eq i32 %2, 12
  %.sink.i = zext i1 %.not.i to i32
  %authenticate_target.i = getelementptr i8, ptr %item, i32 372
  %3 = ptrtoint ptr %authenticate_target.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %.sink.i, ptr %authenticate_target.i, align 4
  br label %__iscsi_tpg_auth_password_store.exit

__iscsi_tpg_auth_password_store.exit:             ; preds = %if.end.i, %entry.__iscsi_tpg_auth_password_store.exit_crit_edge
  %retval.0.i = phi i32 [ -1, %entry.__iscsi_tpg_auth_password_store.exit_crit_edge ], [ %count, %if.end.i ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @iscsi_tpg_auth_authenticate_target_show(ptr nocapture noundef readonly %item, ptr nocapture noundef writeonly %page) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call zeroext i1 @capable(i32 noundef 21) #12
  br i1 %call.i, label %if.end.i, label %entry.__iscsi_tpg_auth_authenticate_target_show.exit_crit_edge

entry.__iscsi_tpg_auth_authenticate_target_show.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %__iscsi_tpg_auth_authenticate_target_show.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %authenticate_target.i = getelementptr i8, ptr %item, i32 372
  %0 = ptrtoint ptr %authenticate_target.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %authenticate_target.i, align 4
  %call1.i = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %page, i32 noundef 4096, ptr noundef nonnull @.str.52, i32 noundef %1) #12
  br label %__iscsi_tpg_auth_authenticate_target_show.exit

__iscsi_tpg_auth_authenticate_target_show.exit:   ; preds = %if.end.i, %entry.__iscsi_tpg_auth_authenticate_target_show.exit_crit_edge
  %retval.0.i = phi i32 [ %call1.i, %if.end.i ], [ -1, %entry.__iscsi_tpg_auth_authenticate_target_show.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @iscsi_tpg_auth_userid_mutual_show(ptr noundef %item, ptr nocapture noundef writeonly %page) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call zeroext i1 @capable(i32 noundef 21) #12
  br i1 %call.i, label %if.end.i, label %entry.__iscsi_tpg_auth_userid_mutual_show.exit_crit_edge

entry.__iscsi_tpg_auth_userid_mutual_show.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %__iscsi_tpg_auth_userid_mutual_show.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %userid_mutual.i = getelementptr i8, ptr %item, i32 892
  %call1.i = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %page, i32 noundef 4096, ptr noundef nonnull @.str.48, ptr noundef %userid_mutual.i) #12
  br label %__iscsi_tpg_auth_userid_mutual_show.exit

__iscsi_tpg_auth_userid_mutual_show.exit:         ; preds = %if.end.i, %entry.__iscsi_tpg_auth_userid_mutual_show.exit_crit_edge
  %retval.0.i = phi i32 [ %call1.i, %if.end.i ], [ -1, %entry.__iscsi_tpg_auth_userid_mutual_show.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @iscsi_tpg_auth_userid_mutual_store(ptr nocapture noundef %item, ptr noundef %page, i32 noundef %count) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call zeroext i1 @capable(i32 noundef 21) #12
  br i1 %call.i, label %if.end.i, label %entry.__iscsi_tpg_auth_userid_mutual_store.exit_crit_edge

entry.__iscsi_tpg_auth_userid_mutual_store.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %__iscsi_tpg_auth_userid_mutual_store.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %tpg_demo_auth.i = getelementptr i8, ptr %item, i32 368
  %userid_mutual.i = getelementptr i8, ptr %item, i32 892
  %call1.i = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %userid_mutual.i, i32 noundef 256, ptr noundef nonnull @.str.25, ptr noundef %page) #12
  %call4.i = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(5) @.str.49, ptr noundef %userid_mutual.i, i32 noundef 4) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %tobool.not.i = icmp eq i32 %call4.i, 0
  %0 = ptrtoint ptr %tpg_demo_auth.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %tpg_demo_auth.i, align 4
  %and.i = and i32 %1, -5
  %masksel.i = select i1 %tobool.not.i, i32 0, i32 4
  %storemerge.i = or i32 %and.i, %masksel.i
  store i32 %storemerge.i, ptr %tpg_demo_auth.i, align 4
  %2 = and i32 %storemerge.i, 12
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %2)
  %.not.i = icmp eq i32 %2, 12
  %.sink.i = zext i1 %.not.i to i32
  %authenticate_target.i = getelementptr i8, ptr %item, i32 372
  %3 = ptrtoint ptr %authenticate_target.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %.sink.i, ptr %authenticate_target.i, align 4
  br label %__iscsi_tpg_auth_userid_mutual_store.exit

__iscsi_tpg_auth_userid_mutual_store.exit:        ; preds = %if.end.i, %entry.__iscsi_tpg_auth_userid_mutual_store.exit_crit_edge
  %retval.0.i = phi i32 [ -1, %entry.__iscsi_tpg_auth_userid_mutual_store.exit_crit_edge ], [ %count, %if.end.i ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @iscsi_tpg_auth_password_mutual_show(ptr noundef %item, ptr nocapture noundef writeonly %page) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call zeroext i1 @capable(i32 noundef 21) #12
  br i1 %call.i, label %if.end.i, label %entry.__iscsi_tpg_auth_password_mutual_show.exit_crit_edge

entry.__iscsi_tpg_auth_password_mutual_show.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %__iscsi_tpg_auth_password_mutual_show.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %password_mutual.i = getelementptr i8, ptr %item, i32 1148
  %call1.i = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %page, i32 noundef 4096, ptr noundef nonnull @.str.48, ptr noundef %password_mutual.i) #12
  br label %__iscsi_tpg_auth_password_mutual_show.exit

__iscsi_tpg_auth_password_mutual_show.exit:       ; preds = %if.end.i, %entry.__iscsi_tpg_auth_password_mutual_show.exit_crit_edge
  %retval.0.i = phi i32 [ %call1.i, %if.end.i ], [ -1, %entry.__iscsi_tpg_auth_password_mutual_show.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @iscsi_tpg_auth_password_mutual_store(ptr nocapture noundef %item, ptr noundef %page, i32 noundef %count) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call zeroext i1 @capable(i32 noundef 21) #12
  br i1 %call.i, label %if.end.i, label %entry.__iscsi_tpg_auth_password_mutual_store.exit_crit_edge

entry.__iscsi_tpg_auth_password_mutual_store.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %__iscsi_tpg_auth_password_mutual_store.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %tpg_demo_auth.i = getelementptr i8, ptr %item, i32 368
  %password_mutual.i = getelementptr i8, ptr %item, i32 1148
  %call1.i = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %password_mutual.i, i32 noundef 256, ptr noundef nonnull @.str.25, ptr noundef %page) #12
  %call4.i = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(5) @.str.49, ptr noundef %password_mutual.i, i32 noundef 4) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %tobool.not.i = icmp eq i32 %call4.i, 0
  %0 = ptrtoint ptr %tpg_demo_auth.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %tpg_demo_auth.i, align 4
  %and.i = and i32 %1, -9
  %masksel.i = select i1 %tobool.not.i, i32 0, i32 8
  %storemerge.i = or i32 %and.i, %masksel.i
  store i32 %storemerge.i, ptr %tpg_demo_auth.i, align 4
  %2 = and i32 %storemerge.i, 12
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %2)
  %.not.i = icmp eq i32 %2, 12
  %.sink.i = zext i1 %.not.i to i32
  %authenticate_target.i = getelementptr i8, ptr %item, i32 372
  %3 = ptrtoint ptr %authenticate_target.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %.sink.i, ptr %authenticate_target.i, align 4
  br label %__iscsi_tpg_auth_password_mutual_store.exit

__iscsi_tpg_auth_password_mutual_store.exit:      ; preds = %if.end.i, %entry.__iscsi_tpg_auth_password_mutual_store.exit_crit_edge
  %retval.0.i = phi i32 [ -1, %entry.__iscsi_tpg_auth_password_mutual_store.exit_crit_edge ], [ %count, %if.end.i ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @iscsi_tpg_param_AuthMethod_show(ptr noundef %item, ptr nocapture noundef writeonly %page) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %item, i32 -864
  %call1 = tail call i32 @iscsit_get_tpg(ptr noundef %add.ptr) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %param_list = getelementptr i8, ptr %item, i32 1324
  %0 = ptrtoint ptr %param_list to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %param_list, align 4
  %call2 = tail call ptr @iscsi_find_param_from_key(ptr noundef nonnull @.str.61, ptr noundef %1) #12
  %tobool.not = icmp eq ptr %call2, null
  br i1 %tobool.not, label %if.end.cleanup.sink.split_crit_edge, label %if.end4

if.end.cleanup.sink.split_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.sink.split

if.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %value = getelementptr inbounds %struct.iscsi_param, ptr %call2, i32 0, i32 1
  %2 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %value, align 4
  %call5 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %page, i32 noundef 4096, ptr noundef nonnull @.str.48, ptr noundef %3)
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.end4, %if.end.cleanup.sink.split_crit_edge
  %retval.0.ph = phi i32 [ %call5, %if.end4 ], [ -22, %if.end.cleanup.sink.split_crit_edge ]
  tail call void @iscsit_put_tpg(ptr noundef %add.ptr) #12
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @iscsi_tpg_param_AuthMethod_store(ptr noundef %item, ptr noundef %page, i32 noundef %count) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %item, i32 -864
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 4096) #17
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %call7.i.i, i32 noundef 4096, ptr noundef nonnull @.str.97, ptr noundef nonnull @.str.61, ptr noundef %page)
  %sub = add i32 %call2, -1
  %arrayidx = getelementptr i8, ptr %call7.i.i, i32 %sub
  %1 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %2 to i32
  %arrayidx3 = getelementptr [0 x i8], ptr @_ctype, i32 0, i32 %conv
  %3 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %arrayidx3, align 1
  %5 = and i8 %4, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %cmp.not = icmp eq i8 %5, 0
  br i1 %cmp.not, label %if.end.if.end9_crit_edge, label %if.then6

if.end.if.end9_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end9

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 0, ptr %arrayidx, align 1
  br label %if.end9

if.end9:                                          ; preds = %if.then6, %if.end.if.end9_crit_edge
  %call10 = tail call i32 @iscsit_get_tpg(ptr noundef %add.ptr) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %cmp11 = icmp slt i32 %call10, 0
  br i1 %cmp11, label %if.then13, label %if.end14

if.then13:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #12
  br label %cleanup

if.end14:                                         ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #14
  %param_list = getelementptr i8, ptr %item, i32 1324
  %7 = ptrtoint ptr %param_list to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %param_list, align 4
  %call15 = tail call i32 @iscsi_change_param_value(ptr noundef nonnull %call7.i.i, ptr noundef %8, i32 noundef 1) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %cmp16 = icmp slt i32 %call15, 0
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #12
  tail call void @iscsit_put_tpg(ptr noundef %add.ptr) #12
  %.count = select i1 %cmp16, i32 -22, i32 %count
  br label %cleanup

cleanup:                                          ; preds = %if.end14, %if.then13, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %if.then13 ], [ -12, %entry.cleanup_crit_edge ], [ %.count, %if.end14 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iscsi_change_param_value(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #10

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @iscsi_tpg_param_HeaderDigest_show(ptr noundef %item, ptr nocapture noundef writeonly %page) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %item, i32 -864
  %call1 = tail call i32 @iscsit_get_tpg(ptr noundef %add.ptr) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %param_list = getelementptr i8, ptr %item, i32 1324
  %0 = ptrtoint ptr %param_list to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %param_list, align 4
  %call2 = tail call ptr @iscsi_find_param_from_key(ptr noundef nonnull @.str.98, ptr noundef %1) #12
  %tobool.not = icmp eq ptr %call2, null
  br i1 %tobool.not, label %if.end.cleanup.sink.split_crit_edge, label %if.end4

if.end.cleanup.sink.split_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.sink.split

if.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %value = getelementptr inbounds %struct.iscsi_param, ptr %call2, i32 0, i32 1
  %2 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %value, align 4
  %call5 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %page, i32 noundef 4096, ptr noundef nonnull @.str.48, ptr noundef %3)
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.end4, %if.end.cleanup.sink.split_crit_edge
  %retval.0.ph = phi i32 [ %call5, %if.end4 ], [ -22, %if.end.cleanup.sink.split_crit_edge ]
  tail call void @iscsit_put_tpg(ptr noundef %add.ptr) #12
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @iscsi_tpg_param_HeaderDigest_store(ptr noundef %item, ptr noundef %page, i32 noundef %count) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %item, i32 -864
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 4096) #17
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %call7.i.i, i32 noundef 4096, ptr noundef nonnull @.str.97, ptr noundef nonnull @.str.98, ptr noundef %page)
  %sub = add i32 %call2, -1
  %arrayidx = getelementptr i8, ptr %call7.i.i, i32 %sub
  %1 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %2 to i32
  %arrayidx3 = getelementptr [0 x i8], ptr @_ctype, i32 0, i32 %conv
  %3 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %arrayidx3, align 1
  %5 = and i8 %4, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %cmp.not = icmp eq i8 %5, 0
  br i1 %cmp.not, label %if.end.if.end9_crit_edge, label %if.then6

if.end.if.end9_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end9

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 0, ptr %arrayidx, align 1
  br label %if.end9

if.end9:                                          ; preds = %if.then6, %if.end.if.end9_crit_edge
  %call10 = tail call i32 @iscsit_get_tpg(ptr noundef %add.ptr) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %cmp11 = icmp slt i32 %call10, 0
  br i1 %cmp11, label %if.then13, label %if.end14

if.then13:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #12
  br label %cleanup

if.end14:                                         ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #14
  %param_list = getelementptr i8, ptr %item, i32 1324
  %7 = ptrtoint ptr %param_list to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %param_list, align 4
  %call15 = tail call i32 @iscsi_change_param_value(ptr noundef nonnull %call7.i.i, ptr noundef %8, i32 noundef 1) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %cmp16 = icmp slt i32 %call15, 0
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #12
  tail call void @iscsit_put_tpg(ptr noundef %add.ptr) #12
  %.count = select i1 %cmp16, i32 -22, i32 %count
  br label %cleanup

cleanup:                                          ; preds = %if.end14, %if.then13, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %if.then13 ], [ -12, %entry.cleanup_crit_edge ], [ %.count, %if.end14 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @iscsi_tpg_param_DataDigest_show(ptr noundef %item, ptr nocapture noundef writeonly %page) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %item, i32 -864
  %call1 = tail call i32 @iscsit_get_tpg(ptr noundef %add.ptr) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %param_list = getelementptr i8, ptr %item, i32 1324
  %0 = ptrtoint ptr %param_list to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %param_list, align 4
  %call2 = tail call ptr @iscsi_find_param_from_key(ptr noundef nonnull @.str.99, ptr noundef %1) #12
  %tobool.not = icmp eq ptr %call2, null
  br i1 %tobool.not, label %if.end.cleanup.sink.split_crit_edge, label %if.end4

if.end.cleanup.sink.split_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.sink.split

if.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %value = getelementptr inbounds %struct.iscsi_param, ptr %call2, i32 0, i32 1
  %2 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %value, align 4
  %call5 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %page, i32 noundef 4096, ptr noundef nonnull @.str.48, ptr noundef %3)
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.end4, %if.end.cleanup.sink.split_crit_edge
  %retval.0.ph = phi i32 [ %call5, %if.end4 ], [ -22, %if.end.cleanup.sink.split_crit_edge ]
  tail call void @iscsit_put_tpg(ptr noundef %add.ptr) #12
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @iscsi_tpg_param_DataDigest_store(ptr noundef %item, ptr noundef %page, i32 noundef %count) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %item, i32 -864
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 4096) #17
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %call7.i.i, i32 noundef 4096, ptr noundef nonnull @.str.97, ptr noundef nonnull @.str.99, ptr noundef %page)
  %sub = add i32 %call2, -1
  %arrayidx = getelementptr i8, ptr %call7.i.i, i32 %sub
  %1 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %2 to i32
  %arrayidx3 = getelementptr [0 x i8], ptr @_ctype, i32 0, i32 %conv
  %3 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %arrayidx3, align 1
  %5 = and i8 %4, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %cmp.not = icmp eq i8 %5, 0
  br i1 %cmp.not, label %if.end.if.end9_crit_edge, label %if.then6

if.end.if.end9_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end9

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 0, ptr %arrayidx, align 1
  br label %if.end9

if.end9:                                          ; preds = %if.then6, %if.end.if.end9_crit_edge
  %call10 = tail call i32 @iscsit_get_tpg(ptr noundef %add.ptr) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %cmp11 = icmp slt i32 %call10, 0
  br i1 %cmp11, label %if.then13, label %if.end14

if.then13:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #12
  br label %cleanup

if.end14:                                         ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #14
  %param_list = getelementptr i8, ptr %item, i32 1324
  %7 = ptrtoint ptr %param_list to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %param_list, align 4
  %call15 = tail call i32 @iscsi_change_param_value(ptr noundef nonnull %call7.i.i, ptr noundef %8, i32 noundef 1) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %cmp16 = icmp slt i32 %call15, 0
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #12
  tail call void @iscsit_put_tpg(ptr noundef %add.ptr) #12
  %.count = select i1 %cmp16, i32 -22, i32 %count
  br label %cleanup

cleanup:                                          ; preds = %if.end14, %if.then13, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %if.then13 ], [ -12, %entry.cleanup_crit_edge ], [ %.count, %if.end14 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @iscsi_tpg_param_MaxConnections_show(ptr noundef %item, ptr nocapture noundef writeonly %page) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %item, i32 -864
  %call1 = tail call i32 @iscsit_get_tpg(ptr noundef %add.ptr) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %param_list = getelementptr i8, ptr %item, i32 1324
  %0 = ptrtoint ptr %param_list to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %param_list, align 4
  %call2 = tail call ptr @iscsi_find_param_from_key(ptr noundef nonnull @.str.100, ptr noundef %1) #12
  %tobool.not = icmp eq ptr %call2, null
  br i1 %tobool.not, label %if.end.cleanup.sink.split_crit_edge, label %if.end4

if.end.cleanup.sink.split_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.sink.split

if.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %value = getelementptr inbounds %struct.iscsi_param, ptr %call2, i32 0, i32 1
  %2 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %value, align 4
  %call5 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %page, i32 noundef 4096, ptr noundef nonnull @.str.48, ptr noundef %3)
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.end4, %if.end.cleanup.sink.split_crit_edge
  %retval.0.ph = phi i32 [ %call5, %if.end4 ], [ -22, %if.end.cleanup.sink.split_crit_edge ]
  tail call void @iscsit_put_tpg(ptr noundef %add.ptr) #12
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @iscsi_tpg_param_MaxConnections_store(ptr noundef %item, ptr noundef %page, i32 noundef %count) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %item, i32 -864
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 4096) #17
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %call7.i.i, i32 noundef 4096, ptr noundef nonnull @.str.97, ptr noundef nonnull @.str.100, ptr noundef %page)
  %sub = add i32 %call2, -1
  %arrayidx = getelementptr i8, ptr %call7.i.i, i32 %sub
  %1 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %2 to i32
  %arrayidx3 = getelementptr [0 x i8], ptr @_ctype, i32 0, i32 %conv
  %3 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %arrayidx3, align 1
  %5 = and i8 %4, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %cmp.not = icmp eq i8 %5, 0
  br i1 %cmp.not, label %if.end.if.end9_crit_edge, label %if.then6

if.end.if.end9_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end9

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 0, ptr %arrayidx, align 1
  br label %if.end9

if.end9:                                          ; preds = %if.then6, %if.end.if.end9_crit_edge
  %call10 = tail call i32 @iscsit_get_tpg(ptr noundef %add.ptr) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %cmp11 = icmp slt i32 %call10, 0
  br i1 %cmp11, label %if.then13, label %if.end14

if.then13:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #12
  br label %cleanup

if.end14:                                         ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #14
  %param_list = getelementptr i8, ptr %item, i32 1324
  %7 = ptrtoint ptr %param_list to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %param_list, align 4
  %call15 = tail call i32 @iscsi_change_param_value(ptr noundef nonnull %call7.i.i, ptr noundef %8, i32 noundef 1) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %cmp16 = icmp slt i32 %call15, 0
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #12
  tail call void @iscsit_put_tpg(ptr noundef %add.ptr) #12
  %.count = select i1 %cmp16, i32 -22, i32 %count
  br label %cleanup

cleanup:                                          ; preds = %if.end14, %if.then13, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %if.then13 ], [ -12, %entry.cleanup_crit_edge ], [ %.count, %if.end14 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @iscsi_tpg_param_TargetAlias_show(ptr noundef %item, ptr nocapture noundef writeonly %page) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %item, i32 -864
  %call1 = tail call i32 @iscsit_get_tpg(ptr noundef %add.ptr) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %param_list = getelementptr i8, ptr %item, i32 1324
  %0 = ptrtoint ptr %param_list to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %param_list, align 4
  %call2 = tail call ptr @iscsi_find_param_from_key(ptr noundef nonnull @.str.101, ptr noundef %1) #12
  %tobool.not = icmp eq ptr %call2, null
  br i1 %tobool.not, label %if.end.cleanup.sink.split_crit_edge, label %if.end4

if.end.cleanup.sink.split_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.sink.split

if.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %value = getelementptr inbounds %struct.iscsi_param, ptr %call2, i32 0, i32 1
  %2 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %value, align 4
  %call5 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %page, i32 noundef 4096, ptr noundef nonnull @.str.48, ptr noundef %3)
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.end4, %if.end.cleanup.sink.split_crit_edge
  %retval.0.ph = phi i32 [ %call5, %if.end4 ], [ -22, %if.end.cleanup.sink.split_crit_edge ]
  tail call void @iscsit_put_tpg(ptr noundef %add.ptr) #12
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @iscsi_tpg_param_TargetAlias_store(ptr noundef %item, ptr noundef %page, i32 noundef %count) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %item, i32 -864
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 4096) #17
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %call7.i.i, i32 noundef 4096, ptr noundef nonnull @.str.97, ptr noundef nonnull @.str.101, ptr noundef %page)
  %sub = add i32 %call2, -1
  %arrayidx = getelementptr i8, ptr %call7.i.i, i32 %sub
  %1 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %2 to i32
  %arrayidx3 = getelementptr [0 x i8], ptr @_ctype, i32 0, i32 %conv
  %3 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %arrayidx3, align 1
  %5 = and i8 %4, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %cmp.not = icmp eq i8 %5, 0
  br i1 %cmp.not, label %if.end.if.end9_crit_edge, label %if.then6

if.end.if.end9_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end9

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 0, ptr %arrayidx, align 1
  br label %if.end9

if.end9:                                          ; preds = %if.then6, %if.end.if.end9_crit_edge
  %call10 = tail call i32 @iscsit_get_tpg(ptr noundef %add.ptr) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %cmp11 = icmp slt i32 %call10, 0
  br i1 %cmp11, label %if.then13, label %if.end14

if.then13:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #12
  br label %cleanup

if.end14:                                         ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #14
  %param_list = getelementptr i8, ptr %item, i32 1324
  %7 = ptrtoint ptr %param_list to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %param_list, align 4
  %call15 = tail call i32 @iscsi_change_param_value(ptr noundef nonnull %call7.i.i, ptr noundef %8, i32 noundef 1) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %cmp16 = icmp slt i32 %call15, 0
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #12
  tail call void @iscsit_put_tpg(ptr noundef %add.ptr) #12
  %.count = select i1 %cmp16, i32 -22, i32 %count
  br label %cleanup

cleanup:                                          ; preds = %if.end14, %if.then13, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %if.then13 ], [ -12, %entry.cleanup_crit_edge ], [ %.count, %if.end14 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @iscsi_tpg_param_InitialR2T_show(ptr noundef %item, ptr nocapture noundef writeonly %page) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %item, i32 -864
  %call1 = tail call i32 @iscsit_get_tpg(ptr noundef %add.ptr) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %param_list = getelementptr i8, ptr %item, i32 1324
  %0 = ptrtoint ptr %param_list to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %param_list, align 4
  %call2 = tail call ptr @iscsi_find_param_from_key(ptr noundef nonnull @.str.102, ptr noundef %1) #12
  %tobool.not = icmp eq ptr %call2, null
  br i1 %tobool.not, label %if.end.cleanup.sink.split_crit_edge, label %if.end4

if.end.cleanup.sink.split_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.sink.split

if.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %value = getelementptr inbounds %struct.iscsi_param, ptr %call2, i32 0, i32 1
  %2 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %value, align 4
  %call5 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %page, i32 noundef 4096, ptr noundef nonnull @.str.48, ptr noundef %3)
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.end4, %if.end.cleanup.sink.split_crit_edge
  %retval.0.ph = phi i32 [ %call5, %if.end4 ], [ -22, %if.end.cleanup.sink.split_crit_edge ]
  tail call void @iscsit_put_tpg(ptr noundef %add.ptr) #12
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @iscsi_tpg_param_InitialR2T_store(ptr noundef %item, ptr noundef %page, i32 noundef %count) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %item, i32 -864
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 4096) #17
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %call7.i.i, i32 noundef 4096, ptr noundef nonnull @.str.97, ptr noundef nonnull @.str.102, ptr noundef %page)
  %sub = add i32 %call2, -1
  %arrayidx = getelementptr i8, ptr %call7.i.i, i32 %sub
  %1 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %2 to i32
  %arrayidx3 = getelementptr [0 x i8], ptr @_ctype, i32 0, i32 %conv
  %3 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %arrayidx3, align 1
  %5 = and i8 %4, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %cmp.not = icmp eq i8 %5, 0
  br i1 %cmp.not, label %if.end.if.end9_crit_edge, label %if.then6

if.end.if.end9_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end9

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 0, ptr %arrayidx, align 1
  br label %if.end9

if.end9:                                          ; preds = %if.then6, %if.end.if.end9_crit_edge
  %call10 = tail call i32 @iscsit_get_tpg(ptr noundef %add.ptr) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %cmp11 = icmp slt i32 %call10, 0
  br i1 %cmp11, label %if.then13, label %if.end14

if.then13:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #12
  br label %cleanup

if.end14:                                         ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #14
  %param_list = getelementptr i8, ptr %item, i32 1324
  %7 = ptrtoint ptr %param_list to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %param_list, align 4
  %call15 = tail call i32 @iscsi_change_param_value(ptr noundef nonnull %call7.i.i, ptr noundef %8, i32 noundef 1) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %cmp16 = icmp slt i32 %call15, 0
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #12
  tail call void @iscsit_put_tpg(ptr noundef %add.ptr) #12
  %.count = select i1 %cmp16, i32 -22, i32 %count
  br label %cleanup

cleanup:                                          ; preds = %if.end14, %if.then13, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %if.then13 ], [ -12, %entry.cleanup_crit_edge ], [ %.count, %if.end14 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @iscsi_tpg_param_ImmediateData_show(ptr noundef %item, ptr nocapture noundef writeonly %page) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %item, i32 -864
  %call1 = tail call i32 @iscsit_get_tpg(ptr noundef %add.ptr) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %param_list = getelementptr i8, ptr %item, i32 1324
  %0 = ptrtoint ptr %param_list to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %param_list, align 4
  %call2 = tail call ptr @iscsi_find_param_from_key(ptr noundef nonnull @.str.103, ptr noundef %1) #12
  %tobool.not = icmp eq ptr %call2, null
  br i1 %tobool.not, label %if.end.cleanup.sink.split_crit_edge, label %if.end4

if.end.cleanup.sink.split_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.sink.split

if.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %value = getelementptr inbounds %struct.iscsi_param, ptr %call2, i32 0, i32 1
  %2 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %value, align 4
  %call5 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %page, i32 noundef 4096, ptr noundef nonnull @.str.48, ptr noundef %3)
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.end4, %if.end.cleanup.sink.split_crit_edge
  %retval.0.ph = phi i32 [ %call5, %if.end4 ], [ -22, %if.end.cleanup.sink.split_crit_edge ]
  tail call void @iscsit_put_tpg(ptr noundef %add.ptr) #12
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @iscsi_tpg_param_ImmediateData_store(ptr noundef %item, ptr noundef %page, i32 noundef %count) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %item, i32 -864
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 4096) #17
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %call7.i.i, i32 noundef 4096, ptr noundef nonnull @.str.97, ptr noundef nonnull @.str.103, ptr noundef %page)
  %sub = add i32 %call2, -1
  %arrayidx = getelementptr i8, ptr %call7.i.i, i32 %sub
  %1 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %2 to i32
  %arrayidx3 = getelementptr [0 x i8], ptr @_ctype, i32 0, i32 %conv
  %3 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %arrayidx3, align 1
  %5 = and i8 %4, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %cmp.not = icmp eq i8 %5, 0
  br i1 %cmp.not, label %if.end.if.end9_crit_edge, label %if.then6

if.end.if.end9_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end9

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 0, ptr %arrayidx, align 1
  br label %if.end9

if.end9:                                          ; preds = %if.then6, %if.end.if.end9_crit_edge
  %call10 = tail call i32 @iscsit_get_tpg(ptr noundef %add.ptr) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %cmp11 = icmp slt i32 %call10, 0
  br i1 %cmp11, label %if.then13, label %if.end14

if.then13:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #12
  br label %cleanup

if.end14:                                         ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #14
  %param_list = getelementptr i8, ptr %item, i32 1324
  %7 = ptrtoint ptr %param_list to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %param_list, align 4
  %call15 = tail call i32 @iscsi_change_param_value(ptr noundef nonnull %call7.i.i, ptr noundef %8, i32 noundef 1) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %cmp16 = icmp slt i32 %call15, 0
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #12
  tail call void @iscsit_put_tpg(ptr noundef %add.ptr) #12
  %.count = select i1 %cmp16, i32 -22, i32 %count
  br label %cleanup

cleanup:                                          ; preds = %if.end14, %if.then13, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %if.then13 ], [ -12, %entry.cleanup_crit_edge ], [ %.count, %if.end14 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @iscsi_tpg_param_MaxRecvDataSegmentLength_show(ptr noundef %item, ptr nocapture noundef writeonly %page) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %item, i32 -864
  %call1 = tail call i32 @iscsit_get_tpg(ptr noundef %add.ptr) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %param_list = getelementptr i8, ptr %item, i32 1324
  %0 = ptrtoint ptr %param_list to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %param_list, align 4
  %call2 = tail call ptr @iscsi_find_param_from_key(ptr noundef nonnull @.str.104, ptr noundef %1) #12
  %tobool.not = icmp eq ptr %call2, null
  br i1 %tobool.not, label %if.end.cleanup.sink.split_crit_edge, label %if.end4

if.end.cleanup.sink.split_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.sink.split

if.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %value = getelementptr inbounds %struct.iscsi_param, ptr %call2, i32 0, i32 1
  %2 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %value, align 4
  %call5 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %page, i32 noundef 4096, ptr noundef nonnull @.str.48, ptr noundef %3)
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.end4, %if.end.cleanup.sink.split_crit_edge
  %retval.0.ph = phi i32 [ %call5, %if.end4 ], [ -22, %if.end.cleanup.sink.split_crit_edge ]
  tail call void @iscsit_put_tpg(ptr noundef %add.ptr) #12
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @iscsi_tpg_param_MaxRecvDataSegmentLength_store(ptr noundef %item, ptr noundef %page, i32 noundef %count) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %item, i32 -864
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 4096) #17
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %call7.i.i, i32 noundef 4096, ptr noundef nonnull @.str.97, ptr noundef nonnull @.str.104, ptr noundef %page)
  %sub = add i32 %call2, -1
  %arrayidx = getelementptr i8, ptr %call7.i.i, i32 %sub
  %1 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %2 to i32
  %arrayidx3 = getelementptr [0 x i8], ptr @_ctype, i32 0, i32 %conv
  %3 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %arrayidx3, align 1
  %5 = and i8 %4, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %cmp.not = icmp eq i8 %5, 0
  br i1 %cmp.not, label %if.end.if.end9_crit_edge, label %if.then6

if.end.if.end9_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end9

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 0, ptr %arrayidx, align 1
  br label %if.end9

if.end9:                                          ; preds = %if.then6, %if.end.if.end9_crit_edge
  %call10 = tail call i32 @iscsit_get_tpg(ptr noundef %add.ptr) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %cmp11 = icmp slt i32 %call10, 0
  br i1 %cmp11, label %if.then13, label %if.end14

if.then13:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #12
  br label %cleanup

if.end14:                                         ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #14
  %param_list = getelementptr i8, ptr %item, i32 1324
  %7 = ptrtoint ptr %param_list to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %param_list, align 4
  %call15 = tail call i32 @iscsi_change_param_value(ptr noundef nonnull %call7.i.i, ptr noundef %8, i32 noundef 1) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %cmp16 = icmp slt i32 %call15, 0
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #12
  tail call void @iscsit_put_tpg(ptr noundef %add.ptr) #12
  %.count = select i1 %cmp16, i32 -22, i32 %count
  br label %cleanup

cleanup:                                          ; preds = %if.end14, %if.then13, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %if.then13 ], [ -12, %entry.cleanup_crit_edge ], [ %.count, %if.end14 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @iscsi_tpg_param_MaxXmitDataSegmentLength_show(ptr noundef %item, ptr nocapture noundef writeonly %page) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %item, i32 -864
  %call1 = tail call i32 @iscsit_get_tpg(ptr noundef %add.ptr) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %param_list = getelementptr i8, ptr %item, i32 1324
  %0 = ptrtoint ptr %param_list to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %param_list, align 4
  %call2 = tail call ptr @iscsi_find_param_from_key(ptr noundef nonnull @.str.105, ptr noundef %1) #12
  %tobool.not = icmp eq ptr %call2, null
  br i1 %tobool.not, label %if.end.cleanup.sink.split_crit_edge, label %if.end4

if.end.cleanup.sink.split_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.sink.split

if.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %value = getelementptr inbounds %struct.iscsi_param, ptr %call2, i32 0, i32 1
  %2 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %value, align 4
  %call5 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %page, i32 noundef 4096, ptr noundef nonnull @.str.48, ptr noundef %3)
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.end4, %if.end.cleanup.sink.split_crit_edge
  %retval.0.ph = phi i32 [ %call5, %if.end4 ], [ -22, %if.end.cleanup.sink.split_crit_edge ]
  tail call void @iscsit_put_tpg(ptr noundef %add.ptr) #12
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @iscsi_tpg_param_MaxXmitDataSegmentLength_store(ptr noundef %item, ptr noundef %page, i32 noundef %count) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %item, i32 -864
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 4096) #17
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %call7.i.i, i32 noundef 4096, ptr noundef nonnull @.str.97, ptr noundef nonnull @.str.105, ptr noundef %page)
  %sub = add i32 %call2, -1
  %arrayidx = getelementptr i8, ptr %call7.i.i, i32 %sub
  %1 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %2 to i32
  %arrayidx3 = getelementptr [0 x i8], ptr @_ctype, i32 0, i32 %conv
  %3 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %arrayidx3, align 1
  %5 = and i8 %4, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %cmp.not = icmp eq i8 %5, 0
  br i1 %cmp.not, label %if.end.if.end9_crit_edge, label %if.then6

if.end.if.end9_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end9

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 0, ptr %arrayidx, align 1
  br label %if.end9

if.end9:                                          ; preds = %if.then6, %if.end.if.end9_crit_edge
  %call10 = tail call i32 @iscsit_get_tpg(ptr noundef %add.ptr) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %cmp11 = icmp slt i32 %call10, 0
  br i1 %cmp11, label %if.then13, label %if.end14

if.then13:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #12
  br label %cleanup

if.end14:                                         ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #14
  %param_list = getelementptr i8, ptr %item, i32 1324
  %7 = ptrtoint ptr %param_list to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %param_list, align 4
  %call15 = tail call i32 @iscsi_change_param_value(ptr noundef nonnull %call7.i.i, ptr noundef %8, i32 noundef 1) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %cmp16 = icmp slt i32 %call15, 0
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #12
  tail call void @iscsit_put_tpg(ptr noundef %add.ptr) #12
  %.count = select i1 %cmp16, i32 -22, i32 %count
  br label %cleanup

cleanup:                                          ; preds = %if.end14, %if.then13, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %if.then13 ], [ -12, %entry.cleanup_crit_edge ], [ %.count, %if.end14 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @iscsi_tpg_param_MaxBurstLength_show(ptr noundef %item, ptr nocapture noundef writeonly %page) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %item, i32 -864
  %call1 = tail call i32 @iscsit_get_tpg(ptr noundef %add.ptr) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %param_list = getelementptr i8, ptr %item, i32 1324
  %0 = ptrtoint ptr %param_list to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %param_list, align 4
  %call2 = tail call ptr @iscsi_find_param_from_key(ptr noundef nonnull @.str.106, ptr noundef %1) #12
  %tobool.not = icmp eq ptr %call2, null
  br i1 %tobool.not, label %if.end.cleanup.sink.split_crit_edge, label %if.end4

if.end.cleanup.sink.split_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.sink.split

if.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %value = getelementptr inbounds %struct.iscsi_param, ptr %call2, i32 0, i32 1
  %2 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %value, align 4
  %call5 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %page, i32 noundef 4096, ptr noundef nonnull @.str.48, ptr noundef %3)
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.end4, %if.end.cleanup.sink.split_crit_edge
  %retval.0.ph = phi i32 [ %call5, %if.end4 ], [ -22, %if.end.cleanup.sink.split_crit_edge ]
  tail call void @iscsit_put_tpg(ptr noundef %add.ptr) #12
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @iscsi_tpg_param_MaxBurstLength_store(ptr noundef %item, ptr noundef %page, i32 noundef %count) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %item, i32 -864
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 4096) #17
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %call7.i.i, i32 noundef 4096, ptr noundef nonnull @.str.97, ptr noundef nonnull @.str.106, ptr noundef %page)
  %sub = add i32 %call2, -1
  %arrayidx = getelementptr i8, ptr %call7.i.i, i32 %sub
  %1 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %2 to i32
  %arrayidx3 = getelementptr [0 x i8], ptr @_ctype, i32 0, i32 %conv
  %3 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %arrayidx3, align 1
  %5 = and i8 %4, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %cmp.not = icmp eq i8 %5, 0
  br i1 %cmp.not, label %if.end.if.end9_crit_edge, label %if.then6

if.end.if.end9_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end9

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 0, ptr %arrayidx, align 1
  br label %if.end9

if.end9:                                          ; preds = %if.then6, %if.end.if.end9_crit_edge
  %call10 = tail call i32 @iscsit_get_tpg(ptr noundef %add.ptr) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %cmp11 = icmp slt i32 %call10, 0
  br i1 %cmp11, label %if.then13, label %if.end14

if.then13:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #12
  br label %cleanup

if.end14:                                         ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #14
  %param_list = getelementptr i8, ptr %item, i32 1324
  %7 = ptrtoint ptr %param_list to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %param_list, align 4
  %call15 = tail call i32 @iscsi_change_param_value(ptr noundef nonnull %call7.i.i, ptr noundef %8, i32 noundef 1) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %cmp16 = icmp slt i32 %call15, 0
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #12
  tail call void @iscsit_put_tpg(ptr noundef %add.ptr) #12
  %.count = select i1 %cmp16, i32 -22, i32 %count
  br label %cleanup

cleanup:                                          ; preds = %if.end14, %if.then13, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %if.then13 ], [ -12, %entry.cleanup_crit_edge ], [ %.count, %if.end14 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @iscsi_tpg_param_FirstBurstLength_show(ptr noundef %item, ptr nocapture noundef writeonly %page) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %item, i32 -864
  %call1 = tail call i32 @iscsit_get_tpg(ptr noundef %add.ptr) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %param_list = getelementptr i8, ptr %item, i32 1324
  %0 = ptrtoint ptr %param_list to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %param_list, align 4
  %call2 = tail call ptr @iscsi_find_param_from_key(ptr noundef nonnull @.str.107, ptr noundef %1) #12
  %tobool.not = icmp eq ptr %call2, null
  br i1 %tobool.not, label %if.end.cleanup.sink.split_crit_edge, label %if.end4

if.end.cleanup.sink.split_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.sink.split

if.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %value = getelementptr inbounds %struct.iscsi_param, ptr %call2, i32 0, i32 1
  %2 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %value, align 4
  %call5 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %page, i32 noundef 4096, ptr noundef nonnull @.str.48, ptr noundef %3)
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.end4, %if.end.cleanup.sink.split_crit_edge
  %retval.0.ph = phi i32 [ %call5, %if.end4 ], [ -22, %if.end.cleanup.sink.split_crit_edge ]
  tail call void @iscsit_put_tpg(ptr noundef %add.ptr) #12
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @iscsi_tpg_param_FirstBurstLength_store(ptr noundef %item, ptr noundef %page, i32 noundef %count) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %item, i32 -864
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 4096) #17
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %call7.i.i, i32 noundef 4096, ptr noundef nonnull @.str.97, ptr noundef nonnull @.str.107, ptr noundef %page)
  %sub = add i32 %call2, -1
  %arrayidx = getelementptr i8, ptr %call7.i.i, i32 %sub
  %1 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %2 to i32
  %arrayidx3 = getelementptr [0 x i8], ptr @_ctype, i32 0, i32 %conv
  %3 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %arrayidx3, align 1
  %5 = and i8 %4, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %cmp.not = icmp eq i8 %5, 0
  br i1 %cmp.not, label %if.end.if.end9_crit_edge, label %if.then6

if.end.if.end9_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end9

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 0, ptr %arrayidx, align 1
  br label %if.end9

if.end9:                                          ; preds = %if.then6, %if.end.if.end9_crit_edge
  %call10 = tail call i32 @iscsit_get_tpg(ptr noundef %add.ptr) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %cmp11 = icmp slt i32 %call10, 0
  br i1 %cmp11, label %if.then13, label %if.end14

if.then13:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #12
  br label %cleanup

if.end14:                                         ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #14
  %param_list = getelementptr i8, ptr %item, i32 1324
  %7 = ptrtoint ptr %param_list to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %param_list, align 4
  %call15 = tail call i32 @iscsi_change_param_value(ptr noundef nonnull %call7.i.i, ptr noundef %8, i32 noundef 1) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %cmp16 = icmp slt i32 %call15, 0
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #12
  tail call void @iscsit_put_tpg(ptr noundef %add.ptr) #12
  %.count = select i1 %cmp16, i32 -22, i32 %count
  br label %cleanup

cleanup:                                          ; preds = %if.end14, %if.then13, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %if.then13 ], [ -12, %entry.cleanup_crit_edge ], [ %.count, %if.end14 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @iscsi_tpg_param_DefaultTime2Wait_show(ptr noundef %item, ptr nocapture noundef writeonly %page) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %item, i32 -864
  %call1 = tail call i32 @iscsit_get_tpg(ptr noundef %add.ptr) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %param_list = getelementptr i8, ptr %item, i32 1324
  %0 = ptrtoint ptr %param_list to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %param_list, align 4
  %call2 = tail call ptr @iscsi_find_param_from_key(ptr noundef nonnull @.str.108, ptr noundef %1) #12
  %tobool.not = icmp eq ptr %call2, null
  br i1 %tobool.not, label %if.end.cleanup.sink.split_crit_edge, label %if.end4

if.end.cleanup.sink.split_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.sink.split

if.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %value = getelementptr inbounds %struct.iscsi_param, ptr %call2, i32 0, i32 1
  %2 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %value, align 4
  %call5 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %page, i32 noundef 4096, ptr noundef nonnull @.str.48, ptr noundef %3)
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.end4, %if.end.cleanup.sink.split_crit_edge
  %retval.0.ph = phi i32 [ %call5, %if.end4 ], [ -22, %if.end.cleanup.sink.split_crit_edge ]
  tail call void @iscsit_put_tpg(ptr noundef %add.ptr) #12
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @iscsi_tpg_param_DefaultTime2Wait_store(ptr noundef %item, ptr noundef %page, i32 noundef %count) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %item, i32 -864
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 4096) #17
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %call7.i.i, i32 noundef 4096, ptr noundef nonnull @.str.97, ptr noundef nonnull @.str.108, ptr noundef %page)
  %sub = add i32 %call2, -1
  %arrayidx = getelementptr i8, ptr %call7.i.i, i32 %sub
  %1 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %2 to i32
  %arrayidx3 = getelementptr [0 x i8], ptr @_ctype, i32 0, i32 %conv
  %3 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %arrayidx3, align 1
  %5 = and i8 %4, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %cmp.not = icmp eq i8 %5, 0
  br i1 %cmp.not, label %if.end.if.end9_crit_edge, label %if.then6

if.end.if.end9_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end9

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 0, ptr %arrayidx, align 1
  br label %if.end9

if.end9:                                          ; preds = %if.then6, %if.end.if.end9_crit_edge
  %call10 = tail call i32 @iscsit_get_tpg(ptr noundef %add.ptr) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %cmp11 = icmp slt i32 %call10, 0
  br i1 %cmp11, label %if.then13, label %if.end14

if.then13:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #12
  br label %cleanup

if.end14:                                         ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #14
  %param_list = getelementptr i8, ptr %item, i32 1324
  %7 = ptrtoint ptr %param_list to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %param_list, align 4
  %call15 = tail call i32 @iscsi_change_param_value(ptr noundef nonnull %call7.i.i, ptr noundef %8, i32 noundef 1) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %cmp16 = icmp slt i32 %call15, 0
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #12
  tail call void @iscsit_put_tpg(ptr noundef %add.ptr) #12
  %.count = select i1 %cmp16, i32 -22, i32 %count
  br label %cleanup

cleanup:                                          ; preds = %if.end14, %if.then13, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %if.then13 ], [ -12, %entry.cleanup_crit_edge ], [ %.count, %if.end14 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @iscsi_tpg_param_DefaultTime2Retain_show(ptr noundef %item, ptr nocapture noundef writeonly %page) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %item, i32 -864
  %call1 = tail call i32 @iscsit_get_tpg(ptr noundef %add.ptr) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %param_list = getelementptr i8, ptr %item, i32 1324
  %0 = ptrtoint ptr %param_list to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %param_list, align 4
  %call2 = tail call ptr @iscsi_find_param_from_key(ptr noundef nonnull @.str.109, ptr noundef %1) #12
  %tobool.not = icmp eq ptr %call2, null
  br i1 %tobool.not, label %if.end.cleanup.sink.split_crit_edge, label %if.end4

if.end.cleanup.sink.split_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.sink.split

if.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %value = getelementptr inbounds %struct.iscsi_param, ptr %call2, i32 0, i32 1
  %2 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %value, align 4
  %call5 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %page, i32 noundef 4096, ptr noundef nonnull @.str.48, ptr noundef %3)
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.end4, %if.end.cleanup.sink.split_crit_edge
  %retval.0.ph = phi i32 [ %call5, %if.end4 ], [ -22, %if.end.cleanup.sink.split_crit_edge ]
  tail call void @iscsit_put_tpg(ptr noundef %add.ptr) #12
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @iscsi_tpg_param_DefaultTime2Retain_store(ptr noundef %item, ptr noundef %page, i32 noundef %count) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %item, i32 -864
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 4096) #17
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %call7.i.i, i32 noundef 4096, ptr noundef nonnull @.str.97, ptr noundef nonnull @.str.109, ptr noundef %page)
  %sub = add i32 %call2, -1
  %arrayidx = getelementptr i8, ptr %call7.i.i, i32 %sub
  %1 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %2 to i32
  %arrayidx3 = getelementptr [0 x i8], ptr @_ctype, i32 0, i32 %conv
  %3 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %arrayidx3, align 1
  %5 = and i8 %4, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %cmp.not = icmp eq i8 %5, 0
  br i1 %cmp.not, label %if.end.if.end9_crit_edge, label %if.then6

if.end.if.end9_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end9

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 0, ptr %arrayidx, align 1
  br label %if.end9

if.end9:                                          ; preds = %if.then6, %if.end.if.end9_crit_edge
  %call10 = tail call i32 @iscsit_get_tpg(ptr noundef %add.ptr) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %cmp11 = icmp slt i32 %call10, 0
  br i1 %cmp11, label %if.then13, label %if.end14

if.then13:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #12
  br label %cleanup

if.end14:                                         ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #14
  %param_list = getelementptr i8, ptr %item, i32 1324
  %7 = ptrtoint ptr %param_list to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %param_list, align 4
  %call15 = tail call i32 @iscsi_change_param_value(ptr noundef nonnull %call7.i.i, ptr noundef %8, i32 noundef 1) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %cmp16 = icmp slt i32 %call15, 0
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #12
  tail call void @iscsit_put_tpg(ptr noundef %add.ptr) #12
  %.count = select i1 %cmp16, i32 -22, i32 %count
  br label %cleanup

cleanup:                                          ; preds = %if.end14, %if.then13, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %if.then13 ], [ -12, %entry.cleanup_crit_edge ], [ %.count, %if.end14 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @iscsi_tpg_param_MaxOutstandingR2T_show(ptr noundef %item, ptr nocapture noundef writeonly %page) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %item, i32 -864
  %call1 = tail call i32 @iscsit_get_tpg(ptr noundef %add.ptr) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %param_list = getelementptr i8, ptr %item, i32 1324
  %0 = ptrtoint ptr %param_list to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %param_list, align 4
  %call2 = tail call ptr @iscsi_find_param_from_key(ptr noundef nonnull @.str.110, ptr noundef %1) #12
  %tobool.not = icmp eq ptr %call2, null
  br i1 %tobool.not, label %if.end.cleanup.sink.split_crit_edge, label %if.end4

if.end.cleanup.sink.split_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.sink.split

if.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %value = getelementptr inbounds %struct.iscsi_param, ptr %call2, i32 0, i32 1
  %2 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %value, align 4
  %call5 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %page, i32 noundef 4096, ptr noundef nonnull @.str.48, ptr noundef %3)
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.end4, %if.end.cleanup.sink.split_crit_edge
  %retval.0.ph = phi i32 [ %call5, %if.end4 ], [ -22, %if.end.cleanup.sink.split_crit_edge ]
  tail call void @iscsit_put_tpg(ptr noundef %add.ptr) #12
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @iscsi_tpg_param_MaxOutstandingR2T_store(ptr noundef %item, ptr noundef %page, i32 noundef %count) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %item, i32 -864
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 4096) #17
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %call7.i.i, i32 noundef 4096, ptr noundef nonnull @.str.97, ptr noundef nonnull @.str.110, ptr noundef %page)
  %sub = add i32 %call2, -1
  %arrayidx = getelementptr i8, ptr %call7.i.i, i32 %sub
  %1 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %2 to i32
  %arrayidx3 = getelementptr [0 x i8], ptr @_ctype, i32 0, i32 %conv
  %3 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %arrayidx3, align 1
  %5 = and i8 %4, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %cmp.not = icmp eq i8 %5, 0
  br i1 %cmp.not, label %if.end.if.end9_crit_edge, label %if.then6

if.end.if.end9_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end9

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 0, ptr %arrayidx, align 1
  br label %if.end9

if.end9:                                          ; preds = %if.then6, %if.end.if.end9_crit_edge
  %call10 = tail call i32 @iscsit_get_tpg(ptr noundef %add.ptr) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %cmp11 = icmp slt i32 %call10, 0
  br i1 %cmp11, label %if.then13, label %if.end14

if.then13:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #12
  br label %cleanup

if.end14:                                         ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #14
  %param_list = getelementptr i8, ptr %item, i32 1324
  %7 = ptrtoint ptr %param_list to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %param_list, align 4
  %call15 = tail call i32 @iscsi_change_param_value(ptr noundef nonnull %call7.i.i, ptr noundef %8, i32 noundef 1) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %cmp16 = icmp slt i32 %call15, 0
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #12
  tail call void @iscsit_put_tpg(ptr noundef %add.ptr) #12
  %.count = select i1 %cmp16, i32 -22, i32 %count
  br label %cleanup

cleanup:                                          ; preds = %if.end14, %if.then13, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %if.then13 ], [ -12, %entry.cleanup_crit_edge ], [ %.count, %if.end14 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @iscsi_tpg_param_DataPDUInOrder_show(ptr noundef %item, ptr nocapture noundef writeonly %page) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %item, i32 -864
  %call1 = tail call i32 @iscsit_get_tpg(ptr noundef %add.ptr) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %param_list = getelementptr i8, ptr %item, i32 1324
  %0 = ptrtoint ptr %param_list to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %param_list, align 4
  %call2 = tail call ptr @iscsi_find_param_from_key(ptr noundef nonnull @.str.111, ptr noundef %1) #12
  %tobool.not = icmp eq ptr %call2, null
  br i1 %tobool.not, label %if.end.cleanup.sink.split_crit_edge, label %if.end4

if.end.cleanup.sink.split_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.sink.split

if.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %value = getelementptr inbounds %struct.iscsi_param, ptr %call2, i32 0, i32 1
  %2 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %value, align 4
  %call5 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %page, i32 noundef 4096, ptr noundef nonnull @.str.48, ptr noundef %3)
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.end4, %if.end.cleanup.sink.split_crit_edge
  %retval.0.ph = phi i32 [ %call5, %if.end4 ], [ -22, %if.end.cleanup.sink.split_crit_edge ]
  tail call void @iscsit_put_tpg(ptr noundef %add.ptr) #12
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @iscsi_tpg_param_DataPDUInOrder_store(ptr noundef %item, ptr noundef %page, i32 noundef %count) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %item, i32 -864
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 4096) #17
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %call7.i.i, i32 noundef 4096, ptr noundef nonnull @.str.97, ptr noundef nonnull @.str.111, ptr noundef %page)
  %sub = add i32 %call2, -1
  %arrayidx = getelementptr i8, ptr %call7.i.i, i32 %sub
  %1 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %2 to i32
  %arrayidx3 = getelementptr [0 x i8], ptr @_ctype, i32 0, i32 %conv
  %3 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %arrayidx3, align 1
  %5 = and i8 %4, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %cmp.not = icmp eq i8 %5, 0
  br i1 %cmp.not, label %if.end.if.end9_crit_edge, label %if.then6

if.end.if.end9_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end9

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 0, ptr %arrayidx, align 1
  br label %if.end9

if.end9:                                          ; preds = %if.then6, %if.end.if.end9_crit_edge
  %call10 = tail call i32 @iscsit_get_tpg(ptr noundef %add.ptr) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %cmp11 = icmp slt i32 %call10, 0
  br i1 %cmp11, label %if.then13, label %if.end14

if.then13:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #12
  br label %cleanup

if.end14:                                         ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #14
  %param_list = getelementptr i8, ptr %item, i32 1324
  %7 = ptrtoint ptr %param_list to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %param_list, align 4
  %call15 = tail call i32 @iscsi_change_param_value(ptr noundef nonnull %call7.i.i, ptr noundef %8, i32 noundef 1) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %cmp16 = icmp slt i32 %call15, 0
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #12
  tail call void @iscsit_put_tpg(ptr noundef %add.ptr) #12
  %.count = select i1 %cmp16, i32 -22, i32 %count
  br label %cleanup

cleanup:                                          ; preds = %if.end14, %if.then13, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %if.then13 ], [ -12, %entry.cleanup_crit_edge ], [ %.count, %if.end14 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @iscsi_tpg_param_DataSequenceInOrder_show(ptr noundef %item, ptr nocapture noundef writeonly %page) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %item, i32 -864
  %call1 = tail call i32 @iscsit_get_tpg(ptr noundef %add.ptr) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %param_list = getelementptr i8, ptr %item, i32 1324
  %0 = ptrtoint ptr %param_list to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %param_list, align 4
  %call2 = tail call ptr @iscsi_find_param_from_key(ptr noundef nonnull @.str.112, ptr noundef %1) #12
  %tobool.not = icmp eq ptr %call2, null
  br i1 %tobool.not, label %if.end.cleanup.sink.split_crit_edge, label %if.end4

if.end.cleanup.sink.split_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.sink.split

if.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %value = getelementptr inbounds %struct.iscsi_param, ptr %call2, i32 0, i32 1
  %2 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %value, align 4
  %call5 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %page, i32 noundef 4096, ptr noundef nonnull @.str.48, ptr noundef %3)
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.end4, %if.end.cleanup.sink.split_crit_edge
  %retval.0.ph = phi i32 [ %call5, %if.end4 ], [ -22, %if.end.cleanup.sink.split_crit_edge ]
  tail call void @iscsit_put_tpg(ptr noundef %add.ptr) #12
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @iscsi_tpg_param_DataSequenceInOrder_store(ptr noundef %item, ptr noundef %page, i32 noundef %count) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %item, i32 -864
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 4096) #17
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %call7.i.i, i32 noundef 4096, ptr noundef nonnull @.str.97, ptr noundef nonnull @.str.112, ptr noundef %page)
  %sub = add i32 %call2, -1
  %arrayidx = getelementptr i8, ptr %call7.i.i, i32 %sub
  %1 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %2 to i32
  %arrayidx3 = getelementptr [0 x i8], ptr @_ctype, i32 0, i32 %conv
  %3 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %arrayidx3, align 1
  %5 = and i8 %4, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %cmp.not = icmp eq i8 %5, 0
  br i1 %cmp.not, label %if.end.if.end9_crit_edge, label %if.then6

if.end.if.end9_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end9

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 0, ptr %arrayidx, align 1
  br label %if.end9

if.end9:                                          ; preds = %if.then6, %if.end.if.end9_crit_edge
  %call10 = tail call i32 @iscsit_get_tpg(ptr noundef %add.ptr) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %cmp11 = icmp slt i32 %call10, 0
  br i1 %cmp11, label %if.then13, label %if.end14

if.then13:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #12
  br label %cleanup

if.end14:                                         ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #14
  %param_list = getelementptr i8, ptr %item, i32 1324
  %7 = ptrtoint ptr %param_list to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %param_list, align 4
  %call15 = tail call i32 @iscsi_change_param_value(ptr noundef nonnull %call7.i.i, ptr noundef %8, i32 noundef 1) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %cmp16 = icmp slt i32 %call15, 0
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #12
  tail call void @iscsit_put_tpg(ptr noundef %add.ptr) #12
  %.count = select i1 %cmp16, i32 -22, i32 %count
  br label %cleanup

cleanup:                                          ; preds = %if.end14, %if.then13, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %if.then13 ], [ -12, %entry.cleanup_crit_edge ], [ %.count, %if.end14 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @iscsi_tpg_param_ErrorRecoveryLevel_show(ptr noundef %item, ptr nocapture noundef writeonly %page) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %item, i32 -864
  %call1 = tail call i32 @iscsit_get_tpg(ptr noundef %add.ptr) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %param_list = getelementptr i8, ptr %item, i32 1324
  %0 = ptrtoint ptr %param_list to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %param_list, align 4
  %call2 = tail call ptr @iscsi_find_param_from_key(ptr noundef nonnull @.str.113, ptr noundef %1) #12
  %tobool.not = icmp eq ptr %call2, null
  br i1 %tobool.not, label %if.end.cleanup.sink.split_crit_edge, label %if.end4

if.end.cleanup.sink.split_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.sink.split

if.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %value = getelementptr inbounds %struct.iscsi_param, ptr %call2, i32 0, i32 1
  %2 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %value, align 4
  %call5 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %page, i32 noundef 4096, ptr noundef nonnull @.str.48, ptr noundef %3)
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.end4, %if.end.cleanup.sink.split_crit_edge
  %retval.0.ph = phi i32 [ %call5, %if.end4 ], [ -22, %if.end.cleanup.sink.split_crit_edge ]
  tail call void @iscsit_put_tpg(ptr noundef %add.ptr) #12
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @iscsi_tpg_param_ErrorRecoveryLevel_store(ptr noundef %item, ptr noundef %page, i32 noundef %count) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %item, i32 -864
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 4096) #17
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %call7.i.i, i32 noundef 4096, ptr noundef nonnull @.str.97, ptr noundef nonnull @.str.113, ptr noundef %page)
  %sub = add i32 %call2, -1
  %arrayidx = getelementptr i8, ptr %call7.i.i, i32 %sub
  %1 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %2 to i32
  %arrayidx3 = getelementptr [0 x i8], ptr @_ctype, i32 0, i32 %conv
  %3 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %arrayidx3, align 1
  %5 = and i8 %4, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %cmp.not = icmp eq i8 %5, 0
  br i1 %cmp.not, label %if.end.if.end9_crit_edge, label %if.then6

if.end.if.end9_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end9

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 0, ptr %arrayidx, align 1
  br label %if.end9

if.end9:                                          ; preds = %if.then6, %if.end.if.end9_crit_edge
  %call10 = tail call i32 @iscsit_get_tpg(ptr noundef %add.ptr) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %cmp11 = icmp slt i32 %call10, 0
  br i1 %cmp11, label %if.then13, label %if.end14

if.then13:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #12
  br label %cleanup

if.end14:                                         ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #14
  %param_list = getelementptr i8, ptr %item, i32 1324
  %7 = ptrtoint ptr %param_list to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %param_list, align 4
  %call15 = tail call i32 @iscsi_change_param_value(ptr noundef nonnull %call7.i.i, ptr noundef %8, i32 noundef 1) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %cmp16 = icmp slt i32 %call15, 0
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #12
  tail call void @iscsit_put_tpg(ptr noundef %add.ptr) #12
  %.count = select i1 %cmp16, i32 -22, i32 %count
  br label %cleanup

cleanup:                                          ; preds = %if.end14, %if.then13, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %if.then13 ], [ -12, %entry.cleanup_crit_edge ], [ %.count, %if.end14 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @iscsi_tpg_param_IFMarker_show(ptr noundef %item, ptr nocapture noundef writeonly %page) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %item, i32 -864
  %call1 = tail call i32 @iscsit_get_tpg(ptr noundef %add.ptr) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %param_list = getelementptr i8, ptr %item, i32 1324
  %0 = ptrtoint ptr %param_list to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %param_list, align 4
  %call2 = tail call ptr @iscsi_find_param_from_key(ptr noundef nonnull @.str.114, ptr noundef %1) #12
  %tobool.not = icmp eq ptr %call2, null
  br i1 %tobool.not, label %if.end.cleanup.sink.split_crit_edge, label %if.end4

if.end.cleanup.sink.split_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.sink.split

if.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %value = getelementptr inbounds %struct.iscsi_param, ptr %call2, i32 0, i32 1
  %2 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %value, align 4
  %call5 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %page, i32 noundef 4096, ptr noundef nonnull @.str.48, ptr noundef %3)
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.end4, %if.end.cleanup.sink.split_crit_edge
  %retval.0.ph = phi i32 [ %call5, %if.end4 ], [ -22, %if.end.cleanup.sink.split_crit_edge ]
  tail call void @iscsit_put_tpg(ptr noundef %add.ptr) #12
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @iscsi_tpg_param_IFMarker_store(ptr noundef %item, ptr noundef %page, i32 noundef %count) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %item, i32 -864
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 4096) #17
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %call7.i.i, i32 noundef 4096, ptr noundef nonnull @.str.97, ptr noundef nonnull @.str.114, ptr noundef %page)
  %sub = add i32 %call2, -1
  %arrayidx = getelementptr i8, ptr %call7.i.i, i32 %sub
  %1 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %2 to i32
  %arrayidx3 = getelementptr [0 x i8], ptr @_ctype, i32 0, i32 %conv
  %3 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %arrayidx3, align 1
  %5 = and i8 %4, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %cmp.not = icmp eq i8 %5, 0
  br i1 %cmp.not, label %if.end.if.end9_crit_edge, label %if.then6

if.end.if.end9_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end9

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 0, ptr %arrayidx, align 1
  br label %if.end9

if.end9:                                          ; preds = %if.then6, %if.end.if.end9_crit_edge
  %call10 = tail call i32 @iscsit_get_tpg(ptr noundef %add.ptr) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %cmp11 = icmp slt i32 %call10, 0
  br i1 %cmp11, label %if.then13, label %if.end14

if.then13:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #12
  br label %cleanup

if.end14:                                         ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #14
  %param_list = getelementptr i8, ptr %item, i32 1324
  %7 = ptrtoint ptr %param_list to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %param_list, align 4
  %call15 = tail call i32 @iscsi_change_param_value(ptr noundef nonnull %call7.i.i, ptr noundef %8, i32 noundef 1) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %cmp16 = icmp slt i32 %call15, 0
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #12
  tail call void @iscsit_put_tpg(ptr noundef %add.ptr) #12
  %.count = select i1 %cmp16, i32 -22, i32 %count
  br label %cleanup

cleanup:                                          ; preds = %if.end14, %if.then13, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %if.then13 ], [ -12, %entry.cleanup_crit_edge ], [ %.count, %if.end14 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @iscsi_tpg_param_OFMarker_show(ptr noundef %item, ptr nocapture noundef writeonly %page) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %item, i32 -864
  %call1 = tail call i32 @iscsit_get_tpg(ptr noundef %add.ptr) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %param_list = getelementptr i8, ptr %item, i32 1324
  %0 = ptrtoint ptr %param_list to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %param_list, align 4
  %call2 = tail call ptr @iscsi_find_param_from_key(ptr noundef nonnull @.str.115, ptr noundef %1) #12
  %tobool.not = icmp eq ptr %call2, null
  br i1 %tobool.not, label %if.end.cleanup.sink.split_crit_edge, label %if.end4

if.end.cleanup.sink.split_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.sink.split

if.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %value = getelementptr inbounds %struct.iscsi_param, ptr %call2, i32 0, i32 1
  %2 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %value, align 4
  %call5 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %page, i32 noundef 4096, ptr noundef nonnull @.str.48, ptr noundef %3)
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.end4, %if.end.cleanup.sink.split_crit_edge
  %retval.0.ph = phi i32 [ %call5, %if.end4 ], [ -22, %if.end.cleanup.sink.split_crit_edge ]
  tail call void @iscsit_put_tpg(ptr noundef %add.ptr) #12
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @iscsi_tpg_param_OFMarker_store(ptr noundef %item, ptr noundef %page, i32 noundef %count) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %item, i32 -864
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 4096) #17
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %call7.i.i, i32 noundef 4096, ptr noundef nonnull @.str.97, ptr noundef nonnull @.str.115, ptr noundef %page)
  %sub = add i32 %call2, -1
  %arrayidx = getelementptr i8, ptr %call7.i.i, i32 %sub
  %1 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %2 to i32
  %arrayidx3 = getelementptr [0 x i8], ptr @_ctype, i32 0, i32 %conv
  %3 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %arrayidx3, align 1
  %5 = and i8 %4, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %cmp.not = icmp eq i8 %5, 0
  br i1 %cmp.not, label %if.end.if.end9_crit_edge, label %if.then6

if.end.if.end9_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end9

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 0, ptr %arrayidx, align 1
  br label %if.end9

if.end9:                                          ; preds = %if.then6, %if.end.if.end9_crit_edge
  %call10 = tail call i32 @iscsit_get_tpg(ptr noundef %add.ptr) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %cmp11 = icmp slt i32 %call10, 0
  br i1 %cmp11, label %if.then13, label %if.end14

if.then13:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #12
  br label %cleanup

if.end14:                                         ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #14
  %param_list = getelementptr i8, ptr %item, i32 1324
  %7 = ptrtoint ptr %param_list to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %param_list, align 4
  %call15 = tail call i32 @iscsi_change_param_value(ptr noundef nonnull %call7.i.i, ptr noundef %8, i32 noundef 1) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %cmp16 = icmp slt i32 %call15, 0
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #12
  tail call void @iscsit_put_tpg(ptr noundef %add.ptr) #12
  %.count = select i1 %cmp16, i32 -22, i32 %count
  br label %cleanup

cleanup:                                          ; preds = %if.end14, %if.then13, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %if.then13 ], [ -12, %entry.cleanup_crit_edge ], [ %.count, %if.end14 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @iscsi_tpg_param_IFMarkInt_show(ptr noundef %item, ptr nocapture noundef writeonly %page) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %item, i32 -864
  %call1 = tail call i32 @iscsit_get_tpg(ptr noundef %add.ptr) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %param_list = getelementptr i8, ptr %item, i32 1324
  %0 = ptrtoint ptr %param_list to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %param_list, align 4
  %call2 = tail call ptr @iscsi_find_param_from_key(ptr noundef nonnull @.str.116, ptr noundef %1) #12
  %tobool.not = icmp eq ptr %call2, null
  br i1 %tobool.not, label %if.end.cleanup.sink.split_crit_edge, label %if.end4

if.end.cleanup.sink.split_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.sink.split

if.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %value = getelementptr inbounds %struct.iscsi_param, ptr %call2, i32 0, i32 1
  %2 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %value, align 4
  %call5 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %page, i32 noundef 4096, ptr noundef nonnull @.str.48, ptr noundef %3)
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.end4, %if.end.cleanup.sink.split_crit_edge
  %retval.0.ph = phi i32 [ %call5, %if.end4 ], [ -22, %if.end.cleanup.sink.split_crit_edge ]
  tail call void @iscsit_put_tpg(ptr noundef %add.ptr) #12
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @iscsi_tpg_param_IFMarkInt_store(ptr noundef %item, ptr noundef %page, i32 noundef %count) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %item, i32 -864
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 4096) #17
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %call7.i.i, i32 noundef 4096, ptr noundef nonnull @.str.97, ptr noundef nonnull @.str.116, ptr noundef %page)
  %sub = add i32 %call2, -1
  %arrayidx = getelementptr i8, ptr %call7.i.i, i32 %sub
  %1 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %2 to i32
  %arrayidx3 = getelementptr [0 x i8], ptr @_ctype, i32 0, i32 %conv
  %3 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %arrayidx3, align 1
  %5 = and i8 %4, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %cmp.not = icmp eq i8 %5, 0
  br i1 %cmp.not, label %if.end.if.end9_crit_edge, label %if.then6

if.end.if.end9_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end9

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 0, ptr %arrayidx, align 1
  br label %if.end9

if.end9:                                          ; preds = %if.then6, %if.end.if.end9_crit_edge
  %call10 = tail call i32 @iscsit_get_tpg(ptr noundef %add.ptr) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %cmp11 = icmp slt i32 %call10, 0
  br i1 %cmp11, label %if.then13, label %if.end14

if.then13:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #12
  br label %cleanup

if.end14:                                         ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #14
  %param_list = getelementptr i8, ptr %item, i32 1324
  %7 = ptrtoint ptr %param_list to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %param_list, align 4
  %call15 = tail call i32 @iscsi_change_param_value(ptr noundef nonnull %call7.i.i, ptr noundef %8, i32 noundef 1) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %cmp16 = icmp slt i32 %call15, 0
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #12
  tail call void @iscsit_put_tpg(ptr noundef %add.ptr) #12
  %.count = select i1 %cmp16, i32 -22, i32 %count
  br label %cleanup

cleanup:                                          ; preds = %if.end14, %if.then13, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %if.then13 ], [ -12, %entry.cleanup_crit_edge ], [ %.count, %if.end14 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @iscsi_tpg_param_OFMarkInt_show(ptr noundef %item, ptr nocapture noundef writeonly %page) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %item, i32 -864
  %call1 = tail call i32 @iscsit_get_tpg(ptr noundef %add.ptr) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %param_list = getelementptr i8, ptr %item, i32 1324
  %0 = ptrtoint ptr %param_list to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %param_list, align 4
  %call2 = tail call ptr @iscsi_find_param_from_key(ptr noundef nonnull @.str.117, ptr noundef %1) #12
  %tobool.not = icmp eq ptr %call2, null
  br i1 %tobool.not, label %if.end.cleanup.sink.split_crit_edge, label %if.end4

if.end.cleanup.sink.split_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.sink.split

if.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %value = getelementptr inbounds %struct.iscsi_param, ptr %call2, i32 0, i32 1
  %2 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %value, align 4
  %call5 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %page, i32 noundef 4096, ptr noundef nonnull @.str.48, ptr noundef %3)
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.end4, %if.end.cleanup.sink.split_crit_edge
  %retval.0.ph = phi i32 [ %call5, %if.end4 ], [ -22, %if.end.cleanup.sink.split_crit_edge ]
  tail call void @iscsit_put_tpg(ptr noundef %add.ptr) #12
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @iscsi_tpg_param_OFMarkInt_store(ptr noundef %item, ptr noundef %page, i32 noundef %count) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %item, i32 -864
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 4096) #17
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %call7.i.i, i32 noundef 4096, ptr noundef nonnull @.str.97, ptr noundef nonnull @.str.117, ptr noundef %page)
  %sub = add i32 %call2, -1
  %arrayidx = getelementptr i8, ptr %call7.i.i, i32 %sub
  %1 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %2 to i32
  %arrayidx3 = getelementptr [0 x i8], ptr @_ctype, i32 0, i32 %conv
  %3 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %arrayidx3, align 1
  %5 = and i8 %4, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %cmp.not = icmp eq i8 %5, 0
  br i1 %cmp.not, label %if.end.if.end9_crit_edge, label %if.then6

if.end.if.end9_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end9

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 0, ptr %arrayidx, align 1
  br label %if.end9

if.end9:                                          ; preds = %if.then6, %if.end.if.end9_crit_edge
  %call10 = tail call i32 @iscsit_get_tpg(ptr noundef %add.ptr) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %cmp11 = icmp slt i32 %call10, 0
  br i1 %cmp11, label %if.then13, label %if.end14

if.then13:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #12
  br label %cleanup

if.end14:                                         ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #14
  %param_list = getelementptr i8, ptr %item, i32 1324
  %7 = ptrtoint ptr %param_list to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %param_list, align 4
  %call15 = tail call i32 @iscsi_change_param_value(ptr noundef nonnull %call7.i.i, ptr noundef %8, i32 noundef 1) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %cmp16 = icmp slt i32 %call15, 0
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #12
  tail call void @iscsit_put_tpg(ptr noundef %add.ptr) #12
  %.count = select i1 %cmp16, i32 -22, i32 %count
  br label %cleanup

cleanup:                                          ; preds = %if.end14, %if.then13, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %if.then13 ], [ -12, %entry.cleanup_crit_edge ], [ %.count, %if.end14 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lio_target_nacl_info_show(ptr noundef %item, ptr noundef writeonly %page) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %nacl_sess_lock = getelementptr i8, ptr %item, i32 -44
  tail call void @_raw_spin_lock_bh(ptr noundef %nacl_sess_lock) #12
  %nacl_sess = getelementptr i8, ptr %item, i32 -144
  %0 = ptrtoint ptr %nacl_sess to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %nacl_sess, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %add.ptr.i = getelementptr i8, ptr %item, i32 -456
  %call1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %page, ptr noundef nonnull @.str.119, ptr noundef %add.ptr.i)
  br label %if.end

if.else:                                          ; preds = %entry
  %fabric_sess_ptr = getelementptr inbounds %struct.se_session, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %fabric_sess_ptr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %fabric_sess_ptr, align 8
  %sess_ops = getelementptr inbounds %struct.iscsi_session, ptr %3, i32 0, i32 47
  %4 = ptrtoint ptr %sess_ops to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %sess_ops, align 8
  %call4 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %page, ptr noundef nonnull @.str.120, ptr noundef %5)
  %add.ptr6 = getelementptr i8, ptr %page, i32 %call4
  %6 = ptrtoint ptr %sess_ops to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %sess_ops, align 8
  %InitiatorAlias = getelementptr inbounds %struct.iscsi_sess_ops, ptr %7, i32 0, i32 1
  %call9 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr6, ptr noundef nonnull @.str.121, ptr noundef %InitiatorAlias)
  %add10 = add i32 %call9, %call4
  %add.ptr11 = getelementptr i8, ptr %page, i32 %add10
  %sid = getelementptr inbounds %struct.iscsi_session, ptr %3, i32 0, i32 15
  %8 = ptrtoint ptr %sid to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %sid, align 16
  %isid = getelementptr inbounds %struct.iscsi_session, ptr %3, i32 0, i32 1
  %tsih = getelementptr inbounds %struct.iscsi_session, ptr %3, i32 0, i32 6
  %10 = ptrtoint ptr %tsih to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %tsih, align 2
  %conv = zext i16 %11 to i32
  %call13 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr11, ptr noundef nonnull @.str.122, i32 noundef %9, ptr noundef %isid, i32 noundef %conv)
  %add14 = add i32 %call13, %add10
  %add.ptr15 = getelementptr i8, ptr %page, i32 %add14
  %12 = ptrtoint ptr %sess_ops to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %sess_ops, align 8
  %SessionType = getelementptr inbounds %struct.iscsi_sess_ops, ptr %13, i32 0, i32 17
  %14 = ptrtoint ptr %SessionType to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %SessionType, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool18.not = icmp eq i8 %15, 0
  %cond = select i1 %tobool18.not, ptr @.str.125, ptr @.str.124
  %call19 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr15, ptr noundef nonnull @.str.123, ptr noundef nonnull %cond)
  %add20 = add i32 %call19, %add14
  %add.ptr21 = getelementptr i8, ptr %page, i32 %add20
  %16 = call ptr @memcpy(ptr %add.ptr21, ptr @.str.126, i32 16)
  %add23 = add i32 %add20, 15
  %session_state = getelementptr inbounds %struct.iscsi_session, ptr %3, i32 0, i32 7
  %17 = ptrtoint ptr %session_state to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %session_state, align 4
  %19 = zext i32 %18 to i64
  call void @__sanitizer_cov_trace_switch(i64 %19, ptr @__sancov_gen_cov_switch_values)
  switch i32 %18, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb27
    i32 3, label %sw.bb31
    i32 4, label %sw.bb35
    i32 5, label %sw.bb39
  ]

sw.bb:                                            ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  %add.ptr24 = getelementptr i8, ptr %page, i32 %add23
  %20 = call ptr @memcpy(ptr %add.ptr24, ptr @.str.127, i32 16)
  br label %sw.epilog

sw.bb27:                                          ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  %add.ptr28 = getelementptr i8, ptr %page, i32 %add23
  %21 = call ptr @memcpy(ptr %add.ptr28, ptr @.str.128, i32 24)
  br label %sw.epilog

sw.bb31:                                          ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  %add.ptr32 = getelementptr i8, ptr %page, i32 %add23
  %22 = call ptr @memcpy(ptr %add.ptr32, ptr @.str.129, i32 27)
  br label %sw.epilog

sw.bb35:                                          ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  %add.ptr36 = getelementptr i8, ptr %page, i32 %add23
  %23 = call ptr @memcpy(ptr %add.ptr36, ptr @.str.130, i32 24)
  br label %sw.epilog

sw.bb39:                                          ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  %add.ptr40 = getelementptr i8, ptr %page, i32 %add23
  %24 = call ptr @memcpy(ptr %add.ptr40, ptr @.str.131, i32 29)
  br label %sw.epilog

sw.default:                                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  %add.ptr43 = getelementptr i8, ptr %page, i32 %add23
  %25 = call ptr @memcpy(ptr %add.ptr43, ptr @.str.132, i32 31)
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb39, %sw.bb35, %sw.bb31, %sw.bb27, %sw.bb
  %.sink = phi i32 [ 45, %sw.default ], [ 43, %sw.bb39 ], [ 38, %sw.bb35 ], [ 41, %sw.bb31 ], [ 38, %sw.bb27 ], [ 30, %sw.bb ]
  %add45 = add i32 %add20, %.sink
  %add.ptr46 = getelementptr i8, ptr %page, i32 %add45
  %26 = call ptr @memcpy(ptr %add.ptr46, ptr @.str.133, i32 68)
  %add48 = add i32 %add45, 67
  %add.ptr49 = getelementptr i8, ptr %page, i32 %add48
  %27 = call ptr @memcpy(ptr %add.ptr49, ptr @.str.134, i32 75)
  %add51 = add i32 %add45, 141
  %max_cmd_sn52 = getelementptr inbounds %struct.iscsi_session, ptr %3, i32 0, i32 13
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %max_cmd_sn52, i32 noundef 4) #12
  %28 = ptrtoint ptr %max_cmd_sn52 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %max_cmd_sn52, align 4
  %add.ptr54 = getelementptr i8, ptr %page, i32 %add51
  %cmdsn_window = getelementptr inbounds %struct.iscsi_session, ptr %3, i32 0, i32 10
  %30 = ptrtoint ptr %cmdsn_window to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %cmdsn_window, align 32
  %exp_cmd_sn = getelementptr inbounds %struct.iscsi_session, ptr %3, i32 0, i32 12
  %32 = ptrtoint ptr %exp_cmd_sn to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %exp_cmd_sn, align 128
  %sub = add i32 %29, 1
  %add55 = sub i32 %sub, %33
  %init_task_tag = getelementptr inbounds %struct.iscsi_session, ptr %3, i32 0, i32 8
  %34 = ptrtoint ptr %init_task_tag to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %init_task_tag, align 8
  %targ_xfer_tag = getelementptr inbounds %struct.iscsi_session, ptr %3, i32 0, i32 9
  %36 = ptrtoint ptr %targ_xfer_tag to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %targ_xfer_tag, align 4
  %call57 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr54, ptr noundef nonnull @.str.135, i32 noundef %31, i32 noundef %add55, i32 noundef %33, i32 noundef %29, i32 noundef %35, i32 noundef %37)
  %add58 = add i32 %call57, %add51
  %add.ptr59 = getelementptr i8, ptr %page, i32 %add58
  %38 = call ptr @memcpy(ptr %add.ptr59, ptr @.str.136, i32 68)
  %add61 = add i32 %add58, 67
  %conn_lock = getelementptr inbounds %struct.iscsi_session, ptr %3, i32 0, i32 37
  tail call void @_raw_spin_lock(ptr noundef %conn_lock) #12
  %sess_conn_list = getelementptr inbounds %struct.iscsi_session, ptr %3, i32 0, i32 34
  %39 = ptrtoint ptr %sess_conn_list to i32
  call void @__asan_load4_noabort(i32 %39)
  %.pn227 = load ptr, ptr %sess_conn_list, align 4
  %cmp.not228 = icmp eq ptr %.pn227, %sess_conn_list
  br i1 %cmp.not228, label %sw.epilog.for.end_crit_edge, label %sw.epilog.for.body_crit_edge

sw.epilog.for.body_crit_edge:                     ; preds = %sw.epilog
  br label %for.body

sw.epilog.for.end_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body:                                         ; preds = %sw.epilog102.for.body_crit_edge, %sw.epilog.for.body_crit_edge
  %.pn230 = phi ptr [ %.pn, %sw.epilog102.for.body_crit_edge ], [ %.pn227, %sw.epilog.for.body_crit_edge ]
  %rb.1229 = phi i32 [ %add112, %sw.epilog102.for.body_crit_edge ], [ %add61, %sw.epilog.for.body_crit_edge ]
  %add.ptr65 = getelementptr i8, ptr %page, i32 %rb.1229
  %cid = getelementptr i8, ptr %.pn230, i32 -1410
  %40 = ptrtoint ptr %cid to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %cid, align 2
  %conv66 = zext i16 %41 to i32
  %call67 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr65, ptr noundef nonnull @.str.137, i32 noundef %conv66)
  %add68 = add i32 %call67, %rb.1229
  %conn_state = getelementptr i8, ptr %.pn230, i32 -1423
  %42 = ptrtoint ptr %conn_state to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %conn_state, align 1
  %44 = zext i8 %43 to i64
  call void @__sanitizer_cov_trace_switch(i64 %44, ptr @__sancov_gen_cov_switch_values.172)
  switch i8 %43, label %sw.default98 [
    i8 1, label %sw.bb70
    i8 3, label %sw.bb74
    i8 4, label %sw.bb78
    i8 5, label %sw.bb82
    i8 6, label %sw.bb86
    i8 7, label %sw.bb90
    i8 8, label %sw.bb94
  ]

sw.bb70:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  %add.ptr71 = getelementptr i8, ptr %page, i32 %add68
  %45 = call ptr @memcpy(ptr %add.ptr71, ptr @.str.138, i32 22)
  br label %sw.epilog102

sw.bb74:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  %add.ptr75 = getelementptr i8, ptr %page, i32 %add68
  %46 = call ptr @memcpy(ptr %add.ptr75, ptr @.str.139, i32 24)
  br label %sw.epilog102

sw.bb78:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  %add.ptr79 = getelementptr i8, ptr %page, i32 %add68
  %47 = call ptr @memcpy(ptr %add.ptr79, ptr @.str.140, i32 26)
  br label %sw.epilog102

sw.bb82:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  %add.ptr83 = getelementptr i8, ptr %page, i32 %add68
  %48 = call ptr @memcpy(ptr %add.ptr83, ptr @.str.141, i32 27)
  br label %sw.epilog102

sw.bb86:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  %add.ptr87 = getelementptr i8, ptr %page, i32 %add68
  %49 = call ptr @memcpy(ptr %add.ptr87, ptr @.str.142, i32 27)
  br label %sw.epilog102

sw.bb90:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  %add.ptr91 = getelementptr i8, ptr %page, i32 %add68
  %50 = call ptr @memcpy(ptr %add.ptr91, ptr @.str.143, i32 34)
  br label %sw.epilog102

sw.bb94:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  %add.ptr95 = getelementptr i8, ptr %page, i32 %add68
  %51 = call ptr @memcpy(ptr %add.ptr95, ptr @.str.144, i32 30)
  br label %sw.epilog102

sw.default98:                                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  %add.ptr99 = getelementptr i8, ptr %page, i32 %add68
  %52 = call ptr @memcpy(ptr %add.ptr99, ptr @.str.145, i32 34)
  br label %sw.epilog102

sw.epilog102:                                     ; preds = %sw.default98, %sw.bb94, %sw.bb90, %sw.bb86, %sw.bb82, %sw.bb78, %sw.bb74, %sw.bb70
  %call100.pn = phi i32 [ 33, %sw.default98 ], [ 29, %sw.bb94 ], [ 33, %sw.bb90 ], [ 26, %sw.bb86 ], [ 26, %sw.bb82 ], [ 25, %sw.bb78 ], [ 23, %sw.bb74 ], [ 21, %sw.bb70 ]
  %rb.2 = add i32 %call100.pn, %add68
  %add.ptr103 = getelementptr i8, ptr %page, i32 %rb.2
  %login_sockaddr = getelementptr i8, ptr %.pn230, i32 -1376
  %network_transport = getelementptr i8, ptr %.pn230, i32 -1421
  %53 = ptrtoint ptr %network_transport to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %network_transport, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %54)
  %cmp105 = icmp eq i8 %54, 0
  %cond107 = select i1 %cmp105, ptr @.str.147, ptr @.str.148
  %call108 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr103, ptr noundef nonnull @.str.146, ptr noundef %login_sockaddr, ptr noundef nonnull %cond107)
  %add109 = add i32 %call108, %rb.2
  %add.ptr110 = getelementptr i8, ptr %page, i32 %add109
  %stat_sn = getelementptr i8, ptr %.pn230, i32 -1380
  %55 = ptrtoint ptr %stat_sn to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %stat_sn, align 32
  %call111 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr110, ptr noundef nonnull @.str.149, i32 noundef %56)
  %add112 = add i32 %call111, %add109
  %57 = ptrtoint ptr %.pn230 to i32
  call void @__asan_load4_noabort(i32 %57)
  %.pn = load ptr, ptr %.pn230, align 4
  %cmp.not = icmp eq ptr %.pn, %sess_conn_list
  br i1 %cmp.not, label %sw.epilog102.for.end_crit_edge, label %sw.epilog102.for.body_crit_edge

sw.epilog102.for.body_crit_edge:                  ; preds = %sw.epilog102
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

sw.epilog102.for.end_crit_edge:                   ; preds = %sw.epilog102
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.end:                                          ; preds = %sw.epilog102.for.end_crit_edge, %sw.epilog.for.end_crit_edge
  %rb.1.lcssa = phi i32 [ %add61, %sw.epilog.for.end_crit_edge ], [ %add112, %sw.epilog102.for.end_crit_edge ]
  tail call void @_raw_spin_unlock(ptr noundef %conn_lock) #12
  br label %if.end

if.end:                                           ; preds = %for.end, %if.then
  %rb.3 = phi i32 [ %rb.1.lcssa, %for.end ], [ %call1, %if.then ]
  tail call void @_raw_spin_unlock_bh(ptr noundef %nacl_sess_lock) #12
  ret i32 %rb.3
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lio_target_nacl_cmdsn_depth_show(ptr nocapture noundef readonly %item, ptr nocapture noundef writeonly %page) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %queue_depth = getelementptr i8, ptr %item, i32 -228
  %0 = ptrtoint ptr %queue_depth to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %queue_depth, align 4
  %call1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %page, ptr noundef nonnull @.str.83, i32 noundef %1)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lio_target_nacl_cmdsn_depth_store(ptr noundef %item, ptr noundef %page, i32 noundef %count) #2 align 64 {
entry:
  %cmdsn_depth = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %item, i32 -456
  %se_tpg1 = getelementptr i8, ptr %item, i32 -140
  %0 = ptrtoint ptr %se_tpg1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %se_tpg1, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 -112
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %cmdsn_depth) #12
  %2 = ptrtoint ptr %cmdsn_depth to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %cmdsn_depth, align 4
  %call.i = call i32 @kstrtouint(ptr noundef %page, i32 noundef 0, ptr noundef nonnull %cmdsn_depth) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = ptrtoint ptr %cmdsn_depth to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %cmdsn_depth, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 512, i32 %4)
  %cmp = icmp ugt i32 %4, 512
  br i1 %cmp, label %do.end, label %if.end6

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %call5 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.151, i32 noundef %4, i32 noundef 512) #15
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %tobool7.not = icmp eq ptr %item, null
  br i1 %tobool7.not, label %do.end11, label %if.end14

do.end11:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #14
  %call13 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.154) #15
  br label %cleanup

if.end14:                                         ; preds = %if.end6
  %ci_parent = getelementptr i8, ptr %item, i32 36
  %5 = ptrtoint ptr %ci_parent to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ci_parent, align 4
  %ci_group = getelementptr inbounds %struct.config_item, ptr %6, i32 0, i32 5
  %7 = ptrtoint ptr %ci_group to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %ci_group, align 4
  %tobool16.not = icmp eq ptr %8, null
  br i1 %tobool16.not, label %do.end20, label %if.end23

do.end20:                                         ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #14
  %call22 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.157) #15
  br label %cleanup

if.end23:                                         ; preds = %if.end14
  %ci_group24 = getelementptr inbounds %struct.config_item, ptr %8, i32 0, i32 5
  %9 = ptrtoint ptr %ci_group24 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ci_group24, align 4
  %tobool26.not = icmp eq ptr %10, null
  br i1 %tobool26.not, label %do.end30, label %if.end33

do.end30:                                         ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #14
  %call32 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.160) #15
  br label %cleanup

if.end33:                                         ; preds = %if.end23
  %call34 = call i32 @iscsit_get_tpg(ptr noundef %add.ptr) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34)
  %cmp35 = icmp slt i32 %call34, 0
  br i1 %cmp35, label %if.end33.cleanup_crit_edge, label %if.end37

if.end33.cleanup_crit_edge:                       ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end37:                                         ; preds = %if.end33
  %11 = ptrtoint ptr %cmdsn_depth to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %cmdsn_depth, align 4
  %call38 = call i32 @core_tpg_set_initiator_node_queue_depth(ptr noundef %add.ptr.i, i32 noundef %12) #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @lio_target_nacl_cmdsn_depth_store.__UNIQUE_ID_ddebug485, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@lio_target_nacl_cmdsn_depth_store, %if.then45)) #12
          to label %do.end51 [label %if.then45], !srcloc !464

if.then45:                                        ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #14
  %13 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %10, align 4
  %15 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %8, align 4
  %17 = ptrtoint ptr %cmdsn_depth to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %cmdsn_depth, align 4
  %19 = ptrtoint ptr %item to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %item, align 4
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @lio_target_nacl_cmdsn_depth_store.__UNIQUE_ID_ddebug485, ptr noundef nonnull @.str.162, ptr noundef %14, ptr noundef %16, i32 noundef %18, ptr noundef %20) #12
  br label %do.end51

do.end51:                                         ; preds = %if.then45, %if.end37
  call void @iscsit_put_tpg(ptr noundef %add.ptr) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call38)
  %tobool52.not = icmp eq i32 %call38, 0
  %count.call38 = select i1 %tobool52.not, i32 %count, i32 %call38
  br label %cleanup

cleanup:                                          ; preds = %do.end51, %if.end33.cleanup_crit_edge, %do.end30, %do.end20, %do.end11, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end ], [ %count.call38, %do.end51 ], [ -22, %do.end30 ], [ -22, %do.end20 ], [ -22, %do.end11 ], [ %call.i, %entry.cleanup_crit_edge ], [ -22, %if.end33.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cmdsn_depth) #12
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @core_tpg_set_initiator_node_queue_depth(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lio_target_nacl_tag_show(ptr noundef %item, ptr nocapture noundef writeonly %page) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %acl_tag = getelementptr i8, ptr %item, i32 -216
  %call1 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %page, i32 noundef 4096, ptr noundef nonnull @.str.25, ptr noundef %acl_tag)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lio_target_nacl_tag_store(ptr noundef %item, ptr noundef %page, i32 noundef %count) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %item, i32 -456
  %se_tpg = getelementptr i8, ptr %item, i32 -140
  %0 = ptrtoint ptr %se_tpg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %se_tpg, align 4
  %call1 = tail call i32 @core_tpg_set_initiator_node_tag(ptr noundef %1, ptr noundef %add.ptr.i, ptr noundef %page) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  %call1.count = select i1 %cmp, i32 %call1, i32 %count
  ret i32 %call1.count
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @core_tpg_set_initiator_node_tag(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @iscsi_nacl_attrib_dataout_timeout_show(ptr nocapture noundef readonly %item, ptr nocapture noundef writeonly %page) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %node_attrib = getelementptr i8, ptr %item, i32 396
  %0 = ptrtoint ptr %node_attrib to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %node_attrib, align 4
  %call1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %page, ptr noundef nonnull @.str.83, i32 noundef %1)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @iscsi_nacl_attrib_dataout_timeout_store(ptr noundef %item, ptr noundef %page, i32 noundef %count) #2 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #12
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %val, align 4, !annotation !465
  %call.i = call i32 @kstrtouint(ptr noundef %page, i32 noundef 0, ptr noundef nonnull %val) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %add.ptr.i = getelementptr i8, ptr %item, i32 -536
  %1 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %val, align 4
  %call2 = call i32 @iscsit_na_dataout_timeout(ptr noundef %add.ptr.i, i32 noundef %2) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp = icmp slt i32 %call2, 0
  %call2.count = select i1 %cmp, i32 %call2, i32 %count
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %entry.cleanup_crit_edge ], [ %call2.count, %if.end ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #12
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iscsit_na_dataout_timeout(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @iscsi_nacl_attrib_dataout_timeout_retries_show(ptr nocapture noundef readonly %item, ptr nocapture noundef writeonly %page) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %dataout_timeout_retries = getelementptr i8, ptr %item, i32 400
  %0 = ptrtoint ptr %dataout_timeout_retries to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %dataout_timeout_retries, align 4
  %call1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %page, ptr noundef nonnull @.str.83, i32 noundef %1)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @iscsi_nacl_attrib_dataout_timeout_retries_store(ptr noundef %item, ptr noundef %page, i32 noundef %count) #2 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #12
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %val, align 4, !annotation !465
  %call.i = call i32 @kstrtouint(ptr noundef %page, i32 noundef 0, ptr noundef nonnull %val) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %add.ptr.i = getelementptr i8, ptr %item, i32 -536
  %1 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %val, align 4
  %call2 = call i32 @iscsit_na_dataout_timeout_retries(ptr noundef %add.ptr.i, i32 noundef %2) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp = icmp slt i32 %call2, 0
  %call2.count = select i1 %cmp, i32 %call2, i32 %count
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %entry.cleanup_crit_edge ], [ %call2.count, %if.end ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #12
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iscsit_na_dataout_timeout_retries(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @iscsi_nacl_attrib_default_erl_show(ptr nocapture noundef readonly %item, ptr nocapture noundef writeonly %page) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %default_erl = getelementptr i8, ptr %item, i32 404
  %0 = ptrtoint ptr %default_erl to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %default_erl, align 4
  %call1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %page, ptr noundef nonnull @.str.83, i32 noundef %1)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @iscsi_nacl_attrib_default_erl_store(ptr noundef %item, ptr noundef %page, i32 noundef %count) #2 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #12
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %val, align 4, !annotation !465
  %call.i = call i32 @kstrtouint(ptr noundef %page, i32 noundef 0, ptr noundef nonnull %val) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %add.ptr.i = getelementptr i8, ptr %item, i32 -536
  %1 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %val, align 4
  %call2 = call i32 @iscsit_na_default_erl(ptr noundef %add.ptr.i, i32 noundef %2) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp = icmp slt i32 %call2, 0
  %call2.count = select i1 %cmp, i32 %call2, i32 %count
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %entry.cleanup_crit_edge ], [ %call2.count, %if.end ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #12
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iscsit_na_default_erl(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @iscsi_nacl_attrib_nopin_timeout_show(ptr nocapture noundef readonly %item, ptr nocapture noundef writeonly %page) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %nopin_timeout = getelementptr i8, ptr %item, i32 408
  %0 = ptrtoint ptr %nopin_timeout to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %nopin_timeout, align 4
  %call1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %page, ptr noundef nonnull @.str.83, i32 noundef %1)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @iscsi_nacl_attrib_nopin_timeout_store(ptr noundef %item, ptr noundef %page, i32 noundef %count) #2 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #12
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %val, align 4, !annotation !465
  %call.i = call i32 @kstrtouint(ptr noundef %page, i32 noundef 0, ptr noundef nonnull %val) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %add.ptr.i = getelementptr i8, ptr %item, i32 -536
  %1 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %val, align 4
  %call2 = call i32 @iscsit_na_nopin_timeout(ptr noundef %add.ptr.i, i32 noundef %2) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp = icmp slt i32 %call2, 0
  %call2.count = select i1 %cmp, i32 %call2, i32 %count
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %entry.cleanup_crit_edge ], [ %call2.count, %if.end ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #12
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iscsit_na_nopin_timeout(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @iscsi_nacl_attrib_nopin_response_timeout_show(ptr nocapture noundef readonly %item, ptr nocapture noundef writeonly %page) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %nopin_response_timeout = getelementptr i8, ptr %item, i32 412
  %0 = ptrtoint ptr %nopin_response_timeout to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %nopin_response_timeout, align 4
  %call1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %page, ptr noundef nonnull @.str.83, i32 noundef %1)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @iscsi_nacl_attrib_nopin_response_timeout_store(ptr noundef %item, ptr noundef %page, i32 noundef %count) #2 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #12
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %val, align 4, !annotation !465
  %call.i = call i32 @kstrtouint(ptr noundef %page, i32 noundef 0, ptr noundef nonnull %val) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %add.ptr.i = getelementptr i8, ptr %item, i32 -536
  %1 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %val, align 4
  %call2 = call i32 @iscsit_na_nopin_response_timeout(ptr noundef %add.ptr.i, i32 noundef %2) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp = icmp slt i32 %call2, 0
  %call2.count = select i1 %cmp, i32 %call2, i32 %count
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %entry.cleanup_crit_edge ], [ %call2.count, %if.end ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #12
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iscsit_na_nopin_response_timeout(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @iscsi_nacl_attrib_random_datain_pdu_offsets_show(ptr nocapture noundef readonly %item, ptr nocapture noundef writeonly %page) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %random_datain_pdu_offsets = getelementptr i8, ptr %item, i32 416
  %0 = ptrtoint ptr %random_datain_pdu_offsets to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %random_datain_pdu_offsets, align 4
  %call1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %page, ptr noundef nonnull @.str.83, i32 noundef %1)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @iscsi_nacl_attrib_random_datain_pdu_offsets_store(ptr noundef %item, ptr noundef %page, i32 noundef %count) #2 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #12
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %val, align 4, !annotation !465
  %call.i = call i32 @kstrtouint(ptr noundef %page, i32 noundef 0, ptr noundef nonnull %val) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %add.ptr.i = getelementptr i8, ptr %item, i32 -536
  %1 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %val, align 4
  %call2 = call i32 @iscsit_na_random_datain_pdu_offsets(ptr noundef %add.ptr.i, i32 noundef %2) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp = icmp slt i32 %call2, 0
  %call2.count = select i1 %cmp, i32 %call2, i32 %count
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %entry.cleanup_crit_edge ], [ %call2.count, %if.end ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #12
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iscsit_na_random_datain_pdu_offsets(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @iscsi_nacl_attrib_random_datain_seq_offsets_show(ptr nocapture noundef readonly %item, ptr nocapture noundef writeonly %page) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %random_datain_seq_offsets = getelementptr i8, ptr %item, i32 420
  %0 = ptrtoint ptr %random_datain_seq_offsets to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %random_datain_seq_offsets, align 4
  %call1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %page, ptr noundef nonnull @.str.83, i32 noundef %1)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @iscsi_nacl_attrib_random_datain_seq_offsets_store(ptr noundef %item, ptr noundef %page, i32 noundef %count) #2 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #12
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %val, align 4, !annotation !465
  %call.i = call i32 @kstrtouint(ptr noundef %page, i32 noundef 0, ptr noundef nonnull %val) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %add.ptr.i = getelementptr i8, ptr %item, i32 -536
  %1 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %val, align 4
  %call2 = call i32 @iscsit_na_random_datain_seq_offsets(ptr noundef %add.ptr.i, i32 noundef %2) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp = icmp slt i32 %call2, 0
  %call2.count = select i1 %cmp, i32 %call2, i32 %count
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %entry.cleanup_crit_edge ], [ %call2.count, %if.end ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #12
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iscsit_na_random_datain_seq_offsets(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @iscsi_nacl_attrib_random_r2t_offsets_show(ptr nocapture noundef readonly %item, ptr nocapture noundef writeonly %page) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %random_r2t_offsets = getelementptr i8, ptr %item, i32 424
  %0 = ptrtoint ptr %random_r2t_offsets to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %random_r2t_offsets, align 4
  %call1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %page, ptr noundef nonnull @.str.83, i32 noundef %1)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @iscsi_nacl_attrib_random_r2t_offsets_store(ptr noundef %item, ptr noundef %page, i32 noundef %count) #2 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #12
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %val, align 4, !annotation !465
  %call.i = call i32 @kstrtouint(ptr noundef %page, i32 noundef 0, ptr noundef nonnull %val) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %add.ptr.i = getelementptr i8, ptr %item, i32 -536
  %1 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %val, align 4
  %call2 = call i32 @iscsit_na_random_r2t_offsets(ptr noundef %add.ptr.i, i32 noundef %2) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp = icmp slt i32 %call2, 0
  %call2.count = select i1 %cmp, i32 %call2, i32 %count
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %entry.cleanup_crit_edge ], [ %call2.count, %if.end ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #12
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iscsit_na_random_r2t_offsets(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @iscsi_nacl_auth_userid_show(ptr noundef %item, ptr nocapture noundef writeonly %page) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call zeroext i1 @capable(i32 noundef 21) #12
  br i1 %call.i, label %if.end.i, label %entry.__iscsi_nacl_auth_userid_show.exit_crit_edge

entry.__iscsi_nacl_auth_userid_show.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %__iscsi_nacl_auth_userid_show.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %userid.i = getelementptr i8, ptr %item, i32 372
  %call1.i = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %page, i32 noundef 4096, ptr noundef nonnull @.str.48, ptr noundef %userid.i) #12
  br label %__iscsi_nacl_auth_userid_show.exit

__iscsi_nacl_auth_userid_show.exit:               ; preds = %if.end.i, %entry.__iscsi_nacl_auth_userid_show.exit_crit_edge
  %retval.0.i = phi i32 [ %call1.i, %if.end.i ], [ -1, %entry.__iscsi_nacl_auth_userid_show.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @iscsi_nacl_auth_userid_store(ptr nocapture noundef %item, ptr noundef %page, i32 noundef %count) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %node_auth.i = getelementptr i8, ptr %item, i32 360
  %call.i = tail call zeroext i1 @capable(i32 noundef 21) #12
  br i1 %call.i, label %if.end.i, label %entry.__iscsi_nacl_auth_userid_store.exit_crit_edge

entry.__iscsi_nacl_auth_userid_store.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %__iscsi_nacl_auth_userid_store.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %count)
  %cmp.i = icmp ugt i32 %count, 255
  br i1 %cmp.i, label %if.end.i.__iscsi_nacl_auth_userid_store.exit_crit_edge, label %if.end2.i

if.end.i.__iscsi_nacl_auth_userid_store.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %__iscsi_nacl_auth_userid_store.exit

if.end2.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  %userid.i = getelementptr i8, ptr %item, i32 372
  %call3.i = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %userid.i, i32 noundef 256, ptr noundef nonnull @.str.25, ptr noundef %page) #12
  %call6.i = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(5) @.str.49, ptr noundef %userid.i, i32 noundef 4) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i)
  %tobool.not.i = icmp ne i32 %call6.i, 0
  %0 = ptrtoint ptr %node_auth.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %node_auth.i, align 4
  %and.i = and i32 %1, -2
  %masksel.i = zext i1 %tobool.not.i to i32
  %storemerge.i = or i32 %and.i, %masksel.i
  store i32 %storemerge.i, ptr %node_auth.i, align 4
  %2 = and i32 %1, 12
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %2)
  %.not.i = icmp eq i32 %2, 12
  %.sink.i = zext i1 %.not.i to i32
  %authenticate_target.i = getelementptr i8, ptr %item, i32 364
  %3 = ptrtoint ptr %authenticate_target.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %.sink.i, ptr %authenticate_target.i, align 4
  br label %__iscsi_nacl_auth_userid_store.exit

__iscsi_nacl_auth_userid_store.exit:              ; preds = %if.end2.i, %if.end.i.__iscsi_nacl_auth_userid_store.exit_crit_edge, %entry.__iscsi_nacl_auth_userid_store.exit_crit_edge
  %retval.0.i = phi i32 [ -1, %entry.__iscsi_nacl_auth_userid_store.exit_crit_edge ], [ -22, %if.end.i.__iscsi_nacl_auth_userid_store.exit_crit_edge ], [ %count, %if.end2.i ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @iscsi_nacl_auth_password_show(ptr noundef %item, ptr nocapture noundef writeonly %page) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call zeroext i1 @capable(i32 noundef 21) #12
  br i1 %call.i, label %if.end.i, label %entry.__iscsi_nacl_auth_password_show.exit_crit_edge

entry.__iscsi_nacl_auth_password_show.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %__iscsi_nacl_auth_password_show.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %password.i = getelementptr i8, ptr %item, i32 628
  %call1.i = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %page, i32 noundef 4096, ptr noundef nonnull @.str.48, ptr noundef %password.i) #12
  br label %__iscsi_nacl_auth_password_show.exit

__iscsi_nacl_auth_password_show.exit:             ; preds = %if.end.i, %entry.__iscsi_nacl_auth_password_show.exit_crit_edge
  %retval.0.i = phi i32 [ %call1.i, %if.end.i ], [ -1, %entry.__iscsi_nacl_auth_password_show.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @iscsi_nacl_auth_password_store(ptr nocapture noundef %item, ptr noundef %page, i32 noundef %count) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %node_auth.i = getelementptr i8, ptr %item, i32 360
  %call.i = tail call zeroext i1 @capable(i32 noundef 21) #12
  br i1 %call.i, label %if.end.i, label %entry.__iscsi_nacl_auth_password_store.exit_crit_edge

entry.__iscsi_nacl_auth_password_store.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %__iscsi_nacl_auth_password_store.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %count)
  %cmp.i = icmp ugt i32 %count, 255
  br i1 %cmp.i, label %if.end.i.__iscsi_nacl_auth_password_store.exit_crit_edge, label %if.end2.i

if.end.i.__iscsi_nacl_auth_password_store.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %__iscsi_nacl_auth_password_store.exit

if.end2.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  %password.i = getelementptr i8, ptr %item, i32 628
  %call3.i = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %password.i, i32 noundef 256, ptr noundef nonnull @.str.25, ptr noundef %page) #12
  %call6.i = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(5) @.str.49, ptr noundef %password.i, i32 noundef 4) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i)
  %tobool.not.i = icmp eq i32 %call6.i, 0
  %0 = ptrtoint ptr %node_auth.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %node_auth.i, align 4
  %and.i = and i32 %1, -3
  %masksel.i = select i1 %tobool.not.i, i32 0, i32 2
  %storemerge.i = or i32 %and.i, %masksel.i
  store i32 %storemerge.i, ptr %node_auth.i, align 4
  %2 = and i32 %1, 12
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %2)
  %.not.i = icmp eq i32 %2, 12
  %.sink.i = zext i1 %.not.i to i32
  %authenticate_target.i = getelementptr i8, ptr %item, i32 364
  %3 = ptrtoint ptr %authenticate_target.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %.sink.i, ptr %authenticate_target.i, align 4
  br label %__iscsi_nacl_auth_password_store.exit

__iscsi_nacl_auth_password_store.exit:            ; preds = %if.end2.i, %if.end.i.__iscsi_nacl_auth_password_store.exit_crit_edge, %entry.__iscsi_nacl_auth_password_store.exit_crit_edge
  %retval.0.i = phi i32 [ -1, %entry.__iscsi_nacl_auth_password_store.exit_crit_edge ], [ -22, %if.end.i.__iscsi_nacl_auth_password_store.exit_crit_edge ], [ %count, %if.end2.i ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @iscsi_nacl_auth_authenticate_target_show(ptr nocapture noundef readonly %item, ptr nocapture noundef writeonly %page) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call zeroext i1 @capable(i32 noundef 21) #12
  br i1 %call.i, label %if.end.i, label %entry.__iscsi_nacl_auth_authenticate_target_show.exit_crit_edge

entry.__iscsi_nacl_auth_authenticate_target_show.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %__iscsi_nacl_auth_authenticate_target_show.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %authenticate_target.i = getelementptr i8, ptr %item, i32 364
  %0 = ptrtoint ptr %authenticate_target.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %authenticate_target.i, align 4
  %call1.i = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %page, i32 noundef 4096, ptr noundef nonnull @.str.52, i32 noundef %1) #12
  br label %__iscsi_nacl_auth_authenticate_target_show.exit

__iscsi_nacl_auth_authenticate_target_show.exit:  ; preds = %if.end.i, %entry.__iscsi_nacl_auth_authenticate_target_show.exit_crit_edge
  %retval.0.i = phi i32 [ %call1.i, %if.end.i ], [ -1, %entry.__iscsi_nacl_auth_authenticate_target_show.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @iscsi_nacl_auth_userid_mutual_show(ptr noundef %item, ptr nocapture noundef writeonly %page) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call zeroext i1 @capable(i32 noundef 21) #12
  br i1 %call.i, label %if.end.i, label %entry.__iscsi_nacl_auth_userid_mutual_show.exit_crit_edge

entry.__iscsi_nacl_auth_userid_mutual_show.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %__iscsi_nacl_auth_userid_mutual_show.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %userid_mutual.i = getelementptr i8, ptr %item, i32 884
  %call1.i = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %page, i32 noundef 4096, ptr noundef nonnull @.str.48, ptr noundef %userid_mutual.i) #12
  br label %__iscsi_nacl_auth_userid_mutual_show.exit

__iscsi_nacl_auth_userid_mutual_show.exit:        ; preds = %if.end.i, %entry.__iscsi_nacl_auth_userid_mutual_show.exit_crit_edge
  %retval.0.i = phi i32 [ %call1.i, %if.end.i ], [ -1, %entry.__iscsi_nacl_auth_userid_mutual_show.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @iscsi_nacl_auth_userid_mutual_store(ptr nocapture noundef %item, ptr noundef %page, i32 noundef %count) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %node_auth.i = getelementptr i8, ptr %item, i32 360
  %call.i = tail call zeroext i1 @capable(i32 noundef 21) #12
  br i1 %call.i, label %if.end.i, label %entry.__iscsi_nacl_auth_userid_mutual_store.exit_crit_edge

entry.__iscsi_nacl_auth_userid_mutual_store.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %__iscsi_nacl_auth_userid_mutual_store.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %count)
  %cmp.i = icmp ugt i32 %count, 255
  br i1 %cmp.i, label %if.end.i.__iscsi_nacl_auth_userid_mutual_store.exit_crit_edge, label %if.end2.i

if.end.i.__iscsi_nacl_auth_userid_mutual_store.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %__iscsi_nacl_auth_userid_mutual_store.exit

if.end2.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  %userid_mutual.i = getelementptr i8, ptr %item, i32 884
  %call3.i = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %userid_mutual.i, i32 noundef 256, ptr noundef nonnull @.str.25, ptr noundef %page) #12
  %call6.i = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(5) @.str.49, ptr noundef %userid_mutual.i, i32 noundef 4) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i)
  %tobool.not.i = icmp eq i32 %call6.i, 0
  %0 = ptrtoint ptr %node_auth.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %node_auth.i, align 4
  %and.i = and i32 %1, -5
  %masksel.i = select i1 %tobool.not.i, i32 0, i32 4
  %storemerge.i = or i32 %and.i, %masksel.i
  store i32 %storemerge.i, ptr %node_auth.i, align 4
  %2 = and i32 %storemerge.i, 12
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %2)
  %.not.i = icmp eq i32 %2, 12
  %.sink.i = zext i1 %.not.i to i32
  %authenticate_target.i = getelementptr i8, ptr %item, i32 364
  %3 = ptrtoint ptr %authenticate_target.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %.sink.i, ptr %authenticate_target.i, align 4
  br label %__iscsi_nacl_auth_userid_mutual_store.exit

__iscsi_nacl_auth_userid_mutual_store.exit:       ; preds = %if.end2.i, %if.end.i.__iscsi_nacl_auth_userid_mutual_store.exit_crit_edge, %entry.__iscsi_nacl_auth_userid_mutual_store.exit_crit_edge
  %retval.0.i = phi i32 [ -1, %entry.__iscsi_nacl_auth_userid_mutual_store.exit_crit_edge ], [ -22, %if.end.i.__iscsi_nacl_auth_userid_mutual_store.exit_crit_edge ], [ %count, %if.end2.i ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @iscsi_nacl_auth_password_mutual_show(ptr noundef %item, ptr nocapture noundef writeonly %page) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call zeroext i1 @capable(i32 noundef 21) #12
  br i1 %call.i, label %if.end.i, label %entry.__iscsi_nacl_auth_password_mutual_show.exit_crit_edge

entry.__iscsi_nacl_auth_password_mutual_show.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %__iscsi_nacl_auth_password_mutual_show.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %password_mutual.i = getelementptr i8, ptr %item, i32 1140
  %call1.i = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %page, i32 noundef 4096, ptr noundef nonnull @.str.48, ptr noundef %password_mutual.i) #12
  br label %__iscsi_nacl_auth_password_mutual_show.exit

__iscsi_nacl_auth_password_mutual_show.exit:      ; preds = %if.end.i, %entry.__iscsi_nacl_auth_password_mutual_show.exit_crit_edge
  %retval.0.i = phi i32 [ %call1.i, %if.end.i ], [ -1, %entry.__iscsi_nacl_auth_password_mutual_show.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @iscsi_nacl_auth_password_mutual_store(ptr nocapture noundef %item, ptr noundef %page, i32 noundef %count) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %node_auth.i = getelementptr i8, ptr %item, i32 360
  %call.i = tail call zeroext i1 @capable(i32 noundef 21) #12
  br i1 %call.i, label %if.end.i, label %entry.__iscsi_nacl_auth_password_mutual_store.exit_crit_edge

entry.__iscsi_nacl_auth_password_mutual_store.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %__iscsi_nacl_auth_password_mutual_store.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %count)
  %cmp.i = icmp ugt i32 %count, 255
  br i1 %cmp.i, label %if.end.i.__iscsi_nacl_auth_password_mutual_store.exit_crit_edge, label %if.end2.i

if.end.i.__iscsi_nacl_auth_password_mutual_store.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %__iscsi_nacl_auth_password_mutual_store.exit

if.end2.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  %password_mutual.i = getelementptr i8, ptr %item, i32 1140
  %call3.i = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %password_mutual.i, i32 noundef 256, ptr noundef nonnull @.str.25, ptr noundef %page) #12
  %call6.i = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(5) @.str.49, ptr noundef %password_mutual.i, i32 noundef 4) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i)
  %tobool.not.i = icmp eq i32 %call6.i, 0
  %0 = ptrtoint ptr %node_auth.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %node_auth.i, align 4
  %and.i = and i32 %1, -9
  %masksel.i = select i1 %tobool.not.i, i32 0, i32 8
  %storemerge.i = or i32 %and.i, %masksel.i
  store i32 %storemerge.i, ptr %node_auth.i, align 4
  %2 = and i32 %storemerge.i, 12
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %2)
  %.not.i = icmp eq i32 %2, 12
  %.sink.i = zext i1 %.not.i to i32
  %authenticate_target.i = getelementptr i8, ptr %item, i32 364
  %3 = ptrtoint ptr %authenticate_target.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %.sink.i, ptr %authenticate_target.i, align 4
  br label %__iscsi_nacl_auth_password_mutual_store.exit

__iscsi_nacl_auth_password_mutual_store.exit:     ; preds = %if.end2.i, %if.end.i.__iscsi_nacl_auth_password_mutual_store.exit_crit_edge, %entry.__iscsi_nacl_auth_password_mutual_store.exit_crit_edge
  %retval.0.i = phi i32 [ -1, %entry.__iscsi_nacl_auth_password_mutual_store.exit_crit_edge ], [ -22, %if.end.i.__iscsi_nacl_auth_password_mutual_store.exit_crit_edge ], [ %count, %if.end2.i ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @iscsi_nacl_param_MaxConnections_show(ptr noundef %item, ptr nocapture noundef writeonly %page) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %nacl_sess_lock = getelementptr i8, ptr %item, i32 -284
  tail call void @_raw_spin_lock_bh(ptr noundef %nacl_sess_lock) #12
  %nacl_sess = getelementptr i8, ptr %item, i32 -384
  %0 = ptrtoint ptr %nacl_sess to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %nacl_sess, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %2 = call ptr @memcpy(ptr %page, ptr @.str.171, i32 25)
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %fabric_sess_ptr = getelementptr inbounds %struct.se_session, ptr %1, i32 0, i32 6
  %3 = ptrtoint ptr %fabric_sess_ptr to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %fabric_sess_ptr, align 8
  %sess_ops = getelementptr inbounds %struct.iscsi_session, ptr %4, i32 0, i32 47
  %5 = ptrtoint ptr %sess_ops to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %sess_ops, align 8
  %MaxConnections = getelementptr inbounds %struct.iscsi_sess_ops, ptr %6, i32 0, i32 6
  %7 = ptrtoint ptr %MaxConnections to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %MaxConnections, align 2
  %conv = zext i16 %8 to i32
  %call2 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %page, i32 noundef 4096, ptr noundef nonnull @.str.83, i32 noundef %conv)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %rb.0 = phi i32 [ %call2, %if.else ], [ 24, %if.then ]
  tail call void @_raw_spin_unlock_bh(ptr noundef %nacl_sess_lock) #12
  ret i32 %rb.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @iscsi_nacl_param_InitialR2T_show(ptr noundef %item, ptr nocapture noundef writeonly %page) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %nacl_sess_lock = getelementptr i8, ptr %item, i32 -284
  tail call void @_raw_spin_lock_bh(ptr noundef %nacl_sess_lock) #12
  %nacl_sess = getelementptr i8, ptr %item, i32 -384
  %0 = ptrtoint ptr %nacl_sess to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %nacl_sess, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %2 = call ptr @memcpy(ptr %page, ptr @.str.171, i32 25)
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %fabric_sess_ptr = getelementptr inbounds %struct.se_session, ptr %1, i32 0, i32 6
  %3 = ptrtoint ptr %fabric_sess_ptr to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %fabric_sess_ptr, align 8
  %sess_ops = getelementptr inbounds %struct.iscsi_session, ptr %4, i32 0, i32 47
  %5 = ptrtoint ptr %sess_ops to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %sess_ops, align 8
  %InitialR2T = getelementptr inbounds %struct.iscsi_sess_ops, ptr %6, i32 0, i32 7
  %7 = ptrtoint ptr %InitialR2T to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %InitialR2T, align 4
  %conv = zext i8 %8 to i32
  %call2 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %page, i32 noundef 4096, ptr noundef nonnull @.str.83, i32 noundef %conv)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %rb.0 = phi i32 [ %call2, %if.else ], [ 24, %if.then ]
  tail call void @_raw_spin_unlock_bh(ptr noundef %nacl_sess_lock) #12
  ret i32 %rb.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @iscsi_nacl_param_ImmediateData_show(ptr noundef %item, ptr nocapture noundef writeonly %page) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %nacl_sess_lock = getelementptr i8, ptr %item, i32 -284
  tail call void @_raw_spin_lock_bh(ptr noundef %nacl_sess_lock) #12
  %nacl_sess = getelementptr i8, ptr %item, i32 -384
  %0 = ptrtoint ptr %nacl_sess to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %nacl_sess, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %2 = call ptr @memcpy(ptr %page, ptr @.str.171, i32 25)
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %fabric_sess_ptr = getelementptr inbounds %struct.se_session, ptr %1, i32 0, i32 6
  %3 = ptrtoint ptr %fabric_sess_ptr to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %fabric_sess_ptr, align 8
  %sess_ops = getelementptr inbounds %struct.iscsi_session, ptr %4, i32 0, i32 47
  %5 = ptrtoint ptr %sess_ops to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %sess_ops, align 8
  %ImmediateData = getelementptr inbounds %struct.iscsi_sess_ops, ptr %6, i32 0, i32 8
  %7 = ptrtoint ptr %ImmediateData to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %ImmediateData, align 1
  %conv = zext i8 %8 to i32
  %call2 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %page, i32 noundef 4096, ptr noundef nonnull @.str.83, i32 noundef %conv)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %rb.0 = phi i32 [ %call2, %if.else ], [ 24, %if.then ]
  tail call void @_raw_spin_unlock_bh(ptr noundef %nacl_sess_lock) #12
  ret i32 %rb.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @iscsi_nacl_param_MaxBurstLength_show(ptr noundef %item, ptr nocapture noundef writeonly %page) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %nacl_sess_lock = getelementptr i8, ptr %item, i32 -284
  tail call void @_raw_spin_lock_bh(ptr noundef %nacl_sess_lock) #12
  %nacl_sess = getelementptr i8, ptr %item, i32 -384
  %0 = ptrtoint ptr %nacl_sess to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %nacl_sess, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %2 = call ptr @memcpy(ptr %page, ptr @.str.171, i32 25)
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %fabric_sess_ptr = getelementptr inbounds %struct.se_session, ptr %1, i32 0, i32 6
  %3 = ptrtoint ptr %fabric_sess_ptr to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %fabric_sess_ptr, align 8
  %sess_ops = getelementptr inbounds %struct.iscsi_session, ptr %4, i32 0, i32 47
  %5 = ptrtoint ptr %sess_ops to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %sess_ops, align 8
  %MaxBurstLength = getelementptr inbounds %struct.iscsi_sess_ops, ptr %6, i32 0, i32 9
  %7 = ptrtoint ptr %MaxBurstLength to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %MaxBurstLength, align 4
  %call2 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %page, i32 noundef 4096, ptr noundef nonnull @.str.83, i32 noundef %8)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %rb.0 = phi i32 [ %call2, %if.else ], [ 24, %if.then ]
  tail call void @_raw_spin_unlock_bh(ptr noundef %nacl_sess_lock) #12
  ret i32 %rb.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @iscsi_nacl_param_FirstBurstLength_show(ptr noundef %item, ptr nocapture noundef writeonly %page) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %nacl_sess_lock = getelementptr i8, ptr %item, i32 -284
  tail call void @_raw_spin_lock_bh(ptr noundef %nacl_sess_lock) #12
  %nacl_sess = getelementptr i8, ptr %item, i32 -384
  %0 = ptrtoint ptr %nacl_sess to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %nacl_sess, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %2 = call ptr @memcpy(ptr %page, ptr @.str.171, i32 25)
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %fabric_sess_ptr = getelementptr inbounds %struct.se_session, ptr %1, i32 0, i32 6
  %3 = ptrtoint ptr %fabric_sess_ptr to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %fabric_sess_ptr, align 8
  %sess_ops = getelementptr inbounds %struct.iscsi_session, ptr %4, i32 0, i32 47
  %5 = ptrtoint ptr %sess_ops to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %sess_ops, align 8
  %FirstBurstLength = getelementptr inbounds %struct.iscsi_sess_ops, ptr %6, i32 0, i32 10
  %7 = ptrtoint ptr %FirstBurstLength to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %FirstBurstLength, align 4
  %call2 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %page, i32 noundef 4096, ptr noundef nonnull @.str.83, i32 noundef %8)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %rb.0 = phi i32 [ %call2, %if.else ], [ 24, %if.then ]
  tail call void @_raw_spin_unlock_bh(ptr noundef %nacl_sess_lock) #12
  ret i32 %rb.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @iscsi_nacl_param_DefaultTime2Wait_show(ptr noundef %item, ptr nocapture noundef writeonly %page) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %nacl_sess_lock = getelementptr i8, ptr %item, i32 -284
  tail call void @_raw_spin_lock_bh(ptr noundef %nacl_sess_lock) #12
  %nacl_sess = getelementptr i8, ptr %item, i32 -384
  %0 = ptrtoint ptr %nacl_sess to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %nacl_sess, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %2 = call ptr @memcpy(ptr %page, ptr @.str.171, i32 25)
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %fabric_sess_ptr = getelementptr inbounds %struct.se_session, ptr %1, i32 0, i32 6
  %3 = ptrtoint ptr %fabric_sess_ptr to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %fabric_sess_ptr, align 8
  %sess_ops = getelementptr inbounds %struct.iscsi_session, ptr %4, i32 0, i32 47
  %5 = ptrtoint ptr %sess_ops to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %sess_ops, align 8
  %DefaultTime2Wait = getelementptr inbounds %struct.iscsi_sess_ops, ptr %6, i32 0, i32 11
  %7 = ptrtoint ptr %DefaultTime2Wait to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %DefaultTime2Wait, align 4
  %conv = zext i16 %8 to i32
  %call2 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %page, i32 noundef 4096, ptr noundef nonnull @.str.83, i32 noundef %conv)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %rb.0 = phi i32 [ %call2, %if.else ], [ 24, %if.then ]
  tail call void @_raw_spin_unlock_bh(ptr noundef %nacl_sess_lock) #12
  ret i32 %rb.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @iscsi_nacl_param_DefaultTime2Retain_show(ptr noundef %item, ptr nocapture noundef writeonly %page) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %nacl_sess_lock = getelementptr i8, ptr %item, i32 -284
  tail call void @_raw_spin_lock_bh(ptr noundef %nacl_sess_lock) #12
  %nacl_sess = getelementptr i8, ptr %item, i32 -384
  %0 = ptrtoint ptr %nacl_sess to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %nacl_sess, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %2 = call ptr @memcpy(ptr %page, ptr @.str.171, i32 25)
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %fabric_sess_ptr = getelementptr inbounds %struct.se_session, ptr %1, i32 0, i32 6
  %3 = ptrtoint ptr %fabric_sess_ptr to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %fabric_sess_ptr, align 8
  %sess_ops = getelementptr inbounds %struct.iscsi_session, ptr %4, i32 0, i32 47
  %5 = ptrtoint ptr %sess_ops to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %sess_ops, align 8
  %DefaultTime2Retain = getelementptr inbounds %struct.iscsi_sess_ops, ptr %6, i32 0, i32 12
  %7 = ptrtoint ptr %DefaultTime2Retain to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %DefaultTime2Retain, align 2
  %conv = zext i16 %8 to i32
  %call2 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %page, i32 noundef 4096, ptr noundef nonnull @.str.83, i32 noundef %conv)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %rb.0 = phi i32 [ %call2, %if.else ], [ 24, %if.then ]
  tail call void @_raw_spin_unlock_bh(ptr noundef %nacl_sess_lock) #12
  ret i32 %rb.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @iscsi_nacl_param_MaxOutstandingR2T_show(ptr noundef %item, ptr nocapture noundef writeonly %page) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %nacl_sess_lock = getelementptr i8, ptr %item, i32 -284
  tail call void @_raw_spin_lock_bh(ptr noundef %nacl_sess_lock) #12
  %nacl_sess = getelementptr i8, ptr %item, i32 -384
  %0 = ptrtoint ptr %nacl_sess to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %nacl_sess, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %2 = call ptr @memcpy(ptr %page, ptr @.str.171, i32 25)
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %fabric_sess_ptr = getelementptr inbounds %struct.se_session, ptr %1, i32 0, i32 6
  %3 = ptrtoint ptr %fabric_sess_ptr to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %fabric_sess_ptr, align 8
  %sess_ops = getelementptr inbounds %struct.iscsi_session, ptr %4, i32 0, i32 47
  %5 = ptrtoint ptr %sess_ops to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %sess_ops, align 8
  %MaxOutstandingR2T = getelementptr inbounds %struct.iscsi_sess_ops, ptr %6, i32 0, i32 13
  %7 = ptrtoint ptr %MaxOutstandingR2T to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %MaxOutstandingR2T, align 4
  %conv = zext i16 %8 to i32
  %call2 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %page, i32 noundef 4096, ptr noundef nonnull @.str.83, i32 noundef %conv)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %rb.0 = phi i32 [ %call2, %if.else ], [ 24, %if.then ]
  tail call void @_raw_spin_unlock_bh(ptr noundef %nacl_sess_lock) #12
  ret i32 %rb.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @iscsi_nacl_param_DataPDUInOrder_show(ptr noundef %item, ptr nocapture noundef writeonly %page) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %nacl_sess_lock = getelementptr i8, ptr %item, i32 -284
  tail call void @_raw_spin_lock_bh(ptr noundef %nacl_sess_lock) #12
  %nacl_sess = getelementptr i8, ptr %item, i32 -384
  %0 = ptrtoint ptr %nacl_sess to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %nacl_sess, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %2 = call ptr @memcpy(ptr %page, ptr @.str.171, i32 25)
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %fabric_sess_ptr = getelementptr inbounds %struct.se_session, ptr %1, i32 0, i32 6
  %3 = ptrtoint ptr %fabric_sess_ptr to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %fabric_sess_ptr, align 8
  %sess_ops = getelementptr inbounds %struct.iscsi_session, ptr %4, i32 0, i32 47
  %5 = ptrtoint ptr %sess_ops to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %sess_ops, align 8
  %DataPDUInOrder = getelementptr inbounds %struct.iscsi_sess_ops, ptr %6, i32 0, i32 14
  %7 = ptrtoint ptr %DataPDUInOrder to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %DataPDUInOrder, align 2
  %conv = zext i8 %8 to i32
  %call2 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %page, i32 noundef 4096, ptr noundef nonnull @.str.83, i32 noundef %conv)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %rb.0 = phi i32 [ %call2, %if.else ], [ 24, %if.then ]
  tail call void @_raw_spin_unlock_bh(ptr noundef %nacl_sess_lock) #12
  ret i32 %rb.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @iscsi_nacl_param_DataSequenceInOrder_show(ptr noundef %item, ptr nocapture noundef writeonly %page) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %nacl_sess_lock = getelementptr i8, ptr %item, i32 -284
  tail call void @_raw_spin_lock_bh(ptr noundef %nacl_sess_lock) #12
  %nacl_sess = getelementptr i8, ptr %item, i32 -384
  %0 = ptrtoint ptr %nacl_sess to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %nacl_sess, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %2 = call ptr @memcpy(ptr %page, ptr @.str.171, i32 25)
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %fabric_sess_ptr = getelementptr inbounds %struct.se_session, ptr %1, i32 0, i32 6
  %3 = ptrtoint ptr %fabric_sess_ptr to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %fabric_sess_ptr, align 8
  %sess_ops = getelementptr inbounds %struct.iscsi_session, ptr %4, i32 0, i32 47
  %5 = ptrtoint ptr %sess_ops to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %sess_ops, align 8
  %DataSequenceInOrder = getelementptr inbounds %struct.iscsi_sess_ops, ptr %6, i32 0, i32 15
  %7 = ptrtoint ptr %DataSequenceInOrder to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %DataSequenceInOrder, align 1
  %conv = zext i8 %8 to i32
  %call2 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %page, i32 noundef 4096, ptr noundef nonnull @.str.83, i32 noundef %conv)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %rb.0 = phi i32 [ %call2, %if.else ], [ 24, %if.then ]
  tail call void @_raw_spin_unlock_bh(ptr noundef %nacl_sess_lock) #12
  ret i32 %rb.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @iscsi_nacl_param_ErrorRecoveryLevel_show(ptr noundef %item, ptr nocapture noundef writeonly %page) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %nacl_sess_lock = getelementptr i8, ptr %item, i32 -284
  tail call void @_raw_spin_lock_bh(ptr noundef %nacl_sess_lock) #12
  %nacl_sess = getelementptr i8, ptr %item, i32 -384
  %0 = ptrtoint ptr %nacl_sess to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %nacl_sess, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %2 = call ptr @memcpy(ptr %page, ptr @.str.171, i32 25)
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %fabric_sess_ptr = getelementptr inbounds %struct.se_session, ptr %1, i32 0, i32 6
  %3 = ptrtoint ptr %fabric_sess_ptr to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %fabric_sess_ptr, align 8
  %sess_ops = getelementptr inbounds %struct.iscsi_session, ptr %4, i32 0, i32 47
  %5 = ptrtoint ptr %sess_ops to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %sess_ops, align 8
  %ErrorRecoveryLevel = getelementptr inbounds %struct.iscsi_sess_ops, ptr %6, i32 0, i32 16
  %7 = ptrtoint ptr %ErrorRecoveryLevel to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %ErrorRecoveryLevel, align 4
  %conv = zext i8 %8 to i32
  %call2 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %page, i32 noundef 4096, ptr noundef nonnull @.str.83, i32 noundef %conv)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %rb.0 = phi i32 [ %call2, %if.else ], [ 24, %if.then ]
  tail call void @_raw_spin_unlock_bh(ptr noundef %nacl_sess_lock) #12
  ret i32 %rb.0
}

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare ptr @strchr(ptr, i32) local_unnamed_addr #11

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #12

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #13 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 253)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #13 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 253)
  ret void
}

attributes #0 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #5 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { argmemonly nofree nounwind readonly willreturn }
attributes #12 = { nounwind }
attributes #13 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #14 = { nomerge }
attributes #15 = { cold nounwind }
attributes #16 = { nobuiltin }
attributes #17 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !9, !10, !11, !12, !14, !16, !17, !18, !20, !21, !23, !24, !25, !27, !29, !31, !33, !35, !37, !39, !40, !41, !42, !44, !46, !47, !49, !50, !51, !53, !54, !55, !56, !58, !60, !62, !64, !65, !66, !68, !70, !71, !72, !74, !75, !76, !78, !79, !80, !82, !83, !85, !86, !88, !89, !90, !92, !93, !95, !97, !99, !100, !101, !102, !104, !105, !107, !108, !109, !111, !112, !114, !115, !117, !118, !120, !121, !122, !123, !125, !126, !127, !129, !131, !133, !134, !136, !138, !139, !141, !143, !144, !146, !148, !150, !151, !153, !155, !156, !158, !160, !162, !164, !165, !166, !167, !169, !170, !171, !173, !174, !175, !177, !178, !180, !182, !183, !184, !186, !187, !189, !190, !192, !193, !195, !196, !198, !199, !201, !202, !204, !205, !207, !208, !210, !211, !213, !214, !216, !217, !219, !220, !222, !223, !225, !227, !229, !231, !233, !235, !237, !239, !240, !242, !243, !245, !246, !248, !249, !251, !252, !254, !255, !257, !258, !260, !261, !263, !264, !266, !267, !269, !270, !272, !273, !275, !276, !278, !279, !281, !282, !284, !285, !287, !288, !290, !291, !293, !294, !296, !297, !299, !300, !302, !304, !305, !307, !309, !311, !313, !315, !317, !319, !321, !323, !325, !327, !329, !331, !333, !335, !337, !339, !341, !343, !345, !347, !349, !351, !353, !355, !357, !359, !361, !363, !365, !367, !369, !370, !372, !373, !374, !375, !377, !378, !379, !381, !382, !383, !385, !386, !387, !389, !390, !392, !393, !395, !397, !398, !400, !401, !403, !405, !406, !408, !409, !411, !412, !414, !415, !417, !418, !420, !422, !424, !426, !428, !430, !432, !434, !435, !437, !439, !441, !443, !445, !447, !449, !451, !453}
!llvm.module.flags = !{!455, !456, !457, !458, !459, !460, !461, !462}
!llvm.ident = !{!463}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/target/iscsi/iscsi_target_configfs.c", i32 1501, i32 20}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/target/iscsi/iscsi_target_configfs.c", i32 1502, i32 19}
!4 = !{ptr @iscsi_ops, !5, !"iscsi_ops", i1 false, i1 false}
!5 = !{!"../drivers/target/iscsi/iscsi_target_configfs.c", i32 1499, i32 37}
!6 = !{ptr @.str.2, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/target/iscsi/iscsi_target_configfs.c", i32 1495, i32 2}
!8 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @.str.5, !7, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @lio_release_cmd.__UNIQUE_ID_ddebug494, !7, !"__UNIQUE_ID_ddebug494", i1 false, i1 false}
!12 = !{ptr @.str.6, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/target/iscsi/iscsi_target_configfs.c", i32 1332, i32 29}
!14 = !{ptr @.str.7, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/target/iscsi/iscsi_target_configfs.c", i32 1146, i32 2}
!16 = !{ptr @.str.8, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @lio_target_call_coreaddtiqn.__UNIQUE_ID_ddebug489, !15, !"__UNIQUE_ID_ddebug489", i1 false, i1 false}
!18 = !{ptr @.str.9, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/target/iscsi/iscsi_target_configfs.c", i32 1147, i32 2}
!20 = !{ptr @lio_target_call_coreaddtiqn.__UNIQUE_ID_ddebug490, !19, !"__UNIQUE_ID_ddebug490", i1 false, i1 false}
!21 = !{ptr @.str.10, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/target/iscsi/iscsi_target_configfs.c", i32 1187, i32 2}
!23 = !{ptr @.str.11, !22, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @lio_target_call_coredeltiqn.__UNIQUE_ID_ddebug491, !22, !"__UNIQUE_ID_ddebug491", i1 false, i1 false}
!25 = !{ptr @.str.12, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/target/iscsi/iscsi_target_configfs.c", i32 1157, i32 4}
!27 = !{ptr @.str.13, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/target/iscsi/iscsi_target_configfs.c", i32 1162, i32 4}
!29 = !{ptr @.str.14, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/target/iscsi/iscsi_target_configfs.c", i32 1167, i32 4}
!31 = !{ptr @.str.15, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/target/iscsi/iscsi_target_configfs.c", i32 1172, i32 4}
!33 = !{ptr @.str.16, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/target/iscsi/iscsi_target_configfs.c", i32 1177, i32 4}
!35 = !{ptr @.str.17, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/target/iscsi/iscsi_target_configfs.c", i32 1039, i32 26}
!37 = !{ptr @.str.18, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/target/iscsi/iscsi_target_configfs.c", i32 1041, i32 3}
!39 = !{ptr @.str.19, !38, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @lio_target_tiqn_addtpg._entry, !38, !"_entry", i1 false, i1 false}
!41 = !{ptr @lio_target_tiqn_addtpg._entry_ptr, !38, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @lio_target_tiqn_addtpg.__UNIQUE_ID_ddebug486, !43, !"__UNIQUE_ID_ddebug486", i1 false, i1 false}
!43 = !{!"../drivers/target/iscsi/iscsi_target_configfs.c", i32 1062, i32 2}
!44 = !{ptr @.str.20, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/target/iscsi/iscsi_target_configfs.c", i32 1063, i32 2}
!46 = !{ptr @lio_target_tiqn_addtpg.__UNIQUE_ID_ddebug487, !45, !"__UNIQUE_ID_ddebug487", i1 false, i1 false}
!47 = !{ptr @.str.21, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/target/iscsi/iscsi_target_configfs.c", i32 1114, i32 2}
!49 = !{ptr @.str.22, !48, !"<string literal>", i1 false, i1 false}
!50 = !{ptr @lio_target_tiqn_deltpg.__UNIQUE_ID_ddebug488, !48, !"__UNIQUE_ID_ddebug488", i1 false, i1 false}
!51 = !{ptr @.str.23, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/target/iscsi/iscsi_target_configfs.c", i32 167, i32 3}
!53 = !{ptr @.str.24, !52, !"<string literal>", i1 false, i1 false}
!54 = !{ptr @lio_target_call_addnptotpg._entry, !52, !"_entry", i1 false, i1 false}
!55 = !{ptr @lio_target_call_addnptotpg._entry_ptr, !52, !"_entry_ptr", i1 false, i1 false}
!56 = !{ptr @.str.25, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/target/iscsi/iscsi_target_configfs.c", i32 171, i32 36}
!58 = distinct !{null, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/target/iscsi/iscsi_target_configfs.c", i32 173, i32 20}
!60 = distinct !{null, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/target/iscsi/iscsi_target_configfs.c", i32 175, i32 22}
!62 = !{ptr @.str.29, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/target/iscsi/iscsi_target_configfs.c", i32 177, i32 4}
!64 = !{ptr @lio_target_call_addnptotpg._entry.28, !63, !"_entry", i1 false, i1 false}
!65 = !{ptr @lio_target_call_addnptotpg._entry_ptr.30, !63, !"_entry_ptr", i1 false, i1 false}
!66 = distinct !{null, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/target/iscsi/iscsi_target_configfs.c", i32 186, i32 27}
!68 = !{ptr @.str.33, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/target/iscsi/iscsi_target_configfs.c", i32 188, i32 4}
!70 = !{ptr @lio_target_call_addnptotpg._entry.32, !69, !"_entry", i1 false, i1 false}
!71 = !{ptr @lio_target_call_addnptotpg._entry_ptr.34, !69, !"_entry_ptr", i1 false, i1 false}
!72 = !{ptr @.str.36, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/target/iscsi/iscsi_target_configfs.c", i32 198, i32 4}
!74 = !{ptr @lio_target_call_addnptotpg._entry.35, !73, !"_entry", i1 false, i1 false}
!75 = !{ptr @lio_target_call_addnptotpg._entry_ptr.37, !73, !"_entry_ptr", i1 false, i1 false}
!76 = !{ptr @.str.39, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/target/iscsi/iscsi_target_configfs.c", i32 209, i32 3}
!78 = !{ptr @lio_target_call_addnptotpg._entry.38, !77, !"_entry", i1 false, i1 false}
!79 = !{ptr @lio_target_call_addnptotpg._entry_ptr.40, !77, !"_entry_ptr", i1 false, i1 false}
!80 = !{ptr @.str.41, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/target/iscsi/iscsi_target_configfs.c", i32 218, i32 2}
!82 = !{ptr @lio_target_call_addnptotpg.__UNIQUE_ID_ddebug481, !81, !"__UNIQUE_ID_ddebug481", i1 false, i1 false}
!83 = !{ptr @.str.42, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/target/iscsi/iscsi_target_configfs.c", i32 241, i32 2}
!85 = !{ptr @lio_target_call_addnptotpg.__UNIQUE_ID_ddebug482, !84, !"__UNIQUE_ID_ddebug482", i1 false, i1 false}
!86 = !{ptr @.str.43, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/target/iscsi/iscsi_target_configfs.c", i32 262, i32 2}
!88 = !{ptr @.str.44, !87, !"<string literal>", i1 false, i1 false}
!89 = !{ptr @lio_target_call_delnpfromtpg.__UNIQUE_ID_ddebug483, !87, !"__UNIQUE_ID_ddebug483", i1 false, i1 false}
!90 = !{ptr @.str.45, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/target/iscsi/iscsi_target_configfs.c", i32 270, i32 2}
!92 = !{ptr @lio_target_call_delnpfromtpg.__UNIQUE_ID_ddebug484, !91, !"__UNIQUE_ID_ddebug484", i1 false, i1 false}
!93 = !{ptr @.str.46, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/target/iscsi/iscsi_target_configfs.c", i32 707, i32 4}
!95 = !{ptr @lio_target_discovery_auth_attrs, !96, !"lio_target_discovery_auth_attrs", i1 false, i1 false}
!96 = !{!"../drivers/target/iscsi/iscsi_target_configfs.c", i32 1295, i32 35}
!97 = !{ptr @.str.47, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/target/iscsi/iscsi_target_configfs.c", i32 1212, i32 1}
!99 = !{ptr @iscsi_disc_attr_userid, !98, !"iscsi_disc_attr_userid", i1 false, i1 false}
!100 = !{ptr @.str.48, !98, !"<string literal>", i1 false, i1 false}
!101 = !{ptr @.str.49, !98, !"<string literal>", i1 false, i1 false}
!102 = !{ptr @.str.50, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/target/iscsi/iscsi_target_configfs.c", i32 1213, i32 1}
!104 = !{ptr @iscsi_disc_attr_password, !103, !"iscsi_disc_attr_password", i1 false, i1 false}
!105 = !{ptr @.str.51, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/target/iscsi/iscsi_target_configfs.c", i32 1226, i32 1}
!107 = !{ptr @iscsi_disc_attr_authenticate_target, !106, !"iscsi_disc_attr_authenticate_target", i1 false, i1 false}
!108 = !{ptr @.str.52, !106, !"<string literal>", i1 false, i1 false}
!109 = !{ptr @.str.53, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/target/iscsi/iscsi_target_configfs.c", i32 1214, i32 1}
!111 = !{ptr @iscsi_disc_attr_userid_mutual, !110, !"iscsi_disc_attr_userid_mutual", i1 false, i1 false}
!112 = !{ptr @.str.54, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/target/iscsi/iscsi_target_configfs.c", i32 1215, i32 1}
!114 = !{ptr @iscsi_disc_attr_password_mutual, !113, !"iscsi_disc_attr_password_mutual", i1 false, i1 false}
!115 = !{ptr @.str.55, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../drivers/target/iscsi/iscsi_target_configfs.c", i32 1293, i32 1}
!117 = !{ptr @iscsi_disc_attr_enforce_discovery_auth, !116, !"iscsi_disc_attr_enforce_discovery_auth", i1 false, i1 false}
!118 = !{ptr @.str.56, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/target/iscsi/iscsi_target_configfs.c", i32 1249, i32 3}
!120 = !{ptr @.str.57, !119, !"<string literal>", i1 false, i1 false}
!121 = !{ptr @iscsi_disc_enforce_discovery_auth_store._entry, !119, !"_entry", i1 false, i1 false}
!122 = !{ptr @iscsi_disc_enforce_discovery_auth_store._entry_ptr, !119, !"_entry_ptr", i1 false, i1 false}
!123 = !{ptr @.str.59, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../drivers/target/iscsi/iscsi_target_configfs.c", i32 1255, i32 3}
!125 = !{ptr @iscsi_disc_enforce_discovery_auth_store._entry.58, !124, !"_entry", i1 false, i1 false}
!126 = !{ptr @iscsi_disc_enforce_discovery_auth_store._entry_ptr.60, !124, !"_entry_ptr", i1 false, i1 false}
!127 = !{ptr @.str.61, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../drivers/target/iscsi/iscsi_target_configfs.c", i32 1259, i32 36}
!129 = !{ptr @.str.62, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../drivers/target/iscsi/iscsi_target_configfs.c", i32 1268, i32 39}
!131 = !{ptr @.str.63, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../drivers/target/iscsi/iscsi_target_configfs.c", i32 1273, i32 3}
!133 = !{ptr @iscsi_disc_enforce_discovery_auth_store.__UNIQUE_ID_ddebug492, !132, !"__UNIQUE_ID_ddebug492", i1 false, i1 false}
!134 = !{ptr @.str.64, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../drivers/target/iscsi/iscsi_target_configfs.c", i32 1280, i32 39}
!136 = !{ptr @.str.65, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../drivers/target/iscsi/iscsi_target_configfs.c", i32 1285, i32 3}
!138 = !{ptr @iscsi_disc_enforce_discovery_auth_store.__UNIQUE_ID_ddebug493, !137, !"__UNIQUE_ID_ddebug493", i1 false, i1 false}
!139 = !{ptr @lio_target_wwn_attrs, !140, !"lio_target_wwn_attrs", i1 false, i1 false}
!140 = !{!"../drivers/target/iscsi/iscsi_target_configfs.c", i32 1130, i32 35}
!141 = !{ptr @.str.66, !142, !"<string literal>", i1 false, i1 false}
!142 = !{!"../drivers/target/iscsi/iscsi_target_configfs.c", i32 1128, i32 1}
!143 = !{ptr @lio_target_wwn_attr_lio_version, !142, !"lio_target_wwn_attr_lio_version", i1 false, i1 false}
!144 = !{ptr @.str.67, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../drivers/target/iscsi/iscsi_target_configfs.c", i32 1125, i32 23}
!146 = !{ptr @lio_target_tpg_attrs, !147, !"lio_target_tpg_attrs", i1 false, i1 false}
!147 = !{!"../drivers/target/iscsi/iscsi_target_configfs.c", i32 1016, i32 35}
!148 = !{ptr @.str.68, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../drivers/target/iscsi/iscsi_target_configfs.c", i32 1014, i32 1}
!150 = !{ptr @lio_target_tpg_attr_dynamic_sessions, !149, !"lio_target_tpg_attr_dynamic_sessions", i1 false, i1 false}
!151 = !{ptr @lio_target_portal_attrs, !152, !"lio_target_portal_attrs", i1 false, i1 false}
!152 = !{!"../drivers/target/iscsi/iscsi_target_configfs.c", i32 142, i32 35}
!153 = !{ptr @.str.69, !154, !"<string literal>", i1 false, i1 false}
!154 = !{!"../drivers/target/iscsi/iscsi_target_configfs.c", i32 127, i32 1}
!155 = !{ptr @lio_target_np_attr_iser, !154, !"lio_target_np_attr_iser", i1 false, i1 false}
!156 = !{ptr @.str.70, !157, !"<string literal>", i1 false, i1 false}
!157 = !{!"../drivers/target/iscsi/iscsi_target_configfs.c", i32 48, i32 22}
!158 = !{ptr @.str.71, !159, !"<string literal>", i1 false, i1 false}
!159 = !{!"../drivers/target/iscsi/iscsi_target_configfs.c", i32 50, i32 22}
!160 = !{ptr @.str.72, !161, !"<string literal>", i1 false, i1 false}
!161 = !{!"../drivers/target/iscsi/iscsi_target_configfs.c", i32 125, i32 26}
!162 = !{ptr @.str.73, !163, !"<string literal>", i1 false, i1 false}
!163 = !{!"../drivers/target/iscsi/iscsi_target_configfs.c", i32 70, i32 3}
!164 = !{ptr @.str.74, !163, !"<string literal>", i1 false, i1 false}
!165 = !{ptr @lio_target_np_driver_store._entry, !163, !"_entry", i1 false, i1 false}
!166 = !{ptr @lio_target_np_driver_store._entry_ptr, !163, !"_entry_ptr", i1 false, i1 false}
!167 = !{ptr @.str.76, !168, !"<string literal>", i1 false, i1 false}
!168 = !{!"../drivers/target/iscsi/iscsi_target_configfs.c", i32 75, i32 3}
!169 = !{ptr @lio_target_np_driver_store._entry.75, !168, !"_entry", i1 false, i1 false}
!170 = !{ptr @lio_target_np_driver_store._entry_ptr.77, !168, !"_entry_ptr", i1 false, i1 false}
!171 = !{ptr @.str.79, !172, !"<string literal>", i1 false, i1 false}
!172 = !{!"../drivers/target/iscsi/iscsi_target_configfs.c", i32 88, i32 5}
!173 = !{ptr @lio_target_np_driver_store._entry.78, !172, !"_entry", i1 false, i1 false}
!174 = !{ptr @lio_target_np_driver_store._entry_ptr.80, !172, !"_entry_ptr", i1 false, i1 false}
!175 = !{ptr @.str.81, !176, !"<string literal>", i1 false, i1 false}
!176 = !{!"../drivers/target/iscsi/iscsi_target_configfs.c", i32 140, i32 1}
!177 = !{ptr @lio_target_np_attr_cxgbit, !176, !"lio_target_np_attr_cxgbit", i1 false, i1 false}
!178 = !{ptr @lio_target_tpg_attrib_attrs, !179, !"lio_target_tpg_attrib_attrs", i1 false, i1 false}
!179 = !{!"../drivers/target/iscsi/iscsi_target_configfs.c", i32 777, i32 35}
!180 = !{ptr @.str.82, !181, !"<string literal>", i1 false, i1 false}
!181 = !{!"../drivers/target/iscsi/iscsi_target_configfs.c", i32 762, i32 1}
!182 = !{ptr @iscsi_tpg_attrib_attr_authentication, !181, !"iscsi_tpg_attrib_attr_authentication", i1 false, i1 false}
!183 = !{ptr @.str.83, !181, !"<string literal>", i1 false, i1 false}
!184 = !{ptr @.str.84, !185, !"<string literal>", i1 false, i1 false}
!185 = !{!"../drivers/target/iscsi/iscsi_target_configfs.c", i32 763, i32 1}
!186 = !{ptr @iscsi_tpg_attrib_attr_login_timeout, !185, !"iscsi_tpg_attrib_attr_login_timeout", i1 false, i1 false}
!187 = !{ptr @.str.85, !188, !"<string literal>", i1 false, i1 false}
!188 = !{!"../drivers/target/iscsi/iscsi_target_configfs.c", i32 764, i32 1}
!189 = !{ptr @iscsi_tpg_attrib_attr_netif_timeout, !188, !"iscsi_tpg_attrib_attr_netif_timeout", i1 false, i1 false}
!190 = !{ptr @.str.86, !191, !"<string literal>", i1 false, i1 false}
!191 = !{!"../drivers/target/iscsi/iscsi_target_configfs.c", i32 765, i32 1}
!192 = !{ptr @iscsi_tpg_attrib_attr_generate_node_acls, !191, !"iscsi_tpg_attrib_attr_generate_node_acls", i1 false, i1 false}
!193 = !{ptr @.str.87, !194, !"<string literal>", i1 false, i1 false}
!194 = !{!"../drivers/target/iscsi/iscsi_target_configfs.c", i32 766, i32 1}
!195 = !{ptr @iscsi_tpg_attrib_attr_default_cmdsn_depth, !194, !"iscsi_tpg_attrib_attr_default_cmdsn_depth", i1 false, i1 false}
!196 = !{ptr @.str.88, !197, !"<string literal>", i1 false, i1 false}
!197 = !{!"../drivers/target/iscsi/iscsi_target_configfs.c", i32 767, i32 1}
!198 = !{ptr @iscsi_tpg_attrib_attr_cache_dynamic_acls, !197, !"iscsi_tpg_attrib_attr_cache_dynamic_acls", i1 false, i1 false}
!199 = !{ptr @.str.89, !200, !"<string literal>", i1 false, i1 false}
!200 = !{!"../drivers/target/iscsi/iscsi_target_configfs.c", i32 768, i32 1}
!201 = !{ptr @iscsi_tpg_attrib_attr_demo_mode_write_protect, !200, !"iscsi_tpg_attrib_attr_demo_mode_write_protect", i1 false, i1 false}
!202 = !{ptr @.str.90, !203, !"<string literal>", i1 false, i1 false}
!203 = !{!"../drivers/target/iscsi/iscsi_target_configfs.c", i32 769, i32 1}
!204 = !{ptr @iscsi_tpg_attrib_attr_prod_mode_write_protect, !203, !"iscsi_tpg_attrib_attr_prod_mode_write_protect", i1 false, i1 false}
!205 = !{ptr @.str.91, !206, !"<string literal>", i1 false, i1 false}
!206 = !{!"../drivers/target/iscsi/iscsi_target_configfs.c", i32 770, i32 1}
!207 = !{ptr @iscsi_tpg_attrib_attr_demo_mode_discovery, !206, !"iscsi_tpg_attrib_attr_demo_mode_discovery", i1 false, i1 false}
!208 = !{ptr @.str.92, !209, !"<string literal>", i1 false, i1 false}
!209 = !{!"../drivers/target/iscsi/iscsi_target_configfs.c", i32 771, i32 1}
!210 = !{ptr @iscsi_tpg_attrib_attr_default_erl, !209, !"iscsi_tpg_attrib_attr_default_erl", i1 false, i1 false}
!211 = !{ptr @.str.93, !212, !"<string literal>", i1 false, i1 false}
!212 = !{!"../drivers/target/iscsi/iscsi_target_configfs.c", i32 772, i32 1}
!213 = !{ptr @iscsi_tpg_attrib_attr_t10_pi, !212, !"iscsi_tpg_attrib_attr_t10_pi", i1 false, i1 false}
!214 = !{ptr @.str.94, !215, !"<string literal>", i1 false, i1 false}
!215 = !{!"../drivers/target/iscsi/iscsi_target_configfs.c", i32 773, i32 1}
!216 = !{ptr @iscsi_tpg_attrib_attr_fabric_prot_type, !215, !"iscsi_tpg_attrib_attr_fabric_prot_type", i1 false, i1 false}
!217 = !{ptr @.str.95, !218, !"<string literal>", i1 false, i1 false}
!218 = !{!"../drivers/target/iscsi/iscsi_target_configfs.c", i32 774, i32 1}
!219 = !{ptr @iscsi_tpg_attrib_attr_tpg_enabled_sendtargets, !218, !"iscsi_tpg_attrib_attr_tpg_enabled_sendtargets", i1 false, i1 false}
!220 = !{ptr @.str.96, !221, !"<string literal>", i1 false, i1 false}
!221 = !{!"../drivers/target/iscsi/iscsi_target_configfs.c", i32 775, i32 1}
!222 = !{ptr @iscsi_tpg_attrib_attr_login_keys_workaround, !221, !"iscsi_tpg_attrib_attr_login_keys_workaround", i1 false, i1 false}
!223 = !{ptr @lio_target_tpg_auth_attrs, !224, !"lio_target_tpg_auth_attrs", i1 false, i1 false}
!224 = !{!"../drivers/target/iscsi/iscsi_target_configfs.c", i32 885, i32 35}
!225 = !{ptr @iscsi_tpg_auth_attr_userid, !226, !"iscsi_tpg_auth_attr_userid", i1 false, i1 false}
!226 = !{!"../drivers/target/iscsi/iscsi_target_configfs.c", i32 855, i32 1}
!227 = !{ptr @iscsi_tpg_auth_attr_password, !228, !"iscsi_tpg_auth_attr_password", i1 false, i1 false}
!228 = !{!"../drivers/target/iscsi/iscsi_target_configfs.c", i32 856, i32 1}
!229 = !{ptr @iscsi_tpg_auth_attr_authenticate_target, !230, !"iscsi_tpg_auth_attr_authenticate_target", i1 false, i1 false}
!230 = !{!"../drivers/target/iscsi/iscsi_target_configfs.c", i32 883, i32 1}
!231 = !{ptr @iscsi_tpg_auth_attr_userid_mutual, !232, !"iscsi_tpg_auth_attr_userid_mutual", i1 false, i1 false}
!232 = !{!"../drivers/target/iscsi/iscsi_target_configfs.c", i32 857, i32 1}
!233 = !{ptr @iscsi_tpg_auth_attr_password_mutual, !234, !"iscsi_tpg_auth_attr_password_mutual", i1 false, i1 false}
!234 = !{!"../drivers/target/iscsi/iscsi_target_configfs.c", i32 858, i32 1}
!235 = !{ptr @lio_target_tpg_param_attrs, !236, !"lio_target_tpg_param_attrs", i1 false, i1 false}
!236 = !{!"../drivers/target/iscsi/iscsi_target_configfs.c", i32 979, i32 35}
!237 = !{ptr @iscsi_tpg_param_attr_AuthMethod, !238, !"iscsi_tpg_param_attr_AuthMethod", i1 false, i1 false}
!238 = !{!"../drivers/target/iscsi/iscsi_target_configfs.c", i32 957, i32 1}
!239 = !{ptr @.str.97, !238, !"<string literal>", i1 false, i1 false}
!240 = !{ptr @.str.98, !241, !"<string literal>", i1 false, i1 false}
!241 = !{!"../drivers/target/iscsi/iscsi_target_configfs.c", i32 958, i32 1}
!242 = !{ptr @iscsi_tpg_param_attr_HeaderDigest, !241, !"iscsi_tpg_param_attr_HeaderDigest", i1 false, i1 false}
!243 = !{ptr @.str.99, !244, !"<string literal>", i1 false, i1 false}
!244 = !{!"../drivers/target/iscsi/iscsi_target_configfs.c", i32 959, i32 1}
!245 = !{ptr @iscsi_tpg_param_attr_DataDigest, !244, !"iscsi_tpg_param_attr_DataDigest", i1 false, i1 false}
!246 = !{ptr @.str.100, !247, !"<string literal>", i1 false, i1 false}
!247 = !{!"../drivers/target/iscsi/iscsi_target_configfs.c", i32 960, i32 1}
!248 = !{ptr @iscsi_tpg_param_attr_MaxConnections, !247, !"iscsi_tpg_param_attr_MaxConnections", i1 false, i1 false}
!249 = !{ptr @.str.101, !250, !"<string literal>", i1 false, i1 false}
!250 = !{!"../drivers/target/iscsi/iscsi_target_configfs.c", i32 961, i32 1}
!251 = !{ptr @iscsi_tpg_param_attr_TargetAlias, !250, !"iscsi_tpg_param_attr_TargetAlias", i1 false, i1 false}
!252 = !{ptr @.str.102, !253, !"<string literal>", i1 false, i1 false}
!253 = !{!"../drivers/target/iscsi/iscsi_target_configfs.c", i32 962, i32 1}
!254 = !{ptr @iscsi_tpg_param_attr_InitialR2T, !253, !"iscsi_tpg_param_attr_InitialR2T", i1 false, i1 false}
!255 = !{ptr @.str.103, !256, !"<string literal>", i1 false, i1 false}
!256 = !{!"../drivers/target/iscsi/iscsi_target_configfs.c", i32 963, i32 1}
!257 = !{ptr @iscsi_tpg_param_attr_ImmediateData, !256, !"iscsi_tpg_param_attr_ImmediateData", i1 false, i1 false}
!258 = !{ptr @.str.104, !259, !"<string literal>", i1 false, i1 false}
!259 = !{!"../drivers/target/iscsi/iscsi_target_configfs.c", i32 964, i32 1}
!260 = !{ptr @iscsi_tpg_param_attr_MaxRecvDataSegmentLength, !259, !"iscsi_tpg_param_attr_MaxRecvDataSegmentLength", i1 false, i1 false}
!261 = !{ptr @.str.105, !262, !"<string literal>", i1 false, i1 false}
!262 = !{!"../drivers/target/iscsi/iscsi_target_configfs.c", i32 965, i32 1}
!263 = !{ptr @iscsi_tpg_param_attr_MaxXmitDataSegmentLength, !262, !"iscsi_tpg_param_attr_MaxXmitDataSegmentLength", i1 false, i1 false}
!264 = !{ptr @.str.106, !265, !"<string literal>", i1 false, i1 false}
!265 = !{!"../drivers/target/iscsi/iscsi_target_configfs.c", i32 966, i32 1}
!266 = !{ptr @iscsi_tpg_param_attr_MaxBurstLength, !265, !"iscsi_tpg_param_attr_MaxBurstLength", i1 false, i1 false}
!267 = !{ptr @.str.107, !268, !"<string literal>", i1 false, i1 false}
!268 = !{!"../drivers/target/iscsi/iscsi_target_configfs.c", i32 967, i32 1}
!269 = !{ptr @iscsi_tpg_param_attr_FirstBurstLength, !268, !"iscsi_tpg_param_attr_FirstBurstLength", i1 false, i1 false}
!270 = !{ptr @.str.108, !271, !"<string literal>", i1 false, i1 false}
!271 = !{!"../drivers/target/iscsi/iscsi_target_configfs.c", i32 968, i32 1}
!272 = !{ptr @iscsi_tpg_param_attr_DefaultTime2Wait, !271, !"iscsi_tpg_param_attr_DefaultTime2Wait", i1 false, i1 false}
!273 = !{ptr @.str.109, !274, !"<string literal>", i1 false, i1 false}
!274 = !{!"../drivers/target/iscsi/iscsi_target_configfs.c", i32 969, i32 1}
!275 = !{ptr @iscsi_tpg_param_attr_DefaultTime2Retain, !274, !"iscsi_tpg_param_attr_DefaultTime2Retain", i1 false, i1 false}
!276 = !{ptr @.str.110, !277, !"<string literal>", i1 false, i1 false}
!277 = !{!"../drivers/target/iscsi/iscsi_target_configfs.c", i32 970, i32 1}
!278 = !{ptr @iscsi_tpg_param_attr_MaxOutstandingR2T, !277, !"iscsi_tpg_param_attr_MaxOutstandingR2T", i1 false, i1 false}
!279 = !{ptr @.str.111, !280, !"<string literal>", i1 false, i1 false}
!280 = !{!"../drivers/target/iscsi/iscsi_target_configfs.c", i32 971, i32 1}
!281 = !{ptr @iscsi_tpg_param_attr_DataPDUInOrder, !280, !"iscsi_tpg_param_attr_DataPDUInOrder", i1 false, i1 false}
!282 = !{ptr @.str.112, !283, !"<string literal>", i1 false, i1 false}
!283 = !{!"../drivers/target/iscsi/iscsi_target_configfs.c", i32 972, i32 1}
!284 = !{ptr @iscsi_tpg_param_attr_DataSequenceInOrder, !283, !"iscsi_tpg_param_attr_DataSequenceInOrder", i1 false, i1 false}
!285 = !{ptr @.str.113, !286, !"<string literal>", i1 false, i1 false}
!286 = !{!"../drivers/target/iscsi/iscsi_target_configfs.c", i32 973, i32 1}
!287 = !{ptr @iscsi_tpg_param_attr_ErrorRecoveryLevel, !286, !"iscsi_tpg_param_attr_ErrorRecoveryLevel", i1 false, i1 false}
!288 = !{ptr @.str.114, !289, !"<string literal>", i1 false, i1 false}
!289 = !{!"../drivers/target/iscsi/iscsi_target_configfs.c", i32 974, i32 1}
!290 = !{ptr @iscsi_tpg_param_attr_IFMarker, !289, !"iscsi_tpg_param_attr_IFMarker", i1 false, i1 false}
!291 = !{ptr @.str.115, !292, !"<string literal>", i1 false, i1 false}
!292 = !{!"../drivers/target/iscsi/iscsi_target_configfs.c", i32 975, i32 1}
!293 = !{ptr @iscsi_tpg_param_attr_OFMarker, !292, !"iscsi_tpg_param_attr_OFMarker", i1 false, i1 false}
!294 = !{ptr @.str.116, !295, !"<string literal>", i1 false, i1 false}
!295 = !{!"../drivers/target/iscsi/iscsi_target_configfs.c", i32 976, i32 1}
!296 = !{ptr @iscsi_tpg_param_attr_IFMarkInt, !295, !"iscsi_tpg_param_attr_IFMarkInt", i1 false, i1 false}
!297 = !{ptr @.str.117, !298, !"<string literal>", i1 false, i1 false}
!298 = !{!"../drivers/target/iscsi/iscsi_target_configfs.c", i32 977, i32 1}
!299 = !{ptr @iscsi_tpg_param_attr_OFMarkInt, !298, !"iscsi_tpg_param_attr_OFMarkInt", i1 false, i1 false}
!300 = !{ptr @lio_target_initiator_attrs, !301, !"lio_target_initiator_attrs", i1 false, i1 false}
!301 = !{!"../drivers/target/iscsi/iscsi_target_configfs.c", i32 693, i32 35}
!302 = !{ptr @.str.118, !303, !"<string literal>", i1 false, i1 false}
!303 = !{!"../drivers/target/iscsi/iscsi_target_configfs.c", i32 689, i32 1}
!304 = !{ptr @lio_target_nacl_attr_info, !303, !"lio_target_nacl_attr_info", i1 false, i1 false}
!305 = !{ptr @.str.119, !306, !"<string literal>", i1 false, i1 false}
!306 = !{!"../drivers/target/iscsi/iscsi_target_configfs.c", i32 510, i32 26}
!307 = !{ptr @.str.120, !308, !"<string literal>", i1 false, i1 false}
!308 = !{!"../drivers/target/iscsi/iscsi_target_configfs.c", i32 515, i32 26}
!309 = !{ptr @.str.121, !310, !"<string literal>", i1 false, i1 false}
!310 = !{!"../drivers/target/iscsi/iscsi_target_configfs.c", i32 517, i32 26}
!311 = !{ptr @.str.122, !312, !"<string literal>", i1 false, i1 false}
!312 = !{!"../drivers/target/iscsi/iscsi_target_configfs.c", i32 521, i32 10}
!313 = !{ptr @.str.123, !314, !"<string literal>", i1 false, i1 false}
!314 = !{!"../drivers/target/iscsi/iscsi_target_configfs.c", i32 523, i32 26}
!315 = !{ptr @.str.124, !316, !"<string literal>", i1 false, i1 false}
!316 = !{!"../drivers/target/iscsi/iscsi_target_configfs.c", i32 525, i32 5}
!317 = !{ptr @.str.125, !318, !"<string literal>", i1 false, i1 false}
!318 = !{!"../drivers/target/iscsi/iscsi_target_configfs.c", i32 525, i32 19}
!319 = !{ptr @.str.126, !320, !"<string literal>", i1 false, i1 false}
!320 = !{!"../drivers/target/iscsi/iscsi_target_configfs.c", i32 526, i32 26}
!321 = !{ptr @.str.127, !322, !"<string literal>", i1 false, i1 false}
!322 = !{!"../drivers/target/iscsi/iscsi_target_configfs.c", i32 529, i32 27}
!323 = !{ptr @.str.128, !324, !"<string literal>", i1 false, i1 false}
!324 = !{!"../drivers/target/iscsi/iscsi_target_configfs.c", i32 532, i32 27}
!325 = !{ptr @.str.129, !326, !"<string literal>", i1 false, i1 false}
!326 = !{!"../drivers/target/iscsi/iscsi_target_configfs.c", i32 535, i32 27}
!327 = !{ptr @.str.130, !328, !"<string literal>", i1 false, i1 false}
!328 = !{!"../drivers/target/iscsi/iscsi_target_configfs.c", i32 538, i32 27}
!329 = !{ptr @.str.131, !330, !"<string literal>", i1 false, i1 false}
!330 = !{!"../drivers/target/iscsi/iscsi_target_configfs.c", i32 541, i32 27}
!331 = !{ptr @.str.132, !332, !"<string literal>", i1 false, i1 false}
!332 = !{!"../drivers/target/iscsi/iscsi_target_configfs.c", i32 544, i32 27}
!333 = !{ptr @.str.133, !334, !"<string literal>", i1 false, i1 false}
!334 = !{!"../drivers/target/iscsi/iscsi_target_configfs.c", i32 549, i32 26}
!335 = !{ptr @.str.134, !336, !"<string literal>", i1 false, i1 false}
!336 = !{!"../drivers/target/iscsi/iscsi_target_configfs.c", i32 551, i32 26}
!337 = !{ptr @.str.135, !338, !"<string literal>", i1 false, i1 false}
!338 = !{!"../drivers/target/iscsi/iscsi_target_configfs.c", i32 554, i32 26}
!339 = !{ptr @.str.136, !340, !"<string literal>", i1 false, i1 false}
!340 = !{!"../drivers/target/iscsi/iscsi_target_configfs.c", i32 560, i32 26}
!341 = !{ptr @.str.137, !342, !"<string literal>", i1 false, i1 false}
!342 = !{!"../drivers/target/iscsi/iscsi_target_configfs.c", i32 565, i32 27}
!343 = !{ptr @.str.138, !344, !"<string literal>", i1 false, i1 false}
!344 = !{!"../drivers/target/iscsi/iscsi_target_configfs.c", i32 570, i32 6}
!345 = !{ptr @.str.139, !346, !"<string literal>", i1 false, i1 false}
!346 = !{!"../drivers/target/iscsi/iscsi_target_configfs.c", i32 574, i32 6}
!347 = !{ptr @.str.140, !348, !"<string literal>", i1 false, i1 false}
!348 = !{!"../drivers/target/iscsi/iscsi_target_configfs.c", i32 578, i32 6}
!349 = !{ptr @.str.141, !350, !"<string literal>", i1 false, i1 false}
!350 = !{!"../drivers/target/iscsi/iscsi_target_configfs.c", i32 582, i32 6}
!351 = !{ptr @.str.142, !352, !"<string literal>", i1 false, i1 false}
!352 = !{!"../drivers/target/iscsi/iscsi_target_configfs.c", i32 586, i32 6}
!353 = !{ptr @.str.143, !354, !"<string literal>", i1 false, i1 false}
!354 = !{!"../drivers/target/iscsi/iscsi_target_configfs.c", i32 590, i32 6}
!355 = !{ptr @.str.144, !356, !"<string literal>", i1 false, i1 false}
!356 = !{!"../drivers/target/iscsi/iscsi_target_configfs.c", i32 594, i32 6}
!357 = !{ptr @.str.145, !358, !"<string literal>", i1 false, i1 false}
!358 = !{!"../drivers/target/iscsi/iscsi_target_configfs.c", i32 598, i32 6}
!359 = !{ptr @.str.146, !360, !"<string literal>", i1 false, i1 false}
!360 = !{!"../drivers/target/iscsi/iscsi_target_configfs.c", i32 602, i32 27}
!361 = !{ptr @.str.147, !362, !"<string literal>", i1 false, i1 false}
!362 = !{!"../drivers/target/iscsi/iscsi_target_configfs.c", i32 604, i32 5}
!363 = !{ptr @.str.148, !364, !"<string literal>", i1 false, i1 false}
!364 = !{!"../drivers/target/iscsi/iscsi_target_configfs.c", i32 604, i32 13}
!365 = !{ptr @.str.149, !366, !"<string literal>", i1 false, i1 false}
!366 = !{!"../drivers/target/iscsi/iscsi_target_configfs.c", i32 605, i32 27}
!367 = !{ptr @.str.150, !368, !"<string literal>", i1 false, i1 false}
!368 = !{!"../drivers/target/iscsi/iscsi_target_configfs.c", i32 690, i32 1}
!369 = !{ptr @lio_target_nacl_attr_cmdsn_depth, !368, !"lio_target_nacl_attr_cmdsn_depth", i1 false, i1 false}
!370 = !{ptr @.str.151, !371, !"<string literal>", i1 false, i1 false}
!371 = !{!"../drivers/target/iscsi/iscsi_target_configfs.c", i32 636, i32 3}
!372 = !{ptr @.str.152, !371, !"<string literal>", i1 false, i1 false}
!373 = !{ptr @lio_target_nacl_cmdsn_depth_store._entry, !371, !"_entry", i1 false, i1 false}
!374 = !{ptr @lio_target_nacl_cmdsn_depth_store._entry_ptr, !371, !"_entry_ptr", i1 false, i1 false}
!375 = !{ptr @.str.154, !376, !"<string literal>", i1 false, i1 false}
!376 = !{!"../drivers/target/iscsi/iscsi_target_configfs.c", i32 643, i32 3}
!377 = !{ptr @lio_target_nacl_cmdsn_depth_store._entry.153, !376, !"_entry", i1 false, i1 false}
!378 = !{ptr @lio_target_nacl_cmdsn_depth_store._entry_ptr.155, !376, !"_entry_ptr", i1 false, i1 false}
!379 = !{ptr @.str.157, !380, !"<string literal>", i1 false, i1 false}
!380 = !{!"../drivers/target/iscsi/iscsi_target_configfs.c", i32 648, i32 3}
!381 = !{ptr @lio_target_nacl_cmdsn_depth_store._entry.156, !380, !"_entry", i1 false, i1 false}
!382 = !{ptr @lio_target_nacl_cmdsn_depth_store._entry_ptr.158, !380, !"_entry_ptr", i1 false, i1 false}
!383 = !{ptr @.str.160, !384, !"<string literal>", i1 false, i1 false}
!384 = !{!"../drivers/target/iscsi/iscsi_target_configfs.c", i32 653, i32 3}
!385 = !{ptr @lio_target_nacl_cmdsn_depth_store._entry.159, !384, !"_entry", i1 false, i1 false}
!386 = !{ptr @lio_target_nacl_cmdsn_depth_store._entry_ptr.161, !384, !"_entry_ptr", i1 false, i1 false}
!387 = !{ptr @.str.162, !388, !"<string literal>", i1 false, i1 false}
!388 = !{!"../drivers/target/iscsi/iscsi_target_configfs.c", i32 662, i32 2}
!389 = !{ptr @lio_target_nacl_cmdsn_depth_store.__UNIQUE_ID_ddebug485, !388, !"__UNIQUE_ID_ddebug485", i1 false, i1 false}
!390 = !{ptr @.str.163, !391, !"<string literal>", i1 false, i1 false}
!391 = !{!"../drivers/target/iscsi/iscsi_target_configfs.c", i32 691, i32 1}
!392 = !{ptr @lio_target_nacl_attr_tag, !391, !"lio_target_nacl_attr_tag", i1 false, i1 false}
!393 = !{ptr @lio_target_nacl_attrib_attrs, !394, !"lio_target_nacl_attrib_attrs", i1 false, i1 false}
!394 = !{!"../drivers/target/iscsi/iscsi_target_configfs.c", i32 320, i32 35}
!395 = !{ptr @.str.164, !396, !"<string literal>", i1 false, i1 false}
!396 = !{!"../drivers/target/iscsi/iscsi_target_configfs.c", i32 311, i32 1}
!397 = !{ptr @iscsi_nacl_attrib_attr_dataout_timeout, !396, !"iscsi_nacl_attrib_attr_dataout_timeout", i1 false, i1 false}
!398 = !{ptr @.str.165, !399, !"<string literal>", i1 false, i1 false}
!399 = !{!"../drivers/target/iscsi/iscsi_target_configfs.c", i32 312, i32 1}
!400 = !{ptr @iscsi_nacl_attrib_attr_dataout_timeout_retries, !399, !"iscsi_nacl_attrib_attr_dataout_timeout_retries", i1 false, i1 false}
!401 = !{ptr @iscsi_nacl_attrib_attr_default_erl, !402, !"iscsi_nacl_attrib_attr_default_erl", i1 false, i1 false}
!402 = !{!"../drivers/target/iscsi/iscsi_target_configfs.c", i32 313, i32 1}
!403 = !{ptr @.str.166, !404, !"<string literal>", i1 false, i1 false}
!404 = !{!"../drivers/target/iscsi/iscsi_target_configfs.c", i32 314, i32 1}
!405 = !{ptr @iscsi_nacl_attrib_attr_nopin_timeout, !404, !"iscsi_nacl_attrib_attr_nopin_timeout", i1 false, i1 false}
!406 = !{ptr @.str.167, !407, !"<string literal>", i1 false, i1 false}
!407 = !{!"../drivers/target/iscsi/iscsi_target_configfs.c", i32 315, i32 1}
!408 = !{ptr @iscsi_nacl_attrib_attr_nopin_response_timeout, !407, !"iscsi_nacl_attrib_attr_nopin_response_timeout", i1 false, i1 false}
!409 = !{ptr @.str.168, !410, !"<string literal>", i1 false, i1 false}
!410 = !{!"../drivers/target/iscsi/iscsi_target_configfs.c", i32 316, i32 1}
!411 = !{ptr @iscsi_nacl_attrib_attr_random_datain_pdu_offsets, !410, !"iscsi_nacl_attrib_attr_random_datain_pdu_offsets", i1 false, i1 false}
!412 = !{ptr @.str.169, !413, !"<string literal>", i1 false, i1 false}
!413 = !{!"../drivers/target/iscsi/iscsi_target_configfs.c", i32 317, i32 1}
!414 = !{ptr @iscsi_nacl_attrib_attr_random_datain_seq_offsets, !413, !"iscsi_nacl_attrib_attr_random_datain_seq_offsets", i1 false, i1 false}
!415 = !{ptr @.str.170, !416, !"<string literal>", i1 false, i1 false}
!416 = !{!"../drivers/target/iscsi/iscsi_target_configfs.c", i32 318, i32 1}
!417 = !{ptr @iscsi_nacl_attrib_attr_random_r2t_offsets, !416, !"iscsi_nacl_attrib_attr_random_r2t_offsets", i1 false, i1 false}
!418 = !{ptr @lio_target_nacl_auth_attrs, !419, !"lio_target_nacl_auth_attrs", i1 false, i1 false}
!419 = !{!"../drivers/target/iscsi/iscsi_target_configfs.c", i32 428, i32 35}
!420 = !{ptr @iscsi_nacl_auth_attr_userid, !421, !"iscsi_nacl_auth_attr_userid", i1 false, i1 false}
!421 = !{!"../drivers/target/iscsi/iscsi_target_configfs.c", i32 396, i32 1}
!422 = !{ptr @iscsi_nacl_auth_attr_password, !423, !"iscsi_nacl_auth_attr_password", i1 false, i1 false}
!423 = !{!"../drivers/target/iscsi/iscsi_target_configfs.c", i32 397, i32 1}
!424 = !{ptr @iscsi_nacl_auth_attr_authenticate_target, !425, !"iscsi_nacl_auth_attr_authenticate_target", i1 false, i1 false}
!425 = !{!"../drivers/target/iscsi/iscsi_target_configfs.c", i32 426, i32 1}
!426 = !{ptr @iscsi_nacl_auth_attr_userid_mutual, !427, !"iscsi_nacl_auth_attr_userid_mutual", i1 false, i1 false}
!427 = !{!"../drivers/target/iscsi/iscsi_target_configfs.c", i32 398, i32 1}
!428 = !{ptr @iscsi_nacl_auth_attr_password_mutual, !429, !"iscsi_nacl_auth_attr_password_mutual", i1 false, i1 false}
!429 = !{!"../drivers/target/iscsi/iscsi_target_configfs.c", i32 399, i32 1}
!430 = !{ptr @lio_target_nacl_param_attrs, !431, !"lio_target_nacl_param_attrs", i1 false, i1 false}
!431 = !{!"../drivers/target/iscsi/iscsi_target_configfs.c", i32 479, i32 35}
!432 = !{ptr @iscsi_nacl_param_attr_MaxConnections, !433, !"iscsi_nacl_param_attr_MaxConnections", i1 false, i1 false}
!433 = !{!"../drivers/target/iscsi/iscsi_target_configfs.c", i32 467, i32 1}
!434 = !{ptr @.str.171, !433, !"<string literal>", i1 false, i1 false}
!435 = !{ptr @iscsi_nacl_param_attr_InitialR2T, !436, !"iscsi_nacl_param_attr_InitialR2T", i1 false, i1 false}
!436 = !{!"../drivers/target/iscsi/iscsi_target_configfs.c", i32 468, i32 1}
!437 = !{ptr @iscsi_nacl_param_attr_ImmediateData, !438, !"iscsi_nacl_param_attr_ImmediateData", i1 false, i1 false}
!438 = !{!"../drivers/target/iscsi/iscsi_target_configfs.c", i32 469, i32 1}
!439 = !{ptr @iscsi_nacl_param_attr_MaxBurstLength, !440, !"iscsi_nacl_param_attr_MaxBurstLength", i1 false, i1 false}
!440 = !{!"../drivers/target/iscsi/iscsi_target_configfs.c", i32 470, i32 1}
!441 = !{ptr @iscsi_nacl_param_attr_FirstBurstLength, !442, !"iscsi_nacl_param_attr_FirstBurstLength", i1 false, i1 false}
!442 = !{!"../drivers/target/iscsi/iscsi_target_configfs.c", i32 471, i32 1}
!443 = !{ptr @iscsi_nacl_param_attr_DefaultTime2Wait, !444, !"iscsi_nacl_param_attr_DefaultTime2Wait", i1 false, i1 false}
!444 = !{!"../drivers/target/iscsi/iscsi_target_configfs.c", i32 472, i32 1}
!445 = !{ptr @iscsi_nacl_param_attr_DefaultTime2Retain, !446, !"iscsi_nacl_param_attr_DefaultTime2Retain", i1 false, i1 false}
!446 = !{!"../drivers/target/iscsi/iscsi_target_configfs.c", i32 473, i32 1}
!447 = !{ptr @iscsi_nacl_param_attr_MaxOutstandingR2T, !448, !"iscsi_nacl_param_attr_MaxOutstandingR2T", i1 false, i1 false}
!448 = !{!"../drivers/target/iscsi/iscsi_target_configfs.c", i32 474, i32 1}
!449 = !{ptr @iscsi_nacl_param_attr_DataPDUInOrder, !450, !"iscsi_nacl_param_attr_DataPDUInOrder", i1 false, i1 false}
!450 = !{!"../drivers/target/iscsi/iscsi_target_configfs.c", i32 475, i32 1}
!451 = !{ptr @iscsi_nacl_param_attr_DataSequenceInOrder, !452, !"iscsi_nacl_param_attr_DataSequenceInOrder", i1 false, i1 false}
!452 = !{!"../drivers/target/iscsi/iscsi_target_configfs.c", i32 476, i32 1}
!453 = !{ptr @iscsi_nacl_param_attr_ErrorRecoveryLevel, !454, !"iscsi_nacl_param_attr_ErrorRecoveryLevel", i1 false, i1 false}
!454 = !{!"../drivers/target/iscsi/iscsi_target_configfs.c", i32 477, i32 1}
!455 = !{i32 1, !"wchar_size", i32 2}
!456 = !{i32 1, !"min_enum_size", i32 4}
!457 = !{i32 8, !"branch-target-enforcement", i32 0}
!458 = !{i32 8, !"sign-return-address", i32 0}
!459 = !{i32 8, !"sign-return-address-all", i32 0}
!460 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!461 = !{i32 7, !"uwtable", i32 1}
!462 = !{i32 7, !"frame-pointer", i32 2}
!463 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!464 = !{i64 2148950855, i64 2148950860, i64 2148950873, i64 2148950917, i64 2148950951, i64 2148950972}
!465 = !{!"auto-init"}
