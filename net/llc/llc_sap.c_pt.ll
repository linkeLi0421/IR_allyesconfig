; ModuleID = '/llk/IR_all_yes/net/llc/llc_sap.c_pt.bc'
source_filename = "../net/llc/llc_sap.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.llc_sap_state = type { i8, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.1, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.123, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon.1 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.atomic_t = type { i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.hlist_node = type { ptr, ptr }
%struct.spinlock = type { %union.anon.5 }
%union.anon.5 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.6 }
%union.anon.6 = type { i32 }
%struct.hlist_head = type { ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.possible_net_t = type { ptr }
%union.anon.123 = type { ptr }
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
%struct.list_head = type { ptr, ptr }
%struct.bpf_xdp_entity = type { ptr, ptr }
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
%struct.sock_common = type { %union.anon.97, %union.anon.99, %union.anon.100, i16, i8, i8, i32, %union.anon.102, ptr, %struct.possible_net_t, %struct.in6_addr, %struct.in6_addr, %struct.atomic64_t, %union.anon.105, [0 x i32], %union.anon.106, i16, i16, %union.anon.107, %struct.refcount_struct, [0 x i32], %union.anon.108 }
%union.anon.97 = type { i64 }
%union.anon.99 = type { i32 }
%union.anon.100 = type { i32 }
%union.anon.102 = type { %struct.hlist_node }
%struct.in6_addr = type { %union.anon.26 }
%union.anon.26 = type { [4 x i32] }
%struct.atomic64_t = type { i64 }
%union.anon.105 = type { i32 }
%union.anon.106 = type { %struct.hlist_node }
%union.anon.107 = type { i32 }
%union.anon.108 = type { i32 }
%struct.ethhdr = type { [6 x i8], [6 x i8], i16 }
%struct.llc_pdu_un = type { i8, i8, i8 }
%struct.llc_sap = type { i8, i8, i8, %struct.refcount_struct, ptr, %struct.llc_addr, %struct.list_head, %struct.spinlock, i32, [64 x %struct.hlist_nulls_head], [64 x %struct.hlist_head], %struct.callback_head }
%struct.llc_addr = type { i8, [6 x i8] }
%struct.hlist_nulls_head = type { ptr }
%struct.callback_head = type { ptr, ptr }
%struct.llc_sap_state_trans = type { ptr, i8, ptr }
%struct.sock = type { %struct.sock_common, ptr, i32, i32, %struct.socket_lock_t, %struct.atomic_t, i32, %struct.sk_buff_head, %struct.sk_buff_head, %struct.anon.109, %struct.llist_head, i32, i32, i32, i32, i32, ptr, %union.anon.110, [2 x ptr], ptr, %struct.atomic_t, i32, i32, %struct.refcount_struct, i32, %union.anon.111, %struct.sk_buff_head, i32, i32, i32, i32, i32, %struct.timer_list, i32, i32, i32, i32, %struct.page_frag, i64, i32, i32, i32, i32, i8, i8, i16, i16, i16, i32, ptr, %struct.rwlock_t, i32, i32, i32, i32, %struct.kuid_t, i8, i16, %struct.spinlock, i32, ptr, ptr, i32, i64, %struct.seqlock_t, i16, i8, %struct.atomic_t, %struct.atomic_t, i8, i8, ptr, ptr, ptr, %struct.sock_cgroup_data, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.callback_head, ptr }
%struct.socket_lock_t = type { %struct.spinlock, i32, %struct.wait_queue_head, %struct.lockdep_map }
%struct.anon.109 = type { %struct.atomic_t, i32, ptr, ptr }
%struct.llist_head = type { ptr }
%union.anon.110 = type { ptr }
%union.anon.111 = type { ptr }
%struct.sk_buff_head = type { %union.anon.94, i32, %struct.spinlock }
%union.anon.94 = type { %struct.anon.95 }
%struct.anon.95 = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.kuid_t = type { i32 }
%struct.seqlock_t = type { %struct.seqcount_spinlock, %struct.spinlock }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.sock_cgroup_data = type { ptr, i32, i16 }
%struct.llc_sock = type { %struct.sock, %struct.sockaddr_llc, i8, ptr, %struct.llc_addr, %struct.llc_addr, ptr, ptr, i32, i8, i8, i8, i8, %struct.llc_timer, %struct.llc_timer, %struct.llc_timer, %struct.llc_timer, i8, i8, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, %struct.sk_buff_head, i16, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, %struct.hlist_node }
%struct.sockaddr_llc = type { i16, i16, i8, i8, i8, i8, [6 x i8], [2 x i8] }
%struct.llc_timer = type { %struct.timer_list, i32 }

@llc_sap_state_table = external dso_local local_unnamed_addr global [2 x %struct.llc_sap_state], align 4
@rcu_bh_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock_bh.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"rcu_read_lock_bh() used illegally while idle\00", [51 x i8] zeroinitializer }, align 32
@rcu_read_unlock_bh.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.2 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"rcu_read_unlock_bh() used illegally while idle\00", [49 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 8, i64 0, i64 172, i64 224]
@___asan_gen_ = private constant [21 x i8] c"../net/llc/llc_sap.c\00", align 1
@___asan_gen_.8 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.10, i32 749, i32 2 }
@___asan_gen_.9 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.10 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.11 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.10, i32 760, i32 2 }
@llvm.compiler.used = appending global [3 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2], section "llvm.metadata"
@0 = internal global [3 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @llc_alloc_frame(ptr noundef %sk, ptr noundef %dev, i8 noundef zeroext %type, i32 noundef %data_size) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %type)
  %cmp = icmp eq i8 %type, 3
  %cond = select i1 %cmp, i32 3, i32 4
  %type2 = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 32
  %0 = ptrtoint ptr %type2 to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %type2, align 16
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %1)
  %switch.selectcmp.case1.i = icmp eq i16 %1, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 772, i16 %1)
  %switch.selectcmp.case2.i = icmp eq i16 %1, 772
  %switch.selectcmp.i = or i1 %switch.selectcmp.case1.i, %switch.selectcmp.case2.i
  %2 = select i1 %switch.selectcmp.i, i32 14, i32 0
  %add = add nuw nsw i32 %2, %cond
  %add3 = add i32 %add, %data_size
  %call.i = tail call ptr @__alloc_skb(i32 noundef %add3, i32 noundef 2592, i32 noundef 0, i32 noundef -1) #8
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.if.end8_crit_edge, label %if.then

entry.if.end8_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end8

if.then:                                          ; preds = %entry
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 19
  %3 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %data.i, align 4
  %head.i = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 18
  %5 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %head.i, align 8
  %sub.ptr.lhs.cast.i = ptrtoint ptr %4 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %6 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %conv.i = trunc i32 %sub.ptr.sub.i to i16
  %mac_header.i = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 15, i32 0, i32 21
  %7 = ptrtoint ptr %mac_header.i to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 %conv.i, ptr %mac_header.i, align 2
  %add.ptr.i = getelementptr i8, ptr %4, i32 %add
  store ptr %add.ptr.i, ptr %data.i, align 4
  %tail.i = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 16
  %8 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %tail.i, align 8
  %add.ptr1.i = getelementptr i8, ptr %9, i32 %add
  store ptr %add.ptr1.i, ptr %tail.i, align 8
  %sub.ptr.lhs.cast.i24 = ptrtoint ptr %add.ptr.i to i32
  %sub.ptr.sub.i26 = sub i32 %sub.ptr.lhs.cast.i24, %sub.ptr.rhs.cast.i
  %conv.i27 = trunc i32 %sub.ptr.sub.i26 to i16
  %network_header.i = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 15, i32 0, i32 20
  %10 = ptrtoint ptr %network_header.i to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 %conv.i27, ptr %network_header.i, align 4
  %transport_header.i = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 15, i32 0, i32 19
  %11 = ptrtoint ptr %transport_header.i to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 %conv.i27, ptr %transport_header.i, align 2
  %protocol = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 15, i32 0, i32 18
  %12 = ptrtoint ptr %protocol to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 4, ptr %protocol, align 8
  %13 = getelementptr inbounds %struct.anon, ptr %call.i, i32 0, i32 2
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %dev, ptr %13, align 8
  %cmp5.not = icmp eq ptr %sk, null
  br i1 %cmp5.not, label %if.then.if.end8_crit_edge, label %if.then7

if.then.if.end8_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end8

if.then7:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @skb_set_owner_w(ptr noundef nonnull %call.i, ptr noundef nonnull %sk) #8
  br label %if.end8

if.end8:                                          ; preds = %if.then7, %if.then.if.end8_crit_edge, %entry.if.end8_crit_edge
  ret ptr %call.i
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_set_owner_w(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @llc_save_primitive(ptr nocapture noundef readonly %sk, ptr nocapture noundef %skb, i8 noundef zeroext %prim) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %cb = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3
  %0 = call ptr @memset(ptr %cb, i32 0, i32 16)
  %skc_family = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 3
  %1 = ptrtoint ptr %skc_family to i32
  call void @__asan_load2_noabort(i32 %1)
  %2 = load i16, ptr %skc_family, align 8
  %3 = ptrtoint ptr %cb to i32
  call void @__asan_store2_noabort(i32 %3)
  store i16 %2, ptr %cb, align 2
  %4 = getelementptr inbounds %struct.anon, ptr %skb, i32 0, i32 2
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %4, align 8
  %type = getelementptr inbounds %struct.net_device, ptr %6, i32 0, i32 32
  %7 = ptrtoint ptr %type to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %type, align 16
  %sllc_arphrd = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 2
  %9 = ptrtoint ptr %sllc_arphrd to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 %8, ptr %sllc_arphrd, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 9, i8 %prim)
  %cmp = icmp eq i8 %prim, 9
  %conv2 = zext i1 %cmp to i8
  %sllc_test = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 4
  %10 = ptrtoint ptr %sllc_test to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %conv2, ptr %sllc_test, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %prim)
  %cmp4 = icmp eq i8 %prim, 8
  %conv6 = zext i1 %cmp4 to i8
  %sllc_xid = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 5
  %11 = ptrtoint ptr %sllc_xid to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %conv6, ptr %sllc_xid, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %prim)
  %cmp8 = icmp eq i8 %prim, 1
  %conv10 = zext i1 %cmp8 to i8
  %sllc_ua = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 6
  %12 = ptrtoint ptr %sllc_ua to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %conv10, ptr %sllc_ua, align 2
  %protocol.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 18
  %13 = ptrtoint ptr %protocol.i to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %protocol.i, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 4, i16 %14)
  %cmp.i = icmp eq i16 %14, 4
  br i1 %cmp.i, label %if.then.i, label %entry.llc_pdu_decode_sa.exit_crit_edge

entry.llc_pdu_decode_sa.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %llc_pdu_decode_sa.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %sllc_mac = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 8
  %head.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %15 = ptrtoint ptr %head.i.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %head.i.i.i, align 8
  %mac_header.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 21
  %17 = ptrtoint ptr %mac_header.i.i.i to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %mac_header.i.i.i, align 2
  %conv.i.i.i = zext i16 %18 to i32
  %add.ptr.i.i.i = getelementptr i8, ptr %16, i32 %conv.i.i.i
  %h_source.i = getelementptr inbounds %struct.ethhdr, ptr %add.ptr.i.i.i, i32 0, i32 1
  %19 = call ptr @memcpy(ptr %sllc_mac, ptr %h_source.i, i32 6)
  br label %llc_pdu_decode_sa.exit

llc_pdu_decode_sa.exit:                           ; preds = %if.then.i, %entry.llc_pdu_decode_sa.exit_crit_edge
  %sllc_sap = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 7
  %head.i.i.i23 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %20 = ptrtoint ptr %head.i.i.i23 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %head.i.i.i23, align 8
  %network_header.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %22 = ptrtoint ptr %network_header.i.i.i to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %network_header.i.i.i, align 4
  %conv.i.i.i24 = zext i16 %23 to i32
  %add.ptr.i.i.i25 = getelementptr i8, ptr %21, i32 %conv.i.i.i24
  %ssap1.i = getelementptr inbounds %struct.llc_pdu_un, ptr %add.ptr.i.i.i25, i32 0, i32 1
  %24 = ptrtoint ptr %ssap1.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %ssap1.i, align 1
  %26 = and i8 %25, -2
  %27 = ptrtoint ptr %sllc_sap to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %26, ptr %sllc_sap, align 1
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @llc_sap_rtn_pdu(ptr nocapture noundef readnone %sap, ptr nocapture noundef %skb) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %cb.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3
  %head.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %0 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %head.i.i, align 8
  %network_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %2 = ptrtoint ptr %network_header.i.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %network_header.i.i, align 4
  %conv.i.i = zext i16 %3 to i32
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 %conv.i.i
  %ctrl_1 = getelementptr inbounds %struct.llc_pdu_un, ptr %add.ptr.i.i, i32 0, i32 2
  %4 = ptrtoint ptr %ctrl_1 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %ctrl_1, align 1
  %6 = and i8 %5, -20
  %7 = zext i8 %6 to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values)
  switch i8 %6, label %entry.sw.epilog_crit_edge [
    i8 -32, label %entry.sw.epilog.sink.split_crit_edge
    i8 -84, label %sw.bb2
    i8 0, label %sw.bb4
  ]

entry.sw.epilog.sink.split_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog.sink.split

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog.sink.split

sw.bb4:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog.sink.split

sw.epilog.sink.split:                             ; preds = %sw.bb4, %sw.bb2, %entry.sw.epilog.sink.split_crit_edge
  %.sink = phi i8 [ 1, %sw.bb4 ], [ 8, %sw.bb2 ], [ 9, %entry.sw.epilog.sink.split_crit_edge ]
  %8 = ptrtoint ptr %cb.i to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %.sink, ptr %cb.i, align 1
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilog.sink.split, %entry.sw.epilog_crit_edge
  %ind_cfm_flag = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 4
  %9 = ptrtoint ptr %ind_cfm_flag to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 1, ptr %ind_cfm_flag, align 1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @llc_build_and_send_test_pkt(ptr noundef %sap, ptr noundef %skb, ptr nocapture noundef readonly %dmac, i8 noundef zeroext %dsap) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %cb.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3
  %laddr = getelementptr inbounds %struct.llc_sap, ptr %sap, i32 0, i32 5
  %0 = ptrtoint ptr %laddr to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %laddr, align 4
  %saddr = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 5
  %2 = ptrtoint ptr %saddr to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 %1, ptr %saddr, align 1
  %daddr = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 12
  %3 = ptrtoint ptr %daddr to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 %dsap, ptr %daddr, align 1
  %mac = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 6
  %4 = getelementptr inbounds %struct.anon, ptr %skb, i32 0, i32 2
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %4, align 8
  %dev_addr = getelementptr inbounds %struct.net_device, ptr %6, i32 0, i32 86
  %7 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev_addr, align 64
  %9 = call ptr @memcpy(ptr %mac, ptr %8, i32 6)
  %mac5 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 13
  %10 = call ptr @memcpy(ptr %mac5, ptr %dmac, i32 6)
  %type = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 2
  %11 = ptrtoint ptr %type to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 3, ptr %type, align 1
  %12 = ptrtoint ptr %cb.i to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 9, ptr %cb.i, align 1
  %prim_type = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 1
  %13 = ptrtoint ptr %prim_type to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 1, ptr %prim_type, align 1
  tail call fastcc void @llc_sap_state_process(ptr noundef %sap, ptr noundef %skb)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @llc_sap_state_process(ptr noundef %sap, ptr noundef %skb) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %cb.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3
  %ind_cfm_flag = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 4
  %0 = ptrtoint ptr %ind_cfm_flag to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 0, ptr %ind_cfm_flag, align 1
  %1 = ptrtoint ptr %sap to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %sap, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %2)
  %cmp.i = icmp ugt i8 %2, 2
  br i1 %cmp.i, label %entry.if.end11_crit_edge, label %if.end.i

entry.if.end11_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end11

if.end.i:                                         ; preds = %entry
  %conv.i.i = zext i8 %2 to i32
  %sub.i.i = add nsw i32 %conv.i.i, -1
  %transitions.i.i = getelementptr [2 x %struct.llc_sap_state], ptr @llc_sap_state_table, i32 0, i32 %sub.i.i, i32 1
  %3 = ptrtoint ptr %transitions.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %transitions.i.i, align 4
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %4, align 4
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %6, align 4
  %tobool.not13.i.i = icmp eq ptr %8, null
  br i1 %tobool.not13.i.i, label %if.end.i.llc_sap_next_state.exit_crit_edge, label %if.end.i.for.body.i.i_crit_edge

if.end.i.for.body.i.i_crit_edge:                  ; preds = %if.end.i
  br label %for.body.i.i

if.end.i.llc_sap_next_state.exit_crit_edge:       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %llc_sap_next_state.exit

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %if.end.i.for.body.i.i_crit_edge
  %9 = phi ptr [ %13, %for.inc.i.i.for.body.i.i_crit_edge ], [ %8, %if.end.i.for.body.i.i_crit_edge ]
  %i.014.i.i = phi i32 [ %inc.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ 0, %if.end.i.for.body.i.i_crit_edge ]
  %call.i.i = tail call i32 %9(ptr noundef %sap, ptr noundef %skb) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool4.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool4.not.i.i, label %llc_find_sap_trans.exit.i, label %for.inc.i.i

for.inc.i.i:                                      ; preds = %for.body.i.i
  %inc.i.i = add i32 %i.014.i.i, 1
  %arrayidx1.i.i = getelementptr ptr, ptr %4, i32 %inc.i.i
  %10 = ptrtoint ptr %arrayidx1.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx1.i.i, align 4
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %11, align 4
  %tobool.not.i.i = icmp eq ptr %13, null
  br i1 %tobool.not.i.i, label %for.inc.i.i.llc_sap_next_state.exit_crit_edge, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i.i

for.inc.i.i.llc_sap_next_state.exit_crit_edge:    ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %llc_sap_next_state.exit

llc_find_sap_trans.exit.i:                        ; preds = %for.body.i.i
  %arrayidx1.le.i.i = getelementptr ptr, ptr %4, i32 %i.014.i.i
  %14 = ptrtoint ptr %arrayidx1.le.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx1.le.i.i, align 4
  %tobool.not.i = icmp eq ptr %15, null
  br i1 %tobool.not.i, label %llc_find_sap_trans.exit.i.llc_sap_next_state.exit_crit_edge, label %if.end3.i

llc_find_sap_trans.exit.i.llc_sap_next_state.exit_crit_edge: ; preds = %llc_find_sap_trans.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %llc_sap_next_state.exit

if.end3.i:                                        ; preds = %llc_find_sap_trans.exit.i
  %ev_actions.i.i = getelementptr inbounds %struct.llc_sap_state_trans, ptr %15, i32 0, i32 2
  %16 = ptrtoint ptr %ev_actions.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %ev_actions.i.i, align 4
  %tobool.not6.i.i = icmp eq ptr %17, null
  br i1 %tobool.not6.i.i, label %if.end3.i.if.end7.i_crit_edge, label %if.end3.i.land.rhs.i.i_crit_edge

if.end3.i.land.rhs.i.i_crit_edge:                 ; preds = %if.end3.i
  br label %land.rhs.i.i

if.end3.i.if.end7.i_crit_edge:                    ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end7.i

land.rhs.i.i:                                     ; preds = %for.body.i3.i.land.rhs.i.i_crit_edge, %if.end3.i.land.rhs.i.i_crit_edge
  %next_action.08.i.i = phi ptr [ %incdec.ptr.i.i, %for.body.i3.i.land.rhs.i.i_crit_edge ], [ %17, %if.end3.i.land.rhs.i.i_crit_edge ]
  %rc.07.i.i = phi i32 [ %spec.select.i.i, %for.body.i3.i.land.rhs.i.i_crit_edge ], [ 0, %if.end3.i.land.rhs.i.i_crit_edge ]
  %18 = ptrtoint ptr %next_action.08.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %next_action.08.i.i, align 4
  %tobool1.not.i.i = icmp eq ptr %19, null
  br i1 %tobool1.not.i.i, label %land.rhs.i.i.llc_exec_sap_trans_actions.exit.i_crit_edge, label %for.body.i3.i

land.rhs.i.i.llc_exec_sap_trans_actions.exit.i_crit_edge: ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %llc_exec_sap_trans_actions.exit.i

for.body.i3.i:                                    ; preds = %land.rhs.i.i
  %call.i1.i = tail call i32 %19(ptr noundef %sap, ptr noundef %skb) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i1.i)
  %tobool2.not.i.i = icmp eq i32 %call.i1.i, 0
  %spec.select.i.i = select i1 %tobool2.not.i.i, i32 %rc.07.i.i, i32 1
  %incdec.ptr.i.i = getelementptr ptr, ptr %next_action.08.i.i, i32 1
  %tobool.not.i2.i = icmp eq ptr %incdec.ptr.i.i, null
  br i1 %tobool.not.i2.i, label %for.body.i3.i.llc_exec_sap_trans_actions.exit.i_crit_edge, label %for.body.i3.i.land.rhs.i.i_crit_edge

for.body.i3.i.land.rhs.i.i_crit_edge:             ; preds = %for.body.i3.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.rhs.i.i

for.body.i3.i.llc_exec_sap_trans_actions.exit.i_crit_edge: ; preds = %for.body.i3.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %llc_exec_sap_trans_actions.exit.i

llc_exec_sap_trans_actions.exit.i:                ; preds = %for.body.i3.i.llc_exec_sap_trans_actions.exit.i_crit_edge, %land.rhs.i.i.llc_exec_sap_trans_actions.exit.i_crit_edge
  %rc.0.lcssa.i.i = phi i32 [ %spec.select.i.i, %for.body.i3.i.llc_exec_sap_trans_actions.exit.i_crit_edge ], [ %rc.07.i.i, %land.rhs.i.i.llc_exec_sap_trans_actions.exit.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rc.0.lcssa.i.i)
  %tobool5.not.i = icmp eq i32 %rc.0.lcssa.i.i, 0
  br i1 %tobool5.not.i, label %llc_exec_sap_trans_actions.exit.i.if.end7.i_crit_edge, label %llc_exec_sap_trans_actions.exit.i.llc_sap_next_state.exit_crit_edge

llc_exec_sap_trans_actions.exit.i.llc_sap_next_state.exit_crit_edge: ; preds = %llc_exec_sap_trans_actions.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %llc_sap_next_state.exit

llc_exec_sap_trans_actions.exit.i.if.end7.i_crit_edge: ; preds = %llc_exec_sap_trans_actions.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end7.i

if.end7.i:                                        ; preds = %llc_exec_sap_trans_actions.exit.i.if.end7.i_crit_edge, %if.end3.i.if.end7.i_crit_edge
  %next_state.i = getelementptr inbounds %struct.llc_sap_state_trans, ptr %15, i32 0, i32 1
  %20 = ptrtoint ptr %next_state.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %next_state.i, align 4
  %22 = ptrtoint ptr %sap to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %21, ptr %sap, align 4
  br label %llc_sap_next_state.exit

llc_sap_next_state.exit:                          ; preds = %if.end7.i, %llc_exec_sap_trans_actions.exit.i.llc_sap_next_state.exit_crit_edge, %llc_find_sap_trans.exit.i.llc_sap_next_state.exit_crit_edge, %for.inc.i.i.llc_sap_next_state.exit_crit_edge, %if.end.i.llc_sap_next_state.exit_crit_edge
  %23 = ptrtoint ptr %ind_cfm_flag to i32
  call void @__asan_load1_noabort(i32 %23)
  %.pr = load i8, ptr %ind_cfm_flag, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %.pr)
  %cmp = icmp eq i8 %.pr, 1
  br i1 %cmp, label %land.lhs.true, label %llc_sap_next_state.exit.if.end11_crit_edge

llc_sap_next_state.exit.if.end11_crit_edge:       ; preds = %llc_sap_next_state.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end11

land.lhs.true:                                    ; preds = %llc_sap_next_state.exit
  %24 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 1
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %24, align 4
  %skc_state = getelementptr inbounds %struct.sock_common, ptr %26, i32 0, i32 4
  %27 = ptrtoint ptr %skc_state to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load volatile i8, ptr %skc_state, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %28)
  %cmp5.not = icmp eq i8 %28, 10
  br i1 %cmp5.not, label %land.lhs.true.if.end11_crit_edge, label %if.then

land.lhs.true.if.end11_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end11

if.then:                                          ; preds = %land.lhs.true
  %29 = ptrtoint ptr %cb.i to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %cb.i, align 1
  %31 = call ptr @memset(ptr %cb.i, i32 0, i32 16)
  %skc_family.i = getelementptr inbounds %struct.sock_common, ptr %26, i32 0, i32 3
  %32 = ptrtoint ptr %skc_family.i to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %skc_family.i, align 8
  store i16 %33, ptr %cb.i, align 2
  %34 = getelementptr inbounds %struct.anon, ptr %skb, i32 0, i32 2
  %35 = ptrtoint ptr %34 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %34, align 8
  %type.i = getelementptr inbounds %struct.net_device, ptr %36, i32 0, i32 32
  %37 = ptrtoint ptr %type.i to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %type.i, align 16
  %sllc_arphrd.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 2
  %39 = ptrtoint ptr %sllc_arphrd.i to i32
  call void @__asan_store2_noabort(i32 %39)
  store i16 %38, ptr %sllc_arphrd.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 9, i8 %30)
  %cmp.i22 = icmp eq i8 %30, 9
  %conv2.i = zext i1 %cmp.i22 to i8
  %40 = ptrtoint ptr %ind_cfm_flag to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 %conv2.i, ptr %ind_cfm_flag, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %30)
  %cmp4.i = icmp eq i8 %30, 8
  %conv6.i = zext i1 %cmp4.i to i8
  %sllc_xid.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 5
  %41 = ptrtoint ptr %sllc_xid.i to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 %conv6.i, ptr %sllc_xid.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %30)
  %cmp8.i = icmp eq i8 %30, 1
  %conv10.i = zext i1 %cmp8.i to i8
  %sllc_ua.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 6
  %42 = ptrtoint ptr %sllc_ua.i to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 %conv10.i, ptr %sllc_ua.i, align 2
  %protocol.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 18
  %43 = ptrtoint ptr %protocol.i.i to i32
  call void @__asan_load2_noabort(i32 %43)
  %44 = load i16, ptr %protocol.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 4, i16 %44)
  %cmp.i.i = icmp eq i16 %44, 4
  br i1 %cmp.i.i, label %if.then.i.i, label %if.then.llc_save_primitive.exit_crit_edge

if.then.llc_save_primitive.exit_crit_edge:        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %llc_save_primitive.exit

if.then.i.i:                                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %sllc_mac.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 8
  %head.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %45 = ptrtoint ptr %head.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %head.i.i.i.i, align 8
  %mac_header.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 21
  %47 = ptrtoint ptr %mac_header.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %47)
  %48 = load i16, ptr %mac_header.i.i.i.i, align 2
  %conv.i.i.i.i = zext i16 %48 to i32
  %add.ptr.i.i.i.i = getelementptr i8, ptr %46, i32 %conv.i.i.i.i
  %h_source.i.i = getelementptr inbounds %struct.ethhdr, ptr %add.ptr.i.i.i.i, i32 0, i32 1
  %49 = call ptr @memcpy(ptr %sllc_mac.i, ptr %h_source.i.i, i32 6)
  br label %llc_save_primitive.exit

llc_save_primitive.exit:                          ; preds = %if.then.i.i, %if.then.llc_save_primitive.exit_crit_edge
  %sllc_sap.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 7
  %head.i.i.i23.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %50 = ptrtoint ptr %head.i.i.i23.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %head.i.i.i23.i, align 8
  %network_header.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %52 = ptrtoint ptr %network_header.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %52)
  %53 = load i16, ptr %network_header.i.i.i.i, align 4
  %conv.i.i.i24.i = zext i16 %53 to i32
  %add.ptr.i.i.i25.i = getelementptr i8, ptr %51, i32 %conv.i.i.i24.i
  %ssap1.i.i = getelementptr inbounds %struct.llc_pdu_un, ptr %add.ptr.i.i.i25.i, i32 0, i32 1
  %54 = ptrtoint ptr %ssap1.i.i to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %ssap1.i.i, align 1
  %56 = and i8 %55, -2
  %57 = ptrtoint ptr %sllc_sap.i to i32
  call void @__asan_store1_noabort(i32 %57)
  store i8 %56, ptr %sllc_sap.i, align 1
  %call7 = tail call i32 @sock_queue_rcv_skb(ptr noundef %26, ptr noundef %skb) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %cmp8 = icmp eq i32 %call7, 0
  br i1 %cmp8, label %llc_save_primitive.exit.cleanup_crit_edge, label %llc_save_primitive.exit.if.end11_crit_edge

llc_save_primitive.exit.if.end11_crit_edge:       ; preds = %llc_save_primitive.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end11

llc_save_primitive.exit.cleanup_crit_edge:        ; preds = %llc_save_primitive.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end11:                                         ; preds = %llc_save_primitive.exit.if.end11_crit_edge, %land.lhs.true.if.end11_crit_edge, %llc_sap_next_state.exit.if.end11_crit_edge, %entry.if.end11_crit_edge
  tail call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end11, %llc_save_primitive.exit.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @llc_build_and_send_xid_pkt(ptr noundef %sap, ptr noundef %skb, ptr nocapture noundef readonly %dmac, i8 noundef zeroext %dsap) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %cb.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3
  %laddr = getelementptr inbounds %struct.llc_sap, ptr %sap, i32 0, i32 5
  %0 = ptrtoint ptr %laddr to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %laddr, align 4
  %saddr = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 5
  %2 = ptrtoint ptr %saddr to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 %1, ptr %saddr, align 1
  %daddr = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 12
  %3 = ptrtoint ptr %daddr to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 %dsap, ptr %daddr, align 1
  %mac = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 6
  %4 = getelementptr inbounds %struct.anon, ptr %skb, i32 0, i32 2
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %4, align 8
  %dev_addr = getelementptr inbounds %struct.net_device, ptr %6, i32 0, i32 86
  %7 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev_addr, align 64
  %9 = call ptr @memcpy(ptr %mac, ptr %8, i32 6)
  %mac5 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 13
  %10 = call ptr @memcpy(ptr %mac5, ptr %dmac, i32 6)
  %type = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 2
  %11 = ptrtoint ptr %type to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 3, ptr %type, align 1
  %12 = ptrtoint ptr %cb.i to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 8, ptr %cb.i, align 1
  %prim_type = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 1
  %13 = ptrtoint ptr %prim_type to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 1, ptr %prim_type, align 1
  tail call fastcc void @llc_sap_state_process(ptr noundef %sap, ptr noundef %skb)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @llc_sap_handler(ptr noundef %sap, ptr noundef %skb) local_unnamed_addr #0 align 64 {
entry:
  %old.i.i.i.i = alloca i32, align 4
  %stack.i = alloca [64 x ptr], align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %protocol.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 18
  %0 = ptrtoint ptr %protocol.i to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %protocol.i, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 4, i16 %1)
  %cmp.i = icmp eq i16 %1, 4
  br i1 %cmp.i, label %if.then.i, label %entry.llc_pdu_decode_da.exit_crit_edge

entry.llc_pdu_decode_da.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %llc_pdu_decode_da.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %head.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %2 = ptrtoint ptr %head.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %head.i.i.i, align 8
  %mac_header.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 21
  %4 = ptrtoint ptr %mac_header.i.i.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %mac_header.i.i.i, align 2
  %conv.i.i.i = zext i16 %5 to i32
  %add.ptr.i.i.i = getelementptr i8, ptr %3, i32 %conv.i.i.i
  %6 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %6, i32 4)
  %laddr.sroa.7.1.copyload = load i32, ptr %add.ptr.i.i.i, align 1
  %laddr.sroa.7.sroa.0.0.extract.shift = lshr i32 %laddr.sroa.7.1.copyload, 24
  %laddr.sroa.7.sroa.8.0.extract.shift = lshr i32 %laddr.sroa.7.1.copyload, 16
  %laddr.sroa.7.sroa.10.0.extract.shift = lshr i32 %laddr.sroa.7.1.copyload, 8
  %laddr.sroa.19.1.add.ptr.i.i.i.sroa_idx = getelementptr inbounds i8, ptr %add.ptr.i.i.i, i32 4
  %7 = ptrtoint ptr %laddr.sroa.19.1.add.ptr.i.i.i.sroa_idx to i32
  call void @__asan_loadN_noabort(i32 %7, i32 2)
  %laddr.sroa.19.1.copyload = load i16, ptr %laddr.sroa.19.1.add.ptr.i.i.i.sroa_idx, align 1
  %phi.bo = and i32 %laddr.sroa.7.1.copyload, 255
  %phi.bo116 = and i32 %laddr.sroa.7.sroa.10.0.extract.shift, 255
  %phi.bo117 = and i32 %laddr.sroa.7.sroa.8.0.extract.shift, 255
  br label %llc_pdu_decode_da.exit

llc_pdu_decode_da.exit:                           ; preds = %if.then.i, %entry.llc_pdu_decode_da.exit_crit_edge
  %laddr.sroa.7.sroa.12.0 = phi i32 [ %phi.bo, %if.then.i ], [ 255, %entry.llc_pdu_decode_da.exit_crit_edge ]
  %laddr.sroa.7.sroa.10.0 = phi i32 [ %phi.bo116, %if.then.i ], [ 255, %entry.llc_pdu_decode_da.exit_crit_edge ]
  %laddr.sroa.7.sroa.8.0 = phi i32 [ %phi.bo117, %if.then.i ], [ 255, %entry.llc_pdu_decode_da.exit_crit_edge ]
  %laddr.sroa.7.sroa.0.0 = phi i32 [ %laddr.sroa.7.sroa.0.0.extract.shift, %if.then.i ], [ 255, %entry.llc_pdu_decode_da.exit_crit_edge ]
  %laddr.sroa.19.0 = phi i16 [ %laddr.sroa.19.1.copyload, %if.then.i ], [ -1, %entry.llc_pdu_decode_da.exit_crit_edge ]
  %head.i.i.i16 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %8 = ptrtoint ptr %head.i.i.i16 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %head.i.i.i16, align 8
  %network_header.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %10 = ptrtoint ptr %network_header.i.i.i to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %network_header.i.i.i, align 4
  %conv.i.i.i17 = zext i16 %11 to i32
  %add.ptr.i.i.i18 = getelementptr i8, ptr %9, i32 %conv.i.i.i17
  %12 = ptrtoint ptr %add.ptr.i.i.i18 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %add.ptr.i.i.i18, align 1
  %14 = and i8 %13, -2
  %laddr.sroa.7.sroa.10.0.insert.shift = shl nuw nsw i32 %laddr.sroa.7.sroa.10.0, 8
  %laddr.sroa.7.sroa.10.0.insert.insert = or i32 %laddr.sroa.7.sroa.10.0.insert.shift, %laddr.sroa.7.sroa.12.0
  %laddr.sroa.7.sroa.8.0.insert.shift = shl nuw nsw i32 %laddr.sroa.7.sroa.8.0, 16
  %laddr.sroa.7.sroa.8.0.insert.insert = or i32 %laddr.sroa.7.sroa.10.0.insert.insert, %laddr.sroa.7.sroa.8.0.insert.shift
  %laddr.sroa.7.sroa.0.0.insert.shift = shl nuw i32 %laddr.sroa.7.sroa.0.0, 24
  %laddr.sroa.7.sroa.0.0.insert.insert = or i32 %laddr.sroa.7.sroa.8.0.insert.insert, %laddr.sroa.7.sroa.0.0.insert.shift
  %15 = and i32 %laddr.sroa.7.sroa.0.0, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool.i.not = icmp eq i32 %15, 0
  br i1 %tobool.i.not, label %if.else, label %if.then

if.then:                                          ; preds = %llc_pdu_decode_da.exit
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %stack.i) #8
  %16 = call ptr @memset(ptr %stack.i, i32 255, i32 256)
  %17 = getelementptr inbounds %struct.anon, ptr %skb, i32 0, i32 2
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %17, align 8
  %ifindex.i = getelementptr inbounds %struct.net_device, ptr %19, i32 0, i32 17
  %20 = ptrtoint ptr %ifindex.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %ifindex.i, align 4
  %mul.i.i.i.i = mul i32 %21, 1640531527
  %shr.i.i.i = lshr i32 %mul.i.i.i.i, 26
  %arrayidx.i.i = getelementptr %struct.llc_sap, ptr %sap, i32 0, i32 10, i32 %shr.i.i.i
  %sk_lock.i = getelementptr inbounds %struct.llc_sap, ptr %sap, i32 0, i32 7
  tail call void @_raw_spin_lock_bh(ptr noundef %sk_lock.i) #8
  %22 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %arrayidx.i.i, align 4
  %tobool.not.i = icmp eq ptr %23, null
  %add.ptr.i = getelementptr i8, ptr %23, i32 -1320
  %tobool2.not4044.i = icmp eq ptr %add.ptr.i, null
  %tobool2.not40.i = or i1 %tobool.not.i, %tobool2.not4044.i
  br i1 %tobool2.not40.i, label %if.then.llc_sap_mcast.exit_crit_edge, label %if.then.for.body.i_crit_edge

if.then.for.body.i_crit_edge:                     ; preds = %if.then
  br label %for.body.i

if.then.llc_sap_mcast.exit_crit_edge:             ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %llc_sap_mcast.exit

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.then.for.body.i_crit_edge
  %i.043.i = phi i32 [ %i.1.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %if.then.for.body.i_crit_edge ]
  %llc.041.i = phi ptr [ %add.ptr13.i, %for.inc.i.for.body.i_crit_edge ], [ %add.ptr.i, %if.then.for.body.i_crit_edge ]
  %sk_type.i.i = getelementptr inbounds %struct.sock, ptr %llc.041.i, i32 0, i32 45
  %24 = ptrtoint ptr %sk_type.i.i to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %sk_type.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %25)
  %cmp.i.i = icmp eq i16 %25, 2
  br i1 %cmp.i.i, label %land.lhs.true.i.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i

land.lhs.true.i.i:                                ; preds = %for.body.i
  %laddr2.i.i = getelementptr inbounds %struct.llc_sock, ptr %llc.041.i, i32 0, i32 4
  %26 = ptrtoint ptr %laddr2.i.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %laddr2.i.i, align 8
  call void @__sanitizer_cov_trace_cmp1(i8 %27, i8 %14)
  %cmp6.i.i = icmp eq i8 %27, %14
  br i1 %cmp6.i.i, label %llc_mcast_match.exit.i, label %land.lhs.true.i.i.for.inc.i_crit_edge

land.lhs.true.i.i.for.inc.i_crit_edge:            ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i

llc_mcast_match.exit.i:                           ; preds = %land.lhs.true.i.i
  %dev.i.i = getelementptr inbounds %struct.llc_sock, ptr %llc.041.i, i32 0, i32 6
  %28 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %dev.i.i, align 8
  %30 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %17, align 8
  %cmp8.i.i = icmp eq ptr %29, %31
  br i1 %cmp8.i.i, label %if.end.i, label %llc_mcast_match.exit.i.for.inc.i_crit_edge

llc_mcast_match.exit.i.for.inc.i_crit_edge:       ; preds = %llc_mcast_match.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i

if.end.i:                                         ; preds = %llc_mcast_match.exit.i
  %skc_refcnt.i.i = getelementptr inbounds %struct.sock_common, ptr %llc.041.i, i32 0, i32 19
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %skc_refcnt.i.i, i32 noundef 4) #8
  tail call void @llvm.prefetch.p0(ptr %skc_refcnt.i.i, i32 1, i32 3, i32 1) #8
  %32 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %skc_refcnt.i.i, ptr %skc_refcnt.i.i, i32 1, ptr elementtype(i32) %skc_refcnt.i.i) #8, !srcloc !16
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %32, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i.i, label %if.end.i.if.end15.sink.split.i.i.i.i.i_crit_edge, label %if.else.i.i.i.i.i, !prof !17

if.end.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i:                                ; preds = %if.end.i
  %add.i.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i.i, 1
  %33 = or i32 %add.i.i.i.i.i, %asmresult.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %33)
  %.not.i.i.i.i.i = icmp sgt i32 %33, -1
  br i1 %.not.i.i.i.i.i, label %if.else.i.i.i.i.i.sock_hold.exit.i_crit_edge, label %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, !prof !18

if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i.sock_hold.exit.i_crit_edge:     ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sock_hold.exit.i

if.end15.sink.split.i.i.i.i.i:                    ; preds = %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, %if.end.i.if.end15.sink.split.i.i.i.i.i_crit_edge
  %.sink.i.i.i.i.i = phi i32 [ 2, %if.end.i.if.end15.sink.split.i.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %skc_refcnt.i.i, i32 noundef %.sink.i.i.i.i.i) #8
  br label %sock_hold.exit.i

sock_hold.exit.i:                                 ; preds = %if.end15.sink.split.i.i.i.i.i, %if.else.i.i.i.i.i.sock_hold.exit.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %i.043.i)
  %cmp.i19 = icmp ult i32 %i.043.i, 64
  br i1 %cmp.i19, label %if.then5.i, label %if.else.i

if.then5.i:                                       ; preds = %sock_hold.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  %inc.i = add nuw nsw i32 %i.043.i, 1
  %arrayidx.i = getelementptr [64 x ptr], ptr %stack.i, i32 0, i32 %i.043.i
  %34 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %llc.041.i, ptr %arrayidx.i, align 4
  br label %for.inc.i

if.else.i:                                        ; preds = %sock_hold.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  call fastcc void @llc_do_mcast(ptr noundef %sap, ptr noundef %skb, ptr noundef nonnull %stack.i, i32 noundef %i.043.i) #8
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.else.i, %if.then5.i, %llc_mcast_match.exit.i.for.inc.i_crit_edge, %land.lhs.true.i.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %i.1.i = phi i32 [ %inc.i, %if.then5.i ], [ 0, %if.else.i ], [ %i.043.i, %llc_mcast_match.exit.i.for.inc.i_crit_edge ], [ %i.043.i, %land.lhs.true.i.i.for.inc.i_crit_edge ], [ %i.043.i, %for.body.i.for.inc.i_crit_edge ]
  %dev_hash_node.i = getelementptr inbounds %struct.llc_sock, ptr %llc.041.i, i32 0, i32 41
  %35 = ptrtoint ptr %dev_hash_node.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %dev_hash_node.i, align 8
  %tobool9.not.i = icmp eq ptr %36, null
  %add.ptr13.i = getelementptr i8, ptr %36, i32 -1320
  %tobool2.not45.i = icmp eq ptr %add.ptr13.i, null
  %tobool2.not.i = or i1 %tobool9.not.i, %tobool2.not45.i
  br i1 %tobool2.not.i, label %for.inc.i.llc_sap_mcast.exit_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

for.inc.i.llc_sap_mcast.exit_crit_edge:           ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %llc_sap_mcast.exit

llc_sap_mcast.exit:                               ; preds = %for.inc.i.llc_sap_mcast.exit_crit_edge, %if.then.llc_sap_mcast.exit_crit_edge
  %i.0.lcssa.i = phi i32 [ 0, %if.then.llc_sap_mcast.exit_crit_edge ], [ %i.1.i, %for.inc.i.llc_sap_mcast.exit_crit_edge ]
  tail call void @_raw_spin_unlock_bh(ptr noundef %sk_lock.i) #8
  call fastcc void @llc_do_mcast(ptr noundef %sap, ptr noundef %skb, ptr noundef nonnull %stack.i, i32 noundef %i.0.lcssa.i) #8
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %stack.i) #8
  tail call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #8
  br label %if.end6

if.else:                                          ; preds = %llc_pdu_decode_da.exit
  %37 = shl i16 %laddr.sroa.19.0, 8
  %shl60.i.i.i = zext i16 %37 to i32
  %add61.i.i.i = add nuw nsw i32 %shl60.i.i.i, -559038731
  %laddr.sroa.19.5.extract.shift = lshr i16 %laddr.sroa.19.0, 8
  %laddr.sroa.19.5.extract.trunc = zext i16 %laddr.sroa.19.5.extract.shift to i32
  %add65.i.i.i = add nuw nsw i32 %add61.i.i.i, %laddr.sroa.19.5.extract.trunc
  %shl69.i.i.i = shl nuw i32 %laddr.sroa.7.sroa.12.0, 24
  %add70.i.i.i = add i32 %shl69.i.i.i, -559038731
  %shl74.i.i.i = shl nuw nsw i32 %laddr.sroa.7.sroa.10.0, 16
  %add75.i.i.i = add i32 %add70.i.i.i, %shl74.i.i.i
  %shl79.i.i.i = shl nuw nsw i32 %laddr.sroa.7.sroa.8.0, 8
  %add80.i.i.i = add nuw nsw i32 %add75.i.i.i, %laddr.sroa.7.sroa.0.0
  %add84.i.i.i = add i32 %add80.i.i.i, %shl79.i.i.i
  %xor85.i.i.i = xor i32 %add65.i.i.i, -559038731
  %or.i.i.i.i = tail call i32 @llvm.fshl.i32(i32 %add65.i.i.i, i32 %add65.i.i.i, i32 14) #8
  %sub87.i.i.i = sub i32 %xor85.i.i.i, %or.i.i.i.i
  %xor88.i.i.i = xor i32 %sub87.i.i.i, %add84.i.i.i
  %or.i1.i.i.i = tail call i32 @llvm.fshl.i32(i32 %sub87.i.i.i, i32 %sub87.i.i.i, i32 11) #8
  %sub90.i.i.i = sub i32 %xor88.i.i.i, %or.i1.i.i.i
  %xor91.i.i.i = xor i32 %sub90.i.i.i, %add65.i.i.i
  %or.i2.i.i.i = tail call i32 @llvm.fshl.i32(i32 %sub90.i.i.i, i32 %sub90.i.i.i, i32 25) #8
  %sub93.i.i.i = sub i32 %xor91.i.i.i, %or.i2.i.i.i
  %xor94.i.i.i = xor i32 %sub93.i.i.i, %sub87.i.i.i
  %or.i3.i.i.i = tail call i32 @llvm.fshl.i32(i32 %sub93.i.i.i, i32 %sub93.i.i.i, i32 16) #8
  %sub96.i.i.i = sub i32 %xor94.i.i.i, %or.i3.i.i.i
  %xor97.i.i.i = xor i32 %sub96.i.i.i, %sub90.i.i.i
  %or.i4.i.i.i = tail call i32 @llvm.fshl.i32(i32 %sub96.i.i.i, i32 %sub96.i.i.i, i32 4) #8
  %sub99.i.i.i = sub i32 %xor97.i.i.i, %or.i4.i.i.i
  %xor100.i.i.i = xor i32 %sub99.i.i.i, %sub93.i.i.i
  %or.i5.i.i.i = tail call i32 @llvm.fshl.i32(i32 %sub99.i.i.i, i32 %sub99.i.i.i, i32 14) #8
  %sub102.i.i.i = sub i32 %xor100.i.i.i, %or.i5.i.i.i
  %or.i6.i.i.i = tail call i32 @llvm.fshl.i32(i32 %sub102.i.i.i, i32 %sub102.i.i.i, i32 24) #8
  %xor103.i.i.i = xor i32 %sub102.i.i.i, %sub96.i.i.i
  %sub105.i.i.i = sub i32 %xor103.i.i.i, %or.i6.i.i.i
  %mul.i.i.i.i20 = mul i32 %sub105.i.i.i, 1640531527
  %shr.i.i.i21 = lshr i32 %mul.i.i.i.i20, 26
  %arrayidx.i22 = getelementptr %struct.llc_sap, ptr %sap, i32 0, i32 9, i32 %shr.i.i.i21
  tail call fastcc void @local_bh_disable() #8
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_bh_lock_map) #8
  %call.i.i = tail call zeroext i1 @rcu_is_watching() #8
  br i1 %call.i.i, label %if.else.again.i.preheader_crit_edge, label %land.lhs.true.i.i23

if.else.again.i.preheader_crit_edge:              ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %again.i.preheader

land.lhs.true.i.i23:                              ; preds = %if.else
  %call1.i.i = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool.not.i.i, label %land.lhs.true.i.i23.again.i.preheader_crit_edge, label %land.lhs.true2.i.i

land.lhs.true.i.i23.again.i.preheader_crit_edge:  ; preds = %land.lhs.true.i.i23
  call void @__sanitizer_cov_trace_pc() #10
  br label %again.i.preheader

land.lhs.true2.i.i:                               ; preds = %land.lhs.true.i.i23
  %.b4.i.i = load i1, ptr @rcu_read_lock_bh.__warned, align 1
  br i1 %.b4.i.i, label %land.lhs.true2.i.i.again.i.preheader_crit_edge, label %if.then.i.i

land.lhs.true2.i.i.again.i.preheader_crit_edge:   ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %again.i.preheader

if.then.i.i:                                      ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @rcu_read_lock_bh.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 750, ptr noundef nonnull @.str.1) #8
  br label %again.i.preheader

again.i.preheader:                                ; preds = %if.then.i.i, %land.lhs.true2.i.i.again.i.preheader_crit_edge, %land.lhs.true.i.i23.again.i.preheader_crit_edge, %if.else.again.i.preheader_crit_edge
  br label %again.i

again.i:                                          ; preds = %again.i.backedge, %again.i.preheader
  call void asm sideeffect "", "~{memory}"() #8, !srcloc !19
  %38 = ptrtoint ptr %arrayidx.i22 to i32
  call void @__asan_load4_noabort(i32 %38)
  %node.087.i = load volatile ptr, ptr %arrayidx.i22, align 4
  %39 = ptrtoint ptr %node.087.i to i32
  %and.i88.i = and i32 %39, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i88.i)
  %tobool.not89.i = icmp eq i32 %and.i88.i, 0
  br i1 %tobool.not89.i, label %again.i.land.rhs.i_crit_edge, label %again.i.for.end.i_crit_edge

again.i.for.end.i_crit_edge:                      ; preds = %again.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i

again.i.land.rhs.i_crit_edge:                     ; preds = %again.i
  br label %land.rhs.i

land.rhs.i:                                       ; preds = %for.inc.i35.land.rhs.i_crit_edge, %again.i.land.rhs.i_crit_edge
  %node.090.i = phi ptr [ %node.0.i, %for.inc.i35.land.rhs.i_crit_edge ], [ %node.087.i, %again.i.land.rhs.i_crit_edge ]
  %add.ptr.i24 = getelementptr i8, ptr %node.090.i, i32 -84
  %sk_type.i.i25 = getelementptr i8, ptr %node.090.i, i32 550
  %40 = ptrtoint ptr %sk_type.i.i25 to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %sk_type.i.i25, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %41)
  %cmp.i.i26 = icmp eq i16 %41, 2
  br i1 %cmp.i.i26, label %land.lhs.true.i56.i, label %land.rhs.i.for.inc.i35_crit_edge

land.rhs.i.for.inc.i35_crit_edge:                 ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i35

land.lhs.true.i56.i:                              ; preds = %land.rhs.i
  %laddr2.i.i27 = getelementptr i8, ptr %node.090.i, i32 900
  %42 = ptrtoint ptr %laddr2.i.i27 to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %laddr2.i.i27, align 8
  call void @__sanitizer_cov_trace_cmp1(i8 %43, i8 %14)
  %cmp6.i.i28 = icmp eq i8 %43, %14
  br i1 %cmp6.i.i28, label %llc_dgram_match.exit.i, label %land.lhs.true.i56.i.for.inc.i35_crit_edge

land.lhs.true.i56.i.for.inc.i35_crit_edge:        ; preds = %land.lhs.true.i56.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i35

llc_dgram_match.exit.i:                           ; preds = %land.lhs.true.i56.i
  %mac.i57.i = getelementptr i8, ptr %node.090.i, i32 901
  %44 = ptrtoint ptr %mac.i57.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %mac.i57.i, align 4
  %xor.i.i.i = xor i32 %45, %laddr.sroa.7.sroa.0.0.insert.insert
  %add.ptr.i.i.i29 = getelementptr i8, ptr %node.090.i, i32 905
  %46 = ptrtoint ptr %add.ptr.i.i.i29 to i32
  call void @__asan_load2_noabort(i32 %46)
  %47 = load i16, ptr %add.ptr.i.i.i29, align 2
  %xor37.i.i.i = xor i16 %47, %laddr.sroa.19.0
  %xor3.i.i.i = zext i16 %xor37.i.i.i to i32
  %or.i.i.i = or i32 %xor.i.i.i, %xor3.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i.i.i)
  %cmp.i.i.i = icmp eq i32 %or.i.i.i, 0
  br i1 %cmp.i.i.i, label %if.then.i31, label %llc_dgram_match.exit.i.for.inc.i35_crit_edge

llc_dgram_match.exit.i.for.inc.i35_crit_edge:     ; preds = %llc_dgram_match.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i35

if.then.i31:                                      ; preds = %llc_dgram_match.exit.i
  %skc_refcnt.i = getelementptr i8, ptr %node.090.i, i32 16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %old.i.i.i.i) #8
  %call.i.i.i.i.i.i.i30 = call zeroext i1 @__kasan_check_read(ptr noundef %skc_refcnt.i, i32 noundef 4) #8
  %48 = ptrtoint ptr %skc_refcnt.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load volatile i32, ptr %skc_refcnt.i, align 4
  br label %do.body.i.i.i.i

do.body.i.i.i.i:                                  ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.do.body.i.i.i.i_crit_edge, %if.then.i31
  %50 = phi i32 [ %49, %if.then.i31 ], [ %asmresult3.i.i.i.i.i.i.i, %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.do.body.i.i.i.i_crit_edge ]
  %51 = ptrtoint ptr %old.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %50, ptr %old.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %50)
  %tobool.not.i.i.i.i = icmp eq i32 %50, 0
  br i1 %tobool.not.i.i.i.i, label %do.body.i.i.i.i.if.end4.i.i.i.i_crit_edge, label %do.cond.i.i.i.i

do.body.i.i.i.i.if.end4.i.i.i.i_crit_edge:        ; preds = %do.body.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end4.i.i.i.i

do.cond.i.i.i.i:                                  ; preds = %do.body.i.i.i.i
  %add.i.i.i.i = add i32 %50, 1
  %call.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %skc_refcnt.i, i32 noundef 4) #8
  %call.i3.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %old.i.i.i.i, i32 noundef 4) #8
  %52 = ptrtoint ptr %old.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %old.i.i.i.i, align 4
  call void @llvm.prefetch.p0(ptr %skc_refcnt.i, i32 1, i32 3, i32 1) #8
  br label %do.body.i.i.i.i.i.i.i

do.body.i.i.i.i.i.i.i:                            ; preds = %do.body.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i.i_crit_edge, %do.cond.i.i.i.i
  %54 = call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %skc_refcnt.i, ptr %skc_refcnt.i, i32 %53, i32 %add.i.i.i.i, ptr elementtype(i32) %skc_refcnt.i) #8, !srcloc !20
  %asmresult.i.i.i.i.i.i.i32 = extractvalue { i32, i32 } %54, 0
  %tobool.not.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i32, 0
  br i1 %tobool.not.i.i.i.i.i.i.i, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i, label %do.body.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i.i_crit_edge

do.body.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i.i_crit_edge: ; preds = %do.body.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body.i.i.i.i.i.i.i

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i:     ; preds = %do.body.i.i.i.i.i.i.i
  %asmresult3.i.i.i.i.i.i.i = extractvalue { i32, i32 } %54, 1
  %cmp.not.i.i.i.i.i.i = icmp eq i32 %asmresult3.i.i.i.i.i.i.i, %53
  br i1 %cmp.not.i.i.i.i.i.i, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.if.end4.i.i.i.i_crit_edge, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.do.body.i.i.i.i_crit_edge, !prof !18

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.do.body.i.i.i.i_crit_edge: ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body.i.i.i.i

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.if.end4.i.i.i.i_crit_edge: ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end4.i.i.i.i

if.end4.i.i.i.i:                                  ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.if.end4.i.i.i.i_crit_edge, %do.body.i.i.i.i.if.end4.i.i.i.i_crit_edge
  %55 = ptrtoint ptr %old.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %old.i.i.i.i, align 4
  %add5.i.i.i.i = add i32 %56, 1
  %57 = or i32 %add5.i.i.i.i, %56
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %57)
  %.not.i.i.i.i = icmp sgt i32 %57, -1
  br i1 %.not.i.i.i.i, label %if.end4.i.i.i.i.refcount_inc_not_zero.exit.i_crit_edge, label %if.then10.i.i.i.i, !prof !18

if.end4.i.i.i.i.refcount_inc_not_zero.exit.i_crit_edge: ; preds = %if.end4.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %refcount_inc_not_zero.exit.i

if.then10.i.i.i.i:                                ; preds = %if.end4.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @refcount_warn_saturate(ptr noundef %skc_refcnt.i, i32 noundef 0) #8
  %58 = ptrtoint ptr %old.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %.pr.i = load i32, ptr %old.i.i.i.i, align 4
  br label %refcount_inc_not_zero.exit.i

refcount_inc_not_zero.exit.i:                     ; preds = %if.then10.i.i.i.i, %if.end4.i.i.i.i.refcount_inc_not_zero.exit.i_crit_edge
  %59 = phi i32 [ %56, %if.end4.i.i.i.i.refcount_inc_not_zero.exit.i_crit_edge ], [ %.pr.i, %if.then10.i.i.i.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %59)
  %tobool12.i.i.i.not.i = icmp eq i32 %59, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %old.i.i.i.i) #8
  br i1 %tobool12.i.i.i.not.i, label %refcount_inc_not_zero.exit.i.again.i.backedge_crit_edge, label %if.end.i33, !prof !17

refcount_inc_not_zero.exit.i.again.i.backedge_crit_edge: ; preds = %refcount_inc_not_zero.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %again.i.backedge

if.end.i33:                                       ; preds = %refcount_inc_not_zero.exit.i
  %sap13.i = getelementptr i8, ptr %node.090.i, i32 896
  %60 = ptrtoint ptr %sap13.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %sap13.i, align 4
  %cmp.not.i = icmp eq ptr %61, %sap
  br i1 %cmp.not.i, label %lor.rhs.i, label %if.end.i33.if.then23.i_crit_edge, !prof !18

if.end.i33.if.then23.i_crit_edge:                 ; preds = %if.end.i33
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then23.i

lor.rhs.i:                                        ; preds = %if.end.i33
  %62 = ptrtoint ptr %sk_type.i.i25 to i32
  call void @__asan_load2_noabort(i32 %62)
  %63 = load i16, ptr %sk_type.i.i25, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %63)
  %cmp.i59.i = icmp eq i16 %63, 2
  br i1 %cmp.i59.i, label %land.lhs.true.i62.i, label %lor.rhs.i.if.then23.i_crit_edge

lor.rhs.i.if.then23.i_crit_edge:                  ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then23.i

land.lhs.true.i62.i:                              ; preds = %lor.rhs.i
  %64 = ptrtoint ptr %laddr2.i.i27 to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %laddr2.i.i27, align 8
  call void @__sanitizer_cov_trace_cmp1(i8 %65, i8 %14)
  %cmp6.i61.i = icmp eq i8 %65, %14
  br i1 %cmp6.i61.i, label %llc_dgram_match.exit73.i, label %land.lhs.true.i62.i.if.then23.i_crit_edge

land.lhs.true.i62.i.if.then23.i_crit_edge:        ; preds = %land.lhs.true.i62.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then23.i

llc_dgram_match.exit73.i:                         ; preds = %land.lhs.true.i62.i
  %66 = ptrtoint ptr %mac.i57.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %mac.i57.i, align 4
  %xor.i.i65.i = xor i32 %67, %laddr.sroa.7.sroa.0.0.insert.insert
  %68 = ptrtoint ptr %add.ptr.i.i.i29 to i32
  call void @__asan_load2_noabort(i32 %68)
  %69 = load i16, ptr %add.ptr.i.i.i29, align 2
  %xor37.i.i68.i = xor i16 %69, %laddr.sroa.19.0
  %xor3.i.i69.i = zext i16 %xor37.i.i68.i to i32
  %or.i.i70.i = or i32 %xor.i.i65.i, %xor3.i.i69.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i.i70.i)
  %cmp.i.i71.not.i = icmp eq i32 %or.i.i70.i, 0
  br i1 %cmp.i.i71.not.i, label %llc_dgram_match.exit73.i.found.i_crit_edge, label %llc_dgram_match.exit73.i.if.then23.i_crit_edge, !prof !18

llc_dgram_match.exit73.i.if.then23.i_crit_edge:   ; preds = %llc_dgram_match.exit73.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then23.i

llc_dgram_match.exit73.i.found.i_crit_edge:       ; preds = %llc_dgram_match.exit73.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %found.i

if.then23.i:                                      ; preds = %llc_dgram_match.exit73.i.if.then23.i_crit_edge, %land.lhs.true.i62.i.if.then23.i_crit_edge, %lor.rhs.i.if.then23.i_crit_edge, %if.end.i33.if.then23.i_crit_edge
  %call.i.i.i.i.i.i56 = call zeroext i1 @__kasan_check_write(ptr noundef %skc_refcnt.i, i32 noundef 4) #8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !21
  call void @llvm.prefetch.p0(ptr %skc_refcnt.i, i32 1, i32 3, i32 1) #8
  %70 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %skc_refcnt.i, ptr %skc_refcnt.i, i32 1, ptr elementtype(i32) %skc_refcnt.i) #8, !srcloc !22
  %asmresult.i.i.i.i.i.i.i57 = extractvalue { i32, i32, i32 } %70, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i57)
  %cmp.i.i.i.i58 = icmp eq i32 %asmresult.i.i.i.i.i.i.i57, 1
  br i1 %cmp.i.i.i.i58, label %if.then.i62, label %if.end5.i.i.i.i60

if.end5.i.i.i.i60:                                ; preds = %if.then23.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i57)
  %.not.i.i.i.i59 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i57, 0
  br i1 %.not.i.i.i.i59, label %if.end5.i.i.i.i60.for.inc.i35_crit_edge, label %if.then10.i.i.i.i61, !prof !18

if.end5.i.i.i.i60.for.inc.i35_crit_edge:          ; preds = %if.end5.i.i.i.i60
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i35

if.then10.i.i.i.i61:                              ; preds = %if.end5.i.i.i.i60
  call void @__sanitizer_cov_trace_pc() #10
  call void @refcount_warn_saturate(ptr noundef %skc_refcnt.i, i32 noundef 3) #8
  br label %for.inc.i35

if.then.i62:                                      ; preds = %if.then23.i
  call void @__sanitizer_cov_trace_pc() #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !23
  call void @sk_free(ptr noundef %add.ptr.i24) #8
  br label %for.inc.i35

for.inc.i35:                                      ; preds = %if.then.i62, %if.then10.i.i.i.i61, %if.end5.i.i.i.i60.for.inc.i35_crit_edge, %llc_dgram_match.exit.i.for.inc.i35_crit_edge, %land.lhs.true.i56.i.for.inc.i35_crit_edge, %land.rhs.i.for.inc.i35_crit_edge
  %71 = ptrtoint ptr %node.090.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %node.0.i = load volatile ptr, ptr %node.090.i, align 4
  %72 = ptrtoint ptr %node.0.i to i32
  %and.i.i = and i32 %72, 1
  %tobool.not.i34 = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i34, label %for.inc.i35.land.rhs.i_crit_edge, label %for.end.i.loopexit

for.inc.i35.land.rhs.i_crit_edge:                 ; preds = %for.inc.i35
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.rhs.i

for.end.i.loopexit:                               ; preds = %for.inc.i35
  call void @__sanitizer_cov_trace_pc() #10
  %73 = ptrtoint ptr %node.0.i to i32
  br label %for.end.i

for.end.i:                                        ; preds = %for.end.i.loopexit, %again.i.for.end.i_crit_edge
  %.pre-phi.i = phi i32 [ %39, %again.i.for.end.i_crit_edge ], [ %73, %for.end.i.loopexit ]
  %shr.i.i = lshr i32 %.pre-phi.i, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %shr.i.i, i32 %shr.i.i.i21)
  %cmp32.not.i = icmp eq i32 %shr.i.i, %shr.i.i.i21
  br i1 %cmp32.not.i, label %for.end.i.found.i_crit_edge, label %for.end.i.again.i.backedge_crit_edge, !prof !18

for.end.i.again.i.backedge_crit_edge:             ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %again.i.backedge

for.end.i.found.i_crit_edge:                      ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %found.i

again.i.backedge:                                 ; preds = %for.end.i.again.i.backedge_crit_edge, %refcount_inc_not_zero.exit.i.again.i.backedge_crit_edge
  br label %again.i

found.i:                                          ; preds = %for.end.i.found.i_crit_edge, %llc_dgram_match.exit73.i.found.i_crit_edge
  %rc.0.i = phi ptr [ %add.ptr.i24, %llc_dgram_match.exit73.i.found.i_crit_edge ], [ null, %for.end.i.found.i_crit_edge ]
  %call.i74.i = call zeroext i1 @rcu_is_watching() #8
  br i1 %call.i74.i, label %found.i.llc_lookup_dgram.exit_crit_edge, label %land.lhs.true.i77.i

found.i.llc_lookup_dgram.exit_crit_edge:          ; preds = %found.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %llc_lookup_dgram.exit

land.lhs.true.i77.i:                              ; preds = %found.i
  %call1.i75.i = call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i75.i)
  %tobool.not.i76.i = icmp eq i32 %call1.i75.i, 0
  br i1 %tobool.not.i76.i, label %land.lhs.true.i77.i.llc_lookup_dgram.exit_crit_edge, label %land.lhs.true2.i79.i

land.lhs.true.i77.i.llc_lookup_dgram.exit_crit_edge: ; preds = %land.lhs.true.i77.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %llc_lookup_dgram.exit

land.lhs.true2.i79.i:                             ; preds = %land.lhs.true.i77.i
  %.b4.i78.i = load i1, ptr @rcu_read_unlock_bh.__warned, align 1
  br i1 %.b4.i78.i, label %land.lhs.true2.i79.i.llc_lookup_dgram.exit_crit_edge, label %if.then.i80.i

land.lhs.true2.i79.i.llc_lookup_dgram.exit_crit_edge: ; preds = %land.lhs.true2.i79.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %llc_lookup_dgram.exit

if.then.i80.i:                                    ; preds = %land.lhs.true2.i79.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @rcu_read_unlock_bh.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 761, ptr noundef nonnull @.str.2) #8
  br label %llc_lookup_dgram.exit

llc_lookup_dgram.exit:                            ; preds = %if.then.i80.i, %land.lhs.true2.i79.i.llc_lookup_dgram.exit_crit_edge, %land.lhs.true.i77.i.llc_lookup_dgram.exit_crit_edge, %found.i.llc_lookup_dgram.exit_crit_edge
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_bh_lock_map) #8
  call fastcc void @local_bh_enable() #8
  %tobool.not = icmp eq ptr %rc.0.i, null
  br i1 %tobool.not, label %if.else5, label %if.then4

if.then4:                                         ; preds = %llc_lookup_dgram.exit
  %type.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 2
  %74 = ptrtoint ptr %type.i to i32
  call void @__asan_store1_noabort(i32 %74)
  store i8 4, ptr %type.i, align 1
  %reason.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 3
  %75 = ptrtoint ptr %reason.i to i32
  call void @__asan_store1_noabort(i32 %75)
  store i8 0, ptr %reason.i, align 1
  %destructor.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 4, i32 0, i32 1
  %76 = ptrtoint ptr %destructor.i.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %destructor.i.i, align 4
  %tobool.not.i.i36 = icmp eq ptr %77, null
  br i1 %tobool.not.i.i36, label %do.body.i.i, label %if.then.i.i37

if.then.i.i37:                                    ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #10
  call void %77(ptr noundef %skb) #8
  %78 = ptrtoint ptr %destructor.i.i to i32
  call void @__asan_store4_noabort(i32 %78)
  store ptr null, ptr %destructor.i.i, align 4
  %79 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 1
  %80 = ptrtoint ptr %79 to i32
  call void @__asan_store4_noabort(i32 %80)
  store ptr null, ptr %79, align 4
  br label %skb_orphan.exit.i

do.body.i.i:                                      ; preds = %if.then4
  %81 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 1
  %82 = ptrtoint ptr %81 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %81, align 4
  %tobool3.not.i.i = icmp eq ptr %83, null
  br i1 %tobool3.not.i.i, label %do.body.i.i.skb_orphan.exit.i_crit_edge, label %do.body7.i.i, !prof !18

do.body.i.i.skb_orphan.exit.i_crit_edge:          ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %skb_orphan.exit.i

do.body7.i.i:                                     ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/skbuff.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2859, 0\0A.popsection", ""() #8, !srcloc !24
  unreachable

skb_orphan.exit.i:                                ; preds = %do.body.i.i.skb_orphan.exit.i_crit_edge, %if.then.i.i37
  %skc_refcnt.i.i38 = getelementptr inbounds %struct.sock_common, ptr %rc.0.i, i32 0, i32 19
  %call.i.i.i.i.i.i.i39 = call zeroext i1 @__kasan_check_write(ptr noundef %skc_refcnt.i.i38, i32 noundef 4) #8
  call void @llvm.prefetch.p0(ptr %skc_refcnt.i.i38, i32 1, i32 3, i32 1) #8
  %84 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %skc_refcnt.i.i38, ptr %skc_refcnt.i.i38, i32 1, ptr elementtype(i32) %skc_refcnt.i.i38) #8, !srcloc !16
  %asmresult.i.i.i.i.i.i.i40 = extractvalue { i32, i32, i32 } %84, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i40)
  %tobool1.not.i.i.i.i.i41 = icmp eq i32 %asmresult.i.i.i.i.i.i.i40, 0
  br i1 %tobool1.not.i.i.i.i.i41, label %skb_orphan.exit.i.if.end15.sink.split.i.i.i.i.i46_crit_edge, label %if.else.i.i.i.i.i44, !prof !17

skb_orphan.exit.i.if.end15.sink.split.i.i.i.i.i46_crit_edge: ; preds = %skb_orphan.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15.sink.split.i.i.i.i.i46

if.else.i.i.i.i.i44:                              ; preds = %skb_orphan.exit.i
  %add.i.i.i.i.i42 = add i32 %asmresult.i.i.i.i.i.i.i40, 1
  %85 = or i32 %add.i.i.i.i.i42, %asmresult.i.i.i.i.i.i.i40
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %85)
  %.not.i.i.i.i.i43 = icmp sgt i32 %85, -1
  br i1 %.not.i.i.i.i.i43, label %if.else.i.i.i.i.i44.llc_sap_rcv.exit_crit_edge, label %if.else.i.i.i.i.i44.if.end15.sink.split.i.i.i.i.i46_crit_edge, !prof !18

if.else.i.i.i.i.i44.if.end15.sink.split.i.i.i.i.i46_crit_edge: ; preds = %if.else.i.i.i.i.i44
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15.sink.split.i.i.i.i.i46

if.else.i.i.i.i.i44.llc_sap_rcv.exit_crit_edge:   ; preds = %if.else.i.i.i.i.i44
  call void @__sanitizer_cov_trace_pc() #10
  br label %llc_sap_rcv.exit

if.end15.sink.split.i.i.i.i.i46:                  ; preds = %if.else.i.i.i.i.i44.if.end15.sink.split.i.i.i.i.i46_crit_edge, %skb_orphan.exit.i.if.end15.sink.split.i.i.i.i.i46_crit_edge
  %.sink.i.i.i.i.i45 = phi i32 [ 2, %skb_orphan.exit.i.if.end15.sink.split.i.i.i.i.i46_crit_edge ], [ 1, %if.else.i.i.i.i.i44.if.end15.sink.split.i.i.i.i.i46_crit_edge ]
  call void @refcount_warn_saturate(ptr noundef %skc_refcnt.i.i38, i32 noundef %.sink.i.i.i.i.i45) #8
  br label %llc_sap_rcv.exit

llc_sap_rcv.exit:                                 ; preds = %if.end15.sink.split.i.i.i.i.i46, %if.else.i.i.i.i.i44.llc_sap_rcv.exit_crit_edge
  %86 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 1
  %87 = ptrtoint ptr %86 to i32
  call void @__asan_store4_noabort(i32 %87)
  store ptr %rc.0.i, ptr %86, align 4
  %88 = ptrtoint ptr %destructor.i.i to i32
  call void @__asan_store4_noabort(i32 %88)
  store ptr @sock_efree, ptr %destructor.i.i, align 4
  call fastcc void @llc_sap_state_process(ptr noundef %sap, ptr noundef %skb) #8
  %call.i.i.i.i.i.i49 = call zeroext i1 @__kasan_check_write(ptr noundef %skc_refcnt.i.i38, i32 noundef 4) #8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !21
  call void @llvm.prefetch.p0(ptr %skc_refcnt.i.i38, i32 1, i32 3, i32 1) #8
  %89 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %skc_refcnt.i.i38, ptr %skc_refcnt.i.i38, i32 1, ptr elementtype(i32) %skc_refcnt.i.i38) #8, !srcloc !22
  %asmresult.i.i.i.i.i.i.i50 = extractvalue { i32, i32, i32 } %89, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i50)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i50, 1
  br i1 %cmp.i.i.i.i, label %if.then.i53, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %llc_sap_rcv.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i50)
  %.not.i.i.i.i51 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i50, 0
  br i1 %.not.i.i.i.i51, label %if.end5.i.i.i.i.if.end6_crit_edge, label %if.then10.i.i.i.i52, !prof !18

if.end5.i.i.i.i.if.end6_crit_edge:                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end6

if.then10.i.i.i.i52:                              ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @refcount_warn_saturate(ptr noundef %skc_refcnt.i.i38, i32 noundef 3) #8
  br label %if.end6

if.then.i53:                                      ; preds = %llc_sap_rcv.exit
  call void @__sanitizer_cov_trace_pc() #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !23
  call void @sk_free(ptr noundef nonnull %rc.0.i) #8
  br label %if.end6

if.else5:                                         ; preds = %llc_lookup_dgram.exit
  call void @__sanitizer_cov_trace_pc() #10
  call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #8
  br label %if.end6

if.end6:                                          ; preds = %if.else5, %if.then.i53, %if.then10.i.i.i.i52, %if.end5.i.i.i.i.if.end6_crit_edge, %llc_sap_mcast.exit
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__alloc_skb(i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sock_queue_rcv_skb(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @llc_do_mcast(ptr noundef %sap, ptr noundef %skb, ptr nocapture noundef readonly %stack, i32 noundef %count) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count)
  %cmp20 = icmp sgt i32 %count, 0
  br i1 %cmp20, label %entry.for.body_crit_edge, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %i.021 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %call = tail call ptr @skb_clone(ptr noundef %skb, i32 noundef 2592) #8
  %tobool.not = icmp eq ptr %call, null
  %arrayidx = getelementptr ptr, ptr %stack, i32 %i.021
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %skc_refcnt.i = getelementptr inbounds %struct.sock_common, ptr %1, i32 0, i32 19
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %skc_refcnt.i, i32 noundef 4) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !21
  tail call void @llvm.prefetch.p0(ptr %skc_refcnt.i, i32 1, i32 3, i32 1) #8
  %2 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %skc_refcnt.i, ptr %skc_refcnt.i, i32 1, ptr elementtype(i32) %skc_refcnt.i) #8, !srcloc !22
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %2, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %if.then
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.for.inc_crit_edge, label %if.then10.i.i.i.i, !prof !18

if.end5.i.i.i.i.for.inc_crit_edge:                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @refcount_warn_saturate(ptr noundef %skc_refcnt.i, i32 noundef 3) #8
  br label %for.inc

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !23
  tail call void @sk_free(ptr noundef %1) #8
  br label %for.inc

if.end:                                           ; preds = %for.body
  %type.i = getelementptr inbounds %struct.sk_buff, ptr %call, i32 0, i32 3, i32 2
  %3 = ptrtoint ptr %type.i to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 4, ptr %type.i, align 1
  %reason.i = getelementptr inbounds %struct.sk_buff, ptr %call, i32 0, i32 3, i32 3
  %4 = ptrtoint ptr %reason.i to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %reason.i, align 1
  %destructor.i.i = getelementptr inbounds %struct.sk_buff, ptr %call, i32 0, i32 4, i32 0, i32 1
  %5 = ptrtoint ptr %destructor.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %destructor.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %6, null
  br i1 %tobool.not.i.i, label %do.body.i.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void %6(ptr noundef nonnull %call) #8
  %7 = ptrtoint ptr %destructor.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr null, ptr %destructor.i.i, align 4
  %8 = getelementptr inbounds %struct.sk_buff, ptr %call, i32 0, i32 1
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr null, ptr %8, align 4
  br label %skb_orphan.exit.i

do.body.i.i:                                      ; preds = %if.end
  %10 = getelementptr inbounds %struct.sk_buff, ptr %call, i32 0, i32 1
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %10, align 4
  %tobool3.not.i.i = icmp eq ptr %12, null
  br i1 %tobool3.not.i.i, label %do.body.i.i.skb_orphan.exit.i_crit_edge, label %do.body7.i.i, !prof !18

do.body.i.i.skb_orphan.exit.i_crit_edge:          ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %skb_orphan.exit.i

do.body7.i.i:                                     ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/skbuff.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2859, 0\0A.popsection", ""() #8, !srcloc !24
  unreachable

skb_orphan.exit.i:                                ; preds = %do.body.i.i.skb_orphan.exit.i_crit_edge, %if.then.i.i
  %skc_refcnt.i.i = getelementptr inbounds %struct.sock_common, ptr %1, i32 0, i32 19
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %skc_refcnt.i.i, i32 noundef 4) #8
  tail call void @llvm.prefetch.p0(ptr %skc_refcnt.i.i, i32 1, i32 3, i32 1) #8
  %13 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %skc_refcnt.i.i, ptr %skc_refcnt.i.i, i32 1, ptr elementtype(i32) %skc_refcnt.i.i) #8, !srcloc !16
  %asmresult.i.i.i.i.i.i.i10 = extractvalue { i32, i32, i32 } %13, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i10)
  %tobool1.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i10, 0
  br i1 %tobool1.not.i.i.i.i.i, label %skb_orphan.exit.i.if.end15.sink.split.i.i.i.i.i_crit_edge, label %if.else.i.i.i.i.i, !prof !17

skb_orphan.exit.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %skb_orphan.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i:                                ; preds = %skb_orphan.exit.i
  %add.i.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i.i10, 1
  %14 = or i32 %add.i.i.i.i.i, %asmresult.i.i.i.i.i.i.i10
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %14)
  %.not.i.i.i.i.i = icmp sgt i32 %14, -1
  br i1 %.not.i.i.i.i.i, label %if.else.i.i.i.i.i.llc_sap_rcv.exit_crit_edge, label %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, !prof !18

if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i.llc_sap_rcv.exit_crit_edge:     ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %llc_sap_rcv.exit

if.end15.sink.split.i.i.i.i.i:                    ; preds = %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, %skb_orphan.exit.i.if.end15.sink.split.i.i.i.i.i_crit_edge
  %.sink.i.i.i.i.i = phi i32 [ 2, %skb_orphan.exit.i.if.end15.sink.split.i.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %skc_refcnt.i.i, i32 noundef %.sink.i.i.i.i.i) #8
  br label %llc_sap_rcv.exit

llc_sap_rcv.exit:                                 ; preds = %if.end15.sink.split.i.i.i.i.i, %if.else.i.i.i.i.i.llc_sap_rcv.exit_crit_edge
  %15 = getelementptr inbounds %struct.sk_buff, ptr %call, i32 0, i32 1
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %1, ptr %15, align 4
  %17 = ptrtoint ptr %destructor.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr @sock_efree, ptr %destructor.i.i, align 4
  tail call fastcc void @llc_sap_state_process(ptr noundef %sap, ptr noundef nonnull %call) #8
  %18 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %arrayidx, align 4
  %skc_refcnt.i11 = getelementptr inbounds %struct.sock_common, ptr %19, i32 0, i32 19
  %call.i.i.i.i.i.i12 = tail call zeroext i1 @__kasan_check_write(ptr noundef %skc_refcnt.i11, i32 noundef 4) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !21
  tail call void @llvm.prefetch.p0(ptr %skc_refcnt.i11, i32 1, i32 3, i32 1) #8
  %20 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %skc_refcnt.i11, ptr %skc_refcnt.i11, i32 1, ptr elementtype(i32) %skc_refcnt.i11) #8, !srcloc !22
  %asmresult.i.i.i.i.i.i.i13 = extractvalue { i32, i32, i32 } %20, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i13)
  %cmp.i.i.i.i14 = icmp eq i32 %asmresult.i.i.i.i.i.i.i13, 1
  br i1 %cmp.i.i.i.i14, label %if.then.i18, label %if.end5.i.i.i.i16

if.end5.i.i.i.i16:                                ; preds = %llc_sap_rcv.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i13)
  %.not.i.i.i.i15 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i13, 0
  br i1 %.not.i.i.i.i15, label %if.end5.i.i.i.i16.for.inc_crit_edge, label %if.then10.i.i.i.i17, !prof !18

if.end5.i.i.i.i16.for.inc_crit_edge:              ; preds = %if.end5.i.i.i.i16
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.then10.i.i.i.i17:                              ; preds = %if.end5.i.i.i.i16
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @refcount_warn_saturate(ptr noundef %skc_refcnt.i11, i32 noundef 3) #8
  br label %for.inc

if.then.i18:                                      ; preds = %llc_sap_rcv.exit
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !23
  tail call void @sk_free(ptr noundef %19) #8
  br label %for.inc

for.inc:                                          ; preds = %if.then.i18, %if.then10.i.i.i.i17, %if.end5.i.i.i.i16.for.inc_crit_edge, %if.then.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.021, 1
  %exitcond.not = icmp eq i32 %inc, %count
  br i1 %exitcond.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_clone(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @local_bh_disable() #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @__local_bh_disable_ip(i32 noundef ptrtoint (ptr blockaddress(@local_bh_disable, %__here) to i32), i32 noundef 512) #8
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @lock_acquire(ptr noundef nonnull @rcu_bh_lock_map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__local_bh_disable_ip(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @lock_release(ptr noundef nonnull @rcu_bh_lock_map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #8
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @local_bh_enable() #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @__local_bh_enable_ip(i32 noundef ptrtoint (ptr blockaddress(@local_bh_enable, %__here) to i32), i32 noundef 512) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__local_bh_enable_ip(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @sock_efree(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @sk_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.fshl.i32(i32, i32, i32) #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

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

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 3)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 3)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #6 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }

!llvm.asan.globals = !{!0, !2, !3, !4, !6}
!llvm.module.flags = !{!7, !8, !9, !10, !11, !12, !13, !14}
!llvm.ident = !{!15}

!0 = distinct !{null, !1, !"__warned", i1 false, i1 false}
!1 = !{!"../include/linux/rcupdate.h", i32 749, i32 2}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!4 = distinct !{null, !5, !"__warned", i1 false, i1 false}
!5 = !{!"../include/linux/rcupdate.h", i32 760, i32 2}
!6 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!7 = !{i32 1, !"wchar_size", i32 2}
!8 = !{i32 1, !"min_enum_size", i32 4}
!9 = !{i32 8, !"branch-target-enforcement", i32 0}
!10 = !{i32 8, !"sign-return-address", i32 0}
!11 = !{i32 8, !"sign-return-address-all", i32 0}
!12 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!13 = !{i32 7, !"uwtable", i32 1}
!14 = !{i32 7, !"frame-pointer", i32 2}
!15 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!16 = !{i64 2148280357, i64 2148280389, i64 2148280418, i64 2148280452, i64 2148280483, i64 2148280506}
!17 = !{!"branch_weights", i32 1, i32 2000}
!18 = !{!"branch_weights", i32 2000, i32 1}
!19 = !{i64 2156942693}
!20 = !{i64 762563, i64 762587, i64 762608, i64 762625, i64 762642}
!21 = !{i64 2148368358}
!22 = !{i64 2148282822, i64 2148282854, i64 2148282883, i64 2148282917, i64 2148282948, i64 2148282971}
!23 = !{i64 2149306176}
!24 = !{i64 2154608954, i64 2154609442, i64 2154608991, i64 2154609047, i64 2154609081, i64 2154609105, i64 2154609146, i64 2154609167, i64 2154609195, i64 2154609229}
