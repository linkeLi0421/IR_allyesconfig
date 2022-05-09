; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/nouveau/nvkm/engine/disp/piornv50.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/nvkm/engine/disp/piornv50.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.nvkm_ior_func = type { %struct.anon, ptr, ptr, ptr, ptr, ptr, ptr, %struct.anon.145, %struct.anon.146, %struct.anon.147 }
%struct.anon = type { ptr, ptr }
%struct.anon.145 = type { ptr, ptr }
%struct.anon.146 = type { [4 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.anon.147 = type { ptr, ptr, ptr }
%struct.nvkm_ior_state = type { ptr, i32, i24 }
%struct.nvkm_ior = type { ptr, ptr, i32, i32, [8 x i8], %struct.list_head, i8, %struct.nvkm_ior_state, %struct.nvkm_ior_state, %struct.anon.148, %struct.anon.149 }
%struct.list_head = type { ptr, ptr }
%struct.anon.148 = type { i8, i8, i8, i8 }
%struct.anon.149 = type { i8 }
%struct.nvkm_head = type { ptr, ptr, i32, %struct.list_head, %struct.nvkm_head_state, %struct.nvkm_head_state }
%struct.nvkm_head_state = type { i16, i16, i16, i16, i16, i16, i16, i16, i32, %struct.anon.156 }
%struct.anon.156 = type { i8 }
%struct.nvkm_disp = type { ptr, %struct.nvkm_engine, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.nvkm_event, %struct.nvkm_event, %struct.anon.138 }
%struct.nvkm_engine = type { ptr, %struct.nvkm_subdev, %struct.spinlock, %struct.anon.137 }
%struct.nvkm_subdev = type { ptr, ptr, i32, i32, [16 x i8], i32, %struct.list_head, ptr, i8 }
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.2 }
%union.anon.2 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.anon.137 = type { %struct.refcount_struct, %struct.mutex, i8 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.nvkm_event = type { ptr, i32, i32, %struct.spinlock, %struct.spinlock, %struct.list_head, ptr }
%struct.anon.138 = type { %struct.spinlock, ptr }
%struct.nvkm_device = type { ptr, ptr, ptr, i32, i64, ptr, ptr, ptr, %struct.list_head, %struct.mutex, i32, ptr, %struct.nvkm_event, i32, ptr, i32, i32, i8, i32, %struct.anon.135, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [3 x ptr], ptr, ptr, [10 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [5 x ptr], [3 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head }
%struct.anon.135 = type { %struct.notifier_block }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.nvkm_timer_wait = type { ptr, i64, i64, i64, i32 }
%struct.nvkm_timer = type { ptr, %struct.nvkm_subdev, %struct.list_head, %struct.spinlock }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
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

@.str = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"drivers/gpu/drm/nouveau/nvkm/engine/disp/piornv50.c\00", [44 x i8] zeroinitializer }, align 32
@nv50_pior = internal constant { %struct.nvkm_ior_func, [36 x i8] } { %struct.nvkm_ior_func { %struct.anon zeroinitializer, ptr @nv50_pior_state, ptr @nv50_pior_power, ptr null, ptr @nv50_pior_clock, ptr null, ptr null, %struct.anon.145 zeroinitializer, %struct.anon.146 { [4 x i8] zeroinitializer, ptr @nv50_pior_dp_links, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, %struct.anon.147 zeroinitializer }, [36 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"%s %s: timeout\0A\00", [16 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 2, i64 5, i64 6]
@___asan_gen_.4 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.9, i32 81, i32 8 }
@___asan_gen_.5 = private unnamed_addr constant [10 x i8] c"nv50_pior\00", align 1
@___asan_gen_.7 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.9, i32 118, i32 1 }
@___asan_gen_.8 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.9 = private constant [55 x i8] c"../drivers/gpu/drm/nouveau/nvkm/engine/disp/piornv50.c\00", align 1
@___asan_gen_.10 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.9, i32 51, i32 2 }
@llvm.compiler.used = appending global [3 x ptr] [ptr @.str, ptr @nv50_pior, ptr @.str.1], section "llvm.metadata"
@0 = internal global [3 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nv50_pior to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nv50_pior_depth(ptr noundef readonly %ior, ptr noundef readonly %state, i32 noundef %ctrl) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %head = getelementptr inbounds %struct.nvkm_ior_state, ptr %state, i32 0, i32 2
  %0 = ptrtoint ptr %head to i32
  call void @__asan_load4_noabort(i32 %0)
  %bf.load = load i32, ptr %head, align 4
  %bf.lshr = lshr i32 %bf.load, 15
  %bf.clear = and i32 %bf.lshr, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bf.clear)
  %tobool.not = icmp ne i32 %bf.clear, 0
  %asy = getelementptr inbounds %struct.nvkm_ior, ptr %ior, i32 0, i32 8
  %cmp = icmp eq ptr %asy, %state
  %or.cond = select i1 %tobool.not, i1 %cmp, i1 false
  br i1 %or.cond, label %if.then, label %entry.if.end71_crit_edge

entry.if.end71_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end71

if.then:                                          ; preds = %entry
  %disp = getelementptr inbounds %struct.nvkm_ior, ptr %ior, i32 0, i32 1
  %1 = ptrtoint ptr %disp to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %disp, align 4
  %3 = tail call i32 @llvm.cttz.i32(i32 %bf.clear, i1 true) #4, !range !15
  %call6 = tail call ptr @nvkm_head_find(ptr noundef %2, i32 noundef %3) #4
  %tobool7.not = icmp eq ptr %call6, null
  br i1 %tobool7.not, label %do.end, label %if.then30.critedge, !prof !16

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 81, i32 noundef 9, ptr noundef null) #4
  br label %if.end71

if.then30.critedge:                               ; preds = %if.then
  %and = lshr i32 %ctrl, 16
  %shr = and i32 %and, 15
  %4 = zext i32 %shr to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values)
  switch i32 %shr, label %sw.default [
    i32 6, label %sw.bb
    i32 5, label %sw.bb33
    i32 2, label %sw.bb36
    i32 0, label %sw.bb39
  ]

sw.bb:                                            ; preds = %if.then30.critedge
  call void @__sanitizer_cov_trace_pc() #6
  %or = getelementptr inbounds %struct.nvkm_head, ptr %call6, i32 0, i32 5, i32 9
  %5 = ptrtoint ptr %or to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 30, ptr %or, align 4
  br label %if.end71

sw.bb33:                                          ; preds = %if.then30.critedge
  call void @__sanitizer_cov_trace_pc() #6
  %or34 = getelementptr inbounds %struct.nvkm_head, ptr %call6, i32 0, i32 5, i32 9
  %6 = ptrtoint ptr %or34 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 24, ptr %or34, align 4
  br label %if.end71

sw.bb36:                                          ; preds = %if.then30.critedge
  call void @__sanitizer_cov_trace_pc() #6
  %or37 = getelementptr inbounds %struct.nvkm_head, ptr %call6, i32 0, i32 5, i32 9
  %7 = ptrtoint ptr %or37 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 18, ptr %or37, align 4
  br label %if.end71

sw.bb39:                                          ; preds = %if.then30.critedge
  call void @__sanitizer_cov_trace_pc() #6
  %or40 = getelementptr inbounds %struct.nvkm_head, ptr %call6, i32 0, i32 5, i32 9
  %8 = ptrtoint ptr %or40 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 18, ptr %or40, align 4
  br label %if.end71

sw.default:                                       ; preds = %if.then30.critedge
  call void @__sanitizer_cov_trace_pc() #6
  %or42 = getelementptr inbounds %struct.nvkm_head, ptr %call6, i32 0, i32 5, i32 9
  %9 = ptrtoint ptr %or42 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 18, ptr %or42, align 4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 90, i32 noundef 9, ptr noundef null) #4
  br label %if.end71

if.end71:                                         ; preds = %sw.default, %sw.bb39, %sw.bb36, %sw.bb33, %sw.bb, %do.end, %entry.if.end71_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nvkm_head_find(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nv50_pior_new(ptr noundef %disp, i32 noundef %id) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @nvkm_ior_new_(ptr noundef nonnull @nv50_pior, ptr noundef %disp, i32 noundef 2, i32 noundef %id) #4
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_ior_new_(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nv50_pior_cnt(ptr nocapture noundef readonly %disp, ptr nocapture noundef writeonly %pmask) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %device1 = getelementptr inbounds %struct.nvkm_disp, ptr %disp, i32 0, i32 1, i32 1, i32 1
  %0 = ptrtoint ptr %device1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device1, align 4
  %pri = getelementptr inbounds %struct.nvkm_device, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pri, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 6357380
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #4, !srcloc !17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !18
  %and = lshr i32 %4, 28
  %shr = and i32 %and, 7
  %5 = ptrtoint ptr %pmask to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %shr, ptr %pmask, align 4
  ret i32 3
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nv50_pior_state(ptr noundef %pior, ptr noundef %state) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %disp = getelementptr inbounds %struct.nvkm_ior, ptr %pior, i32 0, i32 1
  %0 = ptrtoint ptr %disp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %disp, align 4
  %device1 = getelementptr inbounds %struct.nvkm_disp, ptr %1, i32 0, i32 1, i32 1, i32 1
  %2 = ptrtoint ptr %device1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %device1, align 4
  %id = getelementptr inbounds %struct.nvkm_ior, ptr %pior, i32 0, i32 3
  %4 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %id, align 4
  %mul = shl i32 %5, 3
  %arm = getelementptr inbounds %struct.nvkm_ior, ptr %pior, i32 0, i32 7
  %cmp = icmp eq ptr %arm, %state
  %pri = getelementptr inbounds %struct.nvkm_device, ptr %3, i32 0, i32 11
  %6 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pri, align 4
  %add = select i1 %cmp, i32 6359940, i32 6359936
  %add3 = add i32 %add, %mul
  %add.ptr = getelementptr i8, ptr %7, i32 %add3
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #4, !srcloc !17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !19
  %proto_evo = getelementptr inbounds %struct.nvkm_ior_state, ptr %state, i32 0, i32 2
  %9 = ptrtoint ptr %proto_evo to i32
  call void @__asan_load4_noabort(i32 %9)
  %bf.load = load i32, ptr %proto_evo, align 4
  %10 = shl i32 %8, 20
  %bf.shl = and i32 %10, -268435456
  %bf.clear = and i32 %bf.load, 25198591
  %bf.set = or i32 %bf.clear, %bf.shl
  %rgdiv = getelementptr inbounds %struct.nvkm_ior_state, ptr %state, i32 0, i32 1
  %11 = ptrtoint ptr %rgdiv to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 1, ptr %rgdiv, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 268435456, i32 %10)
  %cond = icmp ult i32 %10, 268435456
  %storemerge.v = select i1 %cond, i32 67108864, i32 167772160
  %and13 = shl i32 %8, 15
  %bf.shl16 = and i32 %and13, 98304
  %storemerge = or i32 %storemerge.v, %bf.shl16
  %bf.set18 = or i32 %storemerge, %bf.set
  %12 = ptrtoint ptr %proto_evo to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %bf.set18, ptr %proto_evo, align 4
  tail call void @nv50_pior_depth(ptr noundef %pior, ptr noundef %state, i32 noundef %8)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nv50_pior_power(ptr nocapture noundef readonly %pior, i1 noundef zeroext %normal, i1 noundef zeroext %pu, i1 noundef zeroext %data, i1 noundef zeroext %vsync, i1 noundef zeroext %hsync) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %disp = getelementptr inbounds %struct.nvkm_ior, ptr %pior, i32 0, i32 1
  %0 = ptrtoint ptr %disp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %disp, align 4
  %device5 = getelementptr inbounds %struct.nvkm_disp, ptr %1, i32 0, i32 1, i32 1, i32 1
  %2 = ptrtoint ptr %device5 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %device5, align 4
  %id.i = getelementptr inbounds %struct.nvkm_ior, ptr %pior, i32 0, i32 3
  %4 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %id.i, align 4
  %mul.i = shl i32 %5, 11
  %cond = select i1 %normal, i32 0, i32 16
  %lnot.ext = zext i1 %pu to i32
  %shl = shl nuw nsw i32 %lnot.ext, %cond
  %or = or i32 %shl, -2147483648
  %shl8 = shl nuw nsw i32 257, %cond
  tail call fastcc void @nv50_pior_power_wait(ptr noundef %3, i32 noundef %mul.i)
  %add = add i32 %mul.i, 6414340
  %pri = getelementptr inbounds %struct.nvkm_device, ptr %3, i32 0, i32 11
  %6 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pri, align 4
  %add.ptr = getelementptr i8, ptr %7, i32 %add
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #4, !srcloc !17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !20
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !21
  tail call void @arm_heavy_mb() #4
  %neg = xor i32 %shl8, -1
  %and = and i32 %8, %neg
  %or11 = or i32 %and, %or
  %9 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %pri, align 4
  %add.ptr13 = getelementptr i8, ptr %10, i32 %add
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr13, i32 %or11) #4, !srcloc !22
  tail call fastcc void @nv50_pior_power_wait(ptr noundef %3, i32 noundef %mul.i)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nv50_pior_clock(ptr nocapture noundef readonly %pior) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %disp = getelementptr inbounds %struct.nvkm_ior, ptr %pior, i32 0, i32 1
  %0 = ptrtoint ptr %disp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %disp, align 4
  %device1 = getelementptr inbounds %struct.nvkm_disp, ptr %1, i32 0, i32 1, i32 1, i32 1
  %2 = ptrtoint ptr %device1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %device1, align 4
  %id.i = getelementptr inbounds %struct.nvkm_ior, ptr %pior, i32 0, i32 3
  %4 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %id.i, align 4
  %mul.i = shl i32 %5, 11
  %add = add i32 %mul.i, 6374272
  %pri = getelementptr inbounds %struct.nvkm_device, ptr %3, i32 0, i32 11
  %6 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pri, align 4
  %add.ptr = getelementptr i8, ptr %7, i32 %add
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #4, !srcloc !17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !23
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !24
  tail call void @arm_heavy_mb() #4
  %and = and i32 %8, -1800
  %or = or i32 %and, 1
  %9 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %pri, align 4
  %add.ptr4 = getelementptr i8, ptr %10, i32 %add
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4, i32 %or) #4, !srcloc !22
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nv50_pior_dp_links(ptr nocapture noundef readonly %pior, ptr noundef %aux) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %nr = getelementptr inbounds %struct.nvkm_ior, ptr %pior, i32 0, i32 9, i32 2
  %0 = ptrtoint ptr %nr to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %nr, align 2
  %conv = zext i8 %1 to i32
  %bw = getelementptr inbounds %struct.nvkm_ior, ptr %pior, i32 0, i32 9, i32 3
  %2 = ptrtoint ptr %bw to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %bw, align 1
  %conv2 = zext i8 %3 to i32
  %ef = getelementptr inbounds %struct.nvkm_ior, ptr %pior, i32 0, i32 9, i32 1
  %4 = ptrtoint ptr %ef to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %ef, align 1, !range !25
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool = icmp ne i8 %5, 0
  %call = tail call i32 @nvkm_i2c_aux_lnk_ctl(ptr noundef %aux, i32 noundef %conv, i32 noundef %conv2, i1 noundef zeroext %tobool) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool4.not = icmp eq i32 %call, 0
  %.call = select i1 %tobool4.not, i32 1, i32 %call
  ret i32 %.call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @nv50_pior_power_wait(ptr noundef %device, i32 noundef %poff) unnamed_addr #0 align 64 {
entry:
  %_wait = alloca %struct.nvkm_timer_wait, align 8
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %_wait) #4
  %0 = call ptr @memset(ptr %_wait, i32 255, i32 40)
  call void @nvkm_timer_wait_init(ptr noundef %device, i64 noundef 2000000000, ptr noundef nonnull %_wait) #4
  %pri = getelementptr inbounds %struct.nvkm_device, ptr %device, i32 0, i32 11
  %add = add i32 %poff, 6414340
  br label %do.body

do.body:                                          ; preds = %do.cond.do.body_crit_edge, %entry
  %1 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %pri, align 4
  %add.ptr = getelementptr i8, ptr %2, i32 %add
  %3 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #4, !srcloc !17
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !26
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %3)
  %tobool.not = icmp sgt i32 %3, -1
  br i1 %tobool.not, label %do.body.if.end33_crit_edge, label %do.cond

do.body.if.end33_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end33

do.cond:                                          ; preds = %do.body
  %call1 = call i64 @nvkm_timer_wait_test(ptr noundef nonnull %_wait) #4
  %cmp = icmp sgt i64 %call1, -1
  br i1 %cmp, label %do.cond.do.body_crit_edge, label %do.end12

do.cond.do.body_crit_edge:                        ; preds = %do.cond
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body

do.end12:                                         ; preds = %do.cond
  %4 = ptrtoint ptr %_wait to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %_wait, align 8
  %device13 = getelementptr inbounds %struct.nvkm_timer, ptr %5, i32 0, i32 1, i32 1
  %6 = ptrtoint ptr %device13 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %device13, align 4
  %dev = getelementptr inbounds %struct.nvkm_device, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev, align 8
  %call14 = call ptr @dev_driver_string(ptr noundef %9) #4
  %10 = ptrtoint ptr %_wait to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %_wait, align 8
  %device17 = getelementptr inbounds %struct.nvkm_timer, ptr %11, i32 0, i32 1, i32 1
  %12 = ptrtoint ptr %device17 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %device17, align 4
  %dev18 = getelementptr inbounds %struct.nvkm_device, ptr %13, i32 0, i32 2
  %14 = ptrtoint ptr %dev18 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev18, align 8
  %init_name.i = getelementptr inbounds %struct.device, ptr %15, i32 0, i32 3
  %16 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %17, null
  br i1 %tobool.not.i, label %if.end.i, label %do.end12.dev_name.exit_crit_edge

do.end12.dev_name.exit_crit_edge:                 ; preds = %do.end12
  call void @__sanitizer_cov_trace_pc() #6
  br label %dev_name.exit

if.end.i:                                         ; preds = %do.end12
  call void @__sanitizer_cov_trace_pc() #6
  %18 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %15, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %do.end12.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %19, %if.end.i ], [ %17, %do.end12.dev_name.exit_crit_edge ]
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 54, i32 noundef 9, ptr noundef nonnull @.str.1, ptr noundef %call14, ptr noundef %retval.0.i) #4
  br label %if.end33

if.end33:                                         ; preds = %dev_name.exit, %do.body.if.end33_crit_edge
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %_wait) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_timer_wait_init(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @nvkm_timer_wait_test(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_driver_string(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_i2c_aux_lnk_ctl(ptr noundef, i32 noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 3)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 3)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4}
!llvm.module.flags = !{!6, !7, !8, !9, !10, !11, !12, !13}
!llvm.ident = !{!14}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/disp/piornv50.c", i32 81, i32 8}
!2 = !{ptr @nv50_pior, !3, !"nv50_pior", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/disp/piornv50.c", i32 118, i32 1}
!4 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/disp/piornv50.c", i32 51, i32 2}
!6 = !{i32 1, !"wchar_size", i32 2}
!7 = !{i32 1, !"min_enum_size", i32 4}
!8 = !{i32 8, !"branch-target-enforcement", i32 0}
!9 = !{i32 8, !"sign-return-address", i32 0}
!10 = !{i32 8, !"sign-return-address-all", i32 0}
!11 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!12 = !{i32 7, !"uwtable", i32 1}
!13 = !{i32 7, !"frame-pointer", i32 2}
!14 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!15 = !{i32 0, i32 33}
!16 = !{!"branch_weights", i32 1, i32 2000}
!17 = !{i64 5395924}
!18 = !{i64 2156257020}
!19 = !{i64 2156256635}
!20 = !{i64 2156254720}
!21 = !{i64 2156255102}
!22 = !{i64 5395506}
!23 = !{i64 2156250698}
!24 = !{i64 2156251100}
!25 = !{i8 0, i8 2}
!26 = !{i64 2156253057}
