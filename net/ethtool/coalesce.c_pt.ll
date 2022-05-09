; ModuleID = '/llk/IR_all_yes/net/ethtool/coalesce.c_pt.bc'
source_filename = "../net/ethtool/coalesce.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.nla_policy = type { i8, i8, i16, %union.anon }
%union.anon = type { i32 }
%struct.ethnl_request_ops = type { i8, i8, i16, i32, i32, i8, ptr, ptr, ptr, ptr, ptr }
%struct.anon = type { i16, i16 }
%struct.genl_info = type { i32, i32, ptr, ptr, ptr, ptr, %struct.possible_net_t, [2 x ptr], ptr }
%struct.possible_net_t = type { ptr }
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
%struct.coalesce_reply_data = type { %struct.ethnl_reply_data, %struct.ethtool_coalesce, %struct.kernel_ethtool_coalesce, i32 }
%struct.ethnl_reply_data = type { ptr }
%struct.ethtool_coalesce = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.kernel_ethtool_coalesce = type { i8, i8 }
%struct.ethnl_req_info = type { ptr, ptr, i32 }
%struct.netlink_ext_ack = type { ptr, ptr, ptr, [20 x i8], i8 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }

@ethnl_header_policy = external dso_local constant [4 x %struct.nla_policy], align 4
@ethnl_coalesce_get_policy = dso_local constant { <{ %struct.nla_policy, { i8, i8, i16, { ptr } } }>, [16 x i8] } { <{ %struct.nla_policy, { i8, i8, i16, { ptr } } }> <{ %struct.nla_policy zeroinitializer, { i8, i8, i16, { ptr } } { i8 8, i8 0, i16 3, { ptr } { ptr @ethnl_header_policy } } }>, [16 x i8] zeroinitializer }, align 32
@ethnl_coalesce_request_ops = dso_local constant { %struct.ethnl_request_ops, [60 x i8] } { %struct.ethnl_request_ops { i8 19, i8 20, i16 1, i32 12, i32 104, i8 0, ptr null, ptr @coalesce_prepare_data, ptr @coalesce_reply_size, ptr @coalesce_fill_reply, ptr null }, [60 x i8] zeroinitializer }, align 32
@ethnl_coalesce_set_policy = dso_local constant { <{ %struct.nla_policy, { i8, i8, i16, { ptr } }, %struct.nla_policy, %struct.nla_policy, %struct.nla_policy, %struct.nla_policy, %struct.nla_policy, %struct.nla_policy, %struct.nla_policy, %struct.nla_policy, %struct.nla_policy, %struct.nla_policy, %struct.nla_policy, %struct.nla_policy, %struct.nla_policy, %struct.nla_policy, %struct.nla_policy, %struct.nla_policy, %struct.nla_policy, %struct.nla_policy, %struct.nla_policy, %struct.nla_policy, %struct.nla_policy, %struct.nla_policy, { i8, i8, i16, { %struct.anon } }, { i8, i8, i16, { %struct.anon } } }>, [48 x i8] } { <{ %struct.nla_policy, { i8, i8, i16, { ptr } }, %struct.nla_policy, %struct.nla_policy, %struct.nla_policy, %struct.nla_policy, %struct.nla_policy, %struct.nla_policy, %struct.nla_policy, %struct.nla_policy, %struct.nla_policy, %struct.nla_policy, %struct.nla_policy, %struct.nla_policy, %struct.nla_policy, %struct.nla_policy, %struct.nla_policy, %struct.nla_policy, %struct.nla_policy, %struct.nla_policy, %struct.nla_policy, %struct.nla_policy, %struct.nla_policy, %struct.nla_policy, { i8, i8, i16, { %struct.anon } }, { i8, i8, i16, { %struct.anon } } }> <{ %struct.nla_policy zeroinitializer, { i8, i8, i16, { ptr } } { i8 8, i8 0, i16 3, { ptr } { ptr @ethnl_header_policy } }, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon zeroinitializer }, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon zeroinitializer }, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon zeroinitializer }, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon zeroinitializer }, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon zeroinitializer }, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon zeroinitializer }, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon zeroinitializer }, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon zeroinitializer }, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon zeroinitializer }, %struct.nla_policy { i8 1, i8 0, i16 0, %union.anon zeroinitializer }, %struct.nla_policy { i8 1, i8 0, i16 0, %union.anon zeroinitializer }, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon zeroinitializer }, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon zeroinitializer }, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon zeroinitializer }, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon zeroinitializer }, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon zeroinitializer }, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon zeroinitializer }, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon zeroinitializer }, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon zeroinitializer }, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon zeroinitializer }, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon zeroinitializer }, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon zeroinitializer }, { i8, i8, i16, { %struct.anon } } { i8 1, i8 4, i16 0, { %struct.anon } { %struct.anon { i16 0, i16 1 } } }, { i8, i8, i16, { %struct.anon } } { i8 1, i8 4, i16 0, { %struct.anon } { %struct.anon { i16 0, i16 1 } } } }>, [48 x i8] zeroinitializer }, align 32
@ethnl_set_coalesce.__msg = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"cannot modify an unsupported parameter\00", [57 x i8] zeroinitializer }, align 32
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@___asan_gen_.1 = private unnamed_addr constant [26 x i8] c"ethnl_coalesce_get_policy\00", align 1
@___asan_gen_.3 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.11, i32 55, i32 25 }
@___asan_gen_.4 = private unnamed_addr constant [27 x i8] c"ethnl_coalesce_request_ops\00", align 1
@___asan_gen_.6 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.11, i32 189, i32 32 }
@___asan_gen_.7 = private unnamed_addr constant [26 x i8] c"ethnl_coalesce_set_policy\00", align 1
@___asan_gen_.9 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.11, i32 203, i32 25 }
@___asan_gen_.10 = private unnamed_addr constant [6 x i8] c"__msg\00", align 1
@___asan_gen_.11 = private constant [26 x i8] c"../net/ethtool/coalesce.c\00", align 1
@___asan_gen_.12 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.11, i32 262, i32 4 }
@llvm.compiler.used = appending global [4 x ptr] [ptr @ethnl_coalesce_get_policy, ptr @ethnl_coalesce_request_ops, ptr @ethnl_coalesce_set_policy, ptr @ethnl_set_coalesce.__msg], section "llvm.metadata"
@0 = internal global [4 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ethnl_coalesce_get_policy to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ethnl_coalesce_request_ops to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ethnl_coalesce_set_policy to i32), i32 208, i32 256, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ethnl_set_coalesce.__msg to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @coalesce_prepare_data(ptr nocapture noundef readnone %req_base, ptr noundef %reply_base, ptr noundef readonly %info) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %info, null
  br i1 %tobool.not, label %entry.cond.end_crit_edge, label %cond.true

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end

cond.true:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %extack1 = getelementptr inbounds %struct.genl_info, ptr %info, i32 0, i32 8
  %0 = ptrtoint ptr %extack1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %extack1, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %entry.cond.end_crit_edge
  %cond = phi ptr [ %1, %cond.true ], [ null, %entry.cond.end_crit_edge ]
  %2 = ptrtoint ptr %reply_base to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %reply_base, align 4
  %ethtool_ops = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 44
  %4 = ptrtoint ptr %ethtool_ops to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ethtool_ops, align 16
  %get_coalesce = getelementptr inbounds %struct.ethtool_ops, ptr %5, i32 0, i32 16
  %6 = ptrtoint ptr %get_coalesce to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %get_coalesce, align 4
  %tobool3.not = icmp eq ptr %7, null
  br i1 %tobool3.not, label %cond.end.cleanup_crit_edge, label %if.end

cond.end.cleanup_crit_edge:                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %cond.end
  %supported_coalesce_params = getelementptr inbounds %struct.ethtool_ops, ptr %5, i32 0, i32 1
  %8 = ptrtoint ptr %supported_coalesce_params to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %supported_coalesce_params, align 4
  %supported_params = getelementptr inbounds %struct.coalesce_reply_data, ptr %reply_base, i32 0, i32 3
  %10 = ptrtoint ptr %supported_params to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %supported_params, align 4
  %call = tail call i32 @ethnl_ops_begin(ptr noundef %3) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end6:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %11 = ptrtoint ptr %ethtool_ops to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %ethtool_ops, align 16
  %get_coalesce8 = getelementptr inbounds %struct.ethtool_ops, ptr %12, i32 0, i32 16
  %13 = ptrtoint ptr %get_coalesce8 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %get_coalesce8, align 4
  %coalesce = getelementptr inbounds %struct.coalesce_reply_data, ptr %reply_base, i32 0, i32 1
  %kernel_coalesce = getelementptr inbounds %struct.coalesce_reply_data, ptr %reply_base, i32 0, i32 2
  %call9 = tail call i32 %14(ptr noundef %3, ptr noundef %coalesce, ptr noundef %kernel_coalesce, ptr noundef %cond) #5
  tail call void @ethnl_ops_complete(ptr noundef %3) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %if.end.cleanup_crit_edge, %cond.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %call9, %if.end6 ], [ -95, %cond.end.cleanup_crit_edge ], [ %call, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @coalesce_reply_size(ptr nocapture noundef readnone %req_base, ptr nocapture noundef readnone %reply_base) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 192
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @coalesce_fill_reply(ptr noundef %skb, ptr nocapture noundef readnone %req_base, ptr noundef readonly %reply_base) #0 align 64 {
entry:
  %tmp.i.i302 = alloca i32, align 4
  %tmp.i.i292 = alloca i32, align 4
  %tmp.i.i282 = alloca i32, align 4
  %tmp.i.i272 = alloca i32, align 4
  %tmp.i.i262 = alloca i32, align 4
  %tmp.i.i252 = alloca i32, align 4
  %tmp.i.i242 = alloca i32, align 4
  %tmp.i.i232 = alloca i32, align 4
  %tmp.i.i222 = alloca i32, align 4
  %tmp.i.i212 = alloca i32, align 4
  %tmp.i.i202 = alloca i32, align 4
  %tmp.i.i192 = alloca i32, align 4
  %tmp.i.i182 = alloca i32, align 4
  %tmp.i.i172 = alloca i32, align 4
  %tmp.i.i162 = alloca i32, align 4
  %tmp.i.i152 = alloca i32, align 4
  %tmp.i.i142 = alloca i32, align 4
  %tmp.i.i132 = alloca i32, align 4
  %tmp.i.i122 = alloca i32, align 4
  %tmp.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %kernel_coalesce = getelementptr inbounds %struct.coalesce_reply_data, ptr %reply_base, i32 0, i32 2
  %supported_params = getelementptr inbounds %struct.coalesce_reply_data, ptr %reply_base, i32 0, i32 3
  %0 = ptrtoint ptr %supported_params to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %supported_params, align 4
  %rx_coalesce_usecs = getelementptr inbounds %struct.coalesce_reply_data, ptr %reply_base, i32 0, i32 1, i32 1
  %2 = ptrtoint ptr %rx_coalesce_usecs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %rx_coalesce_usecs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not.i = icmp eq i32 %3, 0
  %and.i = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool1.not.i = icmp eq i32 %and.i, 0
  %or.cond = select i1 %tobool.not.i, i1 %tobool1.not.i, i1 false
  br i1 %or.cond, label %entry.lor.lhs.false_crit_edge, label %coalesce_put_u32.exit

entry.lor.lhs.false_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %lor.lhs.false

coalesce_put_u32.exit:                            ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i.i) #5
  %4 = ptrtoint ptr %tmp.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %tmp.i.i, align 4
  %call.i.i = call i32 @nla_put(ptr noundef %skb, i32 noundef 2, i32 noundef 4, ptr noundef nonnull %tmp.i.i) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool4.i.not = icmp eq i32 %call.i.i, 0
  br i1 %tobool4.i.not, label %coalesce_put_u32.exit.lor.lhs.false_crit_edge, label %coalesce_put_u32.exit.cleanup_crit_edge

coalesce_put_u32.exit.cleanup_crit_edge:          ; preds = %coalesce_put_u32.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

coalesce_put_u32.exit.lor.lhs.false_crit_edge:    ; preds = %coalesce_put_u32.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %lor.lhs.false

lor.lhs.false:                                    ; preds = %coalesce_put_u32.exit.lor.lhs.false_crit_edge, %entry.lor.lhs.false_crit_edge
  %rx_max_coalesced_frames = getelementptr inbounds %struct.coalesce_reply_data, ptr %reply_base, i32 0, i32 1, i32 2
  %5 = ptrtoint ptr %rx_max_coalesced_frames to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %rx_max_coalesced_frames, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not.i123 = icmp eq i32 %6, 0
  %and.i124 = and i32 %1, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i124)
  %tobool1.not.i125 = icmp eq i32 %and.i124, 0
  %or.cond332 = select i1 %tobool.not.i123, i1 %tobool1.not.i125, i1 false
  br i1 %or.cond332, label %lor.lhs.false.lor.lhs.false2_crit_edge, label %coalesce_put_u32.exit131

lor.lhs.false.lor.lhs.false2_crit_edge:           ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %lor.lhs.false2

coalesce_put_u32.exit131:                         ; preds = %lor.lhs.false
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i.i122) #5
  %7 = ptrtoint ptr %tmp.i.i122 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %tmp.i.i122, align 4
  %call.i.i127 = call i32 @nla_put(ptr noundef %skb, i32 noundef 3, i32 noundef 4, ptr noundef nonnull %tmp.i.i122) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i.i122) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i127)
  %tobool4.i128.not = icmp eq i32 %call.i.i127, 0
  br i1 %tobool4.i128.not, label %coalesce_put_u32.exit131.lor.lhs.false2_crit_edge, label %coalesce_put_u32.exit131.cleanup_crit_edge

coalesce_put_u32.exit131.cleanup_crit_edge:       ; preds = %coalesce_put_u32.exit131
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

coalesce_put_u32.exit131.lor.lhs.false2_crit_edge: ; preds = %coalesce_put_u32.exit131
  call void @__sanitizer_cov_trace_pc() #7
  br label %lor.lhs.false2

lor.lhs.false2:                                   ; preds = %coalesce_put_u32.exit131.lor.lhs.false2_crit_edge, %lor.lhs.false.lor.lhs.false2_crit_edge
  %rx_coalesce_usecs_irq = getelementptr inbounds %struct.coalesce_reply_data, ptr %reply_base, i32 0, i32 1, i32 3
  %8 = ptrtoint ptr %rx_coalesce_usecs_irq to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %rx_coalesce_usecs_irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.not.i133 = icmp eq i32 %9, 0
  %and.i134 = and i32 %1, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i134)
  %tobool1.not.i135 = icmp eq i32 %and.i134, 0
  %or.cond333 = select i1 %tobool.not.i133, i1 %tobool1.not.i135, i1 false
  br i1 %or.cond333, label %lor.lhs.false2.lor.lhs.false4_crit_edge, label %coalesce_put_u32.exit141

lor.lhs.false2.lor.lhs.false4_crit_edge:          ; preds = %lor.lhs.false2
  call void @__sanitizer_cov_trace_pc() #7
  br label %lor.lhs.false4

coalesce_put_u32.exit141:                         ; preds = %lor.lhs.false2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i.i132) #5
  %10 = ptrtoint ptr %tmp.i.i132 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %tmp.i.i132, align 4
  %call.i.i137 = call i32 @nla_put(ptr noundef %skb, i32 noundef 4, i32 noundef 4, ptr noundef nonnull %tmp.i.i132) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i.i132) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i137)
  %tobool4.i138.not = icmp eq i32 %call.i.i137, 0
  br i1 %tobool4.i138.not, label %coalesce_put_u32.exit141.lor.lhs.false4_crit_edge, label %coalesce_put_u32.exit141.cleanup_crit_edge

coalesce_put_u32.exit141.cleanup_crit_edge:       ; preds = %coalesce_put_u32.exit141
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

coalesce_put_u32.exit141.lor.lhs.false4_crit_edge: ; preds = %coalesce_put_u32.exit141
  call void @__sanitizer_cov_trace_pc() #7
  br label %lor.lhs.false4

lor.lhs.false4:                                   ; preds = %coalesce_put_u32.exit141.lor.lhs.false4_crit_edge, %lor.lhs.false2.lor.lhs.false4_crit_edge
  %rx_max_coalesced_frames_irq = getelementptr inbounds %struct.coalesce_reply_data, ptr %reply_base, i32 0, i32 1, i32 4
  %11 = ptrtoint ptr %rx_max_coalesced_frames_irq to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %rx_max_coalesced_frames_irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool.not.i143 = icmp eq i32 %12, 0
  %and.i144 = and i32 %1, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i144)
  %tobool1.not.i145 = icmp eq i32 %and.i144, 0
  %or.cond334 = select i1 %tobool.not.i143, i1 %tobool1.not.i145, i1 false
  br i1 %or.cond334, label %lor.lhs.false4.lor.lhs.false6_crit_edge, label %coalesce_put_u32.exit151

lor.lhs.false4.lor.lhs.false6_crit_edge:          ; preds = %lor.lhs.false4
  call void @__sanitizer_cov_trace_pc() #7
  br label %lor.lhs.false6

coalesce_put_u32.exit151:                         ; preds = %lor.lhs.false4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i.i142) #5
  %13 = ptrtoint ptr %tmp.i.i142 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %tmp.i.i142, align 4
  %call.i.i147 = call i32 @nla_put(ptr noundef %skb, i32 noundef 5, i32 noundef 4, ptr noundef nonnull %tmp.i.i142) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i.i142) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i147)
  %tobool4.i148.not = icmp eq i32 %call.i.i147, 0
  br i1 %tobool4.i148.not, label %coalesce_put_u32.exit151.lor.lhs.false6_crit_edge, label %coalesce_put_u32.exit151.cleanup_crit_edge

coalesce_put_u32.exit151.cleanup_crit_edge:       ; preds = %coalesce_put_u32.exit151
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

coalesce_put_u32.exit151.lor.lhs.false6_crit_edge: ; preds = %coalesce_put_u32.exit151
  call void @__sanitizer_cov_trace_pc() #7
  br label %lor.lhs.false6

lor.lhs.false6:                                   ; preds = %coalesce_put_u32.exit151.lor.lhs.false6_crit_edge, %lor.lhs.false4.lor.lhs.false6_crit_edge
  %tx_coalesce_usecs = getelementptr inbounds %struct.coalesce_reply_data, ptr %reply_base, i32 0, i32 1, i32 5
  %14 = ptrtoint ptr %tx_coalesce_usecs to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %tx_coalesce_usecs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool.not.i153 = icmp eq i32 %15, 0
  %and.i154 = and i32 %1, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i154)
  %tobool1.not.i155 = icmp eq i32 %and.i154, 0
  %or.cond335 = select i1 %tobool.not.i153, i1 %tobool1.not.i155, i1 false
  br i1 %or.cond335, label %lor.lhs.false6.lor.lhs.false8_crit_edge, label %coalesce_put_u32.exit161

lor.lhs.false6.lor.lhs.false8_crit_edge:          ; preds = %lor.lhs.false6
  call void @__sanitizer_cov_trace_pc() #7
  br label %lor.lhs.false8

coalesce_put_u32.exit161:                         ; preds = %lor.lhs.false6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i.i152) #5
  %16 = ptrtoint ptr %tmp.i.i152 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %tmp.i.i152, align 4
  %call.i.i157 = call i32 @nla_put(ptr noundef %skb, i32 noundef 6, i32 noundef 4, ptr noundef nonnull %tmp.i.i152) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i.i152) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i157)
  %tobool4.i158.not = icmp eq i32 %call.i.i157, 0
  br i1 %tobool4.i158.not, label %coalesce_put_u32.exit161.lor.lhs.false8_crit_edge, label %coalesce_put_u32.exit161.cleanup_crit_edge

coalesce_put_u32.exit161.cleanup_crit_edge:       ; preds = %coalesce_put_u32.exit161
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

coalesce_put_u32.exit161.lor.lhs.false8_crit_edge: ; preds = %coalesce_put_u32.exit161
  call void @__sanitizer_cov_trace_pc() #7
  br label %lor.lhs.false8

lor.lhs.false8:                                   ; preds = %coalesce_put_u32.exit161.lor.lhs.false8_crit_edge, %lor.lhs.false6.lor.lhs.false8_crit_edge
  %tx_max_coalesced_frames = getelementptr inbounds %struct.coalesce_reply_data, ptr %reply_base, i32 0, i32 1, i32 6
  %17 = ptrtoint ptr %tx_max_coalesced_frames to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %tx_max_coalesced_frames, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool.not.i163 = icmp eq i32 %18, 0
  %and.i164 = and i32 %1, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i164)
  %tobool1.not.i165 = icmp eq i32 %and.i164, 0
  %or.cond336 = select i1 %tobool.not.i163, i1 %tobool1.not.i165, i1 false
  br i1 %or.cond336, label %lor.lhs.false8.lor.lhs.false10_crit_edge, label %coalesce_put_u32.exit171

lor.lhs.false8.lor.lhs.false10_crit_edge:         ; preds = %lor.lhs.false8
  call void @__sanitizer_cov_trace_pc() #7
  br label %lor.lhs.false10

coalesce_put_u32.exit171:                         ; preds = %lor.lhs.false8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i.i162) #5
  %19 = ptrtoint ptr %tmp.i.i162 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %tmp.i.i162, align 4
  %call.i.i167 = call i32 @nla_put(ptr noundef %skb, i32 noundef 7, i32 noundef 4, ptr noundef nonnull %tmp.i.i162) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i.i162) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i167)
  %tobool4.i168.not = icmp eq i32 %call.i.i167, 0
  br i1 %tobool4.i168.not, label %coalesce_put_u32.exit171.lor.lhs.false10_crit_edge, label %coalesce_put_u32.exit171.cleanup_crit_edge

coalesce_put_u32.exit171.cleanup_crit_edge:       ; preds = %coalesce_put_u32.exit171
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

coalesce_put_u32.exit171.lor.lhs.false10_crit_edge: ; preds = %coalesce_put_u32.exit171
  call void @__sanitizer_cov_trace_pc() #7
  br label %lor.lhs.false10

lor.lhs.false10:                                  ; preds = %coalesce_put_u32.exit171.lor.lhs.false10_crit_edge, %lor.lhs.false8.lor.lhs.false10_crit_edge
  %tx_coalesce_usecs_irq = getelementptr inbounds %struct.coalesce_reply_data, ptr %reply_base, i32 0, i32 1, i32 7
  %20 = ptrtoint ptr %tx_coalesce_usecs_irq to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %tx_coalesce_usecs_irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool.not.i173 = icmp eq i32 %21, 0
  %and.i174 = and i32 %1, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i174)
  %tobool1.not.i175 = icmp eq i32 %and.i174, 0
  %or.cond337 = select i1 %tobool.not.i173, i1 %tobool1.not.i175, i1 false
  br i1 %or.cond337, label %lor.lhs.false10.lor.lhs.false12_crit_edge, label %coalesce_put_u32.exit181

lor.lhs.false10.lor.lhs.false12_crit_edge:        ; preds = %lor.lhs.false10
  call void @__sanitizer_cov_trace_pc() #7
  br label %lor.lhs.false12

coalesce_put_u32.exit181:                         ; preds = %lor.lhs.false10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i.i172) #5
  %22 = ptrtoint ptr %tmp.i.i172 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %tmp.i.i172, align 4
  %call.i.i177 = call i32 @nla_put(ptr noundef %skb, i32 noundef 8, i32 noundef 4, ptr noundef nonnull %tmp.i.i172) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i.i172) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i177)
  %tobool4.i178.not = icmp eq i32 %call.i.i177, 0
  br i1 %tobool4.i178.not, label %coalesce_put_u32.exit181.lor.lhs.false12_crit_edge, label %coalesce_put_u32.exit181.cleanup_crit_edge

coalesce_put_u32.exit181.cleanup_crit_edge:       ; preds = %coalesce_put_u32.exit181
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

coalesce_put_u32.exit181.lor.lhs.false12_crit_edge: ; preds = %coalesce_put_u32.exit181
  call void @__sanitizer_cov_trace_pc() #7
  br label %lor.lhs.false12

lor.lhs.false12:                                  ; preds = %coalesce_put_u32.exit181.lor.lhs.false12_crit_edge, %lor.lhs.false10.lor.lhs.false12_crit_edge
  %tx_max_coalesced_frames_irq = getelementptr inbounds %struct.coalesce_reply_data, ptr %reply_base, i32 0, i32 1, i32 8
  %23 = ptrtoint ptr %tx_max_coalesced_frames_irq to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %tx_max_coalesced_frames_irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool.not.i183 = icmp eq i32 %24, 0
  %and.i184 = and i32 %1, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i184)
  %tobool1.not.i185 = icmp eq i32 %and.i184, 0
  %or.cond338 = select i1 %tobool.not.i183, i1 %tobool1.not.i185, i1 false
  br i1 %or.cond338, label %lor.lhs.false12.lor.lhs.false14_crit_edge, label %coalesce_put_u32.exit191

lor.lhs.false12.lor.lhs.false14_crit_edge:        ; preds = %lor.lhs.false12
  call void @__sanitizer_cov_trace_pc() #7
  br label %lor.lhs.false14

coalesce_put_u32.exit191:                         ; preds = %lor.lhs.false12
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i.i182) #5
  %25 = ptrtoint ptr %tmp.i.i182 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %tmp.i.i182, align 4
  %call.i.i187 = call i32 @nla_put(ptr noundef %skb, i32 noundef 9, i32 noundef 4, ptr noundef nonnull %tmp.i.i182) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i.i182) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i187)
  %tobool4.i188.not = icmp eq i32 %call.i.i187, 0
  br i1 %tobool4.i188.not, label %coalesce_put_u32.exit191.lor.lhs.false14_crit_edge, label %coalesce_put_u32.exit191.cleanup_crit_edge

coalesce_put_u32.exit191.cleanup_crit_edge:       ; preds = %coalesce_put_u32.exit191
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

coalesce_put_u32.exit191.lor.lhs.false14_crit_edge: ; preds = %coalesce_put_u32.exit191
  call void @__sanitizer_cov_trace_pc() #7
  br label %lor.lhs.false14

lor.lhs.false14:                                  ; preds = %coalesce_put_u32.exit191.lor.lhs.false14_crit_edge, %lor.lhs.false12.lor.lhs.false14_crit_edge
  %stats_block_coalesce_usecs = getelementptr inbounds %struct.coalesce_reply_data, ptr %reply_base, i32 0, i32 1, i32 9
  %26 = ptrtoint ptr %stats_block_coalesce_usecs to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %stats_block_coalesce_usecs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %tobool.not.i193 = icmp eq i32 %27, 0
  %and.i194 = and i32 %1, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i194)
  %tobool1.not.i195 = icmp eq i32 %and.i194, 0
  %or.cond339 = select i1 %tobool.not.i193, i1 %tobool1.not.i195, i1 false
  br i1 %or.cond339, label %lor.lhs.false14.lor.lhs.false16_crit_edge, label %coalesce_put_u32.exit201

lor.lhs.false14.lor.lhs.false16_crit_edge:        ; preds = %lor.lhs.false14
  call void @__sanitizer_cov_trace_pc() #7
  br label %lor.lhs.false16

coalesce_put_u32.exit201:                         ; preds = %lor.lhs.false14
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i.i192) #5
  %28 = ptrtoint ptr %tmp.i.i192 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %27, ptr %tmp.i.i192, align 4
  %call.i.i197 = call i32 @nla_put(ptr noundef %skb, i32 noundef 10, i32 noundef 4, ptr noundef nonnull %tmp.i.i192) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i.i192) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i197)
  %tobool4.i198.not = icmp eq i32 %call.i.i197, 0
  br i1 %tobool4.i198.not, label %coalesce_put_u32.exit201.lor.lhs.false16_crit_edge, label %coalesce_put_u32.exit201.cleanup_crit_edge

coalesce_put_u32.exit201.cleanup_crit_edge:       ; preds = %coalesce_put_u32.exit201
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

coalesce_put_u32.exit201.lor.lhs.false16_crit_edge: ; preds = %coalesce_put_u32.exit201
  call void @__sanitizer_cov_trace_pc() #7
  br label %lor.lhs.false16

lor.lhs.false16:                                  ; preds = %coalesce_put_u32.exit201.lor.lhs.false16_crit_edge, %lor.lhs.false14.lor.lhs.false16_crit_edge
  %use_adaptive_rx_coalesce = getelementptr inbounds %struct.coalesce_reply_data, ptr %reply_base, i32 0, i32 1, i32 10
  %29 = ptrtoint ptr %use_adaptive_rx_coalesce to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %use_adaptive_rx_coalesce, align 4
  %call17 = call fastcc zeroext i1 @coalesce_put_bool(ptr noundef %skb, i16 noundef zeroext 11, i32 noundef %30, i32 noundef %1)
  br i1 %call17, label %lor.lhs.false16.cleanup_crit_edge, label %lor.lhs.false18

lor.lhs.false16.cleanup_crit_edge:                ; preds = %lor.lhs.false16
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

lor.lhs.false18:                                  ; preds = %lor.lhs.false16
  %use_adaptive_tx_coalesce = getelementptr inbounds %struct.coalesce_reply_data, ptr %reply_base, i32 0, i32 1, i32 11
  %31 = ptrtoint ptr %use_adaptive_tx_coalesce to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %use_adaptive_tx_coalesce, align 4
  %call19 = call fastcc zeroext i1 @coalesce_put_bool(ptr noundef %skb, i16 noundef zeroext 12, i32 noundef %32, i32 noundef %1)
  br i1 %call19, label %lor.lhs.false18.cleanup_crit_edge, label %lor.lhs.false20

lor.lhs.false18.cleanup_crit_edge:                ; preds = %lor.lhs.false18
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

lor.lhs.false20:                                  ; preds = %lor.lhs.false18
  %pkt_rate_low = getelementptr inbounds %struct.coalesce_reply_data, ptr %reply_base, i32 0, i32 1, i32 12
  %33 = ptrtoint ptr %pkt_rate_low to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %pkt_rate_low, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %tobool.not.i203 = icmp eq i32 %34, 0
  %and.i204 = and i32 %1, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i204)
  %tobool1.not.i205 = icmp eq i32 %and.i204, 0
  %or.cond340 = select i1 %tobool.not.i203, i1 %tobool1.not.i205, i1 false
  br i1 %or.cond340, label %lor.lhs.false20.lor.lhs.false22_crit_edge, label %coalesce_put_u32.exit211

lor.lhs.false20.lor.lhs.false22_crit_edge:        ; preds = %lor.lhs.false20
  call void @__sanitizer_cov_trace_pc() #7
  br label %lor.lhs.false22

coalesce_put_u32.exit211:                         ; preds = %lor.lhs.false20
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i.i202) #5
  %35 = ptrtoint ptr %tmp.i.i202 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %34, ptr %tmp.i.i202, align 4
  %call.i.i207 = call i32 @nla_put(ptr noundef %skb, i32 noundef 13, i32 noundef 4, ptr noundef nonnull %tmp.i.i202) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i.i202) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i207)
  %tobool4.i208.not = icmp eq i32 %call.i.i207, 0
  br i1 %tobool4.i208.not, label %coalesce_put_u32.exit211.lor.lhs.false22_crit_edge, label %coalesce_put_u32.exit211.cleanup_crit_edge

coalesce_put_u32.exit211.cleanup_crit_edge:       ; preds = %coalesce_put_u32.exit211
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

coalesce_put_u32.exit211.lor.lhs.false22_crit_edge: ; preds = %coalesce_put_u32.exit211
  call void @__sanitizer_cov_trace_pc() #7
  br label %lor.lhs.false22

lor.lhs.false22:                                  ; preds = %coalesce_put_u32.exit211.lor.lhs.false22_crit_edge, %lor.lhs.false20.lor.lhs.false22_crit_edge
  %rx_coalesce_usecs_low = getelementptr inbounds %struct.coalesce_reply_data, ptr %reply_base, i32 0, i32 1, i32 13
  %36 = ptrtoint ptr %rx_coalesce_usecs_low to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %rx_coalesce_usecs_low, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %tobool.not.i213 = icmp eq i32 %37, 0
  %and.i214 = and i32 %1, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i214)
  %tobool1.not.i215 = icmp eq i32 %and.i214, 0
  %or.cond341 = select i1 %tobool.not.i213, i1 %tobool1.not.i215, i1 false
  br i1 %or.cond341, label %lor.lhs.false22.lor.lhs.false24_crit_edge, label %coalesce_put_u32.exit221

lor.lhs.false22.lor.lhs.false24_crit_edge:        ; preds = %lor.lhs.false22
  call void @__sanitizer_cov_trace_pc() #7
  br label %lor.lhs.false24

coalesce_put_u32.exit221:                         ; preds = %lor.lhs.false22
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i.i212) #5
  %38 = ptrtoint ptr %tmp.i.i212 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %37, ptr %tmp.i.i212, align 4
  %call.i.i217 = call i32 @nla_put(ptr noundef %skb, i32 noundef 14, i32 noundef 4, ptr noundef nonnull %tmp.i.i212) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i.i212) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i217)
  %tobool4.i218.not = icmp eq i32 %call.i.i217, 0
  br i1 %tobool4.i218.not, label %coalesce_put_u32.exit221.lor.lhs.false24_crit_edge, label %coalesce_put_u32.exit221.cleanup_crit_edge

coalesce_put_u32.exit221.cleanup_crit_edge:       ; preds = %coalesce_put_u32.exit221
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

coalesce_put_u32.exit221.lor.lhs.false24_crit_edge: ; preds = %coalesce_put_u32.exit221
  call void @__sanitizer_cov_trace_pc() #7
  br label %lor.lhs.false24

lor.lhs.false24:                                  ; preds = %coalesce_put_u32.exit221.lor.lhs.false24_crit_edge, %lor.lhs.false22.lor.lhs.false24_crit_edge
  %rx_max_coalesced_frames_low = getelementptr inbounds %struct.coalesce_reply_data, ptr %reply_base, i32 0, i32 1, i32 14
  %39 = ptrtoint ptr %rx_max_coalesced_frames_low to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %rx_max_coalesced_frames_low, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %tobool.not.i223 = icmp eq i32 %40, 0
  %and.i224 = and i32 %1, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i224)
  %tobool1.not.i225 = icmp eq i32 %and.i224, 0
  %or.cond342 = select i1 %tobool.not.i223, i1 %tobool1.not.i225, i1 false
  br i1 %or.cond342, label %lor.lhs.false24.lor.lhs.false26_crit_edge, label %coalesce_put_u32.exit231

lor.lhs.false24.lor.lhs.false26_crit_edge:        ; preds = %lor.lhs.false24
  call void @__sanitizer_cov_trace_pc() #7
  br label %lor.lhs.false26

coalesce_put_u32.exit231:                         ; preds = %lor.lhs.false24
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i.i222) #5
  %41 = ptrtoint ptr %tmp.i.i222 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %40, ptr %tmp.i.i222, align 4
  %call.i.i227 = call i32 @nla_put(ptr noundef %skb, i32 noundef 15, i32 noundef 4, ptr noundef nonnull %tmp.i.i222) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i.i222) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i227)
  %tobool4.i228.not = icmp eq i32 %call.i.i227, 0
  br i1 %tobool4.i228.not, label %coalesce_put_u32.exit231.lor.lhs.false26_crit_edge, label %coalesce_put_u32.exit231.cleanup_crit_edge

coalesce_put_u32.exit231.cleanup_crit_edge:       ; preds = %coalesce_put_u32.exit231
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

coalesce_put_u32.exit231.lor.lhs.false26_crit_edge: ; preds = %coalesce_put_u32.exit231
  call void @__sanitizer_cov_trace_pc() #7
  br label %lor.lhs.false26

lor.lhs.false26:                                  ; preds = %coalesce_put_u32.exit231.lor.lhs.false26_crit_edge, %lor.lhs.false24.lor.lhs.false26_crit_edge
  %tx_coalesce_usecs_low = getelementptr inbounds %struct.coalesce_reply_data, ptr %reply_base, i32 0, i32 1, i32 15
  %42 = ptrtoint ptr %tx_coalesce_usecs_low to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %tx_coalesce_usecs_low, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %43)
  %tobool.not.i233 = icmp eq i32 %43, 0
  %and.i234 = and i32 %1, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i234)
  %tobool1.not.i235 = icmp eq i32 %and.i234, 0
  %or.cond343 = select i1 %tobool.not.i233, i1 %tobool1.not.i235, i1 false
  br i1 %or.cond343, label %lor.lhs.false26.lor.lhs.false28_crit_edge, label %coalesce_put_u32.exit241

lor.lhs.false26.lor.lhs.false28_crit_edge:        ; preds = %lor.lhs.false26
  call void @__sanitizer_cov_trace_pc() #7
  br label %lor.lhs.false28

coalesce_put_u32.exit241:                         ; preds = %lor.lhs.false26
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i.i232) #5
  %44 = ptrtoint ptr %tmp.i.i232 to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %43, ptr %tmp.i.i232, align 4
  %call.i.i237 = call i32 @nla_put(ptr noundef %skb, i32 noundef 16, i32 noundef 4, ptr noundef nonnull %tmp.i.i232) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i.i232) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i237)
  %tobool4.i238.not = icmp eq i32 %call.i.i237, 0
  br i1 %tobool4.i238.not, label %coalesce_put_u32.exit241.lor.lhs.false28_crit_edge, label %coalesce_put_u32.exit241.cleanup_crit_edge

coalesce_put_u32.exit241.cleanup_crit_edge:       ; preds = %coalesce_put_u32.exit241
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

coalesce_put_u32.exit241.lor.lhs.false28_crit_edge: ; preds = %coalesce_put_u32.exit241
  call void @__sanitizer_cov_trace_pc() #7
  br label %lor.lhs.false28

lor.lhs.false28:                                  ; preds = %coalesce_put_u32.exit241.lor.lhs.false28_crit_edge, %lor.lhs.false26.lor.lhs.false28_crit_edge
  %tx_max_coalesced_frames_low = getelementptr inbounds %struct.coalesce_reply_data, ptr %reply_base, i32 0, i32 1, i32 16
  %45 = ptrtoint ptr %tx_max_coalesced_frames_low to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %tx_max_coalesced_frames_low, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %46)
  %tobool.not.i243 = icmp eq i32 %46, 0
  %and.i244 = and i32 %1, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i244)
  %tobool1.not.i245 = icmp eq i32 %and.i244, 0
  %or.cond344 = select i1 %tobool.not.i243, i1 %tobool1.not.i245, i1 false
  br i1 %or.cond344, label %lor.lhs.false28.lor.lhs.false30_crit_edge, label %coalesce_put_u32.exit251

lor.lhs.false28.lor.lhs.false30_crit_edge:        ; preds = %lor.lhs.false28
  call void @__sanitizer_cov_trace_pc() #7
  br label %lor.lhs.false30

coalesce_put_u32.exit251:                         ; preds = %lor.lhs.false28
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i.i242) #5
  %47 = ptrtoint ptr %tmp.i.i242 to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %46, ptr %tmp.i.i242, align 4
  %call.i.i247 = call i32 @nla_put(ptr noundef %skb, i32 noundef 17, i32 noundef 4, ptr noundef nonnull %tmp.i.i242) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i.i242) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i247)
  %tobool4.i248.not = icmp eq i32 %call.i.i247, 0
  br i1 %tobool4.i248.not, label %coalesce_put_u32.exit251.lor.lhs.false30_crit_edge, label %coalesce_put_u32.exit251.cleanup_crit_edge

coalesce_put_u32.exit251.cleanup_crit_edge:       ; preds = %coalesce_put_u32.exit251
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

coalesce_put_u32.exit251.lor.lhs.false30_crit_edge: ; preds = %coalesce_put_u32.exit251
  call void @__sanitizer_cov_trace_pc() #7
  br label %lor.lhs.false30

lor.lhs.false30:                                  ; preds = %coalesce_put_u32.exit251.lor.lhs.false30_crit_edge, %lor.lhs.false28.lor.lhs.false30_crit_edge
  %pkt_rate_high = getelementptr inbounds %struct.coalesce_reply_data, ptr %reply_base, i32 0, i32 1, i32 17
  %48 = ptrtoint ptr %pkt_rate_high to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %pkt_rate_high, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %49)
  %tobool.not.i253 = icmp eq i32 %49, 0
  %and.i254 = and i32 %1, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i254)
  %tobool1.not.i255 = icmp eq i32 %and.i254, 0
  %or.cond345 = select i1 %tobool.not.i253, i1 %tobool1.not.i255, i1 false
  br i1 %or.cond345, label %lor.lhs.false30.lor.lhs.false32_crit_edge, label %coalesce_put_u32.exit261

lor.lhs.false30.lor.lhs.false32_crit_edge:        ; preds = %lor.lhs.false30
  call void @__sanitizer_cov_trace_pc() #7
  br label %lor.lhs.false32

coalesce_put_u32.exit261:                         ; preds = %lor.lhs.false30
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i.i252) #5
  %50 = ptrtoint ptr %tmp.i.i252 to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %49, ptr %tmp.i.i252, align 4
  %call.i.i257 = call i32 @nla_put(ptr noundef %skb, i32 noundef 18, i32 noundef 4, ptr noundef nonnull %tmp.i.i252) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i.i252) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i257)
  %tobool4.i258.not = icmp eq i32 %call.i.i257, 0
  br i1 %tobool4.i258.not, label %coalesce_put_u32.exit261.lor.lhs.false32_crit_edge, label %coalesce_put_u32.exit261.cleanup_crit_edge

coalesce_put_u32.exit261.cleanup_crit_edge:       ; preds = %coalesce_put_u32.exit261
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

coalesce_put_u32.exit261.lor.lhs.false32_crit_edge: ; preds = %coalesce_put_u32.exit261
  call void @__sanitizer_cov_trace_pc() #7
  br label %lor.lhs.false32

lor.lhs.false32:                                  ; preds = %coalesce_put_u32.exit261.lor.lhs.false32_crit_edge, %lor.lhs.false30.lor.lhs.false32_crit_edge
  %rx_coalesce_usecs_high = getelementptr inbounds %struct.coalesce_reply_data, ptr %reply_base, i32 0, i32 1, i32 18
  %51 = ptrtoint ptr %rx_coalesce_usecs_high to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %rx_coalesce_usecs_high, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %52)
  %tobool.not.i263 = icmp eq i32 %52, 0
  %and.i264 = and i32 %1, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i264)
  %tobool1.not.i265 = icmp eq i32 %and.i264, 0
  %or.cond346 = select i1 %tobool.not.i263, i1 %tobool1.not.i265, i1 false
  br i1 %or.cond346, label %lor.lhs.false32.lor.lhs.false34_crit_edge, label %coalesce_put_u32.exit271

lor.lhs.false32.lor.lhs.false34_crit_edge:        ; preds = %lor.lhs.false32
  call void @__sanitizer_cov_trace_pc() #7
  br label %lor.lhs.false34

coalesce_put_u32.exit271:                         ; preds = %lor.lhs.false32
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i.i262) #5
  %53 = ptrtoint ptr %tmp.i.i262 to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %52, ptr %tmp.i.i262, align 4
  %call.i.i267 = call i32 @nla_put(ptr noundef %skb, i32 noundef 19, i32 noundef 4, ptr noundef nonnull %tmp.i.i262) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i.i262) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i267)
  %tobool4.i268.not = icmp eq i32 %call.i.i267, 0
  br i1 %tobool4.i268.not, label %coalesce_put_u32.exit271.lor.lhs.false34_crit_edge, label %coalesce_put_u32.exit271.cleanup_crit_edge

coalesce_put_u32.exit271.cleanup_crit_edge:       ; preds = %coalesce_put_u32.exit271
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

coalesce_put_u32.exit271.lor.lhs.false34_crit_edge: ; preds = %coalesce_put_u32.exit271
  call void @__sanitizer_cov_trace_pc() #7
  br label %lor.lhs.false34

lor.lhs.false34:                                  ; preds = %coalesce_put_u32.exit271.lor.lhs.false34_crit_edge, %lor.lhs.false32.lor.lhs.false34_crit_edge
  %rx_max_coalesced_frames_high = getelementptr inbounds %struct.coalesce_reply_data, ptr %reply_base, i32 0, i32 1, i32 19
  %54 = ptrtoint ptr %rx_max_coalesced_frames_high to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %rx_max_coalesced_frames_high, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %55)
  %tobool.not.i273 = icmp eq i32 %55, 0
  %and.i274 = and i32 %1, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i274)
  %tobool1.not.i275 = icmp eq i32 %and.i274, 0
  %or.cond347 = select i1 %tobool.not.i273, i1 %tobool1.not.i275, i1 false
  br i1 %or.cond347, label %lor.lhs.false34.lor.lhs.false36_crit_edge, label %coalesce_put_u32.exit281

lor.lhs.false34.lor.lhs.false36_crit_edge:        ; preds = %lor.lhs.false34
  call void @__sanitizer_cov_trace_pc() #7
  br label %lor.lhs.false36

coalesce_put_u32.exit281:                         ; preds = %lor.lhs.false34
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i.i272) #5
  %56 = ptrtoint ptr %tmp.i.i272 to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %55, ptr %tmp.i.i272, align 4
  %call.i.i277 = call i32 @nla_put(ptr noundef %skb, i32 noundef 20, i32 noundef 4, ptr noundef nonnull %tmp.i.i272) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i.i272) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i277)
  %tobool4.i278.not = icmp eq i32 %call.i.i277, 0
  br i1 %tobool4.i278.not, label %coalesce_put_u32.exit281.lor.lhs.false36_crit_edge, label %coalesce_put_u32.exit281.cleanup_crit_edge

coalesce_put_u32.exit281.cleanup_crit_edge:       ; preds = %coalesce_put_u32.exit281
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

coalesce_put_u32.exit281.lor.lhs.false36_crit_edge: ; preds = %coalesce_put_u32.exit281
  call void @__sanitizer_cov_trace_pc() #7
  br label %lor.lhs.false36

lor.lhs.false36:                                  ; preds = %coalesce_put_u32.exit281.lor.lhs.false36_crit_edge, %lor.lhs.false34.lor.lhs.false36_crit_edge
  %tx_coalesce_usecs_high = getelementptr inbounds %struct.coalesce_reply_data, ptr %reply_base, i32 0, i32 1, i32 20
  %57 = ptrtoint ptr %tx_coalesce_usecs_high to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %tx_coalesce_usecs_high, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %58)
  %tobool.not.i283 = icmp eq i32 %58, 0
  %and.i284 = and i32 %1, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i284)
  %tobool1.not.i285 = icmp eq i32 %and.i284, 0
  %or.cond348 = select i1 %tobool.not.i283, i1 %tobool1.not.i285, i1 false
  br i1 %or.cond348, label %lor.lhs.false36.lor.lhs.false38_crit_edge, label %coalesce_put_u32.exit291

lor.lhs.false36.lor.lhs.false38_crit_edge:        ; preds = %lor.lhs.false36
  call void @__sanitizer_cov_trace_pc() #7
  br label %lor.lhs.false38

coalesce_put_u32.exit291:                         ; preds = %lor.lhs.false36
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i.i282) #5
  %59 = ptrtoint ptr %tmp.i.i282 to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %58, ptr %tmp.i.i282, align 4
  %call.i.i287 = call i32 @nla_put(ptr noundef %skb, i32 noundef 21, i32 noundef 4, ptr noundef nonnull %tmp.i.i282) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i.i282) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i287)
  %tobool4.i288.not = icmp eq i32 %call.i.i287, 0
  br i1 %tobool4.i288.not, label %coalesce_put_u32.exit291.lor.lhs.false38_crit_edge, label %coalesce_put_u32.exit291.cleanup_crit_edge

coalesce_put_u32.exit291.cleanup_crit_edge:       ; preds = %coalesce_put_u32.exit291
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

coalesce_put_u32.exit291.lor.lhs.false38_crit_edge: ; preds = %coalesce_put_u32.exit291
  call void @__sanitizer_cov_trace_pc() #7
  br label %lor.lhs.false38

lor.lhs.false38:                                  ; preds = %coalesce_put_u32.exit291.lor.lhs.false38_crit_edge, %lor.lhs.false36.lor.lhs.false38_crit_edge
  %tx_max_coalesced_frames_high = getelementptr inbounds %struct.coalesce_reply_data, ptr %reply_base, i32 0, i32 1, i32 21
  %60 = ptrtoint ptr %tx_max_coalesced_frames_high to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %tx_max_coalesced_frames_high, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %61)
  %tobool.not.i293 = icmp eq i32 %61, 0
  %and.i294 = and i32 %1, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i294)
  %tobool1.not.i295 = icmp eq i32 %and.i294, 0
  %or.cond349 = select i1 %tobool.not.i293, i1 %tobool1.not.i295, i1 false
  br i1 %or.cond349, label %lor.lhs.false38.lor.lhs.false40_crit_edge, label %coalesce_put_u32.exit301

lor.lhs.false38.lor.lhs.false40_crit_edge:        ; preds = %lor.lhs.false38
  call void @__sanitizer_cov_trace_pc() #7
  br label %lor.lhs.false40

coalesce_put_u32.exit301:                         ; preds = %lor.lhs.false38
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i.i292) #5
  %62 = ptrtoint ptr %tmp.i.i292 to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %61, ptr %tmp.i.i292, align 4
  %call.i.i297 = call i32 @nla_put(ptr noundef %skb, i32 noundef 22, i32 noundef 4, ptr noundef nonnull %tmp.i.i292) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i.i292) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i297)
  %tobool4.i298.not = icmp eq i32 %call.i.i297, 0
  br i1 %tobool4.i298.not, label %coalesce_put_u32.exit301.lor.lhs.false40_crit_edge, label %coalesce_put_u32.exit301.cleanup_crit_edge

coalesce_put_u32.exit301.cleanup_crit_edge:       ; preds = %coalesce_put_u32.exit301
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

coalesce_put_u32.exit301.lor.lhs.false40_crit_edge: ; preds = %coalesce_put_u32.exit301
  call void @__sanitizer_cov_trace_pc() #7
  br label %lor.lhs.false40

lor.lhs.false40:                                  ; preds = %coalesce_put_u32.exit301.lor.lhs.false40_crit_edge, %lor.lhs.false38.lor.lhs.false40_crit_edge
  %rate_sample_interval = getelementptr inbounds %struct.coalesce_reply_data, ptr %reply_base, i32 0, i32 1, i32 22
  %63 = ptrtoint ptr %rate_sample_interval to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %rate_sample_interval, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %64)
  %tobool.not.i303 = icmp eq i32 %64, 0
  %and.i304 = and i32 %1, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i304)
  %tobool1.not.i305 = icmp eq i32 %and.i304, 0
  %or.cond350 = select i1 %tobool.not.i303, i1 %tobool1.not.i305, i1 false
  br i1 %or.cond350, label %lor.lhs.false40.lor.lhs.false42_crit_edge, label %coalesce_put_u32.exit311

lor.lhs.false40.lor.lhs.false42_crit_edge:        ; preds = %lor.lhs.false40
  call void @__sanitizer_cov_trace_pc() #7
  br label %lor.lhs.false42

coalesce_put_u32.exit311:                         ; preds = %lor.lhs.false40
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i.i302) #5
  %65 = ptrtoint ptr %tmp.i.i302 to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %64, ptr %tmp.i.i302, align 4
  %call.i.i307 = call i32 @nla_put(ptr noundef %skb, i32 noundef 23, i32 noundef 4, ptr noundef nonnull %tmp.i.i302) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i.i302) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i307)
  %tobool4.i308.not = icmp eq i32 %call.i.i307, 0
  br i1 %tobool4.i308.not, label %coalesce_put_u32.exit311.lor.lhs.false42_crit_edge, label %coalesce_put_u32.exit311.cleanup_crit_edge

coalesce_put_u32.exit311.cleanup_crit_edge:       ; preds = %coalesce_put_u32.exit311
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

coalesce_put_u32.exit311.lor.lhs.false42_crit_edge: ; preds = %coalesce_put_u32.exit311
  call void @__sanitizer_cov_trace_pc() #7
  br label %lor.lhs.false42

lor.lhs.false42:                                  ; preds = %coalesce_put_u32.exit311.lor.lhs.false42_crit_edge, %lor.lhs.false40.lor.lhs.false42_crit_edge
  %66 = ptrtoint ptr %kernel_coalesce to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %kernel_coalesce, align 1
  %conv = zext i8 %67 to i32
  %call43 = call fastcc zeroext i1 @coalesce_put_bool(ptr noundef %skb, i16 noundef zeroext 24, i32 noundef %conv, i32 noundef %1)
  br i1 %call43, label %lor.lhs.false42.cleanup_crit_edge, label %lor.lhs.false45

lor.lhs.false42.cleanup_crit_edge:                ; preds = %lor.lhs.false42
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

lor.lhs.false45:                                  ; preds = %lor.lhs.false42
  call void @__sanitizer_cov_trace_pc() #7
  %use_cqe_mode_rx = getelementptr inbounds %struct.coalesce_reply_data, ptr %reply_base, i32 0, i32 2, i32 1
  %68 = ptrtoint ptr %use_cqe_mode_rx to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %use_cqe_mode_rx, align 1
  %conv46 = zext i8 %69 to i32
  %call47 = call fastcc zeroext i1 @coalesce_put_bool(ptr noundef %skb, i16 noundef zeroext 25, i32 noundef %conv46, i32 noundef %1)
  %spec.select = select i1 %call47, i32 -90, i32 0
  br label %cleanup

cleanup:                                          ; preds = %lor.lhs.false45, %lor.lhs.false42.cleanup_crit_edge, %coalesce_put_u32.exit311.cleanup_crit_edge, %coalesce_put_u32.exit301.cleanup_crit_edge, %coalesce_put_u32.exit291.cleanup_crit_edge, %coalesce_put_u32.exit281.cleanup_crit_edge, %coalesce_put_u32.exit271.cleanup_crit_edge, %coalesce_put_u32.exit261.cleanup_crit_edge, %coalesce_put_u32.exit251.cleanup_crit_edge, %coalesce_put_u32.exit241.cleanup_crit_edge, %coalesce_put_u32.exit231.cleanup_crit_edge, %coalesce_put_u32.exit221.cleanup_crit_edge, %coalesce_put_u32.exit211.cleanup_crit_edge, %lor.lhs.false18.cleanup_crit_edge, %lor.lhs.false16.cleanup_crit_edge, %coalesce_put_u32.exit201.cleanup_crit_edge, %coalesce_put_u32.exit191.cleanup_crit_edge, %coalesce_put_u32.exit181.cleanup_crit_edge, %coalesce_put_u32.exit171.cleanup_crit_edge, %coalesce_put_u32.exit161.cleanup_crit_edge, %coalesce_put_u32.exit151.cleanup_crit_edge, %coalesce_put_u32.exit141.cleanup_crit_edge, %coalesce_put_u32.exit131.cleanup_crit_edge, %coalesce_put_u32.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ -90, %lor.lhs.false42.cleanup_crit_edge ], [ -90, %coalesce_put_u32.exit311.cleanup_crit_edge ], [ -90, %coalesce_put_u32.exit301.cleanup_crit_edge ], [ -90, %coalesce_put_u32.exit291.cleanup_crit_edge ], [ -90, %coalesce_put_u32.exit281.cleanup_crit_edge ], [ -90, %coalesce_put_u32.exit271.cleanup_crit_edge ], [ -90, %coalesce_put_u32.exit261.cleanup_crit_edge ], [ -90, %coalesce_put_u32.exit251.cleanup_crit_edge ], [ -90, %coalesce_put_u32.exit241.cleanup_crit_edge ], [ -90, %coalesce_put_u32.exit231.cleanup_crit_edge ], [ -90, %coalesce_put_u32.exit221.cleanup_crit_edge ], [ -90, %coalesce_put_u32.exit211.cleanup_crit_edge ], [ -90, %lor.lhs.false18.cleanup_crit_edge ], [ -90, %lor.lhs.false16.cleanup_crit_edge ], [ -90, %coalesce_put_u32.exit201.cleanup_crit_edge ], [ -90, %coalesce_put_u32.exit191.cleanup_crit_edge ], [ -90, %coalesce_put_u32.exit181.cleanup_crit_edge ], [ -90, %coalesce_put_u32.exit171.cleanup_crit_edge ], [ -90, %coalesce_put_u32.exit161.cleanup_crit_edge ], [ -90, %coalesce_put_u32.exit151.cleanup_crit_edge ], [ -90, %coalesce_put_u32.exit141.cleanup_crit_edge ], [ -90, %coalesce_put_u32.exit131.cleanup_crit_edge ], [ -90, %coalesce_put_u32.exit.cleanup_crit_edge ], [ %spec.select, %lor.lhs.false45 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ethnl_set_coalesce(ptr nocapture noundef readnone %skb, ptr nocapture noundef readonly %info) local_unnamed_addr #0 align 64 {
entry:
  %kernel_coalesce = alloca %struct.kernel_ethtool_coalesce, align 2
  %coalesce = alloca %struct.ethtool_coalesce, align 4
  %req_info = alloca %struct.ethnl_req_info, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %kernel_coalesce) #5
  %0 = ptrtoint ptr %kernel_coalesce to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 0, ptr %kernel_coalesce, align 2
  call void @llvm.lifetime.start.p0(i64 92, ptr nonnull %coalesce) #5
  %1 = call ptr @memset(ptr %coalesce, i32 0, i32 92)
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %req_info) #5
  %2 = call ptr @memset(ptr %req_info, i32 0, i32 12)
  %attrs = getelementptr inbounds %struct.genl_info, ptr %info, i32 0, i32 5
  %3 = ptrtoint ptr %attrs to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %attrs, align 4
  %arrayidx = getelementptr ptr, ptr %4, i32 1
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
  %call1 = call i32 @ethnl_parse_header_dev_get(ptr noundef nonnull %req_info, ptr noundef %6, ptr noundef %8, ptr noundef %10, i1 noundef zeroext true) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %11 = ptrtoint ptr %req_info to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %req_info, align 4
  %ethtool_ops = getelementptr inbounds %struct.net_device, ptr %12, i32 0, i32 44
  %13 = ptrtoint ptr %ethtool_ops to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %ethtool_ops, align 16
  %get_coalesce = getelementptr inbounds %struct.ethtool_ops, ptr %14, i32 0, i32 16
  %15 = ptrtoint ptr %get_coalesce to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %get_coalesce, align 4
  %tobool.not = icmp eq ptr %16, null
  br i1 %tobool.not, label %if.end.out_dev_crit_edge, label %lor.lhs.false

if.end.out_dev_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %out_dev

lor.lhs.false:                                    ; preds = %if.end
  %set_coalesce = getelementptr inbounds %struct.ethtool_ops, ptr %14, i32 0, i32 17
  %17 = ptrtoint ptr %set_coalesce to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %set_coalesce, align 4
  %tobool3.not = icmp eq ptr %18, null
  br i1 %tobool3.not, label %lor.lhs.false.out_dev_crit_edge, label %if.end5

lor.lhs.false.out_dev_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %out_dev

if.end5:                                          ; preds = %lor.lhs.false
  %supported_coalesce_params = getelementptr inbounds %struct.ethtool_ops, ptr %14, i32 0, i32 1
  %19 = ptrtoint ptr %supported_coalesce_params to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %supported_coalesce_params, align 4
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end5
  %indvars.iv = phi i32 [ 2, %if.end5 ], [ %indvars.iv.next, %for.inc.for.body_crit_edge ]
  %arrayidx8 = getelementptr ptr, ptr %4, i32 %indvars.iv
  %21 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %arrayidx8, align 4
  %tobool9.not = icmp eq ptr %22, null
  br i1 %tobool9.not, label %for.body.for.inc_crit_edge, label %land.lhs.true

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

land.lhs.true:                                    ; preds = %for.body
  %sub.i = add nsw i32 %indvars.iv, -2
  %shl.i = shl nuw i32 1, %sub.i
  %and = and i32 %shl.i, %20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool12.not = icmp eq i32 %and, 0
  br i1 %tobool12.not, label %if.then13, label %land.lhs.true.for.inc_crit_edge

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

if.then13:                                        ; preds = %land.lhs.true
  %23 = ptrtoint ptr %extack to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %extack, align 4
  call void @do_trace_netlink_extack(ptr noundef nonnull @ethnl_set_coalesce.__msg) #5
  %tobool15.not = icmp eq ptr %24, null
  br i1 %tobool15.not, label %if.then13.out_dev_crit_edge, label %if.then16

if.then13.out_dev_crit_edge:                      ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #7
  br label %out_dev

if.then16:                                        ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx8.le = getelementptr ptr, ptr %4, i32 %indvars.iv
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr @ethnl_set_coalesce.__msg, ptr %24, align 4
  %26 = ptrtoint ptr %arrayidx8.le to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %arrayidx8.le, align 4
  %bad_attr = getelementptr inbounds %struct.netlink_ext_ack, ptr %24, i32 0, i32 1
  %28 = ptrtoint ptr %bad_attr to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %27, ptr %bad_attr, align 4
  %policy = getelementptr inbounds %struct.netlink_ext_ack, ptr %24, i32 0, i32 2
  %29 = ptrtoint ptr %policy to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr null, ptr %policy, align 4
  br label %out_dev

for.inc:                                          ; preds = %land.lhs.true.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %indvars.iv.next = add nuw nsw i32 %indvars.iv, 1
  %exitcond.not = icmp eq i32 %indvars.iv.next, 26
  br i1 %exitcond.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.end:                                          ; preds = %for.inc
  call void @rtnl_lock() #5
  %call21 = call i32 @ethnl_ops_begin(ptr noundef %12) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %cmp22 = icmp slt i32 %call21, 0
  br i1 %cmp22, label %for.end.out_rtnl_crit_edge, label %if.end25

for.end.out_rtnl_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %out_rtnl

if.end25:                                         ; preds = %for.end
  %30 = ptrtoint ptr %get_coalesce to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %get_coalesce, align 4
  %32 = ptrtoint ptr %extack to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %extack, align 4
  %call28 = call i32 %31(ptr noundef %12, ptr noundef nonnull %coalesce, ptr noundef nonnull %kernel_coalesce, ptr noundef %33) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28)
  %cmp29 = icmp slt i32 %call28, 0
  br i1 %cmp29, label %if.end25.out_ops_crit_edge, label %if.end32

if.end25.out_ops_crit_edge:                       ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #7
  br label %out_ops

if.end32:                                         ; preds = %if.end25
  %rx_coalesce_usecs = getelementptr inbounds %struct.ethtool_coalesce, ptr %coalesce, i32 0, i32 1
  %arrayidx33 = getelementptr ptr, ptr %4, i32 2
  %34 = ptrtoint ptr %arrayidx33 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %arrayidx33, align 4
  %tobool.not.i = icmp eq ptr %35, null
  br i1 %tobool.not.i, label %if.end32.ethnl_update_u32.exit_crit_edge, label %if.end.i

if.end32.ethnl_update_u32.exit_crit_edge:         ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #7
  br label %ethnl_update_u32.exit

if.end.i:                                         ; preds = %if.end32
  %add.ptr.i.i.i = getelementptr i8, ptr %35, i32 4
  %36 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %add.ptr.i.i.i, align 4
  %38 = ptrtoint ptr %rx_coalesce_usecs to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %rx_coalesce_usecs, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %39, i32 %37)
  %cmp.i = icmp eq i32 %39, %37
  br i1 %cmp.i, label %if.end.i.ethnl_update_u32.exit_crit_edge, label %if.end2.i

if.end.i.ethnl_update_u32.exit_crit_edge:         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %ethnl_update_u32.exit

if.end2.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  %40 = ptrtoint ptr %rx_coalesce_usecs to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %37, ptr %rx_coalesce_usecs, align 4
  br label %ethnl_update_u32.exit

ethnl_update_u32.exit:                            ; preds = %if.end2.i, %if.end.i.ethnl_update_u32.exit_crit_edge, %if.end32.ethnl_update_u32.exit_crit_edge
  %mod.0 = phi i8 [ 0, %if.end32.ethnl_update_u32.exit_crit_edge ], [ 0, %if.end.i.ethnl_update_u32.exit_crit_edge ], [ 1, %if.end2.i ]
  %rx_max_coalesced_frames = getelementptr inbounds %struct.ethtool_coalesce, ptr %coalesce, i32 0, i32 2
  %arrayidx34 = getelementptr ptr, ptr %4, i32 3
  %41 = ptrtoint ptr %arrayidx34 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %arrayidx34, align 4
  %tobool.not.i129 = icmp eq ptr %42, null
  br i1 %tobool.not.i129, label %ethnl_update_u32.exit.ethnl_update_u32.exit134_crit_edge, label %if.end.i132

ethnl_update_u32.exit.ethnl_update_u32.exit134_crit_edge: ; preds = %ethnl_update_u32.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %ethnl_update_u32.exit134

if.end.i132:                                      ; preds = %ethnl_update_u32.exit
  %add.ptr.i.i.i130 = getelementptr i8, ptr %42, i32 4
  %43 = ptrtoint ptr %add.ptr.i.i.i130 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %add.ptr.i.i.i130, align 4
  %45 = ptrtoint ptr %rx_max_coalesced_frames to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %rx_max_coalesced_frames, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %46, i32 %44)
  %cmp.i131 = icmp eq i32 %46, %44
  br i1 %cmp.i131, label %if.end.i132.ethnl_update_u32.exit134_crit_edge, label %if.end2.i133

if.end.i132.ethnl_update_u32.exit134_crit_edge:   ; preds = %if.end.i132
  call void @__sanitizer_cov_trace_pc() #7
  br label %ethnl_update_u32.exit134

if.end2.i133:                                     ; preds = %if.end.i132
  call void @__sanitizer_cov_trace_pc() #7
  %47 = ptrtoint ptr %rx_max_coalesced_frames to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %44, ptr %rx_max_coalesced_frames, align 4
  br label %ethnl_update_u32.exit134

ethnl_update_u32.exit134:                         ; preds = %if.end2.i133, %if.end.i132.ethnl_update_u32.exit134_crit_edge, %ethnl_update_u32.exit.ethnl_update_u32.exit134_crit_edge
  %mod.1 = phi i8 [ %mod.0, %ethnl_update_u32.exit.ethnl_update_u32.exit134_crit_edge ], [ %mod.0, %if.end.i132.ethnl_update_u32.exit134_crit_edge ], [ 1, %if.end2.i133 ]
  %rx_coalesce_usecs_irq = getelementptr inbounds %struct.ethtool_coalesce, ptr %coalesce, i32 0, i32 3
  %arrayidx35 = getelementptr ptr, ptr %4, i32 4
  %48 = ptrtoint ptr %arrayidx35 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %arrayidx35, align 4
  %tobool.not.i135 = icmp eq ptr %49, null
  br i1 %tobool.not.i135, label %ethnl_update_u32.exit134.ethnl_update_u32.exit140_crit_edge, label %if.end.i138

ethnl_update_u32.exit134.ethnl_update_u32.exit140_crit_edge: ; preds = %ethnl_update_u32.exit134
  call void @__sanitizer_cov_trace_pc() #7
  br label %ethnl_update_u32.exit140

if.end.i138:                                      ; preds = %ethnl_update_u32.exit134
  %add.ptr.i.i.i136 = getelementptr i8, ptr %49, i32 4
  %50 = ptrtoint ptr %add.ptr.i.i.i136 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %add.ptr.i.i.i136, align 4
  %52 = ptrtoint ptr %rx_coalesce_usecs_irq to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %rx_coalesce_usecs_irq, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %53, i32 %51)
  %cmp.i137 = icmp eq i32 %53, %51
  br i1 %cmp.i137, label %if.end.i138.ethnl_update_u32.exit140_crit_edge, label %if.end2.i139

if.end.i138.ethnl_update_u32.exit140_crit_edge:   ; preds = %if.end.i138
  call void @__sanitizer_cov_trace_pc() #7
  br label %ethnl_update_u32.exit140

if.end2.i139:                                     ; preds = %if.end.i138
  call void @__sanitizer_cov_trace_pc() #7
  %54 = ptrtoint ptr %rx_coalesce_usecs_irq to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %51, ptr %rx_coalesce_usecs_irq, align 4
  br label %ethnl_update_u32.exit140

ethnl_update_u32.exit140:                         ; preds = %if.end2.i139, %if.end.i138.ethnl_update_u32.exit140_crit_edge, %ethnl_update_u32.exit134.ethnl_update_u32.exit140_crit_edge
  %mod.2 = phi i8 [ %mod.1, %ethnl_update_u32.exit134.ethnl_update_u32.exit140_crit_edge ], [ %mod.1, %if.end.i138.ethnl_update_u32.exit140_crit_edge ], [ 1, %if.end2.i139 ]
  %rx_max_coalesced_frames_irq = getelementptr inbounds %struct.ethtool_coalesce, ptr %coalesce, i32 0, i32 4
  %arrayidx36 = getelementptr ptr, ptr %4, i32 5
  %55 = ptrtoint ptr %arrayidx36 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %arrayidx36, align 4
  %tobool.not.i141 = icmp eq ptr %56, null
  br i1 %tobool.not.i141, label %ethnl_update_u32.exit140.ethnl_update_u32.exit146_crit_edge, label %if.end.i144

ethnl_update_u32.exit140.ethnl_update_u32.exit146_crit_edge: ; preds = %ethnl_update_u32.exit140
  call void @__sanitizer_cov_trace_pc() #7
  br label %ethnl_update_u32.exit146

if.end.i144:                                      ; preds = %ethnl_update_u32.exit140
  %add.ptr.i.i.i142 = getelementptr i8, ptr %56, i32 4
  %57 = ptrtoint ptr %add.ptr.i.i.i142 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %add.ptr.i.i.i142, align 4
  %59 = ptrtoint ptr %rx_max_coalesced_frames_irq to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %rx_max_coalesced_frames_irq, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %60, i32 %58)
  %cmp.i143 = icmp eq i32 %60, %58
  br i1 %cmp.i143, label %if.end.i144.ethnl_update_u32.exit146_crit_edge, label %if.end2.i145

if.end.i144.ethnl_update_u32.exit146_crit_edge:   ; preds = %if.end.i144
  call void @__sanitizer_cov_trace_pc() #7
  br label %ethnl_update_u32.exit146

if.end2.i145:                                     ; preds = %if.end.i144
  call void @__sanitizer_cov_trace_pc() #7
  %61 = ptrtoint ptr %rx_max_coalesced_frames_irq to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %58, ptr %rx_max_coalesced_frames_irq, align 4
  br label %ethnl_update_u32.exit146

ethnl_update_u32.exit146:                         ; preds = %if.end2.i145, %if.end.i144.ethnl_update_u32.exit146_crit_edge, %ethnl_update_u32.exit140.ethnl_update_u32.exit146_crit_edge
  %mod.3 = phi i8 [ %mod.2, %ethnl_update_u32.exit140.ethnl_update_u32.exit146_crit_edge ], [ %mod.2, %if.end.i144.ethnl_update_u32.exit146_crit_edge ], [ 1, %if.end2.i145 ]
  %tx_coalesce_usecs = getelementptr inbounds %struct.ethtool_coalesce, ptr %coalesce, i32 0, i32 5
  %arrayidx37 = getelementptr ptr, ptr %4, i32 6
  %62 = ptrtoint ptr %arrayidx37 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %arrayidx37, align 4
  %tobool.not.i147 = icmp eq ptr %63, null
  br i1 %tobool.not.i147, label %ethnl_update_u32.exit146.ethnl_update_u32.exit152_crit_edge, label %if.end.i150

ethnl_update_u32.exit146.ethnl_update_u32.exit152_crit_edge: ; preds = %ethnl_update_u32.exit146
  call void @__sanitizer_cov_trace_pc() #7
  br label %ethnl_update_u32.exit152

if.end.i150:                                      ; preds = %ethnl_update_u32.exit146
  %add.ptr.i.i.i148 = getelementptr i8, ptr %63, i32 4
  %64 = ptrtoint ptr %add.ptr.i.i.i148 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %add.ptr.i.i.i148, align 4
  %66 = ptrtoint ptr %tx_coalesce_usecs to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %tx_coalesce_usecs, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %67, i32 %65)
  %cmp.i149 = icmp eq i32 %67, %65
  br i1 %cmp.i149, label %if.end.i150.ethnl_update_u32.exit152_crit_edge, label %if.end2.i151

if.end.i150.ethnl_update_u32.exit152_crit_edge:   ; preds = %if.end.i150
  call void @__sanitizer_cov_trace_pc() #7
  br label %ethnl_update_u32.exit152

if.end2.i151:                                     ; preds = %if.end.i150
  call void @__sanitizer_cov_trace_pc() #7
  %68 = ptrtoint ptr %tx_coalesce_usecs to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 %65, ptr %tx_coalesce_usecs, align 4
  br label %ethnl_update_u32.exit152

ethnl_update_u32.exit152:                         ; preds = %if.end2.i151, %if.end.i150.ethnl_update_u32.exit152_crit_edge, %ethnl_update_u32.exit146.ethnl_update_u32.exit152_crit_edge
  %mod.4 = phi i8 [ %mod.3, %ethnl_update_u32.exit146.ethnl_update_u32.exit152_crit_edge ], [ %mod.3, %if.end.i150.ethnl_update_u32.exit152_crit_edge ], [ 1, %if.end2.i151 ]
  %tx_max_coalesced_frames = getelementptr inbounds %struct.ethtool_coalesce, ptr %coalesce, i32 0, i32 6
  %arrayidx38 = getelementptr ptr, ptr %4, i32 7
  %69 = ptrtoint ptr %arrayidx38 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %arrayidx38, align 4
  %tobool.not.i153 = icmp eq ptr %70, null
  br i1 %tobool.not.i153, label %ethnl_update_u32.exit152.ethnl_update_u32.exit158_crit_edge, label %if.end.i156

ethnl_update_u32.exit152.ethnl_update_u32.exit158_crit_edge: ; preds = %ethnl_update_u32.exit152
  call void @__sanitizer_cov_trace_pc() #7
  br label %ethnl_update_u32.exit158

if.end.i156:                                      ; preds = %ethnl_update_u32.exit152
  %add.ptr.i.i.i154 = getelementptr i8, ptr %70, i32 4
  %71 = ptrtoint ptr %add.ptr.i.i.i154 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %add.ptr.i.i.i154, align 4
  %73 = ptrtoint ptr %tx_max_coalesced_frames to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %tx_max_coalesced_frames, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %74, i32 %72)
  %cmp.i155 = icmp eq i32 %74, %72
  br i1 %cmp.i155, label %if.end.i156.ethnl_update_u32.exit158_crit_edge, label %if.end2.i157

if.end.i156.ethnl_update_u32.exit158_crit_edge:   ; preds = %if.end.i156
  call void @__sanitizer_cov_trace_pc() #7
  br label %ethnl_update_u32.exit158

if.end2.i157:                                     ; preds = %if.end.i156
  call void @__sanitizer_cov_trace_pc() #7
  %75 = ptrtoint ptr %tx_max_coalesced_frames to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 %72, ptr %tx_max_coalesced_frames, align 4
  br label %ethnl_update_u32.exit158

ethnl_update_u32.exit158:                         ; preds = %if.end2.i157, %if.end.i156.ethnl_update_u32.exit158_crit_edge, %ethnl_update_u32.exit152.ethnl_update_u32.exit158_crit_edge
  %mod.5 = phi i8 [ %mod.4, %ethnl_update_u32.exit152.ethnl_update_u32.exit158_crit_edge ], [ %mod.4, %if.end.i156.ethnl_update_u32.exit158_crit_edge ], [ 1, %if.end2.i157 ]
  %tx_coalesce_usecs_irq = getelementptr inbounds %struct.ethtool_coalesce, ptr %coalesce, i32 0, i32 7
  %arrayidx39 = getelementptr ptr, ptr %4, i32 8
  %76 = ptrtoint ptr %arrayidx39 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %arrayidx39, align 4
  %tobool.not.i159 = icmp eq ptr %77, null
  br i1 %tobool.not.i159, label %ethnl_update_u32.exit158.ethnl_update_u32.exit164_crit_edge, label %if.end.i162

ethnl_update_u32.exit158.ethnl_update_u32.exit164_crit_edge: ; preds = %ethnl_update_u32.exit158
  call void @__sanitizer_cov_trace_pc() #7
  br label %ethnl_update_u32.exit164

if.end.i162:                                      ; preds = %ethnl_update_u32.exit158
  %add.ptr.i.i.i160 = getelementptr i8, ptr %77, i32 4
  %78 = ptrtoint ptr %add.ptr.i.i.i160 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %add.ptr.i.i.i160, align 4
  %80 = ptrtoint ptr %tx_coalesce_usecs_irq to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %tx_coalesce_usecs_irq, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %81, i32 %79)
  %cmp.i161 = icmp eq i32 %81, %79
  br i1 %cmp.i161, label %if.end.i162.ethnl_update_u32.exit164_crit_edge, label %if.end2.i163

if.end.i162.ethnl_update_u32.exit164_crit_edge:   ; preds = %if.end.i162
  call void @__sanitizer_cov_trace_pc() #7
  br label %ethnl_update_u32.exit164

if.end2.i163:                                     ; preds = %if.end.i162
  call void @__sanitizer_cov_trace_pc() #7
  %82 = ptrtoint ptr %tx_coalesce_usecs_irq to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 %79, ptr %tx_coalesce_usecs_irq, align 4
  br label %ethnl_update_u32.exit164

ethnl_update_u32.exit164:                         ; preds = %if.end2.i163, %if.end.i162.ethnl_update_u32.exit164_crit_edge, %ethnl_update_u32.exit158.ethnl_update_u32.exit164_crit_edge
  %mod.6 = phi i8 [ %mod.5, %ethnl_update_u32.exit158.ethnl_update_u32.exit164_crit_edge ], [ %mod.5, %if.end.i162.ethnl_update_u32.exit164_crit_edge ], [ 1, %if.end2.i163 ]
  %tx_max_coalesced_frames_irq = getelementptr inbounds %struct.ethtool_coalesce, ptr %coalesce, i32 0, i32 8
  %arrayidx40 = getelementptr ptr, ptr %4, i32 9
  %83 = ptrtoint ptr %arrayidx40 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %arrayidx40, align 4
  %tobool.not.i165 = icmp eq ptr %84, null
  br i1 %tobool.not.i165, label %ethnl_update_u32.exit164.ethnl_update_u32.exit170_crit_edge, label %if.end.i168

ethnl_update_u32.exit164.ethnl_update_u32.exit170_crit_edge: ; preds = %ethnl_update_u32.exit164
  call void @__sanitizer_cov_trace_pc() #7
  br label %ethnl_update_u32.exit170

if.end.i168:                                      ; preds = %ethnl_update_u32.exit164
  %add.ptr.i.i.i166 = getelementptr i8, ptr %84, i32 4
  %85 = ptrtoint ptr %add.ptr.i.i.i166 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %add.ptr.i.i.i166, align 4
  %87 = ptrtoint ptr %tx_max_coalesced_frames_irq to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %tx_max_coalesced_frames_irq, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %88, i32 %86)
  %cmp.i167 = icmp eq i32 %88, %86
  br i1 %cmp.i167, label %if.end.i168.ethnl_update_u32.exit170_crit_edge, label %if.end2.i169

if.end.i168.ethnl_update_u32.exit170_crit_edge:   ; preds = %if.end.i168
  call void @__sanitizer_cov_trace_pc() #7
  br label %ethnl_update_u32.exit170

if.end2.i169:                                     ; preds = %if.end.i168
  call void @__sanitizer_cov_trace_pc() #7
  %89 = ptrtoint ptr %tx_max_coalesced_frames_irq to i32
  call void @__asan_store4_noabort(i32 %89)
  store i32 %86, ptr %tx_max_coalesced_frames_irq, align 4
  br label %ethnl_update_u32.exit170

ethnl_update_u32.exit170:                         ; preds = %if.end2.i169, %if.end.i168.ethnl_update_u32.exit170_crit_edge, %ethnl_update_u32.exit164.ethnl_update_u32.exit170_crit_edge
  %mod.7 = phi i8 [ %mod.6, %ethnl_update_u32.exit164.ethnl_update_u32.exit170_crit_edge ], [ %mod.6, %if.end.i168.ethnl_update_u32.exit170_crit_edge ], [ 1, %if.end2.i169 ]
  %stats_block_coalesce_usecs = getelementptr inbounds %struct.ethtool_coalesce, ptr %coalesce, i32 0, i32 9
  %arrayidx41 = getelementptr ptr, ptr %4, i32 10
  %90 = ptrtoint ptr %arrayidx41 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %arrayidx41, align 4
  %tobool.not.i171 = icmp eq ptr %91, null
  br i1 %tobool.not.i171, label %ethnl_update_u32.exit170.ethnl_update_u32.exit176_crit_edge, label %if.end.i174

ethnl_update_u32.exit170.ethnl_update_u32.exit176_crit_edge: ; preds = %ethnl_update_u32.exit170
  call void @__sanitizer_cov_trace_pc() #7
  br label %ethnl_update_u32.exit176

if.end.i174:                                      ; preds = %ethnl_update_u32.exit170
  %add.ptr.i.i.i172 = getelementptr i8, ptr %91, i32 4
  %92 = ptrtoint ptr %add.ptr.i.i.i172 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %add.ptr.i.i.i172, align 4
  %94 = ptrtoint ptr %stats_block_coalesce_usecs to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %stats_block_coalesce_usecs, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %95, i32 %93)
  %cmp.i173 = icmp eq i32 %95, %93
  br i1 %cmp.i173, label %if.end.i174.ethnl_update_u32.exit176_crit_edge, label %if.end2.i175

if.end.i174.ethnl_update_u32.exit176_crit_edge:   ; preds = %if.end.i174
  call void @__sanitizer_cov_trace_pc() #7
  br label %ethnl_update_u32.exit176

if.end2.i175:                                     ; preds = %if.end.i174
  call void @__sanitizer_cov_trace_pc() #7
  %96 = ptrtoint ptr %stats_block_coalesce_usecs to i32
  call void @__asan_store4_noabort(i32 %96)
  store i32 %93, ptr %stats_block_coalesce_usecs, align 4
  br label %ethnl_update_u32.exit176

ethnl_update_u32.exit176:                         ; preds = %if.end2.i175, %if.end.i174.ethnl_update_u32.exit176_crit_edge, %ethnl_update_u32.exit170.ethnl_update_u32.exit176_crit_edge
  %mod.8 = phi i8 [ %mod.7, %ethnl_update_u32.exit170.ethnl_update_u32.exit176_crit_edge ], [ %mod.7, %if.end.i174.ethnl_update_u32.exit176_crit_edge ], [ 1, %if.end2.i175 ]
  %use_adaptive_rx_coalesce = getelementptr inbounds %struct.ethtool_coalesce, ptr %coalesce, i32 0, i32 10
  %arrayidx42 = getelementptr ptr, ptr %4, i32 11
  %97 = ptrtoint ptr %arrayidx42 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %arrayidx42, align 4
  %tobool.not.i177 = icmp eq ptr %98, null
  br i1 %tobool.not.i177, label %ethnl_update_u32.exit176.ethnl_update_bool32.exit_crit_edge, label %if.end.i180

ethnl_update_u32.exit176.ethnl_update_bool32.exit_crit_edge: ; preds = %ethnl_update_u32.exit176
  call void @__sanitizer_cov_trace_pc() #7
  br label %ethnl_update_bool32.exit

if.end.i180:                                      ; preds = %ethnl_update_u32.exit176
  %add.ptr.i.i.i178 = getelementptr i8, ptr %98, i32 4
  %99 = ptrtoint ptr %add.ptr.i.i.i178 to i32
  call void @__asan_load1_noabort(i32 %99)
  %100 = load i8, ptr %add.ptr.i.i.i178, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %100)
  %tobool1.i = icmp ne i8 %100, 0
  %101 = ptrtoint ptr %use_adaptive_rx_coalesce to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %use_adaptive_rx_coalesce, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %102)
  %tobool3.i = icmp eq i32 %102, 0
  %cmp.i179 = xor i1 %tobool1.i, %tobool3.i
  br i1 %cmp.i179, label %if.end.i180.ethnl_update_bool32.exit_crit_edge, label %if.end11.i

if.end.i180.ethnl_update_bool32.exit_crit_edge:   ; preds = %if.end.i180
  call void @__sanitizer_cov_trace_pc() #7
  br label %ethnl_update_bool32.exit

if.end11.i:                                       ; preds = %if.end.i180
  call void @__sanitizer_cov_trace_pc() #7
  %conv8.i = zext i1 %tobool1.i to i32
  %103 = ptrtoint ptr %use_adaptive_rx_coalesce to i32
  call void @__asan_store4_noabort(i32 %103)
  store i32 %conv8.i, ptr %use_adaptive_rx_coalesce, align 4
  br label %ethnl_update_bool32.exit

ethnl_update_bool32.exit:                         ; preds = %if.end11.i, %if.end.i180.ethnl_update_bool32.exit_crit_edge, %ethnl_update_u32.exit176.ethnl_update_bool32.exit_crit_edge
  %mod.9 = phi i8 [ %mod.8, %ethnl_update_u32.exit176.ethnl_update_bool32.exit_crit_edge ], [ %mod.8, %if.end.i180.ethnl_update_bool32.exit_crit_edge ], [ 1, %if.end11.i ]
  %use_adaptive_tx_coalesce = getelementptr inbounds %struct.ethtool_coalesce, ptr %coalesce, i32 0, i32 11
  %arrayidx43 = getelementptr ptr, ptr %4, i32 12
  %104 = ptrtoint ptr %arrayidx43 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %arrayidx43, align 4
  %tobool.not.i181 = icmp eq ptr %105, null
  br i1 %tobool.not.i181, label %ethnl_update_bool32.exit.ethnl_update_bool32.exit189_crit_edge, label %if.end.i186

ethnl_update_bool32.exit.ethnl_update_bool32.exit189_crit_edge: ; preds = %ethnl_update_bool32.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %ethnl_update_bool32.exit189

if.end.i186:                                      ; preds = %ethnl_update_bool32.exit
  %add.ptr.i.i.i182 = getelementptr i8, ptr %105, i32 4
  %106 = ptrtoint ptr %add.ptr.i.i.i182 to i32
  call void @__asan_load1_noabort(i32 %106)
  %107 = load i8, ptr %add.ptr.i.i.i182, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %107)
  %tobool1.i183 = icmp ne i8 %107, 0
  %108 = ptrtoint ptr %use_adaptive_tx_coalesce to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %use_adaptive_tx_coalesce, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %109)
  %tobool3.i184 = icmp eq i32 %109, 0
  %cmp.i185 = xor i1 %tobool1.i183, %tobool3.i184
  br i1 %cmp.i185, label %if.end.i186.ethnl_update_bool32.exit189_crit_edge, label %if.end11.i188

if.end.i186.ethnl_update_bool32.exit189_crit_edge: ; preds = %if.end.i186
  call void @__sanitizer_cov_trace_pc() #7
  br label %ethnl_update_bool32.exit189

if.end11.i188:                                    ; preds = %if.end.i186
  call void @__sanitizer_cov_trace_pc() #7
  %conv8.i187 = zext i1 %tobool1.i183 to i32
  %110 = ptrtoint ptr %use_adaptive_tx_coalesce to i32
  call void @__asan_store4_noabort(i32 %110)
  store i32 %conv8.i187, ptr %use_adaptive_tx_coalesce, align 4
  br label %ethnl_update_bool32.exit189

ethnl_update_bool32.exit189:                      ; preds = %if.end11.i188, %if.end.i186.ethnl_update_bool32.exit189_crit_edge, %ethnl_update_bool32.exit.ethnl_update_bool32.exit189_crit_edge
  %mod.10 = phi i8 [ %mod.9, %ethnl_update_bool32.exit.ethnl_update_bool32.exit189_crit_edge ], [ %mod.9, %if.end.i186.ethnl_update_bool32.exit189_crit_edge ], [ 1, %if.end11.i188 ]
  %pkt_rate_low = getelementptr inbounds %struct.ethtool_coalesce, ptr %coalesce, i32 0, i32 12
  %arrayidx44 = getelementptr ptr, ptr %4, i32 13
  %111 = ptrtoint ptr %arrayidx44 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %arrayidx44, align 4
  %tobool.not.i190 = icmp eq ptr %112, null
  br i1 %tobool.not.i190, label %ethnl_update_bool32.exit189.ethnl_update_u32.exit195_crit_edge, label %if.end.i193

ethnl_update_bool32.exit189.ethnl_update_u32.exit195_crit_edge: ; preds = %ethnl_update_bool32.exit189
  call void @__sanitizer_cov_trace_pc() #7
  br label %ethnl_update_u32.exit195

if.end.i193:                                      ; preds = %ethnl_update_bool32.exit189
  %add.ptr.i.i.i191 = getelementptr i8, ptr %112, i32 4
  %113 = ptrtoint ptr %add.ptr.i.i.i191 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %add.ptr.i.i.i191, align 4
  %115 = ptrtoint ptr %pkt_rate_low to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %pkt_rate_low, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %116, i32 %114)
  %cmp.i192 = icmp eq i32 %116, %114
  br i1 %cmp.i192, label %if.end.i193.ethnl_update_u32.exit195_crit_edge, label %if.end2.i194

if.end.i193.ethnl_update_u32.exit195_crit_edge:   ; preds = %if.end.i193
  call void @__sanitizer_cov_trace_pc() #7
  br label %ethnl_update_u32.exit195

if.end2.i194:                                     ; preds = %if.end.i193
  call void @__sanitizer_cov_trace_pc() #7
  %117 = ptrtoint ptr %pkt_rate_low to i32
  call void @__asan_store4_noabort(i32 %117)
  store i32 %114, ptr %pkt_rate_low, align 4
  br label %ethnl_update_u32.exit195

ethnl_update_u32.exit195:                         ; preds = %if.end2.i194, %if.end.i193.ethnl_update_u32.exit195_crit_edge, %ethnl_update_bool32.exit189.ethnl_update_u32.exit195_crit_edge
  %mod.11 = phi i8 [ %mod.10, %ethnl_update_bool32.exit189.ethnl_update_u32.exit195_crit_edge ], [ %mod.10, %if.end.i193.ethnl_update_u32.exit195_crit_edge ], [ 1, %if.end2.i194 ]
  %rx_coalesce_usecs_low = getelementptr inbounds %struct.ethtool_coalesce, ptr %coalesce, i32 0, i32 13
  %arrayidx45 = getelementptr ptr, ptr %4, i32 14
  %118 = ptrtoint ptr %arrayidx45 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %arrayidx45, align 4
  %tobool.not.i196 = icmp eq ptr %119, null
  br i1 %tobool.not.i196, label %ethnl_update_u32.exit195.ethnl_update_u32.exit201_crit_edge, label %if.end.i199

ethnl_update_u32.exit195.ethnl_update_u32.exit201_crit_edge: ; preds = %ethnl_update_u32.exit195
  call void @__sanitizer_cov_trace_pc() #7
  br label %ethnl_update_u32.exit201

if.end.i199:                                      ; preds = %ethnl_update_u32.exit195
  %add.ptr.i.i.i197 = getelementptr i8, ptr %119, i32 4
  %120 = ptrtoint ptr %add.ptr.i.i.i197 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %add.ptr.i.i.i197, align 4
  %122 = ptrtoint ptr %rx_coalesce_usecs_low to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %rx_coalesce_usecs_low, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %123, i32 %121)
  %cmp.i198 = icmp eq i32 %123, %121
  br i1 %cmp.i198, label %if.end.i199.ethnl_update_u32.exit201_crit_edge, label %if.end2.i200

if.end.i199.ethnl_update_u32.exit201_crit_edge:   ; preds = %if.end.i199
  call void @__sanitizer_cov_trace_pc() #7
  br label %ethnl_update_u32.exit201

if.end2.i200:                                     ; preds = %if.end.i199
  call void @__sanitizer_cov_trace_pc() #7
  %124 = ptrtoint ptr %rx_coalesce_usecs_low to i32
  call void @__asan_store4_noabort(i32 %124)
  store i32 %121, ptr %rx_coalesce_usecs_low, align 4
  br label %ethnl_update_u32.exit201

ethnl_update_u32.exit201:                         ; preds = %if.end2.i200, %if.end.i199.ethnl_update_u32.exit201_crit_edge, %ethnl_update_u32.exit195.ethnl_update_u32.exit201_crit_edge
  %mod.12 = phi i8 [ %mod.11, %ethnl_update_u32.exit195.ethnl_update_u32.exit201_crit_edge ], [ %mod.11, %if.end.i199.ethnl_update_u32.exit201_crit_edge ], [ 1, %if.end2.i200 ]
  %rx_max_coalesced_frames_low = getelementptr inbounds %struct.ethtool_coalesce, ptr %coalesce, i32 0, i32 14
  %arrayidx46 = getelementptr ptr, ptr %4, i32 15
  %125 = ptrtoint ptr %arrayidx46 to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %arrayidx46, align 4
  %tobool.not.i202 = icmp eq ptr %126, null
  br i1 %tobool.not.i202, label %ethnl_update_u32.exit201.ethnl_update_u32.exit207_crit_edge, label %if.end.i205

ethnl_update_u32.exit201.ethnl_update_u32.exit207_crit_edge: ; preds = %ethnl_update_u32.exit201
  call void @__sanitizer_cov_trace_pc() #7
  br label %ethnl_update_u32.exit207

if.end.i205:                                      ; preds = %ethnl_update_u32.exit201
  %add.ptr.i.i.i203 = getelementptr i8, ptr %126, i32 4
  %127 = ptrtoint ptr %add.ptr.i.i.i203 to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %add.ptr.i.i.i203, align 4
  %129 = ptrtoint ptr %rx_max_coalesced_frames_low to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %rx_max_coalesced_frames_low, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %130, i32 %128)
  %cmp.i204 = icmp eq i32 %130, %128
  br i1 %cmp.i204, label %if.end.i205.ethnl_update_u32.exit207_crit_edge, label %if.end2.i206

if.end.i205.ethnl_update_u32.exit207_crit_edge:   ; preds = %if.end.i205
  call void @__sanitizer_cov_trace_pc() #7
  br label %ethnl_update_u32.exit207

if.end2.i206:                                     ; preds = %if.end.i205
  call void @__sanitizer_cov_trace_pc() #7
  %131 = ptrtoint ptr %rx_max_coalesced_frames_low to i32
  call void @__asan_store4_noabort(i32 %131)
  store i32 %128, ptr %rx_max_coalesced_frames_low, align 4
  br label %ethnl_update_u32.exit207

ethnl_update_u32.exit207:                         ; preds = %if.end2.i206, %if.end.i205.ethnl_update_u32.exit207_crit_edge, %ethnl_update_u32.exit201.ethnl_update_u32.exit207_crit_edge
  %mod.13 = phi i8 [ %mod.12, %ethnl_update_u32.exit201.ethnl_update_u32.exit207_crit_edge ], [ %mod.12, %if.end.i205.ethnl_update_u32.exit207_crit_edge ], [ 1, %if.end2.i206 ]
  %tx_coalesce_usecs_low = getelementptr inbounds %struct.ethtool_coalesce, ptr %coalesce, i32 0, i32 15
  %arrayidx47 = getelementptr ptr, ptr %4, i32 16
  %132 = ptrtoint ptr %arrayidx47 to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %arrayidx47, align 4
  %tobool.not.i208 = icmp eq ptr %133, null
  br i1 %tobool.not.i208, label %ethnl_update_u32.exit207.ethnl_update_u32.exit213_crit_edge, label %if.end.i211

ethnl_update_u32.exit207.ethnl_update_u32.exit213_crit_edge: ; preds = %ethnl_update_u32.exit207
  call void @__sanitizer_cov_trace_pc() #7
  br label %ethnl_update_u32.exit213

if.end.i211:                                      ; preds = %ethnl_update_u32.exit207
  %add.ptr.i.i.i209 = getelementptr i8, ptr %133, i32 4
  %134 = ptrtoint ptr %add.ptr.i.i.i209 to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load i32, ptr %add.ptr.i.i.i209, align 4
  %136 = ptrtoint ptr %tx_coalesce_usecs_low to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load i32, ptr %tx_coalesce_usecs_low, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %137, i32 %135)
  %cmp.i210 = icmp eq i32 %137, %135
  br i1 %cmp.i210, label %if.end.i211.ethnl_update_u32.exit213_crit_edge, label %if.end2.i212

if.end.i211.ethnl_update_u32.exit213_crit_edge:   ; preds = %if.end.i211
  call void @__sanitizer_cov_trace_pc() #7
  br label %ethnl_update_u32.exit213

if.end2.i212:                                     ; preds = %if.end.i211
  call void @__sanitizer_cov_trace_pc() #7
  %138 = ptrtoint ptr %tx_coalesce_usecs_low to i32
  call void @__asan_store4_noabort(i32 %138)
  store i32 %135, ptr %tx_coalesce_usecs_low, align 4
  br label %ethnl_update_u32.exit213

ethnl_update_u32.exit213:                         ; preds = %if.end2.i212, %if.end.i211.ethnl_update_u32.exit213_crit_edge, %ethnl_update_u32.exit207.ethnl_update_u32.exit213_crit_edge
  %mod.14 = phi i8 [ %mod.13, %ethnl_update_u32.exit207.ethnl_update_u32.exit213_crit_edge ], [ %mod.13, %if.end.i211.ethnl_update_u32.exit213_crit_edge ], [ 1, %if.end2.i212 ]
  %tx_max_coalesced_frames_low = getelementptr inbounds %struct.ethtool_coalesce, ptr %coalesce, i32 0, i32 16
  %arrayidx48 = getelementptr ptr, ptr %4, i32 17
  %139 = ptrtoint ptr %arrayidx48 to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %arrayidx48, align 4
  %tobool.not.i214 = icmp eq ptr %140, null
  br i1 %tobool.not.i214, label %ethnl_update_u32.exit213.ethnl_update_u32.exit219_crit_edge, label %if.end.i217

ethnl_update_u32.exit213.ethnl_update_u32.exit219_crit_edge: ; preds = %ethnl_update_u32.exit213
  call void @__sanitizer_cov_trace_pc() #7
  br label %ethnl_update_u32.exit219

if.end.i217:                                      ; preds = %ethnl_update_u32.exit213
  %add.ptr.i.i.i215 = getelementptr i8, ptr %140, i32 4
  %141 = ptrtoint ptr %add.ptr.i.i.i215 to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load i32, ptr %add.ptr.i.i.i215, align 4
  %143 = ptrtoint ptr %tx_max_coalesced_frames_low to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load i32, ptr %tx_max_coalesced_frames_low, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %144, i32 %142)
  %cmp.i216 = icmp eq i32 %144, %142
  br i1 %cmp.i216, label %if.end.i217.ethnl_update_u32.exit219_crit_edge, label %if.end2.i218

if.end.i217.ethnl_update_u32.exit219_crit_edge:   ; preds = %if.end.i217
  call void @__sanitizer_cov_trace_pc() #7
  br label %ethnl_update_u32.exit219

if.end2.i218:                                     ; preds = %if.end.i217
  call void @__sanitizer_cov_trace_pc() #7
  %145 = ptrtoint ptr %tx_max_coalesced_frames_low to i32
  call void @__asan_store4_noabort(i32 %145)
  store i32 %142, ptr %tx_max_coalesced_frames_low, align 4
  br label %ethnl_update_u32.exit219

ethnl_update_u32.exit219:                         ; preds = %if.end2.i218, %if.end.i217.ethnl_update_u32.exit219_crit_edge, %ethnl_update_u32.exit213.ethnl_update_u32.exit219_crit_edge
  %mod.15 = phi i8 [ %mod.14, %ethnl_update_u32.exit213.ethnl_update_u32.exit219_crit_edge ], [ %mod.14, %if.end.i217.ethnl_update_u32.exit219_crit_edge ], [ 1, %if.end2.i218 ]
  %pkt_rate_high = getelementptr inbounds %struct.ethtool_coalesce, ptr %coalesce, i32 0, i32 17
  %arrayidx49 = getelementptr ptr, ptr %4, i32 18
  %146 = ptrtoint ptr %arrayidx49 to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %arrayidx49, align 4
  %tobool.not.i220 = icmp eq ptr %147, null
  br i1 %tobool.not.i220, label %ethnl_update_u32.exit219.ethnl_update_u32.exit225_crit_edge, label %if.end.i223

ethnl_update_u32.exit219.ethnl_update_u32.exit225_crit_edge: ; preds = %ethnl_update_u32.exit219
  call void @__sanitizer_cov_trace_pc() #7
  br label %ethnl_update_u32.exit225

if.end.i223:                                      ; preds = %ethnl_update_u32.exit219
  %add.ptr.i.i.i221 = getelementptr i8, ptr %147, i32 4
  %148 = ptrtoint ptr %add.ptr.i.i.i221 to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load i32, ptr %add.ptr.i.i.i221, align 4
  %150 = ptrtoint ptr %pkt_rate_high to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load i32, ptr %pkt_rate_high, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %151, i32 %149)
  %cmp.i222 = icmp eq i32 %151, %149
  br i1 %cmp.i222, label %if.end.i223.ethnl_update_u32.exit225_crit_edge, label %if.end2.i224

if.end.i223.ethnl_update_u32.exit225_crit_edge:   ; preds = %if.end.i223
  call void @__sanitizer_cov_trace_pc() #7
  br label %ethnl_update_u32.exit225

if.end2.i224:                                     ; preds = %if.end.i223
  call void @__sanitizer_cov_trace_pc() #7
  %152 = ptrtoint ptr %pkt_rate_high to i32
  call void @__asan_store4_noabort(i32 %152)
  store i32 %149, ptr %pkt_rate_high, align 4
  br label %ethnl_update_u32.exit225

ethnl_update_u32.exit225:                         ; preds = %if.end2.i224, %if.end.i223.ethnl_update_u32.exit225_crit_edge, %ethnl_update_u32.exit219.ethnl_update_u32.exit225_crit_edge
  %mod.16 = phi i8 [ %mod.15, %ethnl_update_u32.exit219.ethnl_update_u32.exit225_crit_edge ], [ %mod.15, %if.end.i223.ethnl_update_u32.exit225_crit_edge ], [ 1, %if.end2.i224 ]
  %rx_coalesce_usecs_high = getelementptr inbounds %struct.ethtool_coalesce, ptr %coalesce, i32 0, i32 18
  %arrayidx50 = getelementptr ptr, ptr %4, i32 19
  %153 = ptrtoint ptr %arrayidx50 to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %arrayidx50, align 4
  %tobool.not.i226 = icmp eq ptr %154, null
  br i1 %tobool.not.i226, label %ethnl_update_u32.exit225.ethnl_update_u32.exit231_crit_edge, label %if.end.i229

ethnl_update_u32.exit225.ethnl_update_u32.exit231_crit_edge: ; preds = %ethnl_update_u32.exit225
  call void @__sanitizer_cov_trace_pc() #7
  br label %ethnl_update_u32.exit231

if.end.i229:                                      ; preds = %ethnl_update_u32.exit225
  %add.ptr.i.i.i227 = getelementptr i8, ptr %154, i32 4
  %155 = ptrtoint ptr %add.ptr.i.i.i227 to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load i32, ptr %add.ptr.i.i.i227, align 4
  %157 = ptrtoint ptr %rx_coalesce_usecs_high to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load i32, ptr %rx_coalesce_usecs_high, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %158, i32 %156)
  %cmp.i228 = icmp eq i32 %158, %156
  br i1 %cmp.i228, label %if.end.i229.ethnl_update_u32.exit231_crit_edge, label %if.end2.i230

if.end.i229.ethnl_update_u32.exit231_crit_edge:   ; preds = %if.end.i229
  call void @__sanitizer_cov_trace_pc() #7
  br label %ethnl_update_u32.exit231

if.end2.i230:                                     ; preds = %if.end.i229
  call void @__sanitizer_cov_trace_pc() #7
  %159 = ptrtoint ptr %rx_coalesce_usecs_high to i32
  call void @__asan_store4_noabort(i32 %159)
  store i32 %156, ptr %rx_coalesce_usecs_high, align 4
  br label %ethnl_update_u32.exit231

ethnl_update_u32.exit231:                         ; preds = %if.end2.i230, %if.end.i229.ethnl_update_u32.exit231_crit_edge, %ethnl_update_u32.exit225.ethnl_update_u32.exit231_crit_edge
  %mod.17 = phi i8 [ %mod.16, %ethnl_update_u32.exit225.ethnl_update_u32.exit231_crit_edge ], [ %mod.16, %if.end.i229.ethnl_update_u32.exit231_crit_edge ], [ 1, %if.end2.i230 ]
  %rx_max_coalesced_frames_high = getelementptr inbounds %struct.ethtool_coalesce, ptr %coalesce, i32 0, i32 19
  %arrayidx51 = getelementptr ptr, ptr %4, i32 20
  %160 = ptrtoint ptr %arrayidx51 to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load ptr, ptr %arrayidx51, align 4
  %tobool.not.i232 = icmp eq ptr %161, null
  br i1 %tobool.not.i232, label %ethnl_update_u32.exit231.ethnl_update_u32.exit237_crit_edge, label %if.end.i235

ethnl_update_u32.exit231.ethnl_update_u32.exit237_crit_edge: ; preds = %ethnl_update_u32.exit231
  call void @__sanitizer_cov_trace_pc() #7
  br label %ethnl_update_u32.exit237

if.end.i235:                                      ; preds = %ethnl_update_u32.exit231
  %add.ptr.i.i.i233 = getelementptr i8, ptr %161, i32 4
  %162 = ptrtoint ptr %add.ptr.i.i.i233 to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load i32, ptr %add.ptr.i.i.i233, align 4
  %164 = ptrtoint ptr %rx_max_coalesced_frames_high to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load i32, ptr %rx_max_coalesced_frames_high, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %165, i32 %163)
  %cmp.i234 = icmp eq i32 %165, %163
  br i1 %cmp.i234, label %if.end.i235.ethnl_update_u32.exit237_crit_edge, label %if.end2.i236

if.end.i235.ethnl_update_u32.exit237_crit_edge:   ; preds = %if.end.i235
  call void @__sanitizer_cov_trace_pc() #7
  br label %ethnl_update_u32.exit237

if.end2.i236:                                     ; preds = %if.end.i235
  call void @__sanitizer_cov_trace_pc() #7
  %166 = ptrtoint ptr %rx_max_coalesced_frames_high to i32
  call void @__asan_store4_noabort(i32 %166)
  store i32 %163, ptr %rx_max_coalesced_frames_high, align 4
  br label %ethnl_update_u32.exit237

ethnl_update_u32.exit237:                         ; preds = %if.end2.i236, %if.end.i235.ethnl_update_u32.exit237_crit_edge, %ethnl_update_u32.exit231.ethnl_update_u32.exit237_crit_edge
  %mod.18 = phi i8 [ %mod.17, %ethnl_update_u32.exit231.ethnl_update_u32.exit237_crit_edge ], [ %mod.17, %if.end.i235.ethnl_update_u32.exit237_crit_edge ], [ 1, %if.end2.i236 ]
  %tx_coalesce_usecs_high = getelementptr inbounds %struct.ethtool_coalesce, ptr %coalesce, i32 0, i32 20
  %arrayidx52 = getelementptr ptr, ptr %4, i32 21
  %167 = ptrtoint ptr %arrayidx52 to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load ptr, ptr %arrayidx52, align 4
  %tobool.not.i238 = icmp eq ptr %168, null
  br i1 %tobool.not.i238, label %ethnl_update_u32.exit237.ethnl_update_u32.exit243_crit_edge, label %if.end.i241

ethnl_update_u32.exit237.ethnl_update_u32.exit243_crit_edge: ; preds = %ethnl_update_u32.exit237
  call void @__sanitizer_cov_trace_pc() #7
  br label %ethnl_update_u32.exit243

if.end.i241:                                      ; preds = %ethnl_update_u32.exit237
  %add.ptr.i.i.i239 = getelementptr i8, ptr %168, i32 4
  %169 = ptrtoint ptr %add.ptr.i.i.i239 to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load i32, ptr %add.ptr.i.i.i239, align 4
  %171 = ptrtoint ptr %tx_coalesce_usecs_high to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load i32, ptr %tx_coalesce_usecs_high, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %172, i32 %170)
  %cmp.i240 = icmp eq i32 %172, %170
  br i1 %cmp.i240, label %if.end.i241.ethnl_update_u32.exit243_crit_edge, label %if.end2.i242

if.end.i241.ethnl_update_u32.exit243_crit_edge:   ; preds = %if.end.i241
  call void @__sanitizer_cov_trace_pc() #7
  br label %ethnl_update_u32.exit243

if.end2.i242:                                     ; preds = %if.end.i241
  call void @__sanitizer_cov_trace_pc() #7
  %173 = ptrtoint ptr %tx_coalesce_usecs_high to i32
  call void @__asan_store4_noabort(i32 %173)
  store i32 %170, ptr %tx_coalesce_usecs_high, align 4
  br label %ethnl_update_u32.exit243

ethnl_update_u32.exit243:                         ; preds = %if.end2.i242, %if.end.i241.ethnl_update_u32.exit243_crit_edge, %ethnl_update_u32.exit237.ethnl_update_u32.exit243_crit_edge
  %mod.19 = phi i8 [ %mod.18, %ethnl_update_u32.exit237.ethnl_update_u32.exit243_crit_edge ], [ %mod.18, %if.end.i241.ethnl_update_u32.exit243_crit_edge ], [ 1, %if.end2.i242 ]
  %tx_max_coalesced_frames_high = getelementptr inbounds %struct.ethtool_coalesce, ptr %coalesce, i32 0, i32 21
  %arrayidx53 = getelementptr ptr, ptr %4, i32 22
  %174 = ptrtoint ptr %arrayidx53 to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load ptr, ptr %arrayidx53, align 4
  %tobool.not.i244 = icmp eq ptr %175, null
  br i1 %tobool.not.i244, label %ethnl_update_u32.exit243.ethnl_update_u32.exit249_crit_edge, label %if.end.i247

ethnl_update_u32.exit243.ethnl_update_u32.exit249_crit_edge: ; preds = %ethnl_update_u32.exit243
  call void @__sanitizer_cov_trace_pc() #7
  br label %ethnl_update_u32.exit249

if.end.i247:                                      ; preds = %ethnl_update_u32.exit243
  %add.ptr.i.i.i245 = getelementptr i8, ptr %175, i32 4
  %176 = ptrtoint ptr %add.ptr.i.i.i245 to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load i32, ptr %add.ptr.i.i.i245, align 4
  %178 = ptrtoint ptr %tx_max_coalesced_frames_high to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load i32, ptr %tx_max_coalesced_frames_high, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %179, i32 %177)
  %cmp.i246 = icmp eq i32 %179, %177
  br i1 %cmp.i246, label %if.end.i247.ethnl_update_u32.exit249_crit_edge, label %if.end2.i248

if.end.i247.ethnl_update_u32.exit249_crit_edge:   ; preds = %if.end.i247
  call void @__sanitizer_cov_trace_pc() #7
  br label %ethnl_update_u32.exit249

if.end2.i248:                                     ; preds = %if.end.i247
  call void @__sanitizer_cov_trace_pc() #7
  %180 = ptrtoint ptr %tx_max_coalesced_frames_high to i32
  call void @__asan_store4_noabort(i32 %180)
  store i32 %177, ptr %tx_max_coalesced_frames_high, align 4
  br label %ethnl_update_u32.exit249

ethnl_update_u32.exit249:                         ; preds = %if.end2.i248, %if.end.i247.ethnl_update_u32.exit249_crit_edge, %ethnl_update_u32.exit243.ethnl_update_u32.exit249_crit_edge
  %mod.20 = phi i8 [ %mod.19, %ethnl_update_u32.exit243.ethnl_update_u32.exit249_crit_edge ], [ %mod.19, %if.end.i247.ethnl_update_u32.exit249_crit_edge ], [ 1, %if.end2.i248 ]
  %rate_sample_interval = getelementptr inbounds %struct.ethtool_coalesce, ptr %coalesce, i32 0, i32 22
  %arrayidx54 = getelementptr ptr, ptr %4, i32 23
  %181 = ptrtoint ptr %arrayidx54 to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load ptr, ptr %arrayidx54, align 4
  %tobool.not.i250 = icmp eq ptr %182, null
  br i1 %tobool.not.i250, label %ethnl_update_u32.exit249.ethnl_update_u32.exit255_crit_edge, label %if.end.i253

ethnl_update_u32.exit249.ethnl_update_u32.exit255_crit_edge: ; preds = %ethnl_update_u32.exit249
  call void @__sanitizer_cov_trace_pc() #7
  br label %ethnl_update_u32.exit255

if.end.i253:                                      ; preds = %ethnl_update_u32.exit249
  %add.ptr.i.i.i251 = getelementptr i8, ptr %182, i32 4
  %183 = ptrtoint ptr %add.ptr.i.i.i251 to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load i32, ptr %add.ptr.i.i.i251, align 4
  %185 = ptrtoint ptr %rate_sample_interval to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load i32, ptr %rate_sample_interval, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %186, i32 %184)
  %cmp.i252 = icmp eq i32 %186, %184
  br i1 %cmp.i252, label %if.end.i253.ethnl_update_u32.exit255_crit_edge, label %if.end2.i254

if.end.i253.ethnl_update_u32.exit255_crit_edge:   ; preds = %if.end.i253
  call void @__sanitizer_cov_trace_pc() #7
  br label %ethnl_update_u32.exit255

if.end2.i254:                                     ; preds = %if.end.i253
  call void @__sanitizer_cov_trace_pc() #7
  %187 = ptrtoint ptr %rate_sample_interval to i32
  call void @__asan_store4_noabort(i32 %187)
  store i32 %184, ptr %rate_sample_interval, align 4
  br label %ethnl_update_u32.exit255

ethnl_update_u32.exit255:                         ; preds = %if.end2.i254, %if.end.i253.ethnl_update_u32.exit255_crit_edge, %ethnl_update_u32.exit249.ethnl_update_u32.exit255_crit_edge
  %mod.21 = phi i8 [ %mod.20, %ethnl_update_u32.exit249.ethnl_update_u32.exit255_crit_edge ], [ %mod.20, %if.end.i253.ethnl_update_u32.exit255_crit_edge ], [ 1, %if.end2.i254 ]
  %arrayidx55 = getelementptr ptr, ptr %4, i32 24
  %188 = ptrtoint ptr %arrayidx55 to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load ptr, ptr %arrayidx55, align 4
  %tobool.not.i256 = icmp eq ptr %189, null
  br i1 %tobool.not.i256, label %ethnl_update_u32.exit255.ethnl_update_u8.exit_crit_edge, label %if.end.i259

ethnl_update_u32.exit255.ethnl_update_u8.exit_crit_edge: ; preds = %ethnl_update_u32.exit255
  call void @__sanitizer_cov_trace_pc() #7
  br label %ethnl_update_u8.exit

if.end.i259:                                      ; preds = %ethnl_update_u32.exit255
  %add.ptr.i.i.i257 = getelementptr i8, ptr %189, i32 4
  %190 = ptrtoint ptr %add.ptr.i.i.i257 to i32
  call void @__asan_load1_noabort(i32 %190)
  %191 = load i8, ptr %add.ptr.i.i.i257, align 1
  %192 = ptrtoint ptr %kernel_coalesce to i32
  call void @__asan_load1_noabort(i32 %192)
  %193 = load i8, ptr %kernel_coalesce, align 2
  call void @__sanitizer_cov_trace_cmp1(i8 %193, i8 %191)
  %cmp.i258 = icmp eq i8 %193, %191
  br i1 %cmp.i258, label %if.end.i259.ethnl_update_u8.exit_crit_edge, label %if.end4.i

if.end.i259.ethnl_update_u8.exit_crit_edge:       ; preds = %if.end.i259
  call void @__sanitizer_cov_trace_pc() #7
  br label %ethnl_update_u8.exit

if.end4.i:                                        ; preds = %if.end.i259
  call void @__sanitizer_cov_trace_pc() #7
  %194 = ptrtoint ptr %kernel_coalesce to i32
  call void @__asan_store1_noabort(i32 %194)
  store i8 %191, ptr %kernel_coalesce, align 2
  br label %ethnl_update_u8.exit

ethnl_update_u8.exit:                             ; preds = %if.end4.i, %if.end.i259.ethnl_update_u8.exit_crit_edge, %ethnl_update_u32.exit255.ethnl_update_u8.exit_crit_edge
  %mod.22 = phi i8 [ %mod.21, %ethnl_update_u32.exit255.ethnl_update_u8.exit_crit_edge ], [ %mod.21, %if.end.i259.ethnl_update_u8.exit_crit_edge ], [ 1, %if.end4.i ]
  %use_cqe_mode_rx = getelementptr inbounds %struct.kernel_ethtool_coalesce, ptr %kernel_coalesce, i32 0, i32 1
  %arrayidx56 = getelementptr ptr, ptr %4, i32 25
  %195 = ptrtoint ptr %arrayidx56 to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load ptr, ptr %arrayidx56, align 4
  %tobool.not.i260 = icmp eq ptr %196, null
  br i1 %tobool.not.i260, label %ethnl_update_u8.exit.ethnl_update_u8.exit265_crit_edge, label %if.end.i263

ethnl_update_u8.exit.ethnl_update_u8.exit265_crit_edge: ; preds = %ethnl_update_u8.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %ethnl_update_u8.exit265

if.end.i263:                                      ; preds = %ethnl_update_u8.exit
  %add.ptr.i.i.i261 = getelementptr i8, ptr %196, i32 4
  %197 = ptrtoint ptr %add.ptr.i.i.i261 to i32
  call void @__asan_load1_noabort(i32 %197)
  %198 = load i8, ptr %add.ptr.i.i.i261, align 1
  %199 = ptrtoint ptr %use_cqe_mode_rx to i32
  call void @__asan_load1_noabort(i32 %199)
  %200 = load i8, ptr %use_cqe_mode_rx, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %200, i8 %198)
  %cmp.i262 = icmp eq i8 %200, %198
  br i1 %cmp.i262, label %if.end.i263.ethnl_update_u8.exit265_crit_edge, label %ethnl_update_u8.exit265.thread

if.end.i263.ethnl_update_u8.exit265_crit_edge:    ; preds = %if.end.i263
  call void @__sanitizer_cov_trace_pc() #7
  br label %ethnl_update_u8.exit265

ethnl_update_u8.exit265.thread:                   ; preds = %if.end.i263
  call void @__sanitizer_cov_trace_pc() #7
  %201 = ptrtoint ptr %use_cqe_mode_rx to i32
  call void @__asan_store1_noabort(i32 %201)
  store i8 %198, ptr %use_cqe_mode_rx, align 1
  br label %if.end59

ethnl_update_u8.exit265:                          ; preds = %if.end.i263.ethnl_update_u8.exit265_crit_edge, %ethnl_update_u8.exit.ethnl_update_u8.exit265_crit_edge
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %mod.22)
  %tobool57.not = icmp eq i8 %mod.22, 0
  br i1 %tobool57.not, label %ethnl_update_u8.exit265.out_ops_crit_edge, label %ethnl_update_u8.exit265.if.end59_crit_edge

ethnl_update_u8.exit265.if.end59_crit_edge:       ; preds = %ethnl_update_u8.exit265
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end59

ethnl_update_u8.exit265.out_ops_crit_edge:        ; preds = %ethnl_update_u8.exit265
  call void @__sanitizer_cov_trace_pc() #7
  br label %out_ops

if.end59:                                         ; preds = %ethnl_update_u8.exit265.if.end59_crit_edge, %ethnl_update_u8.exit265.thread
  %202 = ptrtoint ptr %ethtool_ops to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load ptr, ptr %ethtool_ops, align 16
  %set_coalesce61 = getelementptr inbounds %struct.ethtool_ops, ptr %203, i32 0, i32 17
  %204 = ptrtoint ptr %set_coalesce61 to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load ptr, ptr %set_coalesce61, align 4
  %206 = ptrtoint ptr %extack to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load ptr, ptr %extack, align 4
  %call63 = call i32 %205(ptr noundef %12, ptr noundef nonnull %coalesce, ptr noundef nonnull %kernel_coalesce, ptr noundef %207) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call63)
  %cmp64 = icmp slt i32 %call63, 0
  br i1 %cmp64, label %if.end59.out_ops_crit_edge, label %if.end67

if.end59.out_ops_crit_edge:                       ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #7
  br label %out_ops

if.end67:                                         ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #7
  call void @ethtool_notify(ptr noundef %12, i32 noundef 21, ptr noundef null) #5
  br label %out_ops

out_ops:                                          ; preds = %if.end67, %if.end59.out_ops_crit_edge, %ethnl_update_u8.exit265.out_ops_crit_edge, %if.end25.out_ops_crit_edge
  %ret.0 = phi i32 [ %call28, %if.end25.out_ops_crit_edge ], [ %call63, %if.end59.out_ops_crit_edge ], [ %call63, %if.end67 ], [ 0, %ethnl_update_u8.exit265.out_ops_crit_edge ]
  call void @ethnl_ops_complete(ptr noundef %12) #5
  br label %out_rtnl

out_rtnl:                                         ; preds = %out_ops, %for.end.out_rtnl_crit_edge
  %ret.1 = phi i32 [ %call21, %for.end.out_rtnl_crit_edge ], [ %ret.0, %out_ops ]
  call void @rtnl_unlock() #5
  br label %out_dev

out_dev:                                          ; preds = %out_rtnl, %if.then16, %if.then13.out_dev_crit_edge, %lor.lhs.false.out_dev_crit_edge, %if.end.out_dev_crit_edge
  %ret.2 = phi i32 [ %ret.1, %out_rtnl ], [ -95, %lor.lhs.false.out_dev_crit_edge ], [ -95, %if.end.out_dev_crit_edge ], [ -22, %if.then16 ], [ -22, %if.then13.out_dev_crit_edge ]
  %208 = ptrtoint ptr %req_info to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load ptr, ptr %req_info, align 4
  %tobool.not.i.i = icmp eq ptr %209, null
  br i1 %tobool.not.i.i, label %out_dev.cleanup_crit_edge, label %do.body1.i.i.i

out_dev.cleanup_crit_edge:                        ; preds = %out_dev
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.body1.i.i.i:                                   ; preds = %out_dev
  %dev_tracker.i = getelementptr inbounds %struct.ethnl_req_info, ptr %req_info, i32 0, i32 1
  %refcnt_tracker.i.i.i = getelementptr inbounds %struct.net_device, ptr %209, i32 0, i32 119
  %call.i.i.i = call i32 @ref_tracker_free(ptr noundef %refcnt_tracker.i.i.i, ptr noundef %dev_tracker.i) #5
  %210 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #5, !srcloc !18
  %pcpu_refcnt.i.i.i = getelementptr inbounds %struct.net_device, ptr %209, i32 0, i32 118
  %211 = ptrtoint ptr %pcpu_refcnt.i.i.i to i32
  call void @__asan_load4_noabort(i32 %211)
  %212 = load ptr, ptr %pcpu_refcnt.i.i.i, align 4
  %213 = ptrtoint ptr %212 to i32
  %214 = call i32 @llvm.read_register.i32(metadata !8) #5
  %and.i.i.i.i = and i32 %214, -16384
  %215 = inttoptr i32 %and.i.i.i.i to ptr
  %cpu.i.i.i = getelementptr inbounds %struct.thread_info, ptr %215, i32 0, i32 3
  %216 = ptrtoint ptr %cpu.i.i.i to i32
  call void @__asan_load4_noabort(i32 %216)
  %217 = load i32, ptr %cpu.i.i.i, align 4
  %arrayidx.i.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %217
  %218 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %218)
  %219 = load i32, ptr %arrayidx.i.i.i, align 4
  %add.i.i.i = add i32 %219, %213
  %220 = inttoptr i32 %add.i.i.i to ptr
  %221 = ptrtoint ptr %220 to i32
  call void @__asan_load4_noabort(i32 %221)
  %222 = load i32, ptr %220, align 4
  %add13.i.i.i = add i32 %222, -1
  store i32 %add13.i.i.i, ptr %220, align 4
  %223 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #5, !srcloc !19
  %and.i.i.i.i.i = and i32 %223, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i.i)
  %tobool24.not.i.i.i = icmp eq i32 %and.i.i.i.i.i, 0
  br i1 %tobool24.not.i.i.i, label %if.then28.i.i.i, label %do.body1.i.i.i.dev_put.exit.i.i_crit_edge, !prof !20

do.body1.i.i.i.dev_put.exit.i.i_crit_edge:        ; preds = %do.body1.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %dev_put.exit.i.i

if.then28.i.i.i:                                  ; preds = %do.body1.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  call void @warn_bogus_irq_restore() #5
  br label %dev_put.exit.i.i

dev_put.exit.i.i:                                 ; preds = %if.then28.i.i.i, %do.body1.i.i.i.dev_put.exit.i.i_crit_edge
  call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %210) #5, !srcloc !21
  br label %cleanup

cleanup:                                          ; preds = %dev_put.exit.i.i, %out_dev.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %entry.cleanup_crit_edge ], [ %ret.2, %out_dev.cleanup_crit_edge ], [ %ret.2, %dev_put.exit.i.i ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %req_info) #5
  call void @llvm.lifetime.end.p0(i64 92, ptr nonnull %coalesce) #5
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %kernel_coalesce) #5
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ethnl_parse_header_dev_get(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @do_trace_netlink_extack(ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtnl_lock() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ethnl_ops_begin(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ethtool_notify(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ethnl_ops_complete(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtnl_unlock() local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @coalesce_put_bool(ptr noundef %skb, i16 noundef zeroext %attr_type, i32 noundef %val, i32 noundef %supported_params) unnamed_addr #0 align 64 {
entry:
  %tmp.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %val)
  %tobool = icmp ne i32 %val, 0
  %.pre = zext i16 %attr_type to i32
  br i1 %tobool, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %sub.i = add nsw i32 %.pre, -2
  %shl.i = shl nuw i32 1, %sub.i
  %and = and i32 %shl.i, %supported_params
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool1.not = icmp eq i32 %and, 0
  br i1 %tobool1.not, label %land.lhs.true.return_crit_edge, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

land.lhs.true.return_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %conv5 = zext i1 %tobool to i8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i) #5
  %0 = ptrtoint ptr %tmp.i to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 %conv5, ptr %tmp.i, align 1
  %call.i = call i32 @nla_put(ptr noundef %skb, i32 noundef %.pre, i32 noundef 1, ptr noundef nonnull %tmp.i) #5
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool7 = icmp ne i32 %call.i, 0
  br label %return

return:                                           ; preds = %if.end, %land.lhs.true.return_crit_edge
  %retval.0 = phi i1 [ %tobool7, %if.end ], [ false, %land.lhs.true.return_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nla_put(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ref_tracker_free(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_bogus_irq_restore() local_unnamed_addr #3

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 4)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 4)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind readonly }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6}
!llvm.named.register.sp = !{!8}
!llvm.module.flags = !{!9, !10, !11, !12, !13, !14, !15, !16}
!llvm.ident = !{!17}

!0 = !{ptr @ethnl_coalesce_get_policy, !1, !"ethnl_coalesce_get_policy", i1 false, i1 false}
!1 = !{!"../net/ethtool/coalesce.c", i32 55, i32 25}
!2 = !{ptr @ethnl_coalesce_request_ops, !3, !"ethnl_coalesce_request_ops", i1 false, i1 false}
!3 = !{!"../net/ethtool/coalesce.c", i32 189, i32 32}
!4 = !{ptr @ethnl_coalesce_set_policy, !5, !"ethnl_coalesce_set_policy", i1 false, i1 false}
!5 = !{!"../net/ethtool/coalesce.c", i32 203, i32 25}
!6 = !{ptr @ethnl_set_coalesce.__msg, !7, !"__msg", i1 false, i1 false}
!7 = !{!"../net/ethtool/coalesce.c", i32 262, i32 4}
!8 = !{!"sp"}
!9 = !{i32 1, !"wchar_size", i32 2}
!10 = !{i32 1, !"min_enum_size", i32 4}
!11 = !{i32 8, !"branch-target-enforcement", i32 0}
!12 = !{i32 8, !"sign-return-address", i32 0}
!13 = !{i32 8, !"sign-return-address-all", i32 0}
!14 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!15 = !{i32 7, !"uwtable", i32 1}
!16 = !{i32 7, !"frame-pointer", i32 2}
!17 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!18 = !{i64 665701, i64 665762}
!19 = !{i64 668433}
!20 = !{!"branch_weights", i32 1, i32 2000}
!21 = !{i64 668718}
