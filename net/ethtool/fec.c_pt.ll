; ModuleID = '/llk/IR_all_yes/net/ethtool/fec.c_pt.bc'
source_filename = "../net/ethtool/fec.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.nla_policy = type { i8, i8, i16, %union.anon }
%union.anon = type { i32 }
%struct.ethnl_request_ops = type { i8, i8, i16, i32, i32, i8, ptr, ptr, ptr, ptr, ptr }
%struct.anon = type { i16, i16 }
%struct.ethtool_fecparam = type { i32, i32, i32, i32 }
%struct.ethtool_fec_stats = type { %struct.ethtool_fec_stat, %struct.ethtool_fec_stat, %struct.ethtool_fec_stat }
%struct.ethtool_fec_stat = type { i64, [8 x i64] }
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
%struct.ethnl_req_info = type { ptr, ptr, i32 }
%struct.fec_reply_data = type { %struct.ethnl_reply_data, [3 x i32], i32, i8, %struct.fec_stat_grp, %struct.fec_stat_grp, %struct.fec_stat_grp }
%struct.ethnl_reply_data = type { ptr }
%struct.fec_stat_grp = type { [9 x i64], i8 }
%struct.sk_buff = type { %union.anon.1, %union.anon.4, %union.anon.110, [48 x i8], %union.anon.111, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.113, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon.1 = type { %struct.anon.2 }
%struct.anon.2 = type { ptr, ptr, %union.anon.3 }
%union.anon.3 = type { ptr }
%union.anon.4 = type { ptr }
%union.anon.110 = type { i64 }
%union.anon.111 = type { %struct.anon.112 }
%struct.anon.112 = type { i32, ptr }
%union.anon.113 = type { %struct.anon.114 }
%struct.anon.114 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.115, i32, i32, i32, i16, i16, %union.anon.117, i32, %union.anon.118, %union.anon.119, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.115 = type { i32 }
%union.anon.117 = type { i32 }
%union.anon.118 = type { i32 }
%union.anon.119 = type { i16 }
%struct.genl_info = type { i32, i32, ptr, ptr, ptr, ptr, %struct.possible_net_t, [2 x ptr], ptr }
%struct.netlink_ext_ack = type { ptr, ptr, ptr, [20 x i8], i8 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }

@ethnl_header_policy_stats = external dso_local constant [4 x %struct.nla_policy], align 4
@ethnl_fec_get_policy = dso_local constant { <{ %struct.nla_policy, { i8, i8, i16, { ptr } } }>, [16 x i8] } { <{ %struct.nla_policy, { i8, i8, i16, { ptr } } }> <{ %struct.nla_policy zeroinitializer, { i8, i8, i16, { ptr } } { i8 8, i8 0, i16 3, { ptr } { ptr @ethnl_header_policy_stats } } }>, [16 x i8] zeroinitializer }, align 32
@ethnl_fec_request_ops = dso_local constant { %struct.ethnl_request_ops, [60 x i8] } { %struct.ethnl_request_ops { i8 29, i8 30, i16 1, i32 12, i32 264, i8 0, ptr null, ptr @fec_prepare_data, ptr @fec_reply_size, ptr @fec_fill_reply, ptr null }, [60 x i8] zeroinitializer }, align 32
@ethnl_header_policy = external dso_local constant [4 x %struct.nla_policy], align 4
@ethnl_fec_set_policy = dso_local constant { <{ %struct.nla_policy, { i8, i8, i16, { ptr } }, %struct.nla_policy, { i8, i8, i16, { %struct.anon } } }>, [32 x i8] } { <{ %struct.nla_policy, { i8, i8, i16, { ptr } }, %struct.nla_policy, { i8, i8, i16, { %struct.anon } } }> <{ %struct.nla_policy zeroinitializer, { i8, i8, i16, { ptr } } { i8 8, i8 0, i16 3, { ptr } { ptr @ethnl_header_policy } }, %struct.nla_policy { i8 8, i8 0, i16 0, %union.anon zeroinitializer }, { i8, i8, i16, { %struct.anon } } { i8 1, i8 4, i16 0, { %struct.anon } { %struct.anon { i16 0, i16 1 } } } }>, [32 x i8] zeroinitializer }, align 32
@link_mode_names = external dso_local constant [0 x [32 x i8]], align 1
@ethnl_set_fec.__msg = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"invalid FEC modes requested\00", [36 x i8] zeroinitializer }, align 32
@ethnl_set_fec.__msg.1 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"no FEC modes set\00", [47 x i8] zeroinitializer }, align 32
@fec_prepare_data.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"net/ethtool/fec.c\00", [46 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"include/net/netlink.h\00", [42 x i8] zeroinitializer }, align 32
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@___asan_gen_.3 = private unnamed_addr constant [21 x i8] c"ethnl_fec_get_policy\00", align 1
@___asan_gen_.5 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.19, i32 27, i32 25 }
@___asan_gen_.6 = private unnamed_addr constant [22 x i8] c"ethnl_fec_request_ops\00", align 1
@___asan_gen_.8 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.19, i32 220, i32 32 }
@___asan_gen_.9 = private unnamed_addr constant [21 x i8] c"ethnl_fec_set_policy\00", align 1
@___asan_gen_.11 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.19, i32 234, i32 25 }
@___asan_gen_.14 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.19, i32 287, i32 3 }
@___asan_gen_.15 = private unnamed_addr constant [6 x i8] c"__msg\00", align 1
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.19, i32 293, i32 3 }
@___asan_gen_.19 = private constant [21 x i8] c"../net/ethtool/fec.c\00", align 1
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.19, i32 123, i32 2 }
@___asan_gen_.21 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.22 = private unnamed_addr constant [25 x i8] c"../include/net/netlink.h\00", align 1
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.22, i32 991, i32 3 }
@llvm.compiler.used = appending global [7 x ptr] [ptr @ethnl_fec_get_policy, ptr @ethnl_fec_request_ops, ptr @ethnl_fec_set_policy, ptr @ethnl_set_fec.__msg, ptr @ethnl_set_fec.__msg.1, ptr @.str, ptr @.str.2], section "llvm.metadata"
@0 = internal global [7 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ethnl_fec_get_policy to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ethnl_fec_request_ops to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ethnl_fec_set_policy to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ethnl_set_fec.__msg to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ethnl_set_fec.__msg.1 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fec_prepare_data(ptr nocapture noundef readonly %req_base, ptr noundef %reply_base, ptr nocapture noundef readnone %info) #0 align 64 {
entry:
  %active_fec_modes = alloca [3 x i32], align 4
  %fec = alloca %struct.ethtool_fecparam, align 4
  %stats = alloca %struct.ethtool_fec_stats, align 8
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %active_fec_modes) #5
  %0 = call ptr @memset(ptr %active_fec_modes, i32 0, i32 12)
  %1 = ptrtoint ptr %reply_base to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %reply_base, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %fec) #5
  %3 = call ptr @memset(ptr %fec, i32 0, i32 16)
  %ethtool_ops = getelementptr inbounds %struct.net_device, ptr %2, i32 0, i32 44
  %4 = ptrtoint ptr %ethtool_ops to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ethtool_ops, align 16
  %get_fecparam = getelementptr inbounds %struct.ethtool_ops, ptr %5, i32 0, i32 59
  %6 = ptrtoint ptr %get_fecparam to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %get_fecparam, align 4
  %tobool.not = icmp eq ptr %7, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %call = tail call i32 @ethnl_ops_begin(ptr noundef %2) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %8 = ptrtoint ptr %ethtool_ops to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ethtool_ops, align 16
  %get_fecparam5 = getelementptr inbounds %struct.ethtool_ops, ptr %9, i32 0, i32 59
  %10 = ptrtoint ptr %get_fecparam5 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %get_fecparam5, align 4
  %call6 = call i32 %11(ptr noundef %2, ptr noundef nonnull %fec) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.end9, label %if.end3.out_complete_crit_edge

if.end3.out_complete_crit_edge:                   ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #7
  br label %out_complete

if.end9:                                          ; preds = %if.end3
  %flags = getelementptr inbounds %struct.ethnl_req_info, ptr %req_base, i32 0, i32 2
  %12 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %flags, align 4
  %and = and i32 %13, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool10.not = icmp eq i32 %and, 0
  br i1 %tobool10.not, label %if.end9.if.end16_crit_edge, label %land.lhs.true

if.end9.if.end16_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end16

land.lhs.true:                                    ; preds = %if.end9
  %14 = ptrtoint ptr %ethtool_ops to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ethtool_ops, align 16
  %get_fec_stats = getelementptr inbounds %struct.ethtool_ops, ptr %15, i32 0, i32 58
  %16 = ptrtoint ptr %get_fec_stats to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %get_fec_stats, align 4
  %tobool12.not = icmp eq ptr %17, null
  br i1 %tobool12.not, label %land.lhs.true.if.end16_crit_edge, label %if.then13

land.lhs.true.if.end16_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end16

if.then13:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.lifetime.start.p0(i64 216, ptr nonnull %stats) #5
  %18 = call ptr @memset(ptr %stats, i32 255, i32 216)
  call void %17(ptr noundef %2, ptr noundef nonnull %stats) #5
  %corr = getelementptr inbounds %struct.fec_reply_data, ptr %reply_base, i32 0, i32 4
  call fastcc void @fec_stats_recalc(ptr noundef %corr, ptr noundef nonnull %stats)
  %uncorr = getelementptr inbounds %struct.fec_reply_data, ptr %reply_base, i32 0, i32 5
  %uncorrectable_blocks = getelementptr inbounds %struct.ethtool_fec_stats, ptr %stats, i32 0, i32 1
  call fastcc void @fec_stats_recalc(ptr noundef %uncorr, ptr noundef %uncorrectable_blocks)
  %corr_bits = getelementptr inbounds %struct.fec_reply_data, ptr %reply_base, i32 0, i32 6
  %corrected_bits = getelementptr inbounds %struct.ethtool_fec_stats, ptr %stats, i32 0, i32 2
  call fastcc void @fec_stats_recalc(ptr noundef %corr_bits, ptr noundef %corrected_bits)
  call void @llvm.lifetime.end.p0(i64 216, ptr nonnull %stats) #5
  br label %if.end16

if.end16:                                         ; preds = %if.then13, %land.lhs.true.if.end16_crit_edge, %if.end9.if.end16_crit_edge
  %reserved = getelementptr inbounds %struct.ethtool_fecparam, ptr %fec, i32 0, i32 3
  %19 = ptrtoint ptr %reserved to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %reserved, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool17.not = icmp eq i32 %20, 0
  br i1 %tobool17.not, label %if.end16.if.end48_crit_edge, label %land.rhs

if.end16.if.end48_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end48

land.rhs:                                         ; preds = %if.end16
  %.b90 = load i1, ptr @fec_prepare_data.__already_done, align 1
  br i1 %.b90, label %land.rhs.if.end48_crit_edge, label %if.then25, !prof !25

land.rhs.if.end48_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end48

if.then25:                                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #7
  store i1 true, ptr @fec_prepare_data.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 123, i32 noundef 9, ptr noundef null) #5
  br label %if.end48

if.end48:                                         ; preds = %if.then25, %land.rhs.if.end48_crit_edge, %if.end16.if.end48_crit_edge
  %fec56 = getelementptr inbounds %struct.ethtool_fecparam, ptr %fec, i32 0, i32 2
  %21 = ptrtoint ptr %fec56 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %fec56, align 4
  %fec_auto = getelementptr inbounds %struct.fec_reply_data, ptr %reply_base, i32 0, i32 3
  %tobool.not.i = icmp eq ptr %fec_auto, null
  br i1 %tobool.not.i, label %if.end48.if.end.i_crit_edge, label %if.then.i

if.end48.if.end.i_crit_edge:                      ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i

if.then.i:                                        ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #7
  %23 = trunc i32 %22 to i8
  %24 = lshr i8 %23, 1
  %25 = and i8 %24, 1
  %26 = ptrtoint ptr %fec_auto to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %25, ptr %fec_auto, align 1
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %if.end48.if.end.i_crit_edge
  %and3.i = and i32 %22, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3.i)
  %tobool4.not.i = icmp eq i32 %and3.i, 0
  br i1 %tobool4.not.i, label %if.end.i.if.end6.i_crit_edge, label %if.then5.i

if.end.i.if.end6.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end6.i

if.then5.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  %add.ptr.i.i = getelementptr %struct.fec_reply_data, ptr %reply_base, i32 0, i32 1, i32 1
  %27 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %add.ptr.i.i, align 4
  %or.i.i = or i32 %28, 131072
  store i32 %or.i.i, ptr %add.ptr.i.i, align 4
  br label %if.end6.i

if.end6.i:                                        ; preds = %if.then5.i, %if.end.i.if.end6.i_crit_edge
  %and7.i = and i32 %22, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7.i)
  %tobool8.not.i = icmp eq i32 %and7.i, 0
  br i1 %tobool8.not.i, label %if.end6.i.if.end10.i_crit_edge, label %if.then9.i

if.end6.i.if.end10.i_crit_edge:                   ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end10.i

if.then9.i:                                       ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #7
  %add.ptr.i27.i = getelementptr %struct.fec_reply_data, ptr %reply_base, i32 0, i32 1, i32 1
  %29 = ptrtoint ptr %add.ptr.i27.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %add.ptr.i27.i, align 4
  %or.i28.i = or i32 %30, 262144
  store i32 %or.i28.i, ptr %add.ptr.i27.i, align 4
  br label %if.end10.i

if.end10.i:                                       ; preds = %if.then9.i, %if.end6.i.if.end10.i_crit_edge
  %and11.i = and i32 %22, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11.i)
  %tobool12.not.i = icmp eq i32 %and11.i, 0
  br i1 %tobool12.not.i, label %if.end10.i.if.end14.i_crit_edge, label %if.then13.i

if.end10.i.if.end14.i_crit_edge:                  ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end14.i

if.then13.i:                                      ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #7
  %add.ptr.i29.i = getelementptr %struct.fec_reply_data, ptr %reply_base, i32 0, i32 1, i32 1
  %31 = ptrtoint ptr %add.ptr.i29.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %add.ptr.i29.i, align 4
  %or.i30.i = or i32 %32, 524288
  store i32 %or.i30.i, ptr %add.ptr.i29.i, align 4
  br label %if.end14.i

if.end14.i:                                       ; preds = %if.then13.i, %if.end10.i.if.end14.i_crit_edge
  %and15.i = and i32 %22, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and15.i)
  %tobool16.not.i = icmp eq i32 %and15.i, 0
  br i1 %tobool16.not.i, label %if.end14.i.ethtool_fec_to_link_modes.exit_crit_edge, label %if.then17.i

if.end14.i.ethtool_fec_to_link_modes.exit_crit_edge: ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %ethtool_fec_to_link_modes.exit

if.then17.i:                                      ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #7
  %add.ptr.i31.i = getelementptr %struct.fec_reply_data, ptr %reply_base, i32 0, i32 1, i32 2
  %33 = ptrtoint ptr %add.ptr.i31.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %add.ptr.i31.i, align 4
  %or.i32.i = or i32 %34, 1024
  store i32 %or.i32.i, ptr %add.ptr.i31.i, align 4
  br label %ethtool_fec_to_link_modes.exit

ethtool_fec_to_link_modes.exit:                   ; preds = %if.then17.i, %if.end14.i.ethtool_fec_to_link_modes.exit_crit_edge
  %active_fec = getelementptr inbounds %struct.ethtool_fecparam, ptr %fec, i32 0, i32 1
  %35 = ptrtoint ptr %active_fec to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %active_fec, align 4
  %and3.i91 = and i32 %36, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3.i91)
  %tobool4.not.i92 = icmp eq i32 %and3.i91, 0
  br i1 %tobool4.not.i92, label %ethtool_fec_to_link_modes.exit.if.end6.i99_crit_edge, label %if.then5.i96

ethtool_fec_to_link_modes.exit.if.end6.i99_crit_edge: ; preds = %ethtool_fec_to_link_modes.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end6.i99

if.then5.i96:                                     ; preds = %ethtool_fec_to_link_modes.exit
  call void @__sanitizer_cov_trace_pc() #7
  %add.ptr.i.i94 = getelementptr inbounds i32, ptr %active_fec_modes, i32 1
  %37 = ptrtoint ptr %add.ptr.i.i94 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %add.ptr.i.i94, align 4
  %or.i.i95 = or i32 %38, 131072
  store i32 %or.i.i95, ptr %add.ptr.i.i94, align 4
  br label %if.end6.i99

if.end6.i99:                                      ; preds = %if.then5.i96, %ethtool_fec_to_link_modes.exit.if.end6.i99_crit_edge
  %and7.i97 = and i32 %36, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7.i97)
  %tobool8.not.i98 = icmp eq i32 %and7.i97, 0
  br i1 %tobool8.not.i98, label %if.end6.i99.if.end10.i105_crit_edge, label %if.then9.i102

if.end6.i99.if.end10.i105_crit_edge:              ; preds = %if.end6.i99
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end10.i105

if.then9.i102:                                    ; preds = %if.end6.i99
  call void @__sanitizer_cov_trace_pc() #7
  %add.ptr.i27.i100 = getelementptr inbounds i32, ptr %active_fec_modes, i32 1
  %39 = ptrtoint ptr %add.ptr.i27.i100 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %add.ptr.i27.i100, align 4
  %or.i28.i101 = or i32 %40, 262144
  store i32 %or.i28.i101, ptr %add.ptr.i27.i100, align 4
  br label %if.end10.i105

if.end10.i105:                                    ; preds = %if.then9.i102, %if.end6.i99.if.end10.i105_crit_edge
  %and11.i103 = and i32 %36, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11.i103)
  %tobool12.not.i104 = icmp eq i32 %and11.i103, 0
  br i1 %tobool12.not.i104, label %if.end10.i105.if.end14.i111_crit_edge, label %if.then13.i108

if.end10.i105.if.end14.i111_crit_edge:            ; preds = %if.end10.i105
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end14.i111

if.then13.i108:                                   ; preds = %if.end10.i105
  call void @__sanitizer_cov_trace_pc() #7
  %add.ptr.i29.i106 = getelementptr inbounds i32, ptr %active_fec_modes, i32 1
  %41 = ptrtoint ptr %add.ptr.i29.i106 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %add.ptr.i29.i106, align 4
  %or.i30.i107 = or i32 %42, 524288
  store i32 %or.i30.i107, ptr %add.ptr.i29.i106, align 4
  br label %if.end14.i111

if.end14.i111:                                    ; preds = %if.then13.i108, %if.end10.i105.if.end14.i111_crit_edge
  %and15.i109 = and i32 %36, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and15.i109)
  %tobool16.not.i110 = icmp eq i32 %and15.i109, 0
  br i1 %tobool16.not.i110, label %if.end14.i111.ethtool_fec_to_link_modes.exit115_crit_edge, label %if.then17.i114

if.end14.i111.ethtool_fec_to_link_modes.exit115_crit_edge: ; preds = %if.end14.i111
  call void @__sanitizer_cov_trace_pc() #7
  br label %ethtool_fec_to_link_modes.exit115

if.then17.i114:                                   ; preds = %if.end14.i111
  call void @__sanitizer_cov_trace_pc() #7
  %add.ptr.i31.i112 = getelementptr inbounds i32, ptr %active_fec_modes, i32 2
  %43 = ptrtoint ptr %add.ptr.i31.i112 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %add.ptr.i31.i112, align 4
  %or.i32.i113 = or i32 %44, 1024
  store i32 %or.i32.i113, ptr %add.ptr.i31.i112, align 4
  br label %ethtool_fec_to_link_modes.exit115

ethtool_fec_to_link_modes.exit115:                ; preds = %if.then17.i114, %if.end14.i111.ethtool_fec_to_link_modes.exit115_crit_edge
  %call59 = call i32 @_find_first_bit_be(ptr noundef nonnull %active_fec_modes, i32 noundef 92) #5
  %active_fec60 = getelementptr inbounds %struct.fec_reply_data, ptr %reply_base, i32 0, i32 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 92, i32 %call59)
  %cmp62 = icmp eq i32 %call59, 92
  %spec.store.select = select i1 %cmp62, i32 0, i32 %call59
  %45 = ptrtoint ptr %active_fec60 to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %spec.store.select, ptr %active_fec60, align 8
  br label %out_complete

out_complete:                                     ; preds = %ethtool_fec_to_link_modes.exit115, %if.end3.out_complete_crit_edge
  call void @ethnl_ops_complete(ptr noundef %2) #5
  br label %cleanup

cleanup:                                          ; preds = %out_complete, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call6, %out_complete ], [ -95, %entry.cleanup_crit_edge ], [ %call, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %fec) #5
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %active_fec_modes) #5
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fec_reply_size(ptr nocapture noundef readonly %req_base, ptr noundef %reply_base) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %flags = getelementptr inbounds %struct.ethnl_req_info, ptr %req_base, i32 0, i32 2
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags, align 4
  %and = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool = icmp ne i32 %and, 0
  %fec_link_modes = getelementptr inbounds %struct.fec_reply_data, ptr %reply_base, i32 0, i32 1
  %call = tail call i32 @ethnl_bitset_size(ptr noundef %fec_link_modes, ptr noundef null, i32 noundef 92, ptr noundef nonnull @link_mode_names, i1 noundef zeroext %tobool) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %2 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %flags, align 4
  %and7 = and i32 %3, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7)
  %tobool8.not = icmp eq i32 %and7, 0
  %spec.select.v = select i1 %tobool8.not, i32 16, i32 244
  %spec.select = add nuw i32 %spec.select.v, %call
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ %spec.select, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fec_fill_reply(ptr noundef %skb, ptr nocapture noundef readonly %req_base, ptr noundef %reply_base) #0 align 64 {
entry:
  %tmp.i29 = alloca i32, align 4
  %tmp.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %flags = getelementptr inbounds %struct.ethnl_req_info, ptr %req_base, i32 0, i32 2
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags, align 4
  %and = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool = icmp ne i32 %and, 0
  %fec_link_modes = getelementptr inbounds %struct.fec_reply_data, ptr %reply_base, i32 0, i32 1
  %call = tail call i32 @ethnl_put_bitset(ptr noundef %skb, i32 noundef 2, ptr noundef %fec_link_modes, ptr noundef null, i32 noundef 92, ptr noundef nonnull @link_mode_names, i1 noundef zeroext %tobool) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %fec_auto = getelementptr inbounds %struct.fec_reply_data, ptr %reply_base, i32 0, i32 3
  %2 = ptrtoint ptr %fec_auto to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %fec_auto, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i) #5
  %4 = ptrtoint ptr %tmp.i to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %3, ptr %tmp.i, align 1
  %call.i = call i32 @nla_put(ptr noundef %skb, i32 noundef 3, i32 noundef 1, ptr noundef nonnull %tmp.i) #5
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool3.not = icmp eq i32 %call.i, 0
  br i1 %tobool3.not, label %lor.lhs.false, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.end
  %active_fec = getelementptr inbounds %struct.fec_reply_data, ptr %reply_base, i32 0, i32 2
  %5 = ptrtoint ptr %active_fec to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %active_fec, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool4.not = icmp eq i32 %6, 0
  br i1 %tobool4.not, label %lor.lhs.false.if.end9_crit_edge, label %land.lhs.true

lor.lhs.false.if.end9_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end9

land.lhs.true:                                    ; preds = %lor.lhs.false
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i29) #5
  %7 = ptrtoint ptr %tmp.i29 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %tmp.i29, align 4
  %call.i30 = call i32 @nla_put(ptr noundef %skb, i32 noundef 4, i32 noundef 4, ptr noundef nonnull %tmp.i29) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i29) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i30)
  %tobool7.not = icmp eq i32 %call.i30, 0
  br i1 %tobool7.not, label %land.lhs.true.if.end9_crit_edge, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

land.lhs.true.if.end9_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end9

if.end9:                                          ; preds = %land.lhs.true.if.end9_crit_edge, %lor.lhs.false.if.end9_crit_edge
  %8 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %flags, align 4
  %and11 = and i32 %9, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11)
  %tobool12.not = icmp eq i32 %and11, 0
  br i1 %tobool12.not, label %if.end9.cleanup_crit_edge, label %land.lhs.true13

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

land.lhs.true13:                                  ; preds = %if.end9
  %tail.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 16
  %10 = ptrtoint ptr %tail.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %tail.i.i.i.i, align 8
  %call1.i.i.i = call i32 @nla_put(ptr noundef %skb, i32 noundef 32773, i32 noundef 0, ptr noundef null) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %cmp.i.i.i = icmp slt i32 %call1.i.i.i, 0
  %tobool.not37.i = icmp eq ptr %11, null
  %tobool.not.i = select i1 %cmp.i.i.i, i1 true, i1 %tobool.not37.i
  br i1 %tobool.not.i, label %land.lhs.true13.cleanup_crit_edge, label %if.end.i

land.lhs.true13.cleanup_crit_edge:                ; preds = %land.lhs.true13
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end.i:                                         ; preds = %land.lhs.true13
  %corr.i = getelementptr inbounds %struct.fec_reply_data, ptr %reply_base, i32 0, i32 4
  %cnt.i = getelementptr inbounds %struct.fec_reply_data, ptr %reply_base, i32 0, i32 4, i32 1
  %12 = ptrtoint ptr %cnt.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %cnt.i, align 8
  %conv.i = zext i8 %13 to i32
  %mul.i = shl nuw nsw i32 %conv.i, 3
  %call2.i = call i32 @nla_put_64bit(ptr noundef %skb, i32 noundef 2, i32 noundef %mul.i, ptr noundef %corr.i, i32 noundef 1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %lor.lhs.false.i, label %if.end.i.if.then.i.i.i_crit_edge

if.end.i.if.then.i.i.i_crit_edge:                 ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then.i.i.i

lor.lhs.false.i:                                  ; preds = %if.end.i
  %uncorr.i = getelementptr inbounds %struct.fec_reply_data, ptr %reply_base, i32 0, i32 5
  %cnt4.i = getelementptr inbounds %struct.fec_reply_data, ptr %reply_base, i32 0, i32 5, i32 1
  %14 = ptrtoint ptr %cnt4.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %cnt4.i, align 8
  %conv5.i = zext i8 %15 to i32
  %mul6.i = shl nuw nsw i32 %conv5.i, 3
  %call10.i = call i32 @nla_put_64bit(ptr noundef %skb, i32 noundef 3, i32 noundef %mul6.i, ptr noundef %uncorr.i, i32 noundef 1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10.i)
  %tobool11.not.i = icmp eq i32 %call10.i, 0
  br i1 %tobool11.not.i, label %lor.lhs.false12.i, label %lor.lhs.false.i.if.then.i.i.i_crit_edge

lor.lhs.false.i.if.then.i.i.i_crit_edge:          ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then.i.i.i

lor.lhs.false12.i:                                ; preds = %lor.lhs.false.i
  %corr_bits.i = getelementptr inbounds %struct.fec_reply_data, ptr %reply_base, i32 0, i32 6
  %cnt13.i = getelementptr inbounds %struct.fec_reply_data, ptr %reply_base, i32 0, i32 6, i32 1
  %16 = ptrtoint ptr %cnt13.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %cnt13.i, align 8
  %conv14.i = zext i8 %17 to i32
  %mul15.i = shl nuw nsw i32 %conv14.i, 3
  %call19.i = call i32 @nla_put_64bit(ptr noundef %skb, i32 noundef 4, i32 noundef %mul15.i, ptr noundef %corr_bits.i, i32 noundef 1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19.i)
  %tobool20.not.i = icmp eq i32 %call19.i, 0
  br i1 %tobool20.not.i, label %fec_put_stats.exit, label %lor.lhs.false12.i.if.then.i.i.i_crit_edge

lor.lhs.false12.i.if.then.i.i.i_crit_edge:        ; preds = %lor.lhs.false12.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then.i.i.i

if.then.i.i.i:                                    ; preds = %lor.lhs.false12.i.if.then.i.i.i_crit_edge, %lor.lhs.false.i.if.then.i.i.i_crit_edge, %if.end.i.if.then.i.i.i_crit_edge
  %data.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %18 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %data.i.i.i, align 4
  %cmp.i.i36.i = icmp ugt ptr %19, %11
  br i1 %cmp.i.i36.i, label %do.end.i.i.i, label %if.then.i.i.i.nla_nest_cancel.exit.i_crit_edge, !prof !26

if.then.i.i.i.nla_nest_cancel.exit.i_crit_edge:   ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %nla_nest_cancel.exit.i

do.end.i.i.i:                                     ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 991, i32 noundef 9, ptr noundef null) #5
  br label %nla_nest_cancel.exit.i

nla_nest_cancel.exit.i:                           ; preds = %do.end.i.i.i, %if.then.i.i.i.nla_nest_cancel.exit.i_crit_edge
  %20 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %data.i.i.i, align 4
  %sub.ptr.lhs.cast.i.i.i = ptrtoint ptr %11 to i32
  %sub.ptr.rhs.cast.i.i.i = ptrtoint ptr %21 to i32
  %sub.ptr.sub.i.i.i = sub i32 %sub.ptr.lhs.cast.i.i.i, %sub.ptr.rhs.cast.i.i.i
  call void @skb_trim(ptr noundef %skb, i32 noundef %sub.ptr.sub.i.i.i) #5
  br label %cleanup

fec_put_stats.exit:                               ; preds = %lor.lhs.false12.i
  call void @__sanitizer_cov_trace_pc() #7
  %22 = ptrtoint ptr %tail.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %tail.i.i.i.i, align 8
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %23 to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %11 to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  %conv.i.i = trunc i32 %sub.ptr.sub.i.i to i16
  %24 = ptrtoint ptr %11 to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 %conv.i.i, ptr %11, align 2
  br label %cleanup

cleanup:                                          ; preds = %fec_put_stats.exit, %nla_nest_cancel.exit.i, %land.lhs.true13.cleanup_crit_edge, %if.end9.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ -90, %land.lhs.true.cleanup_crit_edge ], [ -90, %if.end.cleanup_crit_edge ], [ 0, %fec_put_stats.exit ], [ 0, %if.end9.cleanup_crit_edge ], [ -90, %nla_nest_cancel.exit.i ], [ -90, %land.lhs.true13.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ethnl_set_fec(ptr nocapture noundef readnone %skb, ptr nocapture noundef readonly %info) local_unnamed_addr #0 align 64 {
entry:
  %fec_link_modes = alloca [3 x i32], align 4
  %req_info = alloca %struct.ethnl_req_info, align 4
  %fec = alloca %struct.ethtool_fecparam, align 4
  %mod = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %fec_link_modes) #5
  %0 = call ptr @memset(ptr %fec_link_modes, i32 0, i32 12)
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %req_info) #5
  %1 = call ptr @memset(ptr %req_info, i32 0, i32 12)
  %attrs = getelementptr inbounds %struct.genl_info, ptr %info, i32 0, i32 5
  %2 = ptrtoint ptr %attrs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %attrs, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %fec) #5
  %4 = call ptr @memset(ptr %fec, i32 0, i32 16)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %mod) #5
  %5 = ptrtoint ptr %mod to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 0, ptr %mod, align 1
  %arrayidx = getelementptr ptr, ptr %3, i32 1
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx, align 4
  %_net.i = getelementptr inbounds %struct.genl_info, ptr %info, i32 0, i32 6
  %8 = ptrtoint ptr %_net.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %_net.i, align 4
  %extack = getelementptr inbounds %struct.genl_info, ptr %info, i32 0, i32 8
  %10 = ptrtoint ptr %extack to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %extack, align 4
  %call1 = call i32 @ethnl_parse_header_dev_get(ptr noundef nonnull %req_info, ptr noundef %7, ptr noundef %9, ptr noundef %11, i1 noundef zeroext true) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %12 = ptrtoint ptr %req_info to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %req_info, align 4
  %ethtool_ops = getelementptr inbounds %struct.net_device, ptr %13, i32 0, i32 44
  %14 = ptrtoint ptr %ethtool_ops to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ethtool_ops, align 16
  %get_fecparam = getelementptr inbounds %struct.ethtool_ops, ptr %15, i32 0, i32 59
  %16 = ptrtoint ptr %get_fecparam to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %get_fecparam, align 4
  %tobool.not = icmp eq ptr %17, null
  br i1 %tobool.not, label %if.end.out_dev_crit_edge, label %lor.lhs.false

if.end.out_dev_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %out_dev

lor.lhs.false:                                    ; preds = %if.end
  %set_fecparam = getelementptr inbounds %struct.ethtool_ops, ptr %15, i32 0, i32 60
  %18 = ptrtoint ptr %set_fecparam to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %set_fecparam, align 4
  %tobool3.not = icmp eq ptr %19, null
  br i1 %tobool3.not, label %lor.lhs.false.out_dev_crit_edge, label %if.end5

lor.lhs.false.out_dev_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %out_dev

if.end5:                                          ; preds = %lor.lhs.false
  call void @rtnl_lock() #5
  %call6 = call i32 @ethnl_ops_begin(ptr noundef %13) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %cmp7 = icmp slt i32 %call6, 0
  br i1 %cmp7, label %if.end5.out_rtnl_crit_edge, label %if.end9

if.end5.out_rtnl_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #7
  br label %out_rtnl

if.end9:                                          ; preds = %if.end5
  %20 = ptrtoint ptr %get_fecparam to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %get_fecparam, align 4
  %call11 = call i32 %21(ptr noundef %13, ptr noundef nonnull %fec) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %cmp12 = icmp slt i32 %call11, 0
  br i1 %cmp12, label %if.end9.out_ops_crit_edge, label %if.end14

if.end9.out_ops_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #7
  br label %out_ops

if.end14:                                         ; preds = %if.end9
  %fec15 = getelementptr inbounds %struct.ethtool_fecparam, ptr %fec, i32 0, i32 2
  %22 = ptrtoint ptr %fec15 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %fec15, align 4
  %24 = trunc i32 %23 to i8
  %25 = lshr i8 %24, 1
  %26 = and i8 %25, 1
  %and3.i = and i32 %23, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3.i)
  %tobool4.not.i = icmp eq i32 %and3.i, 0
  br i1 %tobool4.not.i, label %if.end14.if.end6.i_crit_edge, label %if.then5.i

if.end14.if.end6.i_crit_edge:                     ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end6.i

if.then5.i:                                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #7
  %add.ptr.i.i = getelementptr inbounds i32, ptr %fec_link_modes, i32 1
  %27 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %add.ptr.i.i, align 4
  %or.i.i = or i32 %28, 131072
  store i32 %or.i.i, ptr %add.ptr.i.i, align 4
  br label %if.end6.i

if.end6.i:                                        ; preds = %if.then5.i, %if.end14.if.end6.i_crit_edge
  %and7.i = and i32 %23, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7.i)
  %tobool8.not.i = icmp eq i32 %and7.i, 0
  br i1 %tobool8.not.i, label %if.end6.i.if.end10.i_crit_edge, label %if.then9.i

if.end6.i.if.end10.i_crit_edge:                   ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end10.i

if.then9.i:                                       ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #7
  %add.ptr.i27.i = getelementptr inbounds i32, ptr %fec_link_modes, i32 1
  %29 = ptrtoint ptr %add.ptr.i27.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %add.ptr.i27.i, align 4
  %or.i28.i = or i32 %30, 262144
  store i32 %or.i28.i, ptr %add.ptr.i27.i, align 4
  br label %if.end10.i

if.end10.i:                                       ; preds = %if.then9.i, %if.end6.i.if.end10.i_crit_edge
  %and11.i = and i32 %23, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11.i)
  %tobool12.not.i = icmp eq i32 %and11.i, 0
  br i1 %tobool12.not.i, label %if.end10.i.if.end14.i_crit_edge, label %if.then13.i

if.end10.i.if.end14.i_crit_edge:                  ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end14.i

if.then13.i:                                      ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #7
  %add.ptr.i29.i = getelementptr inbounds i32, ptr %fec_link_modes, i32 1
  %31 = ptrtoint ptr %add.ptr.i29.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %add.ptr.i29.i, align 4
  %or.i30.i = or i32 %32, 524288
  store i32 %or.i30.i, ptr %add.ptr.i29.i, align 4
  br label %if.end14.i

if.end14.i:                                       ; preds = %if.then13.i, %if.end10.i.if.end14.i_crit_edge
  %and15.i = and i32 %23, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and15.i)
  %tobool16.not.i = icmp eq i32 %and15.i, 0
  br i1 %tobool16.not.i, label %if.end14.i.ethtool_fec_to_link_modes.exit_crit_edge, label %if.then17.i

if.end14.i.ethtool_fec_to_link_modes.exit_crit_edge: ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %ethtool_fec_to_link_modes.exit

if.then17.i:                                      ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #7
  %add.ptr.i31.i = getelementptr inbounds i32, ptr %fec_link_modes, i32 2
  %33 = ptrtoint ptr %add.ptr.i31.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %add.ptr.i31.i, align 4
  %or.i32.i = or i32 %34, 1024
  store i32 %or.i32.i, ptr %add.ptr.i31.i, align 4
  br label %ethtool_fec_to_link_modes.exit

ethtool_fec_to_link_modes.exit:                   ; preds = %if.then17.i, %if.end14.i.ethtool_fec_to_link_modes.exit_crit_edge
  %arrayidx17 = getelementptr ptr, ptr %3, i32 2
  %35 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %arrayidx17, align 4
  %37 = ptrtoint ptr %extack to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %extack, align 4
  %call19 = call i32 @ethnl_update_bitset(ptr noundef nonnull %fec_link_modes, i32 noundef 92, ptr noundef %36, ptr noundef nonnull @link_mode_names, ptr noundef %38, ptr noundef nonnull %mod) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %cmp20 = icmp slt i32 %call19, 0
  br i1 %cmp20, label %ethtool_fec_to_link_modes.exit.out_ops_crit_edge, label %if.end22

ethtool_fec_to_link_modes.exit.out_ops_crit_edge: ; preds = %ethtool_fec_to_link_modes.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %out_ops

if.end22:                                         ; preds = %ethtool_fec_to_link_modes.exit
  %arrayidx23 = getelementptr ptr, ptr %3, i32 3
  %39 = ptrtoint ptr %arrayidx23 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %arrayidx23, align 4
  %tobool.not.i = icmp eq ptr %40, null
  br i1 %tobool.not.i, label %if.end22.ethnl_update_u8.exit_crit_edge, label %if.end.i

if.end22.ethnl_update_u8.exit_crit_edge:          ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #7
  br label %ethnl_update_u8.exit

if.end.i:                                         ; preds = %if.end22
  %add.ptr.i.i.i = getelementptr i8, ptr %40, i32 4
  %41 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %add.ptr.i.i.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %26, i8 %42)
  %cmp.i = icmp eq i8 %26, %42
  br i1 %cmp.i, label %if.end.i.ethnl_update_u8.exit_crit_edge, label %ethnl_update_u8.exit.thread

if.end.i.ethnl_update_u8.exit_crit_edge:          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %ethnl_update_u8.exit

ethnl_update_u8.exit.thread:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  %43 = ptrtoint ptr %mod to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 1, ptr %mod, align 1
  br label %if.end26

ethnl_update_u8.exit:                             ; preds = %if.end.i.ethnl_update_u8.exit_crit_edge, %if.end22.ethnl_update_u8.exit_crit_edge
  %44 = ptrtoint ptr %mod to i32
  call void @__asan_load1_noabort(i32 %44)
  %.pr = load i8, ptr %mod, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %.pr)
  %tobool24.not = icmp eq i8 %.pr, 0
  br i1 %tobool24.not, label %ethnl_update_u8.exit.out_ops_crit_edge, label %ethnl_update_u8.exit.if.end26_crit_edge

ethnl_update_u8.exit.if.end26_crit_edge:          ; preds = %ethnl_update_u8.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end26

ethnl_update_u8.exit.out_ops_crit_edge:           ; preds = %ethnl_update_u8.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %out_ops

if.end26:                                         ; preds = %ethnl_update_u8.exit.if.end26_crit_edge, %ethnl_update_u8.exit.thread
  %fec_auto.0107 = phi i8 [ %42, %ethnl_update_u8.exit.thread ], [ %26, %ethnl_update_u8.exit.if.end26_crit_edge ]
  %45 = call ptr @memset(ptr %fec, i32 0, i32 16)
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %fec_auto.0107)
  %tobool.not.i98 = icmp eq i8 %fec_auto.0107, 0
  br i1 %tobool.not.i98, label %if.end26.if.end.i100_crit_edge, label %if.then.i

if.end26.if.end.i100_crit_edge:                   ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i100

if.then.i:                                        ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #7
  %46 = ptrtoint ptr %fec15 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %fec15, align 4
  %or.i = or i32 %47, 2
  store i32 %or.i, ptr %fec15, align 4
  br label %if.end.i100

if.end.i100:                                      ; preds = %if.then.i, %if.end26.if.end.i100_crit_edge
  %add.ptr.i.i99 = getelementptr inbounds i32, ptr %fec_link_modes, i32 1
  %48 = ptrtoint ptr %add.ptr.i.i99 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %add.ptr.i.i99, align 4
  %50 = and i32 %49, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %50)
  %tobool2.not.i = icmp eq i32 %50, 0
  br i1 %tobool2.not.i, label %if.end.i100.if.end6.i102_crit_edge, label %if.then3.i

if.end.i100.if.end6.i102_crit_edge:               ; preds = %if.end.i100
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end6.i102

if.then3.i:                                       ; preds = %if.end.i100
  call void @__sanitizer_cov_trace_pc() #7
  %51 = ptrtoint ptr %fec15 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %fec15, align 4
  %or5.i = or i32 %52, 4
  store i32 %or5.i, ptr %fec15, align 4
  br label %if.end6.i102

if.end6.i102:                                     ; preds = %if.then3.i, %if.end.i100.if.end6.i102_crit_edge
  %53 = and i32 %49, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %53)
  %tobool8.not.i101 = icmp eq i32 %53, 0
  br i1 %tobool8.not.i101, label %if.end6.i102.if.end12.i_crit_edge, label %if.then9.i103

if.end6.i102.if.end12.i_crit_edge:                ; preds = %if.end6.i102
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end12.i

if.then9.i103:                                    ; preds = %if.end6.i102
  call void @__sanitizer_cov_trace_pc() #7
  %54 = ptrtoint ptr %fec15 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %fec15, align 4
  %or11.i = or i32 %55, 8
  store i32 %or11.i, ptr %fec15, align 4
  br label %if.end12.i

if.end12.i:                                       ; preds = %if.then9.i103, %if.end6.i102.if.end12.i_crit_edge
  %and.i40.i = and i32 %49, -917505
  %56 = ptrtoint ptr %add.ptr.i.i99 to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %and.i40.i, ptr %add.ptr.i.i99, align 4
  %57 = and i32 %49, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %57)
  %tobool14.not.i = icmp eq i32 %57, 0
  br i1 %tobool14.not.i, label %if.end12.i.if.end18.i_crit_edge, label %if.then15.i

if.end12.i.if.end18.i_crit_edge:                  ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end18.i

if.then15.i:                                      ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #7
  %58 = ptrtoint ptr %fec15 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %fec15, align 4
  %or17.i = or i32 %59, 16
  store i32 %or17.i, ptr %fec15, align 4
  br label %if.end18.i

if.end18.i:                                       ; preds = %if.then15.i, %if.end12.i.if.end18.i_crit_edge
  %add.ptr.i41.i = getelementptr inbounds i32, ptr %fec_link_modes, i32 2
  %60 = ptrtoint ptr %add.ptr.i41.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %add.ptr.i41.i, align 4
  %and.i42.i = and i32 %61, -1025
  store i32 %and.i42.i, ptr %add.ptr.i41.i, align 4
  %62 = and i32 %61, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %62)
  %tobool20.not.i = icmp eq i32 %62, 0
  br i1 %tobool20.not.i, label %if.end18.i.ethtool_link_modes_to_fecparam.exit_crit_edge, label %if.then21.i

if.end18.i.ethtool_link_modes_to_fecparam.exit_crit_edge: ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %ethtool_link_modes_to_fecparam.exit

if.then21.i:                                      ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #7
  %63 = ptrtoint ptr %fec15 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %fec15, align 4
  %or23.i = or i32 %64, 32
  store i32 %or23.i, ptr %fec15, align 4
  br label %ethtool_link_modes_to_fecparam.exit

ethtool_link_modes_to_fecparam.exit:              ; preds = %if.then21.i, %if.end18.i.ethtool_link_modes_to_fecparam.exit_crit_edge
  %call.i.i = call i32 @_find_first_bit_be(ptr noundef nonnull %fec_link_modes, i32 noundef 92) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 92, i32 %call.i.i)
  %cmp4.i.i = icmp eq i32 %call.i.i, 92
  br i1 %cmp4.i.i, label %if.end36, label %do.body

do.body:                                          ; preds = %ethtool_link_modes_to_fecparam.exit
  %65 = ptrtoint ptr %extack to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %extack, align 4
  call void @do_trace_netlink_extack(ptr noundef nonnull @ethnl_set_fec.__msg) #5
  %tobool32.not = icmp eq ptr %66, null
  br i1 %tobool32.not, label %do.body.out_ops_crit_edge, label %if.then33

do.body.out_ops_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %out_ops

if.then33:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  %67 = ptrtoint ptr %66 to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr @ethnl_set_fec.__msg, ptr %66, align 4
  %68 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %arrayidx17, align 4
  %bad_attr = getelementptr inbounds %struct.netlink_ext_ack, ptr %66, i32 0, i32 1
  %70 = ptrtoint ptr %bad_attr to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr %69, ptr %bad_attr, align 4
  %policy = getelementptr inbounds %struct.netlink_ext_ack, ptr %66, i32 0, i32 2
  %71 = ptrtoint ptr %policy to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr null, ptr %policy, align 4
  br label %out_ops

if.end36:                                         ; preds = %ethtool_link_modes_to_fecparam.exit
  %72 = ptrtoint ptr %fec15 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %fec15, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %73)
  %tobool38.not = icmp eq i32 %73, 0
  br i1 %tobool38.not, label %if.then39, label %if.end52

if.then39:                                        ; preds = %if.end36
  %74 = ptrtoint ptr %extack to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %extack, align 4
  call void @do_trace_netlink_extack(ptr noundef nonnull @ethnl_set_fec.__msg.1) #5
  %tobool43.not = icmp eq ptr %75, null
  br i1 %tobool43.not, label %if.then39.out_ops_crit_edge, label %if.then44

if.then39.out_ops_crit_edge:                      ; preds = %if.then39
  call void @__sanitizer_cov_trace_pc() #7
  br label %out_ops

if.then44:                                        ; preds = %if.then39
  call void @__sanitizer_cov_trace_pc() #7
  %76 = ptrtoint ptr %75 to i32
  call void @__asan_store4_noabort(i32 %76)
  store ptr @ethnl_set_fec.__msg.1, ptr %75, align 4
  %77 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %arrayidx17, align 4
  %bad_attr47 = getelementptr inbounds %struct.netlink_ext_ack, ptr %75, i32 0, i32 1
  %79 = ptrtoint ptr %bad_attr47 to i32
  call void @__asan_store4_noabort(i32 %79)
  store ptr %78, ptr %bad_attr47, align 4
  %policy48 = getelementptr inbounds %struct.netlink_ext_ack, ptr %75, i32 0, i32 2
  %80 = ptrtoint ptr %policy48 to i32
  call void @__asan_store4_noabort(i32 %80)
  store ptr null, ptr %policy48, align 4
  br label %out_ops

if.end52:                                         ; preds = %if.end36
  %81 = ptrtoint ptr %ethtool_ops to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %ethtool_ops, align 16
  %set_fecparam54 = getelementptr inbounds %struct.ethtool_ops, ptr %82, i32 0, i32 60
  %83 = ptrtoint ptr %set_fecparam54 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %set_fecparam54, align 4
  %call55 = call i32 %84(ptr noundef %13, ptr noundef nonnull %fec) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call55)
  %cmp56 = icmp slt i32 %call55, 0
  br i1 %cmp56, label %if.end52.out_ops_crit_edge, label %if.end58

if.end52.out_ops_crit_edge:                       ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #7
  br label %out_ops

if.end58:                                         ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #7
  call void @ethtool_notify(ptr noundef %13, i32 noundef 31, ptr noundef null) #5
  br label %out_ops

out_ops:                                          ; preds = %if.end58, %if.end52.out_ops_crit_edge, %if.then44, %if.then39.out_ops_crit_edge, %if.then33, %do.body.out_ops_crit_edge, %ethnl_update_u8.exit.out_ops_crit_edge, %ethtool_fec_to_link_modes.exit.out_ops_crit_edge, %if.end9.out_ops_crit_edge
  %ret.0 = phi i32 [ %call11, %if.end9.out_ops_crit_edge ], [ %call19, %ethtool_fec_to_link_modes.exit.out_ops_crit_edge ], [ %call55, %if.end52.out_ops_crit_edge ], [ %call55, %if.end58 ], [ 0, %ethnl_update_u8.exit.out_ops_crit_edge ], [ -22, %if.then33 ], [ -22, %do.body.out_ops_crit_edge ], [ -22, %if.then44 ], [ -22, %if.then39.out_ops_crit_edge ]
  call void @ethnl_ops_complete(ptr noundef %13) #5
  br label %out_rtnl

out_rtnl:                                         ; preds = %out_ops, %if.end5.out_rtnl_crit_edge
  %ret.1 = phi i32 [ %call6, %if.end5.out_rtnl_crit_edge ], [ %ret.0, %out_ops ]
  call void @rtnl_unlock() #5
  br label %out_dev

out_dev:                                          ; preds = %out_rtnl, %lor.lhs.false.out_dev_crit_edge, %if.end.out_dev_crit_edge
  %ret.2 = phi i32 [ %ret.1, %out_rtnl ], [ -95, %lor.lhs.false.out_dev_crit_edge ], [ -95, %if.end.out_dev_crit_edge ]
  %85 = ptrtoint ptr %req_info to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %req_info, align 4
  %tobool.not.i.i = icmp eq ptr %86, null
  br i1 %tobool.not.i.i, label %out_dev.cleanup_crit_edge, label %do.body1.i.i.i

out_dev.cleanup_crit_edge:                        ; preds = %out_dev
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.body1.i.i.i:                                   ; preds = %out_dev
  %dev_tracker.i = getelementptr inbounds %struct.ethnl_req_info, ptr %req_info, i32 0, i32 1
  %refcnt_tracker.i.i.i = getelementptr inbounds %struct.net_device, ptr %86, i32 0, i32 119
  %call.i.i.i = call i32 @ref_tracker_free(ptr noundef %refcnt_tracker.i.i.i, ptr noundef %dev_tracker.i) #5
  %87 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #5, !srcloc !27
  %pcpu_refcnt.i.i.i = getelementptr inbounds %struct.net_device, ptr %86, i32 0, i32 118
  %88 = ptrtoint ptr %pcpu_refcnt.i.i.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %pcpu_refcnt.i.i.i, align 4
  %90 = ptrtoint ptr %89 to i32
  %91 = call i32 @llvm.read_register.i32(metadata !15) #5
  %and.i.i.i.i = and i32 %91, -16384
  %92 = inttoptr i32 %and.i.i.i.i to ptr
  %cpu.i.i.i = getelementptr inbounds %struct.thread_info, ptr %92, i32 0, i32 3
  %93 = ptrtoint ptr %cpu.i.i.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %cpu.i.i.i, align 4
  %arrayidx.i.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %94
  %95 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %arrayidx.i.i.i, align 4
  %add.i.i.i = add i32 %96, %90
  %97 = inttoptr i32 %add.i.i.i to ptr
  %98 = ptrtoint ptr %97 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %97, align 4
  %add13.i.i.i = add i32 %99, -1
  store i32 %add13.i.i.i, ptr %97, align 4
  %100 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #5, !srcloc !28
  %and.i.i.i.i.i = and i32 %100, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i.i)
  %tobool24.not.i.i.i = icmp eq i32 %and.i.i.i.i.i, 0
  br i1 %tobool24.not.i.i.i, label %if.then28.i.i.i, label %do.body1.i.i.i.dev_put.exit.i.i_crit_edge, !prof !26

do.body1.i.i.i.dev_put.exit.i.i_crit_edge:        ; preds = %do.body1.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %dev_put.exit.i.i

if.then28.i.i.i:                                  ; preds = %do.body1.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  call void @warn_bogus_irq_restore() #5
  br label %dev_put.exit.i.i

dev_put.exit.i.i:                                 ; preds = %if.then28.i.i.i, %do.body1.i.i.i.dev_put.exit.i.i_crit_edge
  call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %87) #5, !srcloc !29
  br label %cleanup

cleanup:                                          ; preds = %dev_put.exit.i.i, %out_dev.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %entry.cleanup_crit_edge ], [ %ret.2, %out_dev.cleanup_crit_edge ], [ %ret.2, %dev_put.exit.i.i ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %mod) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %fec) #5
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %req_info) #5
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %fec_link_modes) #5
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
declare dso_local i32 @ethnl_update_bitset(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

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

; Function Attrs: argmemonly nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @fec_stats_recalc(ptr nocapture noundef %grp, ptr nocapture noundef readonly %stats) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %lanes = getelementptr %struct.ethtool_fec_stat, ptr %stats, i32 0, i32 1
  %0 = ptrtoint ptr %lanes to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %lanes, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %1)
  %cmp = icmp eq i64 %1, -1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %2 = ptrtoint ptr %stats to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %stats, align 8
  %4 = ptrtoint ptr %grp to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 %3, ptr %grp, align 8
  %5 = load i64, ptr %stats, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %5)
  %cmp4 = icmp ne i64 %5, -1
  %conv5 = zext i1 %cmp4 to i8
  %cnt = getelementptr inbounds %struct.fec_stat_grp, ptr %grp, i32 0, i32 1
  %6 = ptrtoint ptr %cnt to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %conv5, ptr %cnt, align 8
  br label %cleanup

if.end:                                           ; preds = %entry
  %cnt6 = getelementptr inbounds %struct.fec_stat_grp, ptr %grp, i32 0, i32 1
  %7 = ptrtoint ptr %cnt6 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 1, ptr %cnt6, align 8
  %8 = ptrtoint ptr %grp to i32
  call void @__asan_store8_noabort(i32 %8)
  store i64 0, ptr %grp, align 8
  %9 = ptrtoint ptr %lanes to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %lanes, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %10)
  %cmp13 = icmp eq i64 %10, -1
  br i1 %cmp13, label %if.end.cleanup_crit_edge, label %if.end16

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end16:                                         ; preds = %if.end
  %11 = ptrtoint ptr %grp to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %grp, align 8
  %add = add i64 %12, %10
  store i64 %add, ptr %grp, align 8
  %13 = ptrtoint ptr %lanes to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %lanes, align 8
  %15 = ptrtoint ptr %cnt6 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %cnt6, align 8
  %inc = add i8 %16, 1
  store i8 %inc, ptr %cnt6, align 8
  %idxprom = zext i8 %16 to i32
  %arrayidx25 = getelementptr [9 x i64], ptr %grp, i32 0, i32 %idxprom
  %17 = ptrtoint ptr %arrayidx25 to i32
  call void @__asan_store8_noabort(i32 %17)
  store i64 %14, ptr %arrayidx25, align 8
  %arrayidx12.1 = getelementptr %struct.ethtool_fec_stat, ptr %stats, i32 0, i32 1, i32 1
  %18 = ptrtoint ptr %arrayidx12.1 to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %arrayidx12.1, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %19)
  %cmp13.1 = icmp eq i64 %19, -1
  br i1 %cmp13.1, label %if.end16.cleanup_crit_edge, label %if.end16.1

if.end16.cleanup_crit_edge:                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end16.1:                                       ; preds = %if.end16
  %20 = ptrtoint ptr %grp to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %grp, align 8
  %add.1 = add i64 %21, %19
  store i64 %add.1, ptr %grp, align 8
  %22 = ptrtoint ptr %arrayidx12.1 to i32
  call void @__asan_load8_noabort(i32 %22)
  %23 = load i64, ptr %arrayidx12.1, align 8
  %24 = ptrtoint ptr %cnt6 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %cnt6, align 8
  %inc.1 = add i8 %25, 1
  store i8 %inc.1, ptr %cnt6, align 8
  %idxprom.1 = zext i8 %25 to i32
  %arrayidx25.1 = getelementptr [9 x i64], ptr %grp, i32 0, i32 %idxprom.1
  %26 = ptrtoint ptr %arrayidx25.1 to i32
  call void @__asan_store8_noabort(i32 %26)
  store i64 %23, ptr %arrayidx25.1, align 8
  %arrayidx12.2 = getelementptr %struct.ethtool_fec_stat, ptr %stats, i32 0, i32 1, i32 2
  %27 = ptrtoint ptr %arrayidx12.2 to i32
  call void @__asan_load8_noabort(i32 %27)
  %28 = load i64, ptr %arrayidx12.2, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %28)
  %cmp13.2 = icmp eq i64 %28, -1
  br i1 %cmp13.2, label %if.end16.1.cleanup_crit_edge, label %if.end16.2

if.end16.1.cleanup_crit_edge:                     ; preds = %if.end16.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end16.2:                                       ; preds = %if.end16.1
  %29 = ptrtoint ptr %grp to i32
  call void @__asan_load8_noabort(i32 %29)
  %30 = load i64, ptr %grp, align 8
  %add.2 = add i64 %30, %28
  store i64 %add.2, ptr %grp, align 8
  %31 = ptrtoint ptr %arrayidx12.2 to i32
  call void @__asan_load8_noabort(i32 %31)
  %32 = load i64, ptr %arrayidx12.2, align 8
  %33 = ptrtoint ptr %cnt6 to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %cnt6, align 8
  %inc.2 = add i8 %34, 1
  store i8 %inc.2, ptr %cnt6, align 8
  %idxprom.2 = zext i8 %34 to i32
  %arrayidx25.2 = getelementptr [9 x i64], ptr %grp, i32 0, i32 %idxprom.2
  %35 = ptrtoint ptr %arrayidx25.2 to i32
  call void @__asan_store8_noabort(i32 %35)
  store i64 %32, ptr %arrayidx25.2, align 8
  %arrayidx12.3 = getelementptr %struct.ethtool_fec_stat, ptr %stats, i32 0, i32 1, i32 3
  %36 = ptrtoint ptr %arrayidx12.3 to i32
  call void @__asan_load8_noabort(i32 %36)
  %37 = load i64, ptr %arrayidx12.3, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %37)
  %cmp13.3 = icmp eq i64 %37, -1
  br i1 %cmp13.3, label %if.end16.2.cleanup_crit_edge, label %if.end16.3

if.end16.2.cleanup_crit_edge:                     ; preds = %if.end16.2
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end16.3:                                       ; preds = %if.end16.2
  %38 = ptrtoint ptr %grp to i32
  call void @__asan_load8_noabort(i32 %38)
  %39 = load i64, ptr %grp, align 8
  %add.3 = add i64 %39, %37
  store i64 %add.3, ptr %grp, align 8
  %40 = ptrtoint ptr %arrayidx12.3 to i32
  call void @__asan_load8_noabort(i32 %40)
  %41 = load i64, ptr %arrayidx12.3, align 8
  %42 = ptrtoint ptr %cnt6 to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %cnt6, align 8
  %inc.3 = add i8 %43, 1
  store i8 %inc.3, ptr %cnt6, align 8
  %idxprom.3 = zext i8 %43 to i32
  %arrayidx25.3 = getelementptr [9 x i64], ptr %grp, i32 0, i32 %idxprom.3
  %44 = ptrtoint ptr %arrayidx25.3 to i32
  call void @__asan_store8_noabort(i32 %44)
  store i64 %41, ptr %arrayidx25.3, align 8
  %arrayidx12.4 = getelementptr %struct.ethtool_fec_stat, ptr %stats, i32 0, i32 1, i32 4
  %45 = ptrtoint ptr %arrayidx12.4 to i32
  call void @__asan_load8_noabort(i32 %45)
  %46 = load i64, ptr %arrayidx12.4, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %46)
  %cmp13.4 = icmp eq i64 %46, -1
  br i1 %cmp13.4, label %if.end16.3.cleanup_crit_edge, label %if.end16.4

if.end16.3.cleanup_crit_edge:                     ; preds = %if.end16.3
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end16.4:                                       ; preds = %if.end16.3
  %47 = ptrtoint ptr %grp to i32
  call void @__asan_load8_noabort(i32 %47)
  %48 = load i64, ptr %grp, align 8
  %add.4 = add i64 %48, %46
  store i64 %add.4, ptr %grp, align 8
  %49 = ptrtoint ptr %arrayidx12.4 to i32
  call void @__asan_load8_noabort(i32 %49)
  %50 = load i64, ptr %arrayidx12.4, align 8
  %51 = ptrtoint ptr %cnt6 to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %cnt6, align 8
  %inc.4 = add i8 %52, 1
  store i8 %inc.4, ptr %cnt6, align 8
  %idxprom.4 = zext i8 %52 to i32
  %arrayidx25.4 = getelementptr [9 x i64], ptr %grp, i32 0, i32 %idxprom.4
  %53 = ptrtoint ptr %arrayidx25.4 to i32
  call void @__asan_store8_noabort(i32 %53)
  store i64 %50, ptr %arrayidx25.4, align 8
  %arrayidx12.5 = getelementptr %struct.ethtool_fec_stat, ptr %stats, i32 0, i32 1, i32 5
  %54 = ptrtoint ptr %arrayidx12.5 to i32
  call void @__asan_load8_noabort(i32 %54)
  %55 = load i64, ptr %arrayidx12.5, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %55)
  %cmp13.5 = icmp eq i64 %55, -1
  br i1 %cmp13.5, label %if.end16.4.cleanup_crit_edge, label %if.end16.5

if.end16.4.cleanup_crit_edge:                     ; preds = %if.end16.4
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end16.5:                                       ; preds = %if.end16.4
  %56 = ptrtoint ptr %grp to i32
  call void @__asan_load8_noabort(i32 %56)
  %57 = load i64, ptr %grp, align 8
  %add.5 = add i64 %57, %55
  store i64 %add.5, ptr %grp, align 8
  %58 = ptrtoint ptr %arrayidx12.5 to i32
  call void @__asan_load8_noabort(i32 %58)
  %59 = load i64, ptr %arrayidx12.5, align 8
  %60 = ptrtoint ptr %cnt6 to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %cnt6, align 8
  %inc.5 = add i8 %61, 1
  store i8 %inc.5, ptr %cnt6, align 8
  %idxprom.5 = zext i8 %61 to i32
  %arrayidx25.5 = getelementptr [9 x i64], ptr %grp, i32 0, i32 %idxprom.5
  %62 = ptrtoint ptr %arrayidx25.5 to i32
  call void @__asan_store8_noabort(i32 %62)
  store i64 %59, ptr %arrayidx25.5, align 8
  %arrayidx12.6 = getelementptr %struct.ethtool_fec_stat, ptr %stats, i32 0, i32 1, i32 6
  %63 = ptrtoint ptr %arrayidx12.6 to i32
  call void @__asan_load8_noabort(i32 %63)
  %64 = load i64, ptr %arrayidx12.6, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %64)
  %cmp13.6 = icmp eq i64 %64, -1
  br i1 %cmp13.6, label %if.end16.5.cleanup_crit_edge, label %if.end16.6

if.end16.5.cleanup_crit_edge:                     ; preds = %if.end16.5
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end16.6:                                       ; preds = %if.end16.5
  %65 = ptrtoint ptr %grp to i32
  call void @__asan_load8_noabort(i32 %65)
  %66 = load i64, ptr %grp, align 8
  %add.6 = add i64 %66, %64
  store i64 %add.6, ptr %grp, align 8
  %67 = ptrtoint ptr %arrayidx12.6 to i32
  call void @__asan_load8_noabort(i32 %67)
  %68 = load i64, ptr %arrayidx12.6, align 8
  %69 = ptrtoint ptr %cnt6 to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %cnt6, align 8
  %inc.6 = add i8 %70, 1
  store i8 %inc.6, ptr %cnt6, align 8
  %idxprom.6 = zext i8 %70 to i32
  %arrayidx25.6 = getelementptr [9 x i64], ptr %grp, i32 0, i32 %idxprom.6
  %71 = ptrtoint ptr %arrayidx25.6 to i32
  call void @__asan_store8_noabort(i32 %71)
  store i64 %68, ptr %arrayidx25.6, align 8
  %arrayidx12.7 = getelementptr %struct.ethtool_fec_stat, ptr %stats, i32 0, i32 1, i32 7
  %72 = ptrtoint ptr %arrayidx12.7 to i32
  call void @__asan_load8_noabort(i32 %72)
  %73 = load i64, ptr %arrayidx12.7, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %73)
  %cmp13.7 = icmp eq i64 %73, -1
  br i1 %cmp13.7, label %if.end16.6.cleanup_crit_edge, label %if.end16.7

if.end16.6.cleanup_crit_edge:                     ; preds = %if.end16.6
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end16.7:                                       ; preds = %if.end16.6
  call void @__sanitizer_cov_trace_pc() #7
  %74 = ptrtoint ptr %grp to i32
  call void @__asan_load8_noabort(i32 %74)
  %75 = load i64, ptr %grp, align 8
  %add.7 = add i64 %75, %73
  store i64 %add.7, ptr %grp, align 8
  %76 = ptrtoint ptr %arrayidx12.7 to i32
  call void @__asan_load8_noabort(i32 %76)
  %77 = load i64, ptr %arrayidx12.7, align 8
  %78 = ptrtoint ptr %cnt6 to i32
  call void @__asan_load1_noabort(i32 %78)
  %79 = load i8, ptr %cnt6, align 8
  %inc.7 = add i8 %79, 1
  store i8 %inc.7, ptr %cnt6, align 8
  %idxprom.7 = zext i8 %79 to i32
  %arrayidx25.7 = getelementptr [9 x i64], ptr %grp, i32 0, i32 %idxprom.7
  %80 = ptrtoint ptr %arrayidx25.7 to i32
  call void @__asan_store8_noabort(i32 %80)
  store i64 %77, ptr %arrayidx25.7, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end16.7, %if.end16.6.cleanup_crit_edge, %if.end16.5.cleanup_crit_edge, %if.end16.4.cleanup_crit_edge, %if.end16.3.cleanup_crit_edge, %if.end16.2.cleanup_crit_edge, %if.end16.1.cleanup_crit_edge, %if.end16.cleanup_crit_edge, %if.end.cleanup_crit_edge, %if.then
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_first_bit_be(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ethnl_bitset_size(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ethnl_put_bitset(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nla_put(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nla_put_64bit(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_trim(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ref_tracker_free(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_bogus_irq_restore() local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 7)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 7)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nounwind readonly }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !13}
!llvm.named.register.sp = !{!15}
!llvm.module.flags = !{!16, !17, !18, !19, !20, !21, !22, !23}
!llvm.ident = !{!24}

!0 = !{ptr @ethnl_fec_get_policy, !1, !"ethnl_fec_get_policy", i1 false, i1 false}
!1 = !{!"../net/ethtool/fec.c", i32 27, i32 25}
!2 = !{ptr @ethnl_fec_request_ops, !3, !"ethnl_fec_request_ops", i1 false, i1 false}
!3 = !{!"../net/ethtool/fec.c", i32 220, i32 32}
!4 = !{ptr @ethnl_fec_set_policy, !5, !"ethnl_fec_set_policy", i1 false, i1 false}
!5 = !{!"../net/ethtool/fec.c", i32 234, i32 25}
!6 = !{ptr @ethnl_set_fec.__msg, !7, !"__msg", i1 false, i1 false}
!7 = !{!"../net/ethtool/fec.c", i32 287, i32 3}
!8 = !{ptr @ethnl_set_fec.__msg.1, !9, !"__msg", i1 false, i1 false}
!9 = !{!"../net/ethtool/fec.c", i32 293, i32 3}
!10 = distinct !{null, !11, !"__already_done", i1 false, i1 false}
!11 = !{!"../net/ethtool/fec.c", i32 123, i32 2}
!12 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @.str.2, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../include/net/netlink.h", i32 991, i32 3}
!15 = !{!"sp"}
!16 = !{i32 1, !"wchar_size", i32 2}
!17 = !{i32 1, !"min_enum_size", i32 4}
!18 = !{i32 8, !"branch-target-enforcement", i32 0}
!19 = !{i32 8, !"sign-return-address", i32 0}
!20 = !{i32 8, !"sign-return-address-all", i32 0}
!21 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!22 = !{i32 7, !"uwtable", i32 1}
!23 = !{i32 7, !"frame-pointer", i32 2}
!24 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!25 = !{!"branch_weights", i32 2000, i32 1}
!26 = !{!"branch_weights", i32 1, i32 2000}
!27 = !{i64 660037, i64 660098}
!28 = !{i64 662769}
!29 = !{i64 663054}
