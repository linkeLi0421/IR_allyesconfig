; ModuleID = '/llk/IR_all_yes/fs/cifs/cifs_swn.c_pt.bc'
source_filename = "../fs/cifs/cifs_swn.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.6 }
%union.anon.6 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.spinlock = type { %union.anon.5 }
%union.anon.5 = type { %struct.raw_spinlock }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.genl_family = type { i32, i32, [16 x i8], i32, i32, i32, i8, i8, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.net = type { %struct.refcount_struct, %struct.spinlock, i32, i32, i32, %struct.spinlock, %struct.atomic_t, %struct.list_head, %struct.list_head, %struct.llist_node, ptr, ptr, ptr, %struct.idr, %struct.ns_common, %struct.ref_tracker_dir, %struct.list_head, ptr, ptr, %struct.ctl_table_set, ptr, ptr, ptr, ptr, ptr, %struct.raw_notifier_head, i32, ptr, %struct.list_head, %struct.netns_core, %struct.netns_mib, %struct.netns_packet, %struct.netns_unix, %struct.netns_nexthop, [80 x i8], %struct.netns_ipv4, %struct.netns_ipv6, %struct.netns_ieee802154_lowpan, %struct.netns_sctp, %struct.netns_nf, %struct.netns_ct, %struct.netns_nftables, %struct.sk_buff_head, ptr, %struct.netns_bpf, [92 x i8], %struct.netns_xfrm, i64, ptr, %struct.netns_mpls, %struct.netns_can, %struct.netns_xdp, %struct.netns_mctp, ptr, ptr, %struct.netns_smc }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.llist_node = type { ptr }
%struct.ns_common = type { %struct.atomic_t, ptr, i32, %struct.refcount_struct }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.ctl_table_set = type { ptr, %struct.ctl_dir }
%struct.ctl_dir = type { %struct.ctl_table_header, %struct.rb_root }
%struct.ctl_table_header = type { %union.anon.19, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hlist_head }
%union.anon.19 = type { %struct.anon.20 }
%struct.anon.20 = type { ptr, i32, i32, i32 }
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
%struct.netns_ipv6 = type { %struct.dst_ops, %struct.netns_sysctl_ipv6, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.timer_list, ptr, ptr, %struct.list_head, %struct.rwlock_t, %struct.spinlock, i32, i32, i8, i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, i32, %struct.anon.96, ptr, [24 x i8] }
%struct.dst_ops = type { i16, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [60 x i8], %struct.percpu_counter, [56 x i8] }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.netns_sysctl_ipv6 = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i32, i8, i8, i8, [8 x i32], ptr, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8, i8 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.anon.96 = type { %struct.hlist_head, %struct.spinlock, i32 }
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
%struct.sk_buff_head = type { %union.anon.94, i32, %struct.spinlock }
%union.anon.94 = type { %struct.anon.95 }
%struct.anon.95 = type { ptr, ptr }
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
%struct.__kernel_sockaddr_storage = type { %union.anon.149 }
%union.anon.149 = type { ptr, [124 x i8] }
%struct.genl_info = type { i32, i32, ptr, ptr, ptr, ptr, %struct.possible_net_t, [2 x ptr], ptr }
%struct.possible_net_t = type { ptr }
%struct.cifs_swn_reg = type { i32, %struct.kref, ptr, ptr, i8, i8, i8, ptr }
%struct.kref = type { %struct.refcount_struct }
%struct.cifs_tcon = type { %struct.list_head, i32, %struct.list_head, %struct.atomic_t, %struct.atomic_t, %struct.list_head, %struct.spinlock, ptr, [1285 x i8], ptr, ptr, i32, i16, i32, %struct.atomic_t, %union.anon.153, i64, i64, %struct.spinlock, %struct.FILE_SYSTEM_DEVICE_INFO, %struct.FILE_SYSTEM_ATTRIBUTE_INFO, %struct.FILE_SYSTEM_UNIX_INFO, i16, i8, i8, i8, i8, i8, i32, i32, i32, i32, i64, i64, i32, i32, i32, i32, i32, i32, i64, ptr, %struct.list_head, %struct.cached_fid, %struct.list_head }
%union.anon.153 = type { %struct.anon.155 }
%struct.anon.155 = type { [19 x %struct.atomic_t], [19 x %struct.atomic_t] }
%struct.FILE_SYSTEM_DEVICE_INFO = type { i32, i32 }
%struct.FILE_SYSTEM_ATTRIBUTE_INFO = type { i32, i32, i32, [52 x i8] }
%struct.FILE_SYSTEM_UNIX_INFO = type <{ i16, i16, i64 }>
%struct.cached_fid = type { i8, i32, %struct.kref, ptr, %struct.mutex, ptr, ptr, %struct.work_struct, %struct.smb2_file_all_info }
%struct.smb2_file_all_info = type <{ i64, i64, i64, i64, i32, i32, i64, i64, i32, i8, i8, i16, i64, i32, i32, i64, i32, i32, i32, [1 x i8] }>
%struct.cifs_ses = type { %struct.list_head, %struct.list_head, %struct.list_head, ptr, %struct.mutex, ptr, i32, i32, i32, ptr, ptr, ptr, i64, %struct.kuid_t, %struct.kuid_t, i32, [49 x i8], ptr, ptr, ptr, ptr, %struct.session_key, ptr, i32, i8, i8, i16, [16 x i8], [32 x i8], [32 x i8], [64 x i8], %struct.spinlock, ptr, i32, i32, %struct.spinlock, [16 x %struct.cifs_chan], i32, i32, %struct.atomic_t, i32 }
%struct.kuid_t = type { i32 }
%struct.session_key = type { i32, ptr }
%struct.cifs_chan = type { ptr, [16 x i8] }
%struct.sockaddr_in = type { i16, i16, %struct.in_addr, [8 x i8] }
%struct.in_addr = type { i32 }
%struct.sockaddr_in6 = type { i16, i16, i32, %struct.in6_addr, i32 }
%struct.in6_addr = type { %union.anon.26 }
%union.anon.26 = type { [4 x i32] }
%struct.TCP_Server_Info = type { %struct.list_head, %struct.list_head, i64, i32, [16 x i8], ptr, ptr, i32, ptr, ptr, %struct.__kernel_sockaddr_storage, %struct.__kernel_sockaddr_storage, ptr, %struct.wait_queue_head, %struct.wait_queue_head, %struct.list_head, i8, i8, i8, i8, i32, i32, i32, i32, %struct.spinlock, %struct.mutex, ptr, [16 x i8], i16, i8, i8, i8, i32, i32, i8, [16 x i8], i16, i8, i32, i32, i32, i32, i32, i64, [8 x i8], [16 x i8], i32, i32, %struct.session_key, i32, %struct.cifs_secmech, i8, i8, i8, i8, i8, i8, i8, ptr, %struct.delayed_work, %struct.delayed_work, ptr, ptr, i32, i32, %struct.atomic_t, %struct.atomic_t, [19 x %struct.atomic_t], [19 x %struct.atomic_t], [19 x i64], [19 x i32], [19 x i32], i32, i32, i32, i16, i16, i16, [64 x i8], i8, i8, %struct.delayed_work, %struct.mutex, i32, i32, i8, ptr, i8, %struct.__kernel_sockaddr_storage, i8, %struct.mutex, ptr, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.cifs_secmech = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.sk_buff = type { %union.anon, %union.anon.124, %union.anon.125, [48 x i8], %union.anon.126, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.128, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon = type { %struct.anon }
%struct.anon = type { ptr, ptr, %union.anon.0 }
%union.anon.0 = type { ptr }
%union.anon.124 = type { ptr }
%union.anon.125 = type { i64 }
%union.anon.126 = type { %struct.anon.127 }
%struct.anon.127 = type { i32, ptr }
%union.anon.128 = type { %struct.anon.129 }
%struct.anon.129 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.130, i32, i32, i32, i16, i16, %union.anon.132, i32, %union.anon.133, %union.anon.134, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.130 = type { i32 }
%union.anon.132 = type { i32 }
%union.anon.133 = type { i32 }
%union.anon.134 = type { i16 }

@cifs_swnreg_idr_mutex = internal global { %struct.mutex, [36 x i8] } { %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.36, i8 0, i8 2, i8 0, i32 0, i32 0 } }, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @cifs_swnreg_idr_mutex, i64 52), ptr getelementptr (i8, ptr @cifs_swnreg_idr_mutex, i64 52) }, ptr @cifs_swnreg_idr_mutex, %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.37, i8 0, i8 4, i8 0, i32 0, i32 0 } }, [36 x i8] zeroinitializer }, align 32
@cifs_swnreg_idr = internal global { %struct.idr, [36 x i8] } { %struct.idr { %struct.xarray { %struct.spinlock { %union.anon.5 { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.38, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, i32 67108868, ptr null }, i32 0, i32 0 }, [36 x i8] zeroinitializer }, align 32
@cifsFYI = external dso_local local_unnamed_addr global i32, align 4
@cifs_swn_notify._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"_rs.lock\00", [23 x i8] zeroinitializer }, align 32
@cifs_swn_notify.descriptor = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, i8 0, i8 -122, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.1 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"cifs\00", [27 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"cifs_swn_notify\00", [16 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"fs/cifs/cifs_swn.c\00", [45 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"CIFS: %s: %s: registration id %d not found\0A\00", [52 x i8] zeroinitializer }, align 32
@cifs_swn_notify._rs.5 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@cifs_swn_notify.descriptor.6 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.7, i8 0, i8 -121, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.7 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"CIFS: %s: %s: missing registration id attribute\0A\00", [47 x i8] zeroinitializer }, align 32
@cifs_swn_notify._rs.8 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@cifs_swn_notify.descriptor.9 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.10, i8 0, i8 -120, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.10 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"CIFS: %s: %s: missing notification type attribute\0A\00", [45 x i8] zeroinitializer }, align 32
@cifs_swn_notify._rs.11 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@cifs_swn_notify.descriptor.12 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.13, i8 0, i8 -117, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.13 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"CIFS: %s: %s: missing resource name attribute\0A\00", [49 x i8] zeroinitializer }, align 32
@cifs_swn_notify._rs.14 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@cifs_swn_notify.descriptor.15 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.16, i8 0, i8 -115, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.16 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"CIFS: %s: %s: missing resource state attribute\0A\00", [48 x i8] zeroinitializer }, align 32
@cifs_swn_notify._rs.17 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@cifs_swn_notify.descriptor.18 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.19, i8 0, i8 -112, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.19 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"CIFS: %s: %s: missing IP address attribute\0A\00", [52 x i8] zeroinitializer }, align 32
@cifs_swn_notify._rs.20 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@cifs_swn_notify.descriptor.21 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.22, i8 0, i8 -111, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.22 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"CIFS: %s: %s: unknown notification type %d\0A\00", [52 x i8] zeroinitializer }, align 32
@cifs_swn_register._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@__func__.cifs_swn_register = private unnamed_addr constant [18 x i8] c"cifs_swn_register\00", align 1
@cifs_swn_register._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @__func__.cifs_swn_register, ptr @.str.3, i32 600, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"\013CIFS: VFS: %s: Failed to send swn register message: %d\0A\00", [38 x i8] zeroinitializer }, align 32
@cifs_swn_register._entry_ptr = internal global ptr @cifs_swn_register._entry, section ".printk_index", align 4
@.str.24 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Witness registrations:\00", [41 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [70 x i8], [58 x i8] } { [70 x i8] c"\0AId: %u Refs: %u Network name: '%s'%s Share name: '%s'%s Ip address: \00", [58 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"(y)\00", [28 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"(n)\00", [28 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"%pI4\00", [27 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"%pI6\00", [27 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"%%%u\00", [27 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"(unknown)\00", [22 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"%s\00", [29 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\0A\00", [30 x i8] zeroinitializer }, align 32
@cifs_swn_check._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@cifs_swn_check.descriptor = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.34, ptr @.str.3, ptr @.str.35, i8 0, i8 -89, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.34 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"cifs_swn_check\00", [17 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"CIFS: %s: %s: Failed to send register message: %d\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"cifs_swnreg_idr_mutex.wait_lock\00", [32 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"cifs_swnreg_idr_mutex\00", [42 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"cifs_swnreg_idr.xa_lock\00", [40 x i8] zeroinitializer }, align 32
@cifs_swn_resource_state_changed._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@cifs_swn_resource_state_changed.descriptor = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.39, ptr @.str.3, ptr @.str.40, i8 0, i8 99, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.39 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"cifs_swn_resource_state_changed\00", [32 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"CIFS: %s: %s: resource name '%s' become unavailable\0A\00", [43 x i8] zeroinitializer }, align 32
@cifs_swn_resource_state_changed._rs.41 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@cifs_swn_resource_state_changed.descriptor.42 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.39, ptr @.str.3, ptr @.str.43, i8 0, i8 100, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.43 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"CIFS: %s: %s: resource name '%s' become available\0A\00", [45 x i8] zeroinitializer }, align 32
@cifs_swn_resource_state_changed._rs.44 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@cifs_swn_resource_state_changed.descriptor.45 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.39, ptr @.str.3, ptr @.str.46, i8 0, i8 101, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.46 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"CIFS: %s: %s: resource name '%s' changed to unknown state\0A\00", [37 x i8] zeroinitializer }, align 32
@cifs_swn_client_move._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@cifs_swn_client_move.descriptor = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.47, ptr @.str.3, ptr @.str.48, i8 0, i8 -128, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.47 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"cifs_swn_client_move\00", [43 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"CIFS: %s: %s: move to %pI4\0A\00", [36 x i8] zeroinitializer }, align 32
@cifs_swn_client_move._rs.49 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@cifs_swn_client_move.descriptor.50 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.47, ptr @.str.3, ptr @.str.51, i8 0, i8 -127, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.51 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"CIFS: %s: %s: move to %pI6\0A\00", [36 x i8] zeroinitializer }, align 32
@__func__.cifs_swn_reconnect = private unnamed_addr constant [19 x i8] c"cifs_swn_reconnect\00", align 1
@cifs_swn_reconnect._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.52, ptr @__func__.cifs_swn_reconnect, ptr @.str.3, i32 475, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\013CIFS: VFS: %s: failed to store address: %d\0A\00", [50 x i8] zeroinitializer }, align 32
@cifs_swn_reconnect._entry_ptr = internal global ptr @cifs_swn_reconnect._entry, section ".printk_index", align 4
@cifs_swn_reconnect._rs.53 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@cifs_swn_reconnect._entry.54 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.55, ptr @__func__.cifs_swn_reconnect, ptr @.str.3, i32 486, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [69 x i8], [59 x i8] } { [69 x i8] c"\013CIFS: VFS: %s: Failed to unregister for witness notifications: %d\0A\00", [59 x i8] zeroinitializer }, align 32
@cifs_swn_reconnect._entry_ptr.56 = internal global ptr @cifs_swn_reconnect._entry.54, section ".printk_index", align 4
@cifs_swn_reconnect._rs.57 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@cifs_swn_reconnect._entry.58 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.59, ptr @__func__.cifs_swn_reconnect, ptr @.str.3, i32 497, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"\013CIFS: VFS: %s: Failed to register for witness notifications: %d\0A\00", [61 x i8] zeroinitializer }, align 32
@cifs_swn_reconnect._entry_ptr.60 = internal global ptr @cifs_swn_reconnect._entry.58, section ".printk_index", align 4
@cifs_get_swn_reg._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@cifs_get_swn_reg.descriptor = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.61, ptr @.str.3, ptr @.str.62, i8 0, i8 83, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.61 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"cifs_get_swn_reg\00", [47 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"CIFS: %s: %s: failed to allocate registration id\0A\00", [46 x i8] zeroinitializer }, align 32
@cifs_get_swn_reg._rs.63 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@cifs_get_swn_reg._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.64, ptr @.str.61, ptr @.str.3, i32 341, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"\013CIFS: VFS: %s: failed to extract host name from target: %d\0A\00", [34 x i8] zeroinitializer }, align 32
@cifs_get_swn_reg._entry_ptr = internal global ptr @cifs_get_swn_reg._entry, section ".printk_index", align 4
@cifs_get_swn_reg._rs.65 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@cifs_get_swn_reg._entry.66 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.67, ptr @.str.61, ptr @.str.3, i32 348, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"\013CIFS: VFS: %s: failed to extract share name from target: %d\0A\00", [33 x i8] zeroinitializer }, align 32
@cifs_get_swn_reg._entry_ptr.68 = internal global ptr @cifs_get_swn_reg._entry.66, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@cifs_genl_family = external dso_local global %struct.genl_family, align 4
@cifs_swn_send_register_message._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@__func__.cifs_swn_send_register_message = private unnamed_addr constant [31 x i8] c"cifs_swn_send_register_message\00", align 1
@cifs_swn_send_register_message._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.69, ptr @__func__.cifs_swn_send_register_message, ptr @.str.3, i32 146, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"\013CIFS: VFS: %s: Failed to get kerberos auth info: %d\0A\00", [41 x i8] zeroinitializer }, align 32
@cifs_swn_send_register_message._entry_ptr = internal global ptr @cifs_swn_send_register_message._entry, section ".printk_index", align 4
@cifs_swn_send_register_message._rs.70 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@cifs_swn_send_register_message._entry.71 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.72, ptr @__func__.cifs_swn_send_register_message, ptr @.str.3, i32 154, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\013CIFS: VFS: %s: Failed to get NTLM auth info: %d\0A\00", [45 x i8] zeroinitializer }, align 32
@cifs_swn_send_register_message._entry_ptr.73 = internal global ptr @cifs_swn_send_register_message._entry.71, section ".printk_index", align 4
@cifs_swn_send_register_message._rs.74 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@cifs_swn_send_register_message._entry.75 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.76, ptr @__func__.cifs_swn_send_register_message, ptr @.str.3, i32 159, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\013CIFS: VFS: %s: secType %d not supported!\0A\00", [52 x i8] zeroinitializer }, align 32
@cifs_swn_send_register_message._entry_ptr.77 = internal global ptr @cifs_swn_send_register_message._entry.75, section ".printk_index", align 4
@cifs_swn_send_register_message._rs.78 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@cifs_swn_send_register_message.descriptor = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @__func__.cifs_swn_send_register_message, ptr @.str.3, ptr @.str.79, i8 0, i8 42, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.79 = internal constant { [71 x i8], [57 x i8] } { [71 x i8] c"CIFS: %s: %s: Message to register for network name %s with id %d sent\0A\00", [57 x i8] zeroinitializer }, align 32
@init_net = external dso_local local_unnamed_addr global %struct.net, align 128
@genlmsg_multicast_netns.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.80 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/net/genetlink.h\00", [40 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"include/net/netlink.h\00", [42 x i8] zeroinitializer }, align 32
@cifs_find_swn_reg._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@__func__.cifs_find_swn_reg = private unnamed_addr constant [18 x i8] c"cifs_find_swn_reg\00", align 1
@cifs_find_swn_reg._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.82, ptr @__func__.cifs_find_swn_reg, ptr @.str.3, i32 265, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"\013CIFS: VFS: %s: failed to extract host name from target '%s': %d\0A\00", [61 x i8] zeroinitializer }, align 32
@cifs_find_swn_reg._entry_ptr = internal global ptr @cifs_find_swn_reg._entry, section ".printk_index", align 4
@cifs_find_swn_reg._rs.83 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@cifs_find_swn_reg._entry.84 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.85, ptr @__func__.cifs_find_swn_reg, ptr @.str.3, i32 275, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [68 x i8], [60 x i8] } { [68 x i8] c"\013CIFS: VFS: %s: failed to extract share name from target '%s': %d\0A\00", [60 x i8] zeroinitializer }, align 32
@cifs_find_swn_reg._entry_ptr.86 = internal global ptr @cifs_find_swn_reg._entry.84, section ".printk_index", align 4
@cifs_find_swn_reg._rs.87 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@cifs_find_swn_reg.descriptor = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @__func__.cifs_find_swn_reg, ptr @.str.3, ptr @.str.88, i8 0, i8 71, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.88 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"CIFS: %s: Existing swn registration for %s:%s found\0A\00", [43 x i8] zeroinitializer }, align 32
@cifs_swn_reg_release._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@__func__.cifs_swn_reg_release = private unnamed_addr constant [21 x i8] c"cifs_swn_reg_release\00", align 1
@cifs_swn_reg_release._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.89, ptr @__func__.cifs_swn_reg_release, ptr @.str.3, i32 379, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"\013CIFS: VFS: %s: Failed to send unregister message: %d\0A\00", [40 x i8] zeroinitializer }, align 32
@cifs_swn_reg_release._entry_ptr = internal global ptr @cifs_swn_reg_release._entry, section ".printk_index", align 4
@cifs_swn_send_unregister_message._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@cifs_swn_send_unregister_message.descriptor = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.90, ptr @.str.3, ptr @.str.91, i8 0, i8 59, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.90 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"cifs_swn_send_unregister_message\00", [63 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [73 x i8], [55 x i8] } { [73 x i8] c"CIFS: %s: %s: Message to unregister for network name %s with id %d sent\0A\00", [55 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.92 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 255]
@__sancov_gen_cov_switch_values.93 = internal global [4 x i64] [i64 2, i64 16, i64 2, i64 10]
@__sancov_gen_cov_switch_values.94 = internal global [4 x i64] [i64 2, i64 16, i64 2, i64 10]
@__sancov_gen_cov_switch_values.95 = internal global [4 x i64] [i64 2, i64 16, i64 2, i64 10]
@__sancov_gen_cov_switch_values.96 = internal global [4 x i64] [i64 2, i64 16, i64 2, i64 10]
@__sancov_gen_cov_switch_values.97 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.98 = internal global [4 x i64] [i64 2, i64 16, i64 2, i64 10]
@___asan_gen_.99 = private unnamed_addr constant [22 x i8] c"cifs_swnreg_idr_mutex\00", align 1
@___asan_gen_.102 = private unnamed_addr constant [16 x i8] c"cifs_swnreg_idr\00", align 1
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.382, i32 536, i32 4 }
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.382, i32 540, i32 3 }
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.382, i32 547, i32 3 }
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.382, i32 559, i32 4 }
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.382, i32 565, i32 4 }
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.382, i32 576, i32 4 }
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.382, i32 582, i32 3 }
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.382, i32 600, i32 3 }
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.382, i32 633, i32 14 }
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.382, i32 637, i32 17 }
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.382, i32 639, i32 49 }
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.382, i32 639, i32 57 }
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.382, i32 644, i32 18 }
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.382, i32 648, i32 18 }
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.382, i32 650, i32 19 }
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.382, i32 653, i32 16 }
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.382, i32 655, i32 17 }
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.382, i32 658, i32 14 }
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.382, i32 671, i32 4 }
@___asan_gen_.212 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.382, i32 20, i32 8 }
@___asan_gen_.215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.382, i32 19, i32 8 }
@___asan_gen_.224 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.382, i32 398, i32 3 }
@___asan_gen_.230 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.382, i32 402, i32 3 }
@___asan_gen_.236 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.382, i32 406, i32 3 }
@___asan_gen_.245 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.382, i32 515, i32 3 }
@___asan_gen_.251 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.382, i32 517, i32 3 }
@___asan_gen_.257 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.382, i32 475, i32 3 }
@___asan_gen_.266 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.382, i32 485, i32 3 }
@___asan_gen_.275 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.382, i32 496, i32 3 }
@___asan_gen_.284 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.382, i32 333, i32 3 }
@___asan_gen_.293 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.382, i32 341, i32 3 }
@___asan_gen_.302 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.382, i32 348, i32 3 }
@___asan_gen_.311 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.382, i32 146, i32 4 }
@___asan_gen_.320 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.382, i32 154, i32 4 }
@___asan_gen_.329 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.382, i32 159, i32 3 }
@___asan_gen_.335 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.382, i32 167, i32 2 }
@___asan_gen_.337 = private unnamed_addr constant [27 x i8] c"../include/net/genetlink.h\00", align 1
@___asan_gen_.338 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.337, i32 308, i32 6 }
@___asan_gen_.340 = private unnamed_addr constant [25 x i8] c"../include/net/netlink.h\00", align 1
@___asan_gen_.341 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.340, i32 991, i32 3 }
@___asan_gen_.350 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.382, i32 264, i32 3 }
@___asan_gen_.359 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.382, i32 274, i32 3 }
@___asan_gen_.365 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.382, i32 286, i32 3 }
@___asan_gen_.369 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.374 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.382, i32 379, i32 3 }
@___asan_gen_.375 = private unnamed_addr constant [4 x i8] c"_rs\00", align 1
@___asan_gen_.381 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.382 = private constant [22 x i8] c"../fs/cifs/cifs_swn.c\00", align 1
@___asan_gen_.383 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.382, i32 236, i32 2 }
@llvm.compiler.used = appending global [107 x ptr] [ptr @cifs_find_swn_reg._entry, ptr @cifs_find_swn_reg._entry.84, ptr @cifs_find_swn_reg._entry_ptr, ptr @cifs_find_swn_reg._entry_ptr.86, ptr @cifs_get_swn_reg._entry, ptr @cifs_get_swn_reg._entry.66, ptr @cifs_get_swn_reg._entry_ptr, ptr @cifs_get_swn_reg._entry_ptr.68, ptr @cifs_swn_reconnect._entry, ptr @cifs_swn_reconnect._entry.54, ptr @cifs_swn_reconnect._entry.58, ptr @cifs_swn_reconnect._entry_ptr, ptr @cifs_swn_reconnect._entry_ptr.56, ptr @cifs_swn_reconnect._entry_ptr.60, ptr @cifs_swn_reg_release._entry, ptr @cifs_swn_reg_release._entry_ptr, ptr @cifs_swn_register._entry, ptr @cifs_swn_register._entry_ptr, ptr @cifs_swn_send_register_message._entry, ptr @cifs_swn_send_register_message._entry.71, ptr @cifs_swn_send_register_message._entry.75, ptr @cifs_swn_send_register_message._entry_ptr, ptr @cifs_swn_send_register_message._entry_ptr.73, ptr @cifs_swn_send_register_message._entry_ptr.77, ptr @cifs_swnreg_idr_mutex, ptr @cifs_swnreg_idr, ptr @cifs_swn_notify._rs, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @cifs_swn_notify._rs.5, ptr @.str.7, ptr @cifs_swn_notify._rs.8, ptr @.str.10, ptr @cifs_swn_notify._rs.11, ptr @.str.13, ptr @cifs_swn_notify._rs.14, ptr @.str.16, ptr @cifs_swn_notify._rs.17, ptr @.str.19, ptr @cifs_swn_notify._rs.20, ptr @.str.22, ptr @cifs_swn_register._rs, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @cifs_swn_check._rs, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @cifs_swn_resource_state_changed._rs, ptr @.str.39, ptr @.str.40, ptr @cifs_swn_resource_state_changed._rs.41, ptr @.str.43, ptr @cifs_swn_resource_state_changed._rs.44, ptr @.str.46, ptr @cifs_swn_client_move._rs, ptr @.str.47, ptr @.str.48, ptr @cifs_swn_client_move._rs.49, ptr @.str.51, ptr @.str.52, ptr @cifs_swn_reconnect._rs.53, ptr @.str.55, ptr @cifs_swn_reconnect._rs.57, ptr @.str.59, ptr @cifs_get_swn_reg._rs, ptr @.str.61, ptr @.str.62, ptr @cifs_get_swn_reg._rs.63, ptr @.str.64, ptr @cifs_get_swn_reg._rs.65, ptr @.str.67, ptr @cifs_swn_send_register_message._rs, ptr @.str.69, ptr @cifs_swn_send_register_message._rs.70, ptr @.str.72, ptr @cifs_swn_send_register_message._rs.74, ptr @.str.76, ptr @cifs_swn_send_register_message._rs.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @cifs_find_swn_reg._rs, ptr @.str.82, ptr @cifs_find_swn_reg._rs.83, ptr @.str.85, ptr @cifs_find_swn_reg._rs.87, ptr @.str.88, ptr @cifs_swn_reg_release._rs, ptr @.str.89, ptr @cifs_swn_send_unregister_message._rs, ptr @.str.90, ptr @.str.91], section "llvm.metadata"
@0 = internal global [95 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cifs_swnreg_idr_mutex to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cifs_swnreg_idr to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cifs_swn_notify._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cifs_swn_notify._rs.5 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cifs_swn_notify._rs.8 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cifs_swn_notify._rs.11 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cifs_swn_notify._rs.14 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cifs_swn_notify._rs.17 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cifs_swn_notify._rs.20 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cifs_swn_register._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cifs_swn_register._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 70, i32 128, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cifs_swn_check._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cifs_swn_resource_state_changed._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cifs_swn_resource_state_changed._rs.41 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cifs_swn_resource_state_changed._rs.44 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cifs_swn_client_move._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cifs_swn_client_move._rs.49 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cifs_swn_reconnect._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cifs_swn_reconnect._rs.53 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cifs_swn_reconnect._entry.54 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 69, i32 128, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cifs_swn_reconnect._rs.57 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cifs_swn_reconnect._entry.58 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cifs_get_swn_reg._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cifs_get_swn_reg._rs.63 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cifs_get_swn_reg._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cifs_get_swn_reg._rs.65 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cifs_get_swn_reg._entry.66 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cifs_swn_send_register_message._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cifs_swn_send_register_message._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cifs_swn_send_register_message._rs.70 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cifs_swn_send_register_message._entry.71 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cifs_swn_send_register_message._rs.74 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cifs_swn_send_register_message._entry.75 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cifs_swn_send_register_message._rs.78 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 71, i32 128, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cifs_find_swn_reg._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cifs_find_swn_reg._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cifs_find_swn_reg._rs.83 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cifs_find_swn_reg._entry.84 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cifs_find_swn_reg._rs.87 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cifs_swn_reg_release._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cifs_swn_reg_release._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cifs_swn_send_unregister_message._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 73, i32 128, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cifs_swn_notify(ptr nocapture noundef readnone %skb, ptr nocapture noundef readonly %info) local_unnamed_addr #0 align 64 {
entry:
  %name = alloca [256 x i8], align 1
  %addr = alloca %struct.__kernel_sockaddr_storage, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %name) #11
  %0 = call ptr @memset(ptr %name, i32 255, i32 256)
  %attrs = getelementptr inbounds %struct.genl_info, ptr %info, i32 0, i32 5
  %1 = ptrtoint ptr %attrs to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %attrs, align 4
  %arrayidx = getelementptr ptr, ptr %2, i32 1
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %4, null
  br i1 %tobool.not, label %do.body24, label %if.then

if.then:                                          ; preds = %entry
  %add.ptr.i.i = getelementptr i8, ptr %4, i32 4
  %5 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %add.ptr.i.i, align 4
  tail call void @mutex_lock_nested(ptr noundef nonnull @cifs_swnreg_idr_mutex, i32 noundef 0) #11
  %call3 = tail call ptr @idr_find(ptr noundef nonnull @cifs_swnreg_idr, i32 noundef %6) #11
  tail call void @mutex_unlock(ptr noundef nonnull @cifs_swnreg_idr_mutex) #11
  %cmp = icmp eq ptr %call3, null
  br i1 %cmp, label %do.body5, label %if.end53

do.body5:                                         ; preds = %if.then
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cifsFYI to i32))
  %7 = load i32, ptr @cifsFYI, align 4
  %and = and i32 %7, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool6.not = icmp eq i32 %and, 0
  br i1 %tobool6.not, label %do.body5.cleanup246_crit_edge, label %do.body8

do.body5.cleanup246_crit_edge:                    ; preds = %do.body5
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup246

do.body8:                                         ; preds = %do.body5
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cifs_swn_notify.descriptor, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cifs_swn_notify, %land.lhs.true)) #11
          to label %cleanup246 [label %land.lhs.true], !srcloc !183

land.lhs.true:                                    ; preds = %do.body8
  %call13 = tail call i32 @___ratelimit(ptr noundef nonnull @cifs_swn_notify._rs, ptr noundef nonnull @.str.2) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %land.lhs.true.cleanup246_crit_edge, label %if.then15

land.lhs.true.cleanup246_crit_edge:               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup246

if.then15:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @cifs_swn_notify.descriptor, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.2, i32 noundef %6) #11
  br label %cleanup246

do.body24:                                        ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cifsFYI to i32))
  %8 = load i32, ptr @cifsFYI, align 4
  %and25 = and i32 %8, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and25)
  %tobool26.not = icmp eq i32 %and25, 0
  br i1 %tobool26.not, label %do.body24.cleanup246_crit_edge, label %do.body28

do.body24.cleanup246_crit_edge:                   ; preds = %do.body24
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup246

do.body28:                                        ; preds = %do.body24
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cifs_swn_notify.descriptor.6, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cifs_swn_notify, %land.lhs.true40)) #11
          to label %cleanup246 [label %land.lhs.true40], !srcloc !183

land.lhs.true40:                                  ; preds = %do.body28
  %call41 = tail call i32 @___ratelimit(ptr noundef nonnull @cifs_swn_notify._rs.5, ptr noundef nonnull @.str.2) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call41)
  %tobool42.not = icmp eq i32 %call41, 0
  br i1 %tobool42.not, label %land.lhs.true40.cleanup246_crit_edge, label %if.then43

land.lhs.true40.cleanup246_crit_edge:             ; preds = %land.lhs.true40
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup246

if.then43:                                        ; preds = %land.lhs.true40
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @cifs_swn_notify.descriptor.6, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.2) #11
  br label %cleanup246

if.end53:                                         ; preds = %if.then
  %9 = ptrtoint ptr %attrs to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %attrs, align 4
  %arrayidx55 = getelementptr ptr, ptr %10, i32 12
  %11 = ptrtoint ptr %arrayidx55 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %arrayidx55, align 4
  %tobool56.not = icmp eq ptr %12, null
  br i1 %tobool56.not, label %do.body63, label %if.then57

if.then57:                                        ; preds = %if.end53
  %add.ptr.i.i287 = getelementptr i8, ptr %12, i32 4
  %13 = ptrtoint ptr %add.ptr.i.i287 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %add.ptr.i.i287, align 4
  %15 = zext i32 %14 to i64
  call void @__sanitizer_cov_trace_switch(i64 %15, ptr @__sancov_gen_cov_switch_values)
  switch i32 %14, label %do.body217 [
    i32 1, label %sw.bb
    i32 2, label %sw.bb174
  ]

do.body63:                                        ; preds = %if.end53
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cifsFYI to i32))
  %16 = load i32, ptr @cifsFYI, align 4
  %and64 = and i32 %16, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and64)
  %tobool65.not = icmp eq i32 %and64, 0
  br i1 %tobool65.not, label %do.body63.cleanup246_crit_edge, label %do.body67

do.body63.cleanup246_crit_edge:                   ; preds = %do.body63
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup246

do.body67:                                        ; preds = %do.body63
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cifs_swn_notify.descriptor.9, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cifs_swn_notify, %land.lhs.true79)) #11
          to label %cleanup246 [label %land.lhs.true79], !srcloc !183

land.lhs.true79:                                  ; preds = %do.body67
  %call80 = tail call i32 @___ratelimit(ptr noundef nonnull @cifs_swn_notify._rs.8, ptr noundef nonnull @.str.2) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call80)
  %tobool81.not = icmp eq i32 %call80, 0
  br i1 %tobool81.not, label %land.lhs.true79.cleanup246_crit_edge, label %if.then82

land.lhs.true79.cleanup246_crit_edge:             ; preds = %land.lhs.true79
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup246

if.then82:                                        ; preds = %land.lhs.true79
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @cifs_swn_notify.descriptor.9, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.2) #11
  br label %cleanup246

sw.bb:                                            ; preds = %if.then57
  %arrayidx94 = getelementptr ptr, ptr %10, i32 14
  %17 = ptrtoint ptr %arrayidx94 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %arrayidx94, align 4
  %tobool95.not = icmp eq ptr %18, null
  br i1 %tobool95.not, label %do.body102, label %if.then96

if.then96:                                        ; preds = %sw.bb
  %call99 = call i32 @nla_strscpy(ptr noundef nonnull %name, ptr noundef nonnull %18, i32 noundef 256) #11
  %19 = ptrtoint ptr %attrs to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %attrs, align 4
  %arrayidx133 = getelementptr ptr, ptr %20, i32 13
  %21 = ptrtoint ptr %arrayidx133 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %arrayidx133, align 4
  %tobool134.not = icmp eq ptr %22, null
  br i1 %tobool134.not, label %do.body141, label %if.then135

do.body102:                                       ; preds = %sw.bb
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cifsFYI to i32))
  %23 = load i32, ptr @cifsFYI, align 4
  %and103 = and i32 %23, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and103)
  %tobool104.not = icmp eq i32 %and103, 0
  br i1 %tobool104.not, label %do.body102.cleanup246_crit_edge, label %do.body106

do.body102.cleanup246_crit_edge:                  ; preds = %do.body102
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup246

do.body106:                                       ; preds = %do.body102
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cifs_swn_notify.descriptor.12, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cifs_swn_notify, %land.lhs.true118)) #11
          to label %cleanup246 [label %land.lhs.true118], !srcloc !183

land.lhs.true118:                                 ; preds = %do.body106
  %call119 = tail call i32 @___ratelimit(ptr noundef nonnull @cifs_swn_notify._rs.11, ptr noundef nonnull @.str.2) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call119)
  %tobool120.not = icmp eq i32 %call119, 0
  br i1 %tobool120.not, label %land.lhs.true118.cleanup246_crit_edge, label %if.then121

land.lhs.true118.cleanup246_crit_edge:            ; preds = %land.lhs.true118
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup246

if.then121:                                       ; preds = %land.lhs.true118
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @cifs_swn_notify.descriptor.12, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.2) #11
  br label %cleanup246

if.then135:                                       ; preds = %if.then96
  call void @__sanitizer_cov_trace_pc() #13
  %add.ptr.i.i288 = getelementptr i8, ptr %22, i32 4
  %24 = ptrtoint ptr %add.ptr.i.i288 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %add.ptr.i.i288, align 4
  call fastcc void @cifs_swn_resource_state_changed(ptr noundef nonnull %call3, ptr noundef nonnull %name, i32 noundef %25)
  br label %cleanup246

do.body141:                                       ; preds = %if.then96
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cifsFYI to i32))
  %26 = load i32, ptr @cifsFYI, align 4
  %and142 = and i32 %26, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and142)
  %tobool143.not = icmp eq i32 %and142, 0
  br i1 %tobool143.not, label %do.body141.cleanup246_crit_edge, label %do.body145

do.body141.cleanup246_crit_edge:                  ; preds = %do.body141
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup246

do.body145:                                       ; preds = %do.body141
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cifs_swn_notify.descriptor.15, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cifs_swn_notify, %land.lhs.true157)) #11
          to label %cleanup246 [label %land.lhs.true157], !srcloc !183

land.lhs.true157:                                 ; preds = %do.body145
  %call158 = call i32 @___ratelimit(ptr noundef nonnull @cifs_swn_notify._rs.14, ptr noundef nonnull @.str.2) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call158)
  %tobool159.not = icmp eq i32 %call158, 0
  br i1 %tobool159.not, label %land.lhs.true157.cleanup246_crit_edge, label %if.then160

land.lhs.true157.cleanup246_crit_edge:            ; preds = %land.lhs.true157
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup246

if.then160:                                       ; preds = %land.lhs.true157
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @cifs_swn_notify.descriptor.15, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.2) #11
  br label %cleanup246

sw.bb174:                                         ; preds = %if.then57
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %addr) #11
  %27 = call ptr @memset(ptr %addr, i32 255, i32 128)
  %arrayidx176 = getelementptr ptr, ptr %10, i32 4
  %28 = ptrtoint ptr %arrayidx176 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %arrayidx176, align 4
  %tobool177.not = icmp eq ptr %29, null
  br i1 %tobool177.not, label %do.body184, label %if.then178

if.then178:                                       ; preds = %sw.bb174
  call void @__sanitizer_cov_trace_pc() #13
  %call181 = call i32 @nla_memcpy(ptr noundef nonnull %addr, ptr noundef nonnull %29, i32 noundef 128) #11
  %call214 = call fastcc i32 @cifs_swn_client_move(ptr noundef nonnull %call3, ptr noundef nonnull %addr)
  br label %cleanup215

do.body184:                                       ; preds = %sw.bb174
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cifsFYI to i32))
  %30 = load i32, ptr @cifsFYI, align 4
  %and185 = and i32 %30, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and185)
  %tobool186.not = icmp eq i32 %and185, 0
  br i1 %tobool186.not, label %do.body184.cleanup215_crit_edge, label %do.body188

do.body184.cleanup215_crit_edge:                  ; preds = %do.body184
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup215

do.body188:                                       ; preds = %do.body184
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cifs_swn_notify.descriptor.18, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cifs_swn_notify, %land.lhs.true200)) #11
          to label %cleanup215 [label %land.lhs.true200], !srcloc !183

land.lhs.true200:                                 ; preds = %do.body188
  %call201 = tail call i32 @___ratelimit(ptr noundef nonnull @cifs_swn_notify._rs.17, ptr noundef nonnull @.str.2) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call201)
  %tobool202.not = icmp eq i32 %call201, 0
  br i1 %tobool202.not, label %land.lhs.true200.cleanup215_crit_edge, label %if.then203

land.lhs.true200.cleanup215_crit_edge:            ; preds = %land.lhs.true200
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup215

if.then203:                                       ; preds = %land.lhs.true200
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @cifs_swn_notify.descriptor.18, ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.2) #11
  br label %cleanup215

cleanup215:                                       ; preds = %if.then203, %land.lhs.true200.cleanup215_crit_edge, %do.body188, %do.body184.cleanup215_crit_edge, %if.then178
  %retval.2 = phi i32 [ %call214, %if.then178 ], [ -22, %do.body184.cleanup215_crit_edge ], [ -22, %land.lhs.true200.cleanup215_crit_edge ], [ -22, %if.then203 ], [ -22, %do.body188 ]
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %addr) #11
  br label %cleanup246

do.body217:                                       ; preds = %if.then57
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cifsFYI to i32))
  %31 = load i32, ptr @cifsFYI, align 4
  %and218 = and i32 %31, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and218)
  %tobool219.not = icmp eq i32 %and218, 0
  br i1 %tobool219.not, label %do.body217.cleanup246_crit_edge, label %do.body221

do.body217.cleanup246_crit_edge:                  ; preds = %do.body217
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup246

do.body221:                                       ; preds = %do.body217
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cifs_swn_notify.descriptor.21, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cifs_swn_notify, %land.lhs.true233)) #11
          to label %cleanup246 [label %land.lhs.true233], !srcloc !183

land.lhs.true233:                                 ; preds = %do.body221
  %call234 = tail call i32 @___ratelimit(ptr noundef nonnull @cifs_swn_notify._rs.20, ptr noundef nonnull @.str.2) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call234)
  %tobool235.not = icmp eq i32 %call234, 0
  br i1 %tobool235.not, label %land.lhs.true233.cleanup246_crit_edge, label %if.then236

land.lhs.true233.cleanup246_crit_edge:            ; preds = %land.lhs.true233
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup246

if.then236:                                       ; preds = %land.lhs.true233
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @cifs_swn_notify.descriptor.21, ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.2, i32 noundef %14) #11
  br label %cleanup246

cleanup246:                                       ; preds = %if.then236, %land.lhs.true233.cleanup246_crit_edge, %do.body221, %do.body217.cleanup246_crit_edge, %cleanup215, %if.then160, %land.lhs.true157.cleanup246_crit_edge, %do.body145, %do.body141.cleanup246_crit_edge, %if.then135, %if.then121, %land.lhs.true118.cleanup246_crit_edge, %do.body106, %do.body102.cleanup246_crit_edge, %if.then82, %land.lhs.true79.cleanup246_crit_edge, %do.body67, %do.body63.cleanup246_crit_edge, %if.then43, %land.lhs.true40.cleanup246_crit_edge, %do.body28, %do.body24.cleanup246_crit_edge, %if.then15, %land.lhs.true.cleanup246_crit_edge, %do.body8, %do.body5.cleanup246_crit_edge
  %retval.3 = phi i32 [ %retval.2, %cleanup215 ], [ -22, %if.then15 ], [ -22, %do.body24.cleanup246_crit_edge ], [ -22, %land.lhs.true40.cleanup246_crit_edge ], [ -22, %if.then43 ], [ -22, %do.body63.cleanup246_crit_edge ], [ -22, %land.lhs.true79.cleanup246_crit_edge ], [ -22, %if.then82 ], [ 0, %if.then135 ], [ -22, %do.body102.cleanup246_crit_edge ], [ -22, %land.lhs.true118.cleanup246_crit_edge ], [ -22, %if.then121 ], [ -22, %do.body141.cleanup246_crit_edge ], [ -22, %land.lhs.true157.cleanup246_crit_edge ], [ -22, %if.then160 ], [ 0, %if.then236 ], [ 0, %land.lhs.true233.cleanup246_crit_edge ], [ 0, %do.body217.cleanup246_crit_edge ], [ -22, %land.lhs.true.cleanup246_crit_edge ], [ -22, %do.body5.cleanup246_crit_edge ], [ -22, %do.body8 ], [ -22, %do.body28 ], [ -22, %do.body67 ], [ -22, %do.body106 ], [ -22, %do.body145 ], [ 0, %do.body221 ]
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %name) #11
  ret i32 %retval.3
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @idr_find(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___ratelimit(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nla_strscpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @cifs_swn_resource_state_changed(ptr nocapture noundef readonly %swnreg, ptr noundef %name, i32 noundef %state) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %state to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.92)
  switch i32 %state, label %entry.sw.epilog_crit_edge [
    i32 255, label %do.body1
    i32 1, label %do.body14
    i32 0, label %do.body45
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

do.body1:                                         ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cifsFYI to i32))
  %1 = load i32, ptr @cifsFYI, align 4
  %and = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %do.body1.do.end11_crit_edge, label %do.body2

do.body1.do.end11_crit_edge:                      ; preds = %do.body1
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end11

do.body2:                                         ; preds = %do.body1
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cifs_swn_resource_state_changed.descriptor, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cifs_swn_resource_state_changed, %land.lhs.true)) #11
          to label %do.end11 [label %land.lhs.true], !srcloc !183

land.lhs.true:                                    ; preds = %do.body2
  %call6 = tail call i32 @___ratelimit(ptr noundef nonnull @cifs_swn_resource_state_changed._rs, ptr noundef nonnull @.str.39) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %land.lhs.true.do.end11_crit_edge, label %if.then8

land.lhs.true.do.end11_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end11

if.then8:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @cifs_swn_resource_state_changed.descriptor, ptr noundef nonnull @.str.40, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.39, ptr noundef %name) #11
  br label %do.end11

do.end11:                                         ; preds = %if.then8, %land.lhs.true.do.end11_crit_edge, %do.body2, %do.body1.do.end11_crit_edge
  %tcon = getelementptr inbounds %struct.cifs_swn_reg, ptr %swnreg, i32 0, i32 7
  %2 = ptrtoint ptr %tcon to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %tcon, align 4
  %ses = getelementptr inbounds %struct.cifs_tcon, ptr %3, i32 0, i32 7
  %4 = ptrtoint ptr %ses to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ses, align 8
  %server = getelementptr inbounds %struct.cifs_ses, ptr %5, i32 0, i32 5
  %6 = ptrtoint ptr %server to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %server, align 8
  tail call void @cifs_mark_tcp_ses_conns_for_reconnect(ptr noundef %7, i1 noundef zeroext true) #11
  br label %sw.epilog

do.body14:                                        ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cifsFYI to i32))
  %8 = load i32, ptr @cifsFYI, align 4
  %and15 = and i32 %8, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and15)
  %tobool16.not = icmp eq i32 %and15, 0
  br i1 %tobool16.not, label %do.body14.do.end39_crit_edge, label %do.body18

do.body14.do.end39_crit_edge:                     ; preds = %do.body14
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end39

do.body18:                                        ; preds = %do.body14
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cifs_swn_resource_state_changed.descriptor.42, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cifs_swn_resource_state_changed, %land.lhs.true30)) #11
          to label %do.end39 [label %land.lhs.true30], !srcloc !183

land.lhs.true30:                                  ; preds = %do.body18
  %call31 = tail call i32 @___ratelimit(ptr noundef nonnull @cifs_swn_resource_state_changed._rs.41, ptr noundef nonnull @.str.39) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31)
  %tobool32.not = icmp eq i32 %call31, 0
  br i1 %tobool32.not, label %land.lhs.true30.do.end39_crit_edge, label %if.then33

land.lhs.true30.do.end39_crit_edge:               ; preds = %land.lhs.true30
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end39

if.then33:                                        ; preds = %land.lhs.true30
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @cifs_swn_resource_state_changed.descriptor.42, ptr noundef nonnull @.str.43, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.39, ptr noundef %name) #11
  br label %do.end39

do.end39:                                         ; preds = %if.then33, %land.lhs.true30.do.end39_crit_edge, %do.body18, %do.body14.do.end39_crit_edge
  %tcon40 = getelementptr inbounds %struct.cifs_swn_reg, ptr %swnreg, i32 0, i32 7
  %9 = ptrtoint ptr %tcon40 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %tcon40, align 4
  %ses41 = getelementptr inbounds %struct.cifs_tcon, ptr %10, i32 0, i32 7
  %11 = ptrtoint ptr %ses41 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %ses41, align 8
  %server42 = getelementptr inbounds %struct.cifs_ses, ptr %12, i32 0, i32 5
  %13 = ptrtoint ptr %server42 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %server42, align 8
  tail call void @cifs_mark_tcp_ses_conns_for_reconnect(ptr noundef %14, i1 noundef zeroext true) #11
  br label %sw.epilog

do.body45:                                        ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cifsFYI to i32))
  %15 = load i32, ptr @cifsFYI, align 4
  %and46 = and i32 %15, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and46)
  %tobool47.not = icmp eq i32 %and46, 0
  br i1 %tobool47.not, label %do.body45.sw.epilog_crit_edge, label %do.body49

do.body45.sw.epilog_crit_edge:                    ; preds = %do.body45
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

do.body49:                                        ; preds = %do.body45
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cifs_swn_resource_state_changed.descriptor.45, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cifs_swn_resource_state_changed, %land.lhs.true61)) #11
          to label %sw.epilog [label %land.lhs.true61], !srcloc !183

land.lhs.true61:                                  ; preds = %do.body49
  %call62 = tail call i32 @___ratelimit(ptr noundef nonnull @cifs_swn_resource_state_changed._rs.44, ptr noundef nonnull @.str.39) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call62)
  %tobool63.not = icmp eq i32 %call62, 0
  br i1 %tobool63.not, label %land.lhs.true61.sw.epilog_crit_edge, label %if.then64

land.lhs.true61.sw.epilog_crit_edge:              ; preds = %land.lhs.true61
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

if.then64:                                        ; preds = %land.lhs.true61
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @cifs_swn_resource_state_changed.descriptor.45, ptr noundef nonnull @.str.46, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.39, ptr noundef %name) #11
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then64, %land.lhs.true61.sw.epilog_crit_edge, %do.body49, %do.body45.sw.epilog_crit_edge, %do.end39, %do.end11, %entry.sw.epilog_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nla_memcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @cifs_swn_client_move(ptr nocapture noundef readonly %swnreg, ptr noundef %addr) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %addr to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %addr, align 4
  %2 = zext i16 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.93)
  switch i16 %1, label %entry.if.end53_crit_edge [
    i16 2, label %do.body2
    i16 10, label %do.body23
  ]

entry.if.end53_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end53

do.body2:                                         ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cifsFYI to i32))
  %3 = load i32, ptr @cifsFYI, align 4
  %and = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %do.body2.if.end53_crit_edge, label %do.body4

do.body2.if.end53_crit_edge:                      ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end53

do.body4:                                         ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cifs_swn_client_move.descriptor, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cifs_swn_client_move, %land.lhs.true)) #11
          to label %if.end53 [label %land.lhs.true], !srcloc !183

land.lhs.true:                                    ; preds = %do.body4
  %call8 = tail call i32 @___ratelimit(ptr noundef nonnull @cifs_swn_client_move._rs, ptr noundef nonnull @.str.47) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %land.lhs.true.if.end53_crit_edge, label %if.then10

land.lhs.true.if.end53_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end53

if.then10:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  %sin_addr = getelementptr inbounds %struct.sockaddr_in, ptr %addr, i32 0, i32 2
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @cifs_swn_client_move.descriptor, ptr noundef nonnull @.str.48, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.47, ptr noundef %sin_addr) #11
  br label %if.end53

do.body23:                                        ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cifsFYI to i32))
  %4 = load i32, ptr @cifsFYI, align 4
  %and24 = and i32 %4, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and24)
  %tobool25.not = icmp eq i32 %and24, 0
  br i1 %tobool25.not, label %do.body23.if.end53_crit_edge, label %do.body27

do.body23.if.end53_crit_edge:                     ; preds = %do.body23
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end53

do.body27:                                        ; preds = %do.body23
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cifs_swn_client_move.descriptor.50, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cifs_swn_client_move, %land.lhs.true39)) #11
          to label %if.end53 [label %land.lhs.true39], !srcloc !183

land.lhs.true39:                                  ; preds = %do.body27
  %call40 = tail call i32 @___ratelimit(ptr noundef nonnull @cifs_swn_client_move._rs.49, ptr noundef nonnull @.str.47) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call40)
  %tobool41.not = icmp eq i32 %call40, 0
  br i1 %tobool41.not, label %land.lhs.true39.if.end53_crit_edge, label %if.then42

land.lhs.true39.if.end53_crit_edge:               ; preds = %land.lhs.true39
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end53

if.then42:                                        ; preds = %land.lhs.true39
  call void @__sanitizer_cov_trace_pc() #13
  %sin6_addr = getelementptr inbounds %struct.sockaddr_in6, ptr %addr, i32 0, i32 3
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @cifs_swn_client_move.descriptor.50, ptr noundef nonnull @.str.51, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.47, ptr noundef %sin6_addr) #11
  br label %if.end53

if.end53:                                         ; preds = %if.then42, %land.lhs.true39.if.end53_crit_edge, %do.body27, %do.body23.if.end53_crit_edge, %if.then10, %land.lhs.true.if.end53_crit_edge, %do.body4, %do.body2.if.end53_crit_edge, %entry.if.end53_crit_edge
  %tcon = getelementptr inbounds %struct.cifs_swn_reg, ptr %swnreg, i32 0, i32 7
  %5 = ptrtoint ptr %tcon to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %tcon, align 4
  %ses.i = getelementptr inbounds %struct.cifs_tcon, ptr %6, i32 0, i32 7
  %7 = ptrtoint ptr %ses.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %ses.i, align 8
  %server.i = getelementptr inbounds %struct.cifs_ses, ptr %8, i32 0, i32 5
  %9 = ptrtoint ptr %server.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %server.i, align 8
  %srv_mutex.i = getelementptr inbounds %struct.TCP_Server_Info, ptr %10, i32 0, i32 25
  tail call void @mutex_lock_nested(ptr noundef %srv_mutex.i, i32 noundef 0) #11
  %11 = ptrtoint ptr %ses.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %ses.i, align 8
  %server2.i = getelementptr inbounds %struct.cifs_ses, ptr %12, i32 0, i32 5
  %13 = ptrtoint ptr %server2.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %server2.i, align 8
  %dstaddr.i = getelementptr inbounds %struct.TCP_Server_Info, ptr %14, i32 0, i32 10
  %15 = ptrtoint ptr %dstaddr.i to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %dstaddr.i, align 4
  %17 = ptrtoint ptr %addr to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %addr, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %16, i16 %18)
  %cmp.not.i.i = icmp eq i16 %16, %18
  br i1 %cmp.not.i.i, label %if.end.i.i, label %if.end53.if.end.i_crit_edge

if.end53.if.end.i_crit_edge:                      ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i

if.end.i.i:                                       ; preds = %if.end53
  %19 = zext i16 %16 to i64
  call void @__sanitizer_cov_trace_switch(i64 %19, ptr @__sancov_gen_cov_switch_values.94)
  switch i16 %16, label %if.end.i.i.if.end.i_crit_edge [
    i16 2, label %if.then8.i.i
    i16 10, label %cifs_sockaddr_equal.exit.i
  ]

if.end.i.i.if.end.i_crit_edge:                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i

if.then8.i.i:                                     ; preds = %if.end.i.i
  %sin_addr.i.i = getelementptr inbounds %struct.TCP_Server_Info, ptr %14, i32 0, i32 10, i32 0, i32 1
  %sin_addr9.i.i = getelementptr inbounds %struct.sockaddr_in, ptr %addr, i32 0, i32 2
  %bcmp29.i.i = tail call i32 @bcmp(ptr noundef dereferenceable(4) %sin_addr.i.i, ptr noundef dereferenceable(4) %sin_addr9.i.i, i32 4) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp29.i.i)
  %cmp10.i.i = icmp eq i32 %bcmp29.i.i, 0
  br i1 %cmp10.i.i, label %if.then8.i.i.cifs_swn_reconnect.exit_crit_edge, label %if.end.thread.i

if.then8.i.i.cifs_swn_reconnect.exit_crit_edge:   ; preds = %if.then8.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cifs_swn_reconnect.exit

if.end.thread.i:                                  ; preds = %if.then8.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %swn_dstaddr85.i = getelementptr inbounds %struct.TCP_Server_Info, ptr %14, i32 0, i32 88
  br label %if.then.i.i

cifs_sockaddr_equal.exit.i:                       ; preds = %if.end.i.i
  %sin6_addr.i.i = getelementptr inbounds %struct.TCP_Server_Info, ptr %14, i32 0, i32 10, i32 0, i32 1, i32 4
  %sin6_addr18.i.i = getelementptr inbounds %struct.sockaddr_in6, ptr %addr, i32 0, i32 3
  %bcmp.i.i = tail call i32 @bcmp(ptr noundef dereferenceable(16) %sin6_addr.i.i, ptr noundef dereferenceable(16) %sin6_addr18.i.i, i32 16) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i.i)
  %cmp20.i.i = icmp eq i32 %bcmp.i.i, 0
  br i1 %cmp20.i.i, label %cifs_sockaddr_equal.exit.i.cifs_swn_reconnect.exit_crit_edge, label %if.end.thread89.i

cifs_sockaddr_equal.exit.i.cifs_swn_reconnect.exit_crit_edge: ; preds = %cifs_sockaddr_equal.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cifs_swn_reconnect.exit

if.end.thread89.i:                                ; preds = %cifs_sockaddr_equal.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  %swn_dstaddr90.i = getelementptr inbounds %struct.TCP_Server_Info, ptr %14, i32 0, i32 88
  br label %if.then6.i.i

if.end.i:                                         ; preds = %if.end.i.i.if.end.i_crit_edge, %if.end53.if.end.i_crit_edge
  %swn_dstaddr.i = getelementptr inbounds %struct.TCP_Server_Info, ptr %14, i32 0, i32 88
  %20 = zext i16 %16 to i64
  call void @__sanitizer_cov_trace_switch(i64 %20, ptr @__sancov_gen_cov_switch_values.95)
  switch i16 %16, label %if.end.i.if.end7.i.i_crit_edge [
    i16 2, label %if.end.i.if.then.i.i_crit_edge
    i16 10, label %if.end.i.if.then6.i.i_crit_edge
  ]

if.end.i.if.then6.i.i_crit_edge:                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then6.i.i

if.end.i.if.then.i.i_crit_edge:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i.i

if.end.i.if.end7.i.i_crit_edge:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end7.i.i

if.then.i.i:                                      ; preds = %if.end.i.if.then.i.i_crit_edge, %if.end.thread.i
  %swn_dstaddr87.i = phi ptr [ %swn_dstaddr85.i, %if.end.thread.i ], [ %swn_dstaddr.i, %if.end.i.if.then.i.i_crit_edge ]
  %sin_port.i.i = getelementptr inbounds %struct.sockaddr_in, ptr %dstaddr.i, i32 0, i32 1
  br label %if.end7.sink.split.i.i

if.then6.i.i:                                     ; preds = %if.end.i.if.then6.i.i_crit_edge, %if.end.thread89.i
  %swn_dstaddr91.i = phi ptr [ %swn_dstaddr90.i, %if.end.thread89.i ], [ %swn_dstaddr.i, %if.end.i.if.then6.i.i_crit_edge ]
  %sin6_port.i.i = getelementptr inbounds %struct.sockaddr_in6, ptr %dstaddr.i, i32 0, i32 1
  br label %if.end7.sink.split.i.i

if.end7.sink.split.i.i:                           ; preds = %if.then6.i.i, %if.then.i.i
  %swn_dstaddr86.i = phi ptr [ %swn_dstaddr91.i, %if.then6.i.i ], [ %swn_dstaddr87.i, %if.then.i.i ]
  %sin6_port.sink.i.i = phi ptr [ %sin6_port.i.i, %if.then6.i.i ], [ %sin_port.i.i, %if.then.i.i ]
  %21 = ptrtoint ptr %sin6_port.sink.i.i to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %sin6_port.sink.i.i, align 2
  br label %if.end7.i.i

if.end7.i.i:                                      ; preds = %if.end7.sink.split.i.i, %if.end.i.if.end7.i.i_crit_edge
  %swn_dstaddr88.i = phi ptr [ %swn_dstaddr.i, %if.end.i.if.end7.i.i_crit_edge ], [ %swn_dstaddr86.i, %if.end7.sink.split.i.i ]
  %port.0.i.i = phi i16 [ 445, %if.end.i.if.end7.i.i_crit_edge ], [ %22, %if.end7.sink.split.i.i ]
  %23 = zext i16 %18 to i64
  call void @__sanitizer_cov_trace_switch(i64 %23, ptr @__sancov_gen_cov_switch_values.96)
  switch i16 %18, label %if.end7.i.i.cifs_swn_store_swn_addr.exit.i_crit_edge [
    i16 2, label %if.then12.i.i
    i16 10, label %if.then20.i.i
  ]

if.end7.i.i.cifs_swn_store_swn_addr.exit.i_crit_edge: ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cifs_swn_store_swn_addr.exit.i

if.then12.i.i:                                    ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %sin_port14.i.i = getelementptr inbounds %struct.sockaddr_in, ptr %addr, i32 0, i32 1
  br label %if.end24.sink.split.i.i

if.then20.i.i:                                    ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %sin6_port22.i.i = getelementptr inbounds %struct.sockaddr_in6, ptr %addr, i32 0, i32 1
  br label %if.end24.sink.split.i.i

if.end24.sink.split.i.i:                          ; preds = %if.then20.i.i, %if.then12.i.i
  %sin6_port22.sink.i.i = phi ptr [ %sin6_port22.i.i, %if.then20.i.i ], [ %sin_port14.i.i, %if.then12.i.i ]
  %24 = ptrtoint ptr %sin6_port22.sink.i.i to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 %port.0.i.i, ptr %sin6_port22.sink.i.i, align 2
  br label %cifs_swn_store_swn_addr.exit.i

cifs_swn_store_swn_addr.exit.i:                   ; preds = %if.end24.sink.split.i.i, %if.end7.i.i.cifs_swn_store_swn_addr.exit.i_crit_edge
  %25 = call ptr @memcpy(ptr %swn_dstaddr88.i, ptr %addr, i32 128)
  %26 = ptrtoint ptr %ses.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %ses.i, align 8
  %server22.i = getelementptr inbounds %struct.cifs_ses, ptr %27, i32 0, i32 5
  %28 = ptrtoint ptr %server22.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %server22.i, align 8
  %use_swn_dstaddr.i = getelementptr inbounds %struct.TCP_Server_Info, ptr %29, i32 0, i32 87
  %30 = ptrtoint ptr %use_swn_dstaddr.i to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 1, ptr %use_swn_dstaddr.i, align 4
  %call23.i = tail call i32 @cifs_swn_unregister(ptr noundef %6) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23.i)
  %cmp24.i = icmp slt i32 %call23.i, 0
  br i1 %cmp24.i, label %do.body27.i, label %if.end41.i

do.body27.i:                                      ; preds = %cifs_swn_store_swn_addr.exit.i
  %call28.i = tail call i32 @___ratelimit(ptr noundef nonnull @cifs_swn_reconnect._rs.53, ptr noundef nonnull @__func__.cifs_swn_reconnect) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28.i)
  %tobool29.not.i = icmp eq i32 %call28.i, 0
  br i1 %tobool29.not.i, label %do.body27.i.cifs_swn_reconnect.exit_crit_edge, label %do.end33.i

do.body27.i.cifs_swn_reconnect.exit_crit_edge:    ; preds = %do.body27.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cifs_swn_reconnect.exit

do.end33.i:                                       ; preds = %do.body27.i
  call void @__sanitizer_cov_trace_pc() #13
  %call35.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.55, ptr noundef nonnull @__func__.cifs_swn_reconnect, i32 noundef %call23.i) #15
  br label %cifs_swn_reconnect.exit

if.end41.i:                                       ; preds = %cifs_swn_store_swn_addr.exit.i
  %call.i.i = tail call fastcc ptr @cifs_get_swn_reg(ptr noundef %6) #11
  %cmp.i.i.i = icmp ugt ptr %call.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i.i, label %cifs_swn_register.exit.i, label %if.end.i82.i

if.end.i82.i:                                     ; preds = %if.end41.i
  %call3.i.i = tail call fastcc i32 @cifs_swn_send_register_message(ptr noundef %call.i.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i.i)
  %cmp.i.i = icmp slt i32 %call3.i.i, 0
  br i1 %cmp.i.i, label %do.body5.i.i, label %if.end.i82.i.if.end60.i_crit_edge

if.end.i82.i.if.end60.i_crit_edge:                ; preds = %if.end.i82.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end60.i

do.body5.i.i:                                     ; preds = %if.end.i82.i
  %call6.i.i = tail call i32 @___ratelimit(ptr noundef nonnull @cifs_swn_register._rs, ptr noundef nonnull @__func__.cifs_swn_register) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i.i)
  %tobool.not.i.i = icmp eq i32 %call6.i.i, 0
  br i1 %tobool.not.i.i, label %do.body5.i.i.if.end60.i_crit_edge, label %do.end.i.i

do.body5.i.i.if.end60.i_crit_edge:                ; preds = %do.body5.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end60.i

do.end.i.i:                                       ; preds = %do.body5.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %call9.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, ptr noundef nonnull @__func__.cifs_swn_register, i32 noundef %call3.i.i) #15
  br label %if.end60.i

cifs_swn_register.exit.i:                         ; preds = %if.end41.i
  %31 = ptrtoint ptr %call.i.i to i32
  %cmp43.i = icmp slt ptr %call.i.i, null
  br i1 %cmp43.i, label %do.body46.i, label %cifs_swn_register.exit.i.if.end60.i_crit_edge

cifs_swn_register.exit.i.if.end60.i_crit_edge:    ; preds = %cifs_swn_register.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end60.i

do.body46.i:                                      ; preds = %cifs_swn_register.exit.i
  %call47.i = tail call i32 @___ratelimit(ptr noundef nonnull @cifs_swn_reconnect._rs.57, ptr noundef nonnull @__func__.cifs_swn_reconnect) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call47.i)
  %tobool48.not.i = icmp eq i32 %call47.i, 0
  br i1 %tobool48.not.i, label %do.body46.i.cifs_swn_reconnect.exit_crit_edge, label %do.end52.i

do.body46.i.cifs_swn_reconnect.exit_crit_edge:    ; preds = %do.body46.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cifs_swn_reconnect.exit

do.end52.i:                                       ; preds = %do.body46.i
  call void @__sanitizer_cov_trace_pc() #13
  %call54.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.59, ptr noundef nonnull @__func__.cifs_swn_reconnect, i32 noundef %31) #15
  br label %cifs_swn_reconnect.exit

if.end60.i:                                       ; preds = %cifs_swn_register.exit.i.if.end60.i_crit_edge, %do.end.i.i, %do.body5.i.i.if.end60.i_crit_edge, %if.end.i82.i.if.end60.i_crit_edge
  %retval.0.i8394.i = phi i32 [ %31, %cifs_swn_register.exit.i.if.end60.i_crit_edge ], [ 0, %do.body5.i.i.if.end60.i_crit_edge ], [ 0, %do.end.i.i ], [ 0, %if.end.i82.i.if.end60.i_crit_edge ]
  %32 = ptrtoint ptr %ses.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %ses.i, align 8
  %server62.i = getelementptr inbounds %struct.cifs_ses, ptr %33, i32 0, i32 5
  %34 = ptrtoint ptr %server62.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %server62.i, align 8
  tail call void @cifs_mark_tcp_ses_conns_for_reconnect(ptr noundef %35, i1 noundef zeroext false) #11
  br label %cifs_swn_reconnect.exit

cifs_swn_reconnect.exit:                          ; preds = %if.end60.i, %do.end52.i, %do.body46.i.cifs_swn_reconnect.exit_crit_edge, %do.end33.i, %do.body27.i.cifs_swn_reconnect.exit_crit_edge, %cifs_sockaddr_equal.exit.i.cifs_swn_reconnect.exit_crit_edge, %if.then8.i.i.cifs_swn_reconnect.exit_crit_edge
  %ret.0.i = phi i32 [ 0, %cifs_sockaddr_equal.exit.i.cifs_swn_reconnect.exit_crit_edge ], [ %call23.i, %do.end33.i ], [ %call23.i, %do.body27.i.cifs_swn_reconnect.exit_crit_edge ], [ %31, %do.end52.i ], [ %31, %do.body46.i.cifs_swn_reconnect.exit_crit_edge ], [ %retval.0.i8394.i, %if.end60.i ], [ 0, %if.then8.i.i.cifs_swn_reconnect.exit_crit_edge ]
  %36 = ptrtoint ptr %ses.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %ses.i, align 8
  %server64.i = getelementptr inbounds %struct.cifs_ses, ptr %37, i32 0, i32 5
  %38 = ptrtoint ptr %server64.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %server64.i, align 8
  %srv_mutex65.i = getelementptr inbounds %struct.TCP_Server_Info, ptr %39, i32 0, i32 25
  tail call void @mutex_unlock(ptr noundef %srv_mutex65.i) #11
  ret i32 %ret.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cifs_swn_register(ptr noundef %tcon) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc ptr @cifs_get_swn_reg(ptr noundef %tcon)
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %0 = ptrtoint ptr %call to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  %call3 = tail call fastcc i32 @cifs_swn_send_register_message(ptr noundef %call)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %cmp = icmp slt i32 %call3, 0
  br i1 %cmp, label %do.body5, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.body5:                                         ; preds = %if.end
  %call6 = tail call i32 @___ratelimit(ptr noundef nonnull @cifs_swn_register._rs, ptr noundef nonnull @__func__.cifs_swn_register) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool.not = icmp eq i32 %call6, 0
  br i1 %tobool.not, label %do.body5.cleanup_crit_edge, label %do.end

do.body5.cleanup_crit_edge:                       ; preds = %do.body5
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.end:                                           ; preds = %do.body5
  call void @__sanitizer_cov_trace_pc() #13
  %call9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, ptr noundef nonnull @__func__.cifs_swn_register, i32 noundef %call3) #15
  br label %cleanup

cleanup:                                          ; preds = %do.end, %do.body5.cleanup_crit_edge, %if.end.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ %0, %if.then ], [ 0, %do.body5.cleanup_crit_edge ], [ 0, %do.end ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @cifs_get_swn_reg(ptr noundef %tcon) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @mutex_lock_nested(ptr noundef nonnull @cifs_swnreg_idr_mutex, i32 noundef 0) #11
  %call = tail call fastcc ptr @cifs_find_swn_reg(ptr noundef %tcon)
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %ref_count = getelementptr inbounds %struct.cifs_swn_reg, ptr %call, i32 0, i32 1
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %ref_count, i32 noundef 4) #11
  tail call void @llvm.prefetch.p0(ptr %ref_count, i32 1, i32 3, i32 1) #11
  %0 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %ref_count, ptr %ref_count, i32 1, ptr elementtype(i32) %ref_count) #11, !srcloc !184
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i, label %if.then.if.end15.sink.split.i.i.i.i_crit_edge, label %if.else.i.i.i.i, !prof !185

if.then.if.end15.sink.split.i.i.i.i_crit_edge:    ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i:                                  ; preds = %if.then
  %add.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i, 1
  %1 = or i32 %add.i.i.i.i, %asmresult.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %1)
  %.not.i.i.i.i = icmp sgt i32 %1, -1
  br i1 %.not.i.i.i.i, label %if.else.i.i.i.i.kref_get.exit_crit_edge, label %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, !prof !186

if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i.kref_get.exit_crit_edge:          ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %kref_get.exit

if.end15.sink.split.i.i.i.i:                      ; preds = %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, %if.then.if.end15.sink.split.i.i.i.i_crit_edge
  %.sink.i.i.i.i = phi i32 [ 2, %if.then.if.end15.sink.split.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %ref_count, i32 noundef %.sink.i.i.i.i) #11
  br label %kref_get.exit

kref_get.exit:                                    ; preds = %if.end15.sink.split.i.i.i.i, %if.else.i.i.i.i.kref_get.exit_crit_edge
  tail call void @mutex_unlock(ptr noundef nonnull @cifs_swnreg_idr_mutex) #11
  br label %cleanup

if.else:                                          ; preds = %entry
  %cmp.not = icmp eq ptr %call, inttoptr (i32 -17 to ptr)
  br i1 %cmp.not, label %if.end4, label %if.then3

if.then3:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @mutex_unlock(ptr noundef nonnull @cifs_swnreg_idr_mutex) #11
  br label %cleanup

if.end4:                                          ; preds = %if.else
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 2592, i32 noundef 24) #16
  %cmp6 = icmp eq ptr %call7.i, null
  br i1 %cmp6, label %if.then7, label %if.end9

if.then7:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @mutex_unlock(ptr noundef nonnull @cifs_swnreg_idr_mutex) #11
  br label %cleanup

if.end9:                                          ; preds = %if.end4
  %ref_count10 = getelementptr inbounds %struct.cifs_swn_reg, ptr %call7.i, i32 0, i32 1
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %ref_count10, i32 noundef 4) #11
  %3 = ptrtoint ptr %ref_count10 to i32
  call void @__asan_store4_noabort(i32 %3)
  store volatile i32 1, ptr %ref_count10, align 4
  %call11 = tail call i32 @idr_alloc(ptr noundef nonnull @cifs_swnreg_idr, ptr noundef nonnull %call7.i, i32 noundef 1, i32 noundef 0, i32 noundef 2592) #11
  %4 = ptrtoint ptr %call7.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %call11, ptr %call7.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %cmp13 = icmp slt i32 %call11, 0
  br i1 %cmp13, label %do.body15, label %if.end33

do.body15:                                        ; preds = %if.end9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cifsFYI to i32))
  %5 = load i32, ptr @cifsFYI, align 4
  %and = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %do.body15.do.end31_crit_edge, label %do.body17

do.body15.do.end31_crit_edge:                     ; preds = %do.body15
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end31

do.body17:                                        ; preds = %do.body15
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cifs_get_swn_reg.descriptor, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cifs_get_swn_reg, %land.lhs.true)) #11
          to label %do.end31 [label %land.lhs.true], !srcloc !183

land.lhs.true:                                    ; preds = %do.body17
  %call22 = tail call i32 @___ratelimit(ptr noundef nonnull @cifs_get_swn_reg._rs, ptr noundef nonnull @.str.61) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %tobool23.not = icmp eq i32 %call22, 0
  br i1 %tobool23.not, label %land.lhs.true.do.end31_crit_edge, label %if.then24

land.lhs.true.do.end31_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end31

if.then24:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @cifs_get_swn_reg.descriptor, ptr noundef nonnull @.str.62, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.61) #11
  br label %do.end31

do.end31:                                         ; preds = %if.then24, %land.lhs.true.do.end31_crit_edge, %do.body17, %do.body15.do.end31_crit_edge
  %6 = ptrtoint ptr %call7.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %call7.i, align 8
  br label %fail

if.end33:                                         ; preds = %if.end9
  %treeName = getelementptr inbounds %struct.cifs_tcon, ptr %tcon, i32 0, i32 8
  %call34 = tail call ptr @extract_hostname(ptr noundef %treeName) #11
  %net_name = getelementptr inbounds %struct.cifs_swn_reg, ptr %call7.i, i32 0, i32 2
  %8 = ptrtoint ptr %net_name to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call34, ptr %net_name, align 8
  %cmp.i119 = icmp ugt ptr %call34, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i119, label %if.then37, label %if.end55

if.then37:                                        ; preds = %if.end33
  %9 = ptrtoint ptr %call34 to i32
  %call42 = tail call i32 @___ratelimit(ptr noundef nonnull @cifs_get_swn_reg._rs.63, ptr noundef nonnull @.str.61) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call42)
  %tobool43.not = icmp eq i32 %call42, 0
  br i1 %tobool43.not, label %if.then37.fail_idr_crit_edge, label %do.end47

if.then37.fail_idr_crit_edge:                     ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #13
  br label %fail_idr

do.end47:                                         ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #13
  %call49 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.64, ptr noundef nonnull @.str.61, i32 noundef %9) #15
  br label %fail_idr

if.end55:                                         ; preds = %if.end33
  %call58 = tail call ptr @extract_sharename(ptr noundef %treeName) #11
  %share_name = getelementptr inbounds %struct.cifs_swn_reg, ptr %call7.i, i32 0, i32 3
  %10 = ptrtoint ptr %share_name to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call58, ptr %share_name, align 4
  %cmp.i120 = icmp ugt ptr %call58, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i120, label %if.then61, label %if.end79

if.then61:                                        ; preds = %if.end55
  %11 = ptrtoint ptr %call58 to i32
  %call66 = tail call i32 @___ratelimit(ptr noundef nonnull @cifs_get_swn_reg._rs.65, ptr noundef nonnull @.str.61) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call66)
  %tobool67.not = icmp eq i32 %call66, 0
  br i1 %tobool67.not, label %if.then61.fail_net_name_crit_edge, label %do.end71

if.then61.fail_net_name_crit_edge:                ; preds = %if.then61
  call void @__sanitizer_cov_trace_pc() #13
  br label %fail_net_name

do.end71:                                         ; preds = %if.then61
  call void @__sanitizer_cov_trace_pc() #13
  %call73 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.67, ptr noundef nonnull @.str.61, i32 noundef %11) #15
  br label %fail_net_name

if.end79:                                         ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #13
  %net_name_notify = getelementptr inbounds %struct.cifs_swn_reg, ptr %call7.i, i32 0, i32 4
  %12 = ptrtoint ptr %net_name_notify to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 1, ptr %net_name_notify, align 8
  %share_name_notify = getelementptr inbounds %struct.cifs_swn_reg, ptr %call7.i, i32 0, i32 5
  %13 = ptrtoint ptr %share_name_notify to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 1, ptr %share_name_notify, align 1
  %capabilities = getelementptr inbounds %struct.cifs_tcon, ptr %tcon, i32 0, i32 28
  %14 = ptrtoint ptr %capabilities to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %capabilities, align 8
  %ip_notify = getelementptr inbounds %struct.cifs_swn_reg, ptr %call7.i, i32 0, i32 6
  %and80 = lshr i32 %15, 29
  %16 = trunc i32 %and80 to i8
  %17 = and i8 %16, 1
  %18 = ptrtoint ptr %ip_notify to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %17, ptr %ip_notify, align 2
  %tcon83 = getelementptr inbounds %struct.cifs_swn_reg, ptr %call7.i, i32 0, i32 7
  %19 = ptrtoint ptr %tcon83 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %tcon, ptr %tcon83, align 4
  tail call void @mutex_unlock(ptr noundef nonnull @cifs_swnreg_idr_mutex) #11
  br label %cleanup

fail_net_name:                                    ; preds = %do.end71, %if.then61.fail_net_name_crit_edge
  %20 = ptrtoint ptr %net_name to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %net_name, align 8
  tail call void @kfree(ptr noundef %21) #11
  br label %fail_idr

fail_idr:                                         ; preds = %fail_net_name, %do.end47, %if.then37.fail_idr_crit_edge
  %ret.0 = phi i32 [ %9, %do.end47 ], [ %9, %if.then37.fail_idr_crit_edge ], [ %11, %fail_net_name ]
  %22 = ptrtoint ptr %call7.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %call7.i, align 8
  %call86 = tail call ptr @idr_remove(ptr noundef nonnull @cifs_swnreg_idr, i32 noundef %23) #11
  br label %fail

fail:                                             ; preds = %fail_idr, %do.end31
  %ret.1 = phi i32 [ %7, %do.end31 ], [ %ret.0, %fail_idr ]
  tail call void @kfree(ptr noundef nonnull %call7.i) #11
  tail call void @mutex_unlock(ptr noundef nonnull @cifs_swnreg_idr_mutex) #11
  %24 = inttoptr i32 %ret.1 to ptr
  br label %cleanup

cleanup:                                          ; preds = %fail, %if.end79, %if.then7, %if.then3, %kref_get.exit
  %retval.0 = phi ptr [ %call, %if.then3 ], [ inttoptr (i32 -12 to ptr), %if.then7 ], [ %24, %fail ], [ %call7.i, %if.end79 ], [ %call, %kref_get.exit ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @cifs_swn_send_register_message(ptr nocapture noundef readonly %swnreg) unnamed_addr #0 align 64 {
entry:
  %tmp.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i.i.i = tail call ptr @__alloc_skb(i32 noundef 3844, i32 noundef 3264, i32 noundef 0, i32 noundef -1) #11
  %cmp = icmp eq ptr %call.i.i.i, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call ptr @genlmsg_put(ptr noundef nonnull %call.i.i.i, i32 noundef 0, i32 noundef 0, ptr noundef nonnull @cifs_genl_family, i32 noundef 0, i8 noundef zeroext 1) #11
  %cmp2 = icmp eq ptr %call1, null
  br i1 %cmp2, label %if.end.genlmsg_cancel.exit_crit_edge, label %if.end4

if.end.genlmsg_cancel.exit_crit_edge:             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %genlmsg_cancel.exit

if.end4:                                          ; preds = %if.end
  %0 = ptrtoint ptr %swnreg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %swnreg, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i) #11
  %2 = ptrtoint ptr %tmp.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %1, ptr %tmp.i, align 4
  %call.i = call i32 @nla_put(ptr noundef nonnull %call.i.i.i, i32 noundef 1, i32 noundef 4, ptr noundef nonnull %tmp.i) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp6 = icmp slt i32 %call.i, 0
  br i1 %cmp6, label %if.end4.if.then.i_crit_edge, label %if.end8

if.end4.if.then.i_crit_edge:                      ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i

if.end8:                                          ; preds = %if.end4
  %net_name = getelementptr inbounds %struct.cifs_swn_reg, ptr %swnreg, i32 0, i32 2
  %3 = ptrtoint ptr %net_name to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %net_name, align 4
  %call.i179 = call i32 @strlen(ptr noundef %4) #14
  %add.i = add i32 %call.i179, 1
  %call1.i = call i32 @nla_put(ptr noundef nonnull %call.i.i.i, i32 noundef 2, i32 noundef %add.i, ptr noundef %4) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %cmp10 = icmp slt i32 %call1.i, 0
  br i1 %cmp10, label %if.end8.if.then.i_crit_edge, label %if.end12

if.end8.if.then.i_crit_edge:                      ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i

if.end12:                                         ; preds = %if.end8
  %share_name = getelementptr inbounds %struct.cifs_swn_reg, ptr %swnreg, i32 0, i32 3
  %5 = ptrtoint ptr %share_name to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %share_name, align 4
  %call.i180 = call i32 @strlen(ptr noundef %6) #14
  %add.i181 = add i32 %call.i180, 1
  %call1.i182 = call i32 @nla_put(ptr noundef nonnull %call.i.i.i, i32 noundef 3, i32 noundef %add.i181, ptr noundef %6) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i182)
  %cmp14 = icmp slt i32 %call1.i182, 0
  br i1 %cmp14, label %if.end12.if.then.i_crit_edge, label %if.end16

if.end12.if.then.i_crit_edge:                     ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i

if.end16:                                         ; preds = %if.end12
  %tcon = getelementptr inbounds %struct.cifs_swn_reg, ptr %swnreg, i32 0, i32 7
  %7 = ptrtoint ptr %tcon to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %tcon, align 4
  %ses = getelementptr inbounds %struct.cifs_tcon, ptr %8, i32 0, i32 7
  %9 = ptrtoint ptr %ses to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ses, align 8
  %server = getelementptr inbounds %struct.cifs_ses, ptr %10, i32 0, i32 5
  %11 = ptrtoint ptr %server to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %server, align 8
  %use_swn_dstaddr = getelementptr inbounds %struct.TCP_Server_Info, ptr %12, i32 0, i32 87
  %13 = ptrtoint ptr %use_swn_dstaddr to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %use_swn_dstaddr, align 4, !range !187
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool.not = icmp eq i8 %14, 0
  %swn_dstaddr = getelementptr inbounds %struct.TCP_Server_Info, ptr %12, i32 0, i32 88
  %dstaddr = getelementptr inbounds %struct.TCP_Server_Info, ptr %12, i32 0, i32 10
  %addr.0 = select i1 %tobool.not, ptr %dstaddr, ptr %swn_dstaddr
  %call25 = call i32 @nla_put(ptr noundef nonnull %call.i.i.i, i32 noundef 4, i32 noundef 128, ptr noundef %addr.0) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25)
  %cmp26 = icmp slt i32 %call25, 0
  br i1 %cmp26, label %if.end16.if.then.i_crit_edge, label %if.end28

if.end16.if.then.i_crit_edge:                     ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i

if.end28:                                         ; preds = %if.end16
  %net_name_notify = getelementptr inbounds %struct.cifs_swn_reg, ptr %swnreg, i32 0, i32 4
  %15 = ptrtoint ptr %net_name_notify to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %net_name_notify, align 4, !range !187
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %tobool29.not = icmp eq i8 %16, 0
  br i1 %tobool29.not, label %if.end28.if.end35_crit_edge, label %if.then30

if.end28.if.end35_crit_edge:                      ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end35

if.then30:                                        ; preds = %if.end28
  %call.i183 = call i32 @nla_put(ptr noundef nonnull %call.i.i.i, i32 noundef 5, i32 noundef 0, ptr noundef null) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i183)
  %cmp32 = icmp slt i32 %call.i183, 0
  br i1 %cmp32, label %if.then30.if.then.i_crit_edge, label %if.then30.if.end35_crit_edge

if.then30.if.end35_crit_edge:                     ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end35

if.then30.if.then.i_crit_edge:                    ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i

if.end35:                                         ; preds = %if.then30.if.end35_crit_edge, %if.end28.if.end35_crit_edge
  %share_name_notify = getelementptr inbounds %struct.cifs_swn_reg, ptr %swnreg, i32 0, i32 5
  %17 = ptrtoint ptr %share_name_notify to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %share_name_notify, align 1, !range !187
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %tobool36.not = icmp eq i8 %18, 0
  br i1 %tobool36.not, label %if.end35.if.end42_crit_edge, label %if.then37

if.end35.if.end42_crit_edge:                      ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end42

if.then37:                                        ; preds = %if.end35
  %call.i184 = call i32 @nla_put(ptr noundef nonnull %call.i.i.i, i32 noundef 6, i32 noundef 0, ptr noundef null) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i184)
  %cmp39 = icmp slt i32 %call.i184, 0
  br i1 %cmp39, label %if.then37.if.then.i_crit_edge, label %if.then37.if.end42_crit_edge

if.then37.if.end42_crit_edge:                     ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end42

if.then37.if.then.i_crit_edge:                    ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i

if.end42:                                         ; preds = %if.then37.if.end42_crit_edge, %if.end35.if.end42_crit_edge
  %ip_notify = getelementptr inbounds %struct.cifs_swn_reg, ptr %swnreg, i32 0, i32 6
  %19 = ptrtoint ptr %ip_notify to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %ip_notify, align 2, !range !187
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %tobool43.not = icmp eq i8 %20, 0
  br i1 %tobool43.not, label %if.end42.if.end49_crit_edge, label %if.then44

if.end42.if.end49_crit_edge:                      ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end49

if.then44:                                        ; preds = %if.end42
  %call.i185 = call i32 @nla_put(ptr noundef nonnull %call.i.i.i, i32 noundef 7, i32 noundef 0, ptr noundef null) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i185)
  %cmp46 = icmp slt i32 %call.i185, 0
  br i1 %cmp46, label %if.then44.if.then.i_crit_edge, label %if.then44.if.end49_crit_edge

if.then44.if.end49_crit_edge:                     ; preds = %if.then44
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end49

if.then44.if.then.i_crit_edge:                    ; preds = %if.then44
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i

if.end49:                                         ; preds = %if.then44.if.end49_crit_edge, %if.end42.if.end49_crit_edge
  %21 = ptrtoint ptr %tcon to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %tcon, align 4
  %ses51 = getelementptr inbounds %struct.cifs_tcon, ptr %22, i32 0, i32 7
  %23 = ptrtoint ptr %ses51 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %ses51, align 8
  %server52 = getelementptr inbounds %struct.cifs_ses, ptr %24, i32 0, i32 5
  %25 = ptrtoint ptr %server52 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %server52, align 8
  %sectype = getelementptr inbounds %struct.cifs_ses, ptr %24, i32 0, i32 23
  %27 = ptrtoint ptr %sectype to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %sectype, align 4
  %call55 = call i32 @cifs_select_sectype(ptr noundef %26, i32 noundef %28) #11
  %29 = zext i32 %call55 to i64
  call void @__sanitizer_cov_trace_switch(i64 %29, ptr @__sancov_gen_cov_switch_values.97)
  switch i32 %call55, label %do.body94 [
    i32 3, label %sw.bb
    i32 1, label %if.end49.sw.bb72_crit_edge
    i32 2, label %if.end49.sw.bb72_crit_edge191
  ]

if.end49.sw.bb72_crit_edge191:                    ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb72

if.end49.sw.bb72_crit_edge:                       ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb72

sw.bb:                                            ; preds = %if.end49
  %call.i.i = call i32 @nla_put(ptr noundef nonnull %call.i.i.i, i32 noundef 8, i32 noundef 0, ptr noundef null) #11
  %30 = call i32 @llvm.smin.i32(i32 %call.i.i, i32 0) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp58 = icmp slt i32 %call.i.i, 0
  br i1 %cmp58, label %do.body60, label %sw.bb.sw.epilog_crit_edge

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

do.body60:                                        ; preds = %sw.bb
  %call61 = call i32 @___ratelimit(ptr noundef nonnull @cifs_swn_send_register_message._rs, ptr noundef nonnull @__func__.cifs_swn_send_register_message) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call61)
  %tobool62.not = icmp eq i32 %call61, 0
  br i1 %tobool62.not, label %do.body60.if.then.i_crit_edge, label %do.end

do.body60.if.then.i_crit_edge:                    ; preds = %do.body60
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i

do.end:                                           ; preds = %do.body60
  call void @__sanitizer_cov_trace_pc() #13
  %call65 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.69, ptr noundef nonnull @__func__.cifs_swn_send_register_message, i32 noundef %30) #15
  br label %if.then.i

sw.bb72:                                          ; preds = %if.end49.sw.bb72_crit_edge, %if.end49.sw.bb72_crit_edge191
  %31 = ptrtoint ptr %tcon to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %tcon, align 4
  %call74 = call fastcc i32 @cifs_swn_auth_info_ntlm(ptr noundef %32, ptr noundef nonnull %call.i.i.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call74)
  %cmp75 = icmp slt i32 %call74, 0
  br i1 %cmp75, label %do.body78, label %sw.bb72.sw.epilog_crit_edge

sw.bb72.sw.epilog_crit_edge:                      ; preds = %sw.bb72
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

do.body78:                                        ; preds = %sw.bb72
  %call79 = call i32 @___ratelimit(ptr noundef nonnull @cifs_swn_send_register_message._rs.70, ptr noundef nonnull @__func__.cifs_swn_send_register_message) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call79)
  %tobool80.not = icmp eq i32 %call79, 0
  br i1 %tobool80.not, label %do.body78.if.then.i_crit_edge, label %do.end84

do.body78.if.then.i_crit_edge:                    ; preds = %do.body78
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i

do.end84:                                         ; preds = %do.body78
  call void @__sanitizer_cov_trace_pc() #13
  %call86 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.72, ptr noundef nonnull @__func__.cifs_swn_send_register_message, i32 noundef %call74) #15
  br label %if.then.i

do.body94:                                        ; preds = %if.end49
  %call95 = call i32 @___ratelimit(ptr noundef nonnull @cifs_swn_send_register_message._rs.74, ptr noundef nonnull @__func__.cifs_swn_send_register_message) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call95)
  %tobool96.not = icmp eq i32 %call95, 0
  br i1 %tobool96.not, label %do.body94.if.then.i_crit_edge, label %do.end100

do.body94.if.then.i_crit_edge:                    ; preds = %do.body94
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i

do.end100:                                        ; preds = %do.body94
  call void @__sanitizer_cov_trace_pc() #13
  %call102 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.76, ptr noundef nonnull @__func__.cifs_swn_send_register_message, i32 noundef %call55) #15
  br label %if.then.i

sw.epilog:                                        ; preds = %sw.bb72.sw.epilog_crit_edge, %sw.bb.sw.epilog_crit_edge
  %add.ptr1.i = getelementptr i8, ptr %call1, i32 -20
  %tail.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i, i32 0, i32 16
  %33 = ptrtoint ptr %tail.i.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %tail.i.i.i, align 8
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %34 to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %add.ptr1.i to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  %35 = ptrtoint ptr %add.ptr1.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %sub.ptr.sub.i.i, ptr %add.ptr1.i, align 4
  call fastcc void @genlmsg_multicast(ptr noundef nonnull %call.i.i.i)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cifsFYI to i32))
  %36 = load i32, ptr @cifsFYI, align 4
  %and = and i32 %36, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool111.not = icmp eq i32 %and, 0
  br i1 %tobool111.not, label %sw.epilog.cleanup_crit_edge, label %do.body113

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.body113:                                       ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cifs_swn_send_register_message.descriptor, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cifs_swn_send_register_message, %land.lhs.true)) #11
          to label %cleanup [label %land.lhs.true], !srcloc !183

land.lhs.true:                                    ; preds = %do.body113
  %call119 = call i32 @___ratelimit(ptr noundef nonnull @cifs_swn_send_register_message._rs.78, ptr noundef nonnull @__func__.cifs_swn_send_register_message) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call119)
  %tobool120.not = icmp eq i32 %call119, 0
  br i1 %tobool120.not, label %land.lhs.true.cleanup_crit_edge, label %if.then121

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then121:                                       ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  %37 = ptrtoint ptr %net_name to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %net_name, align 4
  %39 = ptrtoint ptr %swnreg to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %swnreg, align 4
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @cifs_swn_send_register_message.descriptor, ptr noundef nonnull @.str.79, ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.cifs_swn_send_register_message, ptr noundef %38, i32 noundef %40) #11
  br label %cleanup

if.then.i:                                        ; preds = %do.end100, %do.body94.if.then.i_crit_edge, %do.end84, %do.body78.if.then.i_crit_edge, %do.end, %do.body60.if.then.i_crit_edge, %if.then44.if.then.i_crit_edge, %if.then37.if.then.i_crit_edge, %if.then30.if.then.i_crit_edge, %if.end16.if.then.i_crit_edge, %if.end12.if.then.i_crit_edge, %if.end8.if.then.i_crit_edge, %if.end4.if.then.i_crit_edge
  %ret.0.ph = phi i32 [ -22, %do.body94.if.then.i_crit_edge ], [ -22, %do.end100 ], [ %30, %do.body60.if.then.i_crit_edge ], [ %30, %do.end ], [ %call74, %do.body78.if.then.i_crit_edge ], [ %call74, %do.end84 ], [ %call.i185, %if.then44.if.then.i_crit_edge ], [ %call.i184, %if.then37.if.then.i_crit_edge ], [ %call.i183, %if.then30.if.then.i_crit_edge ], [ %call25, %if.end16.if.then.i_crit_edge ], [ %call1.i182, %if.end12.if.then.i_crit_edge ], [ %call1.i, %if.end8.if.then.i_crit_edge ], [ %call.i, %if.end4.if.then.i_crit_edge ]
  %add.ptr1.i186 = getelementptr i8, ptr %call1, i32 -20
  %tobool.not.i.i.i = icmp eq ptr %add.ptr1.i186, null
  br i1 %tobool.not.i.i.i, label %if.then.i.genlmsg_cancel.exit_crit_edge, label %if.then.i.i.i

if.then.i.genlmsg_cancel.exit_crit_edge:          ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %genlmsg_cancel.exit

if.then.i.i.i:                                    ; preds = %if.then.i
  %data.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i, i32 0, i32 19
  %41 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %data.i.i.i, align 4
  %cmp.i.i.i = icmp ugt ptr %42, %add.ptr1.i186
  br i1 %cmp.i.i.i, label %do.end.i.i.i, label %if.then.i.i.i.if.end.i.i.i_crit_edge, !prof !185

if.then.i.i.i.if.end.i.i.i_crit_edge:             ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i.i.i

do.end.i.i.i:                                     ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.81, i32 noundef 991, i32 noundef 9, ptr noundef null) #11
  br label %if.end.i.i.i

if.end.i.i.i:                                     ; preds = %do.end.i.i.i, %if.then.i.i.i.if.end.i.i.i_crit_edge
  %43 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %data.i.i.i, align 4
  %sub.ptr.lhs.cast.i.i.i = ptrtoint ptr %add.ptr1.i186 to i32
  %sub.ptr.rhs.cast.i.i.i = ptrtoint ptr %44 to i32
  %sub.ptr.sub.i.i.i = sub i32 %sub.ptr.lhs.cast.i.i.i, %sub.ptr.rhs.cast.i.i.i
  call void @skb_trim(ptr noundef nonnull %call.i.i.i, i32 noundef %sub.ptr.sub.i.i.i) #11
  br label %genlmsg_cancel.exit

genlmsg_cancel.exit:                              ; preds = %if.end.i.i.i, %if.then.i.genlmsg_cancel.exit_crit_edge, %if.end.genlmsg_cancel.exit_crit_edge
  %ret.0190 = phi i32 [ %ret.0.ph, %if.then.i.genlmsg_cancel.exit_crit_edge ], [ %ret.0.ph, %if.end.i.i.i ], [ -12, %if.end.genlmsg_cancel.exit_crit_edge ]
  call void @kfree_skb_reason(ptr noundef nonnull %call.i.i.i, i32 noundef 0) #11
  br label %cleanup

cleanup:                                          ; preds = %genlmsg_cancel.exit, %if.then121, %land.lhs.true.cleanup_crit_edge, %do.body113, %sw.epilog.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %sw.epilog.cleanup_crit_edge ], [ 0, %land.lhs.true.cleanup_crit_edge ], [ 0, %if.then121 ], [ %ret.0190, %genlmsg_cancel.exit ], [ -12, %entry.cleanup_crit_edge ], [ 0, %do.body113 ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cifs_swn_unregister(ptr noundef %tcon) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @mutex_lock_nested(ptr noundef nonnull @cifs_swnreg_idr_mutex, i32 noundef 0) #11
  %call = tail call fastcc ptr @cifs_find_swn_reg(ptr noundef %tcon)
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  tail call void @mutex_unlock(ptr noundef nonnull @cifs_swnreg_idr_mutex) #11
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %0 = ptrtoint ptr %call to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call void @mutex_lock_nested(ptr noundef nonnull @cifs_swnreg_idr_mutex, i32 noundef 0) #11
  %ref_count.i = getelementptr inbounds %struct.cifs_swn_reg, ptr %call, i32 0, i32 1
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %ref_count.i, i32 noundef 4) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !188
  tail call void @llvm.prefetch.p0(ptr %ref_count.i, i32 1, i32 3, i32 1) #11
  %1 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %ref_count.i, ptr %ref_count.i, i32 1, ptr elementtype(i32) %ref_count.i) #11, !srcloc !189
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %1, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %if.end5.i.i.i.i.i.cifs_put_swn_reg.exit_crit_edge, label %if.then10.i.i.i.i.i, !prof !186

if.end5.i.i.i.i.i.cifs_put_swn_reg.exit_crit_edge: ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cifs_put_swn_reg.exit

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @refcount_warn_saturate(ptr noundef %ref_count.i, i32 noundef 3) #11
  br label %cifs_put_swn_reg.exit

if.then.i.i:                                      ; preds = %if.end
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !190
  %call.i.i.i = tail call fastcc i32 @cifs_swn_send_unregister_message(ptr noundef %call) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %cmp.i.i.i = icmp slt i32 %call.i.i.i, 0
  br i1 %cmp.i.i.i, label %do.body1.i.i.i, label %if.then.i.i.cifs_swn_reg_release.exit.i.i_crit_edge

if.then.i.i.cifs_swn_reg_release.exit.i.i_crit_edge: ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cifs_swn_reg_release.exit.i.i

do.body1.i.i.i:                                   ; preds = %if.then.i.i
  %call2.i.i.i = tail call i32 @___ratelimit(ptr noundef nonnull @cifs_swn_reg_release._rs, ptr noundef nonnull @__func__.cifs_swn_reg_release) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %call2.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %do.body1.i.i.i.cifs_swn_reg_release.exit.i.i_crit_edge, label %do.end.i.i.i

do.body1.i.i.i.cifs_swn_reg_release.exit.i.i_crit_edge: ; preds = %do.body1.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cifs_swn_reg_release.exit.i.i

do.end.i.i.i:                                     ; preds = %do.body1.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %call6.i.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.89, ptr noundef nonnull @__func__.cifs_swn_reg_release, i32 noundef %call.i.i.i) #15
  br label %cifs_swn_reg_release.exit.i.i

cifs_swn_reg_release.exit.i.i:                    ; preds = %do.end.i.i.i, %do.body1.i.i.i.cifs_swn_reg_release.exit.i.i_crit_edge, %if.then.i.i.cifs_swn_reg_release.exit.i.i_crit_edge
  %2 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %call, align 4
  %call12.i.i.i = tail call ptr @idr_remove(ptr noundef nonnull @cifs_swnreg_idr, i32 noundef %3) #11
  %net_name.i.i.i = getelementptr %struct.cifs_swn_reg, ptr %call, i32 0, i32 2
  %4 = ptrtoint ptr %net_name.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %net_name.i.i.i, align 4
  tail call void @kfree(ptr noundef %5) #11
  %share_name.i.i.i = getelementptr %struct.cifs_swn_reg, ptr %call, i32 0, i32 3
  %6 = ptrtoint ptr %share_name.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %share_name.i.i.i, align 4
  tail call void @kfree(ptr noundef %7) #11
  tail call void @kfree(ptr noundef %call) #11
  br label %cifs_put_swn_reg.exit

cifs_put_swn_reg.exit:                            ; preds = %cifs_swn_reg_release.exit.i.i, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.cifs_put_swn_reg.exit_crit_edge
  tail call void @mutex_unlock(ptr noundef nonnull @cifs_swnreg_idr_mutex) #11
  br label %cleanup

cleanup:                                          ; preds = %cifs_put_swn_reg.exit, %if.then
  %retval.0 = phi i32 [ %0, %if.then ], [ 0, %cifs_put_swn_reg.exit ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @cifs_find_swn_reg(ptr noundef %tcon) unnamed_addr #0 align 64 {
entry:
  %id = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %id) #11
  %treeName = getelementptr inbounds %struct.cifs_tcon, ptr %tcon, i32 0, i32 8
  %call = tail call ptr @extract_hostname(ptr noundef %treeName) #11
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end15

if.then:                                          ; preds = %entry
  %call4 = tail call i32 @___ratelimit(ptr noundef nonnull @cifs_find_swn_reg._rs, ptr noundef nonnull @__func__.cifs_find_swn_reg) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool.not = icmp eq i32 %call4, 0
  br i1 %tobool.not, label %if.then.cleanup_crit_edge, label %do.end

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  %0 = ptrtoint ptr %call to i32
  %call9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.82, ptr noundef nonnull @__func__.cifs_find_swn_reg, ptr noundef %treeName, i32 noundef %0) #15
  br label %cleanup

if.end15:                                         ; preds = %entry
  %call18 = tail call ptr @extract_sharename(ptr noundef %treeName) #11
  %cmp.i94 = icmp ugt ptr %call18, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i94, label %if.then20, label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.end15
  %1 = ptrtoint ptr %id to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %id, align 4
  %call4298 = call ptr @idr_get_next(ptr noundef nonnull @cifs_swnreg_idr, ptr noundef nonnull %id) #11
  %cmp.not99 = icmp eq ptr %call4298, null
  br i1 %cmp.not99, label %for.cond.preheader.for.end_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

if.then20:                                        ; preds = %if.end15
  %call25 = tail call i32 @___ratelimit(ptr noundef nonnull @cifs_find_swn_reg._rs.83, ptr noundef nonnull @__func__.cifs_find_swn_reg) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25)
  %tobool26.not = icmp eq i32 %call25, 0
  br i1 %tobool26.not, label %if.then20.do.end39_crit_edge, label %do.end30

if.then20.do.end39_crit_edge:                     ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end39

do.end30:                                         ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #13
  %2 = ptrtoint ptr %call18 to i32
  %call34 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.85, ptr noundef nonnull @__func__.cifs_find_swn_reg, ptr noundef %treeName, i32 noundef %2) #15
  br label %do.end39

do.end39:                                         ; preds = %do.end30, %if.then20.do.end39_crit_edge
  tail call void @kfree(ptr noundef %call) #11
  br label %cleanup

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %call42100 = phi ptr [ %call42, %for.inc.for.body_crit_edge ], [ %call4298, %for.cond.preheader.for.body_crit_edge ]
  %net_name43 = getelementptr inbounds %struct.cifs_swn_reg, ptr %call42100, i32 0, i32 2
  %3 = ptrtoint ptr %net_name43 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %net_name43, align 4
  %call44 = call i32 @strcasecmp(ptr noundef %4, ptr noundef %call)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call44)
  %cmp45.not = icmp eq i32 %call44, 0
  br i1 %cmp45.not, label %lor.lhs.false, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

lor.lhs.false:                                    ; preds = %for.body
  %share_name46 = getelementptr inbounds %struct.cifs_swn_reg, ptr %call42100, i32 0, i32 3
  %5 = ptrtoint ptr %share_name46 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %share_name46, align 4
  %call47 = call i32 @strcasecmp(ptr noundef %6, ptr noundef %call18)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call47)
  %cmp48.not = icmp eq i32 %call47, 0
  br i1 %cmp48.not, label %do.body52, label %lor.lhs.false.for.inc_crit_edge

lor.lhs.false.for.inc_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

do.body52:                                        ; preds = %lor.lhs.false
  %net_name43.le = getelementptr inbounds %struct.cifs_swn_reg, ptr %call42100, i32 0, i32 2
  %share_name46.le = getelementptr inbounds %struct.cifs_swn_reg, ptr %call42100, i32 0, i32 3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cifsFYI to i32))
  %7 = load i32, ptr @cifsFYI, align 4
  %and = and i32 %7, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool53.not = icmp eq i32 %and, 0
  br i1 %tobool53.not, label %do.body52.do.end73_crit_edge, label %do.body55

do.body52.do.end73_crit_edge:                     ; preds = %do.body52
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end73

do.body55:                                        ; preds = %do.body52
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cifs_find_swn_reg.descriptor, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cifs_find_swn_reg, %land.lhs.true)) #11
          to label %do.end73 [label %land.lhs.true], !srcloc !183

land.lhs.true:                                    ; preds = %do.body55
  %call61 = call i32 @___ratelimit(ptr noundef nonnull @cifs_find_swn_reg._rs.87, ptr noundef nonnull @__func__.cifs_find_swn_reg) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call61)
  %tobool62.not = icmp eq i32 %call61, 0
  br i1 %tobool62.not, label %land.lhs.true.do.end73_crit_edge, label %if.then63

land.lhs.true.do.end73_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end73

if.then63:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  %8 = ptrtoint ptr %net_name43.le to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %net_name43.le, align 4
  %10 = ptrtoint ptr %share_name46.le to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %share_name46.le, align 4
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @cifs_find_swn_reg.descriptor, ptr noundef nonnull @.str.88, ptr noundef nonnull @.str.3, ptr noundef %9, ptr noundef %11) #11
  br label %do.end73

do.end73:                                         ; preds = %if.then63, %land.lhs.true.do.end73_crit_edge, %do.body55, %do.body52.do.end73_crit_edge
  call void @kfree(ptr noundef %call) #11
  call void @kfree(ptr noundef %call18) #11
  br label %cleanup

for.inc:                                          ; preds = %lor.lhs.false.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %12 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %id, align 4
  %add = add i32 %13, 1
  store i32 %add, ptr %id, align 4
  %call42 = call ptr @idr_get_next(ptr noundef nonnull @cifs_swnreg_idr, ptr noundef nonnull %id) #11
  %cmp.not = icmp eq ptr %call42, null
  br i1 %cmp.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  call void @kfree(ptr noundef %call) #11
  call void @kfree(ptr noundef %call18) #11
  br label %cleanup

cleanup:                                          ; preds = %for.end, %do.end73, %do.end39, %do.end, %if.then.cleanup_crit_edge
  %retval.0 = phi ptr [ inttoptr (i32 -22 to ptr), %do.end39 ], [ %call42100, %do.end73 ], [ inttoptr (i32 -17 to ptr), %for.end ], [ inttoptr (i32 -22 to ptr), %do.end ], [ inttoptr (i32 -22 to ptr), %if.then.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %id) #11
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @cifs_swn_dump(ptr noundef %m) local_unnamed_addr #0 align 64 {
entry:
  %id = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %id) #11
  tail call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.24) #11
  tail call void @mutex_lock_nested(ptr noundef nonnull @cifs_swnreg_idr_mutex, i32 noundef 0) #11
  %0 = ptrtoint ptr %id to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %id, align 4
  %call35 = call ptr @idr_get_next(ptr noundef nonnull @cifs_swnreg_idr, ptr noundef nonnull %id) #11
  %cmp.not36 = icmp eq ptr %call35, null
  br i1 %cmp.not36, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body:                                         ; preds = %sw.epilog.for.body_crit_edge, %entry.for.body_crit_edge
  %call37 = phi ptr [ %call, %sw.epilog.for.body_crit_edge ], [ %call35, %entry.for.body_crit_edge ]
  %1 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %id, align 4
  %ref_count = getelementptr inbounds %struct.cifs_swn_reg, ptr %call37, i32 0, i32 1
  %call.i.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %ref_count, i32 noundef 4) #11
  %3 = ptrtoint ptr %ref_count to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %ref_count, align 4
  %net_name = getelementptr inbounds %struct.cifs_swn_reg, ptr %call37, i32 0, i32 2
  %5 = ptrtoint ptr %net_name to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %net_name, align 4
  %net_name_notify = getelementptr inbounds %struct.cifs_swn_reg, ptr %call37, i32 0, i32 4
  %7 = ptrtoint ptr %net_name_notify to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %net_name_notify, align 4, !range !187
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool.not = icmp eq i8 %8, 0
  %cond = select i1 %tobool.not, ptr @.str.27, ptr @.str.26
  %share_name = getelementptr inbounds %struct.cifs_swn_reg, ptr %call37, i32 0, i32 3
  %9 = ptrtoint ptr %share_name to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %share_name, align 4
  %share_name_notify = getelementptr inbounds %struct.cifs_swn_reg, ptr %call37, i32 0, i32 5
  %11 = ptrtoint ptr %share_name_notify to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %share_name_notify, align 1, !range !187
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool2.not = icmp eq i8 %12, 0
  %cond3 = select i1 %tobool2.not, ptr @.str.27, ptr @.str.26
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.25, i32 noundef %2, i32 noundef %4, ptr noundef %6, ptr noundef nonnull %cond, ptr noundef %10, ptr noundef nonnull %cond3) #11
  %tcon = getelementptr inbounds %struct.cifs_swn_reg, ptr %call37, i32 0, i32 7
  %13 = ptrtoint ptr %tcon to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %tcon, align 4
  %ses = getelementptr inbounds %struct.cifs_tcon, ptr %14, i32 0, i32 7
  %15 = ptrtoint ptr %ses to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %ses, align 8
  %server = getelementptr inbounds %struct.cifs_ses, ptr %16, i32 0, i32 5
  %17 = ptrtoint ptr %server to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %server, align 8
  %dstaddr = getelementptr inbounds %struct.TCP_Server_Info, ptr %18, i32 0, i32 10
  %19 = ptrtoint ptr %dstaddr to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %dstaddr, align 8
  %21 = zext i16 %20 to i64
  call void @__sanitizer_cov_trace_switch(i64 %21, ptr @__sancov_gen_cov_switch_values.98)
  switch i16 %20, label %sw.default [
    i16 2, label %sw.bb
    i16 10, label %sw.bb8
  ]

sw.bb:                                            ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  %sin_addr = getelementptr inbounds %struct.TCP_Server_Info, ptr %18, i32 0, i32 10, i32 0, i32 1
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.28, ptr noundef %sin_addr) #11
  br label %sw.epilog

sw.bb8:                                           ; preds = %for.body
  %sin6_addr = getelementptr inbounds %struct.TCP_Server_Info, ptr %18, i32 0, i32 10, i32 0, i32 1, i32 4
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.29, ptr noundef %sin6_addr) #11
  %sin6_scope_id = getelementptr inbounds %struct.TCP_Server_Info, ptr %18, i32 0, i32 10, i32 0, i32 1, i32 20
  %22 = ptrtoint ptr %sin6_scope_id to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %sin6_scope_id, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool13.not = icmp eq i32 %23, 0
  br i1 %tobool13.not, label %sw.bb8.sw.epilog_crit_edge, label %if.then

sw.bb8.sw.epilog_crit_edge:                       ; preds = %sw.bb8
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

if.then:                                          ; preds = %sw.bb8
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.30, i32 noundef %23) #11
  br label %sw.epilog

sw.default:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.31) #11
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %if.then, %sw.bb8.sw.epilog_crit_edge, %sw.bb
  %ip_notify = getelementptr inbounds %struct.cifs_swn_reg, ptr %call37, i32 0, i32 6
  %24 = ptrtoint ptr %ip_notify to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %ip_notify, align 2, !range !187
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25)
  %tobool15.not = icmp eq i8 %25, 0
  %cond17 = select i1 %tobool15.not, ptr @.str.27, ptr @.str.26
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.32, ptr noundef nonnull %cond17) #11
  %26 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %id, align 4
  %add = add i32 %27, 1
  store i32 %add, ptr %id, align 4
  %call = call ptr @idr_get_next(ptr noundef nonnull @cifs_swnreg_idr, ptr noundef nonnull %id) #11
  %cmp.not = icmp eq ptr %call, null
  br i1 %cmp.not, label %sw.epilog.for.end_crit_edge, label %sw.epilog.for.body_crit_edge

sw.epilog.for.body_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

sw.epilog.for.end_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.end:                                          ; preds = %sw.epilog.for.end_crit_edge, %entry.for.end_crit_edge
  call void @mutex_unlock(ptr noundef nonnull @cifs_swnreg_idr_mutex) #11
  call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.33) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %id) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_puts(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @idr_get_next(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @cifs_swn_check() local_unnamed_addr #0 align 64 {
entry:
  %id = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %id) #11
  tail call void @mutex_lock_nested(ptr noundef nonnull @cifs_swnreg_idr_mutex, i32 noundef 0) #11
  %0 = ptrtoint ptr %id to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %id, align 4
  %call21 = call ptr @idr_get_next(ptr noundef nonnull @cifs_swnreg_idr, ptr noundef nonnull %id) #11
  %cmp.not22 = icmp eq ptr %call21, null
  br i1 %cmp.not22, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %call23 = phi ptr [ %call, %for.inc.for.body_crit_edge ], [ %call21, %entry.for.body_crit_edge ]
  %call1 = call fastcc i32 @cifs_swn_send_register_message(ptr noundef nonnull %call23)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp2 = icmp slt i32 %call1, 0
  br i1 %cmp2, label %do.body3, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

do.body3:                                         ; preds = %for.body
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cifsFYI to i32))
  %1 = load i32, ptr @cifsFYI, align 4
  %and = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %do.body3.for.inc_crit_edge, label %do.body5

do.body3.for.inc_crit_edge:                       ; preds = %do.body3
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

do.body5:                                         ; preds = %do.body3
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cifs_swn_check.descriptor, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cifs_swn_check, %land.lhs.true)) #11
          to label %for.inc [label %land.lhs.true], !srcloc !183

land.lhs.true:                                    ; preds = %do.body5
  %call10 = call i32 @___ratelimit(ptr noundef nonnull @cifs_swn_check._rs, ptr noundef nonnull @.str.34) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %land.lhs.true.for.inc_crit_edge, label %if.then12

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

if.then12:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @cifs_swn_check.descriptor, ptr noundef nonnull @.str.35, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.34, i32 noundef %call1) #11
  br label %for.inc

for.inc:                                          ; preds = %if.then12, %land.lhs.true.for.inc_crit_edge, %do.body5, %do.body3.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %2 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %id, align 4
  %add = add i32 %3, 1
  store i32 %add, ptr %id, align 4
  %call = call ptr @idr_get_next(ptr noundef nonnull @cifs_swnreg_idr, ptr noundef nonnull %id) #11
  %cmp.not = icmp eq ptr %call, null
  br i1 %cmp.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  call void @mutex_unlock(ptr noundef nonnull @cifs_swnreg_idr_mutex) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %id) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @cifs_mark_tcp_ses_conns_for_reconnect(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @idr_alloc(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @extract_hostname(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @extract_sharename(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @idr_remove(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #4

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @genlmsg_put(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nla_put(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cifs_select_sectype(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @cifs_swn_auth_info_ntlm(ptr nocapture noundef readonly %tcon, ptr noundef %skb) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %ses = getelementptr inbounds %struct.cifs_tcon, ptr %tcon, i32 0, i32 7
  %0 = ptrtoint ptr %ses to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ses, align 8
  %user_name = getelementptr inbounds %struct.cifs_ses, ptr %1, i32 0, i32 17
  %2 = ptrtoint ptr %user_name to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %user_name, align 8
  %cmp.not = icmp eq ptr %3, null
  br i1 %cmp.not, label %entry.if.end5_crit_edge, label %if.then

entry.if.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end5

if.then:                                          ; preds = %entry
  %call.i = tail call i32 @strlen(ptr noundef nonnull %3) #14
  %add.i = add i32 %call.i, 1
  %call1.i = tail call i32 @nla_put(ptr noundef %skb, i32 noundef 9, i32 noundef %add.i, ptr noundef nonnull %3) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %cmp3 = icmp slt i32 %call1.i, 0
  br i1 %cmp3, label %if.then.cleanup_crit_edge, label %if.then.if.end5_crit_edge

if.then.if.end5_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end5

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end5:                                          ; preds = %if.then.if.end5_crit_edge, %entry.if.end5_crit_edge
  %4 = ptrtoint ptr %ses to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ses, align 8
  %password = getelementptr inbounds %struct.cifs_ses, ptr %5, i32 0, i32 19
  %6 = ptrtoint ptr %password to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %password, align 8
  %cmp7.not = icmp eq ptr %7, null
  br i1 %cmp7.not, label %if.end5.if.end15_crit_edge, label %if.then8

if.end5.if.end15_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end15

if.then8:                                         ; preds = %if.end5
  %call.i40 = tail call i32 @strlen(ptr noundef nonnull %7) #14
  %add.i41 = add i32 %call.i40, 1
  %call1.i42 = tail call i32 @nla_put(ptr noundef %skb, i32 noundef 10, i32 noundef %add.i41, ptr noundef nonnull %7) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i42)
  %cmp12 = icmp slt i32 %call1.i42, 0
  br i1 %cmp12, label %if.then8.cleanup_crit_edge, label %if.then8.if.end15_crit_edge

if.then8.if.end15_crit_edge:                      ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end15

if.then8.cleanup_crit_edge:                       ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end15:                                         ; preds = %if.then8.if.end15_crit_edge, %if.end5.if.end15_crit_edge
  %8 = ptrtoint ptr %ses to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ses, align 8
  %domainName = getelementptr inbounds %struct.cifs_ses, ptr %9, i32 0, i32 18
  %10 = ptrtoint ptr %domainName to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %domainName, align 4
  %cmp17.not = icmp eq ptr %11, null
  br i1 %cmp17.not, label %if.end15.if.end25_crit_edge, label %if.then18

if.end15.if.end25_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end25

if.then18:                                        ; preds = %if.end15
  %call.i43 = tail call i32 @strlen(ptr noundef nonnull %11) #14
  %add.i44 = add i32 %call.i43, 1
  %call1.i45 = tail call i32 @nla_put(ptr noundef %skb, i32 noundef 11, i32 noundef %add.i44, ptr noundef nonnull %11) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i45)
  %cmp22 = icmp slt i32 %call1.i45, 0
  br i1 %cmp22, label %if.then18.cleanup_crit_edge, label %if.then18.if.end25_crit_edge

if.then18.if.end25_crit_edge:                     ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end25

if.then18.cleanup_crit_edge:                      ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end25:                                         ; preds = %if.then18.if.end25_crit_edge, %if.end15.if.end25_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %if.end25, %if.then18.cleanup_crit_edge, %if.then8.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end25 ], [ %call1.i, %if.then.cleanup_crit_edge ], [ %call1.i42, %if.then8.cleanup_crit_edge ], [ %call1.i45, %if.then18.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @genlmsg_multicast(ptr noundef %skb) unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @__asan_load1_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.genl_family, ptr @cifs_genl_family, i32 0, i32 9) to i32))
  %0 = load i8, ptr getelementptr inbounds (%struct.genl_family, ptr @cifs_genl_family, i32 0, i32 9), align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %0)
  %cmp.i = icmp eq i8 %0, 0
  br i1 %cmp.i, label %land.rhs.i, label %if.end39.i

land.rhs.i:                                       ; preds = %entry
  %.b1.i = load i1, ptr @genlmsg_multicast_netns.__already_done, align 1
  br i1 %.b1.i, label %land.rhs.i.genlmsg_multicast_netns.exit_crit_edge, label %if.then.i, !prof !186

land.rhs.i.genlmsg_multicast_netns.exit_crit_edge: ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %genlmsg_multicast_netns.exit

if.then.i:                                        ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @genlmsg_multicast_netns.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.80, i32 noundef 308, i32 noundef 9, ptr noundef null) #11
  br label %genlmsg_multicast_netns.exit

if.end39.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.genl_family, ptr @cifs_genl_family, i32 0, i32 5) to i32))
  %1 = load i32, ptr getelementptr inbounds (%struct.genl_family, ptr @cifs_genl_family, i32 0, i32 5), align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 21) to i32))
  %2 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 21), align 4
  %dst_group.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 16
  %3 = ptrtoint ptr %dst_group.i.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %1, ptr %dst_group.i.i, align 8
  %call.i.i = tail call i32 @netlink_broadcast(ptr noundef %2, ptr noundef %skb, i32 noundef 0, i32 noundef %1, i32 noundef 2592) #11
  br label %genlmsg_multicast_netns.exit

genlmsg_multicast_netns.exit:                     ; preds = %if.end39.i, %if.then.i, %land.rhs.i.genlmsg_multicast_netns.exit_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__alloc_skb(i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @netlink_broadcast(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_trim(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcasecmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #8

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @cifs_swn_send_unregister_message(ptr nocapture noundef readonly %swnreg) unnamed_addr #0 align 64 {
entry:
  %tmp.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i.i.i = tail call ptr @__alloc_skb(i32 noundef 3844, i32 noundef 3264, i32 noundef 0, i32 noundef -1) #11
  %cmp = icmp eq ptr %call.i.i.i, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call ptr @genlmsg_put(ptr noundef nonnull %call.i.i.i, i32 noundef 0, i32 noundef 0, ptr noundef nonnull @cifs_genl_family, i32 noundef 0, i8 noundef zeroext 2) #11
  %cmp2 = icmp eq ptr %call1, null
  br i1 %cmp2, label %if.end.genlmsg_cancel.exit_crit_edge, label %if.end4

if.end.genlmsg_cancel.exit_crit_edge:             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %genlmsg_cancel.exit

if.end4:                                          ; preds = %if.end
  %0 = ptrtoint ptr %swnreg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %swnreg, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i) #11
  %2 = ptrtoint ptr %tmp.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %1, ptr %tmp.i, align 4
  %call.i = call i32 @nla_put(ptr noundef nonnull %call.i.i.i, i32 noundef 1, i32 noundef 4, ptr noundef nonnull %tmp.i) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp6 = icmp slt i32 %call.i, 0
  br i1 %cmp6, label %if.end4.if.then.i_crit_edge, label %if.end8

if.end4.if.then.i_crit_edge:                      ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i

if.end8:                                          ; preds = %if.end4
  %net_name = getelementptr inbounds %struct.cifs_swn_reg, ptr %swnreg, i32 0, i32 2
  %3 = ptrtoint ptr %net_name to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %net_name, align 4
  %call.i92 = call i32 @strlen(ptr noundef %4) #14
  %add.i = add i32 %call.i92, 1
  %call1.i = call i32 @nla_put(ptr noundef nonnull %call.i.i.i, i32 noundef 2, i32 noundef %add.i, ptr noundef %4) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %cmp10 = icmp slt i32 %call1.i, 0
  br i1 %cmp10, label %if.end8.if.then.i_crit_edge, label %if.end12

if.end8.if.then.i_crit_edge:                      ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i

if.end12:                                         ; preds = %if.end8
  %share_name = getelementptr inbounds %struct.cifs_swn_reg, ptr %swnreg, i32 0, i32 3
  %5 = ptrtoint ptr %share_name to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %share_name, align 4
  %call.i93 = call i32 @strlen(ptr noundef %6) #14
  %add.i94 = add i32 %call.i93, 1
  %call1.i95 = call i32 @nla_put(ptr noundef nonnull %call.i.i.i, i32 noundef 3, i32 noundef %add.i94, ptr noundef %6) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i95)
  %cmp14 = icmp slt i32 %call1.i95, 0
  br i1 %cmp14, label %if.end12.if.then.i_crit_edge, label %if.end16

if.end12.if.then.i_crit_edge:                     ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i

if.end16:                                         ; preds = %if.end12
  %tcon = getelementptr inbounds %struct.cifs_swn_reg, ptr %swnreg, i32 0, i32 7
  %7 = ptrtoint ptr %tcon to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %tcon, align 4
  %ses = getelementptr inbounds %struct.cifs_tcon, ptr %8, i32 0, i32 7
  %9 = ptrtoint ptr %ses to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ses, align 8
  %server = getelementptr inbounds %struct.cifs_ses, ptr %10, i32 0, i32 5
  %11 = ptrtoint ptr %server to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %server, align 8
  %dstaddr = getelementptr inbounds %struct.TCP_Server_Info, ptr %12, i32 0, i32 10
  %call17 = call i32 @nla_put(ptr noundef nonnull %call.i.i.i, i32 noundef 4, i32 noundef 128, ptr noundef %dstaddr) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %cmp18 = icmp slt i32 %call17, 0
  br i1 %cmp18, label %if.end16.if.then.i_crit_edge, label %if.end20

if.end16.if.then.i_crit_edge:                     ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i

if.end20:                                         ; preds = %if.end16
  %net_name_notify = getelementptr inbounds %struct.cifs_swn_reg, ptr %swnreg, i32 0, i32 4
  %13 = ptrtoint ptr %net_name_notify to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %net_name_notify, align 4, !range !187
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool.not = icmp eq i8 %14, 0
  br i1 %tobool.not, label %if.end20.if.end26_crit_edge, label %if.then21

if.end20.if.end26_crit_edge:                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end26

if.then21:                                        ; preds = %if.end20
  %call.i96 = call i32 @nla_put(ptr noundef nonnull %call.i.i.i, i32 noundef 5, i32 noundef 0, ptr noundef null) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i96)
  %cmp23 = icmp slt i32 %call.i96, 0
  br i1 %cmp23, label %if.then21.if.then.i_crit_edge, label %if.then21.if.end26_crit_edge

if.then21.if.end26_crit_edge:                     ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end26

if.then21.if.then.i_crit_edge:                    ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i

if.end26:                                         ; preds = %if.then21.if.end26_crit_edge, %if.end20.if.end26_crit_edge
  %share_name_notify = getelementptr inbounds %struct.cifs_swn_reg, ptr %swnreg, i32 0, i32 5
  %15 = ptrtoint ptr %share_name_notify to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %share_name_notify, align 1, !range !187
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %tobool27.not = icmp eq i8 %16, 0
  br i1 %tobool27.not, label %if.end26.if.end33_crit_edge, label %if.then28

if.end26.if.end33_crit_edge:                      ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end33

if.then28:                                        ; preds = %if.end26
  %call.i97 = call i32 @nla_put(ptr noundef nonnull %call.i.i.i, i32 noundef 6, i32 noundef 0, ptr noundef null) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i97)
  %cmp30 = icmp slt i32 %call.i97, 0
  br i1 %cmp30, label %if.then28.if.then.i_crit_edge, label %if.then28.if.end33_crit_edge

if.then28.if.end33_crit_edge:                     ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end33

if.then28.if.then.i_crit_edge:                    ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i

if.end33:                                         ; preds = %if.then28.if.end33_crit_edge, %if.end26.if.end33_crit_edge
  %ip_notify = getelementptr inbounds %struct.cifs_swn_reg, ptr %swnreg, i32 0, i32 6
  %17 = ptrtoint ptr %ip_notify to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %ip_notify, align 2, !range !187
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %tobool34.not = icmp eq i8 %18, 0
  br i1 %tobool34.not, label %if.end33.if.end40_crit_edge, label %if.then35

if.end33.if.end40_crit_edge:                      ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end40

if.then35:                                        ; preds = %if.end33
  %call.i98 = call i32 @nla_put(ptr noundef nonnull %call.i.i.i, i32 noundef 7, i32 noundef 0, ptr noundef null) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i98)
  %cmp37 = icmp slt i32 %call.i98, 0
  br i1 %cmp37, label %if.then35.if.then.i_crit_edge, label %if.then35.if.end40_crit_edge

if.then35.if.end40_crit_edge:                     ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end40

if.then35.if.then.i_crit_edge:                    ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i

if.end40:                                         ; preds = %if.then35.if.end40_crit_edge, %if.end33.if.end40_crit_edge
  %add.ptr1.i = getelementptr i8, ptr %call1, i32 -20
  %tail.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i, i32 0, i32 16
  %19 = ptrtoint ptr %tail.i.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %tail.i.i.i, align 8
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %20 to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %add.ptr1.i to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  %21 = ptrtoint ptr %add.ptr1.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %sub.ptr.sub.i.i, ptr %add.ptr1.i, align 4
  call void @__asan_load1_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.genl_family, ptr @cifs_genl_family, i32 0, i32 9) to i32))
  %22 = load i8, ptr getelementptr inbounds (%struct.genl_family, ptr @cifs_genl_family, i32 0, i32 9), align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %cmp.i.i = icmp eq i8 %22, 0
  br i1 %cmp.i.i, label %land.rhs.i.i, label %if.end39.i.i

land.rhs.i.i:                                     ; preds = %if.end40
  %.b1.i.i = load i1, ptr @genlmsg_multicast_netns.__already_done, align 1
  br i1 %.b1.i.i, label %land.rhs.i.i.genlmsg_multicast.exit_crit_edge, label %if.then.i.i, !prof !186

land.rhs.i.i.genlmsg_multicast.exit_crit_edge:    ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %genlmsg_multicast.exit

if.then.i.i:                                      ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @genlmsg_multicast_netns.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.80, i32 noundef 308, i32 noundef 9, ptr noundef null) #11
  br label %genlmsg_multicast.exit

if.end39.i.i:                                     ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.genl_family, ptr @cifs_genl_family, i32 0, i32 5) to i32))
  %23 = load i32, ptr getelementptr inbounds (%struct.genl_family, ptr @cifs_genl_family, i32 0, i32 5), align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 21) to i32))
  %24 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 21), align 4
  %dst_group.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i, i32 0, i32 3, i32 16
  %25 = ptrtoint ptr %dst_group.i.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %23, ptr %dst_group.i.i.i, align 8
  %call.i.i.i99 = call i32 @netlink_broadcast(ptr noundef %24, ptr noundef nonnull %call.i.i.i, i32 noundef 0, i32 noundef %23, i32 noundef 2592) #11
  br label %genlmsg_multicast.exit

genlmsg_multicast.exit:                           ; preds = %if.end39.i.i, %if.then.i.i, %land.rhs.i.i.genlmsg_multicast.exit_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cifsFYI to i32))
  %26 = load i32, ptr @cifsFYI, align 4
  %and = and i32 %26, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool43.not = icmp eq i32 %and, 0
  br i1 %tobool43.not, label %genlmsg_multicast.exit.cleanup_crit_edge, label %do.body45

genlmsg_multicast.exit.cleanup_crit_edge:         ; preds = %genlmsg_multicast.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.body45:                                        ; preds = %genlmsg_multicast.exit
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cifs_swn_send_unregister_message.descriptor, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cifs_swn_send_unregister_message, %land.lhs.true)) #11
          to label %cleanup [label %land.lhs.true], !srcloc !183

land.lhs.true:                                    ; preds = %do.body45
  %call50 = call i32 @___ratelimit(ptr noundef nonnull @cifs_swn_send_unregister_message._rs, ptr noundef nonnull @.str.90) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call50)
  %tobool51.not = icmp eq i32 %call50, 0
  br i1 %tobool51.not, label %land.lhs.true.cleanup_crit_edge, label %if.then52

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then52:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  %27 = ptrtoint ptr %net_name to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %net_name, align 4
  %29 = ptrtoint ptr %swnreg to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %swnreg, align 4
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @cifs_swn_send_unregister_message.descriptor, ptr noundef nonnull @.str.91, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.90, ptr noundef %28, i32 noundef %30) #11
  br label %cleanup

if.then.i:                                        ; preds = %if.then35.if.then.i_crit_edge, %if.then28.if.then.i_crit_edge, %if.then21.if.then.i_crit_edge, %if.end16.if.then.i_crit_edge, %if.end12.if.then.i_crit_edge, %if.end8.if.then.i_crit_edge, %if.end4.if.then.i_crit_edge
  %ret.0.ph = phi i32 [ %call.i98, %if.then35.if.then.i_crit_edge ], [ %call.i97, %if.then28.if.then.i_crit_edge ], [ %call.i96, %if.then21.if.then.i_crit_edge ], [ %call17, %if.end16.if.then.i_crit_edge ], [ %call1.i95, %if.end12.if.then.i_crit_edge ], [ %call1.i, %if.end8.if.then.i_crit_edge ], [ %call.i, %if.end4.if.then.i_crit_edge ]
  %add.ptr1.i100 = getelementptr i8, ptr %call1, i32 -20
  %tobool.not.i.i.i = icmp eq ptr %add.ptr1.i100, null
  br i1 %tobool.not.i.i.i, label %if.then.i.genlmsg_cancel.exit_crit_edge, label %if.then.i.i.i

if.then.i.genlmsg_cancel.exit_crit_edge:          ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %genlmsg_cancel.exit

if.then.i.i.i:                                    ; preds = %if.then.i
  %data.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i, i32 0, i32 19
  %31 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %data.i.i.i, align 4
  %cmp.i.i.i = icmp ugt ptr %32, %add.ptr1.i100
  br i1 %cmp.i.i.i, label %do.end.i.i.i, label %if.then.i.i.i.if.end.i.i.i_crit_edge, !prof !185

if.then.i.i.i.if.end.i.i.i_crit_edge:             ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i.i.i

do.end.i.i.i:                                     ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.81, i32 noundef 991, i32 noundef 9, ptr noundef null) #11
  br label %if.end.i.i.i

if.end.i.i.i:                                     ; preds = %do.end.i.i.i, %if.then.i.i.i.if.end.i.i.i_crit_edge
  %33 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %data.i.i.i, align 4
  %sub.ptr.lhs.cast.i.i.i = ptrtoint ptr %add.ptr1.i100 to i32
  %sub.ptr.rhs.cast.i.i.i = ptrtoint ptr %34 to i32
  %sub.ptr.sub.i.i.i = sub i32 %sub.ptr.lhs.cast.i.i.i, %sub.ptr.rhs.cast.i.i.i
  call void @skb_trim(ptr noundef nonnull %call.i.i.i, i32 noundef %sub.ptr.sub.i.i.i) #11
  br label %genlmsg_cancel.exit

genlmsg_cancel.exit:                              ; preds = %if.end.i.i.i, %if.then.i.genlmsg_cancel.exit_crit_edge, %if.end.genlmsg_cancel.exit_crit_edge
  %ret.0104 = phi i32 [ %ret.0.ph, %if.then.i.genlmsg_cancel.exit_crit_edge ], [ %ret.0.ph, %if.end.i.i.i ], [ -12, %if.end.genlmsg_cancel.exit_crit_edge ]
  call void @kfree_skb_reason(ptr noundef nonnull %call.i.i.i, i32 noundef 0) #11
  br label %cleanup

cleanup:                                          ; preds = %genlmsg_cancel.exit, %if.then52, %land.lhs.true.cleanup_crit_edge, %do.body45, %genlmsg_multicast.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0104, %genlmsg_cancel.exit ], [ -12, %entry.cleanup_crit_edge ], [ 0, %genlmsg_multicast.exit.cleanup_crit_edge ], [ 0, %land.lhs.true.cleanup_crit_edge ], [ 0, %if.then52 ], [ 0, %do.body45 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #10

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #11

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

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
define internal void @asan.module_ctor() #12 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 95)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #12 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 95)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { argmemonly nofree nounwind readonly willreturn }
attributes #10 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #11 = { nounwind }
attributes #12 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #13 = { nomerge }
attributes #14 = { nobuiltin nounwind }
attributes #15 = { cold nounwind }
attributes #16 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !10, !11, !12, !14, !15, !16, !18, !19, !20, !22, !23, !24, !26, !27, !28, !30, !31, !32, !34, !35, !36, !37, !38, !40, !42, !44, !46, !48, !50, !52, !54, !56, !58, !60, !61, !62, !63, !65, !66, !67, !69, !70, !72, !73, !74, !75, !77, !78, !79, !81, !82, !83, !85, !86, !87, !88, !90, !91, !92, !94, !95, !96, !97, !98, !100, !101, !102, !103, !105, !106, !107, !108, !110, !111, !112, !113, !115, !116, !117, !118, !120, !121, !122, !123, !125, !126, !127, !128, !129, !131, !132, !133, !134, !136, !137, !138, !139, !141, !142, !143, !145, !146, !148, !150, !151, !152, !153, !154, !156, !157, !158, !159, !161, !162, !163, !165, !166, !167, !168, !169, !171, !172, !173}
!llvm.module.flags = !{!174, !175, !176, !177, !178, !179, !180, !181}
!llvm.ident = !{!182}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../fs/cifs/cifs_swn.c", i32 536, i32 4}
!2 = !{ptr @cifs_swn_notify._rs, !1, !"_rs", i1 false, i1 false}
!3 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @cifs_swn_notify.descriptor, !1, !"descriptor", i1 false, i1 false}
!8 = !{ptr @cifs_swn_notify._rs.5, !9, !"_rs", i1 false, i1 false}
!9 = !{!"../fs/cifs/cifs_swn.c", i32 540, i32 3}
!10 = !{ptr @.str.7, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @cifs_swn_notify.descriptor.6, !9, !"descriptor", i1 false, i1 false}
!12 = !{ptr @cifs_swn_notify._rs.8, !13, !"_rs", i1 false, i1 false}
!13 = !{!"../fs/cifs/cifs_swn.c", i32 547, i32 3}
!14 = !{ptr @.str.10, !13, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @cifs_swn_notify.descriptor.9, !13, !"descriptor", i1 false, i1 false}
!16 = !{ptr @cifs_swn_notify._rs.11, !17, !"_rs", i1 false, i1 false}
!17 = !{!"../fs/cifs/cifs_swn.c", i32 559, i32 4}
!18 = !{ptr @.str.13, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @cifs_swn_notify.descriptor.12, !17, !"descriptor", i1 false, i1 false}
!20 = !{ptr @cifs_swn_notify._rs.14, !21, !"_rs", i1 false, i1 false}
!21 = !{!"../fs/cifs/cifs_swn.c", i32 565, i32 4}
!22 = !{ptr @.str.16, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @cifs_swn_notify.descriptor.15, !21, !"descriptor", i1 false, i1 false}
!24 = !{ptr @cifs_swn_notify._rs.17, !25, !"_rs", i1 false, i1 false}
!25 = !{!"../fs/cifs/cifs_swn.c", i32 576, i32 4}
!26 = !{ptr @.str.19, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @cifs_swn_notify.descriptor.18, !25, !"descriptor", i1 false, i1 false}
!28 = !{ptr @cifs_swn_notify._rs.20, !29, !"_rs", i1 false, i1 false}
!29 = !{!"../fs/cifs/cifs_swn.c", i32 582, i32 3}
!30 = !{ptr @.str.22, !29, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @cifs_swn_notify.descriptor.21, !29, !"descriptor", i1 false, i1 false}
!32 = !{ptr @cifs_swn_register._rs, !33, !"_rs", i1 false, i1 false}
!33 = !{!"../fs/cifs/cifs_swn.c", i32 600, i32 3}
!34 = !{ptr @__func__.cifs_swn_register, !33, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @.str.23, !33, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @cifs_swn_register._entry, !33, !"_entry", i1 false, i1 false}
!37 = !{ptr @cifs_swn_register._entry_ptr, !33, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @.str.24, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../fs/cifs/cifs_swn.c", i32 633, i32 14}
!40 = !{ptr @.str.25, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../fs/cifs/cifs_swn.c", i32 637, i32 17}
!42 = !{ptr @.str.26, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../fs/cifs/cifs_swn.c", i32 639, i32 49}
!44 = !{ptr @.str.27, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../fs/cifs/cifs_swn.c", i32 639, i32 57}
!46 = !{ptr @.str.28, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../fs/cifs/cifs_swn.c", i32 644, i32 18}
!48 = !{ptr @.str.29, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../fs/cifs/cifs_swn.c", i32 648, i32 18}
!50 = !{ptr @.str.30, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../fs/cifs/cifs_swn.c", i32 650, i32 19}
!52 = !{ptr @.str.31, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../fs/cifs/cifs_swn.c", i32 653, i32 16}
!54 = !{ptr @.str.32, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../fs/cifs/cifs_swn.c", i32 655, i32 17}
!56 = !{ptr @.str.33, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../fs/cifs/cifs_swn.c", i32 658, i32 14}
!58 = !{ptr @cifs_swn_check._rs, !59, !"_rs", i1 false, i1 false}
!59 = !{!"../fs/cifs/cifs_swn.c", i32 671, i32 4}
!60 = !{ptr @.str.34, !59, !"<string literal>", i1 false, i1 false}
!61 = !{ptr @.str.35, !59, !"<string literal>", i1 false, i1 false}
!62 = !{ptr @cifs_swn_check.descriptor, !59, !"descriptor", i1 false, i1 false}
!63 = !{ptr @.str.36, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../fs/cifs/cifs_swn.c", i32 20, i32 8}
!65 = !{ptr @.str.37, !64, !"<string literal>", i1 false, i1 false}
!66 = !{ptr @cifs_swnreg_idr_mutex, !64, !"cifs_swnreg_idr_mutex", i1 false, i1 false}
!67 = !{ptr @.str.38, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../fs/cifs/cifs_swn.c", i32 19, i32 8}
!69 = !{ptr @cifs_swnreg_idr, !68, !"cifs_swnreg_idr", i1 false, i1 false}
!70 = !{ptr @cifs_swn_resource_state_changed._rs, !71, !"_rs", i1 false, i1 false}
!71 = !{!"../fs/cifs/cifs_swn.c", i32 398, i32 3}
!72 = !{ptr @.str.39, !71, !"<string literal>", i1 false, i1 false}
!73 = !{ptr @.str.40, !71, !"<string literal>", i1 false, i1 false}
!74 = !{ptr @cifs_swn_resource_state_changed.descriptor, !71, !"descriptor", i1 false, i1 false}
!75 = !{ptr @cifs_swn_resource_state_changed._rs.41, !76, !"_rs", i1 false, i1 false}
!76 = !{!"../fs/cifs/cifs_swn.c", i32 402, i32 3}
!77 = !{ptr @.str.43, !76, !"<string literal>", i1 false, i1 false}
!78 = !{ptr @cifs_swn_resource_state_changed.descriptor.42, !76, !"descriptor", i1 false, i1 false}
!79 = !{ptr @cifs_swn_resource_state_changed._rs.44, !80, !"_rs", i1 false, i1 false}
!80 = !{!"../fs/cifs/cifs_swn.c", i32 406, i32 3}
!81 = !{ptr @.str.46, !80, !"<string literal>", i1 false, i1 false}
!82 = !{ptr @cifs_swn_resource_state_changed.descriptor.45, !80, !"descriptor", i1 false, i1 false}
!83 = !{ptr @cifs_swn_client_move._rs, !84, !"_rs", i1 false, i1 false}
!84 = !{!"../fs/cifs/cifs_swn.c", i32 515, i32 3}
!85 = !{ptr @.str.47, !84, !"<string literal>", i1 false, i1 false}
!86 = !{ptr @.str.48, !84, !"<string literal>", i1 false, i1 false}
!87 = !{ptr @cifs_swn_client_move.descriptor, !84, !"descriptor", i1 false, i1 false}
!88 = !{ptr @cifs_swn_client_move._rs.49, !89, !"_rs", i1 false, i1 false}
!89 = !{!"../fs/cifs/cifs_swn.c", i32 517, i32 3}
!90 = !{ptr @.str.51, !89, !"<string literal>", i1 false, i1 false}
!91 = !{ptr @cifs_swn_client_move.descriptor.50, !89, !"descriptor", i1 false, i1 false}
!92 = distinct !{null, !93, !"_rs", i1 false, i1 false}
!93 = !{!"../fs/cifs/cifs_swn.c", i32 475, i32 3}
!94 = !{ptr @__func__.cifs_swn_reconnect, !93, !"<string literal>", i1 false, i1 false}
!95 = !{ptr @.str.52, !93, !"<string literal>", i1 false, i1 false}
!96 = !{ptr @cifs_swn_reconnect._entry, !93, !"_entry", i1 false, i1 false}
!97 = !{ptr @cifs_swn_reconnect._entry_ptr, !93, !"_entry_ptr", i1 false, i1 false}
!98 = !{ptr @cifs_swn_reconnect._rs.53, !99, !"_rs", i1 false, i1 false}
!99 = !{!"../fs/cifs/cifs_swn.c", i32 485, i32 3}
!100 = !{ptr @.str.55, !99, !"<string literal>", i1 false, i1 false}
!101 = !{ptr @cifs_swn_reconnect._entry.54, !99, !"_entry", i1 false, i1 false}
!102 = !{ptr @cifs_swn_reconnect._entry_ptr.56, !99, !"_entry_ptr", i1 false, i1 false}
!103 = !{ptr @cifs_swn_reconnect._rs.57, !104, !"_rs", i1 false, i1 false}
!104 = !{!"../fs/cifs/cifs_swn.c", i32 496, i32 3}
!105 = !{ptr @.str.59, !104, !"<string literal>", i1 false, i1 false}
!106 = !{ptr @cifs_swn_reconnect._entry.58, !104, !"_entry", i1 false, i1 false}
!107 = !{ptr @cifs_swn_reconnect._entry_ptr.60, !104, !"_entry_ptr", i1 false, i1 false}
!108 = !{ptr @cifs_get_swn_reg._rs, !109, !"_rs", i1 false, i1 false}
!109 = !{!"../fs/cifs/cifs_swn.c", i32 333, i32 3}
!110 = !{ptr @.str.61, !109, !"<string literal>", i1 false, i1 false}
!111 = !{ptr @.str.62, !109, !"<string literal>", i1 false, i1 false}
!112 = !{ptr @cifs_get_swn_reg.descriptor, !109, !"descriptor", i1 false, i1 false}
!113 = !{ptr @cifs_get_swn_reg._rs.63, !114, !"_rs", i1 false, i1 false}
!114 = !{!"../fs/cifs/cifs_swn.c", i32 341, i32 3}
!115 = !{ptr @.str.64, !114, !"<string literal>", i1 false, i1 false}
!116 = !{ptr @cifs_get_swn_reg._entry, !114, !"_entry", i1 false, i1 false}
!117 = !{ptr @cifs_get_swn_reg._entry_ptr, !114, !"_entry_ptr", i1 false, i1 false}
!118 = !{ptr @cifs_get_swn_reg._rs.65, !119, !"_rs", i1 false, i1 false}
!119 = !{!"../fs/cifs/cifs_swn.c", i32 348, i32 3}
!120 = !{ptr @.str.67, !119, !"<string literal>", i1 false, i1 false}
!121 = !{ptr @cifs_get_swn_reg._entry.66, !119, !"_entry", i1 false, i1 false}
!122 = !{ptr @cifs_get_swn_reg._entry_ptr.68, !119, !"_entry_ptr", i1 false, i1 false}
!123 = !{ptr @cifs_swn_send_register_message._rs, !124, !"_rs", i1 false, i1 false}
!124 = !{!"../fs/cifs/cifs_swn.c", i32 146, i32 4}
!125 = !{ptr @__func__.cifs_swn_send_register_message, !124, !"<string literal>", i1 false, i1 false}
!126 = !{ptr @.str.69, !124, !"<string literal>", i1 false, i1 false}
!127 = !{ptr @cifs_swn_send_register_message._entry, !124, !"_entry", i1 false, i1 false}
!128 = !{ptr @cifs_swn_send_register_message._entry_ptr, !124, !"_entry_ptr", i1 false, i1 false}
!129 = !{ptr @cifs_swn_send_register_message._rs.70, !130, !"_rs", i1 false, i1 false}
!130 = !{!"../fs/cifs/cifs_swn.c", i32 154, i32 4}
!131 = !{ptr @.str.72, !130, !"<string literal>", i1 false, i1 false}
!132 = !{ptr @cifs_swn_send_register_message._entry.71, !130, !"_entry", i1 false, i1 false}
!133 = !{ptr @cifs_swn_send_register_message._entry_ptr.73, !130, !"_entry_ptr", i1 false, i1 false}
!134 = !{ptr @cifs_swn_send_register_message._rs.74, !135, !"_rs", i1 false, i1 false}
!135 = !{!"../fs/cifs/cifs_swn.c", i32 159, i32 3}
!136 = !{ptr @.str.76, !135, !"<string literal>", i1 false, i1 false}
!137 = !{ptr @cifs_swn_send_register_message._entry.75, !135, !"_entry", i1 false, i1 false}
!138 = !{ptr @cifs_swn_send_register_message._entry_ptr.77, !135, !"_entry_ptr", i1 false, i1 false}
!139 = !{ptr @cifs_swn_send_register_message._rs.78, !140, !"_rs", i1 false, i1 false}
!140 = !{!"../fs/cifs/cifs_swn.c", i32 167, i32 2}
!141 = !{ptr @.str.79, !140, !"<string literal>", i1 false, i1 false}
!142 = !{ptr @cifs_swn_send_register_message.descriptor, !140, !"descriptor", i1 false, i1 false}
!143 = distinct !{null, !144, !"__already_done", i1 false, i1 false}
!144 = !{!"../include/net/genetlink.h", i32 308, i32 6}
!145 = !{ptr @.str.80, !144, !"<string literal>", i1 false, i1 false}
!146 = !{ptr @.str.81, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../include/net/netlink.h", i32 991, i32 3}
!148 = !{ptr @cifs_find_swn_reg._rs, !149, !"_rs", i1 false, i1 false}
!149 = !{!"../fs/cifs/cifs_swn.c", i32 264, i32 3}
!150 = !{ptr @__func__.cifs_find_swn_reg, !149, !"<string literal>", i1 false, i1 false}
!151 = !{ptr @.str.82, !149, !"<string literal>", i1 false, i1 false}
!152 = !{ptr @cifs_find_swn_reg._entry, !149, !"_entry", i1 false, i1 false}
!153 = !{ptr @cifs_find_swn_reg._entry_ptr, !149, !"_entry_ptr", i1 false, i1 false}
!154 = !{ptr @cifs_find_swn_reg._rs.83, !155, !"_rs", i1 false, i1 false}
!155 = !{!"../fs/cifs/cifs_swn.c", i32 274, i32 3}
!156 = !{ptr @.str.85, !155, !"<string literal>", i1 false, i1 false}
!157 = !{ptr @cifs_find_swn_reg._entry.84, !155, !"_entry", i1 false, i1 false}
!158 = !{ptr @cifs_find_swn_reg._entry_ptr.86, !155, !"_entry_ptr", i1 false, i1 false}
!159 = !{ptr @cifs_find_swn_reg._rs.87, !160, !"_rs", i1 false, i1 false}
!160 = !{!"../fs/cifs/cifs_swn.c", i32 286, i32 3}
!161 = !{ptr @.str.88, !160, !"<string literal>", i1 false, i1 false}
!162 = !{ptr @cifs_find_swn_reg.descriptor, !160, !"descriptor", i1 false, i1 false}
!163 = !{ptr @cifs_swn_reg_release._rs, !164, !"_rs", i1 false, i1 false}
!164 = !{!"../fs/cifs/cifs_swn.c", i32 379, i32 3}
!165 = !{ptr @__func__.cifs_swn_reg_release, !164, !"<string literal>", i1 false, i1 false}
!166 = !{ptr @.str.89, !164, !"<string literal>", i1 false, i1 false}
!167 = !{ptr @cifs_swn_reg_release._entry, !164, !"_entry", i1 false, i1 false}
!168 = !{ptr @cifs_swn_reg_release._entry_ptr, !164, !"_entry_ptr", i1 false, i1 false}
!169 = !{ptr @cifs_swn_send_unregister_message._rs, !170, !"_rs", i1 false, i1 false}
!170 = !{!"../fs/cifs/cifs_swn.c", i32 236, i32 2}
!171 = !{ptr @.str.90, !170, !"<string literal>", i1 false, i1 false}
!172 = !{ptr @.str.91, !170, !"<string literal>", i1 false, i1 false}
!173 = !{ptr @cifs_swn_send_unregister_message.descriptor, !170, !"descriptor", i1 false, i1 false}
!174 = !{i32 1, !"wchar_size", i32 2}
!175 = !{i32 1, !"min_enum_size", i32 4}
!176 = !{i32 8, !"branch-target-enforcement", i32 0}
!177 = !{i32 8, !"sign-return-address", i32 0}
!178 = !{i32 8, !"sign-return-address-all", i32 0}
!179 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!180 = !{i32 7, !"uwtable", i32 1}
!181 = !{i32 7, !"frame-pointer", i32 2}
!182 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!183 = !{i64 2148320525, i64 2148320530, i64 2148320543, i64 2148320587, i64 2148320621, i64 2148320642}
!184 = !{i64 2148497457, i64 2148497489, i64 2148497518, i64 2148497552, i64 2148497583, i64 2148497606}
!185 = !{!"branch_weights", i32 1, i32 2000}
!186 = !{!"branch_weights", i32 2000, i32 1}
!187 = !{i8 0, i8 2}
!188 = !{i64 2148585482}
!189 = !{i64 2148499922, i64 2148499954, i64 2148499983, i64 2148500017, i64 2148500048, i64 2148500071}
!190 = !{i64 2149220206}
