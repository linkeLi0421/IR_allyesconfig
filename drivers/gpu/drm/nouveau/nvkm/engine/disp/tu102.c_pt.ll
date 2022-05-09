; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/nouveau/nvkm/engine/disp/tu102.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/nvkm/engine/disp/tu102.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.nv50_disp_func = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.anon.139, %struct.anon.139, %struct.anon.139, %struct.anon.139, %struct.anon.139, i16 }
%struct.anon.139 = type { ptr, ptr }
%struct.nvkm_event_func = type { ptr, ptr, ptr, ptr }
%struct.nvkm_disp_oclass = type { ptr, %struct.nvkm_sclass }
%struct.nvkm_sclass = type { i32, i32, i32, ptr, ptr }
%struct.nvkm_timer_wait = type { ptr, i64, i64, i64, i32 }
%struct.nv50_disp = type { ptr, %struct.nvkm_disp, ptr, %struct.work_struct, i32, %struct.nvkm_event, %struct.anon.140, %struct.anon.140, %struct.anon.140, %struct.anon.141, %struct.anon.142, ptr, ptr, [81 x ptr] }
%struct.nvkm_disp = type { ptr, %struct.nvkm_engine, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.nvkm_event, %struct.nvkm_event, %struct.anon.138 }
%struct.nvkm_engine = type { ptr, %struct.nvkm_subdev, %struct.spinlock, %struct.anon.137 }
%struct.nvkm_subdev = type { ptr, ptr, i32, i32, [16 x i8], i32, %struct.list_head, ptr, i8 }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.anon.137 = type { %struct.refcount_struct, %struct.mutex, i8 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.anon.138 = type { %struct.spinlock, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.nvkm_event = type { ptr, i32, i32, %struct.spinlock, %struct.spinlock, %struct.list_head, ptr }
%struct.anon.140 = type { i32, i32 }
%struct.anon.141 = type { i32, i32, i32 }
%struct.anon.142 = type { i32, i32, [3 x i8] }
%struct.nvkm_device = type { ptr, ptr, ptr, i32, i64, ptr, ptr, ptr, %struct.list_head, %struct.mutex, i32, ptr, %struct.nvkm_event, i32, ptr, i32, i32, i8, i32, %struct.anon.135, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [3 x ptr], ptr, ptr, [10 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [5 x ptr], [3 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head }
%struct.anon.135 = type { %struct.notifier_block }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.nvkm_timer = type { ptr, %struct.nvkm_subdev, %struct.list_head, %struct.spinlock }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
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
%struct.nvkm_gpuobj = type { %union.anon.2, ptr, ptr, ptr, i64, i32, %struct.nvkm_mm, ptr }
%union.anon.2 = type { ptr }
%struct.nvkm_mm = type { %struct.list_head, %struct.list_head, i32, i32 }
%struct.nvkm_memory_func = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@.str = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"drivers/gpu/drm/nouveau/nvkm/engine/disp/tu102.c\00", [47 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"%s %s: timeout\0A\00", [16 x i8] zeroinitializer }, align 32
@tu102_disp = internal constant { %struct.nv50_disp_func, [56 x i8] } { %struct.nv50_disp_func { ptr @tu102_disp_init, ptr @gv100_disp_fini, ptr @gv100_disp_intr, ptr null, ptr @gv100_disp_chan_uevent, ptr @gv100_disp_super, ptr @tu102_disp_root_oclass, %struct.anon.139 { ptr @gv100_disp_wndw_cnt, ptr null }, %struct.anon.139 { ptr @gv100_head_cnt, ptr @gv100_head_new }, %struct.anon.139 zeroinitializer, %struct.anon.139 { ptr @gv100_sor_cnt, ptr @tu102_sor_new }, %struct.anon.139 zeroinitializer, i16 8192 }, [56 x i8] zeroinitializer }, align 32
@gv100_disp_chan_uevent = external dso_local constant %struct.nvkm_event_func, align 4
@tu102_disp_root_oclass = external dso_local constant %struct.nvkm_disp_oclass, align 4
@switch.table.tu102_disp_init = internal constant { [3 x i32], [20 x i8] } { [3 x i32] [i32 1, i32 3, i32 2], [20 x i8] zeroinitializer }, align 32
@___asan_gen_.5 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.7 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.9, i32 42, i32 7 }
@___asan_gen_.8 = private unnamed_addr constant [11 x i8] c"tu102_disp\00", align 1
@___asan_gen_.9 = private constant [52 x i8] c"../drivers/gpu/drm/nouveau/nvkm/engine/disp/tu102.c\00", align 1
@___asan_gen_.10 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.9, i32 135, i32 1 }
@___asan_gen_.11 = private unnamed_addr constant [29 x i8] c"switch.table.tu102_disp_init\00", align 1
@llvm.compiler.used = appending global [4 x ptr] [ptr @.str, ptr @.str.1, ptr @tu102_disp, ptr @switch.table.tu102_disp_init], section "llvm.metadata"
@0 = internal global [4 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tu102_disp to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.tu102_disp_init to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @tu102_disp_init(ptr noundef readonly %disp) #0 align 64 {
entry:
  %_wait = alloca %struct.nvkm_timer_wait, align 8
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %device1 = getelementptr inbounds %struct.nv50_disp, ptr %disp, i32 0, i32 1, i32 1, i32 1, i32 1
  %0 = ptrtoint ptr %device1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device1, align 4
  %pri = getelementptr inbounds %struct.nvkm_device, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pri, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 6444264
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #3, !srcloc !14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !15
  %and = and i32 %4, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end61_crit_edge, label %if.then

entry.if.end61_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end61

if.then:                                          ; preds = %entry
  %5 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %pri, align 4
  %add.ptr5 = getelementptr i8, ptr %6, i32 6444264
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5) #3, !srcloc !14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !17
  tail call void @arm_heavy_mb() #3
  %and8 = and i32 %7, -2
  %8 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pri, align 4
  %add.ptr10 = getelementptr i8, ptr %9, i32 6444264
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr10, i32 %and8) #3, !srcloc !18
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %_wait) #3
  %10 = call ptr @memset(ptr %_wait, i32 255, i32 40)
  call void @nvkm_timer_wait_init(ptr noundef %1, i64 noundef 2000000000, ptr noundef nonnull %_wait) #3
  br label %do.body12

do.body12:                                        ; preds = %do.cond21.do.body12_crit_edge, %if.then
  %11 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %pri, align 4
  %add.ptr15 = getelementptr i8, ptr %12, i32 6444264
  %13 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr15) #3, !srcloc !14
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !19
  %and18 = and i32 %13, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and18)
  %tobool19.not = icmp eq i32 %and18, 0
  br i1 %tobool19.not, label %if.end56.thread, label %do.cond21

if.end56.thread:                                  ; preds = %do.body12
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %_wait) #3
  br label %if.end61

do.cond21:                                        ; preds = %do.body12
  %call22 = call i64 @nvkm_timer_wait_test(ptr noundef nonnull %_wait) #3
  %cmp = icmp sgt i64 %call22, -1
  br i1 %cmp, label %do.cond21.do.body12_crit_edge, label %do.end34

do.cond21.do.body12_crit_edge:                    ; preds = %do.cond21
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.body12

do.end34:                                         ; preds = %do.cond21
  %14 = ptrtoint ptr %_wait to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %_wait, align 8
  %device36 = getelementptr inbounds %struct.nvkm_timer, ptr %15, i32 0, i32 1, i32 1
  %16 = ptrtoint ptr %device36 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %device36, align 4
  %dev = getelementptr inbounds %struct.nvkm_device, ptr %17, i32 0, i32 2
  %18 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev, align 8
  %call37 = call ptr @dev_driver_string(ptr noundef %19) #3
  %20 = ptrtoint ptr %_wait to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %_wait, align 8
  %device40 = getelementptr inbounds %struct.nvkm_timer, ptr %21, i32 0, i32 1, i32 1
  %22 = ptrtoint ptr %device40 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %device40, align 4
  %dev41 = getelementptr inbounds %struct.nvkm_device, ptr %23, i32 0, i32 2
  %24 = ptrtoint ptr %dev41 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dev41, align 8
  %init_name.i = getelementptr inbounds %struct.device, ptr %25, i32 0, i32 3
  %26 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %27, null
  br i1 %tobool.not.i, label %if.end.i, label %do.end34.if.end56_crit_edge

do.end34.if.end56_crit_edge:                      ; preds = %do.end34
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end56

if.end.i:                                         ; preds = %do.end34
  call void @__sanitizer_cov_trace_pc() #5
  %28 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %25, align 4
  br label %if.end56

if.end56:                                         ; preds = %if.end.i, %do.end34.if.end56_crit_edge
  %retval.0.i = phi ptr [ %29, %if.end.i ], [ %27, %do.end34.if.end56_crit_edge ]
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 45, i32 noundef 9, ptr noundef nonnull @.str.1, ptr noundef %call37, ptr noundef %retval.0.i) #3
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %_wait) #3
  br label %cleanup

if.end61:                                         ; preds = %if.end56.thread, %entry.if.end61_crit_edge
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !20
  call void @arm_heavy_mb() #3
  %30 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %pri, align 4
  %add.ptr66 = getelementptr i8, ptr %31, i32 6553608
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr66, i32 33) #3, !srcloc !18
  %nr = getelementptr inbounds %struct.nv50_disp, ptr %disp, i32 0, i32 9, i32 1
  %32 = ptrtoint ptr %nr to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %nr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %cmp67485 = icmp sgt i32 %33, 0
  br i1 %cmp67485, label %if.end61.for.body_crit_edge, label %if.end61.for.end_crit_edge

if.end61.for.end_crit_edge:                       ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.end

if.end61.for.body_crit_edge:                      ; preds = %if.end61
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end61.for.body_crit_edge
  %i.0486 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %if.end61.for.body_crit_edge ]
  %34 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %pri, align 4
  %mul = shl i32 %i.0486, 11
  %add = add i32 %mul, 6406144
  %add.ptr70 = getelementptr i8, ptr %35, i32 %add
  %36 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr70) #3, !srcloc !14
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !21
  %37 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %pri, align 4
  %add.ptr78 = getelementptr i8, ptr %38, i32 6553600
  %39 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr78) #3, !srcloc !14
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !22
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !23
  call void @arm_heavy_mb() #3
  %shl = shl i32 256, %i.0486
  %or86 = or i32 %39, %shl
  %40 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %pri, align 4
  %add.ptr88 = getelementptr i8, ptr %41, i32 6553600
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr88, i32 %or86) #3, !srcloc !18
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !24
  call void @arm_heavy_mb() #3
  %42 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %pri, align 4
  %mul94 = shl i32 %i.0486, 3
  %add95 = add i32 %mul94, 6553924
  %add.ptr96 = getelementptr i8, ptr %43, i32 %add95
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr96, i32 %36) #3, !srcloc !18
  %inc = add nuw nsw i32 %i.0486, 1
  %44 = ptrtoint ptr %nr to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %nr, align 4
  %cmp67 = icmp slt i32 %inc, %45
  br i1 %cmp67, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %if.end61.for.end_crit_edge
  %head98 = getelementptr inbounds %struct.nv50_disp, ptr %disp, i32 0, i32 1, i32 2
  %46 = ptrtoint ptr %head98 to i32
  call void @__asan_load4_noabort(i32 %46)
  %.pn488 = load ptr, ptr %head98, align 4
  %cmp105.not489 = icmp eq ptr %.pn488, %head98
  br i1 %cmp105.not489, label %for.end.for.cond153.preheader_crit_edge, label %for.end.for.body108_crit_edge

for.end.for.body108_crit_edge:                    ; preds = %for.end
  br label %for.body108

for.end.for.cond153.preheader_crit_edge:          ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.cond153.preheader

for.cond153.preheader:                            ; preds = %for.body108.for.cond153.preheader_crit_edge, %for.end.for.cond153.preheader_crit_edge
  %nr154 = getelementptr inbounds %struct.nv50_disp, ptr %disp, i32 0, i32 6, i32 1
  %47 = ptrtoint ptr %nr154 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %nr154, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %48)
  %cmp155493 = icmp sgt i32 %48, 0
  br i1 %cmp155493, label %for.cond153.preheader.for.body156_crit_edge, label %for.cond153.preheader.for.cond228.preheader_crit_edge

for.cond153.preheader.for.cond228.preheader_crit_edge: ; preds = %for.cond153.preheader
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.cond228.preheader

for.cond153.preheader.for.body156_crit_edge:      ; preds = %for.cond153.preheader
  br label %for.body156

for.body108:                                      ; preds = %for.body108.for.body108_crit_edge, %for.end.for.body108_crit_edge
  %.pn490 = phi ptr [ %.pn, %for.body108.for.body108_crit_edge ], [ %.pn488, %for.end.for.body108_crit_edge ]
  %id109 = getelementptr i8, ptr %.pn490, i32 -4
  %49 = ptrtoint ptr %id109 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %id109, align 4
  %51 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %pri, align 4
  %mul112 = shl i32 %50, 11
  %add113 = add i32 %mul112, 6382336
  %add.ptr114 = getelementptr i8, ptr %52, i32 %add113
  %53 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr114) #3, !srcloc !14
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !25
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !26
  call void @arm_heavy_mb() #3
  %54 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %pri, align 4
  %mul121 = shl i32 %50, 5
  %add122 = add i32 %mul121, 6553672
  %add.ptr123 = getelementptr i8, ptr %55, i32 %add122
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr123, i32 %53) #3, !srcloc !18
  %add130 = add i32 %mul112, 6381888
  %add140 = add i32 %mul121, 6555264
  %56 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %pri, align 4
  %add.ptr132 = getelementptr i8, ptr %57, i32 %add130
  %58 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr132) #3, !srcloc !14
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !27
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !28
  call void @arm_heavy_mb() #3
  %59 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %pri, align 4
  %add.ptr142 = getelementptr i8, ptr %60, i32 %add140
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr142, i32 %58) #3, !srcloc !18
  %61 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %pri, align 4
  %add131.1 = add i32 %mul112, 6381892
  %add.ptr132.1 = getelementptr i8, ptr %62, i32 %add131.1
  %63 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr132.1) #3, !srcloc !14
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !27
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !28
  call void @arm_heavy_mb() #3
  %64 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %pri, align 4
  %add141.1 = add i32 %mul121, 6555268
  %add.ptr142.1 = getelementptr i8, ptr %65, i32 %add141.1
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr142.1, i32 %63) #3, !srcloc !18
  %66 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %pri, align 4
  %add131.2 = add i32 %mul112, 6381896
  %add.ptr132.2 = getelementptr i8, ptr %67, i32 %add131.2
  %68 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr132.2) #3, !srcloc !14
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !27
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !28
  call void @arm_heavy_mb() #3
  %69 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %pri, align 4
  %add141.2 = add i32 %mul121, 6555272
  %add.ptr142.2 = getelementptr i8, ptr %70, i32 %add141.2
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr142.2, i32 %68) #3, !srcloc !18
  %71 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %pri, align 4
  %add131.3 = add i32 %mul112, 6381900
  %add.ptr132.3 = getelementptr i8, ptr %72, i32 %add131.3
  %73 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr132.3) #3, !srcloc !14
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !27
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !28
  call void @arm_heavy_mb() #3
  %74 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %pri, align 4
  %add141.3 = add i32 %mul121, 6555276
  %add.ptr142.3 = getelementptr i8, ptr %75, i32 %add141.3
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr142.3, i32 %73) #3, !srcloc !18
  %76 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %pri, align 4
  %add131.4 = add i32 %mul112, 6381904
  %add.ptr132.4 = getelementptr i8, ptr %77, i32 %add131.4
  %78 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr132.4) #3, !srcloc !14
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !27
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !28
  call void @arm_heavy_mb() #3
  %79 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %pri, align 4
  %add141.4 = add i32 %mul121, 6555280
  %add.ptr142.4 = getelementptr i8, ptr %80, i32 %add141.4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr142.4, i32 %78) #3, !srcloc !18
  %81 = ptrtoint ptr %.pn490 to i32
  call void @__asan_load4_noabort(i32 %81)
  %.pn = load ptr, ptr %.pn490, align 4
  %cmp105.not = icmp eq ptr %.pn, %head98
  br i1 %cmp105.not, label %for.body108.for.cond153.preheader_crit_edge, label %for.body108.for.body108_crit_edge

for.body108.for.body108_crit_edge:                ; preds = %for.body108
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.body108

for.body108.for.cond153.preheader_crit_edge:      ; preds = %for.body108
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.cond153.preheader

for.cond228.preheader:                            ; preds = %for.body156.for.cond228.preheader_crit_edge, %for.cond153.preheader.for.cond228.preheader_crit_edge
  %82 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %pri, align 4
  %add.ptr235 = getelementptr i8, ptr %83, i32 6479872
  %84 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr235) #3, !srcloc !14
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !29
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !30
  call void @arm_heavy_mb() #3
  %85 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %pri, align 4
  %add.ptr244 = getelementptr i8, ptr %86, i32 6553616
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr244, i32 %84) #3, !srcloc !18
  %87 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %pri, align 4
  %add.ptr235.1 = getelementptr i8, ptr %88, i32 6479876
  %89 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr235.1) #3, !srcloc !14
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !29
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !30
  call void @arm_heavy_mb() #3
  %90 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %pri, align 4
  %add.ptr244.1 = getelementptr i8, ptr %91, i32 6553620
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr244.1, i32 %89) #3, !srcloc !18
  %92 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %pri, align 4
  %add.ptr235.2 = getelementptr i8, ptr %93, i32 6479880
  %94 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr235.2) #3, !srcloc !14
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !29
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !30
  call void @arm_heavy_mb() #3
  %95 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %pri, align 4
  %add.ptr244.2 = getelementptr i8, ptr %96, i32 6553624
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr244.2, i32 %94) #3, !srcloc !18
  %wndw.le = getelementptr inbounds %struct.nv50_disp, ptr %disp, i32 0, i32 6
  %97 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %pri, align 4
  %add.ptr253 = getelementptr i8, ptr %98, i32 6357112
  %99 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr253) #3, !srcloc !14
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !31
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !32
  call void @arm_heavy_mb() #3
  %or260 = or i32 %99, 1
  %100 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %pri, align 4
  %add.ptr262 = getelementptr i8, ptr %101, i32 6357112
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr262, i32 %or260) #3, !srcloc !18
  %inst = getelementptr inbounds %struct.nv50_disp, ptr %disp, i32 0, i32 11
  %102 = ptrtoint ptr %inst to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %inst, align 4
  %memory = getelementptr inbounds %struct.nvkm_gpuobj, ptr %103, i32 0, i32 2
  %104 = ptrtoint ptr %memory to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %memory, align 8
  %106 = ptrtoint ptr %105 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %105, align 4
  %target = getelementptr inbounds %struct.nvkm_memory_func, ptr %107, i32 0, i32 1
  %108 = ptrtoint ptr %target to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %target, align 4
  %call266 = call i32 %109(ptr noundef %105) #3
  %switch.tableidx = add i32 %call266, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %switch.tableidx)
  %110 = icmp ult i32 %switch.tableidx, 3
  br i1 %110, label %switch.lookup, label %for.cond228.preheader.do.body269_crit_edge

for.cond228.preheader.do.body269_crit_edge:       ; preds = %for.cond228.preheader
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.body269

for.body156:                                      ; preds = %for.body156.for.body156_crit_edge, %for.cond153.preheader.for.body156_crit_edge
  %i.1494 = phi i32 [ %inc226, %for.body156.for.body156_crit_edge ], [ 0, %for.cond153.preheader.for.body156_crit_edge ]
  %111 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %pri, align 4
  %add.ptr162 = getelementptr i8, ptr %112, i32 6553604
  %113 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr162) #3, !srcloc !14
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !33
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !34
  call void @arm_heavy_mb() #3
  %shl168 = shl nuw i32 1, %i.1494
  %or172 = or i32 %113, %shl168
  %114 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %pri, align 4
  %add.ptr174 = getelementptr i8, ptr %115, i32 6553604
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr174, i32 %or172) #3, !srcloc !18
  %mul181 = shl i32 %i.1494, 11
  %add182 = add i32 %mul181, 6488320
  %mul189 = shl i32 %i.1494, 5
  %add190 = add i32 %mul189, 6555520
  %116 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %pri, align 4
  %add.ptr184 = getelementptr i8, ptr %117, i32 %add182
  %118 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr184) #3, !srcloc !14
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !35
  %119 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %pri, align 4
  %add.ptr195 = getelementptr i8, ptr %120, i32 %add190
  %121 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr195) #3, !srcloc !14
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !36
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !37
  call void @arm_heavy_mb() #3
  %122 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %pri, align 4
  %add.ptr204 = getelementptr i8, ptr %123, i32 %add190
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr204, i32 %118) #3, !srcloc !18
  %124 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %pri, align 4
  %add183.1 = add i32 %mul181, 6488324
  %add.ptr184.1 = getelementptr i8, ptr %125, i32 %add183.1
  %126 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr184.1) #3, !srcloc !14
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !35
  %add191.1 = add i32 %mul189, 6555524
  %127 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %pri, align 4
  %add.ptr195.1 = getelementptr i8, ptr %128, i32 %add191.1
  %129 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr195.1) #3, !srcloc !14
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !36
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !37
  call void @arm_heavy_mb() #3
  %130 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %pri, align 4
  %add.ptr204.1 = getelementptr i8, ptr %131, i32 %add191.1
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr204.1, i32 %126) #3, !srcloc !18
  %132 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %pri, align 4
  %add183.2 = add i32 %mul181, 6488328
  %add.ptr184.2 = getelementptr i8, ptr %133, i32 %add183.2
  %134 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr184.2) #3, !srcloc !14
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !35
  %add191.2 = add i32 %mul189, 6555528
  %135 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %pri, align 4
  %add.ptr195.2 = getelementptr i8, ptr %136, i32 %add191.2
  %137 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr195.2) #3, !srcloc !14
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !36
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !37
  call void @arm_heavy_mb() #3
  %138 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %pri, align 4
  %add.ptr204.2 = getelementptr i8, ptr %139, i32 %add191.2
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr204.2, i32 %134) #3, !srcloc !18
  %140 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %pri, align 4
  %add183.3 = add i32 %mul181, 6488332
  %add.ptr184.3 = getelementptr i8, ptr %141, i32 %add183.3
  %142 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr184.3) #3, !srcloc !14
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !35
  %add191.3 = add i32 %mul189, 6555532
  %143 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %pri, align 4
  %add.ptr195.3 = getelementptr i8, ptr %144, i32 %add191.3
  %145 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr195.3) #3, !srcloc !14
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !36
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !37
  call void @arm_heavy_mb() #3
  %146 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %pri, align 4
  %add.ptr204.3 = getelementptr i8, ptr %147, i32 %add191.3
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr204.3, i32 %142) #3, !srcloc !18
  %148 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %pri, align 4
  %add183.4 = add i32 %mul181, 6488336
  %add.ptr184.4 = getelementptr i8, ptr %149, i32 %add183.4
  %150 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr184.4) #3, !srcloc !14
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !35
  %add191.4 = add i32 %mul189, 6555536
  %151 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %pri, align 4
  %add.ptr195.4 = getelementptr i8, ptr %152, i32 %add191.4
  %153 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr195.4) #3, !srcloc !14
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !36
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !37
  call void @arm_heavy_mb() #3
  %154 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %pri, align 4
  %add.ptr204.4 = getelementptr i8, ptr %155, i32 %add191.4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr204.4, i32 %150) #3, !srcloc !18
  %156 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %pri, align 4
  %add183.5 = add i32 %mul181, 6488340
  %add.ptr184.5 = getelementptr i8, ptr %157, i32 %add183.5
  %158 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr184.5) #3, !srcloc !14
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !35
  %add191.5 = add i32 %mul189, 6555540
  %159 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load ptr, ptr %pri, align 4
  %add.ptr195.5 = getelementptr i8, ptr %160, i32 %add191.5
  %161 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr195.5) #3, !srcloc !14
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !36
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !37
  call void @arm_heavy_mb() #3
  %162 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load ptr, ptr %pri, align 4
  %add.ptr204.5 = getelementptr i8, ptr %163, i32 %add191.5
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr204.5, i32 %158) #3, !srcloc !18
  %164 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load ptr, ptr %pri, align 4
  %add.ptr214 = getelementptr i8, ptr %165, i32 6553612
  %166 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr214) #3, !srcloc !14
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !38
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !39
  call void @arm_heavy_mb() #3
  %or221 = or i32 %166, 256
  %167 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load ptr, ptr %pri, align 4
  %add.ptr223 = getelementptr i8, ptr %168, i32 6553612
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr223, i32 %or221) #3, !srcloc !18
  %inc226 = add nuw nsw i32 %i.1494, 1
  %169 = ptrtoint ptr %nr154 to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load i32, ptr %nr154, align 4
  %cmp155 = icmp slt i32 %inc226, %170
  br i1 %cmp155, label %for.body156.for.body156_crit_edge, label %for.body156.for.cond228.preheader_crit_edge

for.body156.for.cond228.preheader_crit_edge:      ; preds = %for.body156
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.cond228.preheader

for.body156.for.body156_crit_edge:                ; preds = %for.body156
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.body156

switch.lookup:                                    ; preds = %for.cond228.preheader
  call void @__sanitizer_cov_trace_pc() #5
  %switch.gep = getelementptr inbounds [3 x i32], ptr @switch.table.tu102_disp_init, i32 0, i32 %switch.tableidx
  %171 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %171)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %do.body269

do.body269:                                       ; preds = %switch.lookup, %for.cond228.preheader.do.body269_crit_edge
  %tmp.6 = phi i32 [ %94, %for.cond228.preheader.do.body269_crit_edge ], [ %switch.load, %switch.lookup ]
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !40
  call void @arm_heavy_mb() #3
  %or272 = or i32 %tmp.6, 8
  %172 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load ptr, ptr %pri, align 4
  %add.ptr274 = getelementptr i8, ptr %173, i32 6357008
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr274, i32 %or272) #3, !srcloc !18
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !41
  call void @arm_heavy_mb() #3
  %174 = ptrtoint ptr %inst to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load ptr, ptr %inst, align 4
  %addr = getelementptr inbounds %struct.nvkm_gpuobj, ptr %175, i32 0, i32 4
  %176 = ptrtoint ptr %addr to i32
  call void @__asan_load8_noabort(i32 %176)
  %177 = load i64, ptr %addr, align 8
  %shr = lshr i64 %177, 16
  %conv = trunc i64 %shr to i32
  %178 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load ptr, ptr %pri, align 4
  %add.ptr280 = getelementptr i8, ptr %179, i32 6357012
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr280, i32 %conv) #3, !srcloc !18
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !42
  call void @arm_heavy_mb() #3
  %180 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load ptr, ptr %pri, align 4
  %add.ptr285 = getelementptr i8, ptr %181, i32 6364400
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr285, i32 391) #3, !srcloc !18
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !43
  call void @arm_heavy_mb() #3
  %182 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load ptr, ptr %pri, align 4
  %add.ptr290 = getelementptr i8, ptr %183, i32 6364592
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr290, i32 391) #3, !srcloc !18
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !44
  call void @arm_heavy_mb() #3
  %head294 = getelementptr inbounds %struct.nv50_disp, ptr %disp, i32 0, i32 7
  %184 = ptrtoint ptr %head294 to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load i32, ptr %head294, align 4
  %shl295 = shl i32 %185, 16
  %or296 = or i32 %shl295, 1
  %186 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load ptr, ptr %pri, align 4
  %add.ptr298 = getelementptr i8, ptr %187, i32 6364396
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr298, i32 %or296) #3, !srcloc !18
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !45
  call void @arm_heavy_mb() #3
  %188 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load ptr, ptr %pri, align 4
  %add.ptr303 = getelementptr i8, ptr %189, i32 6364588
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr303, i32 0) #3, !srcloc !18
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !46
  call void @arm_heavy_mb() #3
  %190 = ptrtoint ptr %wndw.le to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load i32, ptr %wndw.le, align 4
  %192 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load ptr, ptr %pri, align 4
  %add.ptr310 = getelementptr i8, ptr %193, i32 6364392
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr310, i32 %191) #3, !srcloc !18
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !47
  call void @arm_heavy_mb() #3
  %194 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load ptr, ptr %pri, align 4
  %add.ptr315 = getelementptr i8, ptr %195, i32 6364584
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr315, i32 0) #3, !srcloc !18
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !48
  call void @arm_heavy_mb() #3
  %196 = ptrtoint ptr %wndw.le to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load i32, ptr %wndw.le, align 4
  %198 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load ptr, ptr %pri, align 4
  %add.ptr322 = getelementptr i8, ptr %199, i32 6364388
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr322, i32 %197) #3, !srcloc !18
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !49
  call void @arm_heavy_mb() #3
  %200 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load ptr, ptr %pri, align 4
  %add.ptr327 = getelementptr i8, ptr %201, i32 6364580
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr327, i32 0) #3, !srcloc !18
  %202 = ptrtoint ptr %head98 to i32
  call void @__asan_load4_noabort(i32 %202)
  %.pn479497 = load ptr, ptr %head98, align 4
  %cmp338.not498 = icmp eq ptr %.pn479497, %head98
  br i1 %cmp338.not498, label %do.body269.do.body364_crit_edge, label %do.body269.for.body342_crit_edge

do.body269.for.body342_crit_edge:                 ; preds = %do.body269
  br label %for.body342

do.body269.do.body364_crit_edge:                  ; preds = %do.body269
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.body364

for.body342:                                      ; preds = %for.body342.for.body342_crit_edge, %do.body269.for.body342_crit_edge
  %.pn479499 = phi ptr [ %.pn479, %for.body342.for.body342_crit_edge ], [ %.pn479497, %do.body269.for.body342_crit_edge ]
  %id343 = getelementptr i8, ptr %.pn479499, i32 -4
  %203 = ptrtoint ptr %id343 to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load i32, ptr %id343, align 4
  %mul344 = shl i32 %204, 2
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !50
  call void @arm_heavy_mb() #3
  %205 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load ptr, ptr %pri, align 4
  %add349 = add i32 %mul344, 6364352
  %add.ptr350 = getelementptr i8, ptr %206, i32 %add349
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr350, i32 4) #3, !srcloc !18
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !51
  call void @arm_heavy_mb() #3
  %207 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load ptr, ptr %pri, align 4
  %add355 = add i32 %mul344, 6364544
  %add.ptr356 = getelementptr i8, ptr %208, i32 %add355
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr356, i32 0) #3, !srcloc !18
  %209 = ptrtoint ptr %.pn479499 to i32
  call void @__asan_load4_noabort(i32 %209)
  %.pn479 = load ptr, ptr %.pn479499, align 4
  %cmp338.not = icmp eq ptr %.pn479, %head98
  br i1 %cmp338.not, label %for.body342.do.body364_crit_edge, label %for.body342.for.body342_crit_edge

for.body342.for.body342_crit_edge:                ; preds = %for.body342
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.body342

for.body342.do.body364_crit_edge:                 ; preds = %for.body342
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.body364

do.body364:                                       ; preds = %for.body342.do.body364_crit_edge, %do.body269.do.body364_crit_edge
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !52
  call void @arm_heavy_mb() #3
  %210 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load ptr, ptr %pri, align 4
  %add.ptr368 = getelementptr i8, ptr %211, i32 6364404
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr368, i32 0) #3, !srcloc !18
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !53
  call void @arm_heavy_mb() #3
  %212 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load ptr, ptr %pri, align 4
  %add.ptr373 = getelementptr i8, ptr %213, i32 6364596
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr373, i32 0) #3, !srcloc !18
  br label %cleanup

cleanup:                                          ; preds = %do.body364, %if.end56
  %retval.0 = phi i32 [ 0, %do.body364 ], [ -16, %if.end56 ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_timer_wait_init(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @nvkm_timer_wait_test(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_driver_string(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @tu102_disp_new(ptr noundef %device, i32 noundef %type, i32 noundef %inst, ptr noundef %pdisp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @nv50_disp_new_(ptr noundef nonnull @tu102_disp, ptr noundef %device, i32 noundef %type, i32 noundef %inst, ptr noundef %pdisp) #3
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nv50_disp_new_(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @gv100_disp_fini(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @gv100_disp_intr(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @gv100_disp_super(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gv100_disp_wndw_cnt(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gv100_head_cnt(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gv100_head_new(ptr noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gv100_sor_cnt(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tu102_sor_new(ptr noundef, i32 noundef) #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #4 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 4)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #4 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 4)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind }
attributes #4 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #5 = { nomerge }

!llvm.asan.globals = !{!0, !2, !3}
!llvm.module.flags = !{!5, !6, !7, !8, !9, !10, !11, !12}
!llvm.ident = !{!13}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/disp/tu102.c", i32 42, i32 7}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @tu102_disp, !4, !"tu102_disp", i1 false, i1 false}
!4 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/disp/tu102.c", i32 135, i32 1}
!5 = !{i32 1, !"wchar_size", i32 2}
!6 = !{i32 1, !"min_enum_size", i32 4}
!7 = !{i32 8, !"branch-target-enforcement", i32 0}
!8 = !{i32 8, !"sign-return-address", i32 0}
!9 = !{i32 8, !"sign-return-address-all", i32 0}
!10 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!11 = !{i32 7, !"uwtable", i32 1}
!12 = !{i32 7, !"frame-pointer", i32 2}
!13 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!14 = !{i64 5392718}
!15 = !{i64 2156270607}
!16 = !{i64 2156271377}
!17 = !{i64 2156271779}
!18 = !{i64 5392300}
!19 = !{i64 2156273696}
!20 = !{i64 2156274921}
!21 = !{i64 2156275412}
!22 = !{i64 2156276192}
!23 = !{i64 2156276614}
!24 = !{i64 2156277081}
!25 = !{i64 2156280869}
!26 = !{i64 2156281227}
!27 = !{i64 2156281733}
!28 = !{i64 2156282097}
!29 = !{i64 2156286806}
!30 = !{i64 2156287160}
!31 = !{i64 2156287994}
!32 = !{i64 2156288396}
!33 = !{i64 2156282923}
!34 = !{i64 2156283309}
!35 = !{i64 2156283843}
!36 = !{i64 2156284623}
!37 = !{i64 2156285011}
!38 = !{i64 2156285877}
!39 = !{i64 2156286279}
!40 = !{i64 2156288912}
!41 = !{i64 2156289355}
!42 = !{i64 2156289780}
!43 = !{i64 2156290193}
!44 = !{i64 2156290670}
!45 = !{i64 2156291115}
!46 = !{i64 2156291538}
!47 = !{i64 2156291956}
!48 = !{i64 2156292379}
!49 = !{i64 2156292797}
!50 = !{i64 2156296518}
!51 = !{i64 2156296945}
!52 = !{i64 2156297358}
!53 = !{i64 2156297771}
