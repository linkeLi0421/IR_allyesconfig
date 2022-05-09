; ModuleID = '/llk/IR_all_yes/net/openvswitch/flow.c_pt.bc'
source_filename = "../net/openvswitch/flow.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.lock_class_key = type { %union.anon.26 }
%union.anon.26 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.static_key_false = type { %struct.static_key }
%struct.static_key = type { %struct.atomic_t, %union.anon.118 }
%struct.atomic_t = type { i32 }
%union.anon.118 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.sk_buff = type { %union.anon.28, %union.anon.160, %union.anon.161, [48 x i8], %union.anon.162, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.164, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon.28 = type { %struct.anon.29 }
%struct.anon.29 = type { ptr, ptr, %union.anon.30 }
%union.anon.30 = type { ptr }
%union.anon.160 = type { ptr }
%union.anon.161 = type { i64 }
%union.anon.162 = type { %struct.anon.163 }
%struct.anon.163 = type { i32, ptr }
%union.anon.164 = type { %struct.anon.165 }
%struct.anon.165 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.166, i32, i32, i32, i16, i16, %union.anon.168, i32, %union.anon.169, %union.anon.170, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.166 = type { i32 }
%union.anon.168 = type { i32 }
%union.anon.169 = type { i32 }
%union.anon.170 = type { i16 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.sw_flow = type { %struct.callback_head, %struct.anon, %struct.anon, i32, %struct.sw_flow_key, %struct.sw_flow_id, %struct.cpumask, ptr, ptr, [0 x ptr] }
%struct.callback_head = type { ptr, ptr }
%struct.anon = type { [2 x %struct.hlist_node], i32 }
%struct.sw_flow_key = type { [255 x i8], i8, %struct.ip_tunnel_key, %struct.anon.3, i8, i8, i32, i32, %struct.anon.4, i8, i8, %union.anon.5, i16, %struct.anon.7, %union.anon.8, %struct.anon.20 }
%struct.ip_tunnel_key = type { i64, %union.anon, i16, i8, i8, i32, i16, i16 }
%union.anon = type { %struct.anon.1 }
%struct.anon.1 = type { %struct.in6_addr, %struct.in6_addr }
%struct.in6_addr = type { %union.anon.2 }
%union.anon.2 = type { [4 x i32] }
%struct.anon.3 = type <{ i32, i32, i16 }>
%struct.anon.4 = type { [6 x i8], [6 x i8], %struct.vlan_head, %struct.vlan_head, i16 }
%struct.vlan_head = type { i16, i16 }
%union.anon.5 = type { %struct.anon.6 }
%struct.anon.6 = type { i8, i8, i8, i8 }
%struct.anon.7 = type { i16, i16, i16 }
%union.anon.8 = type { %struct.anon.14 }
%struct.anon.14 = type { %struct.anon.15, i32, %union.anon.16 }
%struct.anon.15 = type { %struct.in6_addr, %struct.in6_addr }
%union.anon.16 = type { %struct.anon.17 }
%struct.anon.17 = type { %struct.in6_addr, %struct.in6_addr }
%struct.anon.20 = type { %struct.anon.21, i32, %struct.ovs_key_ct_labels }
%struct.anon.21 = type { i16, i16 }
%struct.ovs_key_ct_labels = type { %union.anon.22 }
%union.anon.22 = type { [4 x i32] }
%struct.sw_flow_id = type { i32, %union.anon.23 }
%union.anon.23 = type { [4 x i32] }
%struct.cpumask = type { [1 x i32] }
%struct.sw_flow_stats = type { i64, i64, i32, %struct.spinlock, i16 }
%struct.spinlock = type { %union.anon.24 }
%union.anon.24 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.25 }
%union.anon.25 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.ovs_flow_stats = type { i64, i64 }
%struct.iphdr = type { i8, i8, i16, i16, i16, i8, i8, i16, i32, i32 }
%struct.skb_shared_info = type { i8, i8, i8, i8, i16, i16, ptr, %struct.skb_shared_hwtstamps, i32, i32, %struct.atomic_t, ptr, [17 x %struct.bio_vec] }
%struct.skb_shared_hwtstamps = type { i64 }
%struct.bio_vec = type { ptr, i32, i32 }
%struct.tcphdr = type { i16, i16, i32, i32, i16, i16, i16, i16 }
%struct.udphdr = type { i16, i16, i16, i16 }
%struct.sctphdr = type { i16, i16, i32, i32 }
%struct.icmphdr = type { i8, i8, i16, %union.anon.181 }
%union.anon.181 = type { i32 }
%struct.arp_eth_header = type { i16, i16, i8, i8, i16, [6 x i8], [4 x i8], [6 x i8], [4 x i8] }
%struct.anon.13 = type { [6 x i8], [6 x i8] }
%struct.ipv6hdr = type { i8, [3 x i8], i16, i8, i8, %struct.in6_addr, %struct.in6_addr }
%struct.ovs_nsh_key_base = type { i8, i8, i8, i8, i32 }
%struct.nshhdr = type { i16, i8, i8, i32, %union.anon.185 }
%union.anon.185 = type { %struct.nsh_md1_ctx }
%struct.nsh_md1_ctx = type { [4 x i32] }
%struct.ethhdr = type { [6 x i8], [6 x i8], i16 }
%struct.llc_snap_hdr = type { i8, i8, i8, [3 x i8], i16 }
%struct.ip_tunnel_info = type { %struct.ip_tunnel_key, %struct.dst_cache, i8, i8 }
%struct.dst_cache = type { ptr, i32 }
%struct.vport = type { ptr, ptr, ptr, ptr, i16, %struct.hlist_node, %struct.hlist_node, ptr, %struct.list_head, %struct.callback_head }
%struct.list_head = type { ptr, ptr }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.31, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.159, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon.31 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.hlist_head = type { ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.possible_net_t = type { ptr }
%union.anon.159 = type { ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
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
%struct.skb_ext = type { %struct.refcount_struct, [4 x i8], i8, [7 x i8], [0 x i8] }
%struct.tc_skb_ext = type { i32, i16, i16, i8 }
%struct.icmp6hdr = type { i8, i8, i16, %union.anon.184 }
%union.anon.184 = type { [1 x i32] }
%struct.nd_msg = type { %struct.icmp6hdr, %struct.in6_addr, [0 x i8] }
%struct.anon.18 = type { %struct.in6_addr, [6 x i8], [6 x i8] }
%struct.nd_opt_hdr = type { i8, i8 }

@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@ovs_flow_stats_update.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"net/openvswitch/flow.c\00", [41 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@ovs_flow_stats_update.__warned.2 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@flow_stats_cache = external dso_local local_unnamed_addr global ptr, align 4
@ovs_flow_stats_update.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.3 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"&new_stats->lock\00", [47 x i8] zeroinitializer }, align 32
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@ovs_flow_stats_get.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@ovs_flow_stats_clear.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.4 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"suspicious rcu_dereference_protected() usage\00", [51 x i8] zeroinitializer }, align 32
@tc_recirc_sharing_support = external dso_local global %struct.static_key_false, align 4
@cpu_max_bits_warn.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.5 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/cpumask.h\00", [40 x i8] zeroinitializer }, align 32
@key_extract_mac_proto.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 16, i64 2048, i64 2054, i64 32821]
@__sancov_gen_cov_switch_values.6 = internal global [6 x i64] [i64 4, i64 8, i64 1, i64 6, i64 17, i64 132]
@__sancov_gen_cov_switch_values.7 = internal global [4 x i64] [i64 2, i64 16, i64 34525, i64 35151]
@__sancov_gen_cov_switch_values.8 = internal global [4 x i64] [i64 2, i64 32, i64 4294967225, i64 4294967274]
@__sancov_gen_cov_switch_values.9 = internal global [6 x i64] [i64 4, i64 8, i64 6, i64 17, i64 58, i64 132]
@__sancov_gen_cov_switch_values.10 = internal global [4 x i64] [i64 2, i64 8, i64 1, i64 2]
@__sancov_gen_cov_switch_values.11 = internal global [4 x i64] [i64 2, i64 16, i64 33024, i64 34984]
@__sancov_gen_cov_switch_values.12 = internal global [4 x i64] [i64 2, i64 16, i64 33024, i64 34984]
@__sancov_gen_cov_switch_values.13 = internal global [4 x i64] [i64 2, i64 16, i64 33024, i64 34984]
@__sancov_gen_cov_switch_values.14 = internal global [4 x i64] [i64 2, i64 16, i64 1, i64 65534]
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.28, i32 67, i32 10 }
@___asan_gen_.21 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.28, i32 105, i32 6 }
@___asan_gen_.28 = private constant [26 x i8] c"../net/openvswitch/flow.c\00", align 1
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.28, i32 162, i32 33 }
@___asan_gen_.30 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.31 = private unnamed_addr constant [27 x i8] c"../include/linux/cpumask.h\00", align 1
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.31, i32 108, i32 2 }
@llvm.compiler.used = appending global [6 x ptr] [ptr @.str, ptr @.str.1, ptr @ovs_flow_stats_update.__key, ptr @.str.3, ptr @.str.4, ptr @.str.5], section "llvm.metadata"
@0 = internal global [6 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ovs_flow_stats_update.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i64 @ovs_flow_used_time(i32 noundef %flow_jiffies) local_unnamed_addr #0 align 64 {
entry:
  %cur_ts = alloca %struct.timespec64, align 8
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %cur_ts) #7
  %0 = call ptr @memset(ptr %cur_ts, i32 255, i32 16)
  call void @ktime_get_ts64(ptr noundef nonnull %cur_ts) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %1 = load volatile i32, ptr @jiffies, align 128
  %sub = sub i32 %1, %flow_jiffies
  %call = call i32 @jiffies_to_msecs(i32 noundef %sub) #7
  %conv = zext i32 %call to i64
  %2 = ptrtoint ptr %cur_ts to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %cur_ts, align 8
  %conv2 = and i64 %3, 4294967295
  %mul = mul nuw nsw i64 %conv2, 1000
  %tv_nsec = getelementptr inbounds %struct.timespec64, ptr %cur_ts, i32 0, i32 1
  %4 = ptrtoint ptr %tv_nsec to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %tv_nsec, align 8
  %div = sdiv i32 %5, 1000000
  %conv3 = sext i32 %div to i64
  %add = sub nsw i64 %mul, %conv
  %sub4 = add nsw i64 %add, %conv3
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %cur_ts) #7
  ret i64 %sub4
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ktime_get_ts64(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @jiffies_to_msecs(i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ovs_flow_stats_update(ptr noundef %flow, i16 noundef zeroext %tcp_flags, ptr nocapture noundef readonly %skb) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !19) #7
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %cpu1 = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %cpu1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cpu1, align 4
  %len2 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %4 = ptrtoint ptr %len2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %len2, align 4
  %vlan_present = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 3
  %6 = ptrtoint ptr %vlan_present to i32
  call void @__asan_loadN_noabort(i32 %6, i32 4)
  %bf.load = load i32, ptr %vlan_present, align 2
  %7 = lshr i32 %bf.load, 29
  %8 = and i32 %7, 4
  %add = add i32 %8, %5
  %stats3 = getelementptr inbounds %struct.sw_flow, ptr %flow, i32 0, i32 9
  %arrayidx = getelementptr %struct.sw_flow, ptr %flow, i32 0, i32 9, i32 %3
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile ptr, ptr %arrayidx, align 4
  %call5 = tail call i32 @rcu_read_lock_held() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %land.lhs.true, label %entry.do.end12_crit_edge

entry.do.end12_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end12

land.lhs.true:                                    ; preds = %entry
  %call7 = tail call i32 @debug_lockdep_rcu_enabled() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %land.lhs.true.do.end12_crit_edge, label %land.lhs.true9

land.lhs.true.do.end12_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end12

land.lhs.true9:                                   ; preds = %land.lhs.true
  %.b201 = load i1, ptr @ovs_flow_stats_update.__warned, align 1
  br i1 %.b201, label %land.lhs.true9.do.end12_crit_edge, label %if.then

land.lhs.true9.do.end12_crit_edge:                ; preds = %land.lhs.true9
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end12

if.then:                                          ; preds = %land.lhs.true9
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @ovs_flow_stats_update.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 67, ptr noundef nonnull @.str.1) #7
  br label %do.end12

do.end12:                                         ; preds = %if.then, %land.lhs.true9.do.end12_crit_edge, %land.lhs.true.do.end12_crit_edge, %entry.do.end12_crit_edge
  %tobool14.not = icmp eq ptr %10, null
  br i1 %tobool14.not, label %if.else, label %if.then17, !prof !29

if.then17:                                        ; preds = %do.end12
  %lock = getelementptr inbounds %struct.sw_flow_stats, ptr %10, i32 0, i32 3
  tail call void @_raw_spin_lock(ptr noundef %lock) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp = icmp eq i32 %3, 0
  br i1 %cmp, label %land.lhs.true19, label %if.then17.if.end152_crit_edge

if.then17.if.end152_crit_edge:                    ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end152

land.lhs.true19:                                  ; preds = %if.then17
  %stats_last_writer = getelementptr inbounds %struct.sw_flow, ptr %flow, i32 0, i32 3
  %11 = ptrtoint ptr %stats_last_writer to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %stats_last_writer, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %cmp20.not = icmp eq i32 %12, 0
  br i1 %cmp20.not, label %land.lhs.true19.if.end152_crit_edge, label %if.then28, !prof !30

land.lhs.true19.if.end152_crit_edge:              ; preds = %land.lhs.true19
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end152

if.then28:                                        ; preds = %land.lhs.true19
  call void @__sanitizer_cov_trace_pc() #9
  %13 = ptrtoint ptr %stats_last_writer to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %stats_last_writer, align 8
  br label %if.end152

if.else:                                          ; preds = %do.end12
  %14 = ptrtoint ptr %stats3 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile ptr, ptr %stats3, align 8
  %call38 = tail call i32 @rcu_read_lock_held() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call38)
  %tobool39.not = icmp eq i32 %call38, 0
  br i1 %tobool39.not, label %land.lhs.true40, label %if.else.do.end48_crit_edge

if.else.do.end48_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end48

land.lhs.true40:                                  ; preds = %if.else
  %call41 = tail call i32 @debug_lockdep_rcu_enabled() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call41)
  %tobool42.not = icmp eq i32 %call41, 0
  br i1 %tobool42.not, label %land.lhs.true40.do.end48_crit_edge, label %land.lhs.true43

land.lhs.true40.do.end48_crit_edge:               ; preds = %land.lhs.true40
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end48

land.lhs.true43:                                  ; preds = %land.lhs.true40
  %.b198200 = load i1, ptr @ovs_flow_stats_update.__warned.2, align 1
  br i1 %.b198200, label %land.lhs.true43.do.end48_crit_edge, label %if.then45

land.lhs.true43.do.end48_crit_edge:               ; preds = %land.lhs.true43
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end48

if.then45:                                        ; preds = %land.lhs.true43
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @ovs_flow_stats_update.__warned.2, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 76, ptr noundef nonnull @.str.1) #7
  br label %do.end48

do.end48:                                         ; preds = %if.then45, %land.lhs.true43.do.end48_crit_edge, %land.lhs.true40.do.end48_crit_edge, %if.else.do.end48_crit_edge
  %lock50 = getelementptr inbounds %struct.sw_flow_stats, ptr %15, i32 0, i32 3
  tail call void @_raw_spin_lock(ptr noundef %lock50) #7
  %stats_last_writer51 = getelementptr inbounds %struct.sw_flow, ptr %flow, i32 0, i32 3
  %16 = ptrtoint ptr %stats_last_writer51 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %stats_last_writer51, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %17, i32 %3)
  %cmp52.not = icmp eq i32 %17, %3
  br i1 %cmp52.not, label %do.end48.if.end152_crit_edge, label %if.then60, !prof !30

do.end48.if.end152_crit_edge:                     ; preds = %do.end48
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end152

if.then60:                                        ; preds = %do.end48
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %17)
  %cmp62.not = icmp eq i32 %17, -1
  br i1 %cmp62.not, label %if.then60.if.end149_crit_edge, label %land.lhs.true70, !prof !29

if.then60.if.end149_crit_edge:                    ; preds = %if.then60
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end149

land.lhs.true70:                                  ; preds = %if.then60
  %18 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile ptr, ptr %arrayidx, align 4
  %tobool78.not = icmp eq ptr %19, null
  br i1 %tobool78.not, label %if.then87, label %land.lhs.true70.if.end149_crit_edge, !prof !30

land.lhs.true70.if.end149_crit_edge:              ; preds = %land.lhs.true70
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end149

if.then87:                                        ; preds = %land.lhs.true70
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @flow_stats_cache to i32))
  %20 = load ptr, ptr @flow_stats_cache, align 4
  %call.i = tail call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %20, i32 noundef 2631680) #7
  %tobool90.not = icmp eq ptr %call.i, null
  br i1 %tobool90.not, label %if.then87.if.end149_crit_edge, label %cleanup, !prof !29

if.then87.if.end149_crit_edge:                    ; preds = %if.then87
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end149

cleanup:                                          ; preds = %if.then87
  call void @__sanitizer_cov_trace_pc() #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %21 = load volatile i32, ptr @jiffies, align 128
  %used = getelementptr inbounds %struct.sw_flow_stats, ptr %call.i, i32 0, i32 2
  %22 = ptrtoint ptr %used to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %used, align 8
  %23 = ptrtoint ptr %call.i to i32
  call void @__asan_store8_noabort(i32 %23)
  store i64 1, ptr %call.i, align 8
  %conv98 = sext i32 %add to i64
  %byte_count = getelementptr inbounds %struct.sw_flow_stats, ptr %call.i, i32 0, i32 1
  %24 = ptrtoint ptr %byte_count to i32
  call void @__asan_store8_noabort(i32 %24)
  store i64 %conv98, ptr %byte_count, align 8
  %tcp_flags99 = getelementptr inbounds %struct.sw_flow_stats, ptr %call.i, i32 0, i32 4
  %25 = ptrtoint ptr %tcp_flags99 to i32
  call void @__asan_store2_noabort(i32 %25)
  store i16 %tcp_flags, ptr %tcp_flags99, align 8
  %lock101 = getelementptr inbounds %struct.sw_flow_stats, ptr %call.i, i32 0, i32 3
  tail call void @__raw_spin_lock_init(ptr noundef %lock101, ptr noundef nonnull @.str.3, ptr noundef nonnull @ovs_flow_stats_update.__key, i16 noundef signext 3) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !31
  %26 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %26)
  store volatile ptr %call.i, ptr %arrayidx, align 4
  %cpu_used_mask = getelementptr inbounds %struct.sw_flow, ptr %flow, i32 0, i32 6
  tail call fastcc void @cpumask_set_cpu(i32 noundef %3, ptr noundef %cpu_used_mask)
  br label %unlock

if.end149:                                        ; preds = %if.then87.if.end149_crit_edge, %land.lhs.true70.if.end149_crit_edge, %if.then60.if.end149_crit_edge
  %27 = ptrtoint ptr %stats_last_writer51 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %3, ptr %stats_last_writer51, align 8
  br label %if.end152

if.end152:                                        ; preds = %if.end149, %do.end48.if.end152_crit_edge, %if.then28, %land.lhs.true19.if.end152_crit_edge, %if.then17.if.end152_crit_edge
  %stats.0 = phi ptr [ %10, %if.then28 ], [ %10, %land.lhs.true19.if.end152_crit_edge ], [ %10, %if.then17.if.end152_crit_edge ], [ %15, %if.end149 ], [ %15, %do.end48.if.end152_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %28 = load volatile i32, ptr @jiffies, align 128
  %used153 = getelementptr inbounds %struct.sw_flow_stats, ptr %stats.0, i32 0, i32 2
  %29 = ptrtoint ptr %used153 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %used153, align 8
  %30 = ptrtoint ptr %stats.0 to i32
  call void @__asan_load8_noabort(i32 %30)
  %31 = load i64, ptr %stats.0, align 8
  %inc = add i64 %31, 1
  store i64 %inc, ptr %stats.0, align 8
  %conv155 = sext i32 %add to i64
  %byte_count156 = getelementptr inbounds %struct.sw_flow_stats, ptr %stats.0, i32 0, i32 1
  %32 = ptrtoint ptr %byte_count156 to i32
  call void @__asan_load8_noabort(i32 %32)
  %33 = load i64, ptr %byte_count156, align 8
  %add157 = add i64 %33, %conv155
  store i64 %add157, ptr %byte_count156, align 8
  %tcp_flags159 = getelementptr inbounds %struct.sw_flow_stats, ptr %stats.0, i32 0, i32 4
  %34 = ptrtoint ptr %tcp_flags159 to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %tcp_flags159, align 8
  %or199 = or i16 %35, %tcp_flags
  store i16 %or199, ptr %tcp_flags159, align 8
  br label %unlock

unlock:                                           ; preds = %if.end152, %cleanup
  %stats.1 = phi ptr [ %stats.0, %if.end152 ], [ %15, %cleanup ]
  %lock162 = getelementptr inbounds %struct.sw_flow_stats, ptr %stats.1, i32 0, i32 3
  tail call void @_raw_spin_unlock(ptr noundef %lock162) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @cpumask_set_cpu(i32 noundef %cpu, ptr noundef %dstp) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %0 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %0, i32 %cpu)
  %cmp.not.i.i = icmp ugt i32 %0, %cpu
  br i1 %cmp.not.i.i, label %entry.cpumask_check.exit_crit_edge, label %land.rhs.i.i

entry.cpumask_check.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cpumask_check.exit

land.rhs.i.i:                                     ; preds = %entry
  %.b37.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i, label %land.rhs.i.i.cpumask_check.exit_crit_edge, label %if.then.i.i, !prof !30

land.rhs.i.i.cpumask_check.exit_crit_edge:        ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cpumask_check.exit

if.then.i.i:                                      ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 108, i32 noundef 9, ptr noundef null) #7
  br label %cpumask_check.exit

cpumask_check.exit:                               ; preds = %if.then.i.i, %land.rhs.i.i.cpumask_check.exit_crit_edge, %entry.cpumask_check.exit_crit_edge
  tail call void @_set_bit(i32 noundef %cpu, ptr noundef %dstp) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ovs_flow_stats_get(ptr noundef %flow, ptr nocapture noundef %ovs_stats, ptr nocapture noundef %used, ptr nocapture noundef %tcp_flags) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %used to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %used, align 4
  %1 = ptrtoint ptr %tcp_flags to i32
  call void @__asan_store2_noabort(i32 %1)
  store i16 0, ptr %tcp_flags, align 2
  %2 = call ptr @memset(ptr %ovs_stats, i32 0, i32 16)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %3 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp47.not = icmp eq i32 %3, 0
  br i1 %cmp47.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %n_bytes = getelementptr inbounds %struct.ovs_flow_stats, ptr %ovs_stats, i32 0, i32 1
  %cpu_used_mask = getelementptr inbounds %struct.sw_flow, ptr %flow, i32 0, i32 6
  br label %for.body

for.body:                                         ; preds = %if.end26.for.body_crit_edge, %for.body.lr.ph
  %cpu.048 = phi i32 [ 0, %for.body.lr.ph ], [ %call27, %if.end26.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.sw_flow, ptr %flow, i32 0, i32 9, i32 %cpu.048
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %arrayidx, align 4
  %call = tail call i32 @lockdep_ovsl_is_held() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %lor.lhs.false, label %for.body.do.end10_crit_edge

for.body.do.end10_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end10

lor.lhs.false:                                    ; preds = %for.body
  %call3 = tail call i32 @rcu_read_lock_held() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %land.lhs.true, label %lor.lhs.false.do.end10_crit_edge

lor.lhs.false.do.end10_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end10

land.lhs.true:                                    ; preds = %lor.lhs.false
  %call5 = tail call i32 @debug_lockdep_rcu_enabled() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %land.lhs.true.do.end10_crit_edge, label %land.lhs.true7

land.lhs.true.do.end10_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end10

land.lhs.true7:                                   ; preds = %land.lhs.true
  %.b46 = load i1, ptr @ovs_flow_stats_get.__warned, align 1
  br i1 %.b46, label %land.lhs.true7.do.end10_crit_edge, label %if.then

land.lhs.true7.do.end10_crit_edge:                ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end10

if.then:                                          ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @ovs_flow_stats_get.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 138, ptr noundef nonnull @.str.1) #7
  br label %do.end10

do.end10:                                         ; preds = %if.then, %land.lhs.true7.do.end10_crit_edge, %land.lhs.true.do.end10_crit_edge, %lor.lhs.false.do.end10_crit_edge, %for.body.do.end10_crit_edge
  %tobool12.not = icmp eq ptr %5, null
  br i1 %tobool12.not, label %do.end10.if.end26_crit_edge, label %if.then13

do.end10.if.end26_crit_edge:                      ; preds = %do.end10
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end26

if.then13:                                        ; preds = %do.end10
  %lock = getelementptr inbounds %struct.sw_flow_stats, ptr %5, i32 0, i32 3
  tail call void @_raw_spin_lock_bh(ptr noundef %lock) #7
  %6 = ptrtoint ptr %used to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %used, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool14.not = icmp eq i32 %7, 0
  br i1 %tobool14.not, label %if.then13.if.then18_crit_edge, label %lor.lhs.false15

if.then13.if.then18_crit_edge:                    ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then18

lor.lhs.false15:                                  ; preds = %if.then13
  %used16 = getelementptr inbounds %struct.sw_flow_stats, ptr %5, i32 0, i32 2
  %8 = ptrtoint ptr %used16 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %used16, align 8
  %sub = sub i32 %7, %9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp17 = icmp slt i32 %sub, 0
  br i1 %cmp17, label %lor.lhs.false15.if.then18_crit_edge, label %lor.lhs.false15.if.end20_crit_edge

lor.lhs.false15.if.end20_crit_edge:               ; preds = %lor.lhs.false15
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end20

lor.lhs.false15.if.then18_crit_edge:              ; preds = %lor.lhs.false15
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then18

if.then18:                                        ; preds = %lor.lhs.false15.if.then18_crit_edge, %if.then13.if.then18_crit_edge
  %used19 = getelementptr inbounds %struct.sw_flow_stats, ptr %5, i32 0, i32 2
  %10 = ptrtoint ptr %used19 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %used19, align 8
  %12 = ptrtoint ptr %used to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %used, align 4
  br label %if.end20

if.end20:                                         ; preds = %if.then18, %lor.lhs.false15.if.end20_crit_edge
  %tcp_flags21 = getelementptr inbounds %struct.sw_flow_stats, ptr %5, i32 0, i32 4
  %13 = ptrtoint ptr %tcp_flags21 to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %tcp_flags21, align 8
  %15 = ptrtoint ptr %tcp_flags to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %tcp_flags, align 2
  %or45 = or i16 %16, %14
  store i16 %or45, ptr %tcp_flags, align 2
  %17 = ptrtoint ptr %5 to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %5, align 8
  %19 = ptrtoint ptr %ovs_stats to i32
  call void @__asan_load8_noabort(i32 %19)
  %20 = load i64, ptr %ovs_stats, align 8
  %add = add i64 %20, %18
  store i64 %add, ptr %ovs_stats, align 8
  %byte_count = getelementptr inbounds %struct.sw_flow_stats, ptr %5, i32 0, i32 1
  %21 = ptrtoint ptr %byte_count to i32
  call void @__asan_load8_noabort(i32 %21)
  %22 = load i64, ptr %byte_count, align 8
  %23 = ptrtoint ptr %n_bytes to i32
  call void @__asan_load8_noabort(i32 %23)
  %24 = load i64, ptr %n_bytes, align 8
  %add24 = add i64 %24, %22
  store i64 %add24, ptr %n_bytes, align 8
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock) #7
  br label %if.end26

if.end26:                                         ; preds = %if.end20, %do.end10.if.end26_crit_edge
  %call27 = tail call i32 @cpumask_next(i32 noundef %cpu.048, ptr noundef %cpu_used_mask) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %25 = load i32, ptr @nr_cpu_ids, align 4
  %cmp = icmp ult i32 %call27, %25
  br i1 %cmp, label %if.end26.for.body_crit_edge, label %if.end26.for.end_crit_edge

if.end26.for.end_crit_edge:                       ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

if.end26.for.body_crit_edge:                      ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end:                                          ; preds = %if.end26.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lockdep_ovsl_is_held() local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @cpumask_next(i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ovs_flow_stats_clear(ptr noundef readonly %flow) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %0 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %cmp21.not = icmp eq i32 %0, 0
  br i1 %cmp21.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %cpu_used_mask = getelementptr inbounds %struct.sw_flow, ptr %flow, i32 0, i32 6
  br label %for.body

for.body:                                         ; preds = %if.end9.for.body_crit_edge, %for.body.lr.ph
  %cpu.022 = phi i32 [ 0, %for.body.lr.ph ], [ %call10, %if.end9.for.body_crit_edge ]
  %call = tail call i32 @lockdep_ovsl_is_held() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.lhs.true, label %for.body.do.end_crit_edge

for.body.do.end_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

land.lhs.true:                                    ; preds = %for.body
  %call1 = tail call i32 @debug_lockdep_rcu_enabled() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %land.lhs.true.do.end_crit_edge, label %land.lhs.true3

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

land.lhs.true3:                                   ; preds = %land.lhs.true
  %.b20 = load i1, ptr @ovs_flow_stats_clear.__warned, align 1
  br i1 %.b20, label %land.lhs.true3.do.end_crit_edge, label %if.then

land.lhs.true3.do.end_crit_edge:                  ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

if.then:                                          ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @ovs_flow_stats_clear.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 162, ptr noundef nonnull @.str.4) #7
  br label %do.end

do.end:                                           ; preds = %if.then, %land.lhs.true3.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %for.body.do.end_crit_edge
  %arrayidx = getelementptr %struct.sw_flow, ptr %flow, i32 0, i32 9, i32 %cpu.022
  %1 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %arrayidx, align 4
  %tobool6.not = icmp eq ptr %2, null
  br i1 %tobool6.not, label %do.end.if.end9_crit_edge, label %if.then7

do.end.if.end9_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end9

if.then7:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  %lock = getelementptr inbounds %struct.sw_flow_stats, ptr %2, i32 0, i32 3
  tail call void @_raw_spin_lock_bh(ptr noundef %lock) #7
  %tcp_flags = getelementptr inbounds %struct.sw_flow_stats, ptr %2, i32 0, i32 4
  %3 = ptrtoint ptr %tcp_flags to i32
  call void @__asan_store2_noabort(i32 %3)
  store i16 0, ptr %tcp_flags, align 8
  %4 = call ptr @memset(ptr %2, i32 0, i32 20)
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock) #7
  br label %if.end9

if.end9:                                          ; preds = %if.then7, %do.end.if.end9_crit_edge
  %call10 = tail call i32 @cpumask_next(i32 noundef %cpu.022, ptr noundef %cpu_used_mask) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %5 = load i32, ptr @nr_cpu_ids, align 4
  %cmp = icmp ult i32 %call10, %5
  br i1 %cmp, label %if.end9.for.body_crit_edge, label %if.end9.for.end_crit_edge

if.end9.for.end_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

if.end9.for.body_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end:                                          ; preds = %if.end9.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ovs_flow_key_update_l3l4(ptr noundef %skb, ptr noundef %key) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @key_extract_l3l4(ptr noundef %skb, ptr noundef %key)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @key_extract_l3l4(ptr noundef %skb, ptr noundef %key) unnamed_addr #0 align 64 {
entry:
  %frag_off.i = alloca i16, align 2
  %payload_ofs.i = alloca i32, align 4
  %flags.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %type = getelementptr inbounds %struct.sw_flow_key, ptr %key, i32 0, i32 8, i32 4
  %0 = ptrtoint ptr %type to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %type, align 4
  %2 = zext i16 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i16 %1, label %if.else162 [
    i16 2048, label %if.then
    i16 2054, label %entry.if.then120_crit_edge
    i16 -32715, label %entry.if.then120_crit_edge663
  ]

entry.if.then120_crit_edge663:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then120

entry.if.then120_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then120

if.then:                                          ; preds = %entry
  %head.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %3 = ptrtoint ptr %head.i.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %head.i.i.i, align 8
  %network_header.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %5 = ptrtoint ptr %network_header.i.i.i to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %network_header.i.i.i, align 4
  %conv.i.i.i = zext i16 %6 to i32
  %add.ptr.i.i.i = getelementptr i8, ptr %4, i32 %conv.i.i.i
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %7 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %data.i.i, align 4
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %add.ptr.i.i.i to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %8 to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  %add.i = add i32 %sub.ptr.sub.i.i, 20
  %len1.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %9 = ptrtoint ptr %len1.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %len1.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %add.i)
  %cmp.i.i = icmp ult i32 %10, %add.i
  br i1 %cmp.i.i, label %if.then.if.then7_crit_edge, label %if.end.i.i, !prof !29

if.then.if.then7_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then7

if.end.i.i:                                       ; preds = %if.then
  %data_len.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %11 = ptrtoint ptr %data_len.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %data_len.i.i.i.i, align 8
  %sub.i.i.i.i = sub i32 %10, %12
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %sub.i.i.i.i)
  %cmp.not.i.i.i = icmp ugt i32 %add.i, %sub.i.i.i.i
  br i1 %cmp.not.i.i.i, label %pskb_may_pull.exit.i.i, label %if.end.i.i.if.end.i_crit_edge, !prof !29

if.end.i.i.if.end.i_crit_edge:                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

pskb_may_pull.exit.i.i:                           ; preds = %if.end.i.i
  %sub.i.i.i = sub i32 %add.i, %sub.i.i.i.i
  %call13.i.i.i = tail call ptr @__pskb_pull_tail(ptr noundef %skb, i32 noundef %sub.i.i.i) #7
  %cmp14.i.not.i.i = icmp eq ptr %call13.i.i.i, null
  br i1 %cmp14.i.not.i.i, label %if.then4, label %pskb_may_pull.exit.i.i.if.end.i_crit_edge

pskb_may_pull.exit.i.i.if.end.i_crit_edge:        ; preds = %pskb_may_pull.exit.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

if.end.i:                                         ; preds = %pskb_may_pull.exit.i.i.if.end.i_crit_edge, %if.end.i.i.if.end.i_crit_edge
  %13 = ptrtoint ptr %head.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %head.i.i.i, align 8
  %15 = ptrtoint ptr %network_header.i.i.i to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %network_header.i.i.i, align 4
  %conv.i.i.i.i = zext i16 %16 to i32
  %add.ptr.i.i.i.i = getelementptr i8, ptr %14, i32 %conv.i.i.i.i
  %17 = ptrtoint ptr %add.ptr.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %bf.load.i.i = load i8, ptr %add.ptr.i.i.i.i, align 4
  %bf.clear.i.i = shl i8 %bf.load.i.i, 2
  %18 = and i8 %bf.clear.i.i, 60
  call void @__sanitizer_cov_trace_const_cmp1(i8 20, i8 %18)
  %cmp.i = icmp ult i8 %18, 20
  br i1 %cmp.i, label %if.end.i.if.then7_crit_edge, label %lor.rhs.i, !prof !29

if.end.i.if.then7_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then7

lor.rhs.i:                                        ; preds = %if.end.i
  %mul.i.i = zext i8 %18 to i32
  %19 = ptrtoint ptr %len1.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %len1.i.i, align 4
  %add5.i = add i32 %sub.ptr.sub.i.i, %mul.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %20, i32 %add5.i)
  %cmp6.i = icmp ult i32 %20, %add5.i
  br i1 %cmp6.i, label %lor.rhs.i.if.then7_crit_edge, label %if.end8, !prof !29

lor.rhs.i.if.then7_crit_edge:                     ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then7

if.then4:                                         ; preds = %pskb_may_pull.exit.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %21 = getelementptr inbounds %struct.sw_flow_key, ptr %key, i32 0, i32 11
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 0, ptr %21, align 4
  %23 = getelementptr inbounds %struct.sw_flow_key, ptr %key, i32 0, i32 14
  %24 = call ptr @memset(ptr %23, i32 0, i32 20)
  br label %cleanup351

if.then7:                                         ; preds = %lor.rhs.i.if.then7_crit_edge, %if.end.i.if.then7_crit_edge, %if.then.if.then7_crit_edge
  %25 = getelementptr inbounds %struct.sw_flow_key, ptr %key, i32 0, i32 11
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 0, ptr %25, align 4
  %27 = getelementptr inbounds %struct.sw_flow_key, ptr %key, i32 0, i32 14
  %28 = call ptr @memset(ptr %27, i32 0, i32 20)
  %29 = ptrtoint ptr %network_header.i.i.i to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %network_header.i.i.i, align 4
  %transport_header = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 19
  %31 = ptrtoint ptr %transport_header to i32
  call void @__asan_store2_noabort(i32 %31)
  store i16 %30, ptr %transport_header, align 2
  br label %cleanup351

if.end8:                                          ; preds = %lor.rhs.i
  %32 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %data.i.i, align 4
  %sub.ptr.lhs.cast.i.i.i = ptrtoint ptr %33 to i32
  %sub.ptr.rhs.cast.i.i.i = ptrtoint ptr %14 to i32
  %sub.ptr.sub.i.i.i = sub i32 %sub.ptr.lhs.cast.i.i.i, %sub.ptr.rhs.cast.i.i.i
  %conv.i.i28.i = trunc i32 %sub.ptr.sub.i.i.i to i16
  %transport_header.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 19
  %34 = trunc i32 %add5.i to i16
  %conv1.i.i = add i16 %conv.i.i28.i, %34
  %35 = ptrtoint ptr %transport_header.i.i.i to i32
  call void @__asan_store2_noabort(i32 %35)
  store i16 %conv1.i.i, ptr %transport_header.i.i.i, align 2
  %36 = ptrtoint ptr %head.i.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %head.i.i.i, align 8
  %38 = ptrtoint ptr %network_header.i.i.i to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %network_header.i.i.i, align 4
  %conv.i.i = zext i16 %39 to i32
  %add.ptr.i.i = getelementptr i8, ptr %37, i32 %conv.i.i
  %saddr = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i, i32 0, i32 8
  %40 = ptrtoint ptr %saddr to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %saddr, align 4
  %42 = getelementptr inbounds %struct.sw_flow_key, ptr %key, i32 0, i32 14
  %43 = ptrtoint ptr %42 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %41, ptr %42, align 8
  %daddr = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i, i32 0, i32 9
  %44 = ptrtoint ptr %daddr to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %daddr, align 4
  %dst = getelementptr inbounds %struct.sw_flow_key, ptr %key, i32 0, i32 14, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1
  %46 = ptrtoint ptr %dst to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %45, ptr %dst, align 4
  %protocol = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i, i32 0, i32 6
  %47 = ptrtoint ptr %protocol to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %protocol, align 1
  %49 = getelementptr inbounds %struct.sw_flow_key, ptr %key, i32 0, i32 11
  %50 = ptrtoint ptr %49 to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 %48, ptr %49, align 4
  %tos = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i, i32 0, i32 1
  %51 = ptrtoint ptr %tos to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %tos, align 1
  %tos11 = getelementptr inbounds %struct.sw_flow_key, ptr %key, i32 0, i32 11, i32 0, i32 1
  %53 = ptrtoint ptr %tos11 to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 %52, ptr %tos11, align 1
  %ttl = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i, i32 0, i32 5
  %54 = ptrtoint ptr %ttl to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %ttl, align 4
  %ttl12 = getelementptr inbounds %struct.sw_flow_key, ptr %key, i32 0, i32 11, i32 0, i32 2
  %56 = ptrtoint ptr %ttl12 to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 %55, ptr %ttl12, align 2
  %frag_off = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i, i32 0, i32 4
  %57 = ptrtoint ptr %frag_off to i32
  call void @__asan_load2_noabort(i32 %57)
  %58 = load i16, ptr %frag_off, align 2
  %and = and i16 %58, 8191
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %and)
  %tobool15.not = icmp eq i16 %and, 0
  br i1 %tobool15.not, label %if.end17, label %if.then16

if.then16:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  %frag = getelementptr inbounds %struct.sw_flow_key, ptr %key, i32 0, i32 11, i32 0, i32 3
  %59 = ptrtoint ptr %frag to i32
  call void @__asan_store1_noabort(i32 %59)
  store i8 2, ptr %frag, align 1
  %tp = getelementptr inbounds %struct.sw_flow_key, ptr %key, i32 0, i32 13
  %60 = call ptr @memset(ptr %tp, i32 0, i32 6)
  br label %cleanup351

if.end17:                                         ; preds = %if.end8
  %61 = and i16 %58, 8192
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %61)
  %tobool21.not = icmp eq i16 %61, 0
  br i1 %tobool21.not, label %lor.lhs.false, label %if.end17.if.end28_crit_edge

if.end17.if.end28_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end28

lor.lhs.false:                                    ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #9
  %end.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 17
  %62 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %end.i, align 4
  %gso_type = getelementptr inbounds %struct.skb_shared_info, ptr %63, i32 0, i32 8
  %64 = ptrtoint ptr %gso_type to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %gso_type, align 8
  %and23 = lshr i32 %65, 16
  %66 = trunc i32 %and23 to i8
  %67 = and i8 %66, 1
  br label %if.end28

if.end28:                                         ; preds = %lor.lhs.false, %if.end17.if.end28_crit_edge
  %.sink657 = phi i8 [ 1, %if.end17.if.end28_crit_edge ], [ %67, %lor.lhs.false ]
  %frag27 = getelementptr inbounds %struct.sw_flow_key, ptr %key, i32 0, i32 11, i32 0, i32 3
  %68 = ptrtoint ptr %frag27 to i32
  call void @__asan_store1_noabort(i32 %68)
  store i8 %.sink657, ptr %frag27, align 1
  %69 = zext i8 %48 to i64
  call void @__sanitizer_cov_trace_switch(i64 %69, ptr @__sancov_gen_cov_switch_values.6)
  switch i8 %48, label %if.end28.cleanup351_crit_edge [
    i8 6, label %if.then33
    i8 17, label %if.then53
    i8 -124, label %if.then71
    i8 1, label %if.then89
  ]

if.end28.cleanup351_crit_edge:                    ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup351

if.then33:                                        ; preds = %if.end28
  %call34 = tail call fastcc zeroext i1 @tcphdr_ok(ptr noundef %skb)
  br i1 %call34, label %if.then35, label %if.else45

if.then35:                                        ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #9
  %70 = ptrtoint ptr %head.i.i.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %head.i.i.i, align 8
  %72 = ptrtoint ptr %transport_header.i.i.i to i32
  call void @__asan_load2_noabort(i32 %72)
  %73 = load i16, ptr %transport_header.i.i.i, align 2
  %conv.i.i502 = zext i16 %73 to i32
  %add.ptr.i.i503 = getelementptr i8, ptr %71, i32 %conv.i.i502
  %74 = ptrtoint ptr %add.ptr.i.i503 to i32
  call void @__asan_load2_noabort(i32 %74)
  %75 = load i16, ptr %add.ptr.i.i503, align 4
  %tp37 = getelementptr inbounds %struct.sw_flow_key, ptr %key, i32 0, i32 13
  %76 = ptrtoint ptr %tp37 to i32
  call void @__asan_store2_noabort(i32 %76)
  store i16 %75, ptr %tp37, align 2
  %dest = getelementptr inbounds %struct.tcphdr, ptr %add.ptr.i.i503, i32 0, i32 1
  %77 = ptrtoint ptr %dest to i32
  call void @__asan_load2_noabort(i32 %77)
  %78 = load i16, ptr %dest, align 2
  %dst40 = getelementptr inbounds %struct.sw_flow_key, ptr %key, i32 0, i32 13, i32 1
  %79 = ptrtoint ptr %dst40 to i32
  call void @__asan_store2_noabort(i32 %79)
  store i16 %78, ptr %dst40, align 2
  %arrayidx = getelementptr [5 x i32], ptr %add.ptr.i.i503, i32 0, i32 3
  %80 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %80)
  %81 = load i16, ptr %arrayidx, align 4
  %82 = and i16 %81, 4095
  %flags = getelementptr inbounds %struct.sw_flow_key, ptr %key, i32 0, i32 13, i32 2
  %83 = ptrtoint ptr %flags to i32
  call void @__asan_store2_noabort(i32 %83)
  store i16 %82, ptr %flags, align 2
  br label %cleanup351

if.else45:                                        ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #9
  %tp46 = getelementptr inbounds %struct.sw_flow_key, ptr %key, i32 0, i32 13
  %84 = call ptr @memset(ptr %tp46, i32 0, i32 6)
  br label %cleanup351

if.then53:                                        ; preds = %if.end28
  %call54 = tail call fastcc zeroext i1 @udphdr_ok(ptr noundef %skb)
  br i1 %call54, label %if.then55, label %if.else63

if.then55:                                        ; preds = %if.then53
  call void @__sanitizer_cov_trace_pc() #9
  %85 = ptrtoint ptr %head.i.i.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %head.i.i.i, align 8
  %87 = ptrtoint ptr %transport_header.i.i.i to i32
  call void @__asan_load2_noabort(i32 %87)
  %88 = load i16, ptr %transport_header.i.i.i, align 2
  %conv.i.i506 = zext i16 %88 to i32
  %add.ptr.i.i507 = getelementptr i8, ptr %86, i32 %conv.i.i506
  %89 = ptrtoint ptr %add.ptr.i.i507 to i32
  call void @__asan_load2_noabort(i32 %89)
  %90 = load i16, ptr %add.ptr.i.i507, align 2
  %tp58 = getelementptr inbounds %struct.sw_flow_key, ptr %key, i32 0, i32 13
  %91 = ptrtoint ptr %tp58 to i32
  call void @__asan_store2_noabort(i32 %91)
  store i16 %90, ptr %tp58, align 2
  %dest60 = getelementptr inbounds %struct.udphdr, ptr %add.ptr.i.i507, i32 0, i32 1
  %92 = ptrtoint ptr %dest60 to i32
  call void @__asan_load2_noabort(i32 %92)
  %93 = load i16, ptr %dest60, align 2
  %dst62 = getelementptr inbounds %struct.sw_flow_key, ptr %key, i32 0, i32 13, i32 1
  %94 = ptrtoint ptr %dst62 to i32
  call void @__asan_store2_noabort(i32 %94)
  store i16 %93, ptr %dst62, align 2
  br label %cleanup351

if.else63:                                        ; preds = %if.then53
  call void @__sanitizer_cov_trace_pc() #9
  %tp64 = getelementptr inbounds %struct.sw_flow_key, ptr %key, i32 0, i32 13
  %95 = call ptr @memset(ptr %tp64, i32 0, i32 6)
  br label %cleanup351

if.then71:                                        ; preds = %if.end28
  %call72 = tail call fastcc zeroext i1 @sctphdr_ok(ptr noundef %skb)
  br i1 %call72, label %if.then73, label %if.else81

if.then73:                                        ; preds = %if.then71
  call void @__sanitizer_cov_trace_pc() #9
  %96 = ptrtoint ptr %head.i.i.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %head.i.i.i, align 8
  %98 = ptrtoint ptr %transport_header.i.i.i to i32
  call void @__asan_load2_noabort(i32 %98)
  %99 = load i16, ptr %transport_header.i.i.i, align 2
  %conv.i.i510 = zext i16 %99 to i32
  %add.ptr.i.i511 = getelementptr i8, ptr %97, i32 %conv.i.i510
  %100 = ptrtoint ptr %add.ptr.i.i511 to i32
  call void @__asan_load2_noabort(i32 %100)
  %101 = load i16, ptr %add.ptr.i.i511, align 4
  %tp76 = getelementptr inbounds %struct.sw_flow_key, ptr %key, i32 0, i32 13
  %102 = ptrtoint ptr %tp76 to i32
  call void @__asan_store2_noabort(i32 %102)
  store i16 %101, ptr %tp76, align 2
  %dest78 = getelementptr inbounds %struct.sctphdr, ptr %add.ptr.i.i511, i32 0, i32 1
  %103 = ptrtoint ptr %dest78 to i32
  call void @__asan_load2_noabort(i32 %103)
  %104 = load i16, ptr %dest78, align 2
  %dst80 = getelementptr inbounds %struct.sw_flow_key, ptr %key, i32 0, i32 13, i32 1
  %105 = ptrtoint ptr %dst80 to i32
  call void @__asan_store2_noabort(i32 %105)
  store i16 %104, ptr %dst80, align 2
  br label %cleanup351

if.else81:                                        ; preds = %if.then71
  call void @__sanitizer_cov_trace_pc() #9
  %tp82 = getelementptr inbounds %struct.sw_flow_key, ptr %key, i32 0, i32 13
  %106 = call ptr @memset(ptr %tp82, i32 0, i32 6)
  br label %cleanup351

if.then89:                                        ; preds = %if.end28
  %call90 = tail call fastcc zeroext i1 @icmphdr_ok(ptr noundef %skb)
  br i1 %call90, label %if.then91, label %if.else100

if.then91:                                        ; preds = %if.then89
  call void @__sanitizer_cov_trace_pc() #9
  %107 = ptrtoint ptr %head.i.i.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %head.i.i.i, align 8
  %109 = ptrtoint ptr %transport_header.i.i.i to i32
  call void @__asan_load2_noabort(i32 %109)
  %110 = load i16, ptr %transport_header.i.i.i, align 2
  %conv.i.i514 = zext i16 %110 to i32
  %add.ptr.i.i515 = getelementptr i8, ptr %108, i32 %conv.i.i514
  %111 = ptrtoint ptr %add.ptr.i.i515 to i32
  call void @__asan_load1_noabort(i32 %111)
  %112 = load i8, ptr %add.ptr.i.i515, align 4
  %conv94 = zext i8 %112 to i16
  %tp95 = getelementptr inbounds %struct.sw_flow_key, ptr %key, i32 0, i32 13
  %113 = ptrtoint ptr %tp95 to i32
  call void @__asan_store2_noabort(i32 %113)
  store i16 %conv94, ptr %tp95, align 2
  %code = getelementptr inbounds %struct.icmphdr, ptr %add.ptr.i.i515, i32 0, i32 1
  %114 = ptrtoint ptr %code to i32
  call void @__asan_load1_noabort(i32 %114)
  %115 = load i8, ptr %code, align 1
  %conv97 = zext i8 %115 to i16
  %dst99 = getelementptr inbounds %struct.sw_flow_key, ptr %key, i32 0, i32 13, i32 1
  %116 = ptrtoint ptr %dst99 to i32
  call void @__asan_store2_noabort(i32 %116)
  store i16 %conv97, ptr %dst99, align 2
  br label %cleanup351

if.else100:                                       ; preds = %if.then89
  call void @__sanitizer_cov_trace_pc() #9
  %tp101 = getelementptr inbounds %struct.sw_flow_key, ptr %key, i32 0, i32 13
  %117 = call ptr @memset(ptr %tp101, i32 0, i32 6)
  br label %cleanup351

if.then120:                                       ; preds = %entry.if.then120_crit_edge, %entry.if.then120_crit_edge663
  %head.i.i.i516 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %118 = ptrtoint ptr %head.i.i.i516 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %head.i.i.i516, align 8
  %network_header.i.i.i517 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %120 = ptrtoint ptr %network_header.i.i.i517 to i32
  call void @__asan_load2_noabort(i32 %120)
  %121 = load i16, ptr %network_header.i.i.i517, align 4
  %conv.i.i.i518 = zext i16 %121 to i32
  %add.ptr.i.i.i519 = getelementptr i8, ptr %119, i32 %conv.i.i.i518
  %data.i.i520 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %122 = ptrtoint ptr %data.i.i520 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %data.i.i520, align 4
  %sub.ptr.lhs.cast.i.i521 = ptrtoint ptr %add.ptr.i.i.i519 to i32
  %sub.ptr.rhs.cast.i.i522 = ptrtoint ptr %123 to i32
  %sub.ptr.sub.i.i523 = sub i32 %sub.ptr.lhs.cast.i.i521, %sub.ptr.rhs.cast.i.i522
  %add.i524 = add i32 %sub.ptr.sub.i.i523, 28
  %len.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %124 = ptrtoint ptr %len.i.i.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %len.i.i.i, align 4
  %data_len.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %126 = ptrtoint ptr %data_len.i.i.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %data_len.i.i.i, align 8
  %sub.i.i.i525 = sub i32 %125, %127
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i524, i32 %sub.i.i.i525)
  %cmp.not.i.i = icmp ugt i32 %add.i524, %sub.i.i.i525
  br i1 %cmp.not.i.i, label %if.end.i.i526, label %arphdr_ok.exit.thread, !prof !29

arphdr_ok.exit.thread:                            ; preds = %if.then120
  call void @__sanitizer_cov_trace_pc() #9
  %128 = ptrtoint ptr %head.i.i.i516 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %head.i.i.i516, align 8
  %130 = ptrtoint ptr %network_header.i.i.i517 to i32
  call void @__asan_load2_noabort(i32 %130)
  %131 = load i16, ptr %network_header.i.i.i517, align 4
  %conv.i626 = zext i16 %131 to i32
  %add.ptr.i627 = getelementptr i8, ptr %129, i32 %conv.i626
  br label %land.lhs.true

if.end.i.i526:                                    ; preds = %if.then120
  call void @__sanitizer_cov_trace_cmp4(i32 %125, i32 %add.i524)
  %cmp3.i.i = icmp ult i32 %125, %add.i524
  br i1 %cmp3.i.i, label %if.end.i.i526.if.else160_crit_edge, label %arphdr_ok.exit, !prof !29

if.end.i.i526.if.else160_crit_edge:               ; preds = %if.end.i.i526
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else160

arphdr_ok.exit:                                   ; preds = %if.end.i.i526
  %sub.i.i = sub i32 %add.i524, %sub.i.i.i525
  %call13.i.i = tail call ptr @__pskb_pull_tail(ptr noundef %skb, i32 noundef %sub.i.i) #7
  %cmp14.i.i.not = icmp eq ptr %call13.i.i, null
  %132 = ptrtoint ptr %head.i.i.i516 to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %head.i.i.i516, align 8
  %134 = ptrtoint ptr %network_header.i.i.i517 to i32
  call void @__asan_load2_noabort(i32 %134)
  %135 = load i16, ptr %network_header.i.i.i517, align 4
  %conv.i = zext i16 %135 to i32
  %add.ptr.i = getelementptr i8, ptr %133, i32 %conv.i
  br i1 %cmp14.i.i.not, label %arphdr_ok.exit.if.else160_crit_edge, label %arphdr_ok.exit.land.lhs.true_crit_edge

arphdr_ok.exit.land.lhs.true_crit_edge:           ; preds = %arphdr_ok.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true

arphdr_ok.exit.if.else160_crit_edge:              ; preds = %arphdr_ok.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else160

land.lhs.true:                                    ; preds = %arphdr_ok.exit.land.lhs.true_crit_edge, %arphdr_ok.exit.thread
  %add.ptr.i628 = phi ptr [ %add.ptr.i627, %arphdr_ok.exit.thread ], [ %add.ptr.i, %arphdr_ok.exit.land.lhs.true_crit_edge ]
  %136 = ptrtoint ptr %add.ptr.i628 to i32
  call void @__asan_loadN_noabort(i32 %136, i32 2)
  %137 = load i16, ptr %add.ptr.i628, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %137)
  %cmp126 = icmp eq i16 %137, 1
  br i1 %cmp126, label %land.lhs.true128, label %land.lhs.true.if.else160_crit_edge

land.lhs.true.if.else160_crit_edge:               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else160

land.lhs.true128:                                 ; preds = %land.lhs.true
  %ar_pro = getelementptr inbounds %struct.arp_eth_header, ptr %add.ptr.i628, i32 0, i32 1
  %138 = ptrtoint ptr %ar_pro to i32
  call void @__asan_loadN_noabort(i32 %138, i32 2)
  %139 = load i16, ptr %ar_pro, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 2048, i16 %139)
  %cmp130 = icmp eq i16 %139, 2048
  br i1 %cmp130, label %land.lhs.true132, label %land.lhs.true128.if.else160_crit_edge

land.lhs.true128.if.else160_crit_edge:            ; preds = %land.lhs.true128
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else160

land.lhs.true132:                                 ; preds = %land.lhs.true128
  %ar_hln = getelementptr inbounds %struct.arp_eth_header, ptr %add.ptr.i628, i32 0, i32 2
  %140 = ptrtoint ptr %ar_hln to i32
  call void @__asan_load1_noabort(i32 %140)
  %141 = load i8, ptr %ar_hln, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %141)
  %cmp134 = icmp eq i8 %141, 6
  br i1 %cmp134, label %land.lhs.true136, label %land.lhs.true132.if.else160_crit_edge

land.lhs.true132.if.else160_crit_edge:            ; preds = %land.lhs.true132
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else160

land.lhs.true136:                                 ; preds = %land.lhs.true132
  %ar_pln = getelementptr inbounds %struct.arp_eth_header, ptr %add.ptr.i628, i32 0, i32 3
  %142 = ptrtoint ptr %ar_pln to i32
  call void @__asan_load1_noabort(i32 %142)
  %143 = load i8, ptr %ar_pln, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %143)
  %cmp138 = icmp eq i8 %143, 4
  br i1 %cmp138, label %if.then140, label %land.lhs.true136.if.else160_crit_edge

land.lhs.true136.if.else160_crit_edge:            ; preds = %land.lhs.true136
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else160

if.then140:                                       ; preds = %land.lhs.true136
  call void @__sanitizer_cov_trace_pc() #9
  %ar_op = getelementptr inbounds %struct.arp_eth_header, ptr %add.ptr.i628, i32 0, i32 4
  %144 = ptrtoint ptr %ar_op to i32
  call void @__asan_loadN_noabort(i32 %144, i32 2)
  %145 = load i16, ptr %ar_op, align 1
  %146 = call i16 @llvm.umin.i16(i16 %145, i16 256)
  %147 = trunc i16 %146 to i8
  %148 = getelementptr inbounds %struct.sw_flow_key, ptr %key, i32 0, i32 11
  %149 = ptrtoint ptr %148 to i32
  call void @__asan_store1_noabort(i32 %149)
  store i8 %147, ptr %148, align 4
  %150 = getelementptr inbounds %struct.sw_flow_key, ptr %key, i32 0, i32 14
  %ar_sip = getelementptr inbounds %struct.arp_eth_header, ptr %add.ptr.i628, i32 0, i32 6
  %151 = ptrtoint ptr %ar_sip to i32
  call void @__asan_loadN_noabort(i32 %151, i32 4)
  %152 = load i32, ptr %ar_sip, align 1
  %153 = ptrtoint ptr %150 to i32
  call void @__asan_store4_noabort(i32 %153)
  store i32 %152, ptr %150, align 8
  %dst154 = getelementptr inbounds %struct.sw_flow_key, ptr %key, i32 0, i32 14, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1
  %ar_tip = getelementptr inbounds %struct.arp_eth_header, ptr %add.ptr.i628, i32 0, i32 8
  %154 = ptrtoint ptr %ar_tip to i32
  call void @__asan_loadN_noabort(i32 %154, i32 4)
  %155 = load i32, ptr %ar_tip, align 1
  %156 = ptrtoint ptr %dst154 to i32
  call void @__asan_store4_noabort(i32 %156)
  store i32 %155, ptr %dst154, align 4
  %157 = getelementptr inbounds %struct.sw_flow_key, ptr %key, i32 0, i32 14, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2
  %ar_sha = getelementptr inbounds %struct.arp_eth_header, ptr %add.ptr.i628, i32 0, i32 5
  %158 = ptrtoint ptr %ar_sha to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load i32, ptr %ar_sha, align 4
  %160 = ptrtoint ptr %157 to i32
  call void @__asan_store4_noabort(i32 %160)
  store i32 %159, ptr %157, align 4
  %add.ptr.i527 = getelementptr %struct.arp_eth_header, ptr %add.ptr.i628, i32 0, i32 5, i32 4
  %161 = ptrtoint ptr %add.ptr.i527 to i32
  call void @__asan_load2_noabort(i32 %161)
  %162 = load i16, ptr %add.ptr.i527, align 2
  %add.ptr1.i = getelementptr %struct.sw_flow_key, ptr %key, i32 0, i32 14, i32 0, i32 0, i32 0, i32 0, i32 0, i32 3
  %163 = ptrtoint ptr %add.ptr1.i to i32
  call void @__asan_store2_noabort(i32 %163)
  store i16 %162, ptr %add.ptr1.i, align 2
  %tha = getelementptr inbounds %struct.anon.13, ptr %157, i32 0, i32 1
  %ar_tha = getelementptr inbounds %struct.arp_eth_header, ptr %add.ptr.i628, i32 0, i32 7
  %164 = ptrtoint ptr %ar_tha to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load i32, ptr %ar_tha, align 4
  %166 = ptrtoint ptr %tha to i32
  call void @__asan_store4_noabort(i32 %166)
  store i32 %165, ptr %tha, align 4
  %add.ptr.i528 = getelementptr %struct.arp_eth_header, ptr %add.ptr.i628, i32 0, i32 7, i32 4
  %167 = ptrtoint ptr %add.ptr.i528 to i32
  call void @__asan_load2_noabort(i32 %167)
  %168 = load i16, ptr %add.ptr.i528, align 2
  %add.ptr1.i529 = getelementptr %struct.anon.13, ptr %157, i32 0, i32 1, i32 4
  %169 = ptrtoint ptr %add.ptr1.i529 to i32
  call void @__asan_store2_noabort(i32 %169)
  store i16 %168, ptr %add.ptr1.i529, align 2
  br label %cleanup351

if.else160:                                       ; preds = %land.lhs.true136.if.else160_crit_edge, %land.lhs.true132.if.else160_crit_edge, %land.lhs.true128.if.else160_crit_edge, %land.lhs.true.if.else160_crit_edge, %arphdr_ok.exit.if.else160_crit_edge, %if.end.i.i526.if.else160_crit_edge
  %170 = getelementptr inbounds %struct.sw_flow_key, ptr %key, i32 0, i32 11
  %171 = ptrtoint ptr %170 to i32
  call void @__asan_store4_noabort(i32 %171)
  store i32 0, ptr %170, align 4
  %172 = getelementptr inbounds %struct.sw_flow_key, ptr %key, i32 0, i32 14
  %173 = call ptr @memset(ptr %172, i32 0, i32 20)
  br label %cleanup351

if.else162:                                       ; preds = %entry
  %174 = add i16 %1, 30649
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %174)
  %175 = icmp ult i16 %174, 2
  br i1 %175, label %if.then166, label %if.else215

if.then166:                                       ; preds = %if.else162
  %176 = getelementptr inbounds %struct.sw_flow_key, ptr %key, i32 0, i32 14
  %177 = call ptr @memset(ptr %176, i32 0, i32 16)
  %mac_len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 8
  %178 = ptrtoint ptr %mac_len to i32
  call void @__asan_load2_noabort(i32 %178)
  %179 = load i16, ptr %mac_len, align 4
  %data.i.i530 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %180 = ptrtoint ptr %data.i.i530 to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load ptr, ptr %data.i.i530, align 4
  %head.i.i531 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %182 = ptrtoint ptr %head.i.i531 to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load ptr, ptr %head.i.i531, align 8
  %sub.ptr.lhs.cast.i.i532 = ptrtoint ptr %181 to i32
  %sub.ptr.rhs.cast.i.i533 = ptrtoint ptr %183 to i32
  %sub.ptr.sub.i.i534 = sub i32 %sub.ptr.lhs.cast.i.i532, %sub.ptr.rhs.cast.i.i533
  %conv.i.i535 = trunc i32 %sub.ptr.sub.i.i534 to i16
  %inner_network_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 16
  %conv1.i = add i16 %179, %conv.i.i535
  %184 = ptrtoint ptr %inner_network_header.i.i to i32
  call void @__asan_store2_noabort(i32 %184)
  store i16 %conv1.i, ptr %inner_network_header.i.i, align 4
  %len1.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %data_len.i.i.i537 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %lse186 = getelementptr inbounds %struct.sw_flow_key, ptr %key, i32 0, i32 14, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1
  br label %while.cond

while.cond:                                       ; preds = %if.end189.while.cond_crit_edge, %if.then166
  %label_count.0 = phi i8 [ 1, %if.then166 ], [ %inc, %if.end189.while.cond_crit_edge ]
  %185 = ptrtoint ptr %mac_len to i32
  call void @__asan_load2_noabort(i32 %185)
  %186 = load i16, ptr %mac_len, align 4
  %conv169 = zext i16 %186 to i32
  %conv170 = zext i8 %label_count.0 to i32
  %mul = shl nuw nsw i32 %conv170, 2
  %add = add nuw nsw i32 %mul, %conv169
  %187 = ptrtoint ptr %len1.i to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load i32, ptr %len1.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %188, i32 %add)
  %cmp.i536 = icmp ult i32 %188, %add
  br i1 %cmp.i536, label %while.cond.cleanup351_crit_edge, label %if.end.i540, !prof !29

while.cond.cleanup351_crit_edge:                  ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup351

if.end.i540:                                      ; preds = %while.cond
  %189 = ptrtoint ptr %data_len.i.i.i537 to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load i32, ptr %data_len.i.i.i537, align 8
  %sub.i.i.i538 = sub i32 %188, %190
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %sub.i.i.i538)
  %cmp.not.i.i539 = icmp ugt i32 %add, %sub.i.i.i538
  br i1 %cmp.not.i.i539, label %pskb_may_pull.exit.i, label %if.end.i540.if.end180_crit_edge, !prof !29

if.end.i540.if.end180_crit_edge:                  ; preds = %if.end.i540
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end180

pskb_may_pull.exit.i:                             ; preds = %if.end.i540
  %sub.i.i541 = sub i32 %add, %sub.i.i.i538
  %call13.i.i542 = tail call ptr @__pskb_pull_tail(ptr noundef %skb, i32 noundef %sub.i.i541) #7
  %cmp14.i.not.i = icmp eq ptr %call13.i.i542, null
  br i1 %cmp14.i.not.i, label %pskb_may_pull.exit.i.cleanup351_crit_edge, label %pskb_may_pull.exit.i.if.end180_crit_edge

pskb_may_pull.exit.i.if.end180_crit_edge:         ; preds = %pskb_may_pull.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end180

pskb_may_pull.exit.i.cleanup351_crit_edge:        ; preds = %pskb_may_pull.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup351

if.end180:                                        ; preds = %pskb_may_pull.exit.i.if.end180_crit_edge, %if.end.i540.if.end180_crit_edge
  %191 = ptrtoint ptr %head.i.i531 to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load ptr, ptr %head.i.i531, align 8
  %193 = ptrtoint ptr %inner_network_header.i.i to i32
  call void @__asan_load2_noabort(i32 %193)
  %194 = load i16, ptr %inner_network_header.i.i, align 4
  %conv.i545 = zext i16 %194 to i32
  %add.ptr.i546 = getelementptr i8, ptr %192, i32 %conv.i545
  %195 = ptrtoint ptr %add.ptr.i546 to i32
  call void @__asan_loadN_noabort(i32 %195, i32 4)
  %lse.0.copyload = load i32, ptr %add.ptr.i546, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %label_count.0)
  %cmp183 = icmp ult i8 %label_count.0, 4
  br i1 %cmp183, label %if.then185, label %if.end180.if.end189_crit_edge

if.end180.if.end189_crit_edge:                    ; preds = %if.end180
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end189

if.then185:                                       ; preds = %if.end180
  call void @__sanitizer_cov_trace_pc() #9
  %sub = add nsw i32 %conv170, -1
  %arrayidx188 = getelementptr [3 x i32], ptr %lse186, i32 0, i32 %sub
  %196 = ptrtoint ptr %arrayidx188 to i32
  call void @__asan_store4_noabort(i32 %196)
  store i32 %lse.0.copyload, ptr %arrayidx188, align 4
  br label %if.end189

if.end189:                                        ; preds = %if.then185, %if.end180.if.end189_crit_edge
  %197 = ptrtoint ptr %mac_len to i32
  call void @__asan_load2_noabort(i32 %197)
  %198 = load i16, ptr %mac_len, align 4
  %199 = ptrtoint ptr %data.i.i530 to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load ptr, ptr %data.i.i530, align 4
  %201 = ptrtoint ptr %head.i.i531 to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load ptr, ptr %head.i.i531, align 8
  %sub.ptr.lhs.cast.i.i549 = ptrtoint ptr %200 to i32
  %sub.ptr.rhs.cast.i.i550 = ptrtoint ptr %202 to i32
  %sub.ptr.sub.i.i551 = sub i32 %sub.ptr.lhs.cast.i.i549, %sub.ptr.rhs.cast.i.i550
  %conv.i.i552 = trunc i32 %sub.ptr.sub.i.i551 to i16
  %203 = trunc i32 %mul to i16
  %204 = add i16 %198, %203
  %conv1.i554 = add i16 %204, %conv.i.i552
  %205 = ptrtoint ptr %inner_network_header.i.i to i32
  call void @__asan_store2_noabort(i32 %205)
  store i16 %conv1.i554, ptr %inner_network_header.i.i, align 4
  %and195 = and i32 %lse.0.copyload, 256
  %tobool196.not = icmp eq i32 %and195, 0
  %inc = add i8 %label_count.0, 1
  br i1 %tobool196.not, label %if.end189.while.cond_crit_edge, label %cleanup212.thread

if.end189.while.cond_crit_edge:                   ; preds = %if.end189
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.cond

cleanup212.thread:                                ; preds = %if.end189
  call void @__sanitizer_cov_trace_pc() #9
  %206 = tail call i8 @llvm.umin.i8(i8 %label_count.0, i8 3)
  %narrow = sub nuw nsw i8 32, %206
  %sub209 = zext i8 %narrow to i32
  %shr = lshr i32 -1, %sub209
  %207 = ptrtoint ptr %176 to i32
  call void @__asan_store4_noabort(i32 %207)
  store i32 %shr, ptr %176, align 8
  br label %cleanup351

if.else215:                                       ; preds = %if.else162
  %208 = zext i16 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %208, ptr @__sancov_gen_cov_switch_values.7)
  switch i16 %1, label %if.else215.cleanup351_crit_edge [
    i16 -31011, label %if.then221
    i16 -30385, label %if.then341
  ]

if.else215.cleanup351_crit_edge:                  ; preds = %if.else215
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup351

if.then221:                                       ; preds = %if.else215
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %frag_off.i) #7
  %209 = ptrtoint ptr %frag_off.i to i32
  call void @__asan_store2_noabort(i32 %209)
  store i16 -1, ptr %frag_off.i, align 2, !annotation !32
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %payload_ofs.i) #7
  %210 = ptrtoint ptr %payload_ofs.i to i32
  call void @__asan_store4_noabort(i32 %210)
  store i32 0, ptr %payload_ofs.i, align 4
  %head.i.i.i555 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %211 = ptrtoint ptr %head.i.i.i555 to i32
  call void @__asan_load4_noabort(i32 %211)
  %212 = load ptr, ptr %head.i.i.i555, align 8
  %network_header.i.i.i556 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %213 = ptrtoint ptr %network_header.i.i.i556 to i32
  call void @__asan_load2_noabort(i32 %213)
  %214 = load i16, ptr %network_header.i.i.i556, align 4
  %conv.i.i.i557 = zext i16 %214 to i32
  %add.ptr.i.i.i558 = getelementptr i8, ptr %212, i32 %conv.i.i.i557
  %data.i.i559 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %215 = ptrtoint ptr %data.i.i559 to i32
  call void @__asan_load4_noabort(i32 %215)
  %216 = load ptr, ptr %data.i.i559, align 4
  %sub.ptr.lhs.cast.i.i560 = ptrtoint ptr %add.ptr.i.i.i558 to i32
  %sub.ptr.rhs.cast.i.i561 = ptrtoint ptr %216 to i32
  %sub.ptr.sub.i.i562 = sub i32 %sub.ptr.lhs.cast.i.i560, %sub.ptr.rhs.cast.i.i561
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %flags.i) #7
  %217 = ptrtoint ptr %flags.i to i32
  call void @__asan_store4_noabort(i32 %217)
  store i32 0, ptr %flags.i, align 4
  %add.i563 = add i32 %sub.ptr.sub.i.i562, 40
  %len1.i.i564 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %218 = ptrtoint ptr %len1.i.i564 to i32
  call void @__asan_load4_noabort(i32 %218)
  %219 = load i32, ptr %len1.i.i564, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %219, i32 %add.i563)
  %cmp.i.i565 = icmp ult i32 %219, %add.i563
  br i1 %cmp.i.i565, label %if.then221.parse_ipv6hdr.exit.thread_crit_edge, label %if.end.i.i569, !prof !29

if.then221.parse_ipv6hdr.exit.thread_crit_edge:   ; preds = %if.then221
  call void @__sanitizer_cov_trace_pc() #9
  br label %parse_ipv6hdr.exit.thread

if.end.i.i569:                                    ; preds = %if.then221
  %data_len.i.i.i.i566 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %220 = ptrtoint ptr %data_len.i.i.i.i566 to i32
  call void @__asan_load4_noabort(i32 %220)
  %221 = load i32, ptr %data_len.i.i.i.i566, align 8
  %sub.i.i.i.i567 = sub i32 %219, %221
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i563, i32 %sub.i.i.i.i567)
  %cmp.not.i.i.i568 = icmp ugt i32 %add.i563, %sub.i.i.i.i567
  br i1 %cmp.not.i.i.i568, label %pskb_may_pull.exit.i.i573, label %if.end.i.i569.if.end.i575_crit_edge, !prof !29

if.end.i.i569.if.end.i575_crit_edge:              ; preds = %if.end.i.i569
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i575

pskb_may_pull.exit.i.i573:                        ; preds = %if.end.i.i569
  %sub.i.i.i570 = sub i32 %add.i563, %sub.i.i.i.i567
  %call13.i.i.i571 = tail call ptr @__pskb_pull_tail(ptr noundef %skb, i32 noundef %sub.i.i.i570) #7
  %cmp14.i.not.i.i572 = icmp eq ptr %call13.i.i.i571, null
  br i1 %cmp14.i.not.i.i572, label %pskb_may_pull.exit.i.i573.parse_ipv6hdr.exit.thread_crit_edge, label %pskb_may_pull.exit.i.i573.if.end.i575_crit_edge

pskb_may_pull.exit.i.i573.if.end.i575_crit_edge:  ; preds = %pskb_may_pull.exit.i.i573
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i575

pskb_may_pull.exit.i.i573.parse_ipv6hdr.exit.thread_crit_edge: ; preds = %pskb_may_pull.exit.i.i573
  call void @__sanitizer_cov_trace_pc() #9
  br label %parse_ipv6hdr.exit.thread

if.end.i575:                                      ; preds = %pskb_may_pull.exit.i.i573.if.end.i575_crit_edge, %if.end.i.i569.if.end.i575_crit_edge
  %222 = ptrtoint ptr %head.i.i.i555 to i32
  call void @__asan_load4_noabort(i32 %222)
  %223 = load ptr, ptr %head.i.i.i555, align 8
  %224 = ptrtoint ptr %network_header.i.i.i556 to i32
  call void @__asan_load2_noabort(i32 %224)
  %225 = load i16, ptr %network_header.i.i.i556, align 4
  %conv.i.i63.i = zext i16 %225 to i32
  %add.ptr.i.i64.i = getelementptr i8, ptr %223, i32 %conv.i.i63.i
  %226 = getelementptr inbounds %struct.sw_flow_key, ptr %key, i32 0, i32 11
  %227 = ptrtoint ptr %226 to i32
  call void @__asan_store1_noabort(i32 %227)
  store i8 59, ptr %226, align 4
  %228 = ptrtoint ptr %add.ptr.i.i64.i to i32
  call void @__asan_load2_noabort(i32 %228)
  %229 = load i16, ptr %add.ptr.i.i64.i, align 2
  %230 = lshr i16 %229, 4
  %conv1.i.i574 = trunc i16 %230 to i8
  %tos.i = getelementptr inbounds %struct.sw_flow_key, ptr %key, i32 0, i32 11, i32 0, i32 1
  %231 = ptrtoint ptr %tos.i to i32
  call void @__asan_store1_noabort(i32 %231)
  store i8 %conv1.i.i574, ptr %tos.i, align 1
  %hop_limit.i = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i.i64.i, i32 0, i32 4
  %232 = ptrtoint ptr %hop_limit.i to i32
  call void @__asan_load1_noabort(i32 %232)
  %233 = load i8, ptr %hop_limit.i, align 1
  %ttl.i = getelementptr inbounds %struct.sw_flow_key, ptr %key, i32 0, i32 11, i32 0, i32 2
  %234 = ptrtoint ptr %ttl.i to i32
  call void @__asan_store1_noabort(i32 %234)
  store i8 %233, ptr %ttl.i, align 2
  %235 = load i32, ptr %add.ptr.i.i64.i, align 4
  %and.i = and i32 %235, 1048575
  %236 = getelementptr inbounds %struct.sw_flow_key, ptr %key, i32 0, i32 14
  %label.i = getelementptr inbounds %struct.sw_flow_key, ptr %key, i32 0, i32 14, i32 0, i32 1
  %237 = ptrtoint ptr %label.i to i32
  call void @__asan_store4_noabort(i32 %237)
  store i32 %and.i, ptr %label.i, align 8
  %saddr.i = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i.i64.i, i32 0, i32 5
  %238 = call ptr @memcpy(ptr %236, ptr %saddr.i, i32 16)
  %dst.i = getelementptr inbounds %struct.sw_flow_key, ptr %key, i32 0, i32 14, i32 0, i32 0, i32 1
  %daddr.i = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i.i64.i, i32 0, i32 6
  %239 = call ptr @memcpy(ptr %dst.i, ptr %daddr.i, i32 16)
  %call7.i = call i32 @ipv6_find_hdr(ptr noundef %skb, ptr noundef nonnull %payload_ofs.i, i32 noundef -1, ptr noundef nonnull %frag_off.i, ptr noundef nonnull %flags.i) #7
  %240 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %240)
  %241 = load i32, ptr %flags.i, align 4
  %and8.i = and i32 %241, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8.i)
  %tobool9.not.i = icmp eq i32 %and8.i, 0
  br i1 %tobool9.not.i, label %if.else.i, label %if.then10.i

if.then10.i:                                      ; preds = %if.end.i575
  %242 = ptrtoint ptr %frag_off.i to i32
  call void @__asan_load2_noabort(i32 %242)
  %243 = load i16, ptr %frag_off.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %243)
  %tobool11.not.i = icmp eq i16 %243, 0
  %frag15.i = getelementptr inbounds %struct.sw_flow_key, ptr %key, i32 0, i32 11, i32 0, i32 3
  br i1 %tobool11.not.i, label %if.end14.i576, label %parse_ipv6hdr.exit.thread646

parse_ipv6hdr.exit.thread646:                     ; preds = %if.then10.i
  call void @__sanitizer_cov_trace_pc() #9
  %244 = ptrtoint ptr %frag15.i to i32
  call void @__asan_store1_noabort(i32 %244)
  store i8 2, ptr %frag15.i, align 1
  %conv28.i648 = trunc i32 %call7.i to i8
  %245 = ptrtoint ptr %226 to i32
  call void @__asan_store1_noabort(i32 %245)
  store i8 %conv28.i648, ptr %226, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %flags.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %payload_ofs.i) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %frag_off.i) #7
  br label %if.end236

if.end14.i576:                                    ; preds = %if.then10.i
  call void @__sanitizer_cov_trace_pc() #9
  %246 = ptrtoint ptr %frag15.i to i32
  call void @__asan_store1_noabort(i32 %246)
  store i8 1, ptr %frag15.i, align 1
  br label %if.end17.i

if.else.i:                                        ; preds = %if.end.i575
  call void @__sanitizer_cov_trace_pc() #9
  %frag16.i = getelementptr inbounds %struct.sw_flow_key, ptr %key, i32 0, i32 11, i32 0, i32 3
  %247 = ptrtoint ptr %frag16.i to i32
  call void @__asan_store1_noabort(i32 %247)
  store i8 0, ptr %frag16.i, align 1
  br label %if.end17.i

if.end17.i:                                       ; preds = %if.else.i, %if.end14.i576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i)
  %cmp.i577 = icmp slt i32 %call7.i, 0
  br i1 %cmp.i577, label %if.end17.i.parse_ipv6hdr.exit.thread_crit_edge, label %parse_ipv6hdr.exit, !prof !29

if.end17.i.parse_ipv6hdr.exit.thread_crit_edge:   ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %parse_ipv6hdr.exit.thread

parse_ipv6hdr.exit.thread:                        ; preds = %if.end17.i.parse_ipv6hdr.exit.thread_crit_edge, %pskb_may_pull.exit.i.i573.parse_ipv6hdr.exit.thread_crit_edge, %if.then221.parse_ipv6hdr.exit.thread_crit_edge
  %retval.0.i582.ph = phi i32 [ -22, %if.then221.parse_ipv6hdr.exit.thread_crit_edge ], [ -12, %pskb_may_pull.exit.i.i573.parse_ipv6hdr.exit.thread_crit_edge ], [ -71, %if.end17.i.parse_ipv6hdr.exit.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %flags.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %payload_ofs.i) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %frag_off.i) #7
  br label %if.then231

parse_ipv6hdr.exit:                               ; preds = %if.end17.i
  %248 = ptrtoint ptr %payload_ofs.i to i32
  call void @__asan_load4_noabort(i32 %248)
  %249 = load i32, ptr %payload_ofs.i, align 4
  %sub.i = sub i32 %249, %sub.ptr.sub.i.i562
  %250 = ptrtoint ptr %data.i.i559 to i32
  call void @__asan_load4_noabort(i32 %250)
  %251 = load ptr, ptr %data.i.i559, align 4
  %252 = ptrtoint ptr %head.i.i.i555 to i32
  call void @__asan_load4_noabort(i32 %252)
  %253 = load ptr, ptr %head.i.i.i555, align 8
  %sub.ptr.lhs.cast.i.i.i578 = ptrtoint ptr %251 to i32
  %sub.ptr.rhs.cast.i.i.i579 = ptrtoint ptr %253 to i32
  %sub.ptr.sub.i.i.i580 = sub i32 %sub.ptr.lhs.cast.i.i.i578, %sub.ptr.rhs.cast.i.i.i579
  %conv.i.i66.i = trunc i32 %sub.ptr.sub.i.i.i580 to i16
  %transport_header.i.i.i581 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 19
  %254 = trunc i32 %249 to i16
  %conv1.i67.i = add i16 %conv.i.i66.i, %254
  %255 = ptrtoint ptr %transport_header.i.i.i581 to i32
  call void @__asan_store2_noabort(i32 %255)
  store i16 %conv1.i67.i, ptr %transport_header.i.i.i581, align 2
  %conv28.i = trunc i32 %call7.i to i8
  %256 = ptrtoint ptr %226 to i32
  call void @__asan_store1_noabort(i32 %256)
  store i8 %conv28.i, ptr %226, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %flags.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %payload_ofs.i) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %frag_off.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i)
  %cmp223 = icmp slt i32 %sub.i, 0
  br i1 %cmp223, label %parse_ipv6hdr.exit.if.then231_crit_edge, label %parse_ipv6hdr.exit.if.end236_crit_edge, !prof !29

parse_ipv6hdr.exit.if.end236_crit_edge:           ; preds = %parse_ipv6hdr.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end236

parse_ipv6hdr.exit.if.then231_crit_edge:          ; preds = %parse_ipv6hdr.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then231

if.then231:                                       ; preds = %parse_ipv6hdr.exit.if.then231_crit_edge, %parse_ipv6hdr.exit.thread
  %retval.0.i582645 = phi i32 [ %retval.0.i582.ph, %parse_ipv6hdr.exit.thread ], [ %sub.i, %parse_ipv6hdr.exit.if.then231_crit_edge ]
  %257 = zext i32 %retval.0.i582645 to i64
  call void @__sanitizer_cov_trace_switch(i64 %257, ptr @__sancov_gen_cov_switch_values.8)
  switch i32 %retval.0.i582645, label %if.then231.cleanup332.thread_crit_edge [
    i32 -22, label %sw.bb
    i32 -71, label %if.then231.sw.bb233_crit_edge
  ]

if.then231.sw.bb233_crit_edge:                    ; preds = %if.then231
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb233

if.then231.cleanup332.thread_crit_edge:           ; preds = %if.then231
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup332.thread

sw.bb:                                            ; preds = %if.then231
  call void @__sanitizer_cov_trace_pc() #9
  %258 = getelementptr inbounds %struct.sw_flow_key, ptr %key, i32 0, i32 11
  %259 = ptrtoint ptr %258 to i32
  call void @__asan_store4_noabort(i32 %259)
  store i32 0, ptr %258, align 4
  %260 = getelementptr inbounds %struct.sw_flow_key, ptr %key, i32 0, i32 14
  %261 = call ptr @memset(ptr %260, i32 0, i32 32)
  br label %sw.bb233

sw.bb233:                                         ; preds = %sw.bb, %if.then231.sw.bb233_crit_edge
  %262 = ptrtoint ptr %network_header.i.i.i556 to i32
  call void @__asan_load2_noabort(i32 %262)
  %263 = load i16, ptr %network_header.i.i.i556, align 4
  %transport_header235 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 19
  %264 = ptrtoint ptr %transport_header235 to i32
  call void @__asan_store2_noabort(i32 %264)
  store i16 %263, ptr %transport_header235, align 2
  br label %cleanup332.thread

if.end236:                                        ; preds = %parse_ipv6hdr.exit.if.end236_crit_edge, %parse_ipv6hdr.exit.thread646
  %frag237 = getelementptr inbounds %struct.sw_flow_key, ptr %key, i32 0, i32 11, i32 0, i32 3
  %265 = ptrtoint ptr %frag237 to i32
  call void @__asan_load1_noabort(i32 %265)
  %266 = load i8, ptr %frag237, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %266)
  %cmp239 = icmp eq i8 %266, 2
  br i1 %cmp239, label %if.then241, label %if.end243

if.then241:                                       ; preds = %if.end236
  call void @__sanitizer_cov_trace_pc() #9
  %tp242 = getelementptr inbounds %struct.sw_flow_key, ptr %key, i32 0, i32 13
  %267 = call ptr @memset(ptr %tp242, i32 0, i32 6)
  br label %cleanup332.thread

if.end243:                                        ; preds = %if.end236
  %end.i583 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 17
  %268 = ptrtoint ptr %end.i583 to i32
  call void @__asan_load4_noabort(i32 %268)
  %269 = load ptr, ptr %end.i583, align 4
  %gso_type245 = getelementptr inbounds %struct.skb_shared_info, ptr %269, i32 0, i32 8
  %270 = ptrtoint ptr %gso_type245 to i32
  call void @__asan_load4_noabort(i32 %270)
  %271 = load i32, ptr %gso_type245, align 8
  %and246 = and i32 %271, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and246)
  %tobool247.not = icmp eq i32 %and246, 0
  br i1 %tobool247.not, label %if.end243.if.end250_crit_edge, label %if.then248

if.end243.if.end250_crit_edge:                    ; preds = %if.end243
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end250

if.then248:                                       ; preds = %if.end243
  call void @__sanitizer_cov_trace_pc() #9
  %272 = ptrtoint ptr %frag237 to i32
  call void @__asan_store1_noabort(i32 %272)
  store i8 1, ptr %frag237, align 1
  br label %if.end250

if.end250:                                        ; preds = %if.then248, %if.end243.if.end250_crit_edge
  %273 = ptrtoint ptr %226 to i32
  call void @__asan_load1_noabort(i32 %273)
  %274 = load i8, ptr %226, align 4
  %275 = zext i8 %274 to i64
  call void @__sanitizer_cov_trace_switch(i64 %275, ptr @__sancov_gen_cov_switch_values.9)
  switch i8 %274, label %if.end250.cleanup351_crit_edge [
    i8 6, label %if.then255
    i8 17, label %if.then280
    i8 -124, label %if.then299
    i8 58, label %if.then318
  ]

if.end250.cleanup351_crit_edge:                   ; preds = %if.end250
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup351

if.then255:                                       ; preds = %if.end250
  %call256 = call fastcc zeroext i1 @tcphdr_ok(ptr noundef %skb)
  br i1 %call256, label %if.then257, label %if.else272

if.then257:                                       ; preds = %if.then255
  call void @__sanitizer_cov_trace_pc() #9
  %276 = ptrtoint ptr %head.i.i.i555 to i32
  call void @__asan_load4_noabort(i32 %276)
  %277 = load ptr, ptr %head.i.i.i555, align 8
  %transport_header.i.i585 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 19
  %278 = ptrtoint ptr %transport_header.i.i585 to i32
  call void @__asan_load2_noabort(i32 %278)
  %279 = load i16, ptr %transport_header.i.i585, align 2
  %conv.i.i586 = zext i16 %279 to i32
  %add.ptr.i.i587 = getelementptr i8, ptr %277, i32 %conv.i.i586
  %280 = ptrtoint ptr %add.ptr.i.i587 to i32
  call void @__asan_load2_noabort(i32 %280)
  %281 = load i16, ptr %add.ptr.i.i587, align 4
  %tp261 = getelementptr inbounds %struct.sw_flow_key, ptr %key, i32 0, i32 13
  %282 = ptrtoint ptr %tp261 to i32
  call void @__asan_store2_noabort(i32 %282)
  store i16 %281, ptr %tp261, align 2
  %dest263 = getelementptr inbounds %struct.tcphdr, ptr %add.ptr.i.i587, i32 0, i32 1
  %283 = ptrtoint ptr %dest263 to i32
  call void @__asan_load2_noabort(i32 %283)
  %284 = load i16, ptr %dest263, align 2
  %dst265 = getelementptr inbounds %struct.sw_flow_key, ptr %key, i32 0, i32 13, i32 1
  %285 = ptrtoint ptr %dst265 to i32
  call void @__asan_store2_noabort(i32 %285)
  store i16 %284, ptr %dst265, align 2
  %arrayidx266 = getelementptr [5 x i32], ptr %add.ptr.i.i587, i32 0, i32 3
  %286 = ptrtoint ptr %arrayidx266 to i32
  call void @__asan_load2_noabort(i32 %286)
  %287 = load i16, ptr %arrayidx266, align 4
  %288 = and i16 %287, 4095
  %flags271 = getelementptr inbounds %struct.sw_flow_key, ptr %key, i32 0, i32 13, i32 2
  %289 = ptrtoint ptr %flags271 to i32
  call void @__asan_store2_noabort(i32 %289)
  store i16 %288, ptr %flags271, align 2
  br label %cleanup351

if.else272:                                       ; preds = %if.then255
  call void @__sanitizer_cov_trace_pc() #9
  %tp273 = getelementptr inbounds %struct.sw_flow_key, ptr %key, i32 0, i32 13
  %290 = call ptr @memset(ptr %tp273, i32 0, i32 6)
  br label %cleanup351

if.then280:                                       ; preds = %if.end250
  %call281 = call fastcc zeroext i1 @udphdr_ok(ptr noundef %skb)
  br i1 %call281, label %if.then282, label %if.else291

if.then282:                                       ; preds = %if.then280
  call void @__sanitizer_cov_trace_pc() #9
  %291 = ptrtoint ptr %head.i.i.i555 to i32
  call void @__asan_load4_noabort(i32 %291)
  %292 = load ptr, ptr %head.i.i.i555, align 8
  %transport_header.i.i589 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 19
  %293 = ptrtoint ptr %transport_header.i.i589 to i32
  call void @__asan_load2_noabort(i32 %293)
  %294 = load i16, ptr %transport_header.i.i589, align 2
  %conv.i.i590 = zext i16 %294 to i32
  %add.ptr.i.i591 = getelementptr i8, ptr %292, i32 %conv.i.i590
  %295 = ptrtoint ptr %add.ptr.i.i591 to i32
  call void @__asan_load2_noabort(i32 %295)
  %296 = load i16, ptr %add.ptr.i.i591, align 2
  %tp286 = getelementptr inbounds %struct.sw_flow_key, ptr %key, i32 0, i32 13
  %297 = ptrtoint ptr %tp286 to i32
  call void @__asan_store2_noabort(i32 %297)
  store i16 %296, ptr %tp286, align 2
  %dest288 = getelementptr inbounds %struct.udphdr, ptr %add.ptr.i.i591, i32 0, i32 1
  %298 = ptrtoint ptr %dest288 to i32
  call void @__asan_load2_noabort(i32 %298)
  %299 = load i16, ptr %dest288, align 2
  %dst290 = getelementptr inbounds %struct.sw_flow_key, ptr %key, i32 0, i32 13, i32 1
  %300 = ptrtoint ptr %dst290 to i32
  call void @__asan_store2_noabort(i32 %300)
  store i16 %299, ptr %dst290, align 2
  br label %cleanup351

if.else291:                                       ; preds = %if.then280
  call void @__sanitizer_cov_trace_pc() #9
  %tp292 = getelementptr inbounds %struct.sw_flow_key, ptr %key, i32 0, i32 13
  %301 = call ptr @memset(ptr %tp292, i32 0, i32 6)
  br label %cleanup351

if.then299:                                       ; preds = %if.end250
  %call300 = call fastcc zeroext i1 @sctphdr_ok(ptr noundef %skb)
  br i1 %call300, label %if.then301, label %if.else310

if.then301:                                       ; preds = %if.then299
  call void @__sanitizer_cov_trace_pc() #9
  %302 = ptrtoint ptr %head.i.i.i555 to i32
  call void @__asan_load4_noabort(i32 %302)
  %303 = load ptr, ptr %head.i.i.i555, align 8
  %transport_header.i.i593 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 19
  %304 = ptrtoint ptr %transport_header.i.i593 to i32
  call void @__asan_load2_noabort(i32 %304)
  %305 = load i16, ptr %transport_header.i.i593, align 2
  %conv.i.i594 = zext i16 %305 to i32
  %add.ptr.i.i595 = getelementptr i8, ptr %303, i32 %conv.i.i594
  %306 = ptrtoint ptr %add.ptr.i.i595 to i32
  call void @__asan_load2_noabort(i32 %306)
  %307 = load i16, ptr %add.ptr.i.i595, align 4
  %tp305 = getelementptr inbounds %struct.sw_flow_key, ptr %key, i32 0, i32 13
  %308 = ptrtoint ptr %tp305 to i32
  call void @__asan_store2_noabort(i32 %308)
  store i16 %307, ptr %tp305, align 2
  %dest307 = getelementptr inbounds %struct.sctphdr, ptr %add.ptr.i.i595, i32 0, i32 1
  %309 = ptrtoint ptr %dest307 to i32
  call void @__asan_load2_noabort(i32 %309)
  %310 = load i16, ptr %dest307, align 2
  %dst309 = getelementptr inbounds %struct.sw_flow_key, ptr %key, i32 0, i32 13, i32 1
  %311 = ptrtoint ptr %dst309 to i32
  call void @__asan_store2_noabort(i32 %311)
  store i16 %310, ptr %dst309, align 2
  br label %cleanup351

if.else310:                                       ; preds = %if.then299
  call void @__sanitizer_cov_trace_pc() #9
  %tp311 = getelementptr inbounds %struct.sw_flow_key, ptr %key, i32 0, i32 13
  %312 = call ptr @memset(ptr %tp311, i32 0, i32 6)
  br label %cleanup351

if.then318:                                       ; preds = %if.end250
  %call319 = call fastcc zeroext i1 @icmp6hdr_ok(ptr noundef %skb)
  br i1 %call319, label %if.then320, label %if.else325

if.then320:                                       ; preds = %if.then318
  %call321 = call fastcc i32 @parse_icmpv6(ptr noundef %skb, ptr noundef %key)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call321)
  %tobool322.not = icmp eq i32 %call321, 0
  br i1 %tobool322.not, label %if.then320.cleanup351_crit_edge, label %if.then320.cleanup332.thread_crit_edge

if.then320.cleanup332.thread_crit_edge:           ; preds = %if.then320
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup332.thread

if.then320.cleanup351_crit_edge:                  ; preds = %if.then320
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup351

if.else325:                                       ; preds = %if.then318
  call void @__sanitizer_cov_trace_pc() #9
  %tp326 = getelementptr inbounds %struct.sw_flow_key, ptr %key, i32 0, i32 13
  %313 = call ptr @memset(ptr %tp326, i32 0, i32 6)
  br label %cleanup351

cleanup332.thread:                                ; preds = %if.then320.cleanup332.thread_crit_edge, %if.then241, %sw.bb233, %if.then231.cleanup332.thread_crit_edge
  %retval.3.ph = phi i32 [ %call321, %if.then320.cleanup332.thread_crit_edge ], [ %retval.0.i582645, %if.then231.cleanup332.thread_crit_edge ], [ 0, %sw.bb233 ], [ 0, %if.then241 ]
  br label %cleanup351

if.then341:                                       ; preds = %if.else215
  %head.i.i.i596 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %314 = ptrtoint ptr %head.i.i.i596 to i32
  call void @__asan_load4_noabort(i32 %314)
  %315 = load ptr, ptr %head.i.i.i596, align 8
  %network_header.i.i.i597 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %316 = ptrtoint ptr %network_header.i.i.i597 to i32
  call void @__asan_load2_noabort(i32 %316)
  %317 = load i16, ptr %network_header.i.i.i597, align 4
  %conv.i.i.i598 = zext i16 %317 to i32
  %add.ptr.i.i.i599 = getelementptr i8, ptr %315, i32 %conv.i.i.i598
  %data.i.i600 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %318 = ptrtoint ptr %data.i.i600 to i32
  call void @__asan_load4_noabort(i32 %318)
  %319 = load ptr, ptr %data.i.i600, align 4
  %sub.ptr.lhs.cast.i.i601 = ptrtoint ptr %add.ptr.i.i.i599 to i32
  %sub.ptr.rhs.cast.i.i602 = ptrtoint ptr %319 to i32
  %sub.ptr.sub.i.i603 = sub i32 %sub.ptr.lhs.cast.i.i601, %sub.ptr.rhs.cast.i.i602
  %add.i604 = add i32 %sub.ptr.sub.i.i603, 8
  %len1.i.i605 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %320 = ptrtoint ptr %len1.i.i605 to i32
  call void @__asan_load4_noabort(i32 %320)
  %321 = load i32, ptr %len1.i.i605, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %321, i32 %add.i604)
  %cmp.i.i606 = icmp ult i32 %321, %add.i604
  br i1 %cmp.i.i606, label %if.then341.cleanup351_crit_edge, label %if.end.i.i610, !prof !29

if.then341.cleanup351_crit_edge:                  ; preds = %if.then341
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup351

if.end.i.i610:                                    ; preds = %if.then341
  %data_len.i.i.i.i607 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %322 = ptrtoint ptr %data_len.i.i.i.i607 to i32
  call void @__asan_load4_noabort(i32 %322)
  %323 = load i32, ptr %data_len.i.i.i.i607, align 8
  %sub.i.i.i.i608 = sub i32 %321, %323
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i604, i32 %sub.i.i.i.i608)
  %cmp.not.i.i.i609 = icmp ugt i32 %add.i604, %sub.i.i.i.i608
  br i1 %cmp.not.i.i.i609, label %pskb_may_pull.exit.i.i614, label %if.end.i.i610.if.end.i615_crit_edge, !prof !29

if.end.i.i610.if.end.i615_crit_edge:              ; preds = %if.end.i.i610
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i615

pskb_may_pull.exit.i.i614:                        ; preds = %if.end.i.i610
  %sub.i.i.i611 = sub i32 %add.i604, %sub.i.i.i.i608
  %call13.i.i.i612 = tail call ptr @__pskb_pull_tail(ptr noundef %skb, i32 noundef %sub.i.i.i611) #7
  %cmp14.i.not.i.i613 = icmp eq ptr %call13.i.i.i612, null
  br i1 %cmp14.i.not.i.i613, label %pskb_may_pull.exit.i.i614.cleanup351_crit_edge, label %pskb_may_pull.exit.i.i614.if.end.i615_crit_edge

pskb_may_pull.exit.i.i614.if.end.i615_crit_edge:  ; preds = %pskb_may_pull.exit.i.i614
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i615

pskb_may_pull.exit.i.i614.cleanup351_crit_edge:   ; preds = %pskb_may_pull.exit.i.i614
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup351

if.end.i615:                                      ; preds = %pskb_may_pull.exit.i.i614.if.end.i615_crit_edge, %if.end.i.i610.if.end.i615_crit_edge
  %324 = ptrtoint ptr %head.i.i.i596 to i32
  call void @__asan_load4_noabort(i32 %324)
  %325 = load ptr, ptr %head.i.i.i596, align 8
  %326 = ptrtoint ptr %network_header.i.i.i597 to i32
  call void @__asan_load2_noabort(i32 %326)
  %327 = load i16, ptr %network_header.i.i.i597, align 4
  %conv.i.i75.i = zext i16 %327 to i32
  %add.ptr.i.i76.i = getelementptr i8, ptr %325, i32 %conv.i.i75.i
  %328 = ptrtoint ptr %add.ptr.i.i76.i to i32
  call void @__asan_load2_noabort(i32 %328)
  %329 = load i16, ptr %add.ptr.i.i76.i, align 4
  %330 = shl i16 %329, 2
  %331 = and i16 %330, 252
  call void @__sanitizer_cov_trace_const_cmp2(i16 16384, i16 %329)
  %cmp.not.i = icmp ult i16 %329, 16384
  br i1 %cmp.not.i, label %if.end10.i, label %if.end.i615.cleanup351_crit_edge

if.end.i615.cleanup351_crit_edge:                 ; preds = %if.end.i615
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup351

if.end10.i:                                       ; preds = %if.end.i615
  %conv11.i = zext i16 %331 to i32
  %add12.i = add i32 %sub.ptr.sub.i.i603, %conv11.i
  %332 = ptrtoint ptr %len1.i.i605 to i32
  call void @__asan_load4_noabort(i32 %332)
  %333 = load i32, ptr %len1.i.i605, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %333, i32 %add12.i)
  %cmp.i78.i = icmp ult i32 %333, %add12.i
  br i1 %cmp.i78.i, label %if.end10.i.cleanup351_crit_edge, label %if.end.i82.i, !prof !29

if.end10.i.cleanup351_crit_edge:                  ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup351

if.end.i82.i:                                     ; preds = %if.end10.i
  %334 = ptrtoint ptr %data_len.i.i.i.i607 to i32
  call void @__asan_load4_noabort(i32 %334)
  %335 = load i32, ptr %data_len.i.i.i.i607, align 8
  %sub.i.i.i80.i = sub i32 %333, %335
  call void @__sanitizer_cov_trace_cmp4(i32 %add12.i, i32 %sub.i.i.i80.i)
  %cmp.not.i.i81.i = icmp ugt i32 %add12.i, %sub.i.i.i80.i
  br i1 %cmp.not.i.i81.i, label %pskb_may_pull.exit.i86.i, label %if.end.i82.i.if.end22.i_crit_edge, !prof !29

if.end.i82.i.if.end22.i_crit_edge:                ; preds = %if.end.i82.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end22.i

pskb_may_pull.exit.i86.i:                         ; preds = %if.end.i82.i
  %sub.i.i83.i = sub i32 %add12.i, %sub.i.i.i80.i
  %call13.i.i84.i = tail call ptr @__pskb_pull_tail(ptr noundef %skb, i32 noundef %sub.i.i83.i) #7
  %cmp14.i.not.i85.i = icmp eq ptr %call13.i.i84.i, null
  br i1 %cmp14.i.not.i85.i, label %pskb_may_pull.exit.i86.i.cleanup351_crit_edge, label %pskb_may_pull.exit.i86.i.if.end22.i_crit_edge

pskb_may_pull.exit.i86.i.if.end22.i_crit_edge:    ; preds = %pskb_may_pull.exit.i86.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end22.i

pskb_may_pull.exit.i86.i.cleanup351_crit_edge:    ; preds = %pskb_may_pull.exit.i86.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup351

if.end22.i:                                       ; preds = %pskb_may_pull.exit.i86.i.if.end22.i_crit_edge, %if.end.i82.i.if.end22.i_crit_edge
  %336 = ptrtoint ptr %head.i.i.i596 to i32
  call void @__asan_load4_noabort(i32 %336)
  %337 = load ptr, ptr %head.i.i.i596, align 8
  %338 = ptrtoint ptr %network_header.i.i.i597 to i32
  call void @__asan_load2_noabort(i32 %338)
  %339 = load i16, ptr %network_header.i.i.i597, align 4
  %conv.i.i92.i = zext i16 %339 to i32
  %add.ptr.i.i93.i = getelementptr i8, ptr %337, i32 %conv.i.i92.i
  %340 = ptrtoint ptr %add.ptr.i.i93.i to i32
  call void @__asan_load2_noabort(i32 %340)
  %341 = load i16, ptr %add.ptr.i.i93.i, align 4
  %342 = lshr i16 %341, 12
  %343 = trunc i16 %342 to i8
  %conv1.i94.i = and i8 %343, 3
  %344 = getelementptr inbounds %struct.sw_flow_key, ptr %key, i32 0, i32 14
  %345 = ptrtoint ptr %344 to i32
  call void @__asan_store1_noabort(i32 %345)
  store i8 %conv1.i94.i, ptr %344, align 8
  %346 = load i16, ptr %add.ptr.i.i93.i, align 4
  %347 = lshr i16 %346, 6
  %348 = trunc i16 %347 to i8
  %conv1.i95.i = and i8 %348, 63
  %ttl.i616 = getelementptr inbounds %struct.ovs_nsh_key_base, ptr %344, i32 0, i32 1
  %349 = ptrtoint ptr %ttl.i616 to i32
  call void @__asan_store1_noabort(i32 %349)
  store i8 %conv1.i95.i, ptr %ttl.i616, align 1
  %mdtype.i = getelementptr inbounds %struct.nshhdr, ptr %add.ptr.i.i93.i, i32 0, i32 1
  %350 = ptrtoint ptr %mdtype.i to i32
  call void @__asan_load1_noabort(i32 %350)
  %351 = load i8, ptr %mdtype.i, align 2
  %mdtype28.i = getelementptr inbounds %struct.ovs_nsh_key_base, ptr %344, i32 0, i32 2
  %352 = ptrtoint ptr %mdtype28.i to i32
  call void @__asan_store1_noabort(i32 %352)
  store i8 %351, ptr %mdtype28.i, align 2
  %np.i = getelementptr inbounds %struct.nshhdr, ptr %add.ptr.i.i93.i, i32 0, i32 2
  %353 = ptrtoint ptr %np.i to i32
  call void @__asan_load1_noabort(i32 %353)
  %354 = load i8, ptr %np.i, align 1
  %np30.i = getelementptr inbounds %struct.ovs_nsh_key_base, ptr %344, i32 0, i32 3
  %355 = ptrtoint ptr %np30.i to i32
  call void @__asan_store1_noabort(i32 %355)
  store i8 %354, ptr %np30.i, align 1
  %path_hdr.i = getelementptr inbounds %struct.nshhdr, ptr %add.ptr.i.i93.i, i32 0, i32 3
  %356 = ptrtoint ptr %path_hdr.i to i32
  call void @__asan_load4_noabort(i32 %356)
  %357 = load i32, ptr %path_hdr.i, align 4
  %path_hdr32.i = getelementptr inbounds %struct.sw_flow_key, ptr %key, i32 0, i32 14, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1
  %358 = ptrtoint ptr %path_hdr32.i to i32
  call void @__asan_store4_noabort(i32 %358)
  store i32 %357, ptr %path_hdr32.i, align 4
  %359 = zext i8 %351 to i64
  call void @__sanitizer_cov_trace_switch(i64 %359, ptr @__sancov_gen_cov_switch_values.10)
  switch i8 %351, label %if.end22.i.cleanup351_crit_edge [
    i8 1, label %sw.bb.i
    i8 2, label %sw.bb43.i
  ]

if.end22.i.cleanup351_crit_edge:                  ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup351

sw.bb.i:                                          ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 24, i16 %331)
  %cmp37.not.i = icmp eq i16 %331, 24
  br i1 %cmp37.not.i, label %if.end40.i, label %sw.bb.i.cleanup351_crit_edge

sw.bb.i.cleanup351_crit_edge:                     ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup351

if.end40.i:                                       ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #9
  %context.i = getelementptr inbounds %struct.sw_flow_key, ptr %key, i32 0, i32 14, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2
  %360 = getelementptr inbounds %struct.nshhdr, ptr %add.ptr.i.i93.i, i32 0, i32 4
  %361 = call ptr @memcpy(ptr %context.i, ptr %360, i32 16)
  br label %cleanup351

sw.bb43.i:                                        ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #9
  %context44.i = getelementptr inbounds %struct.sw_flow_key, ptr %key, i32 0, i32 14, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2
  %362 = call ptr @memset(ptr %context44.i, i32 0, i32 16)
  br label %cleanup351

cleanup351:                                       ; preds = %sw.bb43.i, %if.end40.i, %sw.bb.i.cleanup351_crit_edge, %if.end22.i.cleanup351_crit_edge, %pskb_may_pull.exit.i86.i.cleanup351_crit_edge, %if.end10.i.cleanup351_crit_edge, %if.end.i615.cleanup351_crit_edge, %pskb_may_pull.exit.i.i614.cleanup351_crit_edge, %if.then341.cleanup351_crit_edge, %cleanup332.thread, %if.else325, %if.then320.cleanup351_crit_edge, %if.else310, %if.then301, %if.else291, %if.then282, %if.else272, %if.then257, %if.end250.cleanup351_crit_edge, %if.else215.cleanup351_crit_edge, %cleanup212.thread, %pskb_may_pull.exit.i.cleanup351_crit_edge, %while.cond.cleanup351_crit_edge, %if.else160, %if.then140, %if.else100, %if.then91, %if.else81, %if.then73, %if.else63, %if.then55, %if.else45, %if.then35, %if.end28.cleanup351_crit_edge, %if.then16, %if.then7, %if.then4
  %retval.4 = phi i32 [ 0, %if.then16 ], [ 0, %if.then7 ], [ -12, %if.then4 ], [ %retval.3.ph, %cleanup332.thread ], [ 0, %sw.bb43.i ], [ 0, %if.end40.i ], [ 0, %if.end250.cleanup351_crit_edge ], [ 0, %if.else291 ], [ 0, %if.then282 ], [ 0, %if.then320.cleanup351_crit_edge ], [ 0, %if.else325 ], [ 0, %if.then301 ], [ 0, %if.else310 ], [ 0, %if.then257 ], [ 0, %if.else272 ], [ 0, %cleanup212.thread ], [ 0, %if.else215.cleanup351_crit_edge ], [ 0, %if.then140 ], [ 0, %if.else160 ], [ 0, %if.end28.cleanup351_crit_edge ], [ 0, %if.else63 ], [ 0, %if.then55 ], [ 0, %if.else100 ], [ 0, %if.then91 ], [ 0, %if.then73 ], [ 0, %if.else81 ], [ 0, %if.then35 ], [ 0, %if.else45 ], [ -22, %if.end10.i.cleanup351_crit_edge ], [ -12, %pskb_may_pull.exit.i86.i.cleanup351_crit_edge ], [ -22, %if.then341.cleanup351_crit_edge ], [ -12, %pskb_may_pull.exit.i.i614.cleanup351_crit_edge ], [ -22, %if.end22.i.cleanup351_crit_edge ], [ -22, %sw.bb.i.cleanup351_crit_edge ], [ -22, %if.end.i615.cleanup351_crit_edge ], [ 0, %while.cond.cleanup351_crit_edge ], [ 0, %pskb_may_pull.exit.i.cleanup351_crit_edge ]
  ret i32 %retval.4
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ovs_flow_key_update(ptr noundef %skb, ptr noundef %key) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @key_extract(ptr noundef %skb, ptr noundef %key)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %mac_proto = getelementptr inbounds %struct.sw_flow_key, ptr %key, i32 0, i32 4
  %0 = ptrtoint ptr %mac_proto to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %mac_proto, align 2
  %2 = and i8 %1, 127
  store i8 %2, ptr %mac_proto, align 2
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @key_extract(ptr noundef %skb, ptr noundef %key) unnamed_addr #0 align 64 {
entry:
  %tci37.i = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %flags = getelementptr inbounds %struct.sw_flow_key, ptr %key, i32 0, i32 13, i32 2
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 0, ptr %flags, align 2
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %1 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %data.i, align 4
  %head.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %3 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %head.i, align 8
  %sub.ptr.lhs.cast.i = ptrtoint ptr %2 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %4 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %conv.i = trunc i32 %sub.ptr.sub.i to i16
  %mac_header.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 21
  %5 = ptrtoint ptr %mac_header.i to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 %conv.i, ptr %mac_header.i, align 2
  %vlan.i = getelementptr inbounds %struct.sw_flow_key, ptr %key, i32 0, i32 8, i32 2
  %6 = ptrtoint ptr %vlan.i to i32
  call void @__asan_storeN_noabort(i32 %6, i32 8)
  store i64 0, ptr %vlan.i, align 4
  %mac_proto.i = getelementptr inbounds %struct.sw_flow_key, ptr %key, i32 0, i32 4
  %7 = ptrtoint ptr %mac_proto.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %mac_proto.i, align 2
  %9 = and i8 %8, 127
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %cmp = icmp eq i8 %9, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %protocol = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 18
  %10 = ptrtoint ptr %protocol to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %protocol, align 8
  %12 = zext i16 %11 to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.11)
  switch i16 %11, label %if.end [
    i16 -30552, label %if.then.cleanup_crit_edge
    i16 -32512, label %if.then.cleanup_crit_edge167
  ]

if.then.cleanup_crit_edge167:                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %13 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %data.i, align 4
  %15 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %head.i, align 8
  %sub.ptr.lhs.cast.i86 = ptrtoint ptr %14 to i32
  %sub.ptr.rhs.cast.i87 = ptrtoint ptr %16 to i32
  %sub.ptr.sub.i88 = sub i32 %sub.ptr.lhs.cast.i86, %sub.ptr.rhs.cast.i87
  %conv.i89 = trunc i32 %sub.ptr.sub.i88 to i16
  %network_header.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %17 = ptrtoint ptr %network_header.i to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 %conv.i89, ptr %network_header.i, align 4
  %type = getelementptr inbounds %struct.sw_flow_key, ptr %key, i32 0, i32 8, i32 4
  %18 = ptrtoint ptr %type to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 %11, ptr %type, align 4
  br label %if.end54

if.else:                                          ; preds = %entry
  %19 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %head.i, align 8
  %21 = ptrtoint ptr %mac_header.i to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %mac_header.i, align 2
  %conv.i.i = zext i16 %22 to i32
  %add.ptr.i.i = getelementptr i8, ptr %20, i32 %conv.i.i
  %eth8 = getelementptr inbounds %struct.sw_flow_key, ptr %key, i32 0, i32 8
  %h_source = getelementptr inbounds %struct.ethhdr, ptr %add.ptr.i.i, i32 0, i32 1
  %23 = ptrtoint ptr %h_source to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %h_source, align 4
  %25 = ptrtoint ptr %eth8 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %eth8, align 4
  %add.ptr.i = getelementptr i8, ptr %h_source, i32 4
  %26 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %add.ptr.i, align 2
  %add.ptr1.i = getelementptr %struct.sw_flow_key, ptr %key, i32 0, i32 8, i32 0, i32 4
  %28 = ptrtoint ptr %add.ptr1.i to i32
  call void @__asan_store2_noabort(i32 %28)
  store i16 %27, ptr %add.ptr1.i, align 2
  %dst = getelementptr inbounds %struct.sw_flow_key, ptr %key, i32 0, i32 8, i32 1
  %29 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %add.ptr.i.i, align 4
  %31 = ptrtoint ptr %dst to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %30, ptr %dst, align 4
  %add.ptr.i90 = getelementptr i8, ptr %add.ptr.i.i, i32 4
  %32 = ptrtoint ptr %add.ptr.i90 to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %add.ptr.i90, align 2
  %add.ptr1.i91 = getelementptr %struct.sw_flow_key, ptr %key, i32 0, i32 8, i32 1, i32 4
  %34 = ptrtoint ptr %add.ptr1.i91 to i32
  call void @__asan_store2_noabort(i32 %34)
  store i16 %33, ptr %add.ptr1.i91, align 2
  %len1.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %35 = ptrtoint ptr %len1.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %len1.i, align 4
  %sub.i = add i32 %36, -12
  store i32 %sub.i, ptr %len1.i, align 4
  %data_len.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %37 = ptrtoint ptr %data_len.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %data_len.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i, i32 %38)
  %cmp.i = icmp ult i32 %sub.i, %38
  br i1 %cmp.i, label %do.body4.i, label %__skb_pull.exit, !prof !29

do.body4.i:                                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/skbuff.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2398, 0\0A.popsection", ""() #7, !srcloc !33
  unreachable

__skb_pull.exit:                                  ; preds = %if.else
  %39 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %data.i, align 4
  %add.ptr.i93 = getelementptr i8, ptr %40, i32 12
  store ptr %add.ptr.i93, ptr %data.i, align 4
  %vlan_present.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 3
  %41 = ptrtoint ptr %vlan_present.i to i32
  call void @__asan_loadN_noabort(i32 %41, i32 4)
  %bf.load.i = load i32, ptr %vlan_present.i, align 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %bf.load.i)
  %tobool.not.i = icmp sgt i32 %bf.load.i, -1
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %__skb_pull.exit
  call void @__sanitizer_cov_trace_pc() #9
  %vlan_tci.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 10
  %42 = ptrtoint ptr %vlan_tci.i to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %vlan_tci.i, align 2
  %44 = or i16 %43, 4096
  %tci.i = getelementptr inbounds %struct.sw_flow_key, ptr %key, i32 0, i32 8, i32 2, i32 1
  %45 = ptrtoint ptr %tci.i to i32
  call void @__asan_store2_noabort(i32 %45)
  store i16 %44, ptr %tci.i, align 2
  %vlan_proto.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 9
  %46 = ptrtoint ptr %vlan_proto.i to i32
  call void @__asan_load2_noabort(i32 %46)
  %47 = load i16, ptr %vlan_proto.i, align 8
  %48 = ptrtoint ptr %vlan.i to i32
  call void @__asan_store2_noabort(i32 %48)
  store i16 %47, ptr %vlan.i, align 4
  br label %if.end8.i

if.else.i:                                        ; preds = %__skb_pull.exit
  %49 = ptrtoint ptr %add.ptr.i93 to i32
  call void @__asan_load2_noabort(i32 %49)
  %50 = load i16, ptr %add.ptr.i93, align 2
  %51 = zext i16 %50 to i64
  call void @__sanitizer_cov_trace_switch(i64 %51, ptr @__sancov_gen_cov_switch_values.12)
  switch i16 %50, label %if.else.i.if.end23_crit_edge [
    i16 -30552, label %if.else.i.if.end.i127_crit_edge
    i16 -32512, label %if.else.i.if.end.i127_crit_edge168
  ]

if.else.i.if.end.i127_crit_edge168:               ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i127

if.else.i.if.end.i127_crit_edge:                  ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i127

if.else.i.if.end23_crit_edge:                     ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end23

if.end.i127:                                      ; preds = %if.else.i.if.end.i127_crit_edge, %if.else.i.if.end.i127_crit_edge168
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %sub.i)
  %cmp.i126 = icmp ult i32 %sub.i, 6
  br i1 %cmp.i126, label %if.end.i127.if.end23_crit_edge, label %if.end10.i, !prof !29

if.end.i127.if.end23_crit_edge:                   ; preds = %if.end.i127
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end23

if.end10.i:                                       ; preds = %if.end.i127
  %sub.i.i143 = sub i32 %sub.i, %38
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %sub.i.i143)
  %cmp.not.i = icmp ult i32 %sub.i.i143, 6
  br i1 %cmp.not.i, label %pskb_may_pull.exit, label %if.end10.i.if.end21.i_crit_edge, !prof !29

if.end10.i.if.end21.i_crit_edge:                  ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end21.i

pskb_may_pull.exit:                               ; preds = %if.end10.i
  %sub.i145 = sub nuw nsw i32 6, %sub.i.i143
  %call13.i = tail call ptr @__pskb_pull_tail(ptr noundef %skb, i32 noundef %sub.i145) #7
  %cmp14.i.not = icmp eq ptr %call13.i, null
  br i1 %cmp14.i.not, label %pskb_may_pull.exit.cleanup_crit_edge, label %pskb_may_pull.exit.if.end21.i_crit_edge, !prof !29

pskb_may_pull.exit.if.end21.i_crit_edge:          ; preds = %pskb_may_pull.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end21.i

pskb_may_pull.exit.cleanup_crit_edge:             ; preds = %pskb_may_pull.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end21.i:                                       ; preds = %pskb_may_pull.exit.if.end21.i_crit_edge, %if.end10.i.if.end21.i_crit_edge
  %52 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %data.i, align 4
  %tci.i128 = getelementptr inbounds %struct.vlan_head, ptr %53, i32 0, i32 1
  %54 = ptrtoint ptr %tci.i128 to i32
  call void @__asan_load2_noabort(i32 %54)
  %55 = load i16, ptr %tci.i128, align 2
  %56 = or i16 %55, 4096
  %tci24.i = getelementptr inbounds %struct.sw_flow_key, ptr %key, i32 0, i32 8, i32 2, i32 1
  %57 = ptrtoint ptr %tci24.i to i32
  call void @__asan_store2_noabort(i32 %57)
  store i16 %56, ptr %tci24.i, align 2
  %58 = ptrtoint ptr %53 to i32
  call void @__asan_load2_noabort(i32 %58)
  %59 = load i16, ptr %53, align 2
  %60 = ptrtoint ptr %vlan.i to i32
  call void @__asan_store2_noabort(i32 %60)
  store i16 %59, ptr %vlan.i, align 2
  %61 = load ptr, ptr %data.i, align 4
  %62 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %head.i, align 8
  %64 = ptrtoint ptr %mac_header.i to i32
  call void @__asan_load2_noabort(i32 %64)
  %65 = load i16, ptr %mac_header.i, align 2
  %conv.i.i131 = zext i16 %65 to i32
  %add.ptr.i.i132 = getelementptr i8, ptr %63, i32 %conv.i.i131
  %sub.ptr.lhs.cast.i133 = ptrtoint ptr %61 to i32
  %sub.ptr.rhs.cast.i134 = ptrtoint ptr %add.ptr.i.i132 to i32
  %sub.ptr.sub.i135 = sub i32 %sub.ptr.lhs.cast.i133, %sub.ptr.rhs.cast.i134
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %tci37.i) #7
  %66 = ptrtoint ptr %tci37.i to i32
  call void @__asan_store2_noabort(i32 %66)
  store i16 -1, ptr %tci37.i, align 2, !annotation !32
  %idx.neg.i.i = sub i32 0, %sub.ptr.sub.i135
  %add.ptr.i66.i = getelementptr i8, ptr %61, i32 %idx.neg.i.i
  %67 = ptrtoint ptr %data.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr %add.ptr.i66.i, ptr %data.i, align 4
  %68 = ptrtoint ptr %len1.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %len1.i, align 4
  %add.i.i = add i32 %69, %sub.ptr.sub.i135
  store i32 %add.i.i, ptr %len1.i, align 4
  %call39.i = call i32 @__skb_vlan_pop(ptr noundef %skb, ptr noundef nonnull %tci37.i) #7
  %70 = ptrtoint ptr %len1.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %len1.i, align 4
  %sub.i.i136 = sub i32 %71, %sub.ptr.sub.i135
  store i32 %sub.i.i136, ptr %len1.i, align 4
  %72 = ptrtoint ptr %data_len.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %data_len.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i.i136, i32 %73)
  %cmp.i.i138 = icmp ult i32 %sub.i.i136, %73
  br i1 %cmp.i.i138, label %do.body4.i.i139, label %__skb_pull.exit.i140, !prof !29

do.body4.i.i139:                                  ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #9
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/skbuff.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2398, 0\0A.popsection", ""() #7, !srcloc !33
  unreachable

__skb_pull.exit.i140:                             ; preds = %if.end21.i
  %74 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %data.i, align 4
  %add.ptr.i69.i = getelementptr i8, ptr %75, i32 %sub.ptr.sub.i135
  store ptr %add.ptr.i69.i, ptr %data.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call39.i)
  %tobool41.not.i = icmp eq i32 %call39.i, 0
  br i1 %tobool41.not.i, label %parse_vlan_tag.exit.thread150, label %parse_vlan_tag.exit

parse_vlan_tag.exit.thread150:                    ; preds = %__skb_pull.exit.i140
  call void @__sanitizer_cov_trace_pc() #9
  %76 = ptrtoint ptr %vlan.i to i32
  call void @__asan_load2_noabort(i32 %76)
  %77 = load i16, ptr %vlan.i, align 2
  %78 = ptrtoint ptr %tci37.i to i32
  call void @__asan_load2_noabort(i32 %78)
  %79 = load i16, ptr %tci37.i, align 2
  %vlan_proto1.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 9
  %80 = ptrtoint ptr %vlan_proto1.i.i to i32
  call void @__asan_store2_noabort(i32 %80)
  store i16 %77, ptr %vlan_proto1.i.i, align 8
  %vlan_tci2.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 10
  %81 = ptrtoint ptr %vlan_tci2.i.i to i32
  call void @__asan_store2_noabort(i32 %81)
  store i16 %79, ptr %vlan_tci2.i.i, align 2
  %82 = ptrtoint ptr %vlan_present.i to i32
  call void @__asan_loadN_noabort(i32 %82, i32 4)
  %bf.load.i.i = load i32, ptr %vlan_present.i, align 2
  %bf.set.i.i = or i32 %bf.load.i.i, -2147483648
  store i32 %bf.set.i.i, ptr %vlan_present.i, align 2
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %tci37.i) #7
  br label %if.end8.i

parse_vlan_tag.exit:                              ; preds = %__skb_pull.exit.i140
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %tci37.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call39.i)
  %cmp.i95 = icmp slt i32 %call39.i, 1
  br i1 %cmp.i95, label %parse_vlan_tag.exit.cleanup_crit_edge, label %parse_vlan_tag.exit.if.end8.i_crit_edge

parse_vlan_tag.exit.if.end8.i_crit_edge:          ; preds = %parse_vlan_tag.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end8.i

parse_vlan_tag.exit.cleanup_crit_edge:            ; preds = %parse_vlan_tag.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end8.i:                                        ; preds = %parse_vlan_tag.exit.if.end8.i_crit_edge, %parse_vlan_tag.exit.thread150, %if.then.i
  %cvlan.i = getelementptr inbounds %struct.sw_flow_key, ptr %key, i32 0, i32 8, i32 3
  %83 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %data.i, align 4
  %85 = ptrtoint ptr %84 to i32
  call void @__asan_load2_noabort(i32 %85)
  %86 = load i16, ptr %84, align 2
  %87 = zext i16 %86 to i64
  call void @__sanitizer_cov_trace_switch(i64 %87, ptr @__sancov_gen_cov_switch_values.13)
  switch i16 %86, label %if.end8.i.if.end23_crit_edge [
    i16 -30552, label %if.end8.i.if.end.i.i_crit_edge
    i16 -32512, label %if.end8.i.if.end.i.i_crit_edge169
  ]

if.end8.i.if.end.i.i_crit_edge169:                ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i.i

if.end8.i.if.end.i.i_crit_edge:                   ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i.i

if.end8.i.if.end23_crit_edge:                     ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end23

if.end.i.i:                                       ; preds = %if.end8.i.if.end.i.i_crit_edge, %if.end8.i.if.end.i.i_crit_edge169
  %88 = ptrtoint ptr %len1.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %len1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %89)
  %cmp.i.i = icmp ult i32 %89, 6
  br i1 %cmp.i.i, label %if.end.i.i.if.end23_crit_edge, label %if.end10.i.i, !prof !29

if.end.i.i.if.end23_crit_edge:                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end23

if.end10.i.i:                                     ; preds = %if.end.i.i
  %90 = ptrtoint ptr %data_len.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %data_len.i, align 8
  %sub.i.i.i = sub i32 %89, %91
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %sub.i.i.i)
  %cmp.not.i.i = icmp ult i32 %sub.i.i.i, 6
  br i1 %cmp.not.i.i, label %pskb_may_pull.exit.i, label %if.end10.i.i.if.end21.i.i_crit_edge, !prof !29

if.end10.i.i.if.end21.i.i_crit_edge:              ; preds = %if.end10.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end21.i.i

pskb_may_pull.exit.i:                             ; preds = %if.end10.i.i
  %sub.i.i = sub nuw nsw i32 6, %sub.i.i.i
  %call13.i.i = call ptr @__pskb_pull_tail(ptr noundef %skb, i32 noundef %sub.i.i) #7
  %cmp14.i.not.i = icmp eq ptr %call13.i.i, null
  br i1 %cmp14.i.not.i, label %pskb_may_pull.exit.i.cleanup_crit_edge, label %pskb_may_pull.exit.i.if.end21.i.i_crit_edge, !prof !29

pskb_may_pull.exit.i.if.end21.i.i_crit_edge:      ; preds = %pskb_may_pull.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end21.i.i

pskb_may_pull.exit.i.cleanup_crit_edge:           ; preds = %pskb_may_pull.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end21.i.i:                                     ; preds = %pskb_may_pull.exit.i.if.end21.i.i_crit_edge, %if.end10.i.i.if.end21.i.i_crit_edge
  %92 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %data.i, align 4
  %tci.i.i = getelementptr inbounds %struct.vlan_head, ptr %93, i32 0, i32 1
  %94 = ptrtoint ptr %tci.i.i to i32
  call void @__asan_load2_noabort(i32 %94)
  %95 = load i16, ptr %tci.i.i, align 2
  %96 = or i16 %95, 4096
  %tci24.i.i = getelementptr inbounds %struct.sw_flow_key, ptr %key, i32 0, i32 8, i32 3, i32 1
  %97 = ptrtoint ptr %tci24.i.i to i32
  call void @__asan_store2_noabort(i32 %97)
  store i16 %96, ptr %tci24.i.i, align 2
  %98 = ptrtoint ptr %93 to i32
  call void @__asan_load2_noabort(i32 %98)
  %99 = load i16, ptr %93, align 2
  %100 = ptrtoint ptr %cvlan.i to i32
  call void @__asan_store2_noabort(i32 %100)
  store i16 %99, ptr %cvlan.i, align 2
  %101 = ptrtoint ptr %len1.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %len1.i, align 4
  %sub.i71.i.i = add i32 %102, -4
  store i32 %sub.i71.i.i, ptr %len1.i, align 4
  %103 = ptrtoint ptr %data_len.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %data_len.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i71.i.i, i32 %104)
  %cmp.i73.i.i = icmp ult i32 %sub.i71.i.i, %104
  br i1 %cmp.i73.i.i, label %do.body4.i74.i.i, label %parse_vlan_tag.exit.i, !prof !29

do.body4.i74.i.i:                                 ; preds = %if.end21.i.i
  call void @__sanitizer_cov_trace_pc() #9
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/skbuff.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2398, 0\0A.popsection", ""() #7, !srcloc !33
  unreachable

parse_vlan_tag.exit.i:                            ; preds = %if.end21.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %105 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %data.i, align 4
  %add.ptr.i76.i.i = getelementptr i8, ptr %106, i32 4
  store ptr %add.ptr.i76.i.i, ptr %data.i, align 4
  br label %if.end23

if.end23:                                         ; preds = %parse_vlan_tag.exit.i, %if.end.i.i.if.end23_crit_edge, %if.end8.i.if.end23_crit_edge, %if.end.i127.if.end23_crit_edge, %if.else.i.if.end23_crit_edge
  %107 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %data.i, align 4
  %109 = ptrtoint ptr %108 to i32
  call void @__asan_load2_noabort(i32 %109)
  %110 = load i16, ptr %108, align 2
  %111 = ptrtoint ptr %len1.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %len1.i, align 4
  %sub.i.i97 = add i32 %112, -2
  store i32 %sub.i.i97, ptr %len1.i, align 4
  %113 = ptrtoint ptr %data_len.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %data_len.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i.i97, i32 %114)
  %cmp.i.i98 = icmp ult i32 %sub.i.i97, %114
  br i1 %cmp.i.i98, label %do.body4.i.i, label %__skb_pull.exit.i, !prof !29

do.body4.i.i:                                     ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #9
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/skbuff.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2398, 0\0A.popsection", ""() #7, !srcloc !33
  unreachable

__skb_pull.exit.i:                                ; preds = %if.end23
  %add.ptr.i.i99 = getelementptr i8, ptr %108, i32 2
  %115 = ptrtoint ptr %data.i to i32
  call void @__asan_store4_noabort(i32 %115)
  store ptr %add.ptr.i.i99, ptr %data.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 1535, i16 %110)
  %cmp.i48.i = icmp ugt i16 %110, 1535
  br i1 %cmp.i48.i, label %__skb_pull.exit.i.if.end39_crit_edge, label %if.end.i

__skb_pull.exit.i.if.end39_crit_edge:             ; preds = %__skb_pull.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end39

if.end.i:                                         ; preds = %__skb_pull.exit.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %sub.i.i97)
  %cmp.i100 = icmp ult i32 %sub.i.i97, 8
  br i1 %cmp.i100, label %if.end.i.if.end39_crit_edge, label %if.end3.i

if.end.i.if.end39_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end39

if.end3.i:                                        ; preds = %if.end.i
  %sub.i.i.i101 = sub i32 %sub.i.i97, %114
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %sub.i.i.i101)
  %cmp.not.i.i102 = icmp ult i32 %sub.i.i.i101, 8
  br i1 %cmp.not.i.i102, label %pskb_may_pull.exit.i105, label %if.end3.i.if.end8.i106_crit_edge, !prof !29

if.end3.i.if.end8.i106_crit_edge:                 ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end8.i106

pskb_may_pull.exit.i105:                          ; preds = %if.end3.i
  %sub.i49.i = sub nuw nsw i32 8, %sub.i.i.i101
  %call13.i.i103 = call ptr @__pskb_pull_tail(ptr noundef %skb, i32 noundef %sub.i49.i) #7
  %cmp14.i.not.i104 = icmp eq ptr %call13.i.i103, null
  br i1 %cmp14.i.not.i104, label %parse_ethertype.exit, label %pskb_may_pull.exit.i105.if.end8.i106_crit_edge, !prof !29

pskb_may_pull.exit.i105.if.end8.i106_crit_edge:   ; preds = %pskb_may_pull.exit.i105
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end8.i106

if.end8.i106:                                     ; preds = %pskb_may_pull.exit.i105.if.end8.i106_crit_edge, %if.end3.i.if.end8.i106_crit_edge
  %116 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %data.i, align 4
  %118 = ptrtoint ptr %117 to i32
  call void @__asan_load1_noabort(i32 %118)
  %119 = load i8, ptr %117, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -86, i8 %119)
  %cmp10.not.i = icmp eq i8 %119, -86
  br i1 %cmp10.not.i, label %lor.lhs.false.i, label %if.end8.i106.if.end39_crit_edge

if.end8.i106.if.end39_crit_edge:                  ; preds = %if.end8.i106
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end39

lor.lhs.false.i:                                  ; preds = %if.end8.i106
  %ssap.i = getelementptr inbounds %struct.llc_snap_hdr, ptr %117, i32 0, i32 1
  %120 = ptrtoint ptr %ssap.i to i32
  call void @__asan_load1_noabort(i32 %120)
  %121 = load i8, ptr %ssap.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -86, i8 %121)
  %cmp13.not.i = icmp eq i8 %121, -86
  br i1 %cmp13.not.i, label %lor.lhs.false15.i, label %lor.lhs.false.i.if.end39_crit_edge

lor.lhs.false.i.if.end39_crit_edge:               ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end39

lor.lhs.false15.i:                                ; preds = %lor.lhs.false.i
  %oui.i = getelementptr inbounds %struct.llc_snap_hdr, ptr %117, i32 0, i32 3
  %122 = ptrtoint ptr %oui.i to i32
  call void @__asan_load1_noabort(i32 %122)
  %123 = load i8, ptr %oui.i, align 1
  %arrayidx18.i = getelementptr %struct.llc_snap_hdr, ptr %117, i32 0, i32 3, i32 1
  %124 = ptrtoint ptr %arrayidx18.i to i32
  call void @__asan_load1_noabort(i32 %124)
  %125 = load i8, ptr %arrayidx18.i, align 1
  %or46.i = or i8 %125, %123
  %arrayidx21.i = getelementptr %struct.llc_snap_hdr, ptr %117, i32 0, i32 3, i32 2
  %126 = ptrtoint ptr %arrayidx21.i to i32
  call void @__asan_load1_noabort(i32 %126)
  %127 = load i8, ptr %arrayidx21.i, align 1
  %or2347.i = or i8 %or46.i, %127
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %or2347.i)
  %cmp24.not.i = icmp eq i8 %or2347.i, 0
  br i1 %cmp24.not.i, label %if.end27.i, label %lor.lhs.false15.i.if.end39_crit_edge

lor.lhs.false15.i.if.end39_crit_edge:             ; preds = %lor.lhs.false15.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end39

if.end27.i:                                       ; preds = %lor.lhs.false15.i
  %128 = ptrtoint ptr %len1.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %len1.i, align 4
  %sub.i51.i = add i32 %129, -8
  store i32 %sub.i51.i, ptr %len1.i, align 4
  %130 = ptrtoint ptr %data_len.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %data_len.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i51.i, i32 %131)
  %cmp.i53.i = icmp ult i32 %sub.i51.i, %131
  br i1 %cmp.i53.i, label %do.body4.i54.i, label %__skb_pull.exit57.i, !prof !29

do.body4.i54.i:                                   ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #9
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/skbuff.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2398, 0\0A.popsection", ""() #7, !srcloc !33
  unreachable

__skb_pull.exit57.i:                              ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr.i56.i = getelementptr i8, ptr %117, i32 8
  %132 = ptrtoint ptr %data.i to i32
  call void @__asan_store4_noabort(i32 %132)
  store ptr %add.ptr.i56.i, ptr %data.i, align 4
  %ethertype.i = getelementptr inbounds %struct.llc_snap_hdr, ptr %117, i32 0, i32 4
  %133 = ptrtoint ptr %ethertype.i to i32
  call void @__asan_load2_noabort(i32 %133)
  %134 = load i16, ptr %ethertype.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 1535, i16 %134)
  %cmp.i58.i = icmp ugt i16 %134, 1535
  %spec.select = select i1 %cmp.i58.i, i16 %134, i16 4
  br label %if.end39

parse_ethertype.exit:                             ; preds = %pskb_may_pull.exit.i105
  call void @__sanitizer_cov_trace_pc() #9
  %type26 = getelementptr inbounds %struct.sw_flow_key, ptr %key, i32 0, i32 8, i32 4
  %135 = ptrtoint ptr %type26 to i32
  call void @__asan_store2_noabort(i32 %135)
  store i16 0, ptr %type26, align 4
  br label %cleanup

if.end39:                                         ; preds = %__skb_pull.exit57.i, %lor.lhs.false15.i.if.end39_crit_edge, %lor.lhs.false.i.if.end39_crit_edge, %if.end8.i106.if.end39_crit_edge, %if.end.i.if.end39_crit_edge, %__skb_pull.exit.i.if.end39_crit_edge
  %retval.0.i107.ph = phi i16 [ 4, %if.end8.i106.if.end39_crit_edge ], [ 4, %lor.lhs.false.i.if.end39_crit_edge ], [ 4, %lor.lhs.false15.i.if.end39_crit_edge ], [ 4, %if.end.i.if.end39_crit_edge ], [ %110, %__skb_pull.exit.i.if.end39_crit_edge ], [ %spec.select, %__skb_pull.exit57.i ]
  %type26164 = getelementptr inbounds %struct.sw_flow_key, ptr %key, i32 0, i32 8, i32 4
  %136 = ptrtoint ptr %type26164 to i32
  call void @__asan_store2_noabort(i32 %136)
  store i16 %retval.0.i107.ph, ptr %type26164, align 4
  %tci = getelementptr inbounds %struct.sw_flow_key, ptr %key, i32 0, i32 8, i32 3, i32 1
  %137 = ptrtoint ptr %tci to i32
  call void @__asan_load2_noabort(i32 %137)
  %138 = load i16, ptr %tci, align 2
  %139 = and i16 %138, 4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %139)
  %tobool42.not = icmp eq i16 %139, 0
  br i1 %tobool42.not, label %if.end39.if.end51_crit_edge, label %if.then43

if.end39.if.end51_crit_edge:                      ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end51

if.then43:                                        ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #9
  %cvlan = getelementptr inbounds %struct.sw_flow_key, ptr %key, i32 0, i32 8, i32 3
  %140 = ptrtoint ptr %cvlan to i32
  call void @__asan_load2_noabort(i32 %140)
  %141 = load i16, ptr %cvlan, align 4
  br label %if.end51

if.end51:                                         ; preds = %if.then43, %if.end39.if.end51_crit_edge
  %.sink = phi i16 [ %141, %if.then43 ], [ %retval.0.i107.ph, %if.end39.if.end51_crit_edge ]
  %142 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 18
  %143 = ptrtoint ptr %142 to i32
  call void @__asan_store2_noabort(i32 %143)
  store i16 %.sink, ptr %142, align 8
  %144 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %data.i, align 4
  %146 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %head.i, align 8
  %sub.ptr.lhs.cast.i110 = ptrtoint ptr %145 to i32
  %sub.ptr.rhs.cast.i111 = ptrtoint ptr %147 to i32
  %sub.ptr.sub.i112 = sub i32 %sub.ptr.lhs.cast.i110, %sub.ptr.rhs.cast.i111
  %conv.i113 = trunc i32 %sub.ptr.sub.i112 to i16
  %network_header.i114 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %148 = ptrtoint ptr %network_header.i114 to i32
  call void @__asan_store2_noabort(i32 %148)
  store i16 %conv.i113, ptr %network_header.i114, align 4
  %149 = ptrtoint ptr %mac_header.i to i32
  call void @__asan_load2_noabort(i32 %149)
  %150 = load i16, ptr %mac_header.i, align 2
  %conv.i117 = zext i16 %150 to i32
  %add.ptr.i118 = getelementptr i8, ptr %147, i32 %conv.i117
  %sub.ptr.rhs.cast = ptrtoint ptr %add.ptr.i118 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast.i110, %sub.ptr.rhs.cast
  %idx.neg.i = sub i32 0, %sub.ptr.sub
  %add.ptr.i120 = getelementptr i8, ptr %145, i32 %idx.neg.i
  store ptr %add.ptr.i120, ptr %data.i, align 4
  %151 = ptrtoint ptr %len1.i to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load i32, ptr %len1.i, align 4
  %add.i = add i32 %sub.ptr.sub, %152
  store i32 %add.i, ptr %len1.i, align 4
  br label %if.end54

if.end54:                                         ; preds = %if.end51, %if.end
  %network_header.i122 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %153 = ptrtoint ptr %network_header.i122 to i32
  call void @__asan_load2_noabort(i32 %153)
  %154 = load i16, ptr %network_header.i122, align 4
  %155 = ptrtoint ptr %mac_header.i to i32
  call void @__asan_load2_noabort(i32 %155)
  %156 = load i16, ptr %mac_header.i, align 2
  %sub.i124 = sub i16 %154, %156
  %mac_len.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 8
  %157 = ptrtoint ptr %mac_len.i to i32
  call void @__asan_store2_noabort(i32 %157)
  store i16 %sub.i124, ptr %mac_len.i, align 4
  %call55 = call fastcc i32 @key_extract_l3l4(ptr noundef %skb, ptr noundef %key)
  br label %cleanup

cleanup:                                          ; preds = %if.end54, %parse_ethertype.exit, %pskb_may_pull.exit.i.cleanup_crit_edge, %parse_vlan_tag.exit.cleanup_crit_edge, %pskb_may_pull.exit.cleanup_crit_edge, %if.then.cleanup_crit_edge, %if.then.cleanup_crit_edge167
  %retval.0 = phi i32 [ %call55, %if.end54 ], [ -22, %if.then.cleanup_crit_edge ], [ -12, %parse_ethertype.exit ], [ -12, %pskb_may_pull.exit.cleanup_crit_edge ], [ -12, %parse_vlan_tag.exit.cleanup_crit_edge ], [ -12, %pskb_may_pull.exit.i.cleanup_crit_edge ], [ -22, %if.then.cleanup_crit_edge167 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ovs_flow_key_extract(ptr noundef readonly %tun_info, ptr noundef %skb, ptr noundef %key) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %tun_info, null
  br i1 %tobool.not, label %if.else8, label %if.then

if.then:                                          ; preds = %entry
  %mode.i = getelementptr inbounds %struct.ip_tunnel_info, ptr %tun_info, i32 0, i32 3
  %0 = ptrtoint ptr %mode.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %mode.i, align 1
  %2 = and i8 %1, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool.not.i = icmp eq i8 %2, 0
  %conv = select i1 %tobool.not.i, i8 2, i8 10
  %tun_proto = getelementptr inbounds %struct.sw_flow_key, ptr %key, i32 0, i32 5
  %3 = ptrtoint ptr %tun_proto to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 %conv, ptr %tun_proto, align 1
  %tun_key = getelementptr inbounds %struct.sw_flow_key, ptr %key, i32 0, i32 2
  %4 = call ptr @memcpy(ptr %tun_key, ptr %tun_info, i32 56)
  %options_len = getelementptr inbounds %struct.ip_tunnel_info, ptr %tun_info, i32 0, i32 2
  %5 = ptrtoint ptr %options_len to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %options_len, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool2.not = icmp eq i8 %6, 0
  br i1 %tobool2.not, label %if.else, label %do.end

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %7 = xor i8 %6, -1
  %sub = zext i8 %7 to i32
  %add.ptr = getelementptr i8, ptr %key, i32 %sub
  %add.ptr.i = getelementptr %struct.ip_tunnel_info, ptr %tun_info, i32 1
  %conv.i = zext i8 %6 to i32
  %8 = call ptr @memcpy(ptr %add.ptr, ptr %add.ptr.i, i32 %conv.i)
  %9 = ptrtoint ptr %options_len to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %options_len, align 8
  %tun_opts_len = getelementptr inbounds %struct.sw_flow_key, ptr %key, i32 0, i32 1
  %11 = ptrtoint ptr %tun_opts_len to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %10, ptr %tun_opts_len, align 1
  br label %if.end12

if.else:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %tun_opts_len7 = getelementptr inbounds %struct.sw_flow_key, ptr %key, i32 0, i32 1
  %12 = ptrtoint ptr %tun_opts_len7 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 0, ptr %tun_opts_len7, align 1
  br label %if.end12

if.else8:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %tun_proto9 = getelementptr inbounds %struct.sw_flow_key, ptr %key, i32 0, i32 5
  %13 = ptrtoint ptr %tun_proto9 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 0, ptr %tun_proto9, align 1
  %tun_opts_len10 = getelementptr inbounds %struct.sw_flow_key, ptr %key, i32 0, i32 1
  %14 = call ptr @memset(ptr %tun_opts_len10, i32 0, i32 57)
  br label %if.end12

if.end12:                                         ; preds = %if.else8, %if.else, %do.end
  %priority = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 6
  %15 = ptrtoint ptr %priority to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %priority, align 4
  %phy = getelementptr inbounds %struct.sw_flow_key, ptr %key, i32 0, i32 3
  %17 = ptrtoint ptr %phy to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %phy, align 8
  %cb = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3
  %18 = ptrtoint ptr %cb to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %cb, align 8
  %port_no = getelementptr inbounds %struct.vport, ptr %19, i32 0, i32 4
  %20 = ptrtoint ptr %port_no to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %port_no, align 4
  %in_port = getelementptr inbounds %struct.sw_flow_key, ptr %key, i32 0, i32 3, i32 2
  %22 = ptrtoint ptr %in_port to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 %21, ptr %in_port, align 8
  %23 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 13
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %23, align 4
  %skb_mark = getelementptr inbounds %struct.sw_flow_key, ptr %key, i32 0, i32 3, i32 1
  %26 = ptrtoint ptr %skb_mark to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %25, ptr %skb_mark, align 4
  %ovs_flow_hash = getelementptr inbounds %struct.sw_flow_key, ptr %key, i32 0, i32 6
  %27 = ptrtoint ptr %ovs_flow_hash to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 0, ptr %ovs_flow_hash, align 4
  %28 = getelementptr inbounds %struct.anon.29, ptr %skb, i32 0, i32 2
  %29 = ptrtoint ptr %28 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %28, align 8
  %type.i = getelementptr inbounds %struct.net_device, ptr %30, i32 0, i32 32
  %31 = ptrtoint ptr %type.i to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %type.i, align 16
  %33 = zext i16 %32 to i64
  call void @__sanitizer_cov_trace_switch(i64 %33, ptr @__sancov_gen_cov_switch_values.14)
  switch i16 %32, label %land.end.i [
    i16 1, label %if.end12.if.end20_crit_edge
    i16 -2, label %sw.bb1.i
  ]

if.end12.if.end20_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end20

sw.bb1.i:                                         ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #9
  %protocol.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 18
  %34 = ptrtoint ptr %protocol.i to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %protocol.i, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 25944, i16 %35)
  %cmp.i = icmp eq i16 %35, 25944
  %phi.cast = zext i1 %cmp.i to i8
  br label %if.end20

land.end.i:                                       ; preds = %if.end12
  %.b42.i = load i1, ptr @key_extract_mac_proto.__already_done, align 1
  br i1 %.b42.i, label %land.end.i.cleanup_crit_edge, label %if.then9.i, !prof !30

land.end.i.cleanup_crit_edge:                     ; preds = %land.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then9.i:                                       ; preds = %land.end.i
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @key_extract_mac_proto.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 852, i32 noundef 9, ptr noundef null) #7
  br label %cleanup

if.end20:                                         ; preds = %sw.bb1.i, %if.end12.if.end20_crit_edge
  %retval.0.i168 = phi i8 [ 1, %if.end12.if.end20_crit_edge ], [ %phi.cast, %sw.bb1.i ]
  %mac_proto = getelementptr inbounds %struct.sw_flow_key, ptr %key, i32 0, i32 4
  %36 = ptrtoint ptr %mac_proto to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 %retval.0.i168, ptr %mac_proto, align 2
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr nonnull @tc_recirc_sharing_support, ptr blockaddress(@ovs_flow_key_extract, %if.then26)) #7
          to label %if.else82 [label %if.then26], !srcloc !34

if.then26:                                        ; preds = %if.end20
  %active_extensions.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 13
  %37 = ptrtoint ptr %active_extensions.i.i to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %active_extensions.i.i, align 1
  %39 = and i8 %38, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %39)
  %tobool.i.not.i = icmp eq i8 %39, 0
  br i1 %tobool.i.not.i, label %if.then26.cond.end44.thread_crit_edge, label %skb_ext_find.exit

if.then26.cond.end44.thread_crit_edge:            ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.end44.thread

skb_ext_find.exit:                                ; preds = %if.then26
  %extensions.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 22
  %40 = ptrtoint ptr %extensions.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %extensions.i, align 8
  %arrayidx.i = getelementptr %struct.skb_ext, ptr %41, i32 0, i32 1, i32 2
  %42 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %arrayidx.i, align 1
  %conv.i169 = zext i8 %43 to i32
  %shl.i = shl nuw nsw i32 %conv.i169, 3
  %add.ptr.i170 = getelementptr i8, ptr %41, i32 %shl.i
  %tobool28.not = icmp eq ptr %add.ptr.i170, null
  br i1 %tobool28.not, label %skb_ext_find.exit.cond.end44.thread_crit_edge, label %cond.end44

skb_ext_find.exit.cond.end44.thread_crit_edge:    ; preds = %skb_ext_find.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.end44.thread

cond.end44.thread:                                ; preds = %skb_ext_find.exit.cond.end44.thread_crit_edge, %if.then26.cond.end44.thread_crit_edge
  %recirc_id.c = getelementptr inbounds %struct.sw_flow_key, ptr %key, i32 0, i32 7
  %44 = ptrtoint ptr %recirc_id.c to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 0, ptr %recirc_id.c, align 8
  %mru38.c = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 4
  %45 = ptrtoint ptr %mru38.c to i32
  call void @__asan_store2_noabort(i32 %45)
  store i16 0, ptr %mru38.c, align 4
  br label %if.end84

cond.end44:                                       ; preds = %skb_ext_find.exit
  %46 = ptrtoint ptr %add.ptr.i170 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %add.ptr.i170, align 4
  %recirc_id.c166 = getelementptr inbounds %struct.sw_flow_key, ptr %key, i32 0, i32 7
  %48 = ptrtoint ptr %recirc_id.c166 to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %47, ptr %recirc_id.c166, align 8
  %mru = getelementptr inbounds %struct.tc_skb_ext, ptr %add.ptr.i170, i32 0, i32 1
  %49 = ptrtoint ptr %mru to i32
  call void @__asan_load2_noabort(i32 %49)
  %50 = load i16, ptr %mru, align 4
  %mru38.c167 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 4
  %51 = ptrtoint ptr %mru38.c167 to i32
  call void @__asan_store2_noabort(i32 %51)
  store i16 %50, ptr %mru38.c167, align 4
  %post_ct41 = getelementptr inbounds %struct.tc_skb_ext, ptr %add.ptr.i170, i32 0, i32 3
  %52 = ptrtoint ptr %post_ct41 to i32
  call void @__asan_load1_noabort(i32 %52)
  %bf.load = load i8, ptr %post_ct41, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %bf.load)
  %phi.cmp = icmp slt i8 %bf.load, 0
  br i1 %phi.cmp, label %cond.true75, label %cond.end44.if.end84_crit_edge

cond.end44.if.end84_crit_edge:                    ; preds = %cond.end44
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end84

cond.true75:                                      ; preds = %cond.end44
  call void @__sanitizer_cov_trace_pc() #9
  %53 = ptrtoint ptr %post_ct41 to i32
  call void @__asan_load1_noabort(i32 %53)
  %bf.load52 = load i8, ptr %post_ct41, align 4
  %54 = and i8 %bf.load52, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %54)
  %phi.cmp164 = icmp ne i8 %54, 0
  %55 = and i8 %bf.load52, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %55)
  %phi.cmp165 = icmp ne i8 %55, 0
  %zone76 = getelementptr inbounds %struct.tc_skb_ext, ptr %add.ptr.i170, i32 0, i32 2
  %56 = ptrtoint ptr %zone76 to i32
  call void @__asan_load2_noabort(i32 %56)
  %57 = load i16, ptr %zone76, align 2
  br label %if.end84

if.else82:                                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #9
  %recirc_id83 = getelementptr inbounds %struct.sw_flow_key, ptr %key, i32 0, i32 7
  %58 = ptrtoint ptr %recirc_id83 to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 0, ptr %recirc_id83, align 8
  br label %if.end84

if.end84:                                         ; preds = %if.else82, %cond.true75, %cond.end44.if.end84_crit_edge, %cond.end44.thread
  %post_ct.0.off0 = phi i1 [ false, %if.else82 ], [ true, %cond.true75 ], [ false, %cond.end44.if.end84_crit_edge ], [ false, %cond.end44.thread ]
  %post_ct_snat.0.off0 = phi i1 [ false, %if.else82 ], [ %phi.cmp164, %cond.true75 ], [ false, %cond.end44.if.end84_crit_edge ], [ false, %cond.end44.thread ]
  %post_ct_dnat.0.off0 = phi i1 [ false, %if.else82 ], [ %phi.cmp165, %cond.true75 ], [ false, %cond.end44.if.end84_crit_edge ], [ false, %cond.end44.thread ]
  %zone.0 = phi i16 [ 0, %if.else82 ], [ %57, %cond.true75 ], [ 0, %cond.end44.if.end84_crit_edge ], [ 0, %cond.end44.thread ]
  %call85 = tail call fastcc i32 @key_extract(ptr noundef %skb, ptr noundef %key)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call85)
  %tobool86.not = icmp eq i32 %call85, 0
  br i1 %tobool86.not, label %if.then87, label %if.end84.cleanup_crit_edge

if.end84.cleanup_crit_edge:                       ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then87:                                        ; preds = %if.end84
  tail call void @ovs_ct_fill_key(ptr noundef %skb, ptr noundef %key, i1 noundef zeroext %post_ct.0.off0) #7
  br i1 %post_ct.0.off0, label %if.then90, label %if.then87.cleanup_crit_edge

if.then87.cleanup_crit_edge:                      ; preds = %if.then87
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then90:                                        ; preds = %if.then87
  %_nfct.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 5
  %59 = ptrtoint ptr %_nfct.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %_nfct.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %60)
  %tobool92.not = icmp eq i32 %60, 0
  br i1 %tobool92.not, label %if.then93, label %if.else94

if.then93:                                        ; preds = %if.then90
  call void @__sanitizer_cov_trace_pc() #9
  %ct_zone = getelementptr inbounds %struct.sw_flow_key, ptr %key, i32 0, i32 12
  %61 = ptrtoint ptr %ct_zone to i32
  call void @__asan_store2_noabort(i32 %61)
  store i16 %zone.0, ptr %ct_zone, align 8
  br label %cleanup

if.else94:                                        ; preds = %if.then90
  br i1 %post_ct_dnat.0.off0, label %if.else94.if.end99_crit_edge, label %if.then96

if.else94.if.end99_crit_edge:                     ; preds = %if.else94
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end99

if.then96:                                        ; preds = %if.else94
  call void @__sanitizer_cov_trace_pc() #9
  %ct_state = getelementptr inbounds %struct.sw_flow_key, ptr %key, i32 0, i32 9
  %62 = ptrtoint ptr %ct_state to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %ct_state, align 2
  %64 = and i8 %63, 127
  store i8 %64, ptr %ct_state, align 2
  br label %if.end99

if.end99:                                         ; preds = %if.then96, %if.else94.if.end99_crit_edge
  br i1 %post_ct_snat.0.off0, label %if.end99.cleanup_crit_edge, label %if.then101

if.end99.cleanup_crit_edge:                       ; preds = %if.end99
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then101:                                       ; preds = %if.end99
  call void @__sanitizer_cov_trace_pc() #9
  %ct_state102 = getelementptr inbounds %struct.sw_flow_key, ptr %key, i32 0, i32 9
  %65 = ptrtoint ptr %ct_state102 to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %ct_state102, align 2
  %67 = and i8 %66, -65
  store i8 %67, ptr %ct_state102, align 2
  br label %cleanup

cleanup:                                          ; preds = %if.then101, %if.end99.cleanup_crit_edge, %if.then93, %if.then87.cleanup_crit_edge, %if.end84.cleanup_crit_edge, %if.then9.i, %land.end.i.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.then87.cleanup_crit_edge ], [ 0, %if.end99.cleanup_crit_edge ], [ 0, %if.then101 ], [ 0, %if.then93 ], [ %call85, %if.end84.cleanup_crit_edge ], [ -22, %if.then9.i ], [ -22, %land.end.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ovs_ct_fill_key(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ovs_flow_key_extract_userspace(ptr noundef %net, ptr noundef %attr, ptr noundef %skb, ptr noundef %key, i1 noundef zeroext %log) local_unnamed_addr #0 align 64 {
entry:
  %a = alloca [30 x ptr], align 4
  %attrs = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 120, ptr nonnull %a) #7
  %0 = call ptr @memset(ptr %a, i32 255, i32 120)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %attrs) #7
  %1 = ptrtoint ptr %attrs to i32
  call void @__asan_store8_noabort(i32 %1)
  store i64 0, ptr %attrs, align 8
  %call = call i32 @parse_flow_nlattrs(ptr noundef %attr, ptr noundef nonnull %a, ptr noundef nonnull %attrs, i1 noundef zeroext %log) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool1.not = icmp eq i32 %call, 0
  br i1 %tobool1.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %attrs to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %attrs, align 8
  %call4 = call i32 @ovs_nla_get_flow_metadata(ptr noundef %net, ptr noundef nonnull %a, i64 noundef %3, ptr noundef %key, i1 noundef zeroext %log) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.end7, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %type = getelementptr inbounds %struct.sw_flow_key, ptr %key, i32 0, i32 8, i32 4
  %4 = ptrtoint ptr %type to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %type, align 4
  %protocol = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 18
  %6 = ptrtoint ptr %protocol to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 %5, ptr %protocol, align 8
  %call8 = call fastcc i32 @key_extract(ptr noundef %skb, ptr noundef %key)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %if.end11, label %if.end7.cleanup_crit_edge

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end11:                                         ; preds = %if.end7
  %7 = ptrtoint ptr %attrs to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %attrs, align 8
  %and = and i64 %8, 67108864
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %tobool12.not = icmp eq i64 %and, 0
  br i1 %tobool12.not, label %if.end11.if.end17_crit_edge, label %land.lhs.true

if.end11.if.end17_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end17

land.lhs.true:                                    ; preds = %if.end11
  %9 = ptrtoint ptr %type to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 2048, i16 %10)
  %cmp.not = icmp eq i16 %10, 2048
  br i1 %cmp.not, label %land.lhs.true.if.end17_crit_edge, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

land.lhs.true.if.end17_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end17

if.end17:                                         ; preds = %land.lhs.true.if.end17_crit_edge, %if.end11.if.end17_crit_edge
  %and18 = and i64 %8, 134217728
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and18)
  %tobool19.not = icmp eq i64 %and18, 0
  br i1 %tobool19.not, label %if.end17.if.end29_crit_edge, label %land.lhs.true20

if.end17.if.end29_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end29

land.lhs.true20:                                  ; preds = %if.end17
  %11 = ptrtoint ptr %type to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -31011, i16 %12)
  %cmp24.not = icmp eq i16 %12, -31011
  br i1 %cmp24.not, label %land.lhs.true.i, label %land.lhs.true20.cleanup_crit_edge

land.lhs.true20.cleanup_crit_edge:                ; preds = %land.lhs.true20
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

land.lhs.true.i:                                  ; preds = %land.lhs.true20
  %13 = getelementptr inbounds %struct.sw_flow_key, ptr %key, i32 0, i32 11
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %13, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 58, i8 %15)
  %cmp3.i = icmp eq i8 %15, 58
  br i1 %cmp3.i, label %land.lhs.true5.i, label %land.lhs.true.i.if.end29_crit_edge

land.lhs.true.i.if.end29_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end29

land.lhs.true5.i:                                 ; preds = %land.lhs.true.i
  %dst.i = getelementptr inbounds %struct.sw_flow_key, ptr %key, i32 0, i32 13, i32 1
  %16 = ptrtoint ptr %dst.i to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %dst.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %17)
  %cmp7.i = icmp eq i16 %17, 0
  br i1 %cmp7.i, label %sw_flow_key_is_nd.exit, label %land.lhs.true5.i.if.end29_crit_edge

land.lhs.true5.i.if.end29_crit_edge:              ; preds = %land.lhs.true5.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end29

sw_flow_key_is_nd.exit:                           ; preds = %land.lhs.true5.i
  %tp.i = getelementptr inbounds %struct.sw_flow_key, ptr %key, i32 0, i32 13
  %18 = ptrtoint ptr %tp.i to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %tp.i, align 2
  %20 = add i16 %19, -135
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %20)
  %21 = icmp ult i16 %20, 2
  br i1 %21, label %sw_flow_key_is_nd.exit.cleanup_crit_edge, label %sw_flow_key_is_nd.exit.if.end29_crit_edge

sw_flow_key_is_nd.exit.if.end29_crit_edge:        ; preds = %sw_flow_key_is_nd.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end29

sw_flow_key_is_nd.exit.cleanup_crit_edge:         ; preds = %sw_flow_key_is_nd.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end29:                                         ; preds = %sw_flow_key_is_nd.exit.if.end29_crit_edge, %land.lhs.true5.i.if.end29_crit_edge, %land.lhs.true.i.if.end29_crit_edge, %if.end17.if.end29_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %if.end29, %sw_flow_key_is_nd.exit.cleanup_crit_edge, %land.lhs.true20.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %if.end7.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end29 ], [ -22, %entry.cleanup_crit_edge ], [ %call4, %if.end.cleanup_crit_edge ], [ %call8, %if.end7.cleanup_crit_edge ], [ -22, %land.lhs.true.cleanup_crit_edge ], [ -22, %sw_flow_key_is_nd.exit.cleanup_crit_edge ], [ -22, %land.lhs.true20.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %attrs) #7
  call void @llvm.lifetime.end.p0(i64 120, ptr nonnull %a) #7
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @parse_flow_nlattrs(ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ovs_nla_get_flow_metadata(ptr noundef, ptr noundef, i64 noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kmem_cache_alloc(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @tcphdr_ok(ptr noundef %skb) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
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
  %add = add i32 %sub.ptr.sub.i, 20
  %len.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %6 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %len.i.i, align 4
  %data_len.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %8 = ptrtoint ptr %data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %data_len.i.i, align 8
  %sub.i.i = sub i32 %7, %9
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %sub.i.i)
  %cmp.not.i = icmp ugt i32 %add, %sub.i.i
  br i1 %cmp.not.i, label %if.end.i, label %entry.if.end_crit_edge, !prof !29

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %add)
  %cmp3.i = icmp ult i32 %7, %add
  br i1 %cmp3.i, label %if.end.i.cleanup_crit_edge, label %pskb_may_pull.exit, !prof !29

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

pskb_may_pull.exit:                               ; preds = %if.end.i
  %sub.i = sub i32 %add, %sub.i.i
  %call13.i = tail call ptr @__pskb_pull_tail(ptr noundef %skb, i32 noundef %sub.i) #7
  %cmp14.i.not = icmp eq ptr %call13.i, null
  br i1 %cmp14.i.not, label %pskb_may_pull.exit.cleanup_crit_edge, label %pskb_may_pull.exit.if.end_crit_edge, !prof !29

pskb_may_pull.exit.if.end_crit_edge:              ; preds = %pskb_may_pull.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

pskb_may_pull.exit.cleanup_crit_edge:             ; preds = %pskb_may_pull.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %pskb_may_pull.exit.if.end_crit_edge, %entry.if.end_crit_edge
  %10 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %head.i.i, align 8
  %12 = ptrtoint ptr %transport_header.i.i to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %transport_header.i.i, align 2
  %conv.i.i.i = zext i16 %13 to i32
  %add.ptr.i.i.i = getelementptr i8, ptr %11, i32 %conv.i.i.i
  %doff.i.i = getelementptr inbounds %struct.tcphdr, ptr %add.ptr.i.i.i, i32 0, i32 4
  %14 = ptrtoint ptr %doff.i.i to i32
  call void @__asan_load2_noabort(i32 %14)
  %bf.load.i.i = load i16, ptr %doff.i.i, align 4
  %15 = lshr i16 %bf.load.i.i, 10
  %16 = and i16 %15, 60
  call void @__sanitizer_cov_trace_const_cmp2(i16 20, i16 %16)
  %cmp = icmp ult i16 %16, 20
  br i1 %cmp, label %if.end.lor.end.thread_crit_edge, label %lor.end, !prof !29

if.end.lor.end.thread_crit_edge:                  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %lor.end.thread

lor.end:                                          ; preds = %if.end
  %mul.i.i = zext i16 %16 to i32
  %17 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %len.i.i, align 4
  %add5 = add i32 %sub.ptr.sub.i, %mul.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %18, i32 %add5)
  %cmp6 = icmp ult i32 %18, %add5
  br i1 %cmp6, label %lor.end.lor.end.thread_crit_edge, label %lor.end.cleanup_crit_edge

lor.end.cleanup_crit_edge:                        ; preds = %lor.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

lor.end.lor.end.thread_crit_edge:                 ; preds = %lor.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %lor.end.thread

lor.end.thread:                                   ; preds = %lor.end.lor.end.thread_crit_edge, %if.end.lor.end.thread_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %lor.end.thread, %lor.end.cleanup_crit_edge, %pskb_may_pull.exit.cleanup_crit_edge, %if.end.i.cleanup_crit_edge
  %retval.0 = phi i1 [ false, %pskb_may_pull.exit.cleanup_crit_edge ], [ false, %lor.end.thread ], [ true, %lor.end.cleanup_crit_edge ], [ false, %if.end.i.cleanup_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @udphdr_ok(ptr noundef %skb) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
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
  %add = add i32 %sub.ptr.sub.i, 8
  %len.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %6 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %len.i.i, align 4
  %data_len.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %8 = ptrtoint ptr %data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %data_len.i.i, align 8
  %sub.i.i = sub i32 %7, %9
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %sub.i.i)
  %cmp.not.i = icmp ugt i32 %add, %sub.i.i
  br i1 %cmp.not.i, label %if.end.i, label %entry.pskb_may_pull.exit_crit_edge, !prof !29

entry.pskb_may_pull.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %pskb_may_pull.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %add)
  %cmp3.i = icmp ult i32 %7, %add
  br i1 %cmp3.i, label %if.end.i.pskb_may_pull.exit_crit_edge, label %if.end11.i, !prof !29

if.end.i.pskb_may_pull.exit_crit_edge:            ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %pskb_may_pull.exit

if.end11.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %sub.i = sub i32 %add, %sub.i.i
  %call13.i = tail call ptr @__pskb_pull_tail(ptr noundef %skb, i32 noundef %sub.i) #7
  %cmp14.i = icmp ne ptr %call13.i, null
  br label %pskb_may_pull.exit

pskb_may_pull.exit:                               ; preds = %if.end11.i, %if.end.i.pskb_may_pull.exit_crit_edge, %entry.pskb_may_pull.exit_crit_edge
  %retval.0.i = phi i1 [ %cmp14.i, %if.end11.i ], [ true, %entry.pskb_may_pull.exit_crit_edge ], [ false, %if.end.i.pskb_may_pull.exit_crit_edge ]
  ret i1 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @sctphdr_ok(ptr noundef %skb) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
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
  %add = add i32 %sub.ptr.sub.i, 12
  %len.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %6 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %len.i.i, align 4
  %data_len.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %8 = ptrtoint ptr %data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %data_len.i.i, align 8
  %sub.i.i = sub i32 %7, %9
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %sub.i.i)
  %cmp.not.i = icmp ugt i32 %add, %sub.i.i
  br i1 %cmp.not.i, label %if.end.i, label %entry.pskb_may_pull.exit_crit_edge, !prof !29

entry.pskb_may_pull.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %pskb_may_pull.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %add)
  %cmp3.i = icmp ult i32 %7, %add
  br i1 %cmp3.i, label %if.end.i.pskb_may_pull.exit_crit_edge, label %if.end11.i, !prof !29

if.end.i.pskb_may_pull.exit_crit_edge:            ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %pskb_may_pull.exit

if.end11.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %sub.i = sub i32 %add, %sub.i.i
  %call13.i = tail call ptr @__pskb_pull_tail(ptr noundef %skb, i32 noundef %sub.i) #7
  %cmp14.i = icmp ne ptr %call13.i, null
  br label %pskb_may_pull.exit

pskb_may_pull.exit:                               ; preds = %if.end11.i, %if.end.i.pskb_may_pull.exit_crit_edge, %entry.pskb_may_pull.exit_crit_edge
  %retval.0.i = phi i1 [ %cmp14.i, %if.end11.i ], [ true, %entry.pskb_may_pull.exit_crit_edge ], [ false, %if.end.i.pskb_may_pull.exit_crit_edge ]
  ret i1 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @icmphdr_ok(ptr noundef %skb) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
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
  %add = add i32 %sub.ptr.sub.i, 8
  %len.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %6 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %len.i.i, align 4
  %data_len.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %8 = ptrtoint ptr %data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %data_len.i.i, align 8
  %sub.i.i = sub i32 %7, %9
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %sub.i.i)
  %cmp.not.i = icmp ugt i32 %add, %sub.i.i
  br i1 %cmp.not.i, label %if.end.i, label %entry.pskb_may_pull.exit_crit_edge, !prof !29

entry.pskb_may_pull.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %pskb_may_pull.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %add)
  %cmp3.i = icmp ult i32 %7, %add
  br i1 %cmp3.i, label %if.end.i.pskb_may_pull.exit_crit_edge, label %if.end11.i, !prof !29

if.end.i.pskb_may_pull.exit_crit_edge:            ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %pskb_may_pull.exit

if.end11.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %sub.i = sub i32 %add, %sub.i.i
  %call13.i = tail call ptr @__pskb_pull_tail(ptr noundef %skb, i32 noundef %sub.i) #7
  %cmp14.i = icmp ne ptr %call13.i, null
  br label %pskb_may_pull.exit

pskb_may_pull.exit:                               ; preds = %if.end11.i, %if.end.i.pskb_may_pull.exit_crit_edge, %entry.pskb_may_pull.exit_crit_edge
  %retval.0.i = phi i1 [ %cmp14.i, %if.end11.i ], [ true, %entry.pskb_may_pull.exit_crit_edge ], [ false, %if.end.i.pskb_may_pull.exit_crit_edge ]
  ret i1 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @icmp6hdr_ok(ptr noundef %skb) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
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
  %add = add i32 %sub.ptr.sub.i, 8
  %len.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %6 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %len.i.i, align 4
  %data_len.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %8 = ptrtoint ptr %data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %data_len.i.i, align 8
  %sub.i.i = sub i32 %7, %9
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %sub.i.i)
  %cmp.not.i = icmp ugt i32 %add, %sub.i.i
  br i1 %cmp.not.i, label %if.end.i, label %entry.pskb_may_pull.exit_crit_edge, !prof !29

entry.pskb_may_pull.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %pskb_may_pull.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %add)
  %cmp3.i = icmp ult i32 %7, %add
  br i1 %cmp3.i, label %if.end.i.pskb_may_pull.exit_crit_edge, label %if.end11.i, !prof !29

if.end.i.pskb_may_pull.exit_crit_edge:            ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %pskb_may_pull.exit

if.end11.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %sub.i = sub i32 %add, %sub.i.i
  %call13.i = tail call ptr @__pskb_pull_tail(ptr noundef %skb, i32 noundef %sub.i) #7
  %cmp14.i = icmp ne ptr %call13.i, null
  br label %pskb_may_pull.exit

pskb_may_pull.exit:                               ; preds = %if.end11.i, %if.end.i.pskb_may_pull.exit_crit_edge, %entry.pskb_may_pull.exit_crit_edge
  %retval.0.i = phi i1 [ %cmp14.i, %if.end11.i ], [ true, %entry.pskb_may_pull.exit_crit_edge ], [ false, %if.end.i.pskb_may_pull.exit_crit_edge ]
  ret i1 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @parse_icmpv6(ptr noundef %skb, ptr nocapture noundef %key) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
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
  %4 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %add.ptr.i.i, align 4
  %conv = zext i8 %5 to i16
  %tp = getelementptr inbounds %struct.sw_flow_key, ptr %key, i32 0, i32 13
  %6 = ptrtoint ptr %tp to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 %conv, ptr %tp, align 2
  %icmp6_code = getelementptr inbounds %struct.icmp6hdr, ptr %add.ptr.i.i, i32 0, i32 1
  %7 = ptrtoint ptr %icmp6_code to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %icmp6_code, align 1
  %conv1 = zext i8 %8 to i16
  %dst = getelementptr inbounds %struct.sw_flow_key, ptr %key, i32 0, i32 13, i32 1
  %9 = ptrtoint ptr %dst to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 %conv1, ptr %dst, align 2
  %10 = getelementptr inbounds %struct.sw_flow_key, ptr %key, i32 0, i32 14, i32 0, i32 2
  %11 = call ptr @memset(ptr %10, i32 0, i32 28)
  %12 = load i8, ptr %icmp6_code, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %cmp = icmp eq i8 %12, 0
  br i1 %cmp, label %land.lhs.true, label %entry.cleanup109_crit_edge

entry.cleanup109_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup109

land.lhs.true:                                    ; preds = %entry
  %13 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %add.ptr.i.i, align 4
  %.off = add i8 %14, 121
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %.off)
  %switch = icmp ult i8 %.off, 2
  br i1 %switch, label %if.then, label %land.lhs.true.cleanup109_crit_edge

land.lhs.true.cleanup109_crit_edge:               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup109

if.then:                                          ; preds = %land.lhs.true
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %15 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %len, align 4
  %17 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %head.i.i, align 8
  %19 = ptrtoint ptr %transport_header.i.i to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %transport_header.i.i, align 2
  %conv.i.i4 = zext i16 %20 to i32
  %add.ptr.i.i5 = getelementptr i8, ptr %18, i32 %conv.i.i4
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %21 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %data.i, align 4
  %sub.ptr.lhs.cast.i = ptrtoint ptr %add.ptr.i.i5 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %22 to i32
  %sub.ptr.sub.i.neg = sub i32 %sub.ptr.rhs.cast.i, %sub.ptr.lhs.cast.i
  %sub = add i32 %sub.ptr.sub.i.neg, %16
  call void @__sanitizer_cov_trace_const_cmp4(i32 24, i32 %sub)
  %cmp15 = icmp ult i32 %sub, 24
  br i1 %cmp15, label %if.then.cleanup109_crit_edge, label %if.end, !prof !29

if.then.cleanup109_crit_edge:                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup109

if.end:                                           ; preds = %if.then
  %data_len.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %23 = ptrtoint ptr %data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %data_len.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool.i.not.i = icmp eq i32 %24, 0
  br i1 %tobool.i.not.i, label %if.end.if.end28_crit_edge, label %cond.true.i

if.end.if.end28_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end28

cond.true.i:                                      ; preds = %if.end
  %call.i.i = tail call ptr @__pskb_pull_tail(ptr noundef %skb, i32 noundef %24) #7
  %tobool.not.i.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i.i, label %cond.true.i.cleanup109_crit_edge, label %cond.true.i.if.end28_crit_edge

cond.true.i.if.end28_crit_edge:                   ; preds = %cond.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end28

cond.true.i.cleanup109_crit_edge:                 ; preds = %cond.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup109

if.end28:                                         ; preds = %cond.true.i.if.end28_crit_edge, %if.end.if.end28_crit_edge
  %25 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %head.i.i, align 8
  %27 = ptrtoint ptr %transport_header.i.i to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %transport_header.i.i, align 2
  %conv.i = zext i16 %28 to i32
  %add.ptr.i = getelementptr i8, ptr %26, i32 %conv.i
  %target30 = getelementptr inbounds %struct.nd_msg, ptr %add.ptr.i, i32 0, i32 1
  %29 = call ptr @memcpy(ptr %10, ptr %target30, i32 16)
  %sub31 = add i32 %sub, -24
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %sub31)
  %cmp3229 = icmp sgt i32 %sub31, 7
  br i1 %cmp3229, label %while.body.lr.ph, label %if.end28.cleanup109_crit_edge

if.end28.cleanup109_crit_edge:                    ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup109

while.body.lr.ph:                                 ; preds = %if.end28
  %opt = getelementptr inbounds %struct.nd_msg, ptr %add.ptr.i, i32 0, i32 2
  %tll = getelementptr inbounds %struct.anon.18, ptr %10, i32 0, i32 2
  %add.ptr.i9 = getelementptr %struct.anon.18, ptr %10, i32 0, i32 2, i32 4
  %sll = getelementptr inbounds %struct.sw_flow_key, ptr %key, i32 0, i32 14, i32 0, i32 2, i32 0, i32 1
  %add.ptr.i6 = getelementptr %struct.sw_flow_key, ptr %key, i32 0, i32 14, i32 0, i32 2, i32 0, i32 1, i32 0, i32 0, i32 1
  br label %while.body

while.body:                                       ; preds = %cleanup.while.body_crit_edge, %while.body.lr.ph
  %offset.031 = phi i32 [ 0, %while.body.lr.ph ], [ %add96, %cleanup.while.body_crit_edge ]
  %icmp_len.030 = phi i32 [ %sub31, %while.body.lr.ph ], [ %sub95, %cleanup.while.body_crit_edge ]
  %add.ptr = getelementptr i8, ptr %opt, i32 %offset.031
  %nd_opt_len = getelementptr inbounds %struct.nd_opt_hdr, ptr %add.ptr, i32 0, i32 1
  %30 = ptrtoint ptr %nd_opt_len to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %nd_opt_len, align 1
  %conv34 = zext i8 %31 to i32
  %mul = shl nuw nsw i32 %conv34, 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %31)
  %tobool35.not = icmp eq i8 %31, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %icmp_len.030, i32 %mul)
  %cmp36 = icmp ult i32 %icmp_len.030, %mul
  %spec.select = select i1 %tobool35.not, i1 true, i1 %cmp36, !prof !29
  br i1 %spec.select, label %while.body.cleanup109_crit_edge, label %if.end45, !prof !29

while.body.cleanup109_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup109

if.end45:                                         ; preds = %while.body
  %32 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %add.ptr, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %33)
  %cmp47 = icmp eq i8 %33, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %31)
  %cmp50 = icmp eq i8 %31, 1
  %or.cond = select i1 %cmp47, i1 %cmp50, i1 false
  br i1 %or.cond, label %if.then52, label %if.else

if.then52:                                        ; preds = %if.end45
  %34 = ptrtoint ptr %sll to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %sll, align 4
  %36 = ptrtoint ptr %add.ptr.i6 to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %add.ptr.i6, align 2
  %conv.i7 = zext i16 %37 to i32
  %or.i = or i32 %35, %conv.i7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i)
  %cmp.i = icmp eq i32 %or.i, 0
  br i1 %cmp.i, label %if.then52.cleanup.sink.split_crit_edge, label %if.then52.invalid_crit_edge, !prof !30

if.then52.invalid_crit_edge:                      ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #9
  br label %invalid

if.then52.cleanup.sink.split_crit_edge:           ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

if.else:                                          ; preds = %if.end45
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %33)
  %cmp70 = icmp eq i8 %33, 2
  %or.cond1 = select i1 %cmp70, i1 %cmp50, i1 false
  br i1 %or.cond1, label %if.then75, label %if.else.cleanup_crit_edge

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then75:                                        ; preds = %if.else
  %38 = ptrtoint ptr %tll to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %tll, align 4
  %40 = ptrtoint ptr %add.ptr.i9 to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %add.ptr.i9, align 2
  %conv.i10 = zext i16 %41 to i32
  %or.i11 = or i32 %39, %conv.i10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i11)
  %cmp.i12 = icmp eq i32 %or.i11, 0
  br i1 %cmp.i12, label %if.then75.cleanup.sink.split_crit_edge, label %if.then75.invalid_crit_edge, !prof !30

if.then75.invalid_crit_edge:                      ; preds = %if.then75
  call void @__sanitizer_cov_trace_pc() #9
  br label %invalid

if.then75.cleanup.sink.split_crit_edge:           ; preds = %if.then75
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.then75.cleanup.sink.split_crit_edge, %if.then52.cleanup.sink.split_crit_edge
  %sll.sink = phi ptr [ %sll, %if.then52.cleanup.sink.split_crit_edge ], [ %tll, %if.then75.cleanup.sink.split_crit_edge ]
  %add.ptr.i6.sink = phi ptr [ %add.ptr.i6, %if.then52.cleanup.sink.split_crit_edge ], [ %add.ptr.i9, %if.then75.cleanup.sink.split_crit_edge ]
  %add91 = or i32 %offset.031, 2
  %arrayidx92 = getelementptr %struct.nd_msg, ptr %add.ptr.i, i32 0, i32 2, i32 %add91
  %42 = ptrtoint ptr %arrayidx92 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %arrayidx92, align 4
  %44 = ptrtoint ptr %sll.sink to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %43, ptr %sll.sink, align 4
  %add.ptr.i8 = getelementptr i8, ptr %arrayidx92, i32 4
  %45 = ptrtoint ptr %add.ptr.i8 to i32
  call void @__asan_load2_noabort(i32 %45)
  %46 = load i16, ptr %add.ptr.i8, align 2
  %47 = ptrtoint ptr %add.ptr.i6.sink to i32
  call void @__asan_store2_noabort(i32 %47)
  store i16 %46, ptr %add.ptr.i6.sink, align 2
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.else.cleanup_crit_edge
  %sub95 = sub nsw i32 %icmp_len.030, %mul
  %add96 = add i32 %mul, %offset.031
  %cmp32 = icmp sgt i32 %sub95, 7
  br i1 %cmp32, label %cleanup.while.body_crit_edge, label %cleanup.cleanup109_crit_edge

cleanup.cleanup109_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup109

cleanup.while.body_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body

invalid:                                          ; preds = %if.then75.invalid_crit_edge, %if.then52.invalid_crit_edge
  %48 = call ptr @memset(ptr %10, i32 0, i32 28)
  br label %cleanup109

cleanup109:                                       ; preds = %invalid, %cleanup.cleanup109_crit_edge, %while.body.cleanup109_crit_edge, %if.end28.cleanup109_crit_edge, %cond.true.i.cleanup109_crit_edge, %if.then.cleanup109_crit_edge, %land.lhs.true.cleanup109_crit_edge, %entry.cleanup109_crit_edge
  %retval.3 = phi i32 [ 0, %invalid ], [ 0, %land.lhs.true.cleanup109_crit_edge ], [ 0, %entry.cleanup109_crit_edge ], [ -12, %cond.true.i.cleanup109_crit_edge ], [ 0, %if.then.cleanup109_crit_edge ], [ 0, %if.end28.cleanup109_crit_edge ], [ 0, %cleanup.cleanup109_crit_edge ], [ 0, %while.body.cleanup109_crit_edge ]
  ret i32 %retval.3
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__pskb_pull_tail(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ipv6_find_hdr(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__skb_vlan_pop(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i8 @llvm.umin.i8(i8, i8) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.umin.i16(i16, i16) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

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
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 6)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 6)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind readonly }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { nounwind readonly willreturn }

!llvm.asan.globals = !{!0, !2, !3, !4, !6, !8, !9, !11, !13, !14, !16, !17}
!llvm.named.register.sp = !{!19}
!llvm.module.flags = !{!20, !21, !22, !23, !24, !25, !26, !27}
!llvm.ident = !{!28}

!0 = distinct !{null, !1, !"__warned", i1 false, i1 false}
!1 = !{!"../net/openvswitch/flow.c", i32 67, i32 10}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!4 = distinct !{null, !5, !"__warned", i1 false, i1 false}
!5 = !{!"../net/openvswitch/flow.c", i32 76, i32 11}
!6 = !{ptr @ovs_flow_stats_update.__key, !7, !"__key", i1 false, i1 false}
!7 = !{!"../net/openvswitch/flow.c", i32 105, i32 6}
!8 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!9 = distinct !{null, !10, !"__warned", i1 false, i1 false}
!10 = !{!"../net/openvswitch/flow.c", i32 138, i32 33}
!11 = distinct !{null, !12, !"__warned", i1 false, i1 false}
!12 = !{!"../net/openvswitch/flow.c", i32 162, i32 33}
!13 = !{ptr @.str.4, !12, !"<string literal>", i1 false, i1 false}
!14 = distinct !{null, !15, !"__already_done", i1 false, i1 false}
!15 = !{!"../include/linux/cpumask.h", i32 108, i32 2}
!16 = !{ptr @.str.5, !15, !"<string literal>", i1 false, i1 false}
!17 = distinct !{null, !18, !"__already_done", i1 false, i1 false}
!18 = !{!"../net/openvswitch/flow.c", i32 852, i32 2}
!19 = !{!"sp"}
!20 = !{i32 1, !"wchar_size", i32 2}
!21 = !{i32 1, !"min_enum_size", i32 4}
!22 = !{i32 8, !"branch-target-enforcement", i32 0}
!23 = !{i32 8, !"sign-return-address", i32 0}
!24 = !{i32 8, !"sign-return-address-all", i32 0}
!25 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!26 = !{i32 7, !"uwtable", i32 1}
!27 = !{i32 7, !"frame-pointer", i32 2}
!28 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!29 = !{!"branch_weights", i32 1, i32 2000}
!30 = !{!"branch_weights", i32 2000, i32 1}
!31 = !{i64 2158303085}
!32 = !{!"auto-init"}
!33 = !{i64 2154963412, i64 2154963900, i64 2154963449, i64 2154963505, i64 2154963539, i64 2154963563, i64 2154963604, i64 2154963625, i64 2154963653, i64 2154963687}
!34 = !{i64 2148279962, i64 2148279967, i64 2148279980, i64 2148280024, i64 2148280058, i64 2148280079}
