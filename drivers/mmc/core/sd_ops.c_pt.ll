; ModuleID = '/llk/IR_all_yes/drivers/mmc/core/sd_ops.c_pt.bc'
source_filename = "../drivers/mmc/core/sd_ops.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+mmc_app_cmd\22, \22a\22\09"
module asm "\09.weak\09__crc_mmc_app_cmd\09\09\09\09"
module asm "\09.long\09__crc_mmc_app_cmd\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mmc_app_cmd:\09\09\09\09\09"
module asm "\09.asciz \09\22mmc_app_cmd\22\09\09\09\09\09"
module asm "__kstrtabns_mmc_app_cmd:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.mmc_command = type { i32, i32, [4 x i32], i32, i32, i32, i32, ptr, ptr }
%struct.mmc_card = type { ptr, %struct.device, i32, i32, i32, i32, i32, i32, i8, i32, i32, i32, i32, i32, i8, [4 x i32], [4 x i32], [2 x i32], [16 x i32], %struct.mmc_cid, %struct.mmc_csd, %struct.mmc_ext_csd, %struct.sd_scr, %struct.sd_ssr, %struct.sd_switch_caps, %struct.sd_ext_reg, %struct.sd_ext_reg, i32, %struct.atomic_t, %struct.sdio_cccr, %struct.sdio_cis, [7 x ptr], ptr, i8, i8, i32, ptr, ptr, i32, i32, i32, ptr, [7 x %struct.mmc_part], i32, ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
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
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.list_head = type { ptr, ptr }
%struct.mmc_cid = type { i32, [8 x i8], i8, i32, i16, i16, i8, i8, i8 }
%struct.mmc_csd = type { i8, i8, i16, i16, i32, i32, i32, i32, i32, i32, i32, i32, i8 }
%struct.mmc_ext_csd = type { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i8, i32, i32, i32, i32, i32, i32, i32, i32, i8, i64, i32, i32, i8, i8, i32, i8, i8, i8, i32, i32, i32, i8, i8, i8, i8, i32, [8 x i8], i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [4 x i8], i8, i8, i8, i32 }
%struct.sd_scr = type { i8, i8, i8, i8, i8, i8 }
%struct.sd_ssr = type { i32, i32, i32 }
%struct.sd_switch_caps = type { i32, i32, i32, i32, i32 }
%struct.sd_ext_reg = type { i8, i8, i16, i8, i8, i8 }
%struct.atomic_t = type { i32 }
%struct.sdio_cccr = type { i32, i32, i8 }
%struct.sdio_cis = type { i16, i16, i16, i32 }
%struct.mmc_part = type { i64, i32, [20 x i8], i8, i32 }
%struct.mmc_host = type { ptr, %struct.device, i32, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i32, i32, i32, i32, %struct.spinlock, %struct.mmc_ios, i16, i32, i32, i32, i32, i32, %struct.timer_list, i8, ptr, %struct.wait_queue_head, ptr, i32, %struct.mmc_ctx, %struct.delayed_work, i32, %struct.mmc_slot, ptr, i32, ptr, %struct.delayed_work, i8, %struct.atomic_t, i32, ptr, i8, %struct.mmc_supply, ptr, ptr, %struct.fault_attr, i32, i32, i32, i32, ptr, ptr, i32, i8, i8, %struct.blk_crypto_profile, i8, [15 x i8], [0 x i32] }
%struct.mmc_ios = type { i32, i16, i32, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.mmc_ctx = type { ptr }
%struct.mmc_slot = type { i32, i8, ptr }
%struct.mmc_supply = type { ptr, ptr }
%struct.fault_attr = type { i32, i32, %struct.atomic_t, %struct.atomic_t, i32, i8, i32, i32, i32, i32, i32, i32, %struct.ratelimit_state, ptr }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.blk_crypto_profile = type { %struct.blk_crypto_ll_ops, i32, [4 x i32], ptr, i32, %struct.rw_semaphore, %struct.wait_queue_head, %struct.list_head, %struct.spinlock, ptr, i32, ptr }
%struct.blk_crypto_ll_ops = type { ptr, ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.mmc_request = type { ptr, ptr, ptr, ptr, %struct.completion, %struct.completion, ptr, ptr, ptr, i8, i32, ptr, i32 }
%struct.mmc_host_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.mmc_data = type { i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, i32, i32, ptr, i32 }
%struct.scatterlist = type { i32, i32, i32, i32, i32 }

@.str = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"drivers/mmc/core/sd_ops.c\00", [38 x i8] zeroinitializer }, align 32
@__kstrtab_mmc_app_cmd = external dso_local constant [0 x i8], align 1
@__kstrtabns_mmc_app_cmd = external dso_local constant [0 x i8], align 1
@__ksymtab_mmc_app_cmd = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mmc_app_cmd to i32), ptr @__kstrtab_mmc_app_cmd, ptr @__kstrtabns_mmc_app_cmd }, section "___ksymtab_gpl+mmc_app_cmd", align 4
@mmc_send_app_op_cond._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str, i32 154, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\013%s: card never left busy state\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"mmc_send_app_op_cond\00", [43 x i8] zeroinitializer }, align 32
@mmc_send_app_op_cond._entry_ptr = internal global ptr @mmc_send_app_op_cond._entry, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 2]
@___asan_gen_.5 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.13, i32 27, i32 6 }
@___asan_gen_.6 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.12 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.13 = private constant [29 x i8] c"../drivers/mmc/core/sd_ops.c\00", align 1
@___asan_gen_.14 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.13, i32 154, i32 3 }
@llvm.compiler.used = appending global [6 x ptr] [ptr @__ksymtab_mmc_app_cmd, ptr @mmc_send_app_op_cond._entry, ptr @mmc_send_app_op_cond._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2], section "llvm.metadata"
@0 = internal global [4 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mmc_send_app_op_cond._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mmc_app_cmd(ptr noundef %host, ptr noundef readonly %card) #0 align 64 {
entry:
  %cmd = alloca %struct.mmc_command, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %cmd) #5
  %0 = call ptr @memset(ptr %cmd, i32 0, i32 48)
  %tobool.not = icmp eq ptr %card, null
  br i1 %tobool.not, label %if.else.critedge, label %land.rhs

land.rhs:                                         ; preds = %entry
  %1 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %card, align 8
  %cmp.not = icmp eq ptr %2, %host
  br i1 %cmp.not, label %if.then25.critedge, label %do.end, !prof !20

do.end:                                           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 27, i32 noundef 9, ptr noundef null) #5
  br label %cleanup

if.then25.critedge:                               ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #7
  %3 = ptrtoint ptr %cmd to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 55, ptr %cmd, align 4
  %rca = getelementptr inbounds %struct.mmc_card, ptr %card, i32 0, i32 3
  %4 = ptrtoint ptr %rca to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %rca, align 4
  %shl = shl i32 %5, 16
  %arg = getelementptr inbounds %struct.mmc_command, ptr %cmd, i32 0, i32 1
  %6 = ptrtoint ptr %arg to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %shl, ptr %arg, align 4
  br label %if.end28

if.else.critedge:                                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %7 = ptrtoint ptr %cmd to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 55, ptr %cmd, align 4
  br label %if.end28

if.end28:                                         ; preds = %if.else.critedge, %if.then25.critedge
  %.sink = phi i32 [ 245, %if.else.critedge ], [ 149, %if.then25.critedge ]
  %flags27 = getelementptr inbounds %struct.mmc_command, ptr %cmd, i32 0, i32 3
  %8 = ptrtoint ptr %flags27 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %.sink, ptr %flags27, align 4
  %call = call i32 @mmc_wait_for_cmd(ptr noundef %host, ptr noundef nonnull %cmd, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool29.not = icmp eq i32 %call, 0
  br i1 %tobool29.not, label %if.end31, label %if.end28.cleanup_crit_edge

if.end28.cleanup_crit_edge:                       ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end31:                                         ; preds = %if.end28
  %caps = getelementptr inbounds %struct.mmc_host, ptr %host, i32 0, i32 16
  %9 = ptrtoint ptr %caps to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %caps, align 32
  %and = and i32 %10, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool32.not = icmp eq i32 %and, 0
  br i1 %tobool32.not, label %land.lhs.true, label %if.end31.if.end36_crit_edge

if.end31.if.end36_crit_edge:                      ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end36

land.lhs.true:                                    ; preds = %if.end31
  %resp = getelementptr inbounds %struct.mmc_command, ptr %cmd, i32 0, i32 2
  %11 = ptrtoint ptr %resp to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %resp, align 4
  %and33 = and i32 %12, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and33)
  %tobool34.not = icmp eq i32 %and33, 0
  br i1 %tobool34.not, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.if.end36_crit_edge

land.lhs.true.if.end36_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end36

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end36:                                         ; preds = %land.lhs.true.if.end36_crit_edge, %if.end31.if.end36_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %if.end36, %land.lhs.true.cleanup_crit_edge, %if.end28.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ 0, %if.end36 ], [ %call, %if.end28.cleanup_crit_edge ], [ -95, %land.lhs.true.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %cmd) #5
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mmc_wait_for_cmd(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mmc_app_set_bus_width(ptr noundef %card, i32 noundef %width) local_unnamed_addr #0 align 64 {
entry:
  %cmd = alloca %struct.mmc_command, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %cmd) #5
  %0 = getelementptr inbounds i8, ptr %cmd, i32 4
  %1 = call ptr @memset(ptr %0, i32 0, i32 44)
  %2 = ptrtoint ptr %cmd to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 6, ptr %cmd, align 4
  %flags = getelementptr inbounds %struct.mmc_command, ptr %cmd, i32 0, i32 3
  %3 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 21, ptr %flags, align 4
  %4 = zext i32 %width to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values)
  switch i32 %width, label %entry.cleanup_crit_edge [
    i32 0, label %entry.sw.epilog_crit_edge
    i32 2, label %sw.bb1
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %arg2 = getelementptr inbounds %struct.mmc_command, ptr %cmd, i32 0, i32 1
  %5 = ptrtoint ptr %arg2 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 2, ptr %arg2, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb1, %entry.sw.epilog_crit_edge
  %6 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %card, align 8
  %call = call fastcc i32 @mmc_wait_for_app_cmd(ptr noundef %7, ptr noundef %card, ptr noundef nonnull %cmd)
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %sw.epilog ], [ -22, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %cmd) #5
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mmc_wait_for_app_cmd(ptr noundef %host, ptr noundef readonly %card, ptr noundef %cmd) unnamed_addr #0 align 64 {
entry:
  %cmd.i = alloca %struct.mmc_command, align 4
  %mrq = alloca %struct.mmc_request, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 156, ptr nonnull %mrq) #5
  %0 = call ptr @memset(ptr %mrq, i32 0, i32 156)
  %resp = getelementptr inbounds %struct.mmc_command, ptr %cmd, i32 0, i32 2
  %tobool.not.i = icmp eq ptr %card, null
  %rca.i = getelementptr inbounds %struct.mmc_card, ptr %card, i32 0, i32 3
  %arg.i = getelementptr inbounds %struct.mmc_command, ptr %cmd.i, i32 0, i32 1
  %flags27.i = getelementptr inbounds %struct.mmc_command, ptr %cmd.i, i32 0, i32 3
  %caps.i = getelementptr inbounds %struct.mmc_host, ptr %host, i32 0, i32 16
  %resp.i = getelementptr inbounds %struct.mmc_command, ptr %cmd.i, i32 0, i32 2
  %retries = getelementptr inbounds %struct.mmc_command, ptr %cmd, i32 0, i32 4
  %cmd9 = getelementptr inbounds %struct.mmc_request, ptr %mrq, i32 0, i32 1
  %data = getelementptr inbounds %struct.mmc_command, ptr %cmd, i32 0, i32 7
  %error = getelementptr inbounds %struct.mmc_command, ptr %cmd, i32 0, i32 5
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry
  %i.040 = phi i32 [ 0, %entry ], [ %inc, %for.inc.for.body_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %cmd.i) #5
  %1 = call ptr @memset(ptr %cmd.i, i32 0, i32 48)
  br i1 %tobool.not.i, label %if.else.critedge.i, label %land.rhs.i

land.rhs.i:                                       ; preds = %for.body
  %2 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %card, align 8
  %cmp.not.i = icmp eq ptr %3, %host
  br i1 %cmp.not.i, label %if.then25.critedge.i, label %do.end.i, !prof !20

do.end.i:                                         ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 27, i32 noundef 9, ptr noundef null) #5
  br label %if.then

if.then25.critedge.i:                             ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #7
  %4 = ptrtoint ptr %cmd.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 55, ptr %cmd.i, align 4
  %5 = ptrtoint ptr %rca.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %rca.i, align 4
  %shl.i = shl i32 %6, 16
  %7 = ptrtoint ptr %arg.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %shl.i, ptr %arg.i, align 4
  br label %if.end28.i

if.else.critedge.i:                               ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  %8 = ptrtoint ptr %cmd.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 55, ptr %cmd.i, align 4
  br label %if.end28.i

if.end28.i:                                       ; preds = %if.else.critedge.i, %if.then25.critedge.i
  %.sink.i = phi i32 [ 245, %if.else.critedge.i ], [ 149, %if.then25.critedge.i ]
  %9 = ptrtoint ptr %flags27.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %.sink.i, ptr %flags27.i, align 4
  %call.i = call i32 @mmc_wait_for_cmd(ptr noundef %host, ptr noundef nonnull %cmd.i, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool29.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool29.not.i, label %if.end31.i, label %if.end28.i.if.then_crit_edge

if.end28.i.if.then_crit_edge:                     ; preds = %if.end28.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then

if.end31.i:                                       ; preds = %if.end28.i
  %10 = ptrtoint ptr %caps.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %caps.i, align 32
  %and.i = and i32 %11, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool32.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool32.not.i, label %land.lhs.true.i, label %if.end31.i.if.end7_crit_edge

if.end31.i.if.end7_crit_edge:                     ; preds = %if.end31.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end7

land.lhs.true.i:                                  ; preds = %if.end31.i
  %12 = ptrtoint ptr %resp.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %resp.i, align 4
  %and33.i = and i32 %13, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and33.i)
  %tobool34.not.i = icmp eq i32 %and33.i, 0
  br i1 %tobool34.not.i, label %land.lhs.true.i.if.then_crit_edge, label %land.lhs.true.i.if.end7_crit_edge

land.lhs.true.i.if.end7_crit_edge:                ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end7

land.lhs.true.i.if.then_crit_edge:                ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then

if.then:                                          ; preds = %land.lhs.true.i.if.then_crit_edge, %if.end28.i.if.then_crit_edge, %do.end.i
  %retval.0.i.ph = phi i32 [ -95, %land.lhs.true.i.if.then_crit_edge ], [ %call.i, %if.end28.i.if.then_crit_edge ], [ -22, %do.end.i ]
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %cmd.i) #5
  %14 = ptrtoint ptr %caps.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %caps.i, align 32
  %and = and i32 %15, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool1.not = icmp eq i32 %and, 0
  br i1 %tobool1.not, label %if.then.for.inc_crit_edge, label %if.then2

if.then.for.inc_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

if.then2:                                         ; preds = %if.then
  %16 = ptrtoint ptr %resp to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %resp, align 4
  %and3 = and i32 %17, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3)
  %tobool4.not = icmp eq i32 %and3, 0
  br i1 %tobool4.not, label %if.then2.for.inc_crit_edge, label %if.then2.for.end_crit_edge

if.then2.for.end_crit_edge:                       ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

if.then2.for.inc_crit_edge:                       ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

if.end7:                                          ; preds = %land.lhs.true.i.if.end7_crit_edge, %if.end31.i.if.end7_crit_edge
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %cmd.i) #5
  %18 = call ptr @memset(ptr %mrq, i32 0, i32 156)
  %19 = call ptr @memset(ptr %resp, i32 0, i32 16)
  %20 = ptrtoint ptr %retries to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 0, ptr %retries, align 4
  %21 = ptrtoint ptr %cmd9 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %cmd, ptr %cmd9, align 4
  %22 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr null, ptr %data, align 4
  call void @mmc_wait_for_req(ptr noundef %host, ptr noundef nonnull %mrq) #5
  %23 = ptrtoint ptr %error to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %error, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool11.not = icmp eq i32 %24, 0
  br i1 %tobool11.not, label %if.end7.for.end_crit_edge, label %if.end13

if.end7.for.end_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

if.end13:                                         ; preds = %if.end7
  %25 = ptrtoint ptr %caps.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %caps.i, align 32
  %and15 = and i32 %26, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and15)
  %tobool16.not = icmp eq i32 %and15, 0
  br i1 %tobool16.not, label %if.end13.for.inc_crit_edge, label %if.then17

if.end13.for.inc_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

if.then17:                                        ; preds = %if.end13
  %27 = ptrtoint ptr %resp to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %resp, align 4
  %and20 = and i32 %28, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and20)
  %tobool21.not = icmp eq i32 %and20, 0
  br i1 %tobool21.not, label %if.then17.for.inc_crit_edge, label %if.then17.for.end_crit_edge

if.then17.for.end_crit_edge:                      ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

if.then17.for.inc_crit_edge:                      ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

for.inc:                                          ; preds = %if.then17.for.inc_crit_edge, %if.end13.for.inc_crit_edge, %if.then2.for.inc_crit_edge, %if.then.for.inc_crit_edge
  %err.1 = phi i32 [ %retval.0.i.ph, %if.then2.for.inc_crit_edge ], [ %retval.0.i.ph, %if.then.for.inc_crit_edge ], [ %24, %if.then17.for.inc_crit_edge ], [ %24, %if.end13.for.inc_crit_edge ]
  %inc = add nuw nsw i32 %i.040, 1
  %exitcond.not = icmp eq i32 %inc, 4
  br i1 %exitcond.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.then17.for.end_crit_edge, %if.end7.for.end_crit_edge, %if.then2.for.end_crit_edge
  %err.2 = phi i32 [ %retval.0.i.ph, %if.then2.for.end_crit_edge ], [ %24, %if.then17.for.end_crit_edge ], [ 0, %if.end7.for.end_crit_edge ], [ %err.1, %for.inc.for.end_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 156, ptr nonnull %mrq) #5
  ret i32 %err.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mmc_send_app_op_cond(ptr noundef %host, i32 noundef %ocr, ptr noundef writeonly %rocr) local_unnamed_addr #0 align 64 {
entry:
  %cmd = alloca %struct.mmc_command, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %cmd) #5
  %0 = getelementptr inbounds i8, ptr %cmd, i32 8
  %1 = call ptr @memset(ptr %0, i32 0, i32 40)
  %2 = ptrtoint ptr %cmd to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 41, ptr %cmd, align 4
  %caps = getelementptr inbounds %struct.mmc_host, ptr %host, i32 0, i32 16
  %3 = ptrtoint ptr %caps to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %caps, align 32
  %and = and i32 %4, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %and1 = and i32 %ocr, 1073741824
  %spec.select = select i1 %tobool.not, i32 %ocr, i32 %and1
  %5 = getelementptr inbounds %struct.mmc_command, ptr %cmd, i32 0, i32 1
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %spec.select, ptr %5, align 4
  %flags = getelementptr inbounds %struct.mmc_command, ptr %cmd, i32 0, i32 3
  %7 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 225, ptr %flags, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ocr)
  %cmp = icmp eq i32 %ocr, 0
  %resp = getelementptr inbounds %struct.mmc_command, ptr %cmd, i32 0, i32 2
  br label %for.body

for.body:                                         ; preds = %if.end24.for.body_crit_edge, %entry
  %i.051 = phi i32 [ 100, %entry ], [ %dec, %if.end24.for.body_crit_edge ]
  %call = call fastcc i32 @mmc_wait_for_app_cmd(ptr noundef %host, ptr noundef null, ptr noundef nonnull %cmd)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool4.not = icmp ne i32 %call, 0
  %brmerge = or i1 %tobool4.not, %cmp
  br i1 %brmerge, label %for.body.if.end29_crit_edge, label %if.end8

for.body.if.end29_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end29

if.end8:                                          ; preds = %for.body
  %8 = ptrtoint ptr %caps to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %caps, align 32
  %and10 = and i32 %9, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10)
  %tobool11.not = icmp eq i32 %and10, 0
  %10 = ptrtoint ptr %resp to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %resp, align 4
  br i1 %tobool11.not, label %if.else17, label %if.then12

if.then12:                                        ; preds = %if.end8
  %and13 = and i32 %11, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13)
  %tobool14.not = icmp eq i32 %and13, 0
  br i1 %tobool14.not, label %if.then12.if.end29_crit_edge, label %if.then12.if.end24_crit_edge

if.then12.if.end24_crit_edge:                     ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end24

if.then12.if.end29_crit_edge:                     ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end29

if.else17:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %11)
  %tobool21.not = icmp sgt i32 %11, -1
  br i1 %tobool21.not, label %if.else17.if.end24_crit_edge, label %if.else17.if.end29_crit_edge

if.else17.if.end29_crit_edge:                     ; preds = %if.else17
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end29

if.else17.if.end24_crit_edge:                     ; preds = %if.else17
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end24

if.end24:                                         ; preds = %if.else17.if.end24_crit_edge, %if.then12.if.end24_crit_edge
  call void @usleep_range_state(i32 noundef 10000, i32 noundef 12500, i32 noundef 2) #5
  %dec = add nsw i32 %i.051, -1
  %tobool3.not = icmp eq i32 %dec, 0
  br i1 %tobool3.not, label %do.end, label %if.end24.for.body_crit_edge

if.end24.for.body_crit_edge:                      ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

do.end:                                           ; preds = %if.end24
  %init_name.i = getelementptr inbounds %struct.mmc_host, ptr %host, i32 0, i32 1, i32 3
  %12 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %13, null
  br i1 %tobool.not.i, label %if.end.i, label %do.end.dev_name.exit_crit_edge

do.end.dev_name.exit_crit_edge:                   ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %dev_name.exit

if.end.i:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  %class_dev = getelementptr inbounds %struct.mmc_host, ptr %host, i32 0, i32 1
  %14 = ptrtoint ptr %class_dev to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %class_dev, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %do.end.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %15, %if.end.i ], [ %13, %do.end.dev_name.exit_crit_edge ]
  %call28 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef %retval.0.i) #8
  br label %if.end29

if.end29:                                         ; preds = %dev_name.exit, %if.else17.if.end29_crit_edge, %if.then12.if.end29_crit_edge, %for.body.if.end29_crit_edge
  %err.149 = phi i32 [ -110, %dev_name.exit ], [ %call, %for.body.if.end29_crit_edge ], [ 0, %if.then12.if.end29_crit_edge ], [ 0, %if.else17.if.end29_crit_edge ]
  %tobool30.not = icmp eq ptr %rocr, null
  br i1 %tobool30.not, label %if.end29.if.end37_crit_edge, label %land.lhs.true

if.end29.if.end37_crit_edge:                      ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end37

land.lhs.true:                                    ; preds = %if.end29
  %16 = ptrtoint ptr %caps to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %caps, align 32
  %and32 = and i32 %17, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and32)
  %tobool33.not = icmp eq i32 %and32, 0
  br i1 %tobool33.not, label %if.then34, label %land.lhs.true.if.end37_crit_edge

land.lhs.true.if.end37_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end37

if.then34:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  %18 = ptrtoint ptr %resp to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %resp, align 4
  %20 = ptrtoint ptr %rocr to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %rocr, align 4
  br label %if.end37

if.end37:                                         ; preds = %if.then34, %land.lhs.true.if.end37_crit_edge, %if.end29.if.end37_crit_edge
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %cmd) #5
  ret i32 %err.149
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mmc_send_if_cond(ptr noundef %host, i32 noundef %ocr) local_unnamed_addr #0 align 64 {
entry:
  %cmd.i = alloca %struct.mmc_command, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %cmd.i) #5
  %0 = getelementptr inbounds i8, ptr %cmd.i, i32 8
  %1 = call ptr @memset(ptr %0, i32 0, i32 40)
  %2 = ptrtoint ptr %cmd.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 8, ptr %cmd.i, align 4
  %and.i = and i32 %ocr, 16744448
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %cmp.not.i = icmp eq i32 %and.i, 0
  %or3.i = select i1 %cmp.not.i, i32 170, i32 426
  %arg.i = getelementptr inbounds %struct.mmc_command, ptr %cmd.i, i32 0, i32 1
  %3 = ptrtoint ptr %arg.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %or3.i, ptr %arg.i, align 4
  %flags.i = getelementptr inbounds %struct.mmc_command, ptr %cmd.i, i32 0, i32 3
  %4 = ptrtoint ptr %flags.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 757, ptr %flags.i, align 4
  %call.i = call i32 @mmc_wait_for_cmd(ptr noundef %host, ptr noundef nonnull %cmd.i, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.__mmc_send_if_cond.exit_crit_edge

entry.__mmc_send_if_cond.exit_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %__mmc_send_if_cond.exit

if.end.i:                                         ; preds = %entry
  %caps.i = getelementptr inbounds %struct.mmc_host, ptr %host, i32 0, i32 16
  %5 = ptrtoint ptr %caps.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %caps.i, align 32
  %and4.i = and i32 %6, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool5.not.i, label %if.else.i, label %if.then6.i

if.then6.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx.i = getelementptr inbounds %struct.mmc_command, ptr %cmd.i, i32 0, i32 2, i32 1
  %7 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %arrayidx.i, align 4
  %and8.i = and i32 %8, 255
  br label %if.end14.i

if.else.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  %9 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %0, align 4
  br label %if.end14.i

if.end14.i:                                       ; preds = %if.else.i, %if.then6.i
  %result_pattern.0.in.i = phi i32 [ %and8.i, %if.then6.i ], [ %10, %if.else.i ]
  %conv15.i = and i32 %result_pattern.0.in.i, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 170, i32 %conv15.i)
  %cmp16.not.i = icmp eq i32 %conv15.i, 170
  %spec.select = select i1 %cmp16.not.i, i32 0, i32 -5
  br label %__mmc_send_if_cond.exit

__mmc_send_if_cond.exit:                          ; preds = %if.end14.i, %entry.__mmc_send_if_cond.exit_crit_edge
  %retval.0.i = phi i32 [ %call.i, %entry.__mmc_send_if_cond.exit_crit_edge ], [ %spec.select, %if.end14.i ]
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %cmd.i) #5
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mmc_send_if_cond_pcie(ptr noundef %host, i32 noundef %ocr) local_unnamed_addr #0 align 64 {
entry:
  %cmd.i = alloca %struct.mmc_command, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %caps2 = getelementptr inbounds %struct.mmc_host, ptr %host, i32 0, i32 17
  %0 = ptrtoint ptr %caps2 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %caps2, align 4
  %and = and i32 %1, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %and2 = and i32 %1, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2)
  %tobool3.not = icmp eq i32 %and2, 0
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %cmd.i) #5
  %2 = getelementptr inbounds i8, ptr %cmd.i, i32 8
  %3 = call ptr @memset(ptr %2, i32 0, i32 40)
  %4 = ptrtoint ptr %cmd.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 8, ptr %cmd.i, align 4
  %and.i = and i32 %ocr, 16744448
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %cmp.not.i = icmp eq i32 %and.i, 0
  %5 = select i1 %tobool3.not, i32 4096, i32 12288
  %conv1.i = select i1 %tobool.not, i32 0, i32 %5
  %or.i = select i1 %cmp.not.i, i32 170, i32 426
  %or3.i = or i32 %or.i, %conv1.i
  %arg.i = getelementptr inbounds %struct.mmc_command, ptr %cmd.i, i32 0, i32 1
  %6 = ptrtoint ptr %arg.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %or3.i, ptr %arg.i, align 4
  %flags.i = getelementptr inbounds %struct.mmc_command, ptr %cmd.i, i32 0, i32 3
  %7 = ptrtoint ptr %flags.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 757, ptr %flags.i, align 4
  %call.i = call i32 @mmc_wait_for_cmd(ptr noundef %host, ptr noundef nonnull %cmd.i, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.__mmc_send_if_cond.exit.thread_crit_edge

entry.__mmc_send_if_cond.exit.thread_crit_edge:   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %__mmc_send_if_cond.exit.thread

if.end.i:                                         ; preds = %entry
  %caps.i = getelementptr inbounds %struct.mmc_host, ptr %host, i32 0, i32 16
  %8 = ptrtoint ptr %caps.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %caps.i, align 32
  %and4.i = and i32 %9, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool5.not.i, label %if.else.i, label %if.then6.i

if.then6.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx.i = getelementptr inbounds %struct.mmc_command, ptr %cmd.i, i32 0, i32 2, i32 1
  %10 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx.i, align 4
  %and8.i = and i32 %11, 255
  br label %if.end14.i

if.else.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  %12 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %2, align 4
  br label %if.end14.i

if.end14.i:                                       ; preds = %if.else.i, %if.then6.i
  %result_pattern.0.in.i = phi i32 [ %and8.i, %if.then6.i ], [ %13, %if.else.i ]
  %conv15.i = and i32 %result_pattern.0.in.i, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 170, i32 %conv15.i)
  %cmp16.not.i = icmp eq i32 %conv15.i, 170
  br i1 %cmp16.not.i, label %if.end8, label %if.end14.i.__mmc_send_if_cond.exit.thread_crit_edge

if.end14.i.__mmc_send_if_cond.exit.thread_crit_edge: ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %__mmc_send_if_cond.exit.thread

__mmc_send_if_cond.exit.thread:                   ; preds = %if.end14.i.__mmc_send_if_cond.exit.thread_crit_edge, %entry.__mmc_send_if_cond.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %cmd.i) #5
  br label %cleanup

if.end8:                                          ; preds = %if.end14.i
  %14 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %2, align 4
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %cmd.i) #5
  %and9 = and i32 %15, 12288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9)
  %tobool11.not = icmp eq i32 %and9, 0
  %or.cond = select i1 %tobool.not, i1 true, i1 %tobool11.not
  br i1 %or.cond, label %if.end8.cleanup_crit_edge, label %if.then12

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then12:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 12288, i32 %and9)
  %cmp = icmp eq i32 %and9, 12288
  %spec.select = select i1 %cmp, i8 12, i8 11
  %16 = getelementptr inbounds %struct.mmc_host, ptr %host, i32 0, i32 28, i32 7
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %spec.select, ptr %16, align 4
  %ops = getelementptr inbounds %struct.mmc_host, ptr %host, i32 0, i32 3
  %18 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %ops, align 4
  %init_sd_express = getelementptr inbounds %struct.mmc_host_ops, ptr %19, i32 0, i32 23
  %20 = ptrtoint ptr %init_sd_express to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %init_sd_express, align 4
  %ios18 = getelementptr inbounds %struct.mmc_host, ptr %host, i32 0, i32 28
  %call19 = call i32 %21(ptr noundef %host, ptr noundef %ios18) #5
  br label %cleanup

cleanup:                                          ; preds = %if.then12, %if.end8.cleanup_crit_edge, %__mmc_send_if_cond.exit.thread
  %retval.0 = phi i32 [ %call19, %if.then12 ], [ 0, %if.end8.cleanup_crit_edge ], [ 0, %__mmc_send_if_cond.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mmc_send_relative_addr(ptr noundef %host, ptr nocapture noundef writeonly %rca) local_unnamed_addr #0 align 64 {
entry:
  %cmd = alloca %struct.mmc_command, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %cmd) #5
  %0 = getelementptr inbounds i8, ptr %cmd, i32 8
  %1 = call ptr @memset(ptr %0, i32 0, i32 40)
  %2 = ptrtoint ptr %cmd to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 3, ptr %cmd, align 4
  %arg = getelementptr inbounds %struct.mmc_command, ptr %cmd, i32 0, i32 1
  %3 = ptrtoint ptr %arg to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %arg, align 4
  %flags = getelementptr inbounds %struct.mmc_command, ptr %cmd, i32 0, i32 3
  %4 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 117, ptr %flags, align 4
  %call = call i32 @mmc_wait_for_cmd(ptr noundef %host, ptr noundef nonnull %cmd, i32 noundef 3) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %resp = getelementptr inbounds %struct.mmc_command, ptr %cmd, i32 0, i32 2
  %5 = ptrtoint ptr %resp to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %resp, align 4
  %shr = lshr i32 %6, 16
  %7 = ptrtoint ptr %rca to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %shr, ptr %rca, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %cmd) #5
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mmc_app_send_scr(ptr noundef %card) local_unnamed_addr #0 align 64 {
entry:
  %cmd.i = alloca %struct.mmc_command, align 4
  %mrq = alloca %struct.mmc_request, align 4
  %cmd = alloca %struct.mmc_command, align 4
  %data = alloca %struct.mmc_data, align 4
  %sg = alloca %struct.scatterlist, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 156, ptr nonnull %mrq) #5
  %0 = call ptr @memset(ptr %mrq, i32 0, i32 156)
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %cmd) #5
  %1 = getelementptr inbounds i8, ptr %cmd, i32 8
  %2 = call ptr @memset(ptr %1, i32 0, i32 40)
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %data) #5
  %3 = call ptr @memset(ptr %data, i32 0, i32 56)
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %sg) #5
  %4 = call ptr @memset(ptr %sg, i32 255, i32 20)
  %5 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %card, align 8
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %cmd.i) #5
  %7 = call ptr @memset(ptr %cmd.i, i32 0, i32 48)
  %tobool.not.i = icmp eq ptr %card, null
  %8 = ptrtoint ptr %cmd.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 55, ptr %cmd.i, align 4
  br i1 %tobool.not.i, label %entry.if.end28.i_crit_edge, label %if.then25.critedge.i

entry.if.end28.i_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end28.i

if.then25.critedge.i:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %rca.i = getelementptr inbounds %struct.mmc_card, ptr %card, i32 0, i32 3
  %9 = ptrtoint ptr %rca.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %rca.i, align 4
  %shl.i = shl i32 %10, 16
  %arg.i = getelementptr inbounds %struct.mmc_command, ptr %cmd.i, i32 0, i32 1
  %11 = ptrtoint ptr %arg.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %shl.i, ptr %arg.i, align 4
  br label %if.end28.i

if.end28.i:                                       ; preds = %if.then25.critedge.i, %entry.if.end28.i_crit_edge
  %.sink.i = phi i32 [ 149, %if.then25.critedge.i ], [ 245, %entry.if.end28.i_crit_edge ]
  %flags27.i = getelementptr inbounds %struct.mmc_command, ptr %cmd.i, i32 0, i32 3
  %12 = ptrtoint ptr %flags27.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %.sink.i, ptr %flags27.i, align 4
  %call.i = call i32 @mmc_wait_for_cmd(ptr noundef %6, ptr noundef nonnull %cmd.i, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool29.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool29.not.i, label %if.end31.i, label %if.end28.i.mmc_app_cmd.exit.thread_crit_edge

if.end28.i.mmc_app_cmd.exit.thread_crit_edge:     ; preds = %if.end28.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %mmc_app_cmd.exit.thread

if.end31.i:                                       ; preds = %if.end28.i
  %caps.i = getelementptr inbounds %struct.mmc_host, ptr %6, i32 0, i32 16
  %13 = ptrtoint ptr %caps.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %caps.i, align 32
  %and.i = and i32 %14, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool32.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool32.not.i, label %land.lhs.true.i, label %if.end31.i.if.end_crit_edge

if.end31.i.if.end_crit_edge:                      ; preds = %if.end31.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

land.lhs.true.i:                                  ; preds = %if.end31.i
  %resp.i = getelementptr inbounds %struct.mmc_command, ptr %cmd.i, i32 0, i32 2
  %15 = ptrtoint ptr %resp.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %resp.i, align 4
  %and33.i = and i32 %16, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and33.i)
  %tobool34.not.i = icmp eq i32 %and33.i, 0
  br i1 %tobool34.not.i, label %land.lhs.true.i.mmc_app_cmd.exit.thread_crit_edge, label %land.lhs.true.i.if.end_crit_edge

land.lhs.true.i.if.end_crit_edge:                 ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

land.lhs.true.i.mmc_app_cmd.exit.thread_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %mmc_app_cmd.exit.thread

mmc_app_cmd.exit.thread:                          ; preds = %land.lhs.true.i.mmc_app_cmd.exit.thread_crit_edge, %if.end28.i.mmc_app_cmd.exit.thread_crit_edge
  %retval.0.i.ph = phi i32 [ -95, %land.lhs.true.i.mmc_app_cmd.exit.thread_crit_edge ], [ %call.i, %if.end28.i.mmc_app_cmd.exit.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %cmd.i) #5
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true.i.if.end_crit_edge, %if.end31.i.if.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %cmd.i) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %17 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %17, i32 noundef 3264, i32 noundef 8) #9
  %tobool2.not = icmp eq ptr %call7.i, null
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %cmd5 = getelementptr inbounds %struct.mmc_request, ptr %mrq, i32 0, i32 1
  %18 = ptrtoint ptr %cmd5 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %cmd, ptr %cmd5, align 4
  %data6 = getelementptr inbounds %struct.mmc_request, ptr %mrq, i32 0, i32 2
  %19 = ptrtoint ptr %data6 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %data, ptr %data6, align 4
  %20 = ptrtoint ptr %cmd to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 51, ptr %cmd, align 4
  %arg = getelementptr inbounds %struct.mmc_command, ptr %cmd, i32 0, i32 1
  %21 = ptrtoint ptr %arg to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 0, ptr %arg, align 4
  %flags = getelementptr inbounds %struct.mmc_command, ptr %cmd, i32 0, i32 3
  %22 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 181, ptr %flags, align 4
  %blksz = getelementptr inbounds %struct.mmc_data, ptr %data, i32 0, i32 2
  %23 = ptrtoint ptr %blksz to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 8, ptr %blksz, align 4
  %blocks = getelementptr inbounds %struct.mmc_data, ptr %data, i32 0, i32 3
  %24 = ptrtoint ptr %blocks to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 1, ptr %blocks, align 4
  %flags7 = getelementptr inbounds %struct.mmc_data, ptr %data, i32 0, i32 6
  %25 = ptrtoint ptr %flags7 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 512, ptr %flags7, align 4
  %sg8 = getelementptr inbounds %struct.mmc_data, ptr %data, i32 0, i32 12
  %26 = ptrtoint ptr %sg8 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %sg, ptr %sg8, align 4
  %sg_len = getelementptr inbounds %struct.mmc_data, ptr %data, i32 0, i32 10
  %27 = ptrtoint ptr %sg_len to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 1, ptr %sg_len, align 4
  call void @sg_init_one(ptr noundef nonnull %sg, ptr noundef nonnull %call7.i, i32 noundef 8) #5
  call void @mmc_set_data_timeout(ptr noundef nonnull %data, ptr noundef %card) #5
  %28 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %card, align 8
  call void @mmc_wait_for_req(ptr noundef %29, ptr noundef nonnull %mrq) #5
  %30 = ptrtoint ptr %call7.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %call7.i, align 8
  %raw_scr = getelementptr inbounds %struct.mmc_card, ptr %card, i32 0, i32 17
  %32 = ptrtoint ptr %raw_scr to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %31, ptr %raw_scr, align 4
  %arrayidx11 = getelementptr i32, ptr %call7.i, i32 1
  %33 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %arrayidx11, align 4
  %arrayidx13 = getelementptr %struct.mmc_card, ptr %card, i32 0, i32 17, i32 1
  %35 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %34, ptr %arrayidx13, align 4
  call void @kfree(ptr noundef nonnull %call7.i) #5
  %error = getelementptr inbounds %struct.mmc_command, ptr %cmd, i32 0, i32 5
  %36 = ptrtoint ptr %error to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %error, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %tobool14.not = icmp eq i32 %37, 0
  br i1 %tobool14.not, label %if.end17, label %if.end4.cleanup_crit_edge

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end17:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #7
  %error18 = getelementptr inbounds %struct.mmc_data, ptr %data, i32 0, i32 5
  %38 = ptrtoint ptr %error18 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %error18, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end17, %if.end4.cleanup_crit_edge, %if.end.cleanup_crit_edge, %mmc_app_cmd.exit.thread
  %retval.0 = phi i32 [ -12, %if.end.cleanup_crit_edge ], [ %37, %if.end4.cleanup_crit_edge ], [ %39, %if.end17 ], [ %retval.0.i.ph, %mmc_app_cmd.exit.thread ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %sg) #5
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %data) #5
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %cmd) #5
  call void @llvm.lifetime.end.p0(i64 156, ptr nonnull %mrq) #5
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @sg_init_one(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmc_set_data_timeout(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmc_wait_for_req(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mmc_sd_switch(ptr noundef %card, i32 noundef %mode, i32 noundef %group, i8 noundef zeroext %value, ptr noundef %resp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mode)
  %tobool.not = icmp eq i32 %mode, 0
  %0 = and i8 %value, 15
  %or = select i1 %tobool.not, i32 16777215, i32 -2130706433
  %mul = shl i32 %group, 2
  %shl3 = shl i32 15, %mul
  %neg = xor i32 %shl3, -1
  %and4 = and i32 %or, %neg
  %conv5 = zext i8 %0 to i32
  %shl7 = shl i32 %conv5, %mul
  %or8 = or i32 %shl7, %and4
  %1 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %card, align 8
  %call = tail call i32 @mmc_send_adtc_data(ptr noundef %card, ptr noundef %2, i32 noundef 6, i32 noundef %or8, ptr noundef %resp, i32 noundef 64) #5
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mmc_send_adtc_data(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mmc_app_sd_status(ptr noundef %card, ptr noundef %ssr) local_unnamed_addr #0 align 64 {
entry:
  %cmd.i = alloca %struct.mmc_command, align 4
  %mrq = alloca %struct.mmc_request, align 4
  %cmd = alloca %struct.mmc_command, align 4
  %data = alloca %struct.mmc_data, align 4
  %sg = alloca %struct.scatterlist, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 156, ptr nonnull %mrq) #5
  %0 = call ptr @memset(ptr %mrq, i32 0, i32 156)
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %cmd) #5
  %1 = getelementptr inbounds i8, ptr %cmd, i32 8
  %2 = call ptr @memset(ptr %1, i32 0, i32 40)
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %data) #5
  %3 = call ptr @memset(ptr %data, i32 0, i32 56)
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %sg) #5
  %4 = call ptr @memset(ptr %sg, i32 255, i32 20)
  %5 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %card, align 8
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %cmd.i) #5
  %7 = call ptr @memset(ptr %cmd.i, i32 0, i32 48)
  %tobool.not.i = icmp eq ptr %card, null
  %8 = ptrtoint ptr %cmd.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 55, ptr %cmd.i, align 4
  br i1 %tobool.not.i, label %entry.if.end28.i_crit_edge, label %if.then25.critedge.i

entry.if.end28.i_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end28.i

if.then25.critedge.i:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %rca.i = getelementptr inbounds %struct.mmc_card, ptr %card, i32 0, i32 3
  %9 = ptrtoint ptr %rca.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %rca.i, align 4
  %shl.i = shl i32 %10, 16
  %arg.i = getelementptr inbounds %struct.mmc_command, ptr %cmd.i, i32 0, i32 1
  %11 = ptrtoint ptr %arg.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %shl.i, ptr %arg.i, align 4
  br label %if.end28.i

if.end28.i:                                       ; preds = %if.then25.critedge.i, %entry.if.end28.i_crit_edge
  %.sink.i = phi i32 [ 149, %if.then25.critedge.i ], [ 245, %entry.if.end28.i_crit_edge ]
  %flags27.i = getelementptr inbounds %struct.mmc_command, ptr %cmd.i, i32 0, i32 3
  %12 = ptrtoint ptr %flags27.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %.sink.i, ptr %flags27.i, align 4
  %call.i = call i32 @mmc_wait_for_cmd(ptr noundef %6, ptr noundef nonnull %cmd.i, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool29.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool29.not.i, label %if.end31.i, label %if.end28.i.mmc_app_cmd.exit.thread_crit_edge

if.end28.i.mmc_app_cmd.exit.thread_crit_edge:     ; preds = %if.end28.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %mmc_app_cmd.exit.thread

if.end31.i:                                       ; preds = %if.end28.i
  %caps.i = getelementptr inbounds %struct.mmc_host, ptr %6, i32 0, i32 16
  %13 = ptrtoint ptr %caps.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %caps.i, align 32
  %and.i = and i32 %14, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool32.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool32.not.i, label %land.lhs.true.i, label %if.end31.i.if.end_crit_edge

if.end31.i.if.end_crit_edge:                      ; preds = %if.end31.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

land.lhs.true.i:                                  ; preds = %if.end31.i
  %resp.i = getelementptr inbounds %struct.mmc_command, ptr %cmd.i, i32 0, i32 2
  %15 = ptrtoint ptr %resp.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %resp.i, align 4
  %and33.i = and i32 %16, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and33.i)
  %tobool34.not.i = icmp eq i32 %and33.i, 0
  br i1 %tobool34.not.i, label %land.lhs.true.i.mmc_app_cmd.exit.thread_crit_edge, label %land.lhs.true.i.if.end_crit_edge

land.lhs.true.i.if.end_crit_edge:                 ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

land.lhs.true.i.mmc_app_cmd.exit.thread_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %mmc_app_cmd.exit.thread

mmc_app_cmd.exit.thread:                          ; preds = %land.lhs.true.i.mmc_app_cmd.exit.thread_crit_edge, %if.end28.i.mmc_app_cmd.exit.thread_crit_edge
  %retval.0.i.ph = phi i32 [ -95, %land.lhs.true.i.mmc_app_cmd.exit.thread_crit_edge ], [ %call.i, %if.end28.i.mmc_app_cmd.exit.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %cmd.i) #5
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true.i.if.end_crit_edge, %if.end31.i.if.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %cmd.i) #5
  %cmd1 = getelementptr inbounds %struct.mmc_request, ptr %mrq, i32 0, i32 1
  %17 = ptrtoint ptr %cmd1 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %cmd, ptr %cmd1, align 4
  %data2 = getelementptr inbounds %struct.mmc_request, ptr %mrq, i32 0, i32 2
  %18 = ptrtoint ptr %data2 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %data, ptr %data2, align 4
  %19 = ptrtoint ptr %cmd to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 13, ptr %cmd, align 4
  %arg = getelementptr inbounds %struct.mmc_command, ptr %cmd, i32 0, i32 1
  %20 = ptrtoint ptr %arg to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 0, ptr %arg, align 4
  %flags = getelementptr inbounds %struct.mmc_command, ptr %cmd, i32 0, i32 3
  %21 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 437, ptr %flags, align 4
  %blksz = getelementptr inbounds %struct.mmc_data, ptr %data, i32 0, i32 2
  %22 = ptrtoint ptr %blksz to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 64, ptr %blksz, align 4
  %blocks = getelementptr inbounds %struct.mmc_data, ptr %data, i32 0, i32 3
  %23 = ptrtoint ptr %blocks to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 1, ptr %blocks, align 4
  %flags3 = getelementptr inbounds %struct.mmc_data, ptr %data, i32 0, i32 6
  %24 = ptrtoint ptr %flags3 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 512, ptr %flags3, align 4
  %sg4 = getelementptr inbounds %struct.mmc_data, ptr %data, i32 0, i32 12
  %25 = ptrtoint ptr %sg4 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %sg, ptr %sg4, align 4
  %sg_len = getelementptr inbounds %struct.mmc_data, ptr %data, i32 0, i32 10
  %26 = ptrtoint ptr %sg_len to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 1, ptr %sg_len, align 4
  call void @sg_init_one(ptr noundef nonnull %sg, ptr noundef %ssr, i32 noundef 64) #5
  call void @mmc_set_data_timeout(ptr noundef nonnull %data, ptr noundef %card) #5
  %27 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %card, align 8
  call void @mmc_wait_for_req(ptr noundef %28, ptr noundef nonnull %mrq) #5
  %error = getelementptr inbounds %struct.mmc_command, ptr %cmd, i32 0, i32 5
  %29 = ptrtoint ptr %error to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %error, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %tobool6.not = icmp eq i32 %30, 0
  br i1 %tobool6.not, label %if.end9, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end9:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %error10 = getelementptr inbounds %struct.mmc_data, ptr %data, i32 0, i32 5
  %31 = ptrtoint ptr %error10 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %error10, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end9, %if.end.cleanup_crit_edge, %mmc_app_cmd.exit.thread
  %retval.0 = phi i32 [ %30, %if.end.cleanup_crit_edge ], [ %32, %if.end9 ], [ %retval.0.i.ph, %mmc_app_cmd.exit.thread ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %sg) #5
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %data) #5
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %cmd) #5
  call void @llvm.lifetime.end.p0(i64 156, ptr nonnull %mrq) #5
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

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
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }
attributes #9 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !8, !9}
!llvm.module.flags = !{!11, !12, !13, !14, !15, !16, !17, !18}
!llvm.ident = !{!19}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/mmc/core/sd_ops.c", i32 27, i32 6}
!2 = !{ptr @__ksymtab_mmc_app_cmd, !3, !"__ksymtab_mmc_app_cmd", i1 false, i1 false}
!3 = !{!"../drivers/mmc/core/sd_ops.c", i32 50, i32 1}
!4 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/mmc/core/sd_ops.c", i32 154, i32 3}
!6 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @mmc_send_app_op_cond._entry, !5, !"_entry", i1 false, i1 false}
!8 = !{ptr @mmc_send_app_op_cond._entry_ptr, !5, !"_entry_ptr", i1 false, i1 false}
!9 = distinct !{null, !10, !"test_pattern", i1 false, i1 false}
!10 = !{!"../drivers/mmc/core/sd_ops.c", i32 167, i32 18}
!11 = !{i32 1, !"wchar_size", i32 2}
!12 = !{i32 1, !"min_enum_size", i32 4}
!13 = !{i32 8, !"branch-target-enforcement", i32 0}
!14 = !{i32 8, !"sign-return-address", i32 0}
!15 = !{i32 8, !"sign-return-address-all", i32 0}
!16 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!17 = !{i32 7, !"uwtable", i32 1}
!18 = !{i32 7, !"frame-pointer", i32 2}
!19 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!20 = !{!"branch_weights", i32 2000, i32 1}
