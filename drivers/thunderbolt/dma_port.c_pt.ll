; ModuleID = '/llk/IR_all_yes/drivers/thunderbolt/dma_port.c_pt.bc'
source_filename = "../drivers/thunderbolt/dma_port.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.tb_switch = type { %struct.device, %struct.tb_regs_switch_header, ptr, ptr, %struct.tb_switch_tmu, ptr, i64, ptr, i16, i16, ptr, ptr, i32, i32, i8, i32, i32, i32, i32, i32, i8, ptr, ptr, i8, i8, i8, i8, i32, i32, ptr, ptr, i8, i8, i8, i8, %struct.completion, i32, i8, i32, i32, i32, i32, i32, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
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
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.list_head = type { ptr, ptr }
%struct.tb_regs_switch_header = type <{ i16, i16, i32, i32, i64 }>
%struct.tb_switch_tmu = type { i32, i8, i32, i8, i8, i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.tb = type { %struct.device, %struct.mutex, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, [0 x i32] }
%struct.tb_dma_port = type { ptr, i8, i32, ptr }
%struct.cfg_read_pkg = type { %struct.tb_cfg_header, %struct.tb_cfg_address }
%struct.tb_cfg_header = type { i32, i32 }
%struct.tb_cfg_address = type { i32 }
%struct.cfg_write_pkg = type { %struct.tb_cfg_header, %struct.tb_cfg_address, [64 x i32] }
%struct.tb_cfg_result = type { i64, i32, i32, i32 }
%struct.tb_cfg_request = type { %struct.kref, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, i32, %struct.work_struct, %struct.tb_cfg_result, %struct.list_head }
%struct.ctl_pkg = type { ptr, ptr, %struct.ring_frame }
%struct.ring_frame = type { i32, ptr, %struct.list_head, i32 }

@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"drivers/thunderbolt/ctl.h\00", [38 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@switch.table.dma_port_request = internal constant { [3 x i32], [20 x i8] } { [3 x i32] [i32 0, i32 -22, i32 -13], [20 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967186]
@___asan_gen_ = private constant [34 x i8] c"../drivers/thunderbolt/dma_port.c\00", align 1
@___asan_gen_.1 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.2 = private unnamed_addr constant [29 x i8] c"../drivers/thunderbolt/ctl.h\00", align 1
@___asan_gen_.3 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2, i32 121, i32 2 }
@___asan_gen_.4 = private unnamed_addr constant [30 x i8] c"switch.table.dma_port_request\00", align 1
@llvm.compiler.used = appending global [2 x ptr] [ptr @.str, ptr @switch.table.dma_port_request], section "llvm.metadata"
@0 = internal global [2 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.dma_port_request to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @dma_port_alloc(ptr noundef %sw) local_unnamed_addr #0 align 64 {
entry:
  %type.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %tb.i = getelementptr inbounds %struct.tb_switch, ptr %sw, i32 0, i32 5
  %route_hi.i.i = getelementptr inbounds %struct.tb_switch, ptr %sw, i32 0, i32 1, i32 4
  %route_lo.i.i = getelementptr inbounds %struct.tb_switch, ptr %sw, i32 0, i32 1, i32 3
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %type.i) #7
  %0 = ptrtoint ptr %type.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %type.i, align 4, !annotation !13
  %1 = ptrtoint ptr %tb.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %tb.i, align 8
  %ctl.i = getelementptr inbounds %struct.tb, ptr %2, i32 0, i32 3
  %3 = ptrtoint ptr %ctl.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %ctl.i, align 8
  %5 = ptrtoint ptr %route_hi.i.i to i32
  call void @__asan_loadN_noabort(i32 %5, i32 8)
  %bf.load.i.i = load i64, ptr %route_hi.i.i, align 4
  %6 = lshr i64 %bf.load.i.i, 1
  %shl.i.i = and i64 %6, 9223372032559808512
  %7 = ptrtoint ptr %route_lo.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %route_lo.i.i, align 8
  %conv2.i.i = zext i32 %8 to i64
  %or.i.i = or i64 %shl.i.i, %conv2.i.i
  %call1.i = call fastcc i32 @dma_port_read(ptr noundef %4, ptr noundef nonnull %type.i, i64 noundef %or.i.i, i32 noundef 3, i32 noundef 2, i32 noundef 1, i32 noundef 5000) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i, label %entry.for.inc.i_crit_edge

entry.for.inc.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

land.lhs.true.i:                                  ; preds = %entry
  %9 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %type.i, align 4
  %and.i = and i32 %10, 16777215
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %and.i)
  %cmp2.i = icmp eq i32 %and.i, 2
  br i1 %cmp2.i, label %land.lhs.true.i.if.end_crit_edge, label %land.lhs.true.i.for.inc.i_crit_edge

land.lhs.true.i.for.inc.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

land.lhs.true.i.if.end_crit_edge:                 ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

for.inc.i:                                        ; preds = %land.lhs.true.i.for.inc.i_crit_edge, %entry.for.inc.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %type.i) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %type.i) #7
  %11 = ptrtoint ptr %type.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 -1, ptr %type.i, align 4, !annotation !13
  %12 = ptrtoint ptr %tb.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %tb.i, align 8
  %ctl.1.i = getelementptr inbounds %struct.tb, ptr %13, i32 0, i32 3
  %14 = ptrtoint ptr %ctl.1.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ctl.1.i, align 8
  %16 = ptrtoint ptr %route_hi.i.i to i32
  call void @__asan_loadN_noabort(i32 %16, i32 8)
  %bf.load.i.1.i = load i64, ptr %route_hi.i.i, align 4
  %17 = lshr i64 %bf.load.i.1.i, 1
  %shl.i.1.i = and i64 %17, 9223372032559808512
  %18 = ptrtoint ptr %route_lo.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %route_lo.i.i, align 8
  %conv2.i.1.i = zext i32 %19 to i64
  %or.i.1.i = or i64 %shl.i.1.i, %conv2.i.1.i
  %call1.1.i = call fastcc i32 @dma_port_read(ptr noundef %15, ptr noundef nonnull %type.i, i64 noundef %or.i.1.i, i32 noundef 5, i32 noundef 2, i32 noundef 1, i32 noundef 5000) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.1.i)
  %tobool.not.1.i = icmp eq i32 %call1.1.i, 0
  br i1 %tobool.not.1.i, label %land.lhs.true.1.i, label %for.inc.i.for.inc.1.i_crit_edge

for.inc.i.for.inc.1.i_crit_edge:                  ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.1.i

land.lhs.true.1.i:                                ; preds = %for.inc.i
  %20 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %type.i, align 4
  %and.1.i = and i32 %21, 16777215
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %and.1.i)
  %cmp2.1.i = icmp eq i32 %and.1.i, 2
  br i1 %cmp2.1.i, label %land.lhs.true.1.i.if.end_crit_edge, label %land.lhs.true.1.i.for.inc.1.i_crit_edge

land.lhs.true.1.i.for.inc.1.i_crit_edge:          ; preds = %land.lhs.true.1.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.1.i

land.lhs.true.1.i.if.end_crit_edge:               ; preds = %land.lhs.true.1.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

for.inc.1.i:                                      ; preds = %land.lhs.true.1.i.for.inc.1.i_crit_edge, %for.inc.i.for.inc.1.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %type.i) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %type.i) #7
  %22 = ptrtoint ptr %type.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 -1, ptr %type.i, align 4, !annotation !13
  %23 = ptrtoint ptr %tb.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %tb.i, align 8
  %ctl.2.i = getelementptr inbounds %struct.tb, ptr %24, i32 0, i32 3
  %25 = ptrtoint ptr %ctl.2.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %ctl.2.i, align 8
  %27 = ptrtoint ptr %route_hi.i.i to i32
  call void @__asan_loadN_noabort(i32 %27, i32 8)
  %bf.load.i.2.i = load i64, ptr %route_hi.i.i, align 4
  %28 = lshr i64 %bf.load.i.2.i, 1
  %shl.i.2.i = and i64 %28, 9223372032559808512
  %29 = ptrtoint ptr %route_lo.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %route_lo.i.i, align 8
  %conv2.i.2.i = zext i32 %30 to i64
  %or.i.2.i = or i64 %shl.i.2.i, %conv2.i.2.i
  %call1.2.i = call fastcc i32 @dma_port_read(ptr noundef %26, ptr noundef nonnull %type.i, i64 noundef %or.i.2.i, i32 noundef 7, i32 noundef 2, i32 noundef 1, i32 noundef 5000) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.2.i)
  %tobool.not.2.i = icmp eq i32 %call1.2.i, 0
  br i1 %tobool.not.2.i, label %land.lhs.true.2.i, label %for.inc.1.i.dma_find_port.exit.thread_crit_edge

for.inc.1.i.dma_find_port.exit.thread_crit_edge:  ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %dma_find_port.exit.thread

land.lhs.true.2.i:                                ; preds = %for.inc.1.i
  %31 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %type.i, align 4
  %and.2.i = and i32 %32, 16777215
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %and.2.i)
  %cmp2.2.i = icmp eq i32 %and.2.i, 2
  br i1 %cmp2.2.i, label %land.lhs.true.2.i.if.end_crit_edge, label %land.lhs.true.2.i.dma_find_port.exit.thread_crit_edge

land.lhs.true.2.i.dma_find_port.exit.thread_crit_edge: ; preds = %land.lhs.true.2.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %dma_find_port.exit.thread

land.lhs.true.2.i.if.end_crit_edge:               ; preds = %land.lhs.true.2.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

dma_find_port.exit.thread:                        ; preds = %land.lhs.true.2.i.dma_find_port.exit.thread_crit_edge, %for.inc.1.i.dma_find_port.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %type.i) #7
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true.2.i.if.end_crit_edge, %land.lhs.true.1.i.if.end_crit_edge, %land.lhs.true.i.if.end_crit_edge
  %.lcssa.i = phi i8 [ 3, %land.lhs.true.i.if.end_crit_edge ], [ 5, %land.lhs.true.1.i.if.end_crit_edge ], [ 7, %land.lhs.true.2.i.if.end_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %type.i) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %33 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %33, i32 noundef 3520, i32 noundef 16) #10
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end3:                                          ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %34 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i21 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %34, i32 noundef 3264, i32 noundef 64) #10
  %buf = getelementptr inbounds %struct.tb_dma_port, ptr %call7.i.i, i32 0, i32 3
  %35 = ptrtoint ptr %buf to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %call7.i.i21, ptr %buf, align 4
  %tobool6.not = icmp eq ptr %call7.i.i21, null
  br i1 %tobool6.not, label %if.then7, label %if.end8

if.then7:                                         ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #7
  br label %cleanup

if.end8:                                          ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #9
  %36 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %sw, ptr %call7.i.i, align 8
  %port10 = getelementptr inbounds %struct.tb_dma_port, ptr %call7.i.i, i32 0, i32 1
  %37 = ptrtoint ptr %port10 to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 %.lcssa.i, ptr %port10, align 4
  %base = getelementptr inbounds %struct.tb_dma_port, ptr %call7.i.i, i32 0, i32 2
  %38 = ptrtoint ptr %base to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 62, ptr %base, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end8, %if.then7, %if.end.cleanup_crit_edge, %dma_find_port.exit.thread
  %retval.0 = phi ptr [ %call7.i.i, %if.end8 ], [ null, %if.then7 ], [ null, %if.end.cleanup_crit_edge ], [ null, %dma_find_port.exit.thread ]
  ret ptr %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dma_port_free(ptr noundef %dma) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %dma, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %buf = getelementptr inbounds %struct.tb_dma_port, ptr %dma, i32 0, i32 3
  %0 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %buf, align 4
  tail call void @kfree(ptr noundef %1) #7
  tail call void @kfree(ptr noundef nonnull %dma) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dma_port_flash_read(ptr noundef %dma, i32 noundef %address, ptr noundef %buf, i32 noundef %size) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @tb_nvm_read_data(i32 noundef %address, ptr noundef %buf, i32 noundef %size, i32 noundef 3, ptr noundef nonnull @dma_port_flash_read_block, ptr noundef %dma) #7
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tb_nvm_read_data(i32 noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dma_port_flash_read_block(ptr nocapture noundef readonly %data, i32 noundef %dwaddress, ptr nocapture noundef writeonly %buf, i32 noundef %dwords) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %dwords)
  %cmp = icmp ult i32 %dwords, 16
  %shl = shl i32 %dwords, 24
  %and = and i32 %shl, 251658240
  %or = or i32 %and, 536870912
  %in.0 = select i1 %cmp, i32 %or, i32 536870912
  %shl2 = shl i32 %dwaddress, 2
  %and3 = and i32 %shl2, 16777212
  %or4 = or i32 %and3, %in.0
  %or5 = or i32 %or4, 1
  %call = tail call fastcc i32 @dma_port_request(ptr noundef %data, i32 noundef %or5, i32 noundef 5000)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end7, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end7:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %tb = getelementptr inbounds %struct.tb_switch, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %tb to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %tb, align 8
  %ctl = getelementptr inbounds %struct.tb, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %ctl to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ctl, align 8
  %route_hi.i = getelementptr inbounds %struct.tb_switch, ptr %1, i32 0, i32 1, i32 4
  %6 = ptrtoint ptr %route_hi.i to i32
  call void @__asan_loadN_noabort(i32 %6, i32 8)
  %bf.load.i = load i64, ptr %route_hi.i, align 4
  %7 = lshr i64 %bf.load.i, 1
  %shl.i = and i64 %7, 9223372032559808512
  %route_lo.i = getelementptr inbounds %struct.tb_switch, ptr %1, i32 0, i32 1, i32 3
  %8 = ptrtoint ptr %route_lo.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %route_lo.i, align 8
  %conv2.i = zext i32 %9 to i64
  %or.i = or i64 %shl.i, %conv2.i
  %port = getelementptr inbounds %struct.tb_dma_port, ptr %data, i32 0, i32 1
  %10 = ptrtoint ptr %port to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %port, align 4
  %conv = zext i8 %11 to i32
  %base = getelementptr inbounds %struct.tb_dma_port, ptr %data, i32 0, i32 2
  %12 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %base, align 4
  %add = add i32 %13, 1
  %call9 = tail call fastcc i32 @dma_port_read(ptr noundef %5, ptr noundef %buf, i64 noundef %or.i, i32 noundef %conv, i32 noundef %add, i32 noundef %dwords, i32 noundef 5000)
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call9, %if.end7 ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dma_port_flash_write(ptr noundef %dma, i32 noundef %address, ptr noundef %buf, i32 noundef %size) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 4194302, i32 %address)
  %cmp = icmp ugt i32 %address, 4194302
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %size)
  %cmp1 = icmp ugt i32 %size, 128
  %or.cond = and i1 %cmp, %cmp1
  br i1 %or.cond, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call = tail call i32 @tb_nvm_write_data(i32 noundef %address, ptr noundef %buf, i32 noundef %size, i32 noundef 3, ptr noundef nonnull @dma_port_flash_write_block, ptr noundef %dma) #7
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi i32 [ %call, %if.end ], [ -7, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tb_nvm_write_data(i32 noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dma_port_flash_write_block(ptr nocapture noundef readonly %data, i32 noundef %dwaddress, ptr nocapture noundef readonly %buf, i32 noundef %dwords) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %tb = getelementptr inbounds %struct.tb_switch, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %tb to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %tb, align 8
  %ctl = getelementptr inbounds %struct.tb, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %ctl to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ctl, align 8
  %route_hi.i = getelementptr inbounds %struct.tb_switch, ptr %1, i32 0, i32 1, i32 4
  %6 = ptrtoint ptr %route_hi.i to i32
  call void @__asan_loadN_noabort(i32 %6, i32 8)
  %bf.load.i = load i64, ptr %route_hi.i, align 4
  %7 = lshr i64 %bf.load.i, 1
  %shl.i = and i64 %7, 9223372032559808512
  %route_lo.i = getelementptr inbounds %struct.tb_switch, ptr %1, i32 0, i32 1, i32 3
  %8 = ptrtoint ptr %route_lo.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %route_lo.i, align 8
  %conv2.i = zext i32 %9 to i64
  %or.i = or i64 %shl.i, %conv2.i
  %port = getelementptr inbounds %struct.tb_dma_port, ptr %data, i32 0, i32 1
  %10 = ptrtoint ptr %port to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %port, align 4
  %conv = zext i8 %11 to i32
  %base = getelementptr inbounds %struct.tb_dma_port, ptr %data, i32 0, i32 2
  %12 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %base, align 4
  %add = add i32 %13, 1
  %call2 = tail call fastcc i32 @dma_port_write(ptr noundef %5, ptr noundef %buf, i64 noundef %or.i, i32 noundef %conv, i32 noundef %add, i32 noundef %dwords)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 4194302, i32 %dwaddress)
  %cmp = icmp ugt i32 %dwaddress, 4194302
  %sub = shl i32 %dwords, 24
  %shl = add i32 %sub, 251658240
  %and = and i32 %shl, 251658240
  %shl7 = shl i32 %dwaddress, 2
  %and8 = and i32 %shl7, 16777212
  %or6 = select i1 %cmp, i32 3, i32 1
  %or9 = or i32 %or6, %and8
  %or10 = or i32 %or9, %and
  %call11 = tail call fastcc i32 @dma_port_request(ptr noundef %data, i32 noundef %or10, i32 noundef 5000)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call11, %if.end ], [ %call2, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dma_port_flash_update_auth(ptr nocapture noundef readonly %dma) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @dma_port_request(ptr noundef %dma, i32 noundef 268435457, i32 noundef 150)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @dma_port_request(ptr nocapture noundef readonly %dma, i32 noundef %in, i32 noundef %timeout) unnamed_addr #0 align 64 {
entry:
  %in.i = alloca i32, align 4
  %in.addr = alloca i32, align 4
  %out = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %in.addr to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %in, ptr %in.addr, align 4
  %1 = ptrtoint ptr %dma to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %dma, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %out) #7
  %3 = ptrtoint ptr %out to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %out, align 4, !annotation !13
  %tb = getelementptr inbounds %struct.tb_switch, ptr %2, i32 0, i32 5
  %4 = ptrtoint ptr %tb to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %tb, align 8
  %ctl = getelementptr inbounds %struct.tb, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %ctl to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ctl, align 8
  %route_hi.i = getelementptr inbounds %struct.tb_switch, ptr %2, i32 0, i32 1, i32 4
  %8 = ptrtoint ptr %route_hi.i to i32
  call void @__asan_loadN_noabort(i32 %8, i32 8)
  %bf.load.i = load i64, ptr %route_hi.i, align 4
  %9 = lshr i64 %bf.load.i, 1
  %shl.i = and i64 %9, 9223372032559808512
  %route_lo.i = getelementptr inbounds %struct.tb_switch, ptr %2, i32 0, i32 1, i32 3
  %10 = ptrtoint ptr %route_lo.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %route_lo.i, align 8
  %conv2.i = zext i32 %11 to i64
  %or.i = or i64 %shl.i, %conv2.i
  %port = getelementptr inbounds %struct.tb_dma_port, ptr %dma, i32 0, i32 1
  %12 = ptrtoint ptr %port to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %port, align 4
  %conv = zext i8 %13 to i32
  %base = getelementptr inbounds %struct.tb_dma_port, ptr %dma, i32 0, i32 2
  %14 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %base, align 4
  %add = add i32 %15, 17
  %call2 = call fastcc i32 @dma_port_write(ptr noundef %7, ptr noundef nonnull %in.addr, i64 noundef %or.i, i32 noundef %conv, i32 noundef %add, i32 noundef 1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %16 = load volatile i32, ptr @jiffies, align 128
  %call2.i.i = tail call i32 @__msecs_to_jiffies(i32 noundef %timeout) #7
  %17 = ptrtoint ptr %dma to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dma, align 4
  %tb.i = getelementptr inbounds %struct.tb_switch, ptr %18, i32 0, i32 5
  %route_hi.i.i = getelementptr inbounds %struct.tb_switch, ptr %18, i32 0, i32 1, i32 4
  %route_lo.i.i = getelementptr inbounds %struct.tb_switch, ptr %18, i32 0, i32 1, i32 3
  %19 = add i32 %call2.i.i, %16
  br label %do.body.i

do.body.i:                                        ; preds = %do.cond.i.do.body.i_crit_edge, %if.end
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %in.i) #7
  %20 = ptrtoint ptr %in.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 -1, ptr %in.i, align 4, !annotation !13
  %21 = ptrtoint ptr %tb.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %tb.i, align 8
  %ctl.i = getelementptr inbounds %struct.tb, ptr %22, i32 0, i32 3
  %23 = ptrtoint ptr %ctl.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %ctl.i, align 8
  %25 = ptrtoint ptr %route_hi.i.i to i32
  call void @__asan_loadN_noabort(i32 %25, i32 8)
  %bf.load.i.i = load i64, ptr %route_hi.i.i, align 4
  %26 = lshr i64 %bf.load.i.i, 1
  %shl.i.i = and i64 %26, 9223372032559808512
  %27 = ptrtoint ptr %route_lo.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %route_lo.i.i, align 8
  %conv2.i.i = zext i32 %28 to i64
  %or.i.i = or i64 %shl.i.i, %conv2.i.i
  %29 = ptrtoint ptr %port to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %port, align 4
  %conv.i = zext i8 %30 to i32
  %31 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %base, align 4
  %add3.i = add i32 %32, 17
  %call4.i = call fastcc i32 @dma_port_read(ptr noundef %24, ptr noundef nonnull %in.i, i64 noundef %or.i.i, i32 noundef %conv.i, i32 noundef %add3.i, i32 noundef 1, i32 noundef 50) #7
  %33 = zext i32 %call4.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %33, ptr @__sancov_gen_cov_switch_values)
  switch i32 %call4.i, label %dma_port_wait_for_completion.exit [
    i32 0, label %if.else.i
    i32 -110, label %do.body.i.do.cond.i_crit_edge
  ]

do.body.i.do.cond.i_crit_edge:                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.cond.i

if.else.i:                                        ; preds = %do.body.i
  %34 = ptrtoint ptr %in.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %in.i, align 4
  %and.i = and i32 %35, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool7.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool7.not.i, label %dma_port_wait_for_completion.exit.thread43, label %if.else.i.do.cond.i_crit_edge

if.else.i.do.cond.i_crit_edge:                    ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.cond.i

dma_port_wait_for_completion.exit.thread43:       ; preds = %if.else.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %in.i) #7
  %36 = ptrtoint ptr %tb to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %tb, align 8
  %ctl8 = getelementptr inbounds %struct.tb, ptr %37, i32 0, i32 3
  %38 = ptrtoint ptr %ctl8 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %ctl8, align 8
  %40 = ptrtoint ptr %route_hi.i to i32
  call void @__asan_loadN_noabort(i32 %40, i32 8)
  %bf.load.i35 = load i64, ptr %route_hi.i, align 4
  %41 = lshr i64 %bf.load.i35, 1
  %shl.i36 = and i64 %41, 9223372032559808512
  %42 = ptrtoint ptr %route_lo.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %route_lo.i, align 8
  %conv2.i38 = zext i32 %43 to i64
  %or.i39 = or i64 %shl.i36, %conv2.i38
  %44 = ptrtoint ptr %port to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %port, align 4
  %conv11 = zext i8 %45 to i32
  %46 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %base, align 4
  %add13 = add i32 %47, 18
  %call14 = call fastcc i32 @dma_port_read(ptr noundef %39, ptr noundef nonnull %out, i64 noundef %or.i39, i32 noundef %conv11, i32 noundef %add13, i32 noundef 1, i32 noundef 5000)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %if.end17, label %dma_port_wait_for_completion.exit.thread43.cleanup_crit_edge

dma_port_wait_for_completion.exit.thread43.cleanup_crit_edge: ; preds = %dma_port_wait_for_completion.exit.thread43
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.cond.i:                                        ; preds = %if.else.i.do.cond.i_crit_edge, %do.body.i.do.cond.i_crit_edge
  tail call void @usleep_range_state(i32 noundef 50, i32 noundef 100, i32 noundef 2) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %in.i) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %48 = load volatile i32, ptr @jiffies, align 128
  %sub.i = sub i32 %48, %19
  %cmp12.i = icmp slt i32 %sub.i, 0
  br i1 %cmp12.i, label %do.cond.i.do.body.i_crit_edge, label %do.cond.i.cleanup_crit_edge

do.cond.i.cleanup_crit_edge:                      ; preds = %do.cond.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.cond.i.do.body.i_crit_edge:                    ; preds = %do.cond.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body.i

dma_port_wait_for_completion.exit:                ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %in.i) #7
  br label %cleanup

if.end17:                                         ; preds = %dma_port_wait_for_completion.exit.thread43
  %49 = ptrtoint ptr %out to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %out, align 4
  %and.i40 = and i32 %50, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %and.i40)
  %51 = icmp ult i32 %and.i40, 3
  br i1 %51, label %switch.lookup, label %if.end17.cleanup_crit_edge

if.end17.cleanup_crit_edge:                       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

switch.lookup:                                    ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #9
  %switch.gep = getelementptr inbounds [3 x i32], ptr @switch.table.dma_port_request, i32 0, i32 %and.i40
  %52 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %52)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %cleanup

cleanup:                                          ; preds = %switch.lookup, %if.end17.cleanup_crit_edge, %dma_port_wait_for_completion.exit, %do.cond.i.cleanup_crit_edge, %dma_port_wait_for_completion.exit.thread43.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2, %entry.cleanup_crit_edge ], [ %call4.i, %dma_port_wait_for_completion.exit ], [ %call14, %dma_port_wait_for_completion.exit.thread43.cleanup_crit_edge ], [ %switch.load, %switch.lookup ], [ -5, %if.end17.cleanup_crit_edge ], [ -110, %do.cond.i.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %out) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dma_port_flash_update_auth_status(ptr nocapture noundef readonly %dma, ptr noundef writeonly %status) local_unnamed_addr #0 align 64 {
entry:
  %out = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %dma to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dma, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %out) #7
  %2 = ptrtoint ptr %out to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %out, align 4, !annotation !13
  %tb = getelementptr inbounds %struct.tb_switch, ptr %1, i32 0, i32 5
  %3 = ptrtoint ptr %tb to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %tb, align 8
  %ctl = getelementptr inbounds %struct.tb, ptr %4, i32 0, i32 3
  %5 = ptrtoint ptr %ctl to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ctl, align 8
  %route_hi.i = getelementptr inbounds %struct.tb_switch, ptr %1, i32 0, i32 1, i32 4
  %7 = ptrtoint ptr %route_hi.i to i32
  call void @__asan_loadN_noabort(i32 %7, i32 8)
  %bf.load.i = load i64, ptr %route_hi.i, align 4
  %8 = lshr i64 %bf.load.i, 1
  %shl.i = and i64 %8, 9223372032559808512
  %route_lo.i = getelementptr inbounds %struct.tb_switch, ptr %1, i32 0, i32 1, i32 3
  %9 = ptrtoint ptr %route_lo.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %route_lo.i, align 8
  %conv2.i = zext i32 %10 to i64
  %or.i = or i64 %shl.i, %conv2.i
  %port = getelementptr inbounds %struct.tb_dma_port, ptr %dma, i32 0, i32 1
  %11 = ptrtoint ptr %port to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %port, align 4
  %conv = zext i8 %12 to i32
  %base = getelementptr inbounds %struct.tb_dma_port, ptr %dma, i32 0, i32 2
  %13 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %base, align 4
  %add = add i32 %14, 18
  %call2 = call fastcc i32 @dma_port_read(ptr noundef %6, ptr noundef nonnull %out, i64 noundef %or.i, i32 noundef %conv, i32 noundef %add, i32 noundef 1, i32 noundef 5000)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %15 = ptrtoint ptr %out to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %out, align 4
  %17 = and i32 %16, 240
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %17)
  %cmp = icmp eq i32 %17, 16
  br i1 %cmp, label %if.then4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then4:                                         ; preds = %if.end
  %tobool5.not = icmp eq ptr %status, null
  br i1 %tobool5.not, label %if.then4.cleanup_crit_edge, label %if.then6

if.then4.cleanup_crit_edge:                       ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then6:                                         ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #9
  %and7 = and i32 %16, 15
  %18 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %and7, ptr %status, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then6, %if.then4.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2, %entry.cleanup_crit_edge ], [ 1, %if.then6 ], [ 1, %if.then4.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %out) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @dma_port_read(ptr noundef %ctl, ptr nocapture noundef writeonly %buffer, i64 noundef %route, i32 noundef %port, i32 noundef %offset, i32 noundef %length, i32 noundef %timeout_msec) unnamed_addr #0 align 64 {
entry:
  %request = alloca %struct.cfg_read_pkg, align 4
  %reply = alloca %struct.cfg_write_pkg, align 1
  %tmp = alloca %struct.tb_cfg_result, align 8
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %request) #7
  %0 = getelementptr inbounds %struct.tb_cfg_header, ptr %request, i32 0, i32 1
  %1 = getelementptr inbounds %struct.cfg_read_pkg, ptr %request, i32 0, i32 1
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14)
  %sh.diff.i = lshr i64 %route, 22
  %tr.sh.diff.i = trunc i64 %sh.diff.i to i32
  %bf.shl.i = and i32 %tr.sh.diff.i, -1024
  %2 = ptrtoint ptr %request to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %bf.shl.i, ptr %request, align 4, !alias.scope !14
  %conv4.i = trunc i64 %route to i32
  %3 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %conv4.i, ptr %0, align 4, !alias.scope !14
  %bf.lshr.i.i = lshr i32 %tr.sh.diff.i, 10
  %conv.i.i = zext i32 %bf.lshr.i.i to i64
  %shl.i.i = shl nuw nsw i64 %conv.i.i, 32
  %conv1.i.i = and i64 %route, 4294967295
  %or.i.i = or i64 %shl.i.i, %conv1.i.i
  call void @__sanitizer_cov_trace_cmp8(i64 %or.i.i, i64 %route)
  %cmp.not.i = icmp eq i64 %or.i.i, %route
  br i1 %cmp.not.i, label %entry.tb_cfg_make_header.exit_crit_edge, label %do.end.i, !prof !17

entry.tb_cfg_make_header.exit_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %tb_cfg_make_header.exit

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 121, i32 noundef 9, ptr noundef null) #7, !noalias !14
  br label %tb_cfg_make_header.exit

tb_cfg_make_header.exit:                          ; preds = %do.end.i, %entry.tb_cfg_make_header.exit_crit_edge
  %bf.shl = shl i32 %offset, 19
  %bf.value2 = shl i32 %length, 13
  %bf.shl3 = and i32 %bf.value2, 516096
  %bf.set5 = or i32 %bf.shl3, %bf.shl
  %bf.value7 = shl i32 %port, 7
  %bf.shl8 = and i32 %bf.value7, 8064
  %bf.set10 = or i32 %bf.set5, %bf.shl8
  %bf.set16 = or i32 %bf.set10, 40
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %bf.set16, ptr %1, align 4
  call void @llvm.lifetime.start.p0(i64 268, ptr nonnull %reply) #7
  %5 = call ptr @memset(ptr %reply, i32 255, i32 268)
  %call = tail call ptr @tb_cfg_request_alloc() #7
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %tb_cfg_make_header.exit.cleanup_crit_edge, label %if.end

tb_cfg_make_header.exit.cleanup_crit_edge:        ; preds = %tb_cfg_make_header.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %tb_cfg_make_header.exit
  %match = getelementptr inbounds %struct.tb_cfg_request, ptr %call, i32 0, i32 9
  %6 = ptrtoint ptr %match to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @dma_port_match, ptr %match, align 4
  %copy = getelementptr inbounds %struct.tb_cfg_request, ptr %call, i32 0, i32 10
  %7 = ptrtoint ptr %copy to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @dma_port_copy, ptr %copy, align 8
  %request20 = getelementptr inbounds %struct.tb_cfg_request, ptr %call, i32 0, i32 2
  %8 = ptrtoint ptr %request20 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %request, ptr %request20, align 8
  %request_size = getelementptr inbounds %struct.tb_cfg_request, ptr %call, i32 0, i32 3
  %9 = ptrtoint ptr %request_size to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 12, ptr %request_size, align 4
  %request_type = getelementptr inbounds %struct.tb_cfg_request, ptr %call, i32 0, i32 4
  %10 = ptrtoint ptr %request_type to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 1, ptr %request_type, align 8
  %response = getelementptr inbounds %struct.tb_cfg_request, ptr %call, i32 0, i32 5
  %11 = ptrtoint ptr %response to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %reply, ptr %response, align 4
  %mul = shl i32 %length, 2
  %add = add i32 %mul, 12
  %response_size = getelementptr inbounds %struct.tb_cfg_request, ptr %call, i32 0, i32 6
  %12 = ptrtoint ptr %response_size to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %add, ptr %response_size, align 8
  %response_type = getelementptr inbounds %struct.tb_cfg_request, ptr %call, i32 0, i32 7
  %13 = ptrtoint ptr %response_type to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 1, ptr %response_type, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %tmp) #7
  call void @tb_cfg_request_sync(ptr nonnull sret(%struct.tb_cfg_result) align 8 %tmp, ptr noundef %ctl, ptr noundef nonnull %call, i32 noundef %timeout_msec) #7
  %res.sroa.4.0.tmp.sroa_idx = getelementptr inbounds i8, ptr %tmp, i32 12
  %14 = ptrtoint ptr %res.sroa.4.0.tmp.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %14)
  %res.sroa.4.0.copyload29 = load i32, ptr %res.sroa.4.0.tmp.sroa_idx, align 4
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %tmp) #7
  call void @tb_cfg_request_put(ptr noundef nonnull %call) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %res.sroa.4.0.copyload29)
  %tobool21.not = icmp eq i32 %res.sroa.4.0.copyload29, 0
  br i1 %tobool21.not, label %if.end24, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end24:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %data = getelementptr inbounds %struct.cfg_write_pkg, ptr %reply, i32 0, i32 2
  %15 = call ptr @memcpy(ptr %buffer, ptr %data, i32 %mul)
  br label %cleanup

cleanup:                                          ; preds = %if.end24, %if.end.cleanup_crit_edge, %tb_cfg_make_header.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end24 ], [ -12, %tb_cfg_make_header.exit.cleanup_crit_edge ], [ %res.sroa.4.0.copyload29, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 268, ptr nonnull %reply) #7
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %request) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dma_port_power_cycle(ptr nocapture noundef readonly %dma) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @dma_port_request(ptr noundef %dma, i32 noundef 1073741825, i32 noundef 150)
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @dma_port_write(ptr noundef %ctl, ptr nocapture noundef readonly %buffer, i64 noundef %route, i32 noundef %port, i32 noundef %offset, i32 noundef %length) unnamed_addr #0 align 64 {
entry:
  %request = alloca %struct.cfg_write_pkg, align 4
  %reply = alloca %struct.cfg_read_pkg, align 4
  %tmp = alloca %struct.tb_cfg_result, align 8
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 268, ptr nonnull %request) #7
  %0 = getelementptr inbounds i8, ptr %request, i32 8
  %1 = call ptr @memset(ptr %0, i32 0, i32 260)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18)
  %2 = getelementptr inbounds %struct.tb_cfg_header, ptr %request, i32 0, i32 1
  %sh.diff.i = lshr i64 %route, 22
  %tr.sh.diff.i = trunc i64 %sh.diff.i to i32
  %bf.shl.i = and i32 %tr.sh.diff.i, -1024
  %3 = ptrtoint ptr %request to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %bf.shl.i, ptr %request, align 4, !alias.scope !18
  %conv4.i = trunc i64 %route to i32
  %4 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %conv4.i, ptr %2, align 4, !alias.scope !18
  %bf.lshr.i.i = lshr i32 %tr.sh.diff.i, 10
  %conv.i.i = zext i32 %bf.lshr.i.i to i64
  %shl.i.i = shl nuw nsw i64 %conv.i.i, 32
  %conv1.i.i = and i64 %route, 4294967295
  %or.i.i = or i64 %shl.i.i, %conv1.i.i
  call void @__sanitizer_cov_trace_cmp8(i64 %or.i.i, i64 %route)
  %cmp.not.i = icmp eq i64 %or.i.i, %route
  br i1 %cmp.not.i, label %entry.tb_cfg_make_header.exit_crit_edge, label %do.end.i, !prof !17

entry.tb_cfg_make_header.exit_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %tb_cfg_make_header.exit

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 121, i32 noundef 9, ptr noundef null) #7, !noalias !18
  br label %tb_cfg_make_header.exit

tb_cfg_make_header.exit:                          ; preds = %do.end.i, %entry.tb_cfg_make_header.exit_crit_edge
  %addr = getelementptr inbounds %struct.cfg_write_pkg, ptr %request, i32 0, i32 1
  %5 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %5)
  %bf.load = load i32, ptr %addr, align 4
  %bf.shl = shl i32 %offset, 19
  %bf.clear = and i32 %bf.load, 7
  %bf.set = or i32 %bf.clear, %bf.shl
  %bf.value2 = shl i32 %length, 13
  %bf.shl3 = and i32 %bf.value2, 516096
  %bf.set5 = or i32 %bf.set, %bf.shl3
  %bf.value7 = shl i32 %port, 7
  %bf.shl8 = and i32 %bf.value7, 8064
  %bf.set10 = or i32 %bf.set5, %bf.shl8
  %bf.set16 = or i32 %bf.set10, 40
  store i32 %bf.set16, ptr %addr, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %reply) #7
  %6 = ptrtoint ptr %reply to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %reply, align 4, !annotation !13
  %7 = getelementptr inbounds %struct.tb_cfg_header, ptr %reply, i32 0, i32 1
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -1, ptr %7, align 4, !annotation !13
  %9 = getelementptr inbounds %struct.cfg_read_pkg, ptr %reply, i32 0, i32 1
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 -1, ptr %9, align 4, !annotation !13
  %data = getelementptr inbounds %struct.cfg_write_pkg, ptr %request, i32 0, i32 2
  %mul = shl i32 %length, 2
  %11 = call ptr @memcpy(ptr %data, ptr %buffer, i32 %mul)
  %call = tail call ptr @tb_cfg_request_alloc() #7
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %tb_cfg_make_header.exit.cleanup_crit_edge, label %if.end

tb_cfg_make_header.exit.cleanup_crit_edge:        ; preds = %tb_cfg_make_header.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %tb_cfg_make_header.exit
  call void @__sanitizer_cov_trace_pc() #9
  %match = getelementptr inbounds %struct.tb_cfg_request, ptr %call, i32 0, i32 9
  %12 = ptrtoint ptr %match to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr @dma_port_match, ptr %match, align 4
  %copy = getelementptr inbounds %struct.tb_cfg_request, ptr %call, i32 0, i32 10
  %13 = ptrtoint ptr %copy to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr @dma_port_copy, ptr %copy, align 8
  %request17 = getelementptr inbounds %struct.tb_cfg_request, ptr %call, i32 0, i32 2
  %14 = ptrtoint ptr %request17 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %request, ptr %request17, align 8
  %add = add i32 %mul, 12
  %request_size = getelementptr inbounds %struct.tb_cfg_request, ptr %call, i32 0, i32 3
  %15 = ptrtoint ptr %request_size to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %add, ptr %request_size, align 4
  %request_type = getelementptr inbounds %struct.tb_cfg_request, ptr %call, i32 0, i32 4
  %16 = ptrtoint ptr %request_type to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 2, ptr %request_type, align 8
  %response = getelementptr inbounds %struct.tb_cfg_request, ptr %call, i32 0, i32 5
  %17 = ptrtoint ptr %response to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %reply, ptr %response, align 4
  %response_size = getelementptr inbounds %struct.tb_cfg_request, ptr %call, i32 0, i32 6
  %18 = ptrtoint ptr %response_size to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 12, ptr %response_size, align 8
  %response_type = getelementptr inbounds %struct.tb_cfg_request, ptr %call, i32 0, i32 7
  %19 = ptrtoint ptr %response_type to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 2, ptr %response_type, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %tmp) #7
  call void @tb_cfg_request_sync(ptr nonnull sret(%struct.tb_cfg_result) align 8 %tmp, ptr noundef %ctl, ptr noundef nonnull %call, i32 noundef 5000) #7
  %res.sroa.4.0.tmp.sroa_idx = getelementptr inbounds i8, ptr %tmp, i32 12
  %20 = ptrtoint ptr %res.sroa.4.0.tmp.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %20)
  %res.sroa.4.0.copyload22 = load i32, ptr %res.sroa.4.0.tmp.sroa_idx, align 4
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %tmp) #7
  call void @tb_cfg_request_put(ptr noundef nonnull %call) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end, %tb_cfg_make_header.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ %res.sroa.4.0.copyload22, %if.end ], [ -12, %tb_cfg_make_header.exit.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %reply) #7
  call void @llvm.lifetime.end.p0(i64 268, ptr nonnull %request) #7
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @tb_cfg_request_alloc() local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @dma_port_match(ptr nocapture noundef readonly %req, ptr nocapture noundef readonly %pkg) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %buffer = getelementptr inbounds %struct.ctl_pkg, ptr %pkg, i32 0, i32 1
  %0 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %buffer, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_loadN_noabort(i32 %2, i32 4)
  %bf.load.i = load i32, ptr %1, align 1
  %bf.lshr.i = lshr i32 %bf.load.i, 10
  %conv.i = zext i32 %bf.lshr.i to i64
  %shl.i = shl nuw nsw i64 %conv.i, 32
  %route_lo.i = getelementptr inbounds %struct.tb_cfg_header, ptr %1, i32 0, i32 1
  %3 = ptrtoint ptr %route_lo.i to i32
  call void @__asan_loadN_noabort(i32 %3, i32 4)
  %4 = load i32, ptr %route_lo.i, align 1
  %conv1.i = zext i32 %4 to i64
  %or.i = or i64 %shl.i, %conv1.i
  %eof = getelementptr inbounds %struct.ctl_pkg, ptr %pkg, i32 0, i32 2, i32 3
  %5 = ptrtoint ptr %eof to i32
  call void @__asan_load4_noabort(i32 %5)
  %bf.load = load i32, ptr %eof, align 4
  %bf.lshr = lshr i32 %bf.load, 4
  %bf.clear = and i32 %bf.lshr, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %bf.clear)
  %cmp = icmp eq i32 %bf.clear, 3
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %response_type = getelementptr inbounds %struct.tb_cfg_request, ptr %req, i32 0, i32 7
  %6 = ptrtoint ptr %response_type to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %response_type, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %bf.clear, i32 %7)
  %cmp6.not = icmp eq i32 %bf.clear, %7
  br i1 %cmp6.not, label %if.end8, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end8:                                          ; preds = %if.end
  %request = getelementptr inbounds %struct.tb_cfg_request, ptr %req, i32 0, i32 2
  %8 = ptrtoint ptr %request to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %request, align 8
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_loadN_noabort(i32 %10, i32 4)
  %bf.load.i24 = load i32, ptr %9, align 1
  %bf.lshr.i25 = lshr i32 %bf.load.i24, 10
  %conv.i26 = zext i32 %bf.lshr.i25 to i64
  %shl.i27 = shl nuw nsw i64 %conv.i26, 32
  %route_lo.i28 = getelementptr inbounds %struct.tb_cfg_header, ptr %9, i32 0, i32 1
  %11 = ptrtoint ptr %route_lo.i28 to i32
  call void @__asan_loadN_noabort(i32 %11, i32 4)
  %12 = load i32, ptr %route_lo.i28, align 1
  %conv1.i29 = zext i32 %12 to i64
  %or.i30 = or i64 %shl.i27, %conv1.i29
  call void @__sanitizer_cov_trace_cmp8(i64 %or.i, i64 %or.i30)
  %cmp10.not = icmp eq i64 %or.i, %or.i30
  br i1 %cmp10.not, label %if.end12, label %if.end8.cleanup_crit_edge

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end12:                                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  %bf.lshr15 = lshr i32 %bf.load, 20
  %response_size = getelementptr inbounds %struct.tb_cfg_request, ptr %req, i32 0, i32 6
  %13 = ptrtoint ptr %response_size to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %response_size, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %bf.lshr15, i32 %14)
  %cmp16.not = icmp eq i32 %bf.lshr15, %14
  br label %cleanup

cleanup:                                          ; preds = %if.end12, %if.end8.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i1 [ true, %entry.cleanup_crit_edge ], [ false, %if.end.cleanup_crit_edge ], [ false, %if.end8.cleanup_crit_edge ], [ %cmp16.not, %if.end12 ]
  ret i1 %retval.0
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @dma_port_copy(ptr nocapture noundef readonly %req, ptr nocapture noundef readonly %pkg) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %response = getelementptr inbounds %struct.tb_cfg_request, ptr %req, i32 0, i32 5
  %0 = ptrtoint ptr %response to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %response, align 4
  %buffer = getelementptr inbounds %struct.ctl_pkg, ptr %pkg, i32 0, i32 1
  %2 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %buffer, align 4
  %response_size = getelementptr inbounds %struct.tb_cfg_request, ptr %req, i32 0, i32 6
  %4 = ptrtoint ptr %response_size to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %response_size, align 8
  %6 = call ptr @memcpy(ptr %1, ptr %3, i32 %5)
  ret i1 true
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @tb_cfg_request_sync(ptr sret(%struct.tb_cfg_result) align 8, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @tb_cfg_request_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__msecs_to_jiffies(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblememonly nocallback nofree nosync nounwind willreturn
declare void @llvm.experimental.noalias.scope.decl(metadata) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 2)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 2)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { inaccessiblememonly nocallback nofree nosync nounwind willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2}
!llvm.module.flags = !{!4, !5, !6, !7, !8, !9, !10, !11}
!llvm.ident = !{!12}

!0 = distinct !{null, !1, !"ports", i1 false, i1 false}
!1 = !{!"../drivers/thunderbolt/dma_port.c", i32 170, i32 19}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/thunderbolt/ctl.h", i32 121, i32 2}
!4 = !{i32 1, !"wchar_size", i32 2}
!5 = !{i32 1, !"min_enum_size", i32 4}
!6 = !{i32 8, !"branch-target-enforcement", i32 0}
!7 = !{i32 8, !"sign-return-address", i32 0}
!8 = !{i32 8, !"sign-return-address-all", i32 0}
!9 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!10 = !{i32 7, !"uwtable", i32 1}
!11 = !{i32 7, !"frame-pointer", i32 2}
!12 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!13 = !{!"auto-init"}
!14 = !{!15}
!15 = distinct !{!15, !16, !"tb_cfg_make_header: %agg.result"}
!16 = distinct !{!16, !"tb_cfg_make_header"}
!17 = !{!"branch_weights", i32 2000, i32 1}
!18 = !{!19}
!19 = distinct !{!19, !20, !"tb_cfg_make_header: %agg.result"}
!20 = distinct !{!20, !"tb_cfg_make_header"}
