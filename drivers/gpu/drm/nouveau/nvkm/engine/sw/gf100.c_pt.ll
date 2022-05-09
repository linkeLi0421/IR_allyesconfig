; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/nouveau/nvkm/engine/sw/gf100.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/nvkm/engine/sw/gf100.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.nvkm_sw_chan_sclass = type { ptr, %struct.nvkm_sclass }
%struct.nvkm_sclass = type { i32, i32, i32, ptr, ptr }
%struct.nvkm_sw_chan_func = type { ptr, ptr }
%struct.nvif_notify_head_req_v0 = type { i8, i8, [6 x i8] }
%struct.nvkm_sw = type { ptr, %struct.nvkm_engine, %struct.list_head }
%struct.nvkm_engine = type { ptr, %struct.nvkm_subdev, %struct.spinlock, %struct.anon.84 }
%struct.nvkm_subdev = type { ptr, ptr, i32, i32, [16 x i8], i32, %struct.list_head, ptr, i8 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.anon.84 = type { %struct.refcount_struct, %struct.mutex, i8 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.nvkm_device = type { ptr, ptr, ptr, i32, i64, ptr, ptr, ptr, %struct.list_head, %struct.mutex, i32, ptr, %struct.nvkm_event, i32, ptr, i32, i32, i8, i32, %struct.anon.137, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [3 x ptr], ptr, ptr, [10 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [5 x ptr], [3 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head }
%struct.nvkm_event = type { ptr, i32, i32, %struct.spinlock, %struct.spinlock, %struct.list_head, ptr }
%struct.anon.137 = type { %struct.notifier_block }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.nvkm_sw_chan = type { ptr, %struct.nvkm_object, ptr, ptr, %struct.list_head, %struct.nvkm_event }
%struct.nvkm_object = type { ptr, ptr, ptr, i32, i32, %struct.list_head, %struct.list_head, i8, i64, i64, %struct.rb_node }
%struct.rb_node = type { i32, ptr, ptr }
%struct.nvkm_disp = type { ptr, %struct.nvkm_engine, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.nvkm_event, %struct.nvkm_event, %struct.anon.116 }
%struct.anon.116 = type { %struct.spinlock, ptr }
%struct.nv50_sw_chan = type { %struct.nvkm_sw_chan, %struct.anon.144 }
%struct.anon.144 = type { [4 x %struct.nvkm_notify], i32, i64, i32 }
%struct.nvkm_notify = type { ptr, %struct.list_head, i32, i32, ptr, i32, i32, i32, %struct.work_struct, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.nvkm_fifo_chan = type { ptr, ptr, i32, %struct.nvkm_object, %struct.list_head, i16, ptr, ptr, ptr, ptr, i64, i32, [16 x %struct.nvkm_fifo_engn] }
%struct.nvkm_fifo_engn = type { ptr, i32, i32 }
%struct.nvkm_gpuobj = type { %union.anon.81, ptr, ptr, ptr, i64, i32, %struct.nvkm_mm, ptr }
%union.anon.81 = type { ptr }
%struct.nvkm_mm = type { %struct.list_head, %struct.list_head, i32, i32 }

@gf100_sw = internal constant { { ptr, [2 x %struct.nvkm_sw_chan_sclass] }, [44 x i8] } { { ptr, [2 x %struct.nvkm_sw_chan_sclass] } { ptr @gf100_sw_chan_new, [2 x %struct.nvkm_sw_chan_sclass] [%struct.nvkm_sw_chan_sclass { ptr @nvkm_nvsw_new, %struct.nvkm_sclass { i32 -1, i32 -1, i32 -7, ptr null, ptr null } }, %struct.nvkm_sw_chan_sclass zeroinitializer] }, [44 x i8] zeroinitializer }, align 32
@gf100_sw_chan = internal constant { %struct.nvkm_sw_chan_func, [24 x i8] } { %struct.nvkm_sw_chan_func { ptr @nv50_sw_chan_dtor, ptr @gf100_sw_chan_mthd }, [24 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@__sancov_gen_cov_switch_values = internal global [9 x i64] [i64 7, i64 32, i64 1024, i64 1028, i64 1032, i64 1036, i64 1536, i64 1604, i64 1708]
@___asan_gen_.2 = private unnamed_addr constant [9 x i8] c"gf100_sw\00", align 1
@___asan_gen_.4 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.6, i32 143, i32 1 }
@___asan_gen_.5 = private unnamed_addr constant [14 x i8] c"gf100_sw_chan\00", align 1
@___asan_gen_.6 = private constant [50 x i8] c"../drivers/gpu/drm/nouveau/nvkm/engine/sw/gf100.c\00", align 1
@___asan_gen_.7 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.6, i32 99, i32 1 }
@llvm.compiler.used = appending global [2 x ptr] [ptr @gf100_sw, ptr @gf100_sw_chan], section "llvm.metadata"
@0 = internal global [2 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gf100_sw to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.2 to i32), i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gf100_sw_chan to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @gf100_sw_new(ptr noundef %device, i32 noundef %type, i32 noundef %inst, ptr noundef %psw) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @nvkm_sw_new_(ptr noundef nonnull @gf100_sw, ptr noundef %device, i32 noundef %type, i32 noundef %inst, ptr noundef %psw) #3
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_sw_new_(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gf100_sw_chan_new(ptr noundef %sw, ptr noundef %fifoch, ptr noundef %oclass, ptr nocapture noundef writeonly %pobject) #0 align 64 {
entry:
  %.compoundliteral = alloca %struct.nvif_notify_head_req_v0, align 1
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %device = getelementptr inbounds %struct.nvkm_sw, ptr %sw, i32 0, i32 1, i32 1, i32 1
  %0 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device, align 4
  %disp1 = getelementptr inbounds %struct.nvkm_device, ptr %1, i32 0, i32 50
  %2 = ptrtoint ptr %disp1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %disp1, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10) to i32))
  %4 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %4, i32 noundef 3520, i32 noundef 568) #6
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end:                                           ; preds = %entry
  %object = getelementptr inbounds %struct.nvkm_sw_chan, ptr %call7.i.i, i32 0, i32 1
  %5 = ptrtoint ptr %pobject to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %object, ptr %pobject, align 4
  %call3 = tail call i32 @nvkm_sw_chan_ctor(ptr noundef nonnull @gf100_sw_chan, ptr noundef %sw, ptr noundef %fifoch, ptr noundef %oclass, ptr noundef nonnull %call7.i.i) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %for.cond.preheader, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

for.cond.preheader:                               ; preds = %if.end
  %index_nr = getelementptr inbounds %struct.nvkm_disp, ptr %3, i32 0, i32 7, i32 2
  %vblank = getelementptr inbounds %struct.nvkm_disp, ptr %3, i32 0, i32 7
  %tobool7.not = icmp eq ptr %3, null
  br i1 %tobool7.not, label %for.cond.preheader.cleanup_crit_edge, label %land.rhs.lr.ph

for.cond.preheader.cleanup_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

land.rhs.lr.ph:                                   ; preds = %for.cond.preheader
  %head = getelementptr inbounds %struct.nvif_notify_head_req_v0, ptr %.compoundliteral, i32 0, i32 1
  %pad02 = getelementptr inbounds %struct.nvif_notify_head_req_v0, ptr %.compoundliteral, i32 0, i32 2
  %vblank9 = getelementptr inbounds %struct.nv50_sw_chan, ptr %call7.i.i, i32 0, i32 1
  %6 = ptrtoint ptr %index_nr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %index_nr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp31 = icmp sgt i32 %7, 0
  br i1 %cmp31, label %land.rhs.lr.ph.for.body_crit_edge, label %land.rhs.lr.ph.cleanup_crit_edge

land.rhs.lr.ph.cleanup_crit_edge:                 ; preds = %land.rhs.lr.ph
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

land.rhs.lr.ph.for.body_crit_edge:                ; preds = %land.rhs.lr.ph
  br label %for.body

land.rhs:                                         ; preds = %for.body
  %inc = add nuw nsw i32 %i.02832, 1
  %8 = ptrtoint ptr %index_nr to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %index_nr, align 4
  %cmp = icmp slt i32 %inc, %9
  br i1 %cmp, label %land.rhs.for.body_crit_edge, label %land.rhs.cleanup_crit_edge

land.rhs.cleanup_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

land.rhs.for.body_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.body

for.body:                                         ; preds = %land.rhs.for.body_crit_edge, %land.rhs.lr.ph.for.body_crit_edge
  %i.02832 = phi i32 [ %inc, %land.rhs.for.body_crit_edge ], [ 0, %land.rhs.lr.ph.for.body_crit_edge ]
  %10 = ptrtoint ptr %.compoundliteral to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 0, ptr %.compoundliteral, align 1
  %conv = trunc i32 %i.02832 to i8
  %11 = ptrtoint ptr %head to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %conv, ptr %head, align 1
  %12 = call ptr @memset(ptr %pad02, i32 0, i32 6)
  %arrayidx = getelementptr [4 x %struct.nvkm_notify], ptr %vblank9, i32 0, i32 %i.02832
  %call10 = call i32 @nvkm_notify_init(ptr noundef null, ptr noundef %vblank, ptr noundef nonnull @gf100_sw_chan_vblsem_release, i1 noundef zeroext false, ptr noundef nonnull %.compoundliteral, i32 noundef 8, i32 noundef 8, ptr noundef %arrayidx) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %land.rhs, label %for.body.cleanup_crit_edge

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

cleanup:                                          ; preds = %for.body.cleanup_crit_edge, %land.rhs.cleanup_crit_edge, %land.rhs.lr.ph.cleanup_crit_edge, %for.cond.preheader.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %entry.cleanup_crit_edge ], [ %call3, %if.end.cleanup_crit_edge ], [ 0, %for.cond.preheader.cleanup_crit_edge ], [ 0, %land.rhs.lr.ph.cleanup_crit_edge ], [ %call10, %for.body.cleanup_crit_edge ], [ 0, %land.rhs.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_nvsw_new(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_sw_chan_ctor(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_notify_init(ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gf100_sw_chan_vblsem_release(ptr nocapture noundef readonly %notify) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %index = getelementptr inbounds %struct.nvkm_notify, ptr %notify, i32 0, i32 6
  %0 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %index, align 4
  %.neg = mul i32 %1, -84
  %idx.neg = add i32 %.neg, -208
  %add.ptr = getelementptr i8, ptr %notify, i32 %idx.neg
  %sw1 = getelementptr inbounds %struct.nvkm_sw_chan, ptr %add.ptr, i32 0, i32 2
  %2 = ptrtoint ptr %sw1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sw1, align 8
  %device2 = getelementptr inbounds %struct.nvkm_sw, ptr %3, i32 0, i32 1, i32 1, i32 1
  %4 = ptrtoint ptr %device2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %device2, align 4
  %fifo = getelementptr inbounds %struct.nvkm_sw_chan, ptr %add.ptr, i32 0, i32 3
  %6 = ptrtoint ptr %fifo to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %fifo, align 4
  %inst4 = getelementptr inbounds %struct.nvkm_fifo_chan, ptr %7, i32 0, i32 6
  %8 = ptrtoint ptr %inst4 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %inst4, align 4
  %addr = getelementptr inbounds %struct.nvkm_gpuobj, ptr %9, i32 0, i32 4
  %10 = ptrtoint ptr %addr to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %addr, align 8
  %shr = lshr i64 %11, 12
  %conv = trunc i64 %shr to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !13
  tail call void @arm_heavy_mb() #3
  %or = or i32 %conv, -2147483648
  %pri = getelementptr inbounds %struct.nvkm_device, ptr %5, i32 0, i32 11
  %12 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %pri, align 4
  %add.ptr5 = getelementptr i8, ptr %13, i32 5912
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5, i32 %or) #3, !srcloc !14
  %bar = getelementptr inbounds %struct.nvkm_device, ptr %5, i32 0, i32 36
  %14 = ptrtoint ptr %bar to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %bar, align 4
  tail call void @nvkm_bar_flush(ptr noundef %15) #3
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !15
  tail call void @arm_heavy_mb() #3
  %vblank = getelementptr inbounds %struct.nv50_sw_chan, ptr %add.ptr, i32 0, i32 1
  %offset = getelementptr inbounds %struct.anon.144, ptr %vblank, i32 0, i32 2
  %16 = ptrtoint ptr %offset to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %offset, align 8
  %shr9 = lshr i64 %17, 32
  %conv11 = trunc i64 %shr9 to i32
  %18 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %pri, align 4
  %add.ptr13 = getelementptr i8, ptr %19, i32 393228
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr13, i32 %conv11) #3, !srcloc !14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !16
  tail call void @arm_heavy_mb() #3
  %20 = ptrtoint ptr %offset to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %offset, align 8
  %conv19 = trunc i64 %21 to i32
  %22 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %pri, align 4
  %add.ptr21 = getelementptr i8, ptr %23, i32 393232
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr21, i32 %conv19) #3, !srcloc !14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !17
  tail call void @arm_heavy_mb() #3
  %value = getelementptr inbounds %struct.anon.144, ptr %vblank, i32 0, i32 3
  %24 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %value, align 8
  %26 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %pri, align 4
  %add.ptr27 = getelementptr i8, ptr %27, i32 393236
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr27, i32 %25) #3, !srcloc !14
  ret i32 0
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nv50_sw_chan_dtor(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i1 @gf100_sw_chan_mthd(ptr noundef %base, i32 noundef %subc, i32 noundef %mthd, i32 noundef %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %engine2 = getelementptr inbounds %struct.nvkm_sw_chan, ptr %base, i32 0, i32 1, i32 2
  %0 = ptrtoint ptr %engine2 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %engine2, align 8
  %device3 = getelementptr inbounds %struct.nvkm_engine, ptr %1, i32 0, i32 1, i32 1
  %2 = ptrtoint ptr %device3 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %device3, align 4
  %4 = zext i32 %mthd to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values)
  switch i32 %mthd, label %entry.cleanup_crit_edge [
    i32 1024, label %sw.bb
    i32 1028, label %sw.bb6
    i32 1032, label %sw.bb14
    i32 1036, label %sw.bb16
    i32 1536, label %do.body
    i32 1604, label %sw.bb22
    i32 1708, label %do.body32
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %offset = getelementptr inbounds %struct.nv50_sw_chan, ptr %base, i32 0, i32 1, i32 2
  %5 = ptrtoint ptr %offset to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %offset, align 8
  %and = and i64 %6, 4294967295
  %conv = zext i32 %data to i64
  %shl = shl nuw i64 %conv, 32
  %or = or i64 %and, %shl
  store i64 %or, ptr %offset, align 8
  br label %cleanup

sw.bb6:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %offset8 = getelementptr inbounds %struct.nv50_sw_chan, ptr %base, i32 0, i32 1, i32 2
  %7 = ptrtoint ptr %offset8 to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %offset8, align 8
  %and9 = and i64 %8, 1095216660480
  %conv10 = zext i32 %data to i64
  %or13 = or i64 %and9, %conv10
  store i64 %or13, ptr %offset8, align 8
  br label %cleanup

sw.bb14:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %value = getelementptr inbounds %struct.nv50_sw_chan, ptr %base, i32 0, i32 1, i32 3
  %9 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %data, ptr %value, align 8
  br label %cleanup

sw.bb16:                                          ; preds = %entry
  %disp = getelementptr inbounds %struct.nvkm_device, ptr %3, i32 0, i32 50
  %10 = ptrtoint ptr %disp to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %disp, align 8
  %index_nr = getelementptr inbounds %struct.nvkm_disp, ptr %11, i32 0, i32 7, i32 2
  %12 = ptrtoint ptr %index_nr to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %index_nr, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %data)
  %cmp = icmp ugt i32 %13, %data
  br i1 %cmp, label %if.then, label %sw.bb16.cleanup_crit_edge

sw.bb16.cleanup_crit_edge:                        ; preds = %sw.bb16
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.then:                                          ; preds = %sw.bb16
  call void @__sanitizer_cov_trace_pc() #5
  %vblank19 = getelementptr inbounds %struct.nv50_sw_chan, ptr %base, i32 0, i32 1
  %arrayidx = getelementptr [4 x %struct.nvkm_notify], ptr %vblank19, i32 0, i32 %data
  tail call void @nvkm_notify_get(ptr noundef %arrayidx) #3
  br label %cleanup

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !18
  tail call void @arm_heavy_mb() #3
  %pri = getelementptr inbounds %struct.nvkm_device, ptr %3, i32 0, i32 11
  %14 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %pri, align 4
  %add.ptr21 = getelementptr i8, ptr %15, i32 4300288
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr21, i32 %data) #3, !srcloc !14
  br label %cleanup

sw.bb22:                                          ; preds = %entry
  %and23 = and i32 %data, -2097151
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and23)
  %tobool.not = icmp eq i32 %and23, 0
  br i1 %tobool.not, label %do.body25, label %sw.bb22.cleanup_crit_edge

sw.bb22.cleanup_crit_edge:                        ; preds = %sw.bb22
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

do.body25:                                        ; preds = %sw.bb22
  call void @__sanitizer_cov_trace_pc() #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !19
  tail call void @arm_heavy_mb() #3
  %pri28 = getelementptr inbounds %struct.nvkm_device, ptr %3, i32 0, i32 11
  %16 = ptrtoint ptr %pri28 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %pri28, align 4
  %add.ptr29 = getelementptr i8, ptr %17, i32 4300356
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr29, i32 %data) #3, !srcloc !14
  br label %cleanup

do.body32:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !20
  tail call void @arm_heavy_mb() #3
  %pri35 = getelementptr inbounds %struct.nvkm_device, ptr %3, i32 0, i32 11
  %18 = ptrtoint ptr %pri35 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %pri35, align 4
  %add.ptr36 = getelementptr i8, ptr %19, i32 4300460
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr36, i32 %data) #3, !srcloc !14
  br label %cleanup

cleanup:                                          ; preds = %do.body32, %do.body25, %sw.bb22.cleanup_crit_edge, %do.body, %if.then, %sw.bb16.cleanup_crit_edge, %sw.bb14, %sw.bb6, %sw.bb, %entry.cleanup_crit_edge
  %retval.0 = phi i1 [ true, %do.body32 ], [ true, %do.body25 ], [ true, %do.body ], [ true, %if.then ], [ true, %sw.bb14 ], [ true, %sw.bb6 ], [ true, %sw.bb ], [ false, %entry.cleanup_crit_edge ], [ false, %sw.bb22.cleanup_crit_edge ], [ false, %sw.bb16.cleanup_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_notify_get(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_bar_flush(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #4 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 2)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #4 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 2)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind }
attributes #4 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #5 = { nomerge }
attributes #6 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2}
!llvm.module.flags = !{!4, !5, !6, !7, !8, !9, !10, !11}
!llvm.ident = !{!12}

!0 = !{ptr @gf100_sw, !1, !"gf100_sw", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/sw/gf100.c", i32 143, i32 1}
!2 = !{ptr @gf100_sw_chan, !3, !"gf100_sw_chan", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/sw/gf100.c", i32 99, i32 1}
!4 = !{i32 1, !"wchar_size", i32 2}
!5 = !{i32 1, !"min_enum_size", i32 4}
!6 = !{i32 8, !"branch-target-enforcement", i32 0}
!7 = !{i32 8, !"sign-return-address", i32 0}
!8 = !{i32 8, !"sign-return-address-all", i32 0}
!9 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!10 = !{i32 7, !"uwtable", i32 1}
!11 = !{i32 7, !"frame-pointer", i32 2}
!12 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!13 = !{i64 2156265982}
!14 = !{i64 5387741}
!15 = !{i64 2156266521}
!16 = !{i64 2156267086}
!17 = !{i64 2156267550}
!18 = !{i64 2156269226}
!19 = !{i64 2156269621}
!20 = !{i64 2156270016}
