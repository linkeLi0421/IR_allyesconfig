; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/nouveau/nvkm/subdev/bar/gf100.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/nvkm/subdev/bar/gf100.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.nvkm_bar_func = type { ptr, ptr, ptr, %struct.anon.136, %struct.anon.136, ptr }
%struct.anon.136 = type { ptr, ptr, ptr, ptr }
%struct.gf100_bar = type { %struct.nvkm_bar, i8, [2 x %struct.gf100_barN] }
%struct.nvkm_bar = type { ptr, %struct.nvkm_subdev, %struct.spinlock, i8, i8 }
%struct.nvkm_subdev = type { ptr, ptr, i32, i32, [16 x i8], i32, %struct.list_head, ptr, i8 }
%struct.list_head = type { ptr, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.gf100_barN = type { ptr, ptr }
%struct.nvkm_device = type { ptr, ptr, ptr, i32, i64, ptr, ptr, ptr, %struct.list_head, %struct.mutex, i32, ptr, %struct.nvkm_event, i32, ptr, i32, i32, i8, i32, %struct.anon.132, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [3 x ptr], ptr, ptr, [10 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [5 x ptr], [3 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.nvkm_event = type { ptr, i32, i32, %struct.spinlock, %struct.spinlock, %struct.list_head, ptr }
%struct.anon.132 = type { %struct.notifier_block }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.nvkm_memory_func = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.nvkm_device_func = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8 }
%struct.nvkm_vmm = type { ptr, ptr, ptr, i32, %struct.kref, %struct.mutex, i64, i64, ptr, %struct.list_head, %struct.list_head, %struct.rb_root, %struct.rb_root, i8, [51 x %struct.atomic_t], i32, ptr, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.rb_root = type { ptr }

@gf100_bar_oneinit.bar1_lock = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@gf100_bar_oneinit.bar2_lock = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"NvBar2Halve\00", [20 x i8] zeroinitializer }, align 32
@gf100_bar_func = internal constant { %struct.nvkm_bar_func, [48 x i8] } { %struct.nvkm_bar_func { ptr @gf100_bar_dtor, ptr @gf100_bar_oneinit, ptr null, %struct.anon.136 { ptr @gf100_bar_bar1_init, ptr @gf100_bar_bar1_fini, ptr @gf100_bar_bar1_wait, ptr @gf100_bar_bar1_vmm }, %struct.anon.136 { ptr @gf100_bar_bar2_init, ptr @gf100_bar_bar2_fini, ptr @gf100_bar_bar1_wait, ptr @gf100_bar_bar2_vmm }, ptr @g84_bar_flush }, [48 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"bar2\00", [27 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"bar1\00", [27 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@___asan_gen_.3 = private unnamed_addr constant [10 x i8] c"bar1_lock\00", align 1
@___asan_gen_.5 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.19, i32 125, i32 31 }
@___asan_gen_.6 = private unnamed_addr constant [10 x i8] c"bar2_lock\00", align 1
@___asan_gen_.8 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.19, i32 126, i32 31 }
@___asan_gen_.11 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.19, i32 171, i32 49 }
@___asan_gen_.12 = private unnamed_addr constant [15 x i8] c"gf100_bar_func\00", align 1
@___asan_gen_.14 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.19, i32 177, i32 1 }
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.19, i32 103, i32 23 }
@___asan_gen_.18 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.19 = private constant [51 x i8] c"../drivers/gpu/drm/nouveau/nvkm/subdev/bar/gf100.c\00", align 1
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.19, i32 103, i32 32 }
@llvm.compiler.used = appending global [6 x ptr] [ptr @gf100_bar_oneinit.bar1_lock, ptr @gf100_bar_oneinit.bar2_lock, ptr @.str, ptr @gf100_bar_func, ptr @.str.1, ptr @.str.2], section "llvm.metadata"
@0 = internal global [6 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gf100_bar_oneinit.bar1_lock to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gf100_bar_oneinit.bar2_lock to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gf100_bar_func to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local ptr @gf100_bar_bar1_vmm(ptr nocapture noundef readonly %base) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %vmm = getelementptr %struct.gf100_bar, ptr %base, i32 0, i32 2, i32 1, i32 1
  %0 = ptrtoint ptr %vmm to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vmm, align 4
  ret ptr %1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @gf100_bar_bar1_wait(ptr noundef %base) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @nvkm_bar_flush(ptr noundef %base) #5
  tail call void @nvkm_bar_flush(ptr noundef %base) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_bar_flush(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @gf100_bar_bar1_fini(ptr nocapture noundef readonly %bar) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %device = getelementptr inbounds %struct.nvkm_bar, ptr %bar, i32 0, i32 1, i32 1
  %0 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device, align 4
  %pri = getelementptr inbounds %struct.nvkm_device, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pri, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 5892
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #5, !srcloc !21
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !22
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !23
  tail call void @arm_heavy_mb() #5
  %and = and i32 %4, 2147483647
  %5 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %pri, align 4
  %add.ptr2 = getelementptr i8, ptr %6, i32 5892
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2, i32 %and) #5, !srcloc !24
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @gf100_bar_bar1_init(ptr nocapture noundef readonly %base) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %device1 = getelementptr inbounds %struct.nvkm_bar, ptr %base, i32 0, i32 1, i32 1
  %0 = ptrtoint ptr %device1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device1, align 4
  %arrayidx = getelementptr %struct.gf100_bar, ptr %base, i32 0, i32 2, i32 1
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %addr3 = getelementptr inbounds %struct.nvkm_memory_func, ptr %5, i32 0, i32 4
  %6 = ptrtoint ptr %addr3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %addr3, align 4
  %call = tail call i64 %7(ptr noundef %3) #5
  %shr = lshr i64 %call, 12
  %conv = trunc i64 %shr to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !25
  tail call void @arm_heavy_mb() #5
  %or = or i32 %conv, -2147483648
  %pri = getelementptr inbounds %struct.nvkm_device, ptr %1, i32 0, i32 11
  %8 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pri, align 4
  %add.ptr7 = getelementptr i8, ptr %9, i32 5892
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr7, i32 %or) #5, !srcloc !24
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local ptr @gf100_bar_bar2_vmm(ptr nocapture noundef readonly %base) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %vmm = getelementptr inbounds %struct.gf100_bar, ptr %base, i32 0, i32 2, i32 0, i32 1
  %0 = ptrtoint ptr %vmm to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vmm, align 4
  ret ptr %1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @gf100_bar_bar2_fini(ptr nocapture noundef readonly %bar) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %device = getelementptr inbounds %struct.nvkm_bar, ptr %bar, i32 0, i32 1, i32 1
  %0 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device, align 4
  %pri = getelementptr inbounds %struct.nvkm_device, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pri, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 5908
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #5, !srcloc !21
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !26
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !27
  tail call void @arm_heavy_mb() #5
  %and = and i32 %4, 2147483647
  %5 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %pri, align 4
  %add.ptr2 = getelementptr i8, ptr %6, i32 5908
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2, i32 %and) #5, !srcloc !24
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @gf100_bar_bar2_init(ptr nocapture noundef readonly %base) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %device1 = getelementptr inbounds %struct.nvkm_bar, ptr %base, i32 0, i32 1, i32 1
  %0 = ptrtoint ptr %device1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device1, align 4
  %bar2 = getelementptr inbounds %struct.gf100_bar, ptr %base, i32 0, i32 2
  %2 = ptrtoint ptr %bar2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bar2, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %addr3 = getelementptr inbounds %struct.nvkm_memory_func, ptr %5, i32 0, i32 4
  %6 = ptrtoint ptr %addr3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %addr3, align 4
  %call = tail call i64 %7(ptr noundef %3) #5
  %shr = lshr i64 %call, 12
  %conv = trunc i64 %shr to i32
  %bar2_halve = getelementptr inbounds %struct.gf100_bar, ptr %base, i32 0, i32 1
  %8 = ptrtoint ptr %bar2_halve to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %bar2_halve, align 4, !range !28
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool.not = icmp eq i8 %9, 0
  %or = or i32 %conv, 1073741824
  %spec.select = select i1 %tobool.not, i32 %conv, i32 %or
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !29
  tail call void @arm_heavy_mb() #5
  %or7 = or i32 %spec.select, -2147483648
  %pri = getelementptr inbounds %struct.nvkm_device, ptr %1, i32 0, i32 11
  %10 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pri, align 4
  %add.ptr8 = getelementptr i8, ptr %11, i32 5908
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr8, i32 %or7) #5, !srcloc !24
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @gf100_bar_oneinit(ptr noundef %base) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base, align 4
  %bar2 = getelementptr inbounds %struct.nvkm_bar_func, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %bar2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bar2, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.if.end9_crit_edge, label %if.then

entry.if.end9_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end9

if.then:                                          ; preds = %entry
  %bar3 = getelementptr inbounds %struct.gf100_bar, ptr %base, i32 0, i32 2
  %call = tail call fastcc i32 @gf100_bar_oneinit_bar(ptr noundef %base, ptr noundef %bar3, ptr noundef nonnull @gf100_bar_oneinit.bar2_lock, i32 noundef 3)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool4.not = icmp eq i32 %call, 0
  br i1 %tobool4.not, label %if.end, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  %oneinit = getelementptr inbounds %struct.nvkm_bar, ptr %base, i32 0, i32 1, i32 8
  %4 = ptrtoint ptr %oneinit to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 1, ptr %oneinit, align 4
  %device = getelementptr inbounds %struct.nvkm_bar, ptr %base, i32 0, i32 1, i32 1
  %5 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %device, align 4
  tail call void @nvkm_bar_bar2_init(ptr noundef %6) #5
  br label %if.end9

if.end9:                                          ; preds = %if.end, %entry.if.end9_crit_edge
  %arrayidx11 = getelementptr %struct.gf100_bar, ptr %base, i32 0, i32 2, i32 1
  %call12 = tail call fastcc i32 @gf100_bar_oneinit_bar(ptr noundef %base, ptr noundef %arrayidx11, ptr noundef nonnull @gf100_bar_oneinit.bar1_lock, i32 noundef 1)
  br label %cleanup

cleanup:                                          ; preds = %if.end9, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %if.then.cleanup_crit_edge ], [ %call12, %if.end9 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @gf100_bar_oneinit_bar(ptr nocapture noundef readonly %bar, ptr noundef %bar_vm, ptr noundef %key, i32 noundef %bar_nr) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %device1 = getelementptr inbounds %struct.nvkm_bar, ptr %bar, i32 0, i32 1, i32 1
  %0 = ptrtoint ptr %device1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device1, align 4
  %call = tail call i32 @nvkm_memory_new(ptr noundef %1, i32 noundef 0, i64 noundef 4096, i32 noundef 0, i1 noundef zeroext false, ptr noundef %bar_vm) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %resource_size = getelementptr inbounds %struct.nvkm_device_func, ptr %3, i32 0, i32 7
  %4 = ptrtoint ptr %resource_size to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %resource_size, align 4
  %call2 = tail call i32 %5(ptr noundef %1, i32 noundef %bar_nr) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %bar_nr)
  %cmp = icmp eq i32 %bar_nr, 3
  br i1 %cmp, label %land.lhs.true, label %if.end5.if.end8_crit_edge

if.end5.if.end8_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end8

land.lhs.true:                                    ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #7
  %bar2_halve = getelementptr inbounds %struct.gf100_bar, ptr %bar, i32 0, i32 1
  %6 = ptrtoint ptr %bar2_halve to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %bar2_halve, align 4, !range !28
  %8 = zext i8 %7 to i32
  %spec.select = lshr i32 %call2, %8
  br label %if.end8

if.end8:                                          ; preds = %land.lhs.true, %if.end5.if.end8_crit_edge
  %cond = phi ptr [ @.str.2, %if.end5.if.end8_crit_edge ], [ @.str.1, %land.lhs.true ]
  %bar_len.0 = phi i32 [ %call2, %if.end5.if.end8_crit_edge ], [ %spec.select, %land.lhs.true ]
  %conv = zext i32 %bar_len.0 to i64
  %vmm = getelementptr inbounds %struct.gf100_barN, ptr %bar_vm, i32 0, i32 1
  %call11 = tail call i32 @nvkm_vmm_new(ptr noundef %1, i64 noundef 0, i64 noundef %conv, ptr noundef null, i32 noundef 0, ptr noundef %key, ptr noundef nonnull %cond, ptr noundef %vmm) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %if.end14, label %if.end8.cleanup_crit_edge

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end14:                                         ; preds = %if.end8
  %9 = ptrtoint ptr %vmm to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %vmm, align 4
  %arrayidx = getelementptr %struct.nvkm_vmm, ptr %10, i32 0, i32 14, i32 16
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %arrayidx, i32 noundef 4) #5
  tail call void @llvm.prefetch.p0(ptr %arrayidx, i32 1, i32 3, i32 1) #5
  %11 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %arrayidx, ptr %arrayidx, i32 1, ptr elementtype(i32) %arrayidx) #5, !srcloc !30
  %debug = getelementptr inbounds %struct.nvkm_bar, ptr %bar, i32 0, i32 1, i32 5
  %12 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %debug, align 4
  %14 = ptrtoint ptr %vmm to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %vmm, align 4
  %debug19 = getelementptr inbounds %struct.nvkm_vmm, ptr %15, i32 0, i32 3
  %16 = ptrtoint ptr %debug19 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %13, ptr %debug19, align 4
  br i1 %cmp, label %if.then22, label %if.end14.if.end28_crit_edge

if.end14.if.end28_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end28

if.then22:                                        ; preds = %if.end14
  %17 = ptrtoint ptr %vmm to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %vmm, align 4
  %call24 = tail call i32 @nvkm_vmm_boot(ptr noundef %18) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24)
  %tobool25.not = icmp eq i32 %call24, 0
  br i1 %tobool25.not, label %if.then22.if.end28_crit_edge, label %if.then22.cleanup_crit_edge

if.then22.cleanup_crit_edge:                      ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then22.if.end28_crit_edge:                     ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end28

if.end28:                                         ; preds = %if.then22.if.end28_crit_edge, %if.end14.if.end28_crit_edge
  %19 = ptrtoint ptr %vmm to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %vmm, align 4
  %21 = ptrtoint ptr %bar_vm to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %bar_vm, align 4
  %call31 = tail call i32 @nvkm_vmm_join(ptr noundef %20, ptr noundef %22) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end28, %if.then22.cleanup_crit_edge, %if.end8.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call31, %if.end28 ], [ %call, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ], [ %call11, %if.end8.cleanup_crit_edge ], [ %call24, %if.then22.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_bar_bar2_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @gf100_bar_dtor(ptr noundef returned %base) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %bar1 = getelementptr inbounds %struct.gf100_bar, ptr %base, i32 0, i32 2
  %arrayidx = getelementptr %struct.gf100_bar, ptr %base, i32 0, i32 2, i32 1
  %vmm = getelementptr %struct.gf100_bar, ptr %base, i32 0, i32 2, i32 1, i32 1
  %0 = ptrtoint ptr %vmm to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vmm, align 4
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  tail call void @nvkm_vmm_part(ptr noundef %1, ptr noundef %3) #5
  tail call void @nvkm_vmm_unref(ptr noundef %vmm) #5
  tail call void @nvkm_memory_unref(ptr noundef %arrayidx) #5
  %vmm12 = getelementptr inbounds %struct.gf100_bar, ptr %base, i32 0, i32 2, i32 0, i32 1
  %4 = ptrtoint ptr %vmm12 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %vmm12, align 4
  %6 = ptrtoint ptr %bar1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %bar1, align 4
  tail call void @nvkm_vmm_part(ptr noundef %5, ptr noundef %7) #5
  tail call void @nvkm_vmm_unref(ptr noundef %vmm12) #5
  tail call void @nvkm_memory_unref(ptr noundef %bar1) #5
  ret ptr %base
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_vmm_part(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_vmm_unref(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_memory_unref(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @gf100_bar_new_(ptr noundef %func, ptr noundef %device, i32 noundef %type, i32 noundef %inst, ptr nocapture noundef writeonly %pbar) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 124) #8
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @nvkm_bar_ctor(ptr noundef %func, ptr noundef %device, i32 noundef %type, i32 noundef %inst, ptr noundef nonnull %call7.i.i) #5
  %cfgopt = getelementptr inbounds %struct.nvkm_device, ptr %device, i32 0, i32 6
  %1 = ptrtoint ptr %cfgopt to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %cfgopt, align 4
  %call1 = tail call zeroext i1 @nvkm_boolopt(ptr noundef %2, ptr noundef nonnull @.str, i1 noundef zeroext false) #5
  %bar2_halve = getelementptr inbounds %struct.gf100_bar, ptr %call7.i.i, i32 0, i32 1
  %frombool = zext i1 %call1 to i8
  %3 = ptrtoint ptr %bar2_halve to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 %frombool, ptr %bar2_halve, align 8
  %4 = ptrtoint ptr %pbar to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call7.i.i, ptr %pbar, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_bar_ctor(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @nvkm_boolopt(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @gf100_bar_new(ptr noundef %device, i32 noundef %type, i32 noundef %inst, ptr nocapture noundef writeonly %pbar) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 124) #8
  %tobool.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i, label %entry.gf100_bar_new_.exit_crit_edge, label %if.end.i

entry.gf100_bar_new_.exit_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %gf100_bar_new_.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @nvkm_bar_ctor(ptr noundef nonnull @gf100_bar_func, ptr noundef %device, i32 noundef %type, i32 noundef %inst, ptr noundef nonnull %call7.i.i.i) #5
  %cfgopt.i = getelementptr inbounds %struct.nvkm_device, ptr %device, i32 0, i32 6
  %1 = ptrtoint ptr %cfgopt.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %cfgopt.i, align 4
  %call1.i = tail call zeroext i1 @nvkm_boolopt(ptr noundef %2, ptr noundef nonnull @.str, i1 noundef zeroext false) #5
  %bar2_halve.i = getelementptr inbounds %struct.gf100_bar, ptr %call7.i.i.i, i32 0, i32 1
  %frombool.i = zext i1 %call1.i to i8
  %3 = ptrtoint ptr %bar2_halve.i to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 %frombool.i, ptr %bar2_halve.i, align 8
  %4 = ptrtoint ptr %pbar to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call7.i.i.i, ptr %pbar, align 4
  br label %gf100_bar_new_.exit

gf100_bar_new_.exit:                              ; preds = %if.end.i, %entry.gf100_bar_new_.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %if.end.i ], [ -12, %entry.gf100_bar_new_.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_memory_new(ptr noundef, i32 noundef, i64 noundef, i32 noundef, i1 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_vmm_new(ptr noundef, i64 noundef, i64 noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_vmm_boot(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_vmm_join(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @g84_bar_flush(ptr noundef) #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

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
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 6)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 6)
  ret void
}

attributes #0 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10}
!llvm.module.flags = !{!12, !13, !14, !15, !16, !17, !18, !19}
!llvm.ident = !{!20}

!0 = !{ptr @gf100_bar_oneinit.bar1_lock, !1, !"bar1_lock", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/bar/gf100.c", i32 125, i32 31}
!2 = !{ptr @gf100_bar_oneinit.bar2_lock, !3, !"bar2_lock", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/bar/gf100.c", i32 126, i32 31}
!4 = !{ptr @.str, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/bar/gf100.c", i32 171, i32 49}
!6 = !{ptr @.str.1, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/bar/gf100.c", i32 103, i32 23}
!8 = !{ptr @.str.2, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/bar/gf100.c", i32 103, i32 32}
!10 = !{ptr @gf100_bar_func, !11, !"gf100_bar_func", i1 false, i1 false}
!11 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/bar/gf100.c", i32 177, i32 1}
!12 = !{i32 1, !"wchar_size", i32 2}
!13 = !{i32 1, !"min_enum_size", i32 4}
!14 = !{i32 8, !"branch-target-enforcement", i32 0}
!15 = !{i32 8, !"sign-return-address", i32 0}
!16 = !{i32 8, !"sign-return-address-all", i32 0}
!17 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!18 = !{i32 7, !"uwtable", i32 1}
!19 = !{i32 7, !"frame-pointer", i32 2}
!20 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!21 = !{i64 5388171}
!22 = !{i64 2156253886}
!23 = !{i64 2156254288}
!24 = !{i64 5387753}
!25 = !{i64 2156256035}
!26 = !{i64 2156258130}
!27 = !{i64 2156258532}
!28 = !{i8 0, i8 2}
!29 = !{i64 2156260279}
!30 = !{i64 2148596218, i64 2148596244, i64 2148596273, i64 2148596307, i64 2148596338, i64 2148596361}
