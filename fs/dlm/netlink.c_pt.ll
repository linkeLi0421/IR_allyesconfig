; ModuleID = '/llk/IR_all_yes/fs/dlm/netlink.c_pt.bc'
source_filename = "../fs/dlm/netlink.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.genl_family = type { i32, i32, [16 x i8], i32, i32, i32, i8, i8, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.genl_small_ops = type { ptr, ptr, i8, i8, i8, i8 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.net = type { %struct.refcount_struct, %struct.spinlock, i32, i32, i32, %struct.spinlock, %struct.atomic_t, %struct.list_head, %struct.list_head, %struct.llist_node, ptr, ptr, ptr, %struct.idr, %struct.ns_common, %struct.ref_tracker_dir, %struct.list_head, ptr, ptr, %struct.ctl_table_set, ptr, ptr, ptr, ptr, ptr, %struct.raw_notifier_head, i32, ptr, %struct.list_head, %struct.netns_core, %struct.netns_mib, %struct.netns_packet, %struct.netns_unix, %struct.netns_nexthop, [80 x i8], %struct.netns_ipv4, %struct.netns_ipv6, %struct.netns_ieee802154_lowpan, %struct.netns_sctp, %struct.netns_nf, %struct.netns_ct, %struct.netns_nftables, %struct.sk_buff_head, ptr, %struct.netns_bpf, [92 x i8], %struct.netns_xfrm, i64, ptr, %struct.netns_mpls, %struct.netns_can, %struct.netns_xdp, %struct.netns_mctp, ptr, ptr, %struct.netns_smc }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.spinlock = type { %union.anon.20 }
%union.anon.20 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.21 }
%union.anon.21 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.atomic_t = type { i32 }
%struct.llist_node = type { ptr }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.ns_common = type { %struct.atomic_t, ptr, i32, %struct.refcount_struct }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.ctl_table_set = type { ptr, %struct.ctl_dir }
%struct.ctl_dir = type { %struct.ctl_table_header, %struct.rb_root }
%struct.ctl_table_header = type { %union.anon.24, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hlist_head }
%union.anon.24 = type { %struct.anon.25 }
%struct.anon.25 = type { ptr, i32, i32, i32 }
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
%struct.netns_ipv6 = type { %struct.dst_ops, %struct.netns_sysctl_ipv6, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.timer_list, ptr, ptr, %struct.list_head, %struct.rwlock_t, %struct.spinlock, i32, i32, i8, i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, i32, %struct.anon.28, ptr, [24 x i8] }
%struct.dst_ops = type { i16, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [60 x i8], %struct.percpu_counter, [56 x i8] }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.netns_sysctl_ipv6 = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i32, i8, i8, i8, [8 x i32], ptr, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8, i8 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.anon.28 = type { %struct.hlist_head, %struct.spinlock, i32 }
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
%struct.sk_buff_head = type { %union.anon.29, i32, %struct.spinlock }
%union.anon.29 = type { %struct.anon.30 }
%struct.anon.30 = type { ptr, ptr }
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
%struct.dlm_lkb = type { ptr, %struct.kref, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i8, i8, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, i64, i64, i32, %struct.mutex, %struct.work_struct, %struct.list_head, [6 x %struct.dlm_callback], %struct.dlm_callback, %struct.dlm_callback, i64, i64, i64, ptr, ptr, ptr, ptr, %union.anon.105 }
%struct.kref = type { %struct.refcount_struct }
%struct.dlm_callback = type { i64, i32, i32, i8, i8 }
%union.anon.105 = type { ptr }
%struct.dlm_user_args = type { ptr, %struct.dlm_lksb, ptr, ptr, ptr, ptr, ptr, i64 }
%struct.dlm_lksb = type { i32, i32, i8, ptr }
%struct.dlm_ls = type { %struct.list_head, ptr, i32, i32, i32, i32, %struct.atomic_t, %struct.wait_queue_head, i32, i32, i32, %struct.kobject, %struct.idr, %struct.spinlock, ptr, i32, %struct.mutex, %struct.list_head, %struct.mutex, %struct.list_head, %struct.mutex, %struct.list_head, %struct.spinlock, i32, %struct.list_head, %struct.spinlock, %struct.wait_queue_head, [65 x i8], [8 x ptr], i32, [8 x i32], %struct.list_head, %struct.list_head, i32, i32, i32, ptr, i32, i32, i32, ptr, %struct.dlm_rsb, %struct.dlm_lkb, %struct.dlm_message, ptr, ptr, ptr, ptr, ptr, %struct.wait_queue_head, i32, %struct.completion, i32, %struct.miscdevice, ptr, %struct.mutex, %struct.list_head, %struct.timer_list, ptr, %struct.mutex, %struct.spinlock, i32, i32, i64, ptr, %struct.rw_semaphore, %struct.rw_semaphore, %struct.list_head, %struct.atomic_t, %struct.wait_queue_head, %struct.mutex, ptr, i32, i32, i32, i32, i64, %struct.spinlock, %struct.list_head, %struct.spinlock, i32, %struct.idr, %struct.spinlock, %struct.wait_queue_head, %struct.wait_queue_head, %struct.mutex, %struct.list_head, %struct.rw_semaphore, ptr, ptr, i32, [1 x i8] }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.dlm_rsb = type { ptr, %struct.kref, %struct.mutex, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.list_head, %union.anon.104, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, i32, ptr, [65 x i8] }
%union.anon.104 = type { %struct.rb_node }
%struct.rb_node = type { i32, ptr, ptr }
%struct.dlm_message = type { %struct.dlm_header, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [0 x i8] }
%struct.dlm_header = type { i32, %union.anon.106, i32, i16, i8, i8 }
%union.anon.106 = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.miscdevice = type { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i16 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.sk_buff = type { %union.anon.0, %union.anon.3, %union.anon.4, [48 x i8], %union.anon.5, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.7, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon.0 = type { %struct.anon.1 }
%struct.anon.1 = type { ptr, ptr, %union.anon.2 }
%union.anon.2 = type { ptr }
%union.anon.3 = type { ptr }
%union.anon.4 = type { i64 }
%union.anon.5 = type { %struct.anon.6 }
%struct.anon.6 = type { i32, ptr }
%union.anon.7 = type { %struct.anon.8 }
%struct.anon.8 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.9, i32, i32, i32, i16, i16, %union.anon.11, i32, %union.anon.12, %union.anon.13, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.9 = type { i32 }
%union.anon.11 = type { i32 }
%union.anon.12 = type { i32 }
%union.anon.13 = type { i16 }
%struct.genl_info = type { i32, i32, ptr, ptr, ptr, ptr, %struct.possible_net_t, [2 x ptr], ptr }
%struct.possible_net_t = type { ptr }

@family = internal global %struct.genl_family { i32 0, i32 0, [16 x i8] c"DLM\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 1, i32 0, i32 0, i8 0, i8 0, i8 1, i8 0, ptr null, ptr null, ptr null, ptr null, ptr @dlm_nl_ops, ptr null, ptr null }, section ".data..ro_after_init", align 4
@dlm_nl_ops = internal constant { [1 x %struct.genl_small_ops], [20 x i8] } { [1 x %struct.genl_small_ops] [%struct.genl_small_ops { ptr @user_cmd, ptr null, i8 1, i8 0, i8 0, i8 3 }], [20 x i8] zeroinitializer }, align 32
@listener_nlportid = internal global { i32, [28 x i8] } zeroinitializer, align 32
@user_cmd._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 61, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"user_cmd nlpid %u\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"user_cmd\00", [23 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"fs/dlm/netlink.c\00", [47 x i8] zeroinitializer }, align 32
@user_cmd._entry_ptr = internal global ptr @user_cmd._entry, section ".printk_index", align 4
@dlm_nl_seqnum = internal global { i32, [28 x i8] } zeroinitializer, align 32
@init_net = external dso_local local_unnamed_addr global %struct.net, align 128
@___asan_gen_.3 = private unnamed_addr constant [11 x i8] c"dlm_nl_ops\00", align 1
@___asan_gen_.5 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.22, i32 65, i32 36 }
@___asan_gen_.6 = private unnamed_addr constant [18 x i8] c"listener_nlportid\00", align 1
@___asan_gen_.8 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.22, i32 14, i32 17 }
@___asan_gen_.9 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.18 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.22, i32 61, i32 2 }
@___asan_gen_.21 = private unnamed_addr constant [14 x i8] c"dlm_nl_seqnum\00", align 1
@___asan_gen_.22 = private constant [20 x i8] c"../fs/dlm/netlink.c\00", align 1
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.22, i32 13, i32 17 }
@llvm.compiler.used = appending global [8 x ptr] [ptr @user_cmd._entry, ptr @user_cmd._entry_ptr, ptr @dlm_nl_ops, ptr @listener_nlportid, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @dlm_nl_seqnum], section "llvm.metadata"
@0 = internal global [7 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dlm_nl_ops to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @listener_nlportid to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @user_cmd._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dlm_nl_seqnum to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dlm_netlink_init() local_unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @genl_register_family(ptr noundef nonnull @family) #4
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @genl_register_family(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dlm_netlink_exit() local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @genl_unregister_family(ptr noundef nonnull @family) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @genl_unregister_family(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dlm_timeout_warn(ptr nocapture noundef readonly %lkb) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i.i.i.i = tail call ptr @__alloc_skb(i32 noundef 140, i32 noundef 3136, i32 noundef 0, i32 noundef -1) #4
  %tobool.not.i = icmp eq ptr %call.i.i.i.i, null
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %if.end.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end.i:                                         ; preds = %entry
  %0 = load i32, ptr @dlm_nl_seqnum, align 4
  %inc.i = add i32 %0, 1
  store i32 %inc.i, ptr @dlm_nl_seqnum, align 4
  %call1.i = tail call ptr @genlmsg_put(ptr noundef nonnull %call.i.i.i.i, i32 noundef 0, i32 noundef %0, ptr noundef nonnull @family, i32 noundef 0, i8 noundef zeroext 2) #4
  %tobool2.not.i = icmp eq ptr %call1.i, null
  br i1 %tobool2.not.i, label %if.then3.i, label %if.end

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @kfree_skb_reason(ptr noundef nonnull %call.i.i.i.i, i32 noundef 0) #4
  br label %cleanup

if.end:                                           ; preds = %if.end.i
  %call.i = tail call ptr @nla_reserve(ptr noundef nonnull %call.i.i.i.i, i32 noundef 1, i32 noundef 112) #4
  %tobool.not.i11 = icmp eq ptr %call.i, null
  %add.ptr.i.i = getelementptr i8, ptr %call.i, i32 4
  %tobool.not21 = icmp eq ptr %add.ptr.i.i, null
  %tobool.not = or i1 %tobool.not.i11, %tobool.not21
  br i1 %tobool.not, label %if.then4, label %if.end5

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @kfree_skb_reason(ptr noundef nonnull %call.i.i.i.i, i32 noundef 0) #4
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %1 = ptrtoint ptr %lkb to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %lkb, align 8
  %3 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 112)
  %4 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 1, ptr %add.ptr.i.i, align 8
  %lkb_nodeid.i = getelementptr inbounds %struct.dlm_lkb, ptr %lkb, i32 0, i32 2
  %5 = ptrtoint ptr %lkb_nodeid.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %lkb_nodeid.i, align 8
  %nodeid.i = getelementptr i8, ptr %call.i, i32 12
  %7 = ptrtoint ptr %nodeid.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %nodeid.i, align 8
  %lkb_ownpid.i = getelementptr inbounds %struct.dlm_lkb, ptr %lkb, i32 0, i32 3
  %8 = ptrtoint ptr %lkb_ownpid.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %lkb_ownpid.i, align 4
  %ownpid.i = getelementptr i8, ptr %call.i, i32 16
  %10 = ptrtoint ptr %ownpid.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %ownpid.i, align 4
  %lkb_id.i = getelementptr inbounds %struct.dlm_lkb, ptr %lkb, i32 0, i32 4
  %11 = ptrtoint ptr %lkb_id.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %lkb_id.i, align 8
  %id.i = getelementptr i8, ptr %call.i, i32 20
  %13 = ptrtoint ptr %id.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %id.i, align 8
  %lkb_remid.i = getelementptr inbounds %struct.dlm_lkb, ptr %lkb, i32 0, i32 5
  %14 = ptrtoint ptr %lkb_remid.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %lkb_remid.i, align 4
  %remid.i = getelementptr i8, ptr %call.i, i32 24
  %16 = ptrtoint ptr %remid.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %remid.i, align 4
  %lkb_status.i = getelementptr inbounds %struct.dlm_lkb, ptr %lkb, i32 0, i32 10
  %17 = ptrtoint ptr %lkb_status.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %lkb_status.i, align 8
  %status.i = getelementptr i8, ptr %call.i, i32 36
  %19 = ptrtoint ptr %status.i to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %18, ptr %status.i, align 8
  %lkb_grmode.i = getelementptr inbounds %struct.dlm_lkb, ptr %lkb, i32 0, i32 12
  %20 = ptrtoint ptr %lkb_grmode.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %lkb_grmode.i, align 2
  %grmode.i = getelementptr i8, ptr %call.i, i32 37
  %22 = ptrtoint ptr %grmode.i to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %21, ptr %grmode.i, align 1
  %lkb_rqmode.i = getelementptr inbounds %struct.dlm_lkb, ptr %lkb, i32 0, i32 11
  %23 = ptrtoint ptr %lkb_rqmode.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %lkb_rqmode.i, align 1
  %rqmode.i = getelementptr i8, ptr %call.i, i32 38
  %25 = ptrtoint ptr %rqmode.i to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %24, ptr %rqmode.i, align 2
  %26 = getelementptr inbounds %struct.dlm_lkb, ptr %lkb, i32 0, i32 38
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %26, align 8
  %tobool.not.i12 = icmp eq ptr %28, null
  br i1 %tobool.not.i12, label %if.end5.if.end.i14_crit_edge, label %if.then.i

if.end5.if.end.i14_crit_edge:                     ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end.i14

if.then.i:                                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #6
  %xid.i = getelementptr inbounds %struct.dlm_user_args, ptr %28, i32 0, i32 7
  %29 = ptrtoint ptr %xid.i to i32
  call void @__asan_load8_noabort(i32 %29)
  %30 = load i64, ptr %xid.i, align 8
  %xid1.i = getelementptr i8, ptr %call.i, i32 28
  %31 = ptrtoint ptr %xid1.i to i32
  call void @__asan_store8_noabort(i32 %31)
  store i64 %30, ptr %xid1.i, align 8
  br label %if.end.i14

if.end.i14:                                       ; preds = %if.then.i, %if.end5.if.end.i14_crit_edge
  %tobool2.not.i13 = icmp eq ptr %2, null
  br i1 %tobool2.not.i13, label %if.end.i14.fill_data.exit_crit_edge, label %if.then3.i15

if.end.i14.fill_data.exit_crit_edge:              ; preds = %if.end.i14
  call void @__sanitizer_cov_trace_pc() #6
  br label %fill_data.exit

if.then3.i15:                                     ; preds = %if.end.i14
  call void @__sanitizer_cov_trace_pc() #6
  %32 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %2, align 4
  %ls_global_id.i = getelementptr inbounds %struct.dlm_ls, ptr %33, i32 0, i32 2
  %34 = ptrtoint ptr %ls_global_id.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %ls_global_id.i, align 4
  %lockspace_id.i = getelementptr i8, ptr %call.i, i32 8
  %36 = ptrtoint ptr %lockspace_id.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %35, ptr %lockspace_id.i, align 4
  %res_length.i = getelementptr inbounds %struct.dlm_rsb, ptr %2, i32 0, i32 4
  %37 = ptrtoint ptr %res_length.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %res_length.i, align 4
  %resource_namelen.i = getelementptr i8, ptr %call.i, i32 44
  %39 = ptrtoint ptr %resource_namelen.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %38, ptr %resource_namelen.i, align 8
  %resource_name.i = getelementptr i8, ptr %call.i, i32 48
  %res_name.i = getelementptr inbounds %struct.dlm_rsb, ptr %2, i32 0, i32 23
  %40 = load i32, ptr %res_length.i, align 4
  %41 = call ptr @memcpy(ptr %resource_name.i, ptr %res_name.i, i32 %40)
  br label %fill_data.exit

fill_data.exit:                                   ; preds = %if.then3.i15, %if.end.i14.fill_data.exit_crit_edge
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i.i, i32 0, i32 19
  %42 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %data.i, align 4
  %tail.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i.i, i32 0, i32 16
  %44 = ptrtoint ptr %tail.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %tail.i.i.i.i, align 8
  %sub.ptr.lhs.cast.i.i.i = ptrtoint ptr %45 to i32
  %sub.ptr.rhs.cast.i.i.i = ptrtoint ptr %43 to i32
  %sub.ptr.sub.i.i.i = sub i32 %sub.ptr.lhs.cast.i.i.i, %sub.ptr.rhs.cast.i.i.i
  %46 = ptrtoint ptr %43 to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %sub.ptr.sub.i.i.i, ptr %43, align 4
  %47 = load i32, ptr @listener_nlportid, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 21) to i32))
  %48 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 21), align 4
  %call.i.i.i = tail call i32 @netlink_unicast(ptr noundef %48, ptr noundef nonnull %call.i.i.i.i, i32 noundef %47, i32 noundef 64) #4
  br label %cleanup

cleanup:                                          ; preds = %fill_data.exit, %if.then4, %if.then3.i, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @user_cmd(ptr nocapture noundef readnone %skb, ptr nocapture noundef readonly %info) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %snd_portid = getelementptr inbounds %struct.genl_info, ptr %info, i32 0, i32 1
  %0 = ptrtoint ptr %snd_portid to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %snd_portid, align 4
  store i32 %1, ptr @listener_nlportid, align 4
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef %1) #7
  ret i32 0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @genlmsg_put(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__alloc_skb(i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nla_reserve(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @netlink_unicast(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

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
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 7)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 7)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }
attributes #7 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !8, !9, !10, !12}
!llvm.module.flags = !{!14, !15, !16, !17, !18, !19, !20, !21}
!llvm.ident = !{!22}

!0 = !{ptr @family, !1, !"family", i1 false, i1 false}
!1 = !{!"../fs/dlm/netlink.c", i32 73, i32 27}
!2 = !{ptr @dlm_nl_ops, !3, !"dlm_nl_ops", i1 false, i1 false}
!3 = !{!"../fs/dlm/netlink.c", i32 65, i32 36}
!4 = !{ptr @.str, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../fs/dlm/netlink.c", i32 61, i32 2}
!6 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @user_cmd._entry, !5, !"_entry", i1 false, i1 false}
!9 = !{ptr @user_cmd._entry_ptr, !5, !"_entry_ptr", i1 false, i1 false}
!10 = !{ptr @listener_nlportid, !11, !"listener_nlportid", i1 false, i1 false}
!11 = !{!"../fs/dlm/netlink.c", i32 14, i32 17}
!12 = !{ptr @dlm_nl_seqnum, !13, !"dlm_nl_seqnum", i1 false, i1 false}
!13 = !{!"../fs/dlm/netlink.c", i32 13, i32 17}
!14 = !{i32 1, !"wchar_size", i32 2}
!15 = !{i32 1, !"min_enum_size", i32 4}
!16 = !{i32 8, !"branch-target-enforcement", i32 0}
!17 = !{i32 8, !"sign-return-address", i32 0}
!18 = !{i32 8, !"sign-return-address-all", i32 0}
!19 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!20 = !{i32 7, !"uwtable", i32 1}
!21 = !{i32 7, !"frame-pointer", i32 2}
!22 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
