; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/msm/disp/msm_disp_snapshot_util.c_pt.bc'
source_filename = "../drivers/gpu/drm/msm/disp/msm_disp_snapshot_util.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.msm_disp_state = type { ptr, ptr, %struct.list_head, ptr, %struct.timespec64 }
%struct.list_head = type { ptr, ptr }
%struct.timespec64 = type { i64, i32 }
%struct.drm_modeset_acquire_ctx = type { %struct.ww_acquire_ctx, ptr, i32, %struct.list_head, i8, i8 }
%struct.ww_acquire_ctx = type { ptr, i32, i32, i16, i16, i32, ptr, ptr, %struct.lockdep_map, i32, i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.drm_device = type { i32, %struct.kref, ptr, %struct.anon.82, ptr, ptr, ptr, ptr, i8, ptr, i32, i8, ptr, ptr, %struct.mutex, %struct.mutex, %struct.atomic_t, %struct.mutex, %struct.list_head, %struct.list_head, %struct.mutex, %struct.list_head, i8, ptr, %struct.spinlock, %struct.spinlock, i32, %struct.list_head, %struct.spinlock, i32, %struct.drm_mode_config, %struct.mutex, %struct.idr, ptr, ptr, i32, ptr, %struct.list_head, ptr, %struct.list_head, %struct.mutex, %struct.idr, %struct.list_head, %struct.drm_open_hash, %struct.list_head, ptr, i32, i32, %struct.spinlock, i32, %struct.atomic_t, %struct.anon.92, ptr, i32, ptr, i8, i32 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.anon.82 = type { %struct.list_head, ptr, %struct.spinlock }
%struct.drm_mode_config = type { %struct.mutex, %struct.drm_modeset_lock, ptr, %struct.mutex, %struct.idr, %struct.idr, %struct.mutex, i32, %struct.list_head, %struct.spinlock, i32, %struct.ida, %struct.list_head, %struct.llist_head, %struct.work_struct, i32, %struct.list_head, i32, %struct.list_head, i32, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, i32, i32, ptr, i32, i8, i8, i8, %struct.delayed_work, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, i8, i8, i8, i8, i8, ptr, i32, i32, ptr, ptr }
%struct.drm_modeset_lock = type { %struct.ww_mutex, %struct.list_head }
%struct.ww_mutex = type { %struct.mutex, ptr, ptr }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.llist_head = type { ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.drm_open_hash = type { ptr, i8 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.atomic_t = type { i32 }
%struct.anon.92 = type { i32, ptr }
%struct.msm_drm_private = type { ptr, ptr, ptr, ptr, ptr, [2 x ptr], [3 x ptr], ptr, i8, i8, ptr, ptr, ptr, ptr, %struct.list_head, %struct.mutex, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, %struct.mutex, ptr, i32, [20 x ptr], i32, [8 x ptr], [8 x %struct.msm_drm_thread], i32, [8 x ptr], i32, [8 x ptr], i32, [8 x ptr], [3 x ptr], %struct.anon.95, %struct.notifier_block, %struct.shrinker, ptr, i32, i8 }
%struct.msm_drm_thread = type { ptr, i32, ptr }
%struct.anon.95 = type { i32, i32, %struct.drm_mm, %struct.spinlock }
%struct.drm_mm = type { ptr, %struct.list_head, %struct.drm_mm_node, %struct.rb_root_cached, %struct.rb_root_cached, %struct.rb_root, i32 }
%struct.drm_mm_node = type { i32, i64, i64, ptr, %struct.list_head, %struct.list_head, %struct.rb_node, %struct.rb_node, %struct.rb_node, i64, i64, i64, i32, i32 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.shrinker = type { ptr, ptr, i32, i32, i32, %struct.list_head, i32, ptr }
%struct.msm_kms_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.va_format = type { ptr, ptr }
%struct.__va_list = type { ptr }
%struct.msm_disp_state_block = type { [128 x i8], %struct.list_head, i32, ptr, ptr }

@.str = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"invalid drm printer\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"---\0A\00", [27 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"kernel: 5.17.0\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"module: msm\0A\00", [19 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"dpu devcoredump\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"time: %lld.%09ld\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"====================%s================\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"===================dpu drm state================\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%pV\00", [28 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"0x%lx : %08x %08x %08x %08x\0A\00", [35 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@___asan_gen_.12 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.38, i32 79, i32 3 }
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.38, i32 83, i32 16 }
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.38, i32 84, i32 16 }
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.38, i32 85, i32 16 }
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.38, i32 86, i32 16 }
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.38, i32 87, i32 16 }
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.38, i32 91, i32 17 }
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.38, i32 95, i32 16 }
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.38, i32 184, i32 49 }
@___asan_gen_.37 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.38 = private constant [53 x i8] c"../drivers/gpu/drm/msm/disp/msm_disp_snapshot_util.c\00", align 1
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.38, i32 66, i32 17 }
@llvm.compiler.used = appending global [10 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9], section "llvm.metadata"
@0 = internal global [10 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @msm_disp_state_print(ptr noundef readonly %state, ptr noundef %p) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %p, null
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call void (ptr, ptr, ...) @drm_printf(ptr noundef nonnull %p, ptr noundef nonnull @.str.1) #9
  tail call void (ptr, ptr, ...) @drm_printf(ptr noundef nonnull %p, ptr noundef nonnull @.str.2) #9
  tail call void (ptr, ptr, ...) @drm_printf(ptr noundef nonnull %p, ptr noundef nonnull @.str.3) #9
  tail call void (ptr, ptr, ...) @drm_printf(ptr noundef nonnull %p, ptr noundef nonnull @.str.4) #9
  %time = getelementptr inbounds %struct.msm_disp_state, ptr %state, i32 0, i32 4
  %0 = ptrtoint ptr %time to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %time, align 8
  %tv_nsec = getelementptr inbounds %struct.msm_disp_state, ptr %state, i32 0, i32 4, i32 1
  %2 = ptrtoint ptr %tv_nsec to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %tv_nsec, align 8
  tail call void (ptr, ptr, ...) @drm_printf(ptr noundef nonnull %p, ptr noundef nonnull @.str.5, i64 noundef %1, i32 noundef %3) #9
  %blocks = getelementptr inbounds %struct.msm_disp_state, ptr %state, i32 0, i32 2
  %4 = ptrtoint ptr %blocks to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %blocks, align 8
  %cmp.not41 = icmp eq ptr %5, %blocks
  br i1 %cmp.not41, label %if.end.for.end_crit_edge, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  br label %for.body

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body:                                         ; preds = %msm_disp_state_print_regs.exit.for.body_crit_edge, %if.end.for.body_crit_edge
  %.pn.in42 = phi ptr [ %.pn, %msm_disp_state_print_regs.exit.for.body_crit_edge ], [ %5, %if.end.for.body_crit_edge ]
  %block.0 = getelementptr i8, ptr %.pn.in42, i32 -128
  %6 = ptrtoint ptr %.pn.in42 to i32
  call void @__asan_load4_noabort(i32 %6)
  %.pn = load ptr, ptr %.pn.in42, align 4
  tail call void (ptr, ptr, ...) @drm_printf(ptr noundef nonnull %p, ptr noundef nonnull @.str.6, ptr noundef %block.0) #9
  %state9 = getelementptr i8, ptr %.pn.in42, i32 12
  %size = getelementptr i8, ptr %.pn.in42, i32 8
  %7 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %size, align 4
  %9 = ptrtoint ptr %state9 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %state9, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %8)
  %cmp21.not.i = icmp ult i32 %8, 16
  br i1 %cmp21.not.i, label %for.body.msm_disp_state_print_regs.exit_crit_edge, label %for.body.lr.ph.i

for.body.msm_disp_state_print_regs.exit_crit_edge: ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %msm_disp_state_print_regs.exit

for.body.lr.ph.i:                                 ; preds = %for.body
  %base_addr = getelementptr i8, ptr %.pn.in42, i32 16
  %11 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %base_addr, align 4
  %div20.i = lshr i32 %8, 4
  %sub.ptr.rhs.cast.i = ptrtoint ptr %12 to i32
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %addr.023.i = phi ptr [ %12, %for.body.lr.ph.i ], [ %add.ptr.i, %for.body.i.for.body.i_crit_edge ]
  %i.022.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  %sub.ptr.lhs.cast.i = ptrtoint ptr %addr.023.i to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %mul.i = shl i32 %i.022.i, 2
  %arrayidx.i = getelementptr i32, ptr %10, i32 %mul.i
  %13 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx.i, align 4
  %add.i = or i32 %mul.i, 1
  %arrayidx2.i = getelementptr i32, ptr %10, i32 %add.i
  %15 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %arrayidx2.i, align 4
  %add4.i = or i32 %mul.i, 2
  %arrayidx5.i = getelementptr i32, ptr %10, i32 %add4.i
  %17 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %arrayidx5.i, align 4
  %add7.i = or i32 %mul.i, 3
  %arrayidx8.i = getelementptr i32, ptr %10, i32 %add7.i
  %19 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %arrayidx8.i, align 4
  tail call void (ptr, ptr, ...) @drm_printf(ptr noundef nonnull %p, ptr noundef nonnull @.str.9, i32 noundef %sub.ptr.sub.i, i32 noundef %14, i32 noundef %16, i32 noundef %18, i32 noundef %20) #9
  %add.ptr.i = getelementptr i8, ptr %addr.023.i, i32 16
  %inc.i = add nuw nsw i32 %i.022.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %div20.i
  br i1 %exitcond.not.i, label %for.body.i.msm_disp_state_print_regs.exit_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

for.body.i.msm_disp_state_print_regs.exit_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %msm_disp_state_print_regs.exit

msm_disp_state_print_regs.exit:                   ; preds = %for.body.i.msm_disp_state_print_regs.exit_crit_edge, %for.body.msm_disp_state_print_regs.exit_crit_edge
  %cmp.not = icmp eq ptr %.pn, %blocks
  br i1 %cmp.not, label %msm_disp_state_print_regs.exit.for.end_crit_edge, label %msm_disp_state_print_regs.exit.for.body_crit_edge

msm_disp_state_print_regs.exit.for.body_crit_edge: ; preds = %msm_disp_state_print_regs.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

msm_disp_state_print_regs.exit.for.end_crit_edge: ; preds = %msm_disp_state_print_regs.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.end:                                          ; preds = %msm_disp_state_print_regs.exit.for.end_crit_edge, %if.end.for.end_crit_edge
  tail call void (ptr, ptr, ...) @drm_printf(ptr noundef nonnull %p, ptr noundef nonnull @.str.7) #9
  %atomic_state = getelementptr inbounds %struct.msm_disp_state, ptr %state, i32 0, i32 3
  %21 = ptrtoint ptr %atomic_state to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %atomic_state, align 8
  %tobool15.not = icmp eq ptr %22, null
  br i1 %tobool15.not, label %for.end.cleanup_crit_edge, label %if.then16

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then16:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @drm_atomic_print_new_state(ptr noundef nonnull %22, ptr noundef nonnull %p) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then16, %for.end.cleanup_crit_edge, %if.then
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_err(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_atomic_print_new_state(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @msm_disp_snapshot_capture_state(ptr noundef %disp_state) local_unnamed_addr #0 align 64 {
entry:
  %ctx.i = alloca %struct.drm_modeset_acquire_ctx, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %drm_dev1 = getelementptr inbounds %struct.msm_disp_state, ptr %disp_state, i32 0, i32 1
  %0 = ptrtoint ptr %drm_dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %drm_dev1, align 4
  %dev_private = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %dev_private to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev_private, align 4
  %kms2 = getelementptr inbounds %struct.msm_drm_private, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %kms2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %kms2, align 4
  %arrayidx = getelementptr %struct.msm_drm_private, ptr %3, i32 0, i32 6, i32 0
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %7, null
  br i1 %tobool.not, label %entry.for.inc_crit_edge, label %if.end

entry.for.inc_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @msm_dp_snapshot(ptr noundef %disp_state, ptr noundef nonnull %7) #9
  br label %for.inc

for.inc:                                          ; preds = %if.end, %entry.for.inc_crit_edge
  %arrayidx.1 = getelementptr %struct.msm_drm_private, ptr %3, i32 0, i32 6, i32 1
  %8 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx.1, align 4
  %tobool.not.1 = icmp eq ptr %9, null
  br i1 %tobool.not.1, label %for.inc.for.inc.1_crit_edge, label %if.end.1

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.1

if.end.1:                                         ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @msm_dp_snapshot(ptr noundef %disp_state, ptr noundef nonnull %9) #9
  br label %for.inc.1

for.inc.1:                                        ; preds = %if.end.1, %for.inc.for.inc.1_crit_edge
  %arrayidx.2 = getelementptr %struct.msm_drm_private, ptr %3, i32 0, i32 6, i32 2
  %10 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx.2, align 4
  %tobool.not.2 = icmp eq ptr %11, null
  br i1 %tobool.not.2, label %for.inc.1.for.inc.2_crit_edge, label %if.end.2

for.inc.1.for.inc.2_crit_edge:                    ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.2

if.end.2:                                         ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @msm_dp_snapshot(ptr noundef %disp_state, ptr noundef nonnull %11) #9
  br label %for.inc.2

for.inc.2:                                        ; preds = %if.end.2, %for.inc.1.for.inc.2_crit_edge
  %arrayidx8 = getelementptr %struct.msm_drm_private, ptr %3, i32 0, i32 5, i32 0
  %12 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx8, align 4
  %tobool9.not = icmp eq ptr %13, null
  br i1 %tobool9.not, label %for.inc.2.for.inc14_crit_edge, label %if.end11

for.inc.2.for.inc14_crit_edge:                    ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc14

if.end11:                                         ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @msm_dsi_snapshot(ptr noundef %disp_state, ptr noundef nonnull %13) #9
  br label %for.inc14

for.inc14:                                        ; preds = %if.end11, %for.inc.2.for.inc14_crit_edge
  %arrayidx8.1 = getelementptr %struct.msm_drm_private, ptr %3, i32 0, i32 5, i32 1
  %14 = ptrtoint ptr %arrayidx8.1 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx8.1, align 4
  %tobool9.not.1 = icmp eq ptr %15, null
  br i1 %tobool9.not.1, label %for.inc14.for.inc14.1_crit_edge, label %if.end11.1

for.inc14.for.inc14.1_crit_edge:                  ; preds = %for.inc14
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc14.1

if.end11.1:                                       ; preds = %for.inc14
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @msm_dsi_snapshot(ptr noundef %disp_state, ptr noundef nonnull %15) #9
  br label %for.inc14.1

for.inc14.1:                                      ; preds = %if.end11.1, %for.inc14.for.inc14.1_crit_edge
  %16 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %5, align 8
  %snapshot = getelementptr inbounds %struct.msm_kms_funcs, ptr %17, i32 0, i32 19
  %18 = ptrtoint ptr %snapshot to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %snapshot, align 4
  %tobool17.not = icmp eq ptr %19, null
  br i1 %tobool17.not, label %for.inc14.1.if.end21_crit_edge, label %if.then18

for.inc14.1.if.end21_crit_edge:                   ; preds = %for.inc14.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end21

if.then18:                                        ; preds = %for.inc14.1
  call void @__sanitizer_cov_trace_pc() #11
  tail call void %19(ptr noundef %disp_state, ptr noundef %5) #9
  br label %if.end21

if.end21:                                         ; preds = %if.then18, %for.inc14.1.if.end21_crit_edge
  call void @llvm.lifetime.start.p0(i64 84, ptr nonnull %ctx.i) #9
  %20 = call ptr @memset(ptr %ctx.i, i32 255, i32 84)
  %time.i = getelementptr inbounds %struct.msm_disp_state, ptr %disp_state, i32 0, i32 4
  tail call void @ktime_get_real_ts64(ptr noundef %time.i) #9
  %21 = ptrtoint ptr %drm_dev1 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %drm_dev1, align 4
  call void @drm_modeset_acquire_init(ptr noundef nonnull %ctx.i, i32 noundef 0) #9
  %call6.i = call i32 @drm_modeset_lock_all_ctx(ptr noundef %22, ptr noundef nonnull %ctx.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i)
  %cmp.not7.i = icmp eq i32 %call6.i, 0
  br i1 %cmp.not7.i, label %if.end21.msm_disp_capture_atomic_state.exit_crit_edge, label %if.end21.while.body.i_crit_edge

if.end21.while.body.i_crit_edge:                  ; preds = %if.end21
  br label %while.body.i

if.end21.msm_disp_capture_atomic_state.exit_crit_edge: ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #11
  br label %msm_disp_capture_atomic_state.exit

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %if.end21.while.body.i_crit_edge
  %call1.i = call i32 @drm_modeset_backoff(ptr noundef nonnull %ctx.i) #9
  %call.i = call i32 @drm_modeset_lock_all_ctx(ptr noundef %22, ptr noundef nonnull %ctx.i) #9
  %cmp.not.i = icmp eq i32 %call.i, 0
  br i1 %cmp.not.i, label %while.body.i.msm_disp_capture_atomic_state.exit_crit_edge, label %while.body.i.while.body.i_crit_edge

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body.i

while.body.i.msm_disp_capture_atomic_state.exit_crit_edge: ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %msm_disp_capture_atomic_state.exit

msm_disp_capture_atomic_state.exit:               ; preds = %while.body.i.msm_disp_capture_atomic_state.exit_crit_edge, %if.end21.msm_disp_capture_atomic_state.exit_crit_edge
  %call2.i = call ptr @drm_atomic_helper_duplicate_state(ptr noundef %22, ptr noundef nonnull %ctx.i) #9
  %atomic_state.i = getelementptr inbounds %struct.msm_disp_state, ptr %disp_state, i32 0, i32 3
  %23 = ptrtoint ptr %atomic_state.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %call2.i, ptr %atomic_state.i, align 8
  call void @drm_modeset_drop_locks(ptr noundef nonnull %ctx.i) #9
  call void @drm_modeset_acquire_fini(ptr noundef nonnull %ctx.i) #9
  call void @llvm.lifetime.end.p0(i64 84, ptr nonnull %ctx.i) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @msm_dp_snapshot(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @msm_dsi_snapshot(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @msm_disp_state_free(ptr noundef %data) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %atomic_state = getelementptr inbounds %struct.msm_disp_state, ptr %data, i32 0, i32 3
  %0 = ptrtoint ptr %atomic_state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %atomic_state, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %1, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !29
  tail call void @llvm.prefetch.p0(ptr nonnull %1, i32 1, i32 3, i32 1) #9
  %2 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %1, ptr nonnull %1, i32 1, ptr nonnull elementtype(i32) %1) #9, !srcloc !30
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %2, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %if.then
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %if.end5.i.i.i.i.i.drm_atomic_state_put.exit_crit_edge, label %if.then10.i.i.i.i.i, !prof !31

if.end5.i.i.i.i.i.drm_atomic_state_put.exit_crit_edge: ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %drm_atomic_state_put.exit

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @refcount_warn_saturate(ptr noundef nonnull %1, i32 noundef 3) #9
  br label %drm_atomic_state_put.exit

if.then.i.i:                                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !32
  tail call void @__drm_atomic_state_free(ptr noundef nonnull %1) #9
  br label %drm_atomic_state_put.exit

drm_atomic_state_put.exit:                        ; preds = %if.then.i.i, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.drm_atomic_state_put.exit_crit_edge
  %3 = ptrtoint ptr %atomic_state to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr null, ptr %atomic_state, align 8
  br label %if.end

if.end:                                           ; preds = %drm_atomic_state_put.exit, %entry.if.end_crit_edge
  %blocks = getelementptr inbounds %struct.msm_disp_state, ptr %data, i32 0, i32 2
  %4 = ptrtoint ptr %blocks to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %blocks, align 8
  %cmp.not27 = icmp eq ptr %5, %blocks
  br i1 %cmp.not27, label %if.end.for.end_crit_edge, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  br label %for.body

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body:                                         ; preds = %list_del.exit.for.body_crit_edge, %if.end.for.body_crit_edge
  %.pn.in28 = phi ptr [ %.pn, %list_del.exit.for.body_crit_edge ], [ %5, %if.end.for.body_crit_edge ]
  %block.0 = getelementptr i8, ptr %.pn.in28, i32 -128
  %6 = ptrtoint ptr %.pn.in28 to i32
  call void @__asan_load4_noabort(i32 %6)
  %.pn = load ptr, ptr %.pn.in28, align 4
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in28) #9
  br i1 %call.i.i, label %if.end.i.i, label %for.body.list_del.exit_crit_edge

for.body.list_del.exit_crit_edge:                 ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_del.exit

if.end.i.i:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in28, i32 0, i32 1
  %7 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %prev.i.i, align 4
  %9 = ptrtoint ptr %.pn.in28 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %.pn.in28, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %8, ptr %prev1.i.i.i, align 4
  %12 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile ptr %10, ptr %8, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %for.body.list_del.exit_crit_edge
  %13 = ptrtoint ptr %.pn.in28 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr inttoptr (i32 256 to ptr), ptr %.pn.in28, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %.pn.in28, i32 0, i32 1
  %14 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %state = getelementptr i8, ptr %.pn.in28, i32 12
  %15 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %state, align 4
  tail call void @kfree(ptr noundef %16) #9
  tail call void @kfree(ptr noundef %block.0) #9
  %cmp.not = icmp eq ptr %.pn, %blocks
  br i1 %cmp.not, label %list_del.exit.for.end_crit_edge, label %list_del.exit.for.body_crit_edge

list_del.exit.for.body_crit_edge:                 ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

list_del.exit.for.end_crit_edge:                  ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.end:                                          ; preds = %list_del.exit.for.end_crit_edge, %if.end.for.end_crit_edge
  tail call void @kfree(ptr noundef %data) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @msm_disp_snapshot_add_block(ptr noundef %disp_state, i32 noundef %len, ptr noundef %base_addr, ptr noundef %fmt, ...) local_unnamed_addr #0 align 64 {
entry:
  %vaf = alloca %struct.va_format, align 4
  %va = alloca %struct.__va_list, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %vaf) #9
  %0 = getelementptr inbounds %struct.va_format, ptr %vaf, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %va) #9
  %1 = ptrtoint ptr %va to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr inttoptr (i32 -1 to ptr), ptr %va, align 4, !annotation !33
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 148) #12
  call void @llvm.va_start(ptr nonnull %va)
  %3 = ptrtoint ptr %vaf to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %fmt, ptr %vaf, align 4
  %4 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %va, ptr %0, align 4
  %call3 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %call7.i.i, i32 noundef 128, ptr noundef nonnull @.str.8, ptr noundef nonnull %vaf)
  call void @llvm.va_end(ptr nonnull %va)
  %node = getelementptr inbounds %struct.msm_disp_state_block, ptr %call7.i.i, i32 0, i32 1
  %5 = ptrtoint ptr %node to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile ptr %node, ptr %node, align 8
  %prev.i = getelementptr inbounds %struct.msm_disp_state_block, ptr %call7.i.i, i32 0, i32 1, i32 1
  %6 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %node, ptr %prev.i, align 4
  %add = add i32 %len, 15
  %and = and i32 %add, -16
  %size = getelementptr inbounds %struct.msm_disp_state_block, ptr %call7.i.i, i32 0, i32 2
  %7 = ptrtoint ptr %size to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %and, ptr %size, align 8
  %base_addr4 = getelementptr inbounds %struct.msm_disp_state_block, ptr %call7.i.i, i32 0, i32 4
  %8 = ptrtoint ptr %base_addr4 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %base_addr, ptr %base_addr4, align 8
  %state = getelementptr inbounds %struct.msm_disp_state_block, ptr %call7.i.i, i32 0, i32 3
  %div76.i = lshr i32 %add, 4
  %add.ptr.i = getelementptr i8, ptr %base_addr, i32 %and
  %9 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %state, align 4
  %tobool.not.i = icmp eq ptr %10, null
  br i1 %tobool.not.i, label %if.end8.i.i.i, label %entry.if.end.i_crit_edge

entry.if.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

if.end8.i.i.i:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %mul.i = shl i32 %and, 4
  %call9.i.i.i = call noalias align 128 ptr @__kmalloc(i32 noundef %mul.i, i32 noundef 3520) #13
  %11 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call9.i.i.i, ptr %state, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %if.end8.i.i.i, %entry.if.end.i_crit_edge
  %12 = phi ptr [ %call9.i.i.i, %if.end8.i.i.i ], [ %10, %entry.if.end.i_crit_edge ]
  %tobool1.not.i = icmp eq ptr %12, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp77.not.i = icmp eq i32 %and, 0
  br i1 %cmp77.not.i, label %if.end.i.msm_disp_state_dump_regs.exit_crit_edge, label %for.body.preheader.i

if.end.i.msm_disp_state_dump_regs.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %msm_disp_state_dump_regs.exit

for.body.preheader.i:                             ; preds = %if.end.i
  %umax.i = call i32 @llvm.umax.i32(i32 %div76.i, i32 1) #9
  br label %for.body.i

for.body.i:                                       ; preds = %if.end48.i.for.body.i_crit_edge, %for.body.preheader.i
  %addr.080.i = phi ptr [ %add.ptr49.i, %if.end48.i.for.body.i_crit_edge ], [ %base_addr, %for.body.preheader.i ]
  %i.078.i = phi i32 [ %inc.i, %if.end48.i.for.body.i_crit_edge ], [ 0, %for.body.preheader.i ]
  %cmp4.i = icmp ult ptr %addr.080.i, %add.ptr.i
  br i1 %cmp4.i, label %cond.true.i, label %for.body.i.cond.end.i_crit_edge

for.body.i.cond.end.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end.i

cond.true.i:                                      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  %13 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %addr.080.i) #9, !srcloc !34
  %14 = call i32 @llvm.bswap.i32(i32 %13) #9
  br label %cond.end.i

cond.end.i:                                       ; preds = %cond.true.i, %for.body.i.cond.end.i_crit_edge
  %cond.i = phi i32 [ %14, %cond.true.i ], [ 0, %for.body.i.cond.end.i_crit_edge ]
  %add.ptr7.i = getelementptr i8, ptr %addr.080.i, i32 4
  %cmp8.i = icmp ult ptr %add.ptr7.i, %add.ptr.i
  br i1 %cmp8.i, label %cond.true9.i, label %cond.end.i.cond.end15.i_crit_edge

cond.end.i.cond.end15.i_crit_edge:                ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end15.i

cond.true9.i:                                     ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %15 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr7.i) #9, !srcloc !34
  %16 = call i32 @llvm.bswap.i32(i32 %15) #9
  br label %cond.end15.i

cond.end15.i:                                     ; preds = %cond.true9.i, %cond.end.i.cond.end15.i_crit_edge
  %cond16.i = phi i32 [ %16, %cond.true9.i ], [ 0, %cond.end.i.cond.end15.i_crit_edge ]
  %add.ptr17.i = getelementptr i8, ptr %addr.080.i, i32 8
  %cmp18.i = icmp ult ptr %add.ptr17.i, %add.ptr.i
  br i1 %cmp18.i, label %cond.true19.i, label %cond.end15.i.cond.end25.i_crit_edge

cond.end15.i.cond.end25.i_crit_edge:              ; preds = %cond.end15.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end25.i

cond.true19.i:                                    ; preds = %cond.end15.i
  call void @__sanitizer_cov_trace_pc() #11
  %17 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr17.i) #9, !srcloc !34
  %18 = call i32 @llvm.bswap.i32(i32 %17) #9
  br label %cond.end25.i

cond.end25.i:                                     ; preds = %cond.true19.i, %cond.end15.i.cond.end25.i_crit_edge
  %cond26.i = phi i32 [ %18, %cond.true19.i ], [ 0, %cond.end15.i.cond.end25.i_crit_edge ]
  %add.ptr27.i = getelementptr i8, ptr %addr.080.i, i32 12
  %cmp28.i = icmp ult ptr %add.ptr27.i, %add.ptr.i
  br i1 %cmp28.i, label %cond.true29.i, label %cond.end25.i.cond.end35.i_crit_edge

cond.end25.i.cond.end35.i_crit_edge:              ; preds = %cond.end25.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end35.i

cond.true29.i:                                    ; preds = %cond.end25.i
  call void @__sanitizer_cov_trace_pc() #11
  %19 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr27.i) #9, !srcloc !34
  %20 = call i32 @llvm.bswap.i32(i32 %19) #9
  br label %cond.end35.i

cond.end35.i:                                     ; preds = %cond.true29.i, %cond.end25.i.cond.end35.i_crit_edge
  %cond36.i = phi i32 [ %20, %cond.true29.i ], [ 0, %cond.end25.i.cond.end35.i_crit_edge ]
  br i1 %tobool1.not.i, label %cond.end35.i.if.end48.i_crit_edge, label %if.then38.i

cond.end35.i.if.end48.i_crit_edge:                ; preds = %cond.end35.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end48.i

if.then38.i:                                      ; preds = %cond.end35.i
  call void @__sanitizer_cov_trace_pc() #11
  %mul39.i = shl i32 %i.078.i, 2
  %arrayidx.i = getelementptr i32, ptr %12, i32 %mul39.i
  %21 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %cond.i, ptr %arrayidx.i, align 4
  %add.i = or i32 %mul39.i, 1
  %arrayidx41.i = getelementptr i32, ptr %12, i32 %add.i
  %22 = ptrtoint ptr %arrayidx41.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %cond16.i, ptr %arrayidx41.i, align 4
  %add43.i = or i32 %mul39.i, 2
  %arrayidx44.i = getelementptr i32, ptr %12, i32 %add43.i
  %23 = ptrtoint ptr %arrayidx44.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %cond26.i, ptr %arrayidx44.i, align 4
  %add46.i = or i32 %mul39.i, 3
  %arrayidx47.i = getelementptr i32, ptr %12, i32 %add46.i
  %24 = ptrtoint ptr %arrayidx47.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %cond36.i, ptr %arrayidx47.i, align 4
  br label %if.end48.i

if.end48.i:                                       ; preds = %if.then38.i, %cond.end35.i.if.end48.i_crit_edge
  %add.ptr49.i = getelementptr i8, ptr %addr.080.i, i32 16
  %inc.i = add nuw nsw i32 %i.078.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %umax.i
  br i1 %exitcond.not.i, label %if.end48.i.msm_disp_state_dump_regs.exit_crit_edge, label %if.end48.i.for.body.i_crit_edge

if.end48.i.for.body.i_crit_edge:                  ; preds = %if.end48.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

if.end48.i.msm_disp_state_dump_regs.exit_crit_edge: ; preds = %if.end48.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %msm_disp_state_dump_regs.exit

msm_disp_state_dump_regs.exit:                    ; preds = %if.end48.i.msm_disp_state_dump_regs.exit_crit_edge, %if.end.i.msm_disp_state_dump_regs.exit_crit_edge
  %blocks = getelementptr inbounds %struct.msm_disp_state, ptr %disp_state, i32 0, i32 2
  %25 = ptrtoint ptr %blocks to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %blocks, align 4
  %call.i.i = call zeroext i1 @__list_add_valid(ptr noundef %node, ptr noundef %blocks, ptr noundef %26) #9
  br i1 %call.i.i, label %if.end.i.i, label %msm_disp_state_dump_regs.exit.list_add.exit_crit_edge

msm_disp_state_dump_regs.exit.list_add.exit_crit_edge: ; preds = %msm_disp_state_dump_regs.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_add.exit

if.end.i.i:                                       ; preds = %msm_disp_state_dump_regs.exit
  call void @__sanitizer_cov_trace_pc() #11
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %26, i32 0, i32 1
  %27 = ptrtoint ptr %prev1.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %node, ptr %prev1.i.i, align 4
  %28 = ptrtoint ptr %node to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %26, ptr %node, align 8
  %29 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %blocks, ptr %prev.i, align 4
  %30 = ptrtoint ptr %blocks to i32
  call void @__asan_store4_noabort(i32 %30)
  store volatile ptr %node, ptr %blocks, align 4
  br label %list_add.exit

list_add.exit:                                    ; preds = %if.end.i.i, %msm_disp_state_dump_regs.exit.list_add.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %va) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %vaf) #9
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start(ptr) #3

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end(ptr) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ktime_get_real_ts64(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_modeset_acquire_init(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_modeset_lock_all_ctx(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_modeset_backoff(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_atomic_helper_duplicate_state(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_modeset_drop_locks(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_modeset_acquire_fini(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_atomic_state_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #8

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #8

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 10)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 10)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind willreturn }
attributes #4 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { nounwind allocsize(2) }
attributes #13 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18}
!llvm.module.flags = !{!20, !21, !22, !23, !24, !25, !26, !27}
!llvm.ident = !{!28}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/msm/disp/msm_disp_snapshot_util.c", i32 79, i32 3}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/msm/disp/msm_disp_snapshot_util.c", i32 83, i32 16}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/gpu/drm/msm/disp/msm_disp_snapshot_util.c", i32 84, i32 16}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/gpu/drm/msm/disp/msm_disp_snapshot_util.c", i32 85, i32 16}
!8 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/gpu/drm/msm/disp/msm_disp_snapshot_util.c", i32 86, i32 16}
!10 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/gpu/drm/msm/disp/msm_disp_snapshot_util.c", i32 87, i32 16}
!12 = !{ptr @.str.6, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/gpu/drm/msm/disp/msm_disp_snapshot_util.c", i32 91, i32 17}
!14 = !{ptr @.str.7, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/gpu/drm/msm/disp/msm_disp_snapshot_util.c", i32 95, i32 16}
!16 = !{ptr @.str.8, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/gpu/drm/msm/disp/msm_disp_snapshot_util.c", i32 184, i32 49}
!18 = !{ptr @.str.9, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/gpu/drm/msm/disp/msm_disp_snapshot_util.c", i32 66, i32 17}
!20 = !{i32 1, !"wchar_size", i32 2}
!21 = !{i32 1, !"min_enum_size", i32 4}
!22 = !{i32 8, !"branch-target-enforcement", i32 0}
!23 = !{i32 8, !"sign-return-address", i32 0}
!24 = !{i32 8, !"sign-return-address-all", i32 0}
!25 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!26 = !{i32 7, !"uwtable", i32 1}
!27 = !{i32 7, !"frame-pointer", i32 2}
!28 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!29 = !{i64 2148494008}
!30 = !{i64 2148408460, i64 2148408492, i64 2148408521, i64 2148408555, i64 2148408586, i64 2148408609}
!31 = !{!"branch_weights", i32 2000, i32 1}
!32 = !{i64 2150142159}
!33 = !{!"auto-init"}
!34 = !{i64 6885297}
