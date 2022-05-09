; ModuleID = '/llk/IR_all_yes/net/netfilter/nf_nat_redirect.c_pt.bc'
source_filename = "../net/netfilter/nf_nat_redirect.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+nf_nat_redirect_ipv4\22, \22a\22\09"
module asm "\09.weak\09__crc_nf_nat_redirect_ipv4\09\09\09\09"
module asm "\09.long\09__crc_nf_nat_redirect_ipv4\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_nf_nat_redirect_ipv4:\09\09\09\09\09"
module asm "\09.asciz \09\22nf_nat_redirect_ipv4\22\09\09\09\09\09"
module asm "__kstrtabns_nf_nat_redirect_ipv4:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+nf_nat_redirect_ipv6\22, \22a\22\09"
module asm "\09.weak\09__crc_nf_nat_redirect_ipv6\09\09\09\09"
module asm "\09.long\09__crc_nf_nat_redirect_ipv6\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_nf_nat_redirect_ipv6:\09\09\09\09\09"
module asm "\09.asciz \09\22nf_nat_redirect_ipv6\22\09\09\09\09\09"
module asm "__kstrtabns_nf_nat_redirect_ipv6:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.nf_nat_range2 = type { i32, %union.nf_inet_addr, %union.nf_inet_addr, %union.nf_conntrack_man_proto, %union.nf_conntrack_man_proto, %union.nf_conntrack_man_proto }
%union.nf_inet_addr = type { [4 x i32] }
%union.nf_conntrack_man_proto = type { i16 }
%struct.sk_buff = type { %union.anon, %union.anon.178, %union.anon.179, [48 x i8], %union.anon.180, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.182, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon = type { %struct.anon }
%struct.anon = type { ptr, ptr, %union.anon.0 }
%union.anon.0 = type { ptr }
%union.anon.178 = type { ptr }
%union.anon.179 = type { i64 }
%union.anon.180 = type { %struct.anon.181 }
%struct.anon.181 = type { i32, ptr }
%union.anon.182 = type { %struct.anon.183 }
%struct.anon.183 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.184, i32, i32, i32, i16, i16, %union.anon.186, i32, %union.anon.187, %union.anon.188, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.184 = type { i32 }
%union.anon.186 = type { i32 }
%union.anon.187 = type { i32 }
%union.anon.188 = type { i16 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.1, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.177, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon.1 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.hlist_node = type { ptr, ptr }
%struct.spinlock = type { %union.anon.5 }
%union.anon.5 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.6 }
%union.anon.6 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.hlist_head = type { ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.possible_net_t = type { ptr }
%union.anon.177 = type { ptr }
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
%struct.in_device = type { ptr, ptr, %struct.refcount_struct, i32, ptr, ptr, ptr, i32, %struct.spinlock, ptr, i32, i32, i32, i32, i32, i8, i8, i32, %struct.timer_list, %struct.timer_list, ptr, %struct.ipv4_devconf, %struct.callback_head }
%struct.ipv4_devconf = type { ptr, [33 x i32], [2 x i32] }
%struct.callback_head = type { ptr, ptr }
%struct.in_ifaddr = type { %struct.hlist_node, ptr, ptr, %struct.callback_head, i32, i32, i32, i32, i32, i8, i8, i32, [16 x i8], i32, i32, i32, i32 }
%struct.nf_nat_ipv4_multi_range_compat = type { i32, [1 x %struct.nf_nat_ipv4_range] }
%struct.nf_nat_ipv4_range = type { i32, i32, i32, %union.nf_conntrack_man_proto, %union.nf_conntrack_man_proto }
%struct.inet6_dev = type { ptr, ptr, %struct.list_head, ptr, ptr, i8, i8, i8, i8, i32, i32, i32, i32, %struct.delayed_work, %struct.delayed_work, %struct.delayed_work, %struct.delayed_work, %struct.delayed_work, %struct.sk_buff_head, %struct.sk_buff_head, %struct.spinlock, %struct.spinlock, %struct.mutex, ptr, %struct.rwlock_t, %struct.refcount_struct, i32, i32, i32, %struct.list_head, %struct.in6_addr, ptr, %struct.ipv6_devconf, %struct.ipv6_devstat, %struct.timer_list, i32, i8, i32, %struct.callback_head, i32 }
%struct.sk_buff_head = type { %union.anon.96, i32, %struct.spinlock }
%union.anon.96 = type { %struct.anon.97 }
%struct.anon.97 = type { ptr, ptr }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.in6_addr = type { %union.anon.28 }
%union.anon.28 = type { [4 x i32] }
%struct.ipv6_devconf = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.ipv6_stable_secret, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, ptr }
%struct.ipv6_stable_secret = type { i8, %struct.in6_addr }
%struct.ipv6_devstat = type { ptr, ptr, ptr, ptr }

@.str = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"net/netfilter/nf_nat_redirect.c\00", [32 x i8] zeroinitializer }, align 32
@nf_nat_redirect_ipv4.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.1 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@__kstrtab_nf_nat_redirect_ipv4 = external dso_local constant [0 x i8], align 1
@__kstrtabns_nf_nat_redirect_ipv4 = external dso_local constant [0 x i8], align 1
@__ksymtab_nf_nat_redirect_ipv4 = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @nf_nat_redirect_ipv4 to i32), ptr @__kstrtab_nf_nat_redirect_ipv4, ptr @__kstrtabns_nf_nat_redirect_ipv4 }, section "___ksymtab_gpl+nf_nat_redirect_ipv4", align 4
@__kstrtab_nf_nat_redirect_ipv6 = external dso_local constant [0 x i8], align 1
@__kstrtabns_nf_nat_redirect_ipv6 = external dso_local constant [0 x i8], align 1
@__ksymtab_nf_nat_redirect_ipv6 = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @nf_nat_redirect_ipv6 to i32), ptr @__kstrtab_nf_nat_redirect_ipv6, ptr @__kstrtabns_nf_nat_redirect_ipv6 }, section "___ksymtab_gpl+nf_nat_redirect_ipv6", align 4
@__in_dev_get_rcu.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.2 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"include/linux/inetdevice.h\00", [37 x i8] zeroinitializer }, align 32
@__in6_dev_get.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.4 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"include/net/addrconf.h\00", [41 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 3]
@___asan_gen_.7 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.9, i32 37, i32 2 }
@___asan_gen_.9 = private constant [35 x i8] c"../net/netfilter/nf_nat_redirect.c\00", align 1
@___asan_gen_.10 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.9, i32 55, i32 10 }
@___asan_gen_.12 = private unnamed_addr constant [30 x i8] c"../include/linux/inetdevice.h\00", align 1
@___asan_gen_.13 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.12, i32 232, i32 9 }
@___asan_gen_.14 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.15 = private unnamed_addr constant [26 x i8] c"../include/net/addrconf.h\00", align 1
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.15, i32 313, i32 9 }
@llvm.compiler.used = appending global [6 x ptr] [ptr @__ksymtab_nf_nat_redirect_ipv4, ptr @__ksymtab_nf_nat_redirect_ipv6, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4], section "llvm.metadata"
@0 = internal global [4 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nf_nat_redirect_ipv4(ptr nocapture noundef readonly %skb, ptr nocapture noundef readonly %mr, i32 noundef %hooknum) #0 align 64 {
entry:
  %newrange = alloca %struct.nf_nat_range2, align 4
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %newrange) #3
  %0 = call ptr @memset(ptr %newrange, i32 255, i32 44)
  %1 = zext i32 %hooknum to i64
  call void @__sanitizer_cov_trace_switch(i64 %1, ptr @__sancov_gen_cov_switch_values)
  switch i32 %hooknum, label %do.end [
    i32 3, label %entry.if.end_crit_edge
    i32 0, label %entry.if.end_crit_edge115
  ]

entry.if.end_crit_edge115:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 38, i32 noundef 9, ptr noundef null) #3
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge, %entry.if.end_crit_edge115
  %_nfct.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 5
  %2 = ptrtoint ptr %_nfct.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %_nfct.i.i, align 8
  %and1.i = and i32 %3, -8
  %4 = inttoptr i32 %and1.i to ptr
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool21.not = icmp eq i32 %and1.i, 0
  br i1 %tobool21.not, label %if.end.do.end43_crit_edge, label %land.rhs22

if.end.do.end43_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.end43

land.rhs22:                                       ; preds = %if.end
  %and.i = and i32 %3, 7
  %5 = add nsw i32 %and.i, -3
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2, i32 %5)
  %6 = icmp ult i32 %5, -2
  br i1 %6, label %land.rhs22.do.end43_crit_edge, label %land.rhs22.if.end49_crit_edge, !prof !26

land.rhs22.if.end49_crit_edge:                    ; preds = %land.rhs22
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end49

land.rhs22.do.end43_crit_edge:                    ; preds = %land.rhs22
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.end43

do.end43:                                         ; preds = %land.rhs22.do.end43_crit_edge, %if.end.do.end43_crit_edge
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 41, i32 noundef 9, ptr noundef null) #3
  br label %if.end49

if.end49:                                         ; preds = %do.end43, %land.rhs22.if.end49_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %hooknum)
  %cmp57 = icmp eq i32 %hooknum, 3
  br i1 %cmp57, label %if.end49.if.end85_crit_edge, label %if.else

if.end49.if.end85_crit_edge:                      ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end85

if.else:                                          ; preds = %if.end49
  %7 = getelementptr inbounds %struct.anon, ptr %skb, i32 0, i32 2
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 8
  %ip_ptr.i = getelementptr inbounds %struct.net_device, ptr %9, i32 0, i32 78
  %10 = ptrtoint ptr %ip_ptr.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile ptr, ptr %ip_ptr.i, align 32
  %call.i = tail call i32 @rcu_read_lock_held() #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i, label %if.else.__in_dev_get_rcu.exit_crit_edge

if.else.__in_dev_get_rcu.exit_crit_edge:          ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #5
  br label %__in_dev_get_rcu.exit

land.lhs.true.i:                                  ; preds = %if.else
  %call2.i = tail call i32 @debug_lockdep_rcu_enabled() #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %land.lhs.true.i.__in_dev_get_rcu.exit_crit_edge, label %land.lhs.true4.i

land.lhs.true.i.__in_dev_get_rcu.exit_crit_edge:  ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %__in_dev_get_rcu.exit

land.lhs.true4.i:                                 ; preds = %land.lhs.true.i
  %.b9.i = load i1, ptr @__in_dev_get_rcu.__warned, align 1
  br i1 %.b9.i, label %land.lhs.true4.i.__in_dev_get_rcu.exit_crit_edge, label %if.then.i

land.lhs.true4.i.__in_dev_get_rcu.exit_crit_edge: ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %__in_dev_get_rcu.exit

if.then.i:                                        ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #5
  store i1 true, ptr @__in_dev_get_rcu.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 232, ptr noundef nonnull @.str.1) #3
  br label %__in_dev_get_rcu.exit

__in_dev_get_rcu.exit:                            ; preds = %if.then.i, %land.lhs.true4.i.__in_dev_get_rcu.exit_crit_edge, %land.lhs.true.i.__in_dev_get_rcu.exit_crit_edge, %if.else.__in_dev_get_rcu.exit_crit_edge
  %tobool60.not = icmp eq ptr %11, null
  br i1 %tobool60.not, label %__in_dev_get_rcu.exit.cleanup94_crit_edge, label %if.then61

__in_dev_get_rcu.exit.cleanup94_crit_edge:        ; preds = %__in_dev_get_rcu.exit
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup94

if.then61:                                        ; preds = %__in_dev_get_rcu.exit
  %ifa_list = getelementptr inbounds %struct.in_device, ptr %11, i32 0, i32 4
  %12 = ptrtoint ptr %ifa_list to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile ptr, ptr %ifa_list, align 4
  %call67 = tail call i32 @rcu_read_lock_held() #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call67)
  %tobool68.not = icmp eq i32 %call67, 0
  br i1 %tobool68.not, label %land.lhs.true, label %if.then61.do.end76_crit_edge

if.then61.do.end76_crit_edge:                     ; preds = %if.then61
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.end76

land.lhs.true:                                    ; preds = %if.then61
  %call69 = tail call i32 @debug_lockdep_rcu_enabled() #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call69)
  %tobool70.not = icmp eq i32 %call69, 0
  br i1 %tobool70.not, label %land.lhs.true.do.end76_crit_edge, label %land.lhs.true71

land.lhs.true.do.end76_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.end76

land.lhs.true71:                                  ; preds = %land.lhs.true
  %.b111 = load i1, ptr @nf_nat_redirect_ipv4.__warned, align 1
  br i1 %.b111, label %land.lhs.true71.do.end76_crit_edge, label %if.then73

land.lhs.true71.do.end76_crit_edge:               ; preds = %land.lhs.true71
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.end76

if.then73:                                        ; preds = %land.lhs.true71
  call void @__sanitizer_cov_trace_pc() #5
  store i1 true, ptr @nf_nat_redirect_ipv4.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 55, ptr noundef nonnull @.str.1) #3
  br label %do.end76

do.end76:                                         ; preds = %if.then73, %land.lhs.true71.do.end76_crit_edge, %land.lhs.true.do.end76_crit_edge, %if.then61.do.end76_crit_edge
  %tobool78.not = icmp eq ptr %13, null
  br i1 %tobool78.not, label %do.end76.cleanup94_crit_edge, label %if.end81

do.end76.cleanup94_crit_edge:                     ; preds = %do.end76
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup94

if.end81:                                         ; preds = %do.end76
  %ifa_local = getelementptr inbounds %struct.in_ifaddr, ptr %13, i32 0, i32 4
  %14 = ptrtoint ptr %ifa_local to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %ifa_local, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool82.not = icmp eq i32 %15, 0
  br i1 %tobool82.not, label %if.end81.cleanup94_crit_edge, label %if.end81.if.end85_crit_edge

if.end81.if.end85_crit_edge:                      ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end85

if.end81.cleanup94_crit_edge:                     ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup94

if.end85:                                         ; preds = %if.end81.if.end85_crit_edge, %if.end49.if.end85_crit_edge
  %newdst.2 = phi i32 [ %15, %if.end81.if.end85_crit_edge ], [ 2130706433, %if.end49.if.end85_crit_edge ]
  %min_addr = getelementptr inbounds %struct.nf_nat_range2, ptr %newrange, i32 0, i32 1
  %max_addr = getelementptr inbounds %struct.nf_nat_range2, ptr %newrange, i32 0, i32 2
  %range = getelementptr inbounds %struct.nf_nat_ipv4_multi_range_compat, ptr %mr, i32 0, i32 1
  %16 = getelementptr inbounds %struct.nf_nat_range2, ptr %newrange, i32 0, i32 1, i32 0, i32 1
  %17 = call ptr @memset(ptr %16, i32 0, i32 28)
  %18 = ptrtoint ptr %range to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %range, align 4
  %or = or i32 %19, 1
  %20 = ptrtoint ptr %newrange to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %or, ptr %newrange, align 4
  %21 = ptrtoint ptr %min_addr to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %newdst.2, ptr %min_addr, align 4
  %22 = ptrtoint ptr %max_addr to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %newdst.2, ptr %max_addr, align 4
  %min_proto = getelementptr inbounds %struct.nf_nat_range2, ptr %newrange, i32 0, i32 3
  %min = getelementptr inbounds %struct.nf_nat_ipv4_multi_range_compat, ptr %mr, i32 0, i32 1, i32 0, i32 3
  %23 = ptrtoint ptr %min to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %min, align 4
  %25 = ptrtoint ptr %min_proto to i32
  call void @__asan_store2_noabort(i32 %25)
  store i16 %24, ptr %min_proto, align 4
  %max_proto = getelementptr inbounds %struct.nf_nat_range2, ptr %newrange, i32 0, i32 4
  %max = getelementptr inbounds %struct.nf_nat_ipv4_multi_range_compat, ptr %mr, i32 0, i32 1, i32 0, i32 4
  %26 = ptrtoint ptr %max to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %max, align 2
  %28 = ptrtoint ptr %max_proto to i32
  call void @__asan_store2_noabort(i32 %28)
  store i16 %27, ptr %max_proto, align 2
  %call93 = call i32 @nf_nat_setup_info(ptr noundef %4, ptr noundef nonnull %newrange, i32 noundef 1) #3
  br label %cleanup94

cleanup94:                                        ; preds = %if.end85, %if.end81.cleanup94_crit_edge, %do.end76.cleanup94_crit_edge, %__in_dev_get_rcu.exit.cleanup94_crit_edge
  %retval.1 = phi i32 [ %call93, %if.end85 ], [ 0, %if.end81.cleanup94_crit_edge ], [ 0, %__in_dev_get_rcu.exit.cleanup94_crit_edge ], [ 0, %do.end76.cleanup94_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %newrange) #3
  ret i32 %retval.1
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nf_nat_setup_info(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nf_nat_redirect_ipv6(ptr nocapture noundef readonly %skb, ptr nocapture noundef readonly %range, i32 noundef %hooknum) #0 align 64 {
entry:
  %newrange = alloca %struct.nf_nat_range2, align 4
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %newrange) #3
  %0 = getelementptr inbounds i8, ptr %newrange, i32 40
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %0, align 4, !annotation !27
  %_nfct.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 5
  %2 = ptrtoint ptr %_nfct.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %_nfct.i.i, align 8
  %and1.i = and i32 %3, -8
  %4 = inttoptr i32 %and1.i to ptr
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %hooknum)
  %cmp = icmp eq i32 %hooknum, 3
  br i1 %cmp, label %entry.if.end17_crit_edge, label %if.else

entry.if.end17_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end17

if.else:                                          ; preds = %entry
  %5 = getelementptr inbounds %struct.anon, ptr %skb, i32 0, i32 2
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 8
  %ip6_ptr.i = getelementptr inbounds %struct.net_device, ptr %7, i32 0, i32 80
  %8 = ptrtoint ptr %ip6_ptr.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile ptr, ptr %ip6_ptr.i, align 8
  %call.i = tail call zeroext i1 @lockdep_rtnl_is_held() #3
  br i1 %call.i, label %if.else.__in6_dev_get.exit_crit_edge, label %lor.lhs.false.i

if.else.__in6_dev_get.exit_crit_edge:             ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #5
  br label %__in6_dev_get.exit

lor.lhs.false.i:                                  ; preds = %if.else
  %call2.i = tail call i32 @rcu_read_lock_held() #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i, label %lor.lhs.false.i.__in6_dev_get.exit_crit_edge

lor.lhs.false.i.__in6_dev_get.exit_crit_edge:     ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %__in6_dev_get.exit

land.lhs.true.i:                                  ; preds = %lor.lhs.false.i
  %call3.i = tail call i32 @debug_lockdep_rcu_enabled() #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool4.not.i = icmp eq i32 %call3.i, 0
  br i1 %tobool4.not.i, label %land.lhs.true.i.__in6_dev_get.exit_crit_edge, label %land.lhs.true5.i

land.lhs.true.i.__in6_dev_get.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %__in6_dev_get.exit

land.lhs.true5.i:                                 ; preds = %land.lhs.true.i
  %.b10.i = load i1, ptr @__in6_dev_get.__warned, align 1
  br i1 %.b10.i, label %land.lhs.true5.i.__in6_dev_get.exit_crit_edge, label %if.then.i

land.lhs.true5.i.__in6_dev_get.exit_crit_edge:    ; preds = %land.lhs.true5.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %__in6_dev_get.exit

if.then.i:                                        ; preds = %land.lhs.true5.i
  call void @__sanitizer_cov_trace_pc() #5
  store i1 true, ptr @__in6_dev_get.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.4, i32 noundef 313, ptr noundef nonnull @.str.1) #3
  br label %__in6_dev_get.exit

__in6_dev_get.exit:                               ; preds = %if.then.i, %land.lhs.true5.i.__in6_dev_get.exit_crit_edge, %land.lhs.true.i.__in6_dev_get.exit_crit_edge, %lor.lhs.false.i.__in6_dev_get.exit_crit_edge, %if.else.__in6_dev_get.exit_crit_edge
  %cmp2.not = icmp eq ptr %9, null
  br i1 %cmp2.not, label %__in6_dev_get.exit.cleanup22_crit_edge, label %if.then3

__in6_dev_get.exit.cleanup22_crit_edge:           ; preds = %__in6_dev_get.exit
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup22

if.then3:                                         ; preds = %__in6_dev_get.exit
  %lock = getelementptr inbounds %struct.inet6_dev, ptr %9, i32 0, i32 24
  tail call void @_raw_read_lock_bh(ptr noundef %lock) #3
  %addr_list = getelementptr inbounds %struct.inet6_dev, ptr %9, i32 0, i32 2
  %10 = ptrtoint ptr %addr_list to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %addr_list, align 4
  %cmp5.not = icmp eq ptr %11, %addr_list
  br i1 %cmp5.not, label %if.end, label %if.end.thread51

if.end.thread51:                                  ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #5
  %add.ptr = getelementptr i8, ptr %11, i32 -228
  %12 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %12)
  %newdst.sroa.0.0.copyload31 = load i32, ptr %add.ptr, align 8
  %newdst.sroa.7.0.addr6.sroa_idx = getelementptr i8, ptr %11, i32 -224
  %13 = ptrtoint ptr %newdst.sroa.7.0.addr6.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %13)
  %newdst.sroa.7.0.copyload34 = load i32, ptr %newdst.sroa.7.0.addr6.sroa_idx, align 4
  %newdst.sroa.8.0.addr6.sroa_idx = getelementptr i8, ptr %11, i32 -220
  %14 = ptrtoint ptr %newdst.sroa.8.0.addr6.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %14)
  %newdst.sroa.8.0.copyload37 = load i32, ptr %newdst.sroa.8.0.addr6.sroa_idx, align 8
  %newdst.sroa.9.0.addr6.sroa_idx = getelementptr i8, ptr %11, i32 -216
  %15 = ptrtoint ptr %newdst.sroa.9.0.addr6.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %15)
  %newdst.sroa.9.0.copyload40 = load i32, ptr %newdst.sroa.9.0.addr6.sroa_idx, align 4
  tail call void @_raw_read_unlock_bh(ptr noundef %lock) #3
  br label %if.end17

if.end:                                           ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #5
  tail call void @_raw_read_unlock_bh(ptr noundef %lock) #3
  br label %cleanup22

if.end17:                                         ; preds = %if.end.thread51, %entry.if.end17_crit_edge
  %newdst.sroa.8.2 = phi i32 [ 0, %entry.if.end17_crit_edge ], [ %newdst.sroa.8.0.copyload37, %if.end.thread51 ]
  %newdst.sroa.7.2 = phi i32 [ 0, %entry.if.end17_crit_edge ], [ %newdst.sroa.7.0.copyload34, %if.end.thread51 ]
  %newdst.sroa.0.2 = phi i32 [ 0, %entry.if.end17_crit_edge ], [ %newdst.sroa.0.0.copyload31, %if.end.thread51 ]
  %newdst.sroa.9.2 = phi i32 [ 1, %entry.if.end17_crit_edge ], [ %newdst.sroa.9.0.copyload40, %if.end.thread51 ]
  %16 = ptrtoint ptr %range to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %range, align 4
  %or = or i32 %17, 1
  %18 = ptrtoint ptr %newrange to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %or, ptr %newrange, align 4
  %min_addr = getelementptr inbounds %struct.nf_nat_range2, ptr %newrange, i32 0, i32 1
  %19 = ptrtoint ptr %min_addr to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %newdst.sroa.0.2, ptr %min_addr, align 4
  %newdst.sroa.7.0.min_addr.sroa_idx = getelementptr inbounds %struct.nf_nat_range2, ptr %newrange, i32 0, i32 1, i32 0, i32 1
  %20 = ptrtoint ptr %newdst.sroa.7.0.min_addr.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %newdst.sroa.7.2, ptr %newdst.sroa.7.0.min_addr.sroa_idx, align 4
  %newdst.sroa.8.0.min_addr.sroa_idx = getelementptr inbounds %struct.nf_nat_range2, ptr %newrange, i32 0, i32 1, i32 0, i32 2
  %21 = ptrtoint ptr %newdst.sroa.8.0.min_addr.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %newdst.sroa.8.2, ptr %newdst.sroa.8.0.min_addr.sroa_idx, align 4
  %newdst.sroa.9.0.min_addr.sroa_idx = getelementptr inbounds %struct.nf_nat_range2, ptr %newrange, i32 0, i32 1, i32 0, i32 3
  %22 = ptrtoint ptr %newdst.sroa.9.0.min_addr.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %newdst.sroa.9.2, ptr %newdst.sroa.9.0.min_addr.sroa_idx, align 4
  %max_addr = getelementptr inbounds %struct.nf_nat_range2, ptr %newrange, i32 0, i32 2
  %23 = ptrtoint ptr %max_addr to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %newdst.sroa.0.2, ptr %max_addr, align 4
  %newdst.sroa.7.0.max_addr.sroa_idx = getelementptr inbounds %struct.nf_nat_range2, ptr %newrange, i32 0, i32 2, i32 0, i32 1
  %24 = ptrtoint ptr %newdst.sroa.7.0.max_addr.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %newdst.sroa.7.2, ptr %newdst.sroa.7.0.max_addr.sroa_idx, align 4
  %newdst.sroa.8.0.max_addr.sroa_idx = getelementptr inbounds %struct.nf_nat_range2, ptr %newrange, i32 0, i32 2, i32 0, i32 2
  %25 = ptrtoint ptr %newdst.sroa.8.0.max_addr.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %newdst.sroa.8.2, ptr %newdst.sroa.8.0.max_addr.sroa_idx, align 4
  %newdst.sroa.9.0.max_addr.sroa_idx = getelementptr inbounds %struct.nf_nat_range2, ptr %newrange, i32 0, i32 2, i32 0, i32 3
  %26 = ptrtoint ptr %newdst.sroa.9.0.max_addr.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %newdst.sroa.9.2, ptr %newdst.sroa.9.0.max_addr.sroa_idx, align 4
  %min_proto = getelementptr inbounds %struct.nf_nat_range2, ptr %newrange, i32 0, i32 3
  %min_proto19 = getelementptr inbounds %struct.nf_nat_range2, ptr %range, i32 0, i32 3
  %27 = ptrtoint ptr %min_proto19 to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %min_proto19, align 4
  %29 = ptrtoint ptr %min_proto to i32
  call void @__asan_store2_noabort(i32 %29)
  store i16 %28, ptr %min_proto, align 4
  %max_proto = getelementptr inbounds %struct.nf_nat_range2, ptr %newrange, i32 0, i32 4
  %max_proto20 = getelementptr inbounds %struct.nf_nat_range2, ptr %range, i32 0, i32 4
  %30 = ptrtoint ptr %max_proto20 to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %max_proto20, align 2
  %32 = ptrtoint ptr %max_proto to i32
  call void @__asan_store2_noabort(i32 %32)
  store i16 %31, ptr %max_proto, align 2
  %call21 = call i32 @nf_nat_setup_info(ptr noundef %4, ptr noundef nonnull %newrange, i32 noundef 1) #3
  br label %cleanup22

cleanup22:                                        ; preds = %if.end17, %if.end, %__in6_dev_get.exit.cleanup22_crit_edge
  %retval.1 = phi i32 [ %call21, %if.end17 ], [ 0, %if.end ], [ 0, %__in6_dev_get.exit.cleanup22_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %newrange) #3
  ret i32 %retval.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_read_lock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_read_unlock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @lockdep_rtnl_is_held() local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #4 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 4)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #4 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 4)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind }
attributes #4 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #5 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !5, !7, !9, !11, !12, !14, !16}
!llvm.module.flags = !{!17, !18, !19, !20, !21, !22, !23, !24}
!llvm.ident = !{!25}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../net/netfilter/nf_nat_redirect.c", i32 37, i32 2}
!2 = distinct !{null, !3, !"__warned", i1 false, i1 false}
!3 = !{!"../net/netfilter/nf_nat_redirect.c", i32 55, i32 10}
!4 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @__ksymtab_nf_nat_redirect_ipv4, !6, !"__ksymtab_nf_nat_redirect_ipv4", i1 false, i1 false}
!6 = !{!"../net/netfilter/nf_nat_redirect.c", i32 76, i32 1}
!7 = !{ptr @__ksymtab_nf_nat_redirect_ipv6, !8, !"__ksymtab_nf_nat_redirect_ipv6", i1 false, i1 false}
!8 = !{!"../net/netfilter/nf_nat_redirect.c", i32 120, i32 1}
!9 = distinct !{null, !10, !"__warned", i1 false, i1 false}
!10 = !{!"../include/linux/inetdevice.h", i32 232, i32 9}
!11 = !{ptr @.str.2, !10, !"<string literal>", i1 false, i1 false}
!12 = distinct !{null, !13, !"loopback_addr", i1 false, i1 false}
!13 = !{!"../net/netfilter/nf_nat_redirect.c", i32 78, i32 30}
!14 = distinct !{null, !15, !"__warned", i1 false, i1 false}
!15 = !{!"../include/net/addrconf.h", i32 313, i32 9}
!16 = !{ptr @.str.4, !15, !"<string literal>", i1 false, i1 false}
!17 = !{i32 1, !"wchar_size", i32 2}
!18 = !{i32 1, !"min_enum_size", i32 4}
!19 = !{i32 8, !"branch-target-enforcement", i32 0}
!20 = !{i32 8, !"sign-return-address", i32 0}
!21 = !{i32 8, !"sign-return-address-all", i32 0}
!22 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!23 = !{i32 7, !"uwtable", i32 1}
!24 = !{i32 7, !"frame-pointer", i32 2}
!25 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!26 = !{!"branch_weights", i32 1, i32 2000}
!27 = !{!"auto-init"}
