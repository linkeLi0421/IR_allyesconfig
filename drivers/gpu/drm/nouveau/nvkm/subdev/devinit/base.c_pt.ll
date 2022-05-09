; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/nouveau/nvkm/subdev/devinit/base.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/nvkm/subdev/devinit/base.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.nvkm_subdev_func = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.nvkm_devinit_func = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.nvkm_devinit = type { ptr, %struct.nvkm_subdev, i8, i8 }
%struct.nvkm_subdev = type { ptr, ptr, i32, i32, [16 x i8], i32, %struct.list_head, ptr, i8 }
%struct.list_head = type { ptr, ptr }
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

@nvkm_devinit = internal constant { %struct.nvkm_subdev_func, [36 x i8] } { %struct.nvkm_subdev_func { ptr @nvkm_devinit_dtor, ptr @nvkm_devinit_preinit, ptr null, ptr null, ptr @nvkm_devinit_init, ptr @nvkm_devinit_fini, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"NvForcePost\00", [20 x i8] zeroinitializer }, align 32
@___asan_gen_.1 = private unnamed_addr constant [13 x i8] c"nvkm_devinit\00", align 1
@___asan_gen_.3 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.5, i32 121, i32 1 }
@___asan_gen_.4 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.5 = private constant [54 x i8] c"../drivers/gpu/drm/nouveau/nvkm/subdev/devinit/base.c\00", align 1
@___asan_gen_.6 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.5, i32 134, i32 50 }
@llvm.compiler.used = appending global [2 x ptr] [ptr @nvkm_devinit, ptr @.str], section "llvm.metadata"
@0 = internal global [2 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvkm_devinit to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nvkm_devinit_mmio(ptr noundef %init, i32 noundef %addr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %init to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %init, align 4
  %mmio = getelementptr inbounds %struct.nvkm_devinit_func, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mmio, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %call = tail call i32 %3(ptr noundef %init, i32 noundef %addr) #3
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %addr.addr.0 = phi i32 [ %call, %if.then ], [ %addr, %entry.if.end_crit_edge ]
  ret i32 %addr.addr.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nvkm_devinit_pll_set(ptr noundef %init, i32 noundef %type, i32 noundef %khz) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %init to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %init, align 4
  %pll_set = getelementptr inbounds %struct.nvkm_devinit_func, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %pll_set to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pll_set, align 4
  %call = tail call i32 %3(ptr noundef %init, i32 noundef %type, i32 noundef %khz) #3
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nvkm_devinit_meminit(ptr noundef %init) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %init to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %init, align 4
  %meminit = getelementptr inbounds %struct.nvkm_devinit_func, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %meminit to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %meminit, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  tail call void %3(ptr noundef %init) #3
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i64 @nvkm_devinit_disable(ptr noundef %init) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %init, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %land.lhs.true

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

land.lhs.true:                                    ; preds = %entry
  %0 = ptrtoint ptr %init to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %init, align 4
  %disable = getelementptr inbounds %struct.nvkm_devinit_func, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %disable to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %disable, align 4
  %tobool1.not = icmp eq ptr %3, null
  br i1 %tobool1.not, label %land.lhs.true.return_crit_edge, label %if.then

land.lhs.true.return_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #5
  %call = tail call i64 %3(ptr noundef nonnull %init) #3
  br label %return

return:                                           ; preds = %if.then, %land.lhs.true.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i64 [ %call, %if.then ], [ 0, %land.lhs.true.return_crit_edge ], [ 0, %entry.return_crit_edge ]
  ret i64 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nvkm_devinit_post(ptr noundef %init) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %init, null
  br i1 %tobool.not, label %entry.nvkm_devinit_disable.exit_crit_edge, label %land.lhs.true

entry.nvkm_devinit_disable.exit_crit_edge:        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %nvkm_devinit_disable.exit

land.lhs.true:                                    ; preds = %entry
  %0 = ptrtoint ptr %init to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %init, align 4
  %post = getelementptr inbounds %struct.nvkm_devinit_func, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %post to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %post, align 4
  %tobool1.not = icmp eq ptr %3, null
  br i1 %tobool1.not, label %land.lhs.true.land.lhs.true.i_crit_edge, label %if.then

land.lhs.true.land.lhs.true.i_crit_edge:          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #5
  br label %land.lhs.true.i

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #5
  %post4 = getelementptr inbounds %struct.nvkm_devinit, ptr %init, i32 0, i32 2
  %4 = ptrtoint ptr %post4 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %post4, align 4, !range !13
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool5 = icmp ne i8 %5, 0
  %call = tail call i32 %3(ptr noundef nonnull %init, i1 noundef zeroext %tobool5) #3
  br label %land.lhs.true.i

land.lhs.true.i:                                  ; preds = %if.then, %land.lhs.true.land.lhs.true.i_crit_edge
  %ret.0.ph = phi i32 [ 0, %land.lhs.true.land.lhs.true.i_crit_edge ], [ %call, %if.then ]
  %6 = ptrtoint ptr %init to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %init, align 4
  %disable.i = getelementptr inbounds %struct.nvkm_devinit_func, ptr %7, i32 0, i32 7
  %8 = ptrtoint ptr %disable.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %disable.i, align 4
  %tobool1.not.i = icmp eq ptr %9, null
  br i1 %tobool1.not.i, label %land.lhs.true.i.nvkm_devinit_disable.exit_crit_edge, label %if.then.i

land.lhs.true.i.nvkm_devinit_disable.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %nvkm_devinit_disable.exit

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #5
  %call.i = tail call i64 %9(ptr noundef nonnull %init) #3
  br label %nvkm_devinit_disable.exit

nvkm_devinit_disable.exit:                        ; preds = %if.then.i, %land.lhs.true.i.nvkm_devinit_disable.exit_crit_edge, %entry.nvkm_devinit_disable.exit_crit_edge
  %ret.014 = phi i32 [ %ret.0.ph, %land.lhs.true.i.nvkm_devinit_disable.exit_crit_edge ], [ %ret.0.ph, %if.then.i ], [ 0, %entry.nvkm_devinit_disable.exit_crit_edge ]
  ret i32 %ret.014
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nvkm_devinit_ctor(ptr noundef %func, ptr noundef %device, i32 noundef %type, i32 noundef %inst, ptr noundef %init) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %subdev = getelementptr inbounds %struct.nvkm_devinit, ptr %init, i32 0, i32 1
  tail call void @nvkm_subdev_ctor(ptr noundef nonnull @nvkm_devinit, ptr noundef %device, i32 noundef %type, i32 noundef %inst, ptr noundef %subdev) #3
  %0 = ptrtoint ptr %init to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %func, ptr %init, align 4
  %cfgopt = getelementptr inbounds %struct.nvkm_device, ptr %device, i32 0, i32 6
  %1 = ptrtoint ptr %cfgopt to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %cfgopt, align 4
  %call = tail call zeroext i1 @nvkm_boolopt(ptr noundef %2, ptr noundef nonnull @.str, i1 noundef zeroext false) #3
  %force_post = getelementptr inbounds %struct.nvkm_devinit, ptr %init, i32 0, i32 3
  %frombool = zext i1 %call to i8
  %3 = ptrtoint ptr %force_post to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 %frombool, ptr %force_post, align 1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_subdev_ctor(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @nvkm_boolopt(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @nvkm_devinit_dtor(ptr noundef %subdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
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
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %call = tail call ptr %3(ptr noundef %add.ptr) #3
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %data.0 = phi ptr [ %call, %if.then ], [ %add.ptr, %entry.if.end_crit_edge ]
  %device = getelementptr inbounds %struct.nvkm_subdev, ptr %subdev, i32 0, i32 1
  %4 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %device, align 4
  %call3 = tail call zeroext i1 @nvkm_lockvgac(ptr noundef %5, i1 noundef zeroext true) #3
  ret ptr %data.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nvkm_devinit_preinit(ptr noundef %subdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %subdev, i32 -4
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 4
  %preinit = getelementptr inbounds %struct.nvkm_devinit_func, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preinit to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %preinit, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  tail call void %3(ptr noundef %add.ptr) #3
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %force_post = getelementptr i8, ptr %subdev, i32 53
  %4 = ptrtoint ptr %force_post to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %force_post, align 1, !range !13
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool3.not = icmp eq i8 %5, 0
  br i1 %tobool3.not, label %if.end.if.end8_crit_edge, label %if.then4

if.end.if.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end8

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  %post = getelementptr i8, ptr %subdev, i32 52
  %6 = ptrtoint ptr %post to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 1, ptr %post, align 4
  %7 = ptrtoint ptr %force_post to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 0, ptr %force_post, align 1
  br label %if.end8

if.end8:                                          ; preds = %if.then4, %if.end.if.end8_crit_edge
  %device = getelementptr inbounds %struct.nvkm_subdev, ptr %subdev, i32 0, i32 1
  %8 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %device, align 4
  %call = tail call zeroext i1 @nvkm_lockvgac(ptr noundef %9, i1 noundef zeroext false) #3
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nvkm_devinit_init(ptr noundef %subdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %subdev, i32 -4
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 4
  %init1 = getelementptr inbounds %struct.nvkm_devinit_func, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %init1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %init1, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  tail call void %3(ptr noundef %add.ptr) #3
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @nvkm_devinit_fini(ptr nocapture noundef writeonly %subdev, i1 noundef zeroext %suspend) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  br i1 %suspend, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %post = getelementptr i8, ptr %subdev, i32 52
  %0 = ptrtoint ptr %post to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 1, ptr %post, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @nvkm_lockvgac(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

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
attributes #2 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { nounwind }
attributes #4 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #5 = { nomerge }

!llvm.asan.globals = !{!0, !2}
!llvm.module.flags = !{!4, !5, !6, !7, !8, !9, !10, !11}
!llvm.ident = !{!12}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/devinit/base.c", i32 134, i32 50}
!2 = !{ptr @nvkm_devinit, !3, !"nvkm_devinit", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/devinit/base.c", i32 121, i32 1}
!4 = !{i32 1, !"wchar_size", i32 2}
!5 = !{i32 1, !"min_enum_size", i32 4}
!6 = !{i32 8, !"branch-target-enforcement", i32 0}
!7 = !{i32 8, !"sign-return-address", i32 0}
!8 = !{i32 8, !"sign-return-address-all", i32 0}
!9 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!10 = !{i32 7, !"uwtable", i32 1}
!11 = !{i32 7, !"frame-pointer", i32 2}
!12 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!13 = !{i8 0, i8 2}
