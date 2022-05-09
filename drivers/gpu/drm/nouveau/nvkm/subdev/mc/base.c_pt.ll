; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/nouveau/nvkm/subdev/mc/base.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/nvkm/subdev/mc/base.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.nvkm_subdev_func = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.nvkm_device = type { ptr, ptr, ptr, i32, i64, ptr, ptr, ptr, %struct.list_head, %struct.mutex, i32, ptr, %struct.nvkm_event, i32, ptr, i32, i32, i8, i32, %struct.anon.132, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [3 x ptr], ptr, ptr, [10 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [5 x ptr], [3 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.nvkm_event = type { ptr, i32, i32, %struct.spinlock, %struct.spinlock, %struct.list_head, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.anon.132 = type { %struct.notifier_block }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.list_head = type { ptr, ptr }
%struct.nvkm_mc_func = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.nvkm_mc_map = type { i32, i32, i32, i8 }
%struct.nvkm_top = type { ptr, %struct.nvkm_subdev, %struct.list_head }
%struct.nvkm_subdev = type { ptr, ptr, i32, i32, [16 x i8], i32, %struct.list_head, ptr, i8 }
%struct.nvkm_mc = type { ptr, %struct.nvkm_subdev }

@nvkm_mc_intr._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 116, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"%s: intr %08x\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"nvkm_mc_intr\00", [19 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"drivers/gpu/drm/nouveau/nvkm/subdev/mc/base.c\00", [50 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@nvkm_mc_intr._entry_ptr = internal global ptr @nvkm_mc_intr._entry, section ".printk_index", align 4
@nvkm_mc = internal constant { %struct.nvkm_subdev_func, [36 x i8] } { %struct.nvkm_subdev_func { ptr @nvkm_mc_dtor, ptr null, ptr null, ptr null, ptr @nvkm_mc_init, ptr @nvkm_mc_fini, ptr null }, [36 x i8] zeroinitializer }, align 32
@nvkm_mc_intr_stat.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@___asan_gen_.5 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.20 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.24, i32 116, i32 3 }
@___asan_gen_.23 = private unnamed_addr constant [8 x i8] c"nvkm_mc\00", align 1
@___asan_gen_.24 = private constant [49 x i8] c"../drivers/gpu/drm/nouveau/nvkm/subdev/mc/base.c\00", align 1
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.24, i32 204, i32 1 }
@llvm.compiler.used = appending global [8 x ptr] [ptr @nvkm_mc_intr._entry, ptr @nvkm_mc_intr._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @nvkm_mc], section "llvm.metadata"
@0 = internal global [7 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvkm_mc_intr._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvkm_mc to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nvkm_mc_unk260(ptr nocapture noundef readonly %device, i32 noundef %data) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %mc1 = getelementptr inbounds %struct.nvkm_device, ptr %device, i32 0, i32 29
  %0 = ptrtoint ptr %mc1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mc1, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true, !prof !21

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %unk260 = getelementptr inbounds %struct.nvkm_mc_func, ptr %3, i32 0, i32 7
  %4 = ptrtoint ptr %unk260 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %unk260, align 4
  %tobool4.not = icmp eq ptr %5, null
  br i1 %tobool4.not, label %land.lhs.true.if.end_crit_edge, label %if.then

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  tail call void %5(ptr noundef nonnull %1, i32 noundef %data) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nvkm_mc_intr_mask(ptr noundef %device, i32 noundef %type, i32 noundef %inst, i1 noundef zeroext %en) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %mc1 = getelementptr inbounds %struct.nvkm_device, ptr %device, i32 0, i32 29
  %0 = ptrtoint ptr %mc1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mc1, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end17_crit_edge, label %land.lhs.true, !prof !21

entry.if.end17_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end17

land.lhs.true:                                    ; preds = %entry
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %intr_mask = getelementptr inbounds %struct.nvkm_mc_func, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %intr_mask to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %intr_mask, align 4
  %tobool4.not = icmp eq ptr %5, null
  br i1 %tobool4.not, label %land.lhs.true.if.end17_crit_edge, label %if.then

land.lhs.true.if.end17_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end17

if.then:                                          ; preds = %land.lhs.true
  %call = tail call i32 @nvkm_top_intr_mask(ptr noundef %device, i32 noundef %type, i32 noundef %inst) #5
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool6.not33 = icmp eq i32 %call, 0
  br i1 %tobool6.not33, label %land.rhs.preheader, label %if.then.for.end_crit_edge

if.then.for.end_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

land.rhs.preheader:                               ; preds = %if.then
  %intr = getelementptr inbounds %struct.nvkm_mc_func, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %intr to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %intr, align 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %9, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool7.not40 = icmp eq i32 %11, 0
  br i1 %tobool7.not40, label %land.rhs.preheader.for.end_crit_edge, label %land.rhs.preheader.for.body_crit_edge

land.rhs.preheader.for.body_crit_edge:            ; preds = %land.rhs.preheader
  br label %for.body

land.rhs.preheader.for.end_crit_edge:             ; preds = %land.rhs.preheader
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %land.rhs.preheader.for.body_crit_edge
  %12 = phi i32 [ %18, %for.inc.for.body_crit_edge ], [ %11, %land.rhs.preheader.for.body_crit_edge ]
  %map.03441 = phi ptr [ %incdec.ptr, %for.inc.for.body_crit_edge ], [ %9, %land.rhs.preheader.for.body_crit_edge ]
  %type8 = getelementptr inbounds %struct.nvkm_mc_map, ptr %map.03441, i32 0, i32 1
  %13 = ptrtoint ptr %type8 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %type8, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %14, i32 %type)
  %cmp = icmp eq i32 %14, %type
  br i1 %cmp, label %land.lhs.true9, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

land.lhs.true9:                                   ; preds = %for.body
  %inst10 = getelementptr inbounds %struct.nvkm_mc_map, ptr %map.03441, i32 0, i32 2
  %15 = ptrtoint ptr %inst10 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %inst10, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %16, i32 %inst)
  %cmp11 = icmp eq i32 %16, %inst
  br i1 %cmp11, label %land.lhs.true9.for.end_crit_edge, label %land.lhs.true9.for.inc_crit_edge

land.lhs.true9.for.inc_crit_edge:                 ; preds = %land.lhs.true9
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

land.lhs.true9.for.end_crit_edge:                 ; preds = %land.lhs.true9
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.inc:                                          ; preds = %land.lhs.true9.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %incdec.ptr = getelementptr %struct.nvkm_mc_map, ptr %map.03441, i32 1
  %17 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %incdec.ptr, align 4
  %tobool7.not = icmp eq i32 %18, 0
  br i1 %tobool7.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %land.lhs.true9.for.end_crit_edge, %land.rhs.preheader.for.end_crit_edge, %if.then.for.end_crit_edge
  %mask.0.lcssa = phi i32 [ %call, %if.then.for.end_crit_edge ], [ 0, %land.rhs.preheader.for.end_crit_edge ], [ %12, %land.lhs.true9.for.end_crit_edge ], [ 0, %for.inc.for.end_crit_edge ]
  %intr_mask15 = getelementptr inbounds %struct.nvkm_mc_func, ptr %7, i32 0, i32 4
  %19 = ptrtoint ptr %intr_mask15 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %intr_mask15, align 4
  %spec.select32 = select i1 %en, i32 %mask.0.lcssa, i32 0
  tail call void %20(ptr noundef nonnull %1, i32 noundef %mask.0.lcssa, i32 noundef %spec.select32) #5
  br label %if.end17

if.end17:                                         ; preds = %for.end, %land.lhs.true.if.end17_crit_edge, %entry.if.end17_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_top_intr_mask(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nvkm_mc_intr_unarm(ptr nocapture noundef readonly %device) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %mc1 = getelementptr inbounds %struct.nvkm_device, ptr %device, i32 0, i32 29
  %0 = ptrtoint ptr %mc1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mc1, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then, !prof !21

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %intr_unarm = getelementptr inbounds %struct.nvkm_mc_func, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %intr_unarm to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %intr_unarm, align 4
  tail call void %5(ptr noundef nonnull %1) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nvkm_mc_intr_rearm(ptr nocapture noundef readonly %device) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %mc1 = getelementptr inbounds %struct.nvkm_device, ptr %device, i32 0, i32 29
  %0 = ptrtoint ptr %mc1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mc1, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then, !prof !21

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %intr_rearm = getelementptr inbounds %struct.nvkm_mc_func, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %intr_rearm to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %intr_rearm, align 4
  tail call void %5(ptr noundef nonnull %1) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nvkm_mc_intr(ptr noundef %device, ptr nocapture noundef writeonly %handled) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %mc1 = getelementptr inbounds %struct.nvkm_device, ptr %device, i32 0, i32 29
  %0 = ptrtoint ptr %mc1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mc1, align 8
  %top2 = getelementptr inbounds %struct.nvkm_device, ptr %device, i32 0, i32 23
  %2 = ptrtoint ptr %top2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %top2, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end, !prof !21

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  %intr_stat.i = getelementptr inbounds %struct.nvkm_mc_func, ptr %5, i32 0, i32 5
  %6 = ptrtoint ptr %intr_stat.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %intr_stat.i, align 4
  %call.i = tail call i32 %7(ptr noundef nonnull %1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i)
  %cmp.i = icmp eq i32 %call.i, -1
  br i1 %cmp.i, label %land.rhs.i, label %if.end.nvkm_mc_intr_stat.exit_crit_edge

if.end.nvkm_mc_intr_stat.exit_crit_edge:          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %nvkm_mc_intr_stat.exit

land.rhs.i:                                       ; preds = %if.end
  %.b42.i = load i1, ptr @nvkm_mc_intr_stat.__already_done, align 1
  br i1 %.b42.i, label %land.rhs.i.nvkm_mc_intr_stat.exit_crit_edge, label %if.then.i, !prof !22

land.rhs.i.nvkm_mc_intr_stat.exit_crit_edge:      ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %nvkm_mc_intr_stat.exit

if.then.i:                                        ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #7
  store i1 true, ptr @nvkm_mc_intr_stat.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 72, i32 noundef 9, ptr noundef null) #5
  br label %nvkm_mc_intr_stat.exit

nvkm_mc_intr_stat.exit:                           ; preds = %if.then.i, %land.rhs.i.nvkm_mc_intr_stat.exit_crit_edge, %if.end.nvkm_mc_intr_stat.exit_crit_edge
  %spec.select.i = phi i32 [ %call.i, %if.end.nvkm_mc_intr_stat.exit_crit_edge ], [ 0, %if.then.i ], [ 0, %land.rhs.i.nvkm_mc_intr_stat.exit_crit_edge ]
  %tobool6.not = icmp eq ptr %3, null
  br i1 %tobool6.not, label %nvkm_mc_intr_stat.exit.if.end33_crit_edge, label %if.then7

nvkm_mc_intr_stat.exit.if.end33_crit_edge:        ; preds = %nvkm_mc_intr_stat.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end33

if.then7:                                         ; preds = %nvkm_mc_intr_stat.exit
  %device8 = getelementptr inbounds %struct.nvkm_top, ptr %3, i32 0, i32 2
  %8 = ptrtoint ptr %device8 to i32
  call void @__asan_load4_noabort(i32 %8)
  %.pn105 = load ptr, ptr %device8, align 4
  %cmp.not107 = icmp eq ptr %.pn105, %device8
  br i1 %cmp.not107, label %if.then7.if.end33_crit_edge, label %if.then7.for.body_crit_edge

if.then7.for.body_crit_edge:                      ; preds = %if.then7
  br label %for.body

if.then7.if.end33_crit_edge:                      ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end33

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.then7.for.body_crit_edge
  %.pn109 = phi ptr [ %.pn, %for.inc.for.body_crit_edge ], [ %.pn105, %if.then7.for.body_crit_edge ]
  %stat.0108 = phi i32 [ %stat.1, %for.inc.for.body_crit_edge ], [ %spec.select.i, %if.then7.for.body_crit_edge ]
  %tdev.0110 = getelementptr i8, ptr %.pn109, i32 -32
  %intr12 = getelementptr i8, ptr %.pn109, i32 -4
  %9 = ptrtoint ptr %intr12 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %intr12, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %10)
  %cmp13 = icmp sgt i32 %10, -1
  br i1 %cmp13, label %land.lhs.true, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

land.lhs.true:                                    ; preds = %for.body
  %shl = shl nuw i32 1, %10
  %and = and i32 %shl, %stat.0108
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool15.not = icmp eq i32 %and, 0
  br i1 %tobool15.not, label %land.lhs.true.for.inc_crit_edge, label %if.then16

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

if.then16:                                        ; preds = %land.lhs.true
  %11 = ptrtoint ptr %tdev.0110 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %tdev.0110, align 4
  %inst = getelementptr i8, ptr %.pn109, i32 -28
  %13 = ptrtoint ptr %inst to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %inst, align 4
  %call17 = tail call ptr @nvkm_device_subdev(ptr noundef %device, i32 noundef %12, i32 noundef %14) #5
  %tobool18.not = icmp eq ptr %call17, null
  br i1 %tobool18.not, label %if.then16.for.inc_crit_edge, label %if.then19

if.then16.for.inc_crit_edge:                      ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

if.then19:                                        ; preds = %if.then16
  tail call void @nvkm_subdev_intr(ptr noundef nonnull %call17) #5
  %15 = ptrtoint ptr %intr12 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %intr12, align 4
  %shl21 = shl nuw i32 1, %16
  %neg = xor i32 %shl21, -1
  %and22 = and i32 %stat.0108, %neg
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and22)
  %tobool23.not = icmp eq i32 %and22, 0
  br i1 %tobool23.not, label %if.then19.if.end33_crit_edge, label %if.then19.for.inc_crit_edge

if.then19.for.inc_crit_edge:                      ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

if.then19.if.end33_crit_edge:                     ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end33

for.inc:                                          ; preds = %if.then19.for.inc_crit_edge, %if.then16.for.inc_crit_edge, %land.lhs.true.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %stat.1 = phi i32 [ %and22, %if.then19.for.inc_crit_edge ], [ %stat.0108, %if.then16.for.inc_crit_edge ], [ %stat.0108, %land.lhs.true.for.inc_crit_edge ], [ %stat.0108, %for.body.for.inc_crit_edge ]
  %17 = ptrtoint ptr %.pn109 to i32
  call void @__asan_load4_noabort(i32 %17)
  %.pn = load ptr, ptr %.pn109, align 4
  %cmp.not = icmp eq ptr %.pn, %device8
  br i1 %cmp.not, label %for.inc.if.end33_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.inc.if.end33_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end33

if.end33:                                         ; preds = %for.inc.if.end33_crit_edge, %if.then19.if.end33_crit_edge, %if.then7.if.end33_crit_edge, %nvkm_mc_intr_stat.exit.if.end33_crit_edge
  %stat.2 = phi i32 [ %spec.select.i, %nvkm_mc_intr_stat.exit.if.end33_crit_edge ], [ %spec.select.i, %if.then7.if.end33_crit_edge ], [ 0, %if.then19.if.end33_crit_edge ], [ %stat.1, %for.inc.if.end33_crit_edge ]
  %18 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %1, align 4
  %intr34 = getelementptr inbounds %struct.nvkm_mc_func, ptr %19, i32 0, i32 1
  %20 = ptrtoint ptr %intr34 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %intr34, align 4
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %21, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool37.not112 = icmp eq i32 %23, 0
  br i1 %tobool37.not112, label %if.end33.for.end54_crit_edge, label %if.end33.for.body38_crit_edge

if.end33.for.body38_crit_edge:                    ; preds = %if.end33
  br label %for.body38

if.end33.for.end54_crit_edge:                     ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end54

for.body38:                                       ; preds = %for.inc53.for.body38_crit_edge, %if.end33.for.body38_crit_edge
  %24 = phi i32 [ %32, %for.inc53.for.body38_crit_edge ], [ %23, %if.end33.for.body38_crit_edge ]
  %stat.3115 = phi i32 [ %stat.4, %for.inc53.for.body38_crit_edge ], [ %stat.2, %if.end33.for.body38_crit_edge ]
  %map.0113 = phi ptr [ %incdec.ptr, %for.inc53.for.body38_crit_edge ], [ %21, %if.end33.for.body38_crit_edge ]
  %and40 = and i32 %24, %spec.select.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and40)
  %tobool41.not = icmp eq i32 %and40, 0
  br i1 %tobool41.not, label %for.body38.for.inc53_crit_edge, label %if.then42

for.body38.for.inc53_crit_edge:                   ; preds = %for.body38
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc53

if.then42:                                        ; preds = %for.body38
  %type43 = getelementptr inbounds %struct.nvkm_mc_map, ptr %map.0113, i32 0, i32 1
  %25 = ptrtoint ptr %type43 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %type43, align 4
  %inst44 = getelementptr inbounds %struct.nvkm_mc_map, ptr %map.0113, i32 0, i32 2
  %27 = ptrtoint ptr %inst44 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %inst44, align 4
  %call45 = tail call ptr @nvkm_device_subdev(ptr noundef %device, i32 noundef %26, i32 noundef %28) #5
  %tobool46.not = icmp eq ptr %call45, null
  br i1 %tobool46.not, label %if.then42.if.end48_crit_edge, label %if.then47

if.then42.if.end48_crit_edge:                     ; preds = %if.then42
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end48

if.then47:                                        ; preds = %if.then42
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @nvkm_subdev_intr(ptr noundef nonnull %call45) #5
  br label %if.end48

if.end48:                                         ; preds = %if.then47, %if.then42.if.end48_crit_edge
  %29 = ptrtoint ptr %map.0113 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %map.0113, align 4
  %neg50 = xor i32 %30, -1
  %and51 = and i32 %stat.3115, %neg50
  br label %for.inc53

for.inc53:                                        ; preds = %if.end48, %for.body38.for.inc53_crit_edge
  %stat.4 = phi i32 [ %and51, %if.end48 ], [ %stat.3115, %for.body38.for.inc53_crit_edge ]
  %incdec.ptr = getelementptr %struct.nvkm_mc_map, ptr %map.0113, i32 1
  %31 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %incdec.ptr, align 4
  %tobool37.not = icmp eq i32 %32, 0
  br i1 %tobool37.not, label %for.inc53.for.end54_crit_edge, label %for.inc53.for.body38_crit_edge

for.inc53.for.body38_crit_edge:                   ; preds = %for.inc53
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body38

for.inc53.for.end54_crit_edge:                    ; preds = %for.inc53
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end54

for.end54:                                        ; preds = %for.inc53.for.end54_crit_edge, %if.end33.for.end54_crit_edge
  %stat.3.lcssa = phi i32 [ %stat.2, %if.end33.for.end54_crit_edge ], [ %stat.4, %for.inc53.for.end54_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %stat.3.lcssa)
  %tobool55.not = icmp eq i32 %stat.3.lcssa, 0
  br i1 %tobool55.not, label %for.end54.if.end65_crit_edge, label %do.body

for.end54.if.end65_crit_edge:                     ; preds = %for.end54
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end65

do.body:                                          ; preds = %for.end54
  %debug = getelementptr inbounds %struct.nvkm_mc, ptr %1, i32 0, i32 1, i32 5
  %33 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %cmp58.not = icmp eq i32 %34, 0
  br i1 %cmp58.not, label %do.body.if.end65_crit_edge, label %do.end

do.body.if.end65_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end65

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  %device61 = getelementptr inbounds %struct.nvkm_mc, ptr %1, i32 0, i32 1, i32 1
  %35 = ptrtoint ptr %device61 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %device61, align 4
  %dev = getelementptr inbounds %struct.nvkm_device, ptr %36, i32 0, i32 2
  %37 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %dev, align 8
  %name = getelementptr inbounds %struct.nvkm_mc, ptr %1, i32 0, i32 1, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %38, ptr noundef nonnull @.str, ptr noundef %name, i32 noundef %stat.3.lcssa) #8
  br label %if.end65

if.end65:                                         ; preds = %do.end, %do.body.if.end65_crit_edge, %for.end54.if.end65_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spec.select.i)
  %cmp66 = icmp ne i32 %spec.select.i, 0
  %frombool = zext i1 %cmp66 to i8
  %39 = ptrtoint ptr %handled to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 %frombool, ptr %handled, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.end65, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nvkm_device_subdev(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_subdev_intr(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nvkm_mc_reset(ptr noundef %device, i32 noundef %type, i32 noundef %inst) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %mc1.i = getelementptr inbounds %struct.nvkm_device, ptr %device, i32 0, i32 29
  %0 = ptrtoint ptr %mc1.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mc1.i, align 8
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %if.then.i, !prof !21

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then.i:                                        ; preds = %entry
  %call.i = tail call i32 @nvkm_top_reset(ptr noundef %device, i32 noundef %type, i32 noundef %inst) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool4.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool4.not.i, label %if.then5.i, label %if.then.i.if.then_crit_edge

if.then.i.if.then_crit_edge:                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then

if.then5.i:                                       ; preds = %if.then.i
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %reset.i = getelementptr inbounds %struct.nvkm_mc_func, ptr %3, i32 0, i32 6
  %4 = ptrtoint ptr %reset.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %reset.i, align 4
  %tobool6.not34.i = icmp eq ptr %5, null
  br i1 %tobool6.not34.i, label %if.then5.i.if.end_crit_edge, label %if.then5.i.land.rhs.i_crit_edge

if.then5.i.land.rhs.i_crit_edge:                  ; preds = %if.then5.i
  br label %land.rhs.i

if.then5.i.if.end_crit_edge:                      ; preds = %if.then5.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

land.rhs.i:                                       ; preds = %for.inc.i.land.rhs.i_crit_edge, %if.then5.i.land.rhs.i_crit_edge
  %map.035.i = phi ptr [ %incdec.ptr.i, %for.inc.i.land.rhs.i_crit_edge ], [ %5, %if.then5.i.land.rhs.i_crit_edge ]
  %6 = ptrtoint ptr %map.035.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %map.035.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool7.not.i = icmp eq i32 %7, 0
  br i1 %tobool7.not.i, label %land.rhs.i.if.end_crit_edge, label %for.body.i

land.rhs.i.if.end_crit_edge:                      ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

for.body.i:                                       ; preds = %land.rhs.i
  %noauto.i = getelementptr inbounds %struct.nvkm_mc_map, ptr %map.035.i, i32 0, i32 3
  %8 = ptrtoint ptr %noauto.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %noauto.i, align 4, !range !23
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool9.not.i = icmp eq i8 %9, 0
  br i1 %tobool9.not.i, label %if.then10.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.i

if.then10.i:                                      ; preds = %for.body.i
  %type11.i = getelementptr inbounds %struct.nvkm_mc_map, ptr %map.035.i, i32 0, i32 1
  %10 = ptrtoint ptr %type11.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %type11.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %type)
  %cmp.i = icmp eq i32 %11, %type
  br i1 %cmp.i, label %land.lhs.true.i, label %if.then10.i.for.inc.i_crit_edge

if.then10.i.for.inc.i_crit_edge:                  ; preds = %if.then10.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.i

land.lhs.true.i:                                  ; preds = %if.then10.i
  %inst13.i = getelementptr inbounds %struct.nvkm_mc_map, ptr %map.035.i, i32 0, i32 2
  %12 = ptrtoint ptr %inst13.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %inst13.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %inst)
  %cmp14.i = icmp eq i32 %13, %inst
  br i1 %cmp14.i, label %land.lhs.true.i.if.then_crit_edge, label %land.lhs.true.i.for.inc.i_crit_edge

land.lhs.true.i.for.inc.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.i

land.lhs.true.i.if.then_crit_edge:                ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then

for.inc.i:                                        ; preds = %land.lhs.true.i.for.inc.i_crit_edge, %if.then10.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %incdec.ptr.i = getelementptr %struct.nvkm_mc_map, ptr %map.035.i, i32 1
  %tobool6.not.i = icmp eq ptr %incdec.ptr.i, null
  br i1 %tobool6.not.i, label %for.inc.i.if.end_crit_edge, label %for.inc.i.land.rhs.i_crit_edge

for.inc.i.land.rhs.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.rhs.i

for.inc.i.if.end_crit_edge:                       ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %land.lhs.true.i.if.then_crit_edge, %if.then.i.if.then_crit_edge
  %pmc_enable.0.off0.i = phi i32 [ %call.i, %if.then.i.if.then_crit_edge ], [ %7, %land.lhs.true.i.if.then_crit_edge ]
  %pri = getelementptr inbounds %struct.nvkm_device, ptr %device, i32 0, i32 11
  %14 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %pri, align 4
  %add.ptr = getelementptr i8, ptr %15, i32 512
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #5, !srcloc !24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !25
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !26
  tail call void @arm_heavy_mb() #5
  %neg = xor i32 %pmc_enable.0.off0.i, -1
  %conv3 = and i32 %16, %neg
  %17 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %pri, align 4
  %add.ptr5 = getelementptr i8, ptr %18, i32 512
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5, i32 %conv3) #5, !srcloc !27
  %19 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %pri, align 4
  %add.ptr12 = getelementptr i8, ptr %20, i32 512
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr12) #5, !srcloc !24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !28
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !29
  tail call void @arm_heavy_mb() #5
  %or2143 = or i32 %21, %pmc_enable.0.off0.i
  %22 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %pri, align 4
  %add.ptr24 = getelementptr i8, ptr %23, i32 512
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr24, i32 %or2143) #5, !srcloc !27
  %24 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %pri, align 4
  %add.ptr28 = getelementptr i8, ptr %25, i32 512
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr28) #5, !srcloc !24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !30
  br label %if.end

if.end:                                           ; preds = %if.then, %for.inc.i.if.end_crit_edge, %land.rhs.i.if.end_crit_edge, %if.then5.i.if.end_crit_edge, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nvkm_mc_disable(ptr noundef %device, i32 noundef %type, i32 noundef %inst) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %mc1.i = getelementptr inbounds %struct.nvkm_device, ptr %device, i32 0, i32 29
  %0 = ptrtoint ptr %mc1.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mc1.i, align 8
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %if.then.i, !prof !21

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then.i:                                        ; preds = %entry
  %call.i = tail call i32 @nvkm_top_reset(ptr noundef %device, i32 noundef %type, i32 noundef %inst) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool4.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool4.not.i, label %if.then5.i, label %if.then.i.if.then_crit_edge

if.then.i.if.then_crit_edge:                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then

if.then5.i:                                       ; preds = %if.then.i
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %reset.i = getelementptr inbounds %struct.nvkm_mc_func, ptr %3, i32 0, i32 6
  %4 = ptrtoint ptr %reset.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %reset.i, align 4
  %tobool6.not34.i = icmp eq ptr %5, null
  br i1 %tobool6.not34.i, label %if.then5.i.if.end_crit_edge, label %if.then5.i.land.rhs.i_crit_edge

if.then5.i.land.rhs.i_crit_edge:                  ; preds = %if.then5.i
  br label %land.rhs.i

if.then5.i.if.end_crit_edge:                      ; preds = %if.then5.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

land.rhs.i:                                       ; preds = %for.inc.i.land.rhs.i_crit_edge, %if.then5.i.land.rhs.i_crit_edge
  %map.035.i = phi ptr [ %incdec.ptr.i, %for.inc.i.land.rhs.i_crit_edge ], [ %5, %if.then5.i.land.rhs.i_crit_edge ]
  %6 = ptrtoint ptr %map.035.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %map.035.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool7.not.i = icmp eq i32 %7, 0
  br i1 %tobool7.not.i, label %land.rhs.i.if.end_crit_edge, label %for.body.i

land.rhs.i.if.end_crit_edge:                      ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

for.body.i:                                       ; preds = %land.rhs.i
  %type11.i = getelementptr inbounds %struct.nvkm_mc_map, ptr %map.035.i, i32 0, i32 1
  %8 = ptrtoint ptr %type11.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %type11.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %type)
  %cmp.i = icmp eq i32 %9, %type
  br i1 %cmp.i, label %land.lhs.true.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.i

land.lhs.true.i:                                  ; preds = %for.body.i
  %inst13.i = getelementptr inbounds %struct.nvkm_mc_map, ptr %map.035.i, i32 0, i32 2
  %10 = ptrtoint ptr %inst13.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %inst13.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %inst)
  %cmp14.i = icmp eq i32 %11, %inst
  br i1 %cmp14.i, label %land.lhs.true.i.if.then_crit_edge, label %land.lhs.true.i.for.inc.i_crit_edge

land.lhs.true.i.for.inc.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.i

land.lhs.true.i.if.then_crit_edge:                ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then

for.inc.i:                                        ; preds = %land.lhs.true.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %incdec.ptr.i = getelementptr %struct.nvkm_mc_map, ptr %map.035.i, i32 1
  %tobool6.not.i = icmp eq ptr %incdec.ptr.i, null
  br i1 %tobool6.not.i, label %for.inc.i.if.end_crit_edge, label %for.inc.i.land.rhs.i_crit_edge

for.inc.i.land.rhs.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.rhs.i

for.inc.i.if.end_crit_edge:                       ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %land.lhs.true.i.if.then_crit_edge, %if.then.i.if.then_crit_edge
  %pmc_enable.0.off0.i = phi i32 [ %call.i, %if.then.i.if.then_crit_edge ], [ %7, %land.lhs.true.i.if.then_crit_edge ]
  %pri = getelementptr inbounds %struct.nvkm_device, ptr %device, i32 0, i32 11
  %12 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %pri, align 4
  %add.ptr = getelementptr i8, ptr %13, i32 512
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #5, !srcloc !24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !31
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !32
  tail call void @arm_heavy_mb() #5
  %neg = xor i32 %pmc_enable.0.off0.i, -1
  %and = and i32 %14, %neg
  %15 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %pri, align 4
  %add.ptr5 = getelementptr i8, ptr %16, i32 512
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5, i32 %and) #5, !srcloc !27
  br label %if.end

if.end:                                           ; preds = %if.then, %for.inc.i.if.end_crit_edge, %land.rhs.i.if.end_crit_edge, %if.then5.i.if.end_crit_edge, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nvkm_mc_enable(ptr noundef %device, i32 noundef %type, i32 noundef %inst) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %mc1.i = getelementptr inbounds %struct.nvkm_device, ptr %device, i32 0, i32 29
  %0 = ptrtoint ptr %mc1.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mc1.i, align 8
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %if.then.i, !prof !21

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then.i:                                        ; preds = %entry
  %call.i = tail call i32 @nvkm_top_reset(ptr noundef %device, i32 noundef %type, i32 noundef %inst) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool4.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool4.not.i, label %if.then5.i, label %if.then.i.if.then_crit_edge

if.then.i.if.then_crit_edge:                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then

if.then5.i:                                       ; preds = %if.then.i
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %reset.i = getelementptr inbounds %struct.nvkm_mc_func, ptr %3, i32 0, i32 6
  %4 = ptrtoint ptr %reset.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %reset.i, align 4
  %tobool6.not34.i = icmp eq ptr %5, null
  br i1 %tobool6.not34.i, label %if.then5.i.if.end_crit_edge, label %if.then5.i.land.rhs.i_crit_edge

if.then5.i.land.rhs.i_crit_edge:                  ; preds = %if.then5.i
  br label %land.rhs.i

if.then5.i.if.end_crit_edge:                      ; preds = %if.then5.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

land.rhs.i:                                       ; preds = %for.inc.i.land.rhs.i_crit_edge, %if.then5.i.land.rhs.i_crit_edge
  %map.035.i = phi ptr [ %incdec.ptr.i, %for.inc.i.land.rhs.i_crit_edge ], [ %5, %if.then5.i.land.rhs.i_crit_edge ]
  %6 = ptrtoint ptr %map.035.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %map.035.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool7.not.i = icmp eq i32 %7, 0
  br i1 %tobool7.not.i, label %land.rhs.i.if.end_crit_edge, label %for.body.i

land.rhs.i.if.end_crit_edge:                      ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

for.body.i:                                       ; preds = %land.rhs.i
  %type11.i = getelementptr inbounds %struct.nvkm_mc_map, ptr %map.035.i, i32 0, i32 1
  %8 = ptrtoint ptr %type11.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %type11.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %type)
  %cmp.i = icmp eq i32 %9, %type
  br i1 %cmp.i, label %land.lhs.true.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.i

land.lhs.true.i:                                  ; preds = %for.body.i
  %inst13.i = getelementptr inbounds %struct.nvkm_mc_map, ptr %map.035.i, i32 0, i32 2
  %10 = ptrtoint ptr %inst13.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %inst13.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %inst)
  %cmp14.i = icmp eq i32 %11, %inst
  br i1 %cmp14.i, label %land.lhs.true.i.if.then_crit_edge, label %land.lhs.true.i.for.inc.i_crit_edge

land.lhs.true.i.for.inc.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.i

land.lhs.true.i.if.then_crit_edge:                ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then

for.inc.i:                                        ; preds = %land.lhs.true.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %incdec.ptr.i = getelementptr %struct.nvkm_mc_map, ptr %map.035.i, i32 1
  %tobool6.not.i = icmp eq ptr %incdec.ptr.i, null
  br i1 %tobool6.not.i, label %for.inc.i.if.end_crit_edge, label %for.inc.i.land.rhs.i_crit_edge

for.inc.i.land.rhs.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.rhs.i

for.inc.i.if.end_crit_edge:                       ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %land.lhs.true.i.if.then_crit_edge, %if.then.i.if.then_crit_edge
  %pmc_enable.0.off0.i = phi i32 [ %call.i, %if.then.i.if.then_crit_edge ], [ %7, %land.lhs.true.i.if.then_crit_edge ]
  %pri = getelementptr inbounds %struct.nvkm_device, ptr %device, i32 0, i32 11
  %12 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %pri, align 4
  %add.ptr = getelementptr i8, ptr %13, i32 512
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #5, !srcloc !24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !33
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !34
  tail call void @arm_heavy_mb() #5
  %or19 = or i32 %14, %pmc_enable.0.off0.i
  %15 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %pri, align 4
  %add.ptr5 = getelementptr i8, ptr %16, i32 512
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5, i32 %or19) #5, !srcloc !27
  %17 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %pri, align 4
  %add.ptr9 = getelementptr i8, ptr %18, i32 512
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr9) #5, !srcloc !24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !35
  br label %if.end

if.end:                                           ; preds = %if.then, %for.inc.i.if.end_crit_edge, %land.rhs.i.if.end_crit_edge, %if.then5.i.if.end_crit_edge, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @nvkm_mc_enabled(ptr noundef %device, i32 noundef %type, i32 noundef %inst) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %mc1.i = getelementptr inbounds %struct.nvkm_device, ptr %device, i32 0, i32 29
  %0 = ptrtoint ptr %mc1.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mc1.i, align 8
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %entry.land.end_crit_edge, label %if.then.i, !prof !21

entry.land.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.end

if.then.i:                                        ; preds = %entry
  %call.i = tail call i32 @nvkm_top_reset(ptr noundef %device, i32 noundef %type, i32 noundef %inst) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool4.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool4.not.i, label %if.then5.i, label %if.then.i.land.rhs_crit_edge

if.then.i.land.rhs_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.rhs

if.then5.i:                                       ; preds = %if.then.i
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %reset.i = getelementptr inbounds %struct.nvkm_mc_func, ptr %3, i32 0, i32 6
  %4 = ptrtoint ptr %reset.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %reset.i, align 4
  %tobool6.not34.i = icmp eq ptr %5, null
  br i1 %tobool6.not34.i, label %if.then5.i.land.end_crit_edge, label %if.then5.i.land.rhs.i_crit_edge

if.then5.i.land.rhs.i_crit_edge:                  ; preds = %if.then5.i
  br label %land.rhs.i

if.then5.i.land.end_crit_edge:                    ; preds = %if.then5.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.end

land.rhs.i:                                       ; preds = %for.inc.i.land.rhs.i_crit_edge, %if.then5.i.land.rhs.i_crit_edge
  %map.035.i = phi ptr [ %incdec.ptr.i, %for.inc.i.land.rhs.i_crit_edge ], [ %5, %if.then5.i.land.rhs.i_crit_edge ]
  %6 = ptrtoint ptr %map.035.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %map.035.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool7.not.i = icmp eq i32 %7, 0
  br i1 %tobool7.not.i, label %land.rhs.i.land.end_crit_edge, label %for.body.i

land.rhs.i.land.end_crit_edge:                    ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.end

for.body.i:                                       ; preds = %land.rhs.i
  %type11.i = getelementptr inbounds %struct.nvkm_mc_map, ptr %map.035.i, i32 0, i32 1
  %8 = ptrtoint ptr %type11.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %type11.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %type)
  %cmp.i = icmp eq i32 %9, %type
  br i1 %cmp.i, label %land.lhs.true.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.i

land.lhs.true.i:                                  ; preds = %for.body.i
  %inst13.i = getelementptr inbounds %struct.nvkm_mc_map, ptr %map.035.i, i32 0, i32 2
  %10 = ptrtoint ptr %inst13.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %inst13.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %inst)
  %cmp14.i = icmp eq i32 %11, %inst
  br i1 %cmp14.i, label %land.lhs.true.i.land.rhs_crit_edge, label %land.lhs.true.i.for.inc.i_crit_edge

land.lhs.true.i.for.inc.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.i

land.lhs.true.i.land.rhs_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.rhs

for.inc.i:                                        ; preds = %land.lhs.true.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %incdec.ptr.i = getelementptr %struct.nvkm_mc_map, ptr %map.035.i, i32 1
  %tobool6.not.i = icmp eq ptr %incdec.ptr.i, null
  br i1 %tobool6.not.i, label %for.inc.i.land.end_crit_edge, label %for.inc.i.land.rhs.i_crit_edge

for.inc.i.land.rhs.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.rhs.i

for.inc.i.land.end_crit_edge:                     ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.end

land.rhs:                                         ; preds = %land.lhs.true.i.land.rhs_crit_edge, %if.then.i.land.rhs_crit_edge
  %pmc_enable.0.off0.i = phi i32 [ %call.i, %if.then.i.land.rhs_crit_edge ], [ %7, %land.lhs.true.i.land.rhs_crit_edge ]
  %pri = getelementptr inbounds %struct.nvkm_device, ptr %device, i32 0, i32 11
  %12 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %pri, align 4
  %add.ptr = getelementptr i8, ptr %13, i32 512
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #5, !srcloc !24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !36
  %and9 = and i32 %14, %pmc_enable.0.off0.i
  call void @__sanitizer_cov_trace_cmp4(i32 %and9, i32 %pmc_enable.0.off0.i)
  %cmp4 = icmp eq i32 %and9, %pmc_enable.0.off0.i
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.inc.i.land.end_crit_edge, %land.rhs.i.land.end_crit_edge, %if.then5.i.land.end_crit_edge, %entry.land.end_crit_edge
  %15 = phi i1 [ %cmp4, %land.rhs ], [ false, %entry.land.end_crit_edge ], [ false, %if.then5.i.land.end_crit_edge ], [ false, %land.rhs.i.land.end_crit_edge ], [ false, %for.inc.i.land.end_crit_edge ]
  ret i1 %15
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nvkm_mc_ctor(ptr noundef %func, ptr noundef %device, i32 noundef %type, i32 noundef %inst, ptr noundef %mc) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %subdev = getelementptr inbounds %struct.nvkm_mc, ptr %mc, i32 0, i32 1
  tail call void @nvkm_subdev_ctor(ptr noundef nonnull @nvkm_mc, ptr noundef %device, i32 noundef %type, i32 noundef %inst, ptr noundef %subdev) #5
  %0 = ptrtoint ptr %mc to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %func, ptr %mc, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_subdev_ctor(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nvkm_mc_new_(ptr noundef %func, ptr noundef %device, i32 noundef %type, i32 noundef %inst, ptr nocapture noundef writeonly %pmc) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 56) #9
  %1 = ptrtoint ptr %pmc to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call7.i.i, ptr %pmc, align 4
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %subdev.i = getelementptr inbounds %struct.nvkm_mc, ptr %call7.i.i, i32 0, i32 1
  tail call void @nvkm_subdev_ctor(ptr noundef nonnull @nvkm_mc, ptr noundef %device, i32 noundef %type, i32 noundef %inst, ptr noundef %subdev.i) #5
  %2 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %func, ptr %call7.i.i, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_top_reset(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal ptr @nvkm_mc_dtor(ptr noundef readnone %subdev) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %subdev, i32 -4
  ret ptr %add.ptr
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nvkm_mc_init(ptr noundef %subdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %subdev, i32 -4
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void %3(ptr noundef %add.ptr) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %device = getelementptr inbounds %struct.nvkm_subdev, ptr %subdev, i32 0, i32 1
  %4 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %device, align 4
  %mc1.i = getelementptr inbounds %struct.nvkm_device, ptr %5, i32 0, i32 29
  %6 = ptrtoint ptr %mc1.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %mc1.i, align 8
  %tobool.not.i = icmp eq ptr %7, null
  br i1 %tobool.not.i, label %if.end.nvkm_mc_intr_rearm.exit_crit_edge, label %if.then.i, !prof !21

if.end.nvkm_mc_intr_rearm.exit_crit_edge:         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %nvkm_mc_intr_rearm.exit

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 4
  %intr_rearm.i = getelementptr inbounds %struct.nvkm_mc_func, ptr %9, i32 0, i32 3
  %10 = ptrtoint ptr %intr_rearm.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %intr_rearm.i, align 4
  tail call void %11(ptr noundef nonnull %7) #5
  br label %nvkm_mc_intr_rearm.exit

nvkm_mc_intr_rearm.exit:                          ; preds = %if.then.i, %if.end.nvkm_mc_intr_rearm.exit_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nvkm_mc_fini(ptr nocapture noundef readonly %subdev, i1 noundef zeroext %suspend) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %device = getelementptr inbounds %struct.nvkm_subdev, ptr %subdev, i32 0, i32 1
  %0 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device, align 4
  %mc1.i = getelementptr inbounds %struct.nvkm_device, ptr %1, i32 0, i32 29
  %2 = ptrtoint ptr %mc1.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mc1.i, align 8
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %entry.nvkm_mc_intr_unarm.exit_crit_edge, label %if.then.i, !prof !21

entry.nvkm_mc_intr_unarm.exit_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %nvkm_mc_intr_unarm.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %intr_unarm.i = getelementptr inbounds %struct.nvkm_mc_func, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %intr_unarm.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %intr_unarm.i, align 4
  tail call void %7(ptr noundef nonnull %3) #5
  br label %nvkm_mc_intr_unarm.exit

nvkm_mc_intr_unarm.exit:                          ; preds = %if.then.i, %entry.nvkm_mc_intr_unarm.exit_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

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
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }
attributes #9 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !10}
!llvm.module.flags = !{!12, !13, !14, !15, !16, !17, !18, !19}
!llvm.ident = !{!20}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/mc/base.c", i32 116, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @nvkm_mc_intr._entry, !1, !"_entry", i1 false, i1 false}
!7 = !{ptr @nvkm_mc_intr._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!8 = distinct !{null, !9, !"__already_done", i1 false, i1 false}
!9 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/mc/base.c", i32 72, i32 6}
!10 = !{ptr @nvkm_mc, !11, !"nvkm_mc", i1 false, i1 false}
!11 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/mc/base.c", i32 204, i32 1}
!12 = !{i32 1, !"wchar_size", i32 2}
!13 = !{i32 1, !"min_enum_size", i32 4}
!14 = !{i32 8, !"branch-target-enforcement", i32 0}
!15 = !{i32 8, !"sign-return-address", i32 0}
!16 = !{i32 8, !"sign-return-address-all", i32 0}
!17 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!18 = !{i32 7, !"uwtable", i32 1}
!19 = !{i32 7, !"frame-pointer", i32 2}
!20 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!21 = !{!"branch_weights", i32 1, i32 2000}
!22 = !{!"branch_weights", i32 2000, i32 1}
!23 = !{i8 0, i8 2}
!24 = !{i64 5390022}
!25 = !{i64 2156234405}
!26 = !{i64 2156234807}
!27 = !{i64 5389604}
!28 = !{i64 2156235680}
!29 = !{i64 2156236082}
!30 = !{i64 2156236570}
!31 = !{i64 2156237340}
!32 = !{i64 2156237742}
!33 = !{i64 2156238615}
!34 = !{i64 2156239017}
!35 = !{i64 2156239505}
!36 = !{i64 2156239890}
