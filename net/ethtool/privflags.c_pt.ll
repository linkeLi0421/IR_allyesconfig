; ModuleID = '/llk/IR_all_yes/net/ethtool/privflags.c_pt.bc'
source_filename = "../net/ethtool/privflags.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.nla_policy = type { i8, i8, i16, %union.anon }
%union.anon = type { i32 }
%struct.ethnl_request_ops = type { i8, i8, i16, i32, i32, i8, ptr, ptr, ptr, ptr, ptr }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.0, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.142, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon.0 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.atomic_t = type { i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.hlist_node = type { ptr, ptr }
%struct.spinlock = type { %union.anon.14 }
%union.anon.14 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.15 }
%union.anon.15 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.hlist_head = type { ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.possible_net_t = type { ptr }
%union.anon.142 = type { ptr }
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
%struct.ethtool_ops = type { i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.privflags_reply_data = type { %struct.ethnl_reply_data, ptr, i32, i32 }
%struct.ethnl_reply_data = type { ptr }
%struct.ethnl_req_info = type { ptr, ptr, i32 }
%struct.genl_info = type { i32, i32, ptr, ptr, ptr, ptr, %struct.possible_net_t, [2 x ptr], ptr }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }

@ethnl_header_policy = external dso_local constant [4 x %struct.nla_policy], align 4
@ethnl_privflags_get_policy = dso_local constant { <{ %struct.nla_policy, { i8, i8, i16, { ptr } } }>, [16 x i8] } { <{ %struct.nla_policy, { i8, i8, i16, { ptr } } }> <{ %struct.nla_policy zeroinitializer, { i8, i8, i16, { ptr } } { i8 8, i8 0, i16 3, { ptr } { ptr @ethnl_header_policy } } }>, [16 x i8] zeroinitializer }, align 32
@ethnl_privflags_request_ops = dso_local constant { %struct.ethnl_request_ops, [60 x i8] } { %struct.ethnl_request_ops { i8 13, i8 14, i16 1, i32 12, i32 16, i8 0, ptr null, ptr @privflags_prepare_data, ptr @privflags_reply_size, ptr @privflags_fill_reply, ptr @privflags_cleanup_data }, [60 x i8] zeroinitializer }, align 32
@ethnl_privflags_set_policy = dso_local constant { <{ %struct.nla_policy, { i8, i8, i16, { ptr } }, %struct.nla_policy }>, [40 x i8] } { <{ %struct.nla_policy, { i8, i8, i16, { ptr } }, %struct.nla_policy }> <{ %struct.nla_policy zeroinitializer, { i8, i8, i16, { ptr } } { i8 8, i8 0, i16 3, { ptr } { ptr @ethnl_header_policy } }, %struct.nla_policy { i8 8, i8 0, i16 0, %union.anon zeroinitializer } }>, [40 x i8] zeroinitializer }, align 32
@ethnl_get_priv_flags_info.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"net/ethtool/privflags.c\00", [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"device %s reports more than 32 private flags (%d)\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"(unnamed net_device)\00", [43 x i8] zeroinitializer }, align 32
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@___asan_gen_.3 = private unnamed_addr constant [27 x i8] c"ethnl_privflags_get_policy\00", align 1
@___asan_gen_.5 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.16, i32 21, i32 25 }
@___asan_gen_.6 = private unnamed_addr constant [28 x i8] c"ethnl_privflags_request_ops\00", align 1
@___asan_gen_.8 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.16, i32 121, i32 32 }
@___asan_gen_.9 = private unnamed_addr constant [27 x i8] c"ethnl_privflags_set_policy\00", align 1
@___asan_gen_.11 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.16, i32 136, i32 25 }
@___asan_gen_.16 = private constant [27 x i8] c"../net/ethtool/privflags.c\00", align 1
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.16, i32 49, i32 6 }
@___asan_gen_.18 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.19 = private unnamed_addr constant [29 x i8] c"../include/linux/netdevice.h\00", align 1
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.19, i32 4963, i32 10 }
@llvm.compiler.used = appending global [6 x ptr] [ptr @ethnl_privflags_get_policy, ptr @ethnl_privflags_request_ops, ptr @ethnl_privflags_set_policy, ptr @.str, ptr @.str.1, ptr @.str.2], section "llvm.metadata"
@0 = internal global [6 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ethnl_privflags_get_policy to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ethnl_privflags_request_ops to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ethnl_privflags_set_policy to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @privflags_prepare_data(ptr nocapture noundef readnone %req_base, ptr nocapture noundef %reply_base, ptr nocapture noundef readnone %info) #0 align 64 {
entry:
  %names = alloca ptr, align 4
  %nflags = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %reply_base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %reply_base, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %names) #7
  %2 = ptrtoint ptr %names to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr inttoptr (i32 -1 to ptr), ptr %names, align 4, !annotation !22
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %nflags) #7
  %3 = ptrtoint ptr %nflags to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %nflags, align 4, !annotation !22
  %ethtool_ops = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 44
  %4 = ptrtoint ptr %ethtool_ops to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ethtool_ops, align 16
  %get_priv_flags = getelementptr inbounds %struct.ethtool_ops, ptr %5, i32 0, i32 29
  %6 = ptrtoint ptr %get_priv_flags to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %get_priv_flags, align 4
  %tobool.not = icmp eq ptr %7, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %get_sset_count = getelementptr inbounds %struct.ethtool_ops, ptr %5, i32 0, i32 31
  %8 = ptrtoint ptr %get_sset_count to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %get_sset_count, align 4
  %tobool2.not = icmp eq ptr %9, null
  br i1 %tobool2.not, label %lor.lhs.false.cleanup_crit_edge, label %lor.lhs.false3

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

lor.lhs.false3:                                   ; preds = %lor.lhs.false
  %get_strings = getelementptr inbounds %struct.ethtool_ops, ptr %5, i32 0, i32 24
  %10 = ptrtoint ptr %get_strings to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %get_strings, align 4
  %tobool4.not = icmp eq ptr %11, null
  br i1 %tobool4.not, label %lor.lhs.false3.cleanup_crit_edge, label %if.end

lor.lhs.false3.cleanup_crit_edge:                 ; preds = %lor.lhs.false3
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false3
  %call = tail call i32 @ethnl_ops_begin(ptr noundef %1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %call7 = call fastcc i32 @ethnl_get_priv_flags_info(ptr noundef %1, ptr noundef nonnull %nflags, ptr noundef nonnull %names)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %cmp8 = icmp slt i32 %call7, 0
  br i1 %cmp8, label %if.end6.out_ops_crit_edge, label %if.end10

if.end6.out_ops_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  br label %out_ops

if.end10:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  %12 = ptrtoint ptr %get_priv_flags to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %get_priv_flags, align 4
  %call12 = call i32 %13(ptr noundef %1) #7
  %priv_flags = getelementptr inbounds %struct.privflags_reply_data, ptr %reply_base, i32 0, i32 3
  %14 = ptrtoint ptr %priv_flags to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %call12, ptr %priv_flags, align 4
  %15 = ptrtoint ptr %names to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %names, align 4
  %priv_flag_names = getelementptr inbounds %struct.privflags_reply_data, ptr %reply_base, i32 0, i32 1
  %17 = ptrtoint ptr %priv_flag_names to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %16, ptr %priv_flag_names, align 4
  %18 = ptrtoint ptr %nflags to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %nflags, align 4
  %n_priv_flags = getelementptr inbounds %struct.privflags_reply_data, ptr %reply_base, i32 0, i32 2
  %20 = ptrtoint ptr %n_priv_flags to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %n_priv_flags, align 4
  br label %out_ops

out_ops:                                          ; preds = %if.end10, %if.end6.out_ops_crit_edge
  call void @ethnl_ops_complete(ptr noundef %1) #7
  br label %cleanup

cleanup:                                          ; preds = %out_ops, %if.end.cleanup_crit_edge, %lor.lhs.false3.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call7, %out_ops ], [ -95, %lor.lhs.false3.cleanup_crit_edge ], [ -95, %lor.lhs.false.cleanup_crit_edge ], [ -95, %entry.cleanup_crit_edge ], [ %call, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %nflags) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %names) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @privflags_reply_size(ptr nocapture noundef readonly %req_base, ptr noundef %reply_base) #0 align 64 {
entry:
  %all_flags = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %flags = getelementptr inbounds %struct.ethnl_req_info, ptr %req_base, i32 0, i32 2
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags, align 4
  %and = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool = icmp ne i32 %and, 0
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %all_flags) #7
  %n_priv_flags = getelementptr inbounds %struct.privflags_reply_data, ptr %reply_base, i32 0, i32 2
  %2 = ptrtoint ptr %n_priv_flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %n_priv_flags, align 4
  %sub = sub i32 32, %3
  %shr = lshr i32 -1, %sub
  %4 = ptrtoint ptr %all_flags to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %shr, ptr %all_flags, align 4
  %priv_flags = getelementptr inbounds %struct.privflags_reply_data, ptr %reply_base, i32 0, i32 3
  %priv_flag_names = getelementptr inbounds %struct.privflags_reply_data, ptr %reply_base, i32 0, i32 1
  %5 = ptrtoint ptr %priv_flag_names to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %priv_flag_names, align 4
  %call = call i32 @ethnl_bitset32_size(ptr noundef %priv_flags, ptr noundef nonnull %all_flags, i32 noundef %3, ptr noundef %6, i1 noundef zeroext %tobool) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %all_flags) #7
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @privflags_fill_reply(ptr noundef %skb, ptr nocapture noundef readonly %req_base, ptr noundef %reply_base) #0 align 64 {
entry:
  %all_flags = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %flags = getelementptr inbounds %struct.ethnl_req_info, ptr %req_base, i32 0, i32 2
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags, align 4
  %and = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool = icmp ne i32 %and, 0
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %all_flags) #7
  %n_priv_flags = getelementptr inbounds %struct.privflags_reply_data, ptr %reply_base, i32 0, i32 2
  %2 = ptrtoint ptr %n_priv_flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %n_priv_flags, align 4
  %sub = sub i32 32, %3
  %shr = lshr i32 -1, %sub
  %4 = ptrtoint ptr %all_flags to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %shr, ptr %all_flags, align 4
  %priv_flags = getelementptr inbounds %struct.privflags_reply_data, ptr %reply_base, i32 0, i32 3
  %priv_flag_names = getelementptr inbounds %struct.privflags_reply_data, ptr %reply_base, i32 0, i32 1
  %5 = ptrtoint ptr %priv_flag_names to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %priv_flag_names, align 4
  %call = call i32 @ethnl_put_bitset32(ptr noundef %skb, i32 noundef 2, ptr noundef %priv_flags, ptr noundef nonnull %all_flags, i32 noundef %3, ptr noundef %6, i1 noundef zeroext %tobool) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %all_flags) #7
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @privflags_cleanup_data(ptr nocapture noundef readonly %reply_data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %priv_flag_names = getelementptr inbounds %struct.privflags_reply_data, ptr %reply_data, i32 0, i32 1
  %0 = ptrtoint ptr %priv_flag_names to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv_flag_names, align 4
  tail call void @kfree(ptr noundef %1) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ethnl_set_privflags(ptr nocapture noundef readnone %skb, ptr nocapture noundef readonly %info) local_unnamed_addr #0 align 64 {
entry:
  %names = alloca ptr, align 4
  %req_info = alloca %struct.ethnl_req_info, align 4
  %nflags = alloca i32, align 4
  %mod = alloca i8, align 1
  %compact = alloca i8, align 1
  %flags = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %names) #7
  %0 = ptrtoint ptr %names to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr null, ptr %names, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %req_info) #7
  %1 = call ptr @memset(ptr %req_info, i32 0, i32 12)
  %attrs = getelementptr inbounds %struct.genl_info, ptr %info, i32 0, i32 5
  %2 = ptrtoint ptr %attrs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %attrs, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %nflags) #7
  %4 = ptrtoint ptr %nflags to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %nflags, align 4, !annotation !22
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %mod) #7
  %5 = ptrtoint ptr %mod to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 0, ptr %mod, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %compact) #7
  %6 = ptrtoint ptr %compact to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 -1, ptr %compact, align 1, !annotation !22
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %flags) #7
  %7 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 -1, ptr %flags, align 4, !annotation !22
  %arrayidx = getelementptr ptr, ptr %3, i32 2
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %9, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %call = call i32 @ethnl_bitset_is_compact(ptr noundef nonnull %9, ptr noundef nonnull %compact) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %arrayidx4 = getelementptr ptr, ptr %3, i32 1
  %10 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx4, align 4
  %_net.i = getelementptr inbounds %struct.genl_info, ptr %info, i32 0, i32 6
  %12 = ptrtoint ptr %_net.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %_net.i, align 4
  %extack = getelementptr inbounds %struct.genl_info, ptr %info, i32 0, i32 8
  %14 = ptrtoint ptr %extack to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %extack, align 4
  %call6 = call i32 @ethnl_parse_header_dev_get(ptr noundef nonnull %req_info, ptr noundef %11, ptr noundef %13, ptr noundef %15, i1 noundef zeroext true) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %cmp7 = icmp slt i32 %call6, 0
  br i1 %cmp7, label %if.end3.cleanup_crit_edge, label %if.end9

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end9:                                          ; preds = %if.end3
  %16 = ptrtoint ptr %req_info to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %req_info, align 4
  %ethtool_ops = getelementptr inbounds %struct.net_device, ptr %17, i32 0, i32 44
  %18 = ptrtoint ptr %ethtool_ops to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %ethtool_ops, align 16
  %get_priv_flags = getelementptr inbounds %struct.ethtool_ops, ptr %19, i32 0, i32 29
  %20 = ptrtoint ptr %get_priv_flags to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %get_priv_flags, align 4
  %tobool11.not = icmp eq ptr %21, null
  br i1 %tobool11.not, label %if.end9.out_dev_crit_edge, label %lor.lhs.false

if.end9.out_dev_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  br label %out_dev

lor.lhs.false:                                    ; preds = %if.end9
  %set_priv_flags = getelementptr inbounds %struct.ethtool_ops, ptr %19, i32 0, i32 30
  %22 = ptrtoint ptr %set_priv_flags to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %set_priv_flags, align 4
  %tobool12.not = icmp eq ptr %23, null
  br i1 %tobool12.not, label %lor.lhs.false.out_dev_crit_edge, label %lor.lhs.false13

lor.lhs.false.out_dev_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %out_dev

lor.lhs.false13:                                  ; preds = %lor.lhs.false
  %get_sset_count = getelementptr inbounds %struct.ethtool_ops, ptr %19, i32 0, i32 31
  %24 = ptrtoint ptr %get_sset_count to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %get_sset_count, align 4
  %tobool14.not = icmp eq ptr %25, null
  br i1 %tobool14.not, label %lor.lhs.false13.out_dev_crit_edge, label %lor.lhs.false15

lor.lhs.false13.out_dev_crit_edge:                ; preds = %lor.lhs.false13
  call void @__sanitizer_cov_trace_pc() #9
  br label %out_dev

lor.lhs.false15:                                  ; preds = %lor.lhs.false13
  %get_strings = getelementptr inbounds %struct.ethtool_ops, ptr %19, i32 0, i32 24
  %26 = ptrtoint ptr %get_strings to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %get_strings, align 4
  %tobool16.not = icmp eq ptr %27, null
  br i1 %tobool16.not, label %lor.lhs.false15.out_dev_crit_edge, label %if.end18

lor.lhs.false15.out_dev_crit_edge:                ; preds = %lor.lhs.false15
  call void @__sanitizer_cov_trace_pc() #9
  br label %out_dev

if.end18:                                         ; preds = %lor.lhs.false15
  call void @rtnl_lock() #7
  %call19 = call i32 @ethnl_ops_begin(ptr noundef %17) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %cmp20 = icmp slt i32 %call19, 0
  br i1 %cmp20, label %if.end18.out_rtnl_crit_edge, label %if.end22

if.end18.out_rtnl_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #9
  br label %out_rtnl

if.end22:                                         ; preds = %if.end18
  %28 = ptrtoint ptr %compact to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %compact, align 1, !range !23
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %29)
  %tobool23.not = icmp eq i8 %29, 0
  %.names = select i1 %tobool23.not, ptr %names, ptr null
  %call24 = call fastcc i32 @ethnl_get_priv_flags_info(ptr noundef %17, ptr noundef nonnull %nflags, ptr noundef %.names)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24)
  %cmp25 = icmp slt i32 %call24, 0
  br i1 %cmp25, label %if.end22.out_ops_crit_edge, label %if.end27

if.end22.out_ops_crit_edge:                       ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #9
  br label %out_ops

if.end27:                                         ; preds = %if.end22
  %30 = ptrtoint ptr %get_priv_flags to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %get_priv_flags, align 4
  %call29 = call i32 %31(ptr noundef %17) #7
  %32 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %call29, ptr %flags, align 4
  %33 = ptrtoint ptr %nflags to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %nflags, align 4
  %35 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %arrayidx, align 4
  %37 = ptrtoint ptr %names to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %names, align 4
  %39 = ptrtoint ptr %extack to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %extack, align 4
  %call32 = call i32 @ethnl_update_bitset32(ptr noundef nonnull %flags, i32 noundef %34, ptr noundef %36, ptr noundef %38, ptr noundef %40, ptr noundef nonnull %mod) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32)
  %cmp33 = icmp slt i32 %call32, 0
  br i1 %cmp33, label %if.end27.out_free_crit_edge, label %lor.lhs.false34

if.end27.out_free_crit_edge:                      ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #9
  br label %out_free

lor.lhs.false34:                                  ; preds = %if.end27
  %41 = ptrtoint ptr %mod to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %mod, align 1, !range !23
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %42)
  %tobool35.not = icmp eq i8 %42, 0
  br i1 %tobool35.not, label %lor.lhs.false34.out_free_crit_edge, label %if.end37

lor.lhs.false34.out_free_crit_edge:               ; preds = %lor.lhs.false34
  call void @__sanitizer_cov_trace_pc() #9
  br label %out_free

if.end37:                                         ; preds = %lor.lhs.false34
  %43 = ptrtoint ptr %set_priv_flags to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %set_priv_flags, align 4
  %45 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %flags, align 4
  %call39 = call i32 %44(ptr noundef %17, i32 noundef %46) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call39)
  %cmp40 = icmp slt i32 %call39, 0
  br i1 %cmp40, label %if.end37.out_free_crit_edge, label %if.end42

if.end37.out_free_crit_edge:                      ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #9
  br label %out_free

if.end42:                                         ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #9
  call void @ethtool_notify(ptr noundef %17, i32 noundef 15, ptr noundef null) #7
  br label %out_free

out_free:                                         ; preds = %if.end42, %if.end37.out_free_crit_edge, %lor.lhs.false34.out_free_crit_edge, %if.end27.out_free_crit_edge
  %ret.0 = phi i32 [ %call32, %if.end27.out_free_crit_edge ], [ %call39, %if.end37.out_free_crit_edge ], [ %call39, %if.end42 ], [ %call32, %lor.lhs.false34.out_free_crit_edge ]
  %47 = ptrtoint ptr %names to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %names, align 4
  call void @kfree(ptr noundef %48) #7
  br label %out_ops

out_ops:                                          ; preds = %out_free, %if.end22.out_ops_crit_edge
  %ret.1 = phi i32 [ %call24, %if.end22.out_ops_crit_edge ], [ %ret.0, %out_free ]
  call void @ethnl_ops_complete(ptr noundef %17) #7
  br label %out_rtnl

out_rtnl:                                         ; preds = %out_ops, %if.end18.out_rtnl_crit_edge
  %ret.2 = phi i32 [ %call19, %if.end18.out_rtnl_crit_edge ], [ %ret.1, %out_ops ]
  call void @rtnl_unlock() #7
  br label %out_dev

out_dev:                                          ; preds = %out_rtnl, %lor.lhs.false15.out_dev_crit_edge, %lor.lhs.false13.out_dev_crit_edge, %lor.lhs.false.out_dev_crit_edge, %if.end9.out_dev_crit_edge
  %ret.3 = phi i32 [ %ret.2, %out_rtnl ], [ -95, %lor.lhs.false15.out_dev_crit_edge ], [ -95, %lor.lhs.false13.out_dev_crit_edge ], [ -95, %lor.lhs.false.out_dev_crit_edge ], [ -95, %if.end9.out_dev_crit_edge ]
  %49 = ptrtoint ptr %req_info to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %req_info, align 4
  %tobool.not.i.i = icmp eq ptr %50, null
  br i1 %tobool.not.i.i, label %out_dev.cleanup_crit_edge, label %do.body1.i.i.i

out_dev.cleanup_crit_edge:                        ; preds = %out_dev
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.body1.i.i.i:                                   ; preds = %out_dev
  %dev_tracker.i = getelementptr inbounds %struct.ethnl_req_info, ptr %req_info, i32 0, i32 1
  %refcnt_tracker.i.i.i = getelementptr inbounds %struct.net_device, ptr %50, i32 0, i32 119
  %call.i.i.i = call i32 @ref_tracker_free(ptr noundef %refcnt_tracker.i.i.i, ptr noundef %dev_tracker.i) #7
  %51 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #7, !srcloc !24
  %pcpu_refcnt.i.i.i = getelementptr inbounds %struct.net_device, ptr %50, i32 0, i32 118
  %52 = ptrtoint ptr %pcpu_refcnt.i.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %pcpu_refcnt.i.i.i, align 4
  %54 = ptrtoint ptr %53 to i32
  %55 = call i32 @llvm.read_register.i32(metadata !12) #7
  %and.i.i.i.i = and i32 %55, -16384
  %56 = inttoptr i32 %and.i.i.i.i to ptr
  %cpu.i.i.i = getelementptr inbounds %struct.thread_info, ptr %56, i32 0, i32 3
  %57 = ptrtoint ptr %cpu.i.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %cpu.i.i.i, align 4
  %arrayidx.i.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %58
  %59 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %arrayidx.i.i.i, align 4
  %add.i.i.i = add i32 %60, %54
  %61 = inttoptr i32 %add.i.i.i to ptr
  %62 = ptrtoint ptr %61 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %61, align 4
  %add13.i.i.i = add i32 %63, -1
  store i32 %add13.i.i.i, ptr %61, align 4
  %64 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #7, !srcloc !25
  %and.i.i.i.i.i = and i32 %64, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i.i)
  %tobool24.not.i.i.i = icmp eq i32 %and.i.i.i.i.i, 0
  br i1 %tobool24.not.i.i.i, label %if.then28.i.i.i, label %do.body1.i.i.i.dev_put.exit.i.i_crit_edge, !prof !26

do.body1.i.i.i.dev_put.exit.i.i_crit_edge:        ; preds = %do.body1.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %dev_put.exit.i.i

if.then28.i.i.i:                                  ; preds = %do.body1.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @warn_bogus_irq_restore() #7
  br label %dev_put.exit.i.i

dev_put.exit.i.i:                                 ; preds = %if.then28.i.i.i, %do.body1.i.i.i.dev_put.exit.i.i_crit_edge
  call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %51) #7, !srcloc !27
  br label %cleanup

cleanup:                                          ; preds = %dev_put.exit.i.i, %out_dev.cleanup_crit_edge, %if.end3.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ %call, %if.end.cleanup_crit_edge ], [ %call6, %if.end3.cleanup_crit_edge ], [ %ret.3, %out_dev.cleanup_crit_edge ], [ %ret.3, %dev_put.exit.i.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %flags) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %compact) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %mod) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %nflags) #7
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %req_info) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %names) #7
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ethnl_bitset_is_compact(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ethnl_parse_header_dev_get(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtnl_lock() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ethnl_ops_begin(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ethnl_get_priv_flags_info(ptr noundef %dev, ptr nocapture noundef writeonly %count, ptr noundef writeonly %names) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %ethtool_ops = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 44
  %0 = ptrtoint ptr %ethtool_ops to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ethtool_ops, align 16
  %get_sset_count = getelementptr inbounds %struct.ethtool_ops, ptr %1, i32 0, i32 31
  %2 = ptrtoint ptr %get_sset_count to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %get_sset_count, align 4
  %call = tail call i32 %3(ptr noundef %dev, i32 noundef 2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %tobool.not = icmp eq ptr %names, null
  br i1 %tobool.not, label %if.end.if.end6_crit_edge, label %if.then1

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end6

if.then1:                                         ; preds = %if.end
  %4 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %call, i32 32) #7
  %5 = extractvalue { i32, i1 } %4, 1
  br i1 %5, label %kcalloc.exit.thread, label %if.end7.i.i, !prof !26

kcalloc.exit.thread:                              ; preds = %if.then1
  call void @__sanitizer_cov_trace_pc() #9
  %6 = ptrtoint ptr %names to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %names, align 4
  br label %cleanup

if.end7.i.i:                                      ; preds = %if.then1
  %7 = extractvalue { i32, i1 } %4, 0
  %call8.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %7, i32 noundef 3520) #10
  %8 = ptrtoint ptr %names to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call8.i.i, ptr %names, align 4
  %tobool3.not = icmp eq ptr %call8.i.i, null
  br i1 %tobool3.not, label %if.end7.i.i.cleanup_crit_edge, label %if.end5

if.end7.i.i.cleanup_crit_edge:                    ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end5:                                          ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %get_strings = getelementptr inbounds %struct.ethtool_ops, ptr %1, i32 0, i32 24
  %9 = ptrtoint ptr %get_strings to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %get_strings, align 4
  tail call void %10(ptr noundef %dev, i32 noundef 2, ptr noundef nonnull %call8.i.i) #7
  br label %if.end6

if.end6:                                          ; preds = %if.end5, %if.end.if.end6_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %call)
  %cmp7 = icmp ugt i32 %call, 32
  br i1 %cmp7, label %land.rhs, label %if.end6.if.end38_crit_edge

if.end6.if.end38_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end38

land.rhs:                                         ; preds = %if.end6
  %.b64 = load i1, ptr @ethnl_get_priv_flags_info.__already_done, align 1
  br i1 %.b64, label %land.rhs.if.end38_crit_edge, label %if.then15, !prof !28

land.rhs.if.end38_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end38

if.then15:                                        ; preds = %land.rhs
  store i1 true, ptr @ethnl_get_priv_flags_info.__already_done, align 1
  %11 = ptrtoint ptr %dev to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %dev, align 128
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool.not.i = icmp eq i8 %12, 0
  br i1 %tobool.not.i, label %if.then15.netdev_name.exit_crit_edge, label %lor.lhs.false.i

if.then15.netdev_name.exit_crit_edge:             ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #9
  br label %netdev_name.exit

lor.lhs.false.i:                                  ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #9
  %call.i = tail call ptr @strchr(ptr noundef %dev, i32 noundef 37) #7
  %tobool2.not.i = icmp eq ptr %call.i, null
  %spec.select.i = select i1 %tobool2.not.i, ptr %dev, ptr @.str.2
  br label %netdev_name.exit

netdev_name.exit:                                 ; preds = %lor.lhs.false.i, %if.then15.netdev_name.exit_crit_edge
  %retval.0.i = phi ptr [ @.str.2, %if.then15.netdev_name.exit_crit_edge ], [ %spec.select.i, %lor.lhs.false.i ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 51, i32 noundef 9, ptr noundef nonnull @.str.1, ptr noundef %retval.0.i, i32 noundef %call) #7
  br label %if.end38

if.end38:                                         ; preds = %netdev_name.exit, %land.rhs.if.end38_crit_edge, %if.end6.if.end38_crit_edge
  %13 = tail call i32 @llvm.umin.i32(i32 %call, i32 32)
  %14 = ptrtoint ptr %count to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %count, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end38, %if.end7.i.i.cleanup_crit_edge, %kcalloc.exit.thread, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end38 ], [ %call, %entry.cleanup_crit_edge ], [ -12, %if.end7.i.i.cleanup_crit_edge ], [ -12, %kcalloc.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ethnl_update_bitset32(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ethtool_notify(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ethnl_ops_complete(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtnl_unlock() local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ethnl_bitset32_size(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ethnl_put_bitset32(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #3

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ref_tracker_free(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_bogus_irq_restore() local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

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
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind readonly }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !9, !10}
!llvm.named.register.sp = !{!12}
!llvm.module.flags = !{!13, !14, !15, !16, !17, !18, !19, !20}
!llvm.ident = !{!21}

!0 = !{ptr @ethnl_privflags_get_policy, !1, !"ethnl_privflags_get_policy", i1 false, i1 false}
!1 = !{!"../net/ethtool/privflags.c", i32 21, i32 25}
!2 = !{ptr @ethnl_privflags_request_ops, !3, !"ethnl_privflags_request_ops", i1 false, i1 false}
!3 = !{!"../net/ethtool/privflags.c", i32 121, i32 32}
!4 = !{ptr @ethnl_privflags_set_policy, !5, !"ethnl_privflags_set_policy", i1 false, i1 false}
!5 = !{!"../net/ethtool/privflags.c", i32 136, i32 25}
!6 = distinct !{null, !7, !"__already_done", i1 false, i1 false}
!7 = !{!"../net/ethtool/privflags.c", i32 49, i32 6}
!8 = !{ptr @.str, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.1, !7, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @.str.2, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../include/linux/netdevice.h", i32 4963, i32 10}
!12 = !{!"sp"}
!13 = !{i32 1, !"wchar_size", i32 2}
!14 = !{i32 1, !"min_enum_size", i32 4}
!15 = !{i32 8, !"branch-target-enforcement", i32 0}
!16 = !{i32 8, !"sign-return-address", i32 0}
!17 = !{i32 8, !"sign-return-address-all", i32 0}
!18 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!19 = !{i32 7, !"uwtable", i32 1}
!20 = !{i32 7, !"frame-pointer", i32 2}
!21 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!22 = !{!"auto-init"}
!23 = !{i8 0, i8 2}
!24 = !{i64 657255, i64 657316}
!25 = !{i64 659987}
!26 = !{!"branch_weights", i32 1, i32 2000}
!27 = !{i64 660272}
!28 = !{!"branch_weights", i32 2000, i32 1}
