; ModuleID = '/llk/IR_all_yes/net/netfilter/nf_conntrack_broadcast.c_pt.bc'
source_filename = "../net/netfilter/nf_conntrack_broadcast.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+nf_conntrack_broadcast_help\22, \22a\22\09"
module asm "\09.weak\09__crc_nf_conntrack_broadcast_help\09\09\09\09"
module asm "\09.long\09__crc_nf_conntrack_broadcast_help\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_nf_conntrack_broadcast_help:\09\09\09\09\09"
module asm "\09.asciz \09\22nf_conntrack_broadcast_help\22\09\09\09\09\09"
module asm "__kstrtabns_nf_conntrack_broadcast_help:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.sk_buff = type { %union.anon, %union.anon.134, %union.anon.135, [48 x i8], %union.anon.136, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.138, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon = type { %struct.anon }
%struct.anon = type { ptr, ptr, %union.anon.0 }
%union.anon.0 = type { ptr }
%union.anon.134 = type { ptr }
%union.anon.135 = type { i64 }
%union.anon.136 = type { %struct.anon.137 }
%struct.anon.137 = type { i32, ptr }
%union.anon.138 = type { %struct.anon.139 }
%struct.anon.139 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.140, i32, i32, i32, i16, i16, %union.anon.142, i32, %union.anon.143, %union.anon.144, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.140 = type { i32 }
%union.anon.142 = type { i32 }
%union.anon.143 = type { i32 }
%union.anon.144 = type { i16 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.nf_conn = type { %struct.nf_conntrack, %struct.spinlock, i32, %struct.nf_conntrack_zone, [2 x %struct.nf_conntrack_tuple_hash], i32, i16, %struct.possible_net_t, %struct.hlist_node, %struct.anon.169, ptr, i32, i32, ptr, %union.nf_conntrack_proto }
%struct.nf_conntrack = type { %struct.refcount_struct }
%struct.spinlock = type { %union.anon.5 }
%union.anon.5 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.6 }
%union.anon.6 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.nf_conntrack_zone = type { i16, i8, i8 }
%struct.nf_conntrack_tuple_hash = type { %struct.hlist_nulls_node, %struct.nf_conntrack_tuple }
%struct.hlist_nulls_node = type { ptr, ptr }
%struct.nf_conntrack_tuple = type { %struct.nf_conntrack_man, %struct.anon.161 }
%struct.nf_conntrack_man = type { %union.nf_inet_addr, %union.nf_conntrack_man_proto, i16 }
%union.nf_inet_addr = type { [4 x i32] }
%union.nf_conntrack_man_proto = type { i16 }
%struct.anon.161 = type { %union.nf_inet_addr, %union.anon.162, i8, i8 }
%union.anon.162 = type { i16 }
%struct.possible_net_t = type { ptr }
%struct.hlist_node = type { ptr, ptr }
%struct.anon.169 = type {}
%union.nf_conntrack_proto = type { %struct.nf_ct_dccp, [48 x i8] }
%struct.nf_ct_dccp = type { [2 x i8], i8, i8, i8, i64 }
%struct.sock_common = type { %union.anon.107, %union.anon.109, %union.anon.110, i16, i8, i8, i32, %union.anon.112, ptr, %struct.possible_net_t, %struct.in6_addr, %struct.in6_addr, %struct.atomic64_t, %union.anon.115, [0 x i32], %union.anon.116, i16, i16, %union.anon.117, %struct.refcount_struct, [0 x i32], %union.anon.118 }
%union.anon.107 = type { i64 }
%union.anon.109 = type { i32 }
%union.anon.110 = type { i32 }
%union.anon.112 = type { %struct.hlist_node }
%struct.in6_addr = type { %union.anon.26 }
%union.anon.26 = type { [4 x i32] }
%struct.atomic64_t = type { i64 }
%union.anon.115 = type { i32 }
%union.anon.116 = type { %struct.hlist_node }
%union.anon.117 = type { i32 }
%union.anon.118 = type { i32 }
%struct.rtable = type { %struct.dst_entry, i32, i32, i16, i8, i8, i32, i8, %union.anon.100, i32, %struct.list_head, ptr }
%struct.dst_entry = type { ptr, ptr, i32, i32, ptr, ptr, ptr, i16, i16, i16, i16, i32, i32, ptr, %struct.callback_head, i16, i16, i32, %struct.atomic_t, ptr }
%struct.callback_head = type { ptr, ptr }
%union.anon.100 = type { %struct.in6_addr }
%struct.list_head = type { ptr, ptr }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.1, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.133, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon.1 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.hlist_head = type { ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%union.anon.133 = type { ptr }
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
%struct.in_device = type { ptr, ptr, %struct.refcount_struct, i32, ptr, ptr, ptr, i32, %struct.spinlock, ptr, i32, i32, i32, i32, i32, i8, i8, i32, %struct.timer_list, %struct.timer_list, ptr, %struct.ipv4_devconf, %struct.callback_head }
%struct.ipv4_devconf = type { ptr, [33 x i32], [2 x i32] }
%struct.iphdr = type { i8, i8, i16, i16, i16, i8, i8, i16, i32, i32 }
%struct.in_ifaddr = type { %struct.hlist_node, ptr, ptr, %struct.callback_head, i32, i32, i32, i32, i32, i8, i8, i32, [16 x i8], i32, i32, i32, i32 }
%struct.nf_conntrack_expect = type { %struct.hlist_node, %struct.hlist_node, %struct.nf_conntrack_tuple, %struct.nf_conntrack_tuple_mask, ptr, ptr, ptr, %struct.timer_list, %struct.refcount_struct, i32, i32, %union.nf_inet_addr, %union.nf_conntrack_man_proto, i32, %struct.callback_head }
%struct.nf_conntrack_tuple_mask = type { %struct.anon.170 }
%struct.anon.170 = type { %union.nf_inet_addr, %union.nf_conntrack_man_proto }
%struct.nf_conntrack_helper = type { %struct.hlist_node, [16 x i8], %struct.refcount_struct, ptr, ptr, %struct.nf_conntrack_tuple, ptr, ptr, ptr, ptr, i32, i32, i32, i16, [16 x i8] }

@nf_conntrack_broadcast_help.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"net/netfilter/nf_conntrack_broadcast.c\00", [57 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@nf_conntrack_broadcast_help.__warned.2 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__kstrtab_nf_conntrack_broadcast_help = external dso_local constant [0 x i8], align 1
@__kstrtabns_nf_conntrack_broadcast_help = external dso_local constant [0 x i8], align 1
@__ksymtab_nf_conntrack_broadcast_help = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @nf_conntrack_broadcast_help to i32), ptr @__kstrtab_nf_conntrack_broadcast_help, ptr @__kstrtabns_nf_conntrack_broadcast_help }, section "___ksymtab_gpl+nf_conntrack_broadcast_help", align 4
@__UNIQUE_ID_file589 = internal constant [65 x i8] c"nf_conntrack_broadcast.file=net/netfilter/nf_conntrack_broadcast\00", section ".modinfo", align 1
@__UNIQUE_ID_license590 = internal constant [35 x i8] c"nf_conntrack_broadcast.license=GPL\00", section ".modinfo", align 1
@.str.3 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"include/linux/skbuff.h\00", [41 x i8] zeroinitializer }, align 32
@__in_dev_get_rcu.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.4 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"include/linux/inetdevice.h\00", [37 x i8] zeroinitializer }, align 32
@___asan_gen_.9 = private constant [42 x i8] c"../net/netfilter/nf_conntrack_broadcast.c\00", align 1
@___asan_gen_.10 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.9, i32 42, i32 3 }
@___asan_gen_.12 = private unnamed_addr constant [26 x i8] c"../include/linux/skbuff.h\00", align 1
@___asan_gen_.13 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.12, i32 1011, i32 2 }
@___asan_gen_.14 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.15 = private unnamed_addr constant [30 x i8] c"../include/linux/inetdevice.h\00", align 1
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.15, i32 232, i32 9 }
@llvm.compiler.used = appending global [7 x ptr] [ptr @__UNIQUE_ID_file589, ptr @__UNIQUE_ID_license590, ptr @__ksymtab_nf_conntrack_broadcast_help, ptr @.str, ptr @.str.1, ptr @.str.3, ptr @.str.4], section "llvm.metadata"
@0 = internal global [4 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nf_conntrack_broadcast_help(ptr noundef %skb, ptr noundef %ct, i32 noundef %ctinfo, i32 noundef %timeout) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
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
  %4 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 4
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %4, align 8
  %and.i.i = and i32 %6, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %entry.skb_rtable.exit_crit_edge, label %land.lhs.true.i.i

entry.skb_rtable.exit_crit_edge:                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %skb_rtable.exit

land.lhs.true.i.i:                                ; preds = %entry
  %call.i.i = tail call i32 @rcu_read_lock_held() #2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool1.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool1.not.i.i, label %land.rhs.i.i, label %land.lhs.true.i.i.skb_rtable.exit_crit_edge

land.lhs.true.i.i.skb_rtable.exit_crit_edge:      ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %skb_rtable.exit

land.rhs.i.i:                                     ; preds = %land.lhs.true.i.i
  %call2.i.i = tail call i32 @rcu_read_lock_bh_held() #2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i)
  %tobool3.not.i.i = icmp eq i32 %call2.i.i, 0
  br i1 %tobool3.not.i.i, label %do.end.i.i, label %land.rhs.i.i.skb_rtable.exit_crit_edge, !prof !24

land.rhs.i.i.skb_rtable.exit_crit_edge:           ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %skb_rtable.exit

do.end.i.i:                                       ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 1013, i32 noundef 9, ptr noundef null) #2
  br label %skb_rtable.exit

skb_rtable.exit:                                  ; preds = %do.end.i.i, %land.rhs.i.i.skb_rtable.exit_crit_edge, %land.lhs.true.i.i.skb_rtable.exit_crit_edge, %entry.skb_rtable.exit_crit_edge
  %7 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %4, align 8
  %and25.i.i = and i32 %8, -2
  %9 = inttoptr i32 %and25.i.i to ptr
  %ext.i.i.i = getelementptr inbounds %struct.nf_conn, ptr %ct, i32 0, i32 13
  %10 = ptrtoint ptr %ext.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ext.i.i.i, align 8
  %tobool.not.i.i.i = icmp eq ptr %11, null
  br i1 %tobool.not.i.i.i, label %skb_rtable.exit.nfct_help.exit_crit_edge, label %nf_ct_ext_exist.exit.i.i

skb_rtable.exit.nfct_help.exit_crit_edge:         ; preds = %skb_rtable.exit
  call void @__sanitizer_cov_trace_pc() #4
  br label %nfct_help.exit

nf_ct_ext_exist.exit.i.i:                         ; preds = %skb_rtable.exit
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %11, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool.i.i.not.i.i = icmp eq i8 %13, 0
  br i1 %tobool.i.i.not.i.i, label %nf_ct_ext_exist.exit.i.i.nfct_help.exit_crit_edge, label %if.end.i.i

nf_ct_ext_exist.exit.i.i.nfct_help.exit_crit_edge: ; preds = %nf_ct_ext_exist.exit.i.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %nfct_help.exit

if.end.i.i:                                       ; preds = %nf_ct_ext_exist.exit.i.i
  call void @__sanitizer_cov_trace_pc() #4
  %conv.i.i107 = zext i8 %13 to i32
  %add.ptr.i.i108 = getelementptr i8, ptr %11, i32 %conv.i.i107
  br label %nfct_help.exit

nfct_help.exit:                                   ; preds = %if.end.i.i, %nf_ct_ext_exist.exit.i.i.nfct_help.exit_crit_edge, %skb_rtable.exit.nfct_help.exit_crit_edge
  %retval.0.i.i = phi ptr [ %add.ptr.i.i108, %if.end.i.i ], [ null, %nf_ct_ext_exist.exit.i.i.nfct_help.exit_crit_edge ], [ null, %skb_rtable.exit.nfct_help.exit_crit_edge ]
  %14 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 1
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %14, align 4
  %cmp = icmp eq ptr %16, null
  br i1 %cmp, label %nfct_help.exit.out_crit_edge, label %lor.lhs.false

nfct_help.exit.out_crit_edge:                     ; preds = %nfct_help.exit
  call void @__sanitizer_cov_trace_pc() #4
  br label %out

lor.lhs.false:                                    ; preds = %nfct_help.exit
  %ct_net.i = getelementptr inbounds %struct.nf_conn, ptr %ct, i32 0, i32 7
  %17 = ptrtoint ptr %ct_net.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %ct_net.i, align 4
  %skc_net.i = getelementptr inbounds %struct.sock_common, ptr %16, i32 0, i32 9
  %19 = ptrtoint ptr %skc_net.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %skc_net.i, align 4
  %cmp.i = icmp ne ptr %18, %20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and25.i.i)
  %cmp6 = icmp eq i32 %and25.i.i, 0
  %or.cond = select i1 %cmp.i, i1 true, i1 %cmp6
  br i1 %or.cond, label %lor.lhs.false.out_crit_edge, label %lor.lhs.false7

lor.lhs.false.out_crit_edge:                      ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #4
  br label %out

lor.lhs.false7:                                   ; preds = %lor.lhs.false
  %rt_flags = getelementptr inbounds %struct.rtable, ptr %9, i32 0, i32 2
  %21 = ptrtoint ptr %rt_flags to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %rt_flags, align 4
  %and = and i32 %22, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool8.not = icmp eq i32 %and, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %ctinfo)
  %cmp11 = icmp ugt i32 %ctinfo, 2
  %or.cond106 = or i1 %cmp11, %tobool8.not
  br i1 %or.cond106, label %lor.lhs.false7.out_crit_edge, label %if.end14

lor.lhs.false7.out_crit_edge:                     ; preds = %lor.lhs.false7
  call void @__sanitizer_cov_trace_pc() #4
  br label %out

if.end14:                                         ; preds = %lor.lhs.false7
  %23 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %9, align 4
  %ip_ptr.i = getelementptr inbounds %struct.net_device, ptr %24, i32 0, i32 78
  %25 = ptrtoint ptr %ip_ptr.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load volatile ptr, ptr %ip_ptr.i, align 32
  %call.i = tail call i32 @rcu_read_lock_held() #2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i, label %if.end14.__in_dev_get_rcu.exit_crit_edge

if.end14.__in_dev_get_rcu.exit_crit_edge:         ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #4
  br label %__in_dev_get_rcu.exit

land.lhs.true.i:                                  ; preds = %if.end14
  %call2.i = tail call i32 @debug_lockdep_rcu_enabled() #2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %land.lhs.true.i.__in_dev_get_rcu.exit_crit_edge, label %land.lhs.true4.i

land.lhs.true.i.__in_dev_get_rcu.exit_crit_edge:  ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %__in_dev_get_rcu.exit

land.lhs.true4.i:                                 ; preds = %land.lhs.true.i
  %.b9.i = load i1, ptr @__in_dev_get_rcu.__warned, align 1
  br i1 %.b9.i, label %land.lhs.true4.i.__in_dev_get_rcu.exit_crit_edge, label %if.then.i

land.lhs.true4.i.__in_dev_get_rcu.exit_crit_edge: ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %__in_dev_get_rcu.exit

if.then.i:                                        ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #4
  store i1 true, ptr @__in_dev_get_rcu.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.4, i32 noundef 232, ptr noundef nonnull @.str.1) #2
  br label %__in_dev_get_rcu.exit

__in_dev_get_rcu.exit:                            ; preds = %if.then.i, %land.lhs.true4.i.__in_dev_get_rcu.exit_crit_edge, %land.lhs.true.i.__in_dev_get_rcu.exit_crit_edge, %if.end14.__in_dev_get_rcu.exit_crit_edge
  %cmp16.not = icmp eq ptr %26, null
  br i1 %cmp16.not, label %__in_dev_get_rcu.exit.out_crit_edge, label %if.then17

__in_dev_get_rcu.exit.out_crit_edge:              ; preds = %__in_dev_get_rcu.exit
  call void @__sanitizer_cov_trace_pc() #4
  br label %out

if.then17:                                        ; preds = %__in_dev_get_rcu.exit
  %ifa_list = getelementptr inbounds %struct.in_device, ptr %26, i32 0, i32 4
  %27 = ptrtoint ptr %ifa_list to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load volatile ptr, ptr %ifa_list, align 4
  %call19 = tail call i32 @rcu_read_lock_held() #2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %land.lhs.true, label %if.then17.do.end28_crit_edge

if.then17.do.end28_crit_edge:                     ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #4
  br label %do.end28

land.lhs.true:                                    ; preds = %if.then17
  %call21 = tail call i32 @debug_lockdep_rcu_enabled() #2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %tobool22.not = icmp eq i32 %call21, 0
  br i1 %tobool22.not, label %land.lhs.true.do.end28_crit_edge, label %land.lhs.true23

land.lhs.true.do.end28_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #4
  br label %do.end28

land.lhs.true23:                                  ; preds = %land.lhs.true
  %.b105 = load i1, ptr @nf_conntrack_broadcast_help.__warned, align 1
  br i1 %.b105, label %land.lhs.true23.do.end28_crit_edge, label %if.then25

land.lhs.true23.do.end28_crit_edge:               ; preds = %land.lhs.true23
  call void @__sanitizer_cov_trace_pc() #4
  br label %do.end28

if.then25:                                        ; preds = %land.lhs.true23
  call void @__sanitizer_cov_trace_pc() #4
  store i1 true, ptr @nf_conntrack_broadcast_help.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 42, ptr noundef nonnull @.str.1) #2
  br label %do.end28

do.end28:                                         ; preds = %if.then25, %land.lhs.true23.do.end28_crit_edge, %land.lhs.true.do.end28_crit_edge, %if.then17.do.end28_crit_edge
  %tobool30.not113 = icmp eq ptr %28, null
  br i1 %tobool30.not113, label %do.end28.out_crit_edge, label %for.body.lr.ph

do.end28.out_crit_edge:                           ; preds = %do.end28
  call void @__sanitizer_cov_trace_pc() #4
  br label %out

for.body.lr.ph:                                   ; preds = %do.end28
  %daddr = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i, i32 0, i32 9
  br label %for.body

for.body:                                         ; preds = %do.end53.for.body_crit_edge, %for.body.lr.ph
  %ifa.0114 = phi ptr [ %28, %for.body.lr.ph ], [ %36, %do.end53.for.body_crit_edge ]
  %ifa_flags = getelementptr inbounds %struct.in_ifaddr, ptr %ifa.0114, i32 0, i32 11
  %29 = ptrtoint ptr %ifa_flags to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %ifa_flags, align 4
  %and31 = and i32 %30, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and31)
  %tobool32.not = icmp eq i32 %and31, 0
  br i1 %tobool32.not, label %if.end34, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.inc

if.end34:                                         ; preds = %for.body
  %ifa_broadcast = getelementptr inbounds %struct.in_ifaddr, ptr %ifa.0114, i32 0, i32 8
  %31 = ptrtoint ptr %ifa_broadcast to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %ifa_broadcast, align 4
  %33 = ptrtoint ptr %daddr to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %daddr, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %32, i32 %34)
  %cmp35 = icmp eq i32 %32, %34
  br i1 %cmp35, label %if.end55, label %if.end34.for.inc_crit_edge

if.end34.for.inc_crit_edge:                       ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.inc

for.inc:                                          ; preds = %if.end34.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %ifa_next = getelementptr inbounds %struct.in_ifaddr, ptr %ifa.0114, i32 0, i32 1
  %35 = ptrtoint ptr %ifa_next to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load volatile ptr, ptr %ifa_next, align 4
  %call43 = tail call i32 @rcu_read_lock_held() #2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call43)
  %tobool44.not = icmp eq i32 %call43, 0
  br i1 %tobool44.not, label %land.lhs.true45, label %for.inc.do.end53_crit_edge

for.inc.do.end53_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #4
  br label %do.end53

land.lhs.true45:                                  ; preds = %for.inc
  %call46 = tail call i32 @debug_lockdep_rcu_enabled() #2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call46)
  %tobool47.not = icmp eq i32 %call46, 0
  br i1 %tobool47.not, label %land.lhs.true45.do.end53_crit_edge, label %land.lhs.true48

land.lhs.true45.do.end53_crit_edge:               ; preds = %land.lhs.true45
  call void @__sanitizer_cov_trace_pc() #4
  br label %do.end53

land.lhs.true48:                                  ; preds = %land.lhs.true45
  %.b103104 = load i1, ptr @nf_conntrack_broadcast_help.__warned.2, align 1
  br i1 %.b103104, label %land.lhs.true48.do.end53_crit_edge, label %if.then50

land.lhs.true48.do.end53_crit_edge:               ; preds = %land.lhs.true48
  call void @__sanitizer_cov_trace_pc() #4
  br label %do.end53

if.then50:                                        ; preds = %land.lhs.true48
  call void @__sanitizer_cov_trace_pc() #4
  store i1 true, ptr @nf_conntrack_broadcast_help.__warned.2, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 42, ptr noundef nonnull @.str.1) #2
  br label %do.end53

do.end53:                                         ; preds = %if.then50, %land.lhs.true48.do.end53_crit_edge, %land.lhs.true45.do.end53_crit_edge, %for.inc.do.end53_crit_edge
  %tobool30.not = icmp eq ptr %36, null
  br i1 %tobool30.not, label %do.end53.out_crit_edge, label %do.end53.for.body_crit_edge

do.end53.for.body_crit_edge:                      ; preds = %do.end53
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.body

do.end53.out_crit_edge:                           ; preds = %do.end53
  call void @__sanitizer_cov_trace_pc() #4
  br label %out

if.end55:                                         ; preds = %if.end34
  %ifa_mask = getelementptr inbounds %struct.in_ifaddr, ptr %ifa.0114, i32 0, i32 6
  %37 = ptrtoint ptr %ifa_mask to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %ifa_mask, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %cmp56 = icmp eq i32 %38, 0
  br i1 %cmp56, label %if.end55.out_crit_edge, label %if.end58

if.end55.out_crit_edge:                           ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #4
  br label %out

if.end58:                                         ; preds = %if.end55
  %call59 = tail call ptr @nf_ct_expect_alloc(ptr noundef %ct) #2
  %cmp60 = icmp eq ptr %call59, null
  br i1 %cmp60, label %if.end58.out_crit_edge, label %if.end62

if.end58.out_crit_edge:                           ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #4
  br label %out

if.end62:                                         ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #4
  %tuple = getelementptr inbounds %struct.nf_conntrack_expect, ptr %call59, i32 0, i32 2
  %tuple63 = getelementptr %struct.nf_conn, ptr %ct, i32 0, i32 4, i32 1, i32 1
  %39 = call ptr @memcpy(ptr %tuple, ptr %tuple63, i32 40)
  %40 = ptrtoint ptr %retval.0.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %retval.0.i.i, align 8
  %u = getelementptr inbounds %struct.nf_conntrack_helper, ptr %41, i32 0, i32 5, i32 0, i32 1
  %42 = ptrtoint ptr %u to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %u, align 4
  %u67 = getelementptr inbounds %struct.nf_conntrack_expect, ptr %call59, i32 0, i32 2, i32 0, i32 1
  %44 = ptrtoint ptr %u67 to i32
  call void @__asan_store2_noabort(i32 %44)
  store i16 %43, ptr %u67, align 4
  %mask69 = getelementptr inbounds %struct.nf_conntrack_expect, ptr %call59, i32 0, i32 3
  %45 = ptrtoint ptr %mask69 to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %38, ptr %mask69, align 4
  %u73 = getelementptr inbounds %struct.nf_conntrack_expect, ptr %call59, i32 0, i32 3, i32 0, i32 1
  %46 = ptrtoint ptr %u73 to i32
  call void @__asan_store2_noabort(i32 %46)
  store i16 -1, ptr %u73, align 4
  %expectfn = getelementptr inbounds %struct.nf_conntrack_expect, ptr %call59, i32 0, i32 4
  %47 = ptrtoint ptr %expectfn to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr null, ptr %expectfn, align 4
  %flags = getelementptr inbounds %struct.nf_conntrack_expect, ptr %call59, i32 0, i32 9
  %48 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 1, ptr %flags, align 4
  %class = getelementptr inbounds %struct.nf_conntrack_expect, ptr %call59, i32 0, i32 10
  %49 = ptrtoint ptr %class to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 0, ptr %class, align 4
  %helper75 = getelementptr inbounds %struct.nf_conntrack_expect, ptr %call59, i32 0, i32 5
  %50 = ptrtoint ptr %helper75 to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr null, ptr %helper75, align 4
  %call.i109 = tail call i32 @nf_ct_expect_related_report(ptr noundef nonnull %call59, i32 noundef 0, i32 noundef 0, i32 noundef 0) #2
  tail call void @nf_ct_expect_put(ptr noundef nonnull %call59) #2
  %mul = mul i32 %timeout, 100
  tail call void @__nf_ct_refresh_acct(ptr noundef %ct, i32 noundef 0, ptr noundef %skb, i32 noundef %mul, i1 noundef zeroext false) #2
  br label %out

out:                                              ; preds = %if.end62, %if.end58.out_crit_edge, %if.end55.out_crit_edge, %do.end53.out_crit_edge, %do.end28.out_crit_edge, %__in_dev_get_rcu.exit.out_crit_edge, %lor.lhs.false7.out_crit_edge, %lor.lhs.false.out_crit_edge, %nfct_help.exit.out_crit_edge
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_held() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nf_ct_expect_alloc(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @nf_ct_expect_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_bh_held() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nf_ct_expect_related_report(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__nf_ct_refresh_acct(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #2

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #3 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 4)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #3 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 4)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind }
attributes #3 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #4 = { nomerge }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !7, !9, !10, !12, !14}
!llvm.module.flags = !{!15, !16, !17, !18, !19, !20, !21, !22}
!llvm.ident = !{!23}

!0 = distinct !{null, !1, !"__warned", i1 false, i1 false}
!1 = !{!"../net/netfilter/nf_conntrack_broadcast.c", i32 42, i32 3}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!4 = distinct !{null, !1, !"__warned", i1 false, i1 false}
!5 = !{ptr @__ksymtab_nf_conntrack_broadcast_help, !6, !"__ksymtab_nf_conntrack_broadcast_help", i1 false, i1 false}
!6 = !{!"../net/netfilter/nf_conntrack_broadcast.c", i32 78, i32 1}
!7 = !{ptr @__UNIQUE_ID_file589, !8, !"__UNIQUE_ID_file589", i1 false, i1 false}
!8 = !{!"../net/netfilter/nf_conntrack_broadcast.c", i32 80, i32 1}
!9 = !{ptr @__UNIQUE_ID_license590, !8, !"__UNIQUE_ID_license590", i1 false, i1 false}
!10 = !{ptr @.str.3, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../include/linux/skbuff.h", i32 1011, i32 2}
!12 = distinct !{null, !13, !"__warned", i1 false, i1 false}
!13 = !{!"../include/linux/inetdevice.h", i32 232, i32 9}
!14 = !{ptr @.str.4, !13, !"<string literal>", i1 false, i1 false}
!15 = !{i32 1, !"wchar_size", i32 2}
!16 = !{i32 1, !"min_enum_size", i32 4}
!17 = !{i32 8, !"branch-target-enforcement", i32 0}
!18 = !{i32 8, !"sign-return-address", i32 0}
!19 = !{i32 8, !"sign-return-address-all", i32 0}
!20 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!21 = !{i32 7, !"uwtable", i32 1}
!22 = !{i32 7, !"frame-pointer", i32 2}
!23 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!24 = !{!"branch_weights", i32 1, i32 2000}
