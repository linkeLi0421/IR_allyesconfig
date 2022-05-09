; ModuleID = '/llk/IR_all_yes/net/ethtool/eee.c_pt.bc'
source_filename = "../net/ethtool/eee.c"
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
%struct.eee_reply_data = type { %struct.ethnl_reply_data, %struct.ethtool_eee }
%struct.ethnl_reply_data = type { ptr }
%struct.ethtool_eee = type { i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%struct.ethnl_req_info = type { ptr, ptr, i32 }
%struct.genl_info = type { i32, i32, ptr, ptr, ptr, ptr, %struct.possible_net_t, [2 x ptr], ptr }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }

@ethnl_header_policy = external dso_local constant [4 x %struct.nla_policy], align 4
@ethnl_eee_get_policy = dso_local constant { <{ %struct.nla_policy, { i8, i8, i16, { ptr } } }>, [16 x i8] } { <{ %struct.nla_policy, { i8, i8, i16, { ptr } } }> <{ %struct.nla_policy zeroinitializer, { i8, i8, i16, { ptr } } { i8 8, i8 0, i16 3, { ptr } { ptr @ethnl_header_policy } } }>, [16 x i8] zeroinitializer }, align 32
@ethnl_eee_request_ops = dso_local constant { %struct.ethnl_request_ops, [60 x i8] } { %struct.ethnl_request_ops { i8 23, i8 24, i16 1, i32 12, i32 44, i8 0, ptr null, ptr @eee_prepare_data, ptr @eee_reply_size, ptr @eee_fill_reply, ptr null }, [60 x i8] zeroinitializer }, align 32
@ethnl_eee_set_policy = dso_local constant { <{ %struct.nla_policy, { i8, i8, i16, { ptr } }, %struct.nla_policy, %struct.nla_policy, %struct.nla_policy, %struct.nla_policy, %struct.nla_policy, %struct.nla_policy }>, [32 x i8] } { <{ %struct.nla_policy, { i8, i8, i16, { ptr } }, %struct.nla_policy, %struct.nla_policy, %struct.nla_policy, %struct.nla_policy, %struct.nla_policy, %struct.nla_policy }> <{ %struct.nla_policy zeroinitializer, { i8, i8, i16, { ptr } } { i8 8, i8 0, i16 3, { ptr } { ptr @ethnl_header_policy } }, %struct.nla_policy { i8 8, i8 0, i16 0, %union.anon zeroinitializer }, %struct.nla_policy zeroinitializer, %struct.nla_policy zeroinitializer, %struct.nla_policy { i8 1, i8 0, i16 0, %union.anon zeroinitializer }, %struct.nla_policy { i8 1, i8 0, i16 0, %union.anon zeroinitializer }, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon zeroinitializer } }>, [32 x i8] zeroinitializer }, align 32
@link_mode_names = external dso_local constant [0 x [32 x i8]], align 1
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@___asan_gen_.1 = private unnamed_addr constant [21 x i8] c"ethnl_eee_get_policy\00", align 1
@___asan_gen_.3 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.8, i32 22, i32 25 }
@___asan_gen_.4 = private unnamed_addr constant [22 x i8] c"ethnl_eee_request_ops\00", align 1
@___asan_gen_.6 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.8, i32 111, i32 32 }
@___asan_gen_.7 = private unnamed_addr constant [21 x i8] c"ethnl_eee_set_policy\00", align 1
@___asan_gen_.8 = private constant [21 x i8] c"../net/ethtool/eee.c\00", align 1
@___asan_gen_.9 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.8, i32 125, i32 25 }
@llvm.compiler.used = appending global [3 x ptr] [ptr @ethnl_eee_get_policy, ptr @ethnl_eee_request_ops, ptr @ethnl_eee_set_policy], section "llvm.metadata"
@0 = internal global [3 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ethnl_eee_get_policy to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ethnl_eee_request_ops to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ethnl_eee_set_policy to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 0 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @eee_prepare_data(ptr nocapture noundef readnone %req_base, ptr noundef %reply_base, ptr nocapture noundef readnone %info) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %reply_base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %reply_base, align 4
  %ethtool_ops = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 44
  %2 = ptrtoint ptr %ethtool_ops to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ethtool_ops, align 16
  %get_eee = getelementptr inbounds %struct.ethtool_ops, ptr %3, i32 0, i32 50
  %4 = ptrtoint ptr %get_eee to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %get_eee, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %call = tail call i32 @ethnl_ops_begin(ptr noundef %1) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end3:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %6 = ptrtoint ptr %ethtool_ops to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ethtool_ops, align 16
  %get_eee5 = getelementptr inbounds %struct.ethtool_ops, ptr %7, i32 0, i32 50
  %8 = ptrtoint ptr %get_eee5 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %get_eee5, align 4
  %eee = getelementptr inbounds %struct.eee_reply_data, ptr %reply_base, i32 0, i32 1
  %call6 = tail call i32 %9(ptr noundef %1, ptr noundef %eee) #4
  tail call void @ethnl_ops_complete(ptr noundef %1) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end3, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call6, %if.end3 ], [ -95, %entry.cleanup_crit_edge ], [ %call, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @eee_reply_size(ptr nocapture noundef readonly %req_base, ptr noundef %reply_base) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %flags = getelementptr inbounds %struct.ethnl_req_info, ptr %req_base, i32 0, i32 2
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags, align 4
  %and = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool = icmp ne i32 %and, 0
  %advertised = getelementptr inbounds %struct.eee_reply_data, ptr %reply_base, i32 0, i32 1, i32 2
  %supported = getelementptr inbounds %struct.eee_reply_data, ptr %reply_base, i32 0, i32 1, i32 1
  %call = tail call i32 @ethnl_bitset32_size(ptr noundef %advertised, ptr noundef %supported, i32 noundef 32, ptr noundef nonnull @link_mode_names, i1 noundef zeroext %tobool) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %lp_advertised = getelementptr inbounds %struct.eee_reply_data, ptr %reply_base, i32 0, i32 1, i32 3
  %call7 = tail call i32 @ethnl_bitset32_size(ptr noundef %lp_advertised, ptr noundef null, i32 noundef 32, ptr noundef nonnull @link_mode_names, i1 noundef zeroext %tobool) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %cmp8 = icmp slt i32 %call7, 0
  br i1 %cmp8, label %if.end.cleanup_crit_edge, label %if.end10

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end10:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %add11 = add nuw i32 %call, 32
  %add19 = add i32 %add11, %call7
  br label %cleanup

cleanup:                                          ; preds = %if.end10, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %add19, %if.end10 ], [ %call, %entry.cleanup_crit_edge ], [ %call7, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @eee_fill_reply(ptr noundef %skb, ptr nocapture noundef readonly %req_base, ptr noundef %reply_base) #0 align 64 {
entry:
  %tmp.i56 = alloca i32, align 4
  %tmp.i54 = alloca i8, align 1
  %tmp.i52 = alloca i8, align 1
  %tmp.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %flags = getelementptr inbounds %struct.ethnl_req_info, ptr %req_base, i32 0, i32 2
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags, align 4
  %and = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool = icmp ne i32 %and, 0
  %advertised = getelementptr inbounds %struct.eee_reply_data, ptr %reply_base, i32 0, i32 1, i32 2
  %supported = getelementptr inbounds %struct.eee_reply_data, ptr %reply_base, i32 0, i32 1, i32 1
  %call = tail call i32 @ethnl_put_bitset32(ptr noundef %skb, i32 noundef 2, ptr noundef %advertised, ptr noundef %supported, i32 noundef 32, ptr noundef nonnull @link_mode_names, i1 noundef zeroext %tobool) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %lp_advertised = getelementptr inbounds %struct.eee_reply_data, ptr %reply_base, i32 0, i32 1, i32 3
  %call4 = tail call i32 @ethnl_put_bitset32(ptr noundef %skb, i32 noundef 3, ptr noundef %lp_advertised, ptr noundef null, i32 noundef 32, ptr noundef nonnull @link_mode_names, i1 noundef zeroext %tobool) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %cmp5 = icmp slt i32 %call4, 0
  br i1 %cmp5, label %if.end.cleanup_crit_edge, label %if.end7

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %eee_active = getelementptr inbounds %struct.eee_reply_data, ptr %reply_base, i32 0, i32 1, i32 4
  %2 = ptrtoint ptr %eee_active to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %eee_active, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool8 = icmp ne i32 %3, 0
  %conv = zext i1 %tobool8 to i8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i) #4
  %4 = ptrtoint ptr %tmp.i to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %conv, ptr %tmp.i, align 1
  %call.i = call i32 @nla_put(ptr noundef %skb, i32 noundef 4, i32 noundef 1, ptr noundef nonnull %tmp.i) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool11.not = icmp eq i32 %call.i, 0
  br i1 %tobool11.not, label %lor.lhs.false, label %if.end7.cleanup_crit_edge

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.end7
  %eee_enabled = getelementptr inbounds %struct.eee_reply_data, ptr %reply_base, i32 0, i32 1, i32 5
  %5 = ptrtoint ptr %eee_enabled to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %eee_enabled, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool12 = icmp ne i32 %6, 0
  %conv17 = zext i1 %tobool12 to i8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i52) #4
  %7 = ptrtoint ptr %tmp.i52 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %conv17, ptr %tmp.i52, align 1
  %call.i53 = call i32 @nla_put(ptr noundef %skb, i32 noundef 5, i32 noundef 1, ptr noundef nonnull %tmp.i52) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i52) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i53)
  %tobool19.not = icmp eq i32 %call.i53, 0
  br i1 %tobool19.not, label %lor.lhs.false20, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

lor.lhs.false20:                                  ; preds = %lor.lhs.false
  %tx_lpi_enabled = getelementptr inbounds %struct.eee_reply_data, ptr %reply_base, i32 0, i32 1, i32 6
  %8 = ptrtoint ptr %tx_lpi_enabled to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %tx_lpi_enabled, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool21 = icmp ne i32 %9, 0
  %conv26 = zext i1 %tobool21 to i8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i54) #4
  %10 = ptrtoint ptr %tmp.i54 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %conv26, ptr %tmp.i54, align 1
  %call.i55 = call i32 @nla_put(ptr noundef %skb, i32 noundef 6, i32 noundef 1, ptr noundef nonnull %tmp.i54) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i54) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i55)
  %tobool28.not = icmp eq i32 %call.i55, 0
  br i1 %tobool28.not, label %lor.lhs.false29, label %lor.lhs.false20.cleanup_crit_edge

lor.lhs.false20.cleanup_crit_edge:                ; preds = %lor.lhs.false20
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

lor.lhs.false29:                                  ; preds = %lor.lhs.false20
  call void @__sanitizer_cov_trace_pc() #6
  %tx_lpi_timer = getelementptr inbounds %struct.eee_reply_data, ptr %reply_base, i32 0, i32 1, i32 7
  %11 = ptrtoint ptr %tx_lpi_timer to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %tx_lpi_timer, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i56) #4
  %13 = ptrtoint ptr %tmp.i56 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %tmp.i56, align 4
  %call.i57 = call i32 @nla_put(ptr noundef %skb, i32 noundef 7, i32 noundef 4, ptr noundef nonnull %tmp.i56) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i56) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i57)
  %tobool31.not = icmp eq i32 %call.i57, 0
  %spec.select = select i1 %tobool31.not, i32 0, i32 -90
  br label %cleanup

cleanup:                                          ; preds = %lor.lhs.false29, %lor.lhs.false20.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %if.end7.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ %call4, %if.end.cleanup_crit_edge ], [ -90, %lor.lhs.false20.cleanup_crit_edge ], [ -90, %lor.lhs.false.cleanup_crit_edge ], [ -90, %if.end7.cleanup_crit_edge ], [ %spec.select, %lor.lhs.false29 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ethnl_set_eee(ptr nocapture noundef readnone %skb, ptr nocapture noundef readonly %info) local_unnamed_addr #0 align 64 {
entry:
  %req_info = alloca %struct.ethnl_req_info, align 4
  %eee = alloca %struct.ethtool_eee, align 4
  %mod = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %req_info) #4
  %0 = call ptr @memset(ptr %req_info, i32 0, i32 12)
  %attrs = getelementptr inbounds %struct.genl_info, ptr %info, i32 0, i32 5
  %1 = ptrtoint ptr %attrs to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %attrs, align 4
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %eee) #4
  %3 = call ptr @memset(ptr %eee, i32 0, i32 40)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %mod) #4
  %4 = ptrtoint ptr %mod to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %mod, align 1
  %arrayidx = getelementptr ptr, ptr %2, i32 1
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %arrayidx, align 4
  %_net.i = getelementptr inbounds %struct.genl_info, ptr %info, i32 0, i32 6
  %7 = ptrtoint ptr %_net.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %_net.i, align 4
  %extack = getelementptr inbounds %struct.genl_info, ptr %info, i32 0, i32 8
  %9 = ptrtoint ptr %extack to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %extack, align 4
  %call1 = call i32 @ethnl_parse_header_dev_get(ptr noundef nonnull %req_info, ptr noundef %6, ptr noundef %8, ptr noundef %10, i1 noundef zeroext true) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %11 = ptrtoint ptr %req_info to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %req_info, align 4
  %ethtool_ops = getelementptr inbounds %struct.net_device, ptr %12, i32 0, i32 44
  %13 = ptrtoint ptr %ethtool_ops to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %ethtool_ops, align 16
  %get_eee = getelementptr inbounds %struct.ethtool_ops, ptr %14, i32 0, i32 50
  %15 = ptrtoint ptr %get_eee to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %get_eee, align 4
  %tobool.not = icmp eq ptr %16, null
  br i1 %tobool.not, label %if.end.out_dev_crit_edge, label %lor.lhs.false

if.end.out_dev_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %out_dev

lor.lhs.false:                                    ; preds = %if.end
  %set_eee = getelementptr inbounds %struct.ethtool_ops, ptr %14, i32 0, i32 51
  %17 = ptrtoint ptr %set_eee to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %set_eee, align 4
  %tobool3.not = icmp eq ptr %18, null
  br i1 %tobool3.not, label %lor.lhs.false.out_dev_crit_edge, label %if.end5

lor.lhs.false.out_dev_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #6
  br label %out_dev

if.end5:                                          ; preds = %lor.lhs.false
  call void @rtnl_lock() #4
  %call6 = call i32 @ethnl_ops_begin(ptr noundef %12) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %cmp7 = icmp slt i32 %call6, 0
  br i1 %cmp7, label %if.end5.out_rtnl_crit_edge, label %if.end9

if.end5.out_rtnl_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #6
  br label %out_rtnl

if.end9:                                          ; preds = %if.end5
  %19 = ptrtoint ptr %get_eee to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %get_eee, align 4
  %call11 = call i32 %20(ptr noundef %12, ptr noundef nonnull %eee) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %cmp12 = icmp slt i32 %call11, 0
  br i1 %cmp12, label %if.end9.out_ops_crit_edge, label %if.end14

if.end9.out_ops_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #6
  br label %out_ops

if.end14:                                         ; preds = %if.end9
  %advertised = getelementptr inbounds %struct.ethtool_eee, ptr %eee, i32 0, i32 2
  %arrayidx15 = getelementptr ptr, ptr %2, i32 2
  %21 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %arrayidx15, align 4
  %23 = ptrtoint ptr %extack to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %extack, align 4
  %call17 = call i32 @ethnl_update_bitset32(ptr noundef %advertised, i32 noundef 32, ptr noundef %22, ptr noundef nonnull @link_mode_names, ptr noundef %24, ptr noundef nonnull %mod) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %cmp18 = icmp slt i32 %call17, 0
  br i1 %cmp18, label %if.end14.out_ops_crit_edge, label %if.end20

if.end14.out_ops_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #6
  br label %out_ops

if.end20:                                         ; preds = %if.end14
  %eee_enabled = getelementptr inbounds %struct.ethtool_eee, ptr %eee, i32 0, i32 5
  %arrayidx21 = getelementptr ptr, ptr %2, i32 5
  %25 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %arrayidx21, align 4
  %tobool.not.i = icmp eq ptr %26, null
  br i1 %tobool.not.i, label %if.end20.ethnl_update_bool32.exit_crit_edge, label %if.end.i

if.end20.ethnl_update_bool32.exit_crit_edge:      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #6
  br label %ethnl_update_bool32.exit

if.end.i:                                         ; preds = %if.end20
  %add.ptr.i.i.i = getelementptr i8, ptr %26, i32 4
  %27 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %add.ptr.i.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %28)
  %tobool1.i = icmp ne i8 %28, 0
  %29 = ptrtoint ptr %eee_enabled to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %eee_enabled, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %tobool3.i = icmp eq i32 %30, 0
  %cmp.i = xor i1 %tobool1.i, %tobool3.i
  br i1 %cmp.i, label %if.end.i.ethnl_update_bool32.exit_crit_edge, label %if.end11.i

if.end.i.ethnl_update_bool32.exit_crit_edge:      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %ethnl_update_bool32.exit

if.end11.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  %conv8.i = zext i1 %tobool1.i to i32
  %31 = ptrtoint ptr %eee_enabled to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %conv8.i, ptr %eee_enabled, align 4
  %32 = ptrtoint ptr %mod to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 1, ptr %mod, align 1
  br label %ethnl_update_bool32.exit

ethnl_update_bool32.exit:                         ; preds = %if.end11.i, %if.end.i.ethnl_update_bool32.exit_crit_edge, %if.end20.ethnl_update_bool32.exit_crit_edge
  %tx_lpi_enabled = getelementptr inbounds %struct.ethtool_eee, ptr %eee, i32 0, i32 6
  %arrayidx22 = getelementptr ptr, ptr %2, i32 6
  %33 = ptrtoint ptr %arrayidx22 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %arrayidx22, align 4
  %tobool.not.i60 = icmp eq ptr %34, null
  br i1 %tobool.not.i60, label %ethnl_update_bool32.exit.ethnl_update_bool32.exit68_crit_edge, label %if.end.i65

ethnl_update_bool32.exit.ethnl_update_bool32.exit68_crit_edge: ; preds = %ethnl_update_bool32.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %ethnl_update_bool32.exit68

if.end.i65:                                       ; preds = %ethnl_update_bool32.exit
  %add.ptr.i.i.i61 = getelementptr i8, ptr %34, i32 4
  %35 = ptrtoint ptr %add.ptr.i.i.i61 to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %add.ptr.i.i.i61, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %36)
  %tobool1.i62 = icmp ne i8 %36, 0
  %37 = ptrtoint ptr %tx_lpi_enabled to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %tx_lpi_enabled, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %tobool3.i63 = icmp eq i32 %38, 0
  %cmp.i64 = xor i1 %tobool1.i62, %tobool3.i63
  br i1 %cmp.i64, label %if.end.i65.ethnl_update_bool32.exit68_crit_edge, label %if.end11.i67

if.end.i65.ethnl_update_bool32.exit68_crit_edge:  ; preds = %if.end.i65
  call void @__sanitizer_cov_trace_pc() #6
  br label %ethnl_update_bool32.exit68

if.end11.i67:                                     ; preds = %if.end.i65
  call void @__sanitizer_cov_trace_pc() #6
  %conv8.i66 = zext i1 %tobool1.i62 to i32
  %39 = ptrtoint ptr %tx_lpi_enabled to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %conv8.i66, ptr %tx_lpi_enabled, align 4
  %40 = ptrtoint ptr %mod to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 1, ptr %mod, align 1
  br label %ethnl_update_bool32.exit68

ethnl_update_bool32.exit68:                       ; preds = %if.end11.i67, %if.end.i65.ethnl_update_bool32.exit68_crit_edge, %ethnl_update_bool32.exit.ethnl_update_bool32.exit68_crit_edge
  %tx_lpi_timer = getelementptr inbounds %struct.ethtool_eee, ptr %eee, i32 0, i32 7
  %arrayidx23 = getelementptr ptr, ptr %2, i32 7
  %41 = ptrtoint ptr %arrayidx23 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %arrayidx23, align 4
  %tobool.not.i69 = icmp eq ptr %42, null
  br i1 %tobool.not.i69, label %ethnl_update_bool32.exit68.ethnl_update_u32.exit_crit_edge, label %if.end.i72

ethnl_update_bool32.exit68.ethnl_update_u32.exit_crit_edge: ; preds = %ethnl_update_bool32.exit68
  call void @__sanitizer_cov_trace_pc() #6
  br label %ethnl_update_u32.exit

if.end.i72:                                       ; preds = %ethnl_update_bool32.exit68
  %add.ptr.i.i.i70 = getelementptr i8, ptr %42, i32 4
  %43 = ptrtoint ptr %add.ptr.i.i.i70 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %add.ptr.i.i.i70, align 4
  %45 = ptrtoint ptr %tx_lpi_timer to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %tx_lpi_timer, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %46, i32 %44)
  %cmp.i71 = icmp eq i32 %46, %44
  br i1 %cmp.i71, label %if.end.i72.ethnl_update_u32.exit_crit_edge, label %ethnl_update_u32.exit.thread

if.end.i72.ethnl_update_u32.exit_crit_edge:       ; preds = %if.end.i72
  call void @__sanitizer_cov_trace_pc() #6
  br label %ethnl_update_u32.exit

ethnl_update_u32.exit.thread:                     ; preds = %if.end.i72
  call void @__sanitizer_cov_trace_pc() #6
  %47 = ptrtoint ptr %tx_lpi_timer to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %44, ptr %tx_lpi_timer, align 4
  %48 = ptrtoint ptr %mod to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 1, ptr %mod, align 1
  br label %if.end26

ethnl_update_u32.exit:                            ; preds = %if.end.i72.ethnl_update_u32.exit_crit_edge, %ethnl_update_bool32.exit68.ethnl_update_u32.exit_crit_edge
  %49 = ptrtoint ptr %mod to i32
  call void @__asan_load1_noabort(i32 %49)
  %.pr = load i8, ptr %mod, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %.pr)
  %tobool24.not = icmp eq i8 %.pr, 0
  br i1 %tobool24.not, label %ethnl_update_u32.exit.out_ops_crit_edge, label %ethnl_update_u32.exit.if.end26_crit_edge

ethnl_update_u32.exit.if.end26_crit_edge:         ; preds = %ethnl_update_u32.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end26

ethnl_update_u32.exit.out_ops_crit_edge:          ; preds = %ethnl_update_u32.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %out_ops

if.end26:                                         ; preds = %ethnl_update_u32.exit.if.end26_crit_edge, %ethnl_update_u32.exit.thread
  %50 = ptrtoint ptr %ethtool_ops to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %ethtool_ops, align 16
  %set_eee28 = getelementptr inbounds %struct.ethtool_ops, ptr %51, i32 0, i32 51
  %52 = ptrtoint ptr %set_eee28 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %set_eee28, align 4
  %call29 = call i32 %53(ptr noundef %12, ptr noundef nonnull %eee) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29)
  %cmp30 = icmp slt i32 %call29, 0
  br i1 %cmp30, label %if.end26.out_ops_crit_edge, label %if.end32

if.end26.out_ops_crit_edge:                       ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #6
  br label %out_ops

if.end32:                                         ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #6
  call void @ethtool_notify(ptr noundef %12, i32 noundef 25, ptr noundef null) #4
  br label %out_ops

out_ops:                                          ; preds = %if.end32, %if.end26.out_ops_crit_edge, %ethnl_update_u32.exit.out_ops_crit_edge, %if.end14.out_ops_crit_edge, %if.end9.out_ops_crit_edge
  %ret.0 = phi i32 [ %call11, %if.end9.out_ops_crit_edge ], [ %call17, %if.end14.out_ops_crit_edge ], [ %call29, %if.end26.out_ops_crit_edge ], [ %call29, %if.end32 ], [ 0, %ethnl_update_u32.exit.out_ops_crit_edge ]
  call void @ethnl_ops_complete(ptr noundef %12) #4
  br label %out_rtnl

out_rtnl:                                         ; preds = %out_ops, %if.end5.out_rtnl_crit_edge
  %ret.1 = phi i32 [ %call6, %if.end5.out_rtnl_crit_edge ], [ %ret.0, %out_ops ]
  call void @rtnl_unlock() #4
  br label %out_dev

out_dev:                                          ; preds = %out_rtnl, %lor.lhs.false.out_dev_crit_edge, %if.end.out_dev_crit_edge
  %ret.2 = phi i32 [ %ret.1, %out_rtnl ], [ -95, %lor.lhs.false.out_dev_crit_edge ], [ -95, %if.end.out_dev_crit_edge ]
  %54 = ptrtoint ptr %req_info to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %req_info, align 4
  %tobool.not.i.i = icmp eq ptr %55, null
  br i1 %tobool.not.i.i, label %out_dev.cleanup_crit_edge, label %do.body1.i.i.i

out_dev.cleanup_crit_edge:                        ; preds = %out_dev
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

do.body1.i.i.i:                                   ; preds = %out_dev
  %dev_tracker.i = getelementptr inbounds %struct.ethnl_req_info, ptr %req_info, i32 0, i32 1
  %refcnt_tracker.i.i.i = getelementptr inbounds %struct.net_device, ptr %55, i32 0, i32 119
  %call.i.i.i = call i32 @ref_tracker_free(ptr noundef %refcnt_tracker.i.i.i, ptr noundef %dev_tracker.i) #4
  %56 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #4, !srcloc !16
  %pcpu_refcnt.i.i.i = getelementptr inbounds %struct.net_device, ptr %55, i32 0, i32 118
  %57 = ptrtoint ptr %pcpu_refcnt.i.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %pcpu_refcnt.i.i.i, align 4
  %59 = ptrtoint ptr %58 to i32
  %60 = call i32 @llvm.read_register.i32(metadata !6) #4
  %and.i.i.i.i = and i32 %60, -16384
  %61 = inttoptr i32 %and.i.i.i.i to ptr
  %cpu.i.i.i = getelementptr inbounds %struct.thread_info, ptr %61, i32 0, i32 3
  %62 = ptrtoint ptr %cpu.i.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %cpu.i.i.i, align 4
  %arrayidx.i.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %63
  %64 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %arrayidx.i.i.i, align 4
  %add.i.i.i = add i32 %65, %59
  %66 = inttoptr i32 %add.i.i.i to ptr
  %67 = ptrtoint ptr %66 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %66, align 4
  %add13.i.i.i = add i32 %68, -1
  store i32 %add13.i.i.i, ptr %66, align 4
  %69 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #4, !srcloc !17
  %and.i.i.i.i.i = and i32 %69, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i.i)
  %tobool24.not.i.i.i = icmp eq i32 %and.i.i.i.i.i, 0
  br i1 %tobool24.not.i.i.i, label %if.then28.i.i.i, label %do.body1.i.i.i.dev_put.exit.i.i_crit_edge, !prof !18

do.body1.i.i.i.dev_put.exit.i.i_crit_edge:        ; preds = %do.body1.i.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %dev_put.exit.i.i

if.then28.i.i.i:                                  ; preds = %do.body1.i.i.i
  call void @__sanitizer_cov_trace_pc() #6
  call void @warn_bogus_irq_restore() #4
  br label %dev_put.exit.i.i

dev_put.exit.i.i:                                 ; preds = %if.then28.i.i.i, %do.body1.i.i.i.dev_put.exit.i.i_crit_edge
  call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %56) #4, !srcloc !19
  br label %cleanup

cleanup:                                          ; preds = %dev_put.exit.i.i, %out_dev.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %entry.cleanup_crit_edge ], [ %ret.2, %out_dev.cleanup_crit_edge ], [ %ret.2, %dev_put.exit.i.i ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %mod) #4
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %eee) #4
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %req_info) #4
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ethnl_parse_header_dev_get(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtnl_lock() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ethnl_ops_begin(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ethnl_update_bitset32(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ethtool_notify(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

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
declare dso_local i32 @nla_put(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ref_tracker_free(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_bogus_irq_restore() local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

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
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 3)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 3)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind readonly }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4}
!llvm.named.register.sp = !{!6}
!llvm.module.flags = !{!7, !8, !9, !10, !11, !12, !13, !14}
!llvm.ident = !{!15}

!0 = !{ptr @ethnl_eee_get_policy, !1, !"ethnl_eee_get_policy", i1 false, i1 false}
!1 = !{!"../net/ethtool/eee.c", i32 22, i32 25}
!2 = !{ptr @ethnl_eee_request_ops, !3, !"ethnl_eee_request_ops", i1 false, i1 false}
!3 = !{!"../net/ethtool/eee.c", i32 111, i32 32}
!4 = !{ptr @ethnl_eee_set_policy, !5, !"ethnl_eee_set_policy", i1 false, i1 false}
!5 = !{!"../net/ethtool/eee.c", i32 125, i32 25}
!6 = !{!"sp"}
!7 = !{i32 1, !"wchar_size", i32 2}
!8 = !{i32 1, !"min_enum_size", i32 4}
!9 = !{i32 8, !"branch-target-enforcement", i32 0}
!10 = !{i32 8, !"sign-return-address", i32 0}
!11 = !{i32 8, !"sign-return-address-all", i32 0}
!12 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!13 = !{i32 7, !"uwtable", i32 1}
!14 = !{i32 7, !"frame-pointer", i32 2}
!15 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!16 = !{i64 656849, i64 656910}
!17 = !{i64 659581}
!18 = !{!"branch_weights", i32 1, i32 2000}
!19 = !{i64 659866}
