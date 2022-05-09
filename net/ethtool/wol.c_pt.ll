; ModuleID = '/llk/IR_all_yes/net/ethtool/wol.c_pt.bc'
source_filename = "../net/ethtool/wol.c"
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
%struct.wol_reply_data = type { %struct.ethnl_reply_data, %struct.ethtool_wolinfo, i8 }
%struct.ethnl_reply_data = type { ptr }
%struct.ethtool_wolinfo = type { i32, i32, i32, [6 x i8] }
%struct.ethnl_req_info = type { ptr, ptr, i32 }
%struct.genl_info = type { i32, i32, ptr, ptr, ptr, ptr, %struct.possible_net_t, [2 x ptr], ptr }
%struct.netlink_ext_ack = type { ptr, ptr, ptr, [20 x i8], i8 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }

@ethnl_header_policy = external dso_local constant [4 x %struct.nla_policy], align 4
@ethnl_wol_get_policy = dso_local constant { <{ %struct.nla_policy, { i8, i8, i16, { ptr } } }>, [16 x i8] } { <{ %struct.nla_policy, { i8, i8, i16, { ptr } } }> <{ %struct.nla_policy zeroinitializer, { i8, i8, i16, { ptr } } { i8 8, i8 0, i16 3, { ptr } { ptr @ethnl_header_policy } } }>, [16 x i8] zeroinitializer }, align 32
@ethnl_wol_request_ops = dso_local constant { %struct.ethnl_request_ops, [60 x i8] } { %struct.ethnl_request_ops { i8 9, i8 9, i16 1, i32 12, i32 28, i8 0, ptr null, ptr @wol_prepare_data, ptr @wol_reply_size, ptr @wol_fill_reply, ptr null }, [60 x i8] zeroinitializer }, align 32
@ethnl_wol_set_policy = dso_local constant { <{ %struct.nla_policy, { i8, i8, i16, { ptr } }, %struct.nla_policy, %struct.nla_policy }>, [32 x i8] } { <{ %struct.nla_policy, { i8, i8, i16, { ptr } }, %struct.nla_policy, %struct.nla_policy }> <{ %struct.nla_policy zeroinitializer, { i8, i8, i16, { ptr } } { i8 8, i8 0, i16 3, { ptr } { ptr @ethnl_header_policy } }, %struct.nla_policy { i8 8, i8 0, i16 0, %union.anon zeroinitializer }, %struct.nla_policy { i8 11, i8 0, i16 6, %union.anon zeroinitializer } }>, [32 x i8] zeroinitializer }, align 32
@__const.ethnl_set_wol.wol = private unnamed_addr constant { i32, i32, i32, [6 x i8], [2 x i8] } { i32 5, i32 0, i32 0, [6 x i8] zeroinitializer, [2 x i8] zeroinitializer }, align 4
@wol_mode_names = external dso_local constant [0 x [32 x i8]], align 1
@ethnl_set_wol.__msg = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"cannot enable unsupported WoL mode\00", [61 x i8] zeroinitializer }, align 32
@ethnl_set_wol.__msg.1 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"magicsecure not supported, cannot set password\00", [49 x i8] zeroinitializer }, align 32
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@___asan_gen_.2 = private unnamed_addr constant [21 x i8] c"ethnl_wol_get_policy\00", align 1
@___asan_gen_.4 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.15, i32 20, i32 25 }
@___asan_gen_.5 = private unnamed_addr constant [22 x i8] c"ethnl_wol_request_ops\00", align 1
@___asan_gen_.7 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.15, i32 85, i32 32 }
@___asan_gen_.8 = private unnamed_addr constant [21 x i8] c"ethnl_wol_set_policy\00", align 1
@___asan_gen_.10 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.15, i32 99, i32 25 }
@___asan_gen_.13 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.15, i32 138, i32 3 }
@___asan_gen_.14 = private unnamed_addr constant [6 x i8] c"__msg\00", align 1
@___asan_gen_.15 = private constant [21 x i8] c"../net/ethtool/wol.c\00", align 1
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.15, i32 145, i32 4 }
@llvm.compiler.used = appending global [5 x ptr] [ptr @ethnl_wol_get_policy, ptr @ethnl_wol_request_ops, ptr @ethnl_wol_set_policy, ptr @ethnl_set_wol.__msg, ptr @ethnl_set_wol.__msg.1], section "llvm.metadata"
@0 = internal global [5 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ethnl_wol_get_policy to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.2 to i32), i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ethnl_wol_request_ops to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ethnl_wol_set_policy to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ethnl_set_wol.__msg to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ethnl_set_wol.__msg.1 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wol_prepare_data(ptr nocapture noundef readnone %req_base, ptr noundef %reply_base, ptr noundef readnone %info) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %reply_base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %reply_base, align 4
  %ethtool_ops = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 44
  %2 = ptrtoint ptr %ethtool_ops to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ethtool_ops, align 16
  %get_wol = getelementptr inbounds %struct.ethtool_ops, ptr %3, i32 0, i32 6
  %4 = ptrtoint ptr %get_wol to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %get_wol, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %call = tail call i32 @ethnl_ops_begin(ptr noundef %1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %6 = ptrtoint ptr %ethtool_ops to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ethtool_ops, align 16
  %get_wol5 = getelementptr inbounds %struct.ethtool_ops, ptr %7, i32 0, i32 6
  %8 = ptrtoint ptr %get_wol5 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %get_wol5, align 4
  %wol = getelementptr inbounds %struct.wol_reply_data, ptr %reply_base, i32 0, i32 1
  tail call void %9(ptr noundef %1, ptr noundef %wol) #6
  tail call void @ethnl_ops_complete(ptr noundef %1) #6
  %tobool6.not = icmp eq ptr %info, null
  br i1 %tobool6.not, label %if.end3.land.end_crit_edge, label %land.rhs

if.end3.land.end_crit_edge:                       ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.end

land.rhs:                                         ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #8
  %supported = getelementptr inbounds %struct.wol_reply_data, ptr %reply_base, i32 0, i32 1, i32 1
  %10 = ptrtoint ptr %supported to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %supported, align 4
  %and = and i32 %11, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool8 = icmp ne i32 %and, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %if.end3.land.end_crit_edge
  %12 = phi i1 [ false, %if.end3.land.end_crit_edge ], [ %tobool8, %land.rhs ]
  %show_sopass = getelementptr inbounds %struct.wol_reply_data, ptr %reply_base, i32 0, i32 2
  %frombool = zext i1 %12 to i8
  %13 = ptrtoint ptr %show_sopass to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %frombool, ptr %show_sopass, align 4
  br label %cleanup

cleanup:                                          ; preds = %land.end, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %land.end ], [ -95, %entry.cleanup_crit_edge ], [ %call, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wol_reply_size(ptr nocapture noundef readonly %req_base, ptr noundef %reply_base) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %flags = getelementptr inbounds %struct.ethnl_req_info, ptr %req_base, i32 0, i32 2
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags, align 4
  %and = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool = icmp ne i32 %and, 0
  %wolopts = getelementptr inbounds %struct.wol_reply_data, ptr %reply_base, i32 0, i32 1, i32 2
  %supported = getelementptr inbounds %struct.wol_reply_data, ptr %reply_base, i32 0, i32 1, i32 1
  %call = tail call i32 @ethnl_bitset32_size(ptr noundef %wolopts, ptr noundef %supported, i32 noundef 8, ptr noundef nonnull @wol_mode_names, i1 noundef zeroext %tobool) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %show_sopass = getelementptr inbounds %struct.wol_reply_data, ptr %reply_base, i32 0, i32 2
  %2 = ptrtoint ptr %show_sopass to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %show_sopass, align 4, !range !20
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool3.not = icmp eq i8 %3, 0
  %add = add nuw i32 %call, 12
  %spec.select = select i1 %tobool3.not, i32 %call, i32 %add
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ %spec.select, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wol_fill_reply(ptr noundef %skb, ptr nocapture noundef readonly %req_base, ptr noundef %reply_base) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %flags = getelementptr inbounds %struct.ethnl_req_info, ptr %req_base, i32 0, i32 2
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags, align 4
  %and = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool = icmp ne i32 %and, 0
  %wolopts = getelementptr inbounds %struct.wol_reply_data, ptr %reply_base, i32 0, i32 1, i32 2
  %supported = getelementptr inbounds %struct.wol_reply_data, ptr %reply_base, i32 0, i32 1, i32 1
  %call = tail call i32 @ethnl_put_bitset32(ptr noundef %skb, i32 noundef 2, ptr noundef %wolopts, ptr noundef %supported, i32 noundef 8, ptr noundef nonnull @wol_mode_names, i1 noundef zeroext %tobool) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %show_sopass = getelementptr inbounds %struct.wol_reply_data, ptr %reply_base, i32 0, i32 2
  %2 = ptrtoint ptr %show_sopass to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %show_sopass, align 4, !range !20
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool3.not = icmp eq i8 %3, 0
  br i1 %tobool3.not, label %if.end.if.end8_crit_edge, label %land.lhs.true

if.end.if.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end8

land.lhs.true:                                    ; preds = %if.end
  %sopass = getelementptr inbounds %struct.wol_reply_data, ptr %reply_base, i32 0, i32 1, i32 3
  %call5 = tail call i32 @nla_put(ptr noundef %skb, i32 noundef 3, i32 noundef 6, ptr noundef %sopass) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %land.lhs.true.if.end8_crit_edge, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

land.lhs.true.if.end8_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end8

if.end8:                                          ; preds = %land.lhs.true.if.end8_crit_edge, %if.end.if.end8_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %if.end8, %land.lhs.true.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end8 ], [ %call, %entry.cleanup_crit_edge ], [ -90, %land.lhs.true.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ethnl_set_wol(ptr nocapture noundef readnone %skb, ptr nocapture noundef readonly %info) local_unnamed_addr #0 align 64 {
entry:
  %wol = alloca %struct.ethtool_wolinfo, align 4
  %req_info = alloca %struct.ethnl_req_info, align 4
  %mod = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %wol) #6
  %0 = call ptr @memcpy(ptr %wol, ptr @__const.ethnl_set_wol.wol, i32 20)
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %req_info) #6
  %1 = call ptr @memset(ptr %req_info, i32 0, i32 12)
  %attrs = getelementptr inbounds %struct.genl_info, ptr %info, i32 0, i32 5
  %2 = ptrtoint ptr %attrs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %attrs, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %mod) #6
  %4 = ptrtoint ptr %mod to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %mod, align 1
  %arrayidx = getelementptr ptr, ptr %3, i32 1
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
  %call1 = call i32 @ethnl_parse_header_dev_get(ptr noundef nonnull %req_info, ptr noundef %6, ptr noundef %8, ptr noundef %10, i1 noundef zeroext true) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %11 = ptrtoint ptr %req_info to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %req_info, align 4
  %ethtool_ops = getelementptr inbounds %struct.net_device, ptr %12, i32 0, i32 44
  %13 = ptrtoint ptr %ethtool_ops to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %ethtool_ops, align 16
  %get_wol = getelementptr inbounds %struct.ethtool_ops, ptr %14, i32 0, i32 6
  %15 = ptrtoint ptr %get_wol to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %get_wol, align 4
  %tobool.not = icmp eq ptr %16, null
  br i1 %tobool.not, label %if.end.out_dev_crit_edge, label %lor.lhs.false

if.end.out_dev_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %out_dev

lor.lhs.false:                                    ; preds = %if.end
  %set_wol = getelementptr inbounds %struct.ethtool_ops, ptr %14, i32 0, i32 7
  %17 = ptrtoint ptr %set_wol to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %set_wol, align 4
  %tobool4.not = icmp eq ptr %18, null
  br i1 %tobool4.not, label %lor.lhs.false.out_dev_crit_edge, label %if.end6

lor.lhs.false.out_dev_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %out_dev

if.end6:                                          ; preds = %lor.lhs.false
  call void @rtnl_lock() #6
  %call7 = call i32 @ethnl_ops_begin(ptr noundef %12) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %cmp8 = icmp slt i32 %call7, 0
  br i1 %cmp8, label %if.end6.out_rtnl_crit_edge, label %if.end10

if.end6.out_rtnl_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  br label %out_rtnl

if.end10:                                         ; preds = %if.end6
  %19 = ptrtoint ptr %ethtool_ops to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %ethtool_ops, align 16
  %get_wol12 = getelementptr inbounds %struct.ethtool_ops, ptr %20, i32 0, i32 6
  %21 = ptrtoint ptr %get_wol12 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %get_wol12, align 4
  call void %22(ptr noundef %12, ptr noundef nonnull %wol) #6
  %wolopts = getelementptr inbounds %struct.ethtool_wolinfo, ptr %wol, i32 0, i32 2
  %arrayidx13 = getelementptr ptr, ptr %3, i32 2
  %23 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %arrayidx13, align 4
  %25 = ptrtoint ptr %extack to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %extack, align 4
  %call15 = call i32 @ethnl_update_bitset32(ptr noundef %wolopts, i32 noundef 8, ptr noundef %24, ptr noundef nonnull @wol_mode_names, ptr noundef %26, ptr noundef nonnull %mod) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %cmp16 = icmp slt i32 %call15, 0
  br i1 %cmp16, label %if.end10.out_ops_crit_edge, label %if.end18

if.end10.out_ops_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #8
  br label %out_ops

if.end18:                                         ; preds = %if.end10
  %27 = ptrtoint ptr %wolopts to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %wolopts, align 4
  %supported = getelementptr inbounds %struct.ethtool_wolinfo, ptr %wol, i32 0, i32 1
  %29 = ptrtoint ptr %supported to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %supported, align 4
  %neg = xor i32 %30, -1
  %and = and i32 %28, %neg
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool20.not = icmp eq i32 %and, 0
  br i1 %tobool20.not, label %if.end27, label %do.body

do.body:                                          ; preds = %if.end18
  %31 = ptrtoint ptr %extack to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %extack, align 4
  call void @do_trace_netlink_extack(ptr noundef nonnull @ethnl_set_wol.__msg) #6
  %tobool23.not = icmp eq ptr %32, null
  br i1 %tobool23.not, label %do.body.out_ops_crit_edge, label %if.then24

do.body.out_ops_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %out_ops

if.then24:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  %33 = ptrtoint ptr %32 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr @ethnl_set_wol.__msg, ptr %32, align 4
  %34 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %arrayidx13, align 4
  %bad_attr = getelementptr inbounds %struct.netlink_ext_ack, ptr %32, i32 0, i32 1
  %36 = ptrtoint ptr %bad_attr to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %35, ptr %bad_attr, align 4
  %policy = getelementptr inbounds %struct.netlink_ext_ack, ptr %32, i32 0, i32 2
  %37 = ptrtoint ptr %policy to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr null, ptr %policy, align 4
  br label %out_ops

if.end27:                                         ; preds = %if.end18
  %arrayidx28 = getelementptr ptr, ptr %3, i32 3
  %38 = ptrtoint ptr %arrayidx28 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %arrayidx28, align 4
  %tobool29.not = icmp eq ptr %39, null
  br i1 %tobool29.not, label %if.end27.if.end49_crit_edge, label %if.then30

if.end27.if.end49_crit_edge:                      ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end49

if.then30:                                        ; preds = %if.end27
  %and32 = and i32 %30, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and32)
  %tobool33.not = icmp eq i32 %and32, 0
  br i1 %tobool33.not, label %do.body35, label %if.end.i

do.body35:                                        ; preds = %if.then30
  %40 = ptrtoint ptr %extack to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %extack, align 4
  call void @do_trace_netlink_extack(ptr noundef nonnull @ethnl_set_wol.__msg.1) #6
  %tobool38.not = icmp eq ptr %41, null
  br i1 %tobool38.not, label %do.body35.out_ops_crit_edge, label %if.then39

do.body35.out_ops_crit_edge:                      ; preds = %do.body35
  call void @__sanitizer_cov_trace_pc() #8
  br label %out_ops

if.then39:                                        ; preds = %do.body35
  call void @__sanitizer_cov_trace_pc() #8
  %42 = ptrtoint ptr %41 to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr @ethnl_set_wol.__msg.1, ptr %41, align 4
  %43 = ptrtoint ptr %arrayidx28 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %arrayidx28, align 4
  %bad_attr42 = getelementptr inbounds %struct.netlink_ext_ack, ptr %41, i32 0, i32 1
  %45 = ptrtoint ptr %bad_attr42 to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %44, ptr %bad_attr42, align 4
  %policy43 = getelementptr inbounds %struct.netlink_ext_ack, ptr %41, i32 0, i32 2
  %46 = ptrtoint ptr %policy43 to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr null, ptr %policy43, align 4
  br label %out_ops

if.end.i:                                         ; preds = %if.then30
  %sopass = getelementptr inbounds %struct.ethtool_wolinfo, ptr %wol, i32 0, i32 3
  %47 = ptrtoint ptr %39 to i32
  call void @__asan_load2_noabort(i32 %47)
  %48 = load i16, ptr %39, align 2
  %conv.i.i = zext i16 %48 to i32
  %sub.i.i = add nsw i32 %conv.i.i, -4
  %49 = call i32 @llvm.umin.i32(i32 %sub.i.i, i32 6) #6
  %add.ptr.i.i = getelementptr i8, ptr %39, i32 4
  %bcmp.i = call i32 @bcmp(ptr %sopass, ptr %add.ptr.i.i, i32 %49) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i)
  %tobool6.not.i = icmp eq i32 %bcmp.i, 0
  br i1 %tobool6.not.i, label %if.end.i.if.end49_crit_edge, label %if.end49.thread

if.end.i.if.end49_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end49

if.end49.thread:                                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %50 = call ptr @memcpy(ptr %sopass, ptr %add.ptr.i.i, i32 %49)
  %51 = ptrtoint ptr %mod to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 1, ptr %mod, align 1
  br label %if.end52

if.end49:                                         ; preds = %if.end.i.if.end49_crit_edge, %if.end27.if.end49_crit_edge
  %52 = ptrtoint ptr %mod to i32
  call void @__asan_load1_noabort(i32 %52)
  %.pr = load i8, ptr %mod, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %.pr)
  %tobool50.not = icmp eq i8 %.pr, 0
  br i1 %tobool50.not, label %if.end49.out_ops_crit_edge, label %if.end49.if.end52_crit_edge

if.end49.if.end52_crit_edge:                      ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end52

if.end49.out_ops_crit_edge:                       ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #8
  br label %out_ops

if.end52:                                         ; preds = %if.end49.if.end52_crit_edge, %if.end49.thread
  %53 = ptrtoint ptr %ethtool_ops to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %ethtool_ops, align 16
  %set_wol54 = getelementptr inbounds %struct.ethtool_ops, ptr %54, i32 0, i32 7
  %55 = ptrtoint ptr %set_wol54 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %set_wol54, align 4
  %call55 = call i32 %56(ptr noundef %12, ptr noundef nonnull %wol) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call55)
  %tobool56.not = icmp eq i32 %call55, 0
  br i1 %tobool56.not, label %if.end58, label %if.end52.out_ops_crit_edge

if.end52.out_ops_crit_edge:                       ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #8
  br label %out_ops

if.end58:                                         ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #8
  %57 = ptrtoint ptr %wolopts to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %wolopts, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %58)
  %tobool60.not = icmp eq i32 %58, 0
  %wol_enabled = getelementptr inbounds %struct.net_device, ptr %12, i32 0, i32 149
  %59 = ptrtoint ptr %wol_enabled to i32
  call void @__asan_load1_noabort(i32 %59)
  %bf.load = load i8, ptr %wol_enabled, align 1
  %bf.shl = select i1 %tobool60.not, i8 0, i8 -128
  %bf.clear = and i8 %bf.load, 127
  %bf.set = or i8 %bf.clear, %bf.shl
  store i8 %bf.set, ptr %wol_enabled, align 1
  call void @ethtool_notify(ptr noundef %12, i32 noundef 10, ptr noundef null) #6
  br label %out_ops

out_ops:                                          ; preds = %if.end58, %if.end52.out_ops_crit_edge, %if.end49.out_ops_crit_edge, %if.then39, %do.body35.out_ops_crit_edge, %if.then24, %do.body.out_ops_crit_edge, %if.end10.out_ops_crit_edge
  %ret.0 = phi i32 [ %call15, %if.end10.out_ops_crit_edge ], [ %call55, %if.end52.out_ops_crit_edge ], [ 0, %if.end58 ], [ %call15, %if.end49.out_ops_crit_edge ], [ -22, %if.then24 ], [ -22, %do.body.out_ops_crit_edge ], [ -22, %if.then39 ], [ -22, %do.body35.out_ops_crit_edge ]
  call void @ethnl_ops_complete(ptr noundef %12) #6
  br label %out_rtnl

out_rtnl:                                         ; preds = %out_ops, %if.end6.out_rtnl_crit_edge
  %ret.1 = phi i32 [ %call7, %if.end6.out_rtnl_crit_edge ], [ %ret.0, %out_ops ]
  call void @rtnl_unlock() #6
  br label %out_dev

out_dev:                                          ; preds = %out_rtnl, %lor.lhs.false.out_dev_crit_edge, %if.end.out_dev_crit_edge
  %ret.2 = phi i32 [ %ret.1, %out_rtnl ], [ -95, %lor.lhs.false.out_dev_crit_edge ], [ -95, %if.end.out_dev_crit_edge ]
  %60 = ptrtoint ptr %req_info to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %req_info, align 4
  %tobool.not.i.i = icmp eq ptr %61, null
  br i1 %tobool.not.i.i, label %out_dev.cleanup_crit_edge, label %do.body1.i.i.i

out_dev.cleanup_crit_edge:                        ; preds = %out_dev
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.body1.i.i.i:                                   ; preds = %out_dev
  %dev_tracker.i = getelementptr inbounds %struct.ethnl_req_info, ptr %req_info, i32 0, i32 1
  %refcnt_tracker.i.i.i = getelementptr inbounds %struct.net_device, ptr %61, i32 0, i32 119
  %call.i.i.i = call i32 @ref_tracker_free(ptr noundef %refcnt_tracker.i.i.i, ptr noundef %dev_tracker.i) #6
  %62 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #6, !srcloc !21
  %pcpu_refcnt.i.i.i = getelementptr inbounds %struct.net_device, ptr %61, i32 0, i32 118
  %63 = ptrtoint ptr %pcpu_refcnt.i.i.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %pcpu_refcnt.i.i.i, align 4
  %65 = ptrtoint ptr %64 to i32
  %66 = call i32 @llvm.read_register.i32(metadata !10) #6
  %and.i.i.i.i = and i32 %66, -16384
  %67 = inttoptr i32 %and.i.i.i.i to ptr
  %cpu.i.i.i = getelementptr inbounds %struct.thread_info, ptr %67, i32 0, i32 3
  %68 = ptrtoint ptr %cpu.i.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %cpu.i.i.i, align 4
  %arrayidx.i.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %69
  %70 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %arrayidx.i.i.i, align 4
  %add.i.i.i = add i32 %71, %65
  %72 = inttoptr i32 %add.i.i.i to ptr
  %73 = ptrtoint ptr %72 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %72, align 4
  %add13.i.i.i = add i32 %74, -1
  store i32 %add13.i.i.i, ptr %72, align 4
  %75 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #6, !srcloc !22
  %and.i.i.i.i.i = and i32 %75, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i.i)
  %tobool24.not.i.i.i = icmp eq i32 %and.i.i.i.i.i, 0
  br i1 %tobool24.not.i.i.i, label %if.then28.i.i.i, label %do.body1.i.i.i.dev_put.exit.i.i_crit_edge, !prof !23

do.body1.i.i.i.dev_put.exit.i.i_crit_edge:        ; preds = %do.body1.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %dev_put.exit.i.i

if.then28.i.i.i:                                  ; preds = %do.body1.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @warn_bogus_irq_restore() #6
  br label %dev_put.exit.i.i

dev_put.exit.i.i:                                 ; preds = %if.then28.i.i.i, %do.body1.i.i.i.dev_put.exit.i.i_crit_edge
  call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %62) #6, !srcloc !24
  br label %cleanup

cleanup:                                          ; preds = %dev_put.exit.i.i, %out_dev.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %entry.cleanup_crit_edge ], [ %ret.2, %out_dev.cleanup_crit_edge ], [ %ret.2, %dev_put.exit.i.i ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %mod) #6
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %req_info) #6
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %wol) #6
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
declare dso_local void @do_trace_netlink_extack(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ethtool_notify(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ethnl_ops_complete(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtnl_unlock() local_unnamed_addr #2

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

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 5)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 5)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind readonly }
attributes #4 = { argmemonly nofree nounwind readonly willreturn }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { nobuiltin nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8}
!llvm.named.register.sp = !{!10}
!llvm.module.flags = !{!11, !12, !13, !14, !15, !16, !17, !18}
!llvm.ident = !{!19}

!0 = !{ptr @ethnl_wol_get_policy, !1, !"ethnl_wol_get_policy", i1 false, i1 false}
!1 = !{!"../net/ethtool/wol.c", i32 20, i32 25}
!2 = !{ptr @ethnl_wol_request_ops, !3, !"ethnl_wol_request_ops", i1 false, i1 false}
!3 = !{!"../net/ethtool/wol.c", i32 85, i32 32}
!4 = !{ptr @ethnl_wol_set_policy, !5, !"ethnl_wol_set_policy", i1 false, i1 false}
!5 = !{!"../net/ethtool/wol.c", i32 99, i32 25}
!6 = !{ptr @ethnl_set_wol.__msg, !7, !"__msg", i1 false, i1 false}
!7 = !{!"../net/ethtool/wol.c", i32 138, i32 3}
!8 = !{ptr @ethnl_set_wol.__msg.1, !9, !"__msg", i1 false, i1 false}
!9 = !{!"../net/ethtool/wol.c", i32 145, i32 4}
!10 = !{!"sp"}
!11 = !{i32 1, !"wchar_size", i32 2}
!12 = !{i32 1, !"min_enum_size", i32 4}
!13 = !{i32 8, !"branch-target-enforcement", i32 0}
!14 = !{i32 8, !"sign-return-address", i32 0}
!15 = !{i32 8, !"sign-return-address-all", i32 0}
!16 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!17 = !{i32 7, !"uwtable", i32 1}
!18 = !{i32 7, !"frame-pointer", i32 2}
!19 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!20 = !{i8 0, i8 2}
!21 = !{i64 656117, i64 656178}
!22 = !{i64 658849}
!23 = !{!"branch_weights", i32 1, i32 2000}
!24 = !{i64 659134}
