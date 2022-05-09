; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/nouveau/nvkm/subdev/therm/gk104.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/nvkm/subdev/therm/gk104.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.gk104_clkgate_engine_info = type { i32, i32, i8 }
%struct.gf100_idle_filter = type { i32, i32 }
%struct.nvkm_therm_func = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.nvkm_therm = type { ptr, %struct.nvkm_subdev, %struct.nvkm_alarm, %struct.spinlock, ptr, i32, i32, i32, %struct.nvbios_therm_sensor, ptr, %struct.anon.133, %struct.anon.134, ptr, ptr, ptr, ptr, ptr, i8 }
%struct.nvkm_subdev = type { ptr, ptr, i32, i32, [16 x i8], i32, %struct.list_head, ptr, i8 }
%struct.list_head = type { ptr, ptr }
%struct.nvkm_alarm = type { %struct.list_head, %struct.list_head, i64, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.nvbios_therm_sensor = type { i16, i16, i16, i16, i8, %struct.nvbios_therm_threshold, %struct.nvbios_therm_threshold, %struct.nvbios_therm_threshold, %struct.nvbios_therm_threshold }
%struct.nvbios_therm_threshold = type { i8, i8 }
%struct.anon.133 = type { %struct.spinlock, %struct.nvkm_alarm, [4 x i32] }
%struct.anon.134 = type { ptr, ptr }
%struct.gk104_therm = type { %struct.nvkm_therm, ptr, ptr }
%struct.nvkm_device = type { ptr, ptr, ptr, i32, i64, ptr, ptr, ptr, %struct.list_head, %struct.mutex, i32, ptr, %struct.nvkm_event, i32, ptr, i32, i32, i8, i32, %struct.anon.132, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [3 x ptr], ptr, ptr, [10 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [5 x ptr], [3 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.nvkm_event = type { ptr, i32, i32, %struct.spinlock, %struct.spinlock, %struct.list_head, ptr }
%struct.anon.132 = type { %struct.notifier_block }
%struct.notifier_block = type { ptr, ptr, i32 }

@gk104_clkgate_engine_info = dso_local constant { [9 x %struct.gk104_clkgate_engine_info], [52 x i8] } { [9 x %struct.gk104_clkgate_engine_info] [%struct.gk104_clkgate_engine_info { i32 33, i32 0, i8 0 }, %struct.gk104_clkgate_engine_info { i32 38, i32 0, i8 4 }, %struct.gk104_clkgate_engine_info { i32 39, i32 0, i8 8 }, %struct.gk104_clkgate_engine_info { i32 40, i32 0, i8 12 }, %struct.gk104_clkgate_engine_info { i32 28, i32 0, i8 16 }, %struct.gk104_clkgate_engine_info { i32 28, i32 1, i8 20 }, %struct.gk104_clkgate_engine_info { i32 37, i32 0, i8 24 }, %struct.gk104_clkgate_engine_info { i32 28, i32 2, i8 28 }, %struct.gk104_clkgate_engine_info { i32 51, i32 0, i8 0 }], [52 x i8] zeroinitializer }, align 32
@gk104_idle_filter = dso_local constant { %struct.gf100_idle_filter, [24 x i8] } { %struct.gf100_idle_filter { i32 4096, i32 4096 }, [24 x i8] zeroinitializer }, align 32
@gk104_therm_func = internal constant { %struct.nvkm_therm_func, [44 x i8] } { %struct.nvkm_therm_func { ptr @gf119_therm_init, ptr @g84_therm_fini, ptr null, ptr @gf119_fan_pwm_ctrl, ptr @gf119_fan_pwm_get, ptr @gf119_fan_pwm_set, ptr @gf119_fan_pwm_clock, ptr @g84_temp_get, ptr @gt215_therm_fan_sense, ptr @nvkm_therm_program_alarms_polling, ptr @gf100_clkgate_init, ptr @gk104_clkgate_enable, ptr @gk104_clkgate_fini }, [44 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@___asan_gen_.1 = private unnamed_addr constant [26 x i8] c"gk104_clkgate_engine_info\00", align 1
@___asan_gen_.3 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.8, i32 75, i32 40 }
@___asan_gen_.4 = private unnamed_addr constant [18 x i8] c"gk104_idle_filter\00", align 1
@___asan_gen_.6 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.8, i32 87, i32 32 }
@___asan_gen_.7 = private unnamed_addr constant [17 x i8] c"gk104_therm_func\00", align 1
@___asan_gen_.8 = private constant [53 x i8] c"../drivers/gpu/drm/nouveau/nvkm/subdev/therm/gk104.c\00", align 1
@___asan_gen_.9 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.8, i32 93, i32 1 }
@llvm.compiler.used = appending global [3 x ptr] [ptr @gk104_clkgate_engine_info, ptr @gk104_idle_filter, ptr @gk104_therm_func], section "llvm.metadata"
@0 = internal global [3 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gk104_clkgate_engine_info to i32), i32 108, i32 160, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gk104_idle_filter to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gk104_therm_func to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @gk104_clkgate_enable(ptr nocapture noundef readonly %base) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %device = getelementptr inbounds %struct.nvkm_therm, ptr %base, i32 0, i32 1, i32 1
  %0 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device, align 4
  %clkgate_order = getelementptr inbounds %struct.gk104_therm, ptr %base, i32 0, i32 1
  %2 = ptrtoint ptr %clkgate_order to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %clkgate_order, align 8
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 51, i32 %5)
  %cmp.not91 = icmp eq i32 %5, 51
  br i1 %cmp.not91, label %entry.do.body12_crit_edge, label %for.body.lr.ph

entry.do.body12_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.body12

for.body.lr.ph:                                   ; preds = %entry
  %pri = getelementptr inbounds %struct.nvkm_device, ptr %1, i32 0, i32 11
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %6 = phi i32 [ %5, %for.body.lr.ph ], [ %17, %for.inc.for.body_crit_edge ]
  %i.092 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %inst = getelementptr %struct.gk104_clkgate_engine_info, ptr %3, i32 %i.092, i32 1
  %7 = ptrtoint ptr %inst to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %inst, align 4
  %call = tail call ptr @nvkm_device_subdev(ptr noundef %1, i32 noundef %6, i32 noundef %8) #3
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %for.body.for.inc_crit_edge, label %if.end

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.inc

if.end:                                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #5
  %offset = getelementptr %struct.gk104_clkgate_engine_info, ptr %3, i32 %i.092, i32 2
  %9 = ptrtoint ptr %offset to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %offset, align 4
  %conv = zext i8 %10 to i32
  %add = or i32 %conv, 131584
  %11 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %pri, align 4
  %add.ptr6 = getelementptr i8, ptr %12, i32 %add
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr6) #3, !srcloc !15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !17
  tail call void @arm_heavy_mb() #3
  %and = and i32 %13, -65281
  %or = or i32 %and, 17664
  %14 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %pri, align 4
  %add.ptr10 = getelementptr i8, ptr %15, i32 %add
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr10, i32 %or) #3, !srcloc !18
  br label %for.inc

for.inc:                                          ; preds = %if.end, %for.body.for.inc_crit_edge
  %inc = add i32 %i.092, 1
  %arrayidx = getelementptr %struct.gk104_clkgate_engine_info, ptr %3, i32 %inc
  %16 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx, align 4
  %cmp.not = icmp eq i32 %17, 51
  br i1 %cmp.not, label %for.inc.do.body12_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.body

for.inc.do.body12_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.body12

do.body12:                                        ; preds = %for.inc.do.body12_crit_edge, %entry.do.body12_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !19
  tail call void @arm_heavy_mb() #3
  %idle_filter = getelementptr inbounds %struct.gk104_therm, ptr %base, i32 0, i32 2
  %18 = ptrtoint ptr %idle_filter to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %idle_filter, align 4
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %19, align 4
  %pri15 = getelementptr inbounds %struct.nvkm_device, ptr %1, i32 0, i32 11
  %22 = ptrtoint ptr %pri15 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %pri15, align 4
  %add.ptr16 = getelementptr i8, ptr %23, i32 131720
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr16, i32 %21) #3, !srcloc !18
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !20
  tail call void @arm_heavy_mb() #3
  %24 = ptrtoint ptr %idle_filter to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %idle_filter, align 4
  %hubmmu = getelementptr inbounds %struct.gf100_idle_filter, ptr %25, i32 0, i32 1
  %26 = ptrtoint ptr %hubmmu to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %hubmmu, align 4
  %28 = ptrtoint ptr %pri15 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %pri15, align 4
  %add.ptr22 = getelementptr i8, ptr %29, i32 131724
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr22, i32 %27) #3, !srcloc !18
  %30 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 51, i32 %31)
  %cmp26.not94 = icmp eq i32 %31, 51
  br i1 %cmp26.not94, label %do.body12.for.end59_crit_edge, label %do.body12.for.body28_crit_edge

do.body12.for.body28_crit_edge:                   ; preds = %do.body12
  br label %for.body28

do.body12.for.end59_crit_edge:                    ; preds = %do.body12
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.end59

for.body28:                                       ; preds = %for.inc57.for.body28_crit_edge, %do.body12.for.body28_crit_edge
  %32 = phi i32 [ %43, %for.inc57.for.body28_crit_edge ], [ %31, %do.body12.for.body28_crit_edge ]
  %i.195 = phi i32 [ %inc58, %for.inc57.for.body28_crit_edge ], [ 0, %do.body12.for.body28_crit_edge ]
  %inst32 = getelementptr %struct.gk104_clkgate_engine_info, ptr %3, i32 %i.195, i32 1
  %33 = ptrtoint ptr %inst32 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %inst32, align 4
  %call33 = tail call ptr @nvkm_device_subdev(ptr noundef %1, i32 noundef %32, i32 noundef %34) #3
  %tobool34.not = icmp eq ptr %call33, null
  br i1 %tobool34.not, label %for.body28.for.inc57_crit_edge, label %if.end36

for.body28.for.inc57_crit_edge:                   ; preds = %for.body28
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.inc57

if.end36:                                         ; preds = %for.body28
  call void @__sanitizer_cov_trace_pc() #5
  %offset40 = getelementptr %struct.gk104_clkgate_engine_info, ptr %3, i32 %i.195, i32 2
  %35 = ptrtoint ptr %offset40 to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %offset40, align 4
  %conv41 = zext i8 %36 to i32
  %add42 = or i32 %conv41, 131584
  %37 = ptrtoint ptr %pri15 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %pri15, align 4
  %add.ptr46 = getelementptr i8, ptr %38, i32 %add42
  %39 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr46) #3, !srcloc !15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !21
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !22
  tail call void @arm_heavy_mb() #3
  %and52 = and i32 %39, -256
  %or53 = or i32 %and52, 69
  %40 = ptrtoint ptr %pri15 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %pri15, align 4
  %add.ptr55 = getelementptr i8, ptr %41, i32 %add42
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr55, i32 %or53) #3, !srcloc !18
  br label %for.inc57

for.inc57:                                        ; preds = %if.end36, %for.body28.for.inc57_crit_edge
  %inc58 = add i32 %i.195, 1
  %arrayidx24 = getelementptr %struct.gk104_clkgate_engine_info, ptr %3, i32 %inc58
  %42 = ptrtoint ptr %arrayidx24 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %arrayidx24, align 4
  %cmp26.not = icmp eq i32 %43, 51
  br i1 %cmp26.not, label %for.inc57.for.end59_crit_edge, label %for.inc57.for.body28_crit_edge

for.inc57.for.body28_crit_edge:                   ; preds = %for.inc57
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.body28

for.inc57.for.end59_crit_edge:                    ; preds = %for.inc57
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.end59

for.end59:                                        ; preds = %for.inc57.for.end59_crit_edge, %do.body12.for.end59_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nvkm_device_subdev(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @gk104_clkgate_fini(ptr nocapture noundef readonly %base, i1 zeroext %suspend) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %device = getelementptr inbounds %struct.nvkm_therm, ptr %base, i32 0, i32 1, i32 1
  %0 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device, align 4
  %clkgate_order = getelementptr inbounds %struct.gk104_therm, ptr %base, i32 0, i32 1
  %2 = ptrtoint ptr %clkgate_order to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %clkgate_order, align 8
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 51, i32 %5)
  %cmp.not24 = icmp eq i32 %5, 51
  br i1 %cmp.not24, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %pri = getelementptr inbounds %struct.nvkm_device, ptr %1, i32 0, i32 11
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %6 = phi i32 [ %5, %for.body.lr.ph ], [ %17, %for.inc.for.body_crit_edge ]
  %i.025 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %inst = getelementptr %struct.gk104_clkgate_engine_info, ptr %3, i32 %i.025, i32 1
  %7 = ptrtoint ptr %inst to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %inst, align 4
  %call = tail call ptr @nvkm_device_subdev(ptr noundef %1, i32 noundef %6, i32 noundef %8) #3
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %for.body.for.inc_crit_edge, label %if.end

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.inc

if.end:                                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #5
  %offset = getelementptr %struct.gk104_clkgate_engine_info, ptr %3, i32 %i.025, i32 2
  %9 = ptrtoint ptr %offset to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %offset, align 4
  %conv = zext i8 %10 to i32
  %add = or i32 %conv, 131584
  %11 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %pri, align 4
  %add.ptr6 = getelementptr i8, ptr %12, i32 %add
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr6) #3, !srcloc !15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !23
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !24
  tail call void @arm_heavy_mb() #3
  %and = and i32 %13, -256
  %or = or i32 %and, 84
  %14 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %pri, align 4
  %add.ptr10 = getelementptr i8, ptr %15, i32 %add
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr10, i32 %or) #3, !srcloc !18
  br label %for.inc

for.inc:                                          ; preds = %if.end, %for.body.for.inc_crit_edge
  %inc = add i32 %i.025, 1
  %arrayidx = getelementptr %struct.gk104_clkgate_engine_info, ptr %3, i32 %inc
  %16 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx, align 4
  %cmp.not = icmp eq i32 %17, 51
  br i1 %cmp.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @gk104_therm_new(ptr noundef %device, i32 noundef %type, i32 noundef %inst, ptr nocapture noundef writeonly %ptherm) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 312) #6
  %tobool.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i, label %entry.gk104_therm_new_.exit_crit_edge, label %if.end.i

entry.gk104_therm_new_.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %gk104_therm_new_.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  tail call void @nvkm_therm_ctor(ptr noundef nonnull %call7.i.i.i, ptr noundef %device, i32 noundef %type, i32 noundef %inst, ptr noundef nonnull @gk104_therm_func) #3
  %1 = ptrtoint ptr %ptherm to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call7.i.i.i, ptr %ptherm, align 4
  %clkgate_order2.i = getelementptr inbounds %struct.gk104_therm, ptr %call7.i.i.i, i32 0, i32 1
  %2 = ptrtoint ptr %clkgate_order2.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @gk104_clkgate_engine_info, ptr %clkgate_order2.i, align 8
  %idle_filter3.i = getelementptr inbounds %struct.gk104_therm, ptr %call7.i.i.i, i32 0, i32 2
  %3 = ptrtoint ptr %idle_filter3.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @gk104_idle_filter, ptr %idle_filter3.i, align 4
  br label %gk104_therm_new_.exit

gk104_therm_new_.exit:                            ; preds = %if.end.i, %entry.gk104_therm_new_.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %if.end.i ], [ -12, %entry.gk104_therm_new_.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_therm_ctor(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @gf119_therm_init(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @g84_therm_fini(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gf119_fan_pwm_ctrl(ptr noundef, i32 noundef, i1 noundef zeroext) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gf119_fan_pwm_get(ptr noundef, i32 noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gf119_fan_pwm_set(ptr noundef, i32 noundef, i32 noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gf119_fan_pwm_clock(ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @g84_temp_get(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gt215_therm_fan_sense(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_therm_program_alarms_polling(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gf100_clkgate_init(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #4 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 3)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #4 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 3)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind }
attributes #4 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #5 = { nomerge }
attributes #6 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4}
!llvm.module.flags = !{!6, !7, !8, !9, !10, !11, !12, !13}
!llvm.ident = !{!14}

!0 = !{ptr @gk104_clkgate_engine_info, !1, !"gk104_clkgate_engine_info", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/therm/gk104.c", i32 75, i32 40}
!2 = !{ptr @gk104_idle_filter, !3, !"gk104_idle_filter", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/therm/gk104.c", i32 87, i32 32}
!4 = !{ptr @gk104_therm_func, !5, !"gk104_therm_func", i1 false, i1 false}
!5 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/therm/gk104.c", i32 93, i32 1}
!6 = !{i32 1, !"wchar_size", i32 2}
!7 = !{i32 1, !"min_enum_size", i32 4}
!8 = !{i32 8, !"branch-target-enforcement", i32 0}
!9 = !{i32 8, !"sign-return-address", i32 0}
!10 = !{i32 8, !"sign-return-address-all", i32 0}
!11 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!12 = !{i32 7, !"uwtable", i32 1}
!13 = !{i32 7, !"frame-pointer", i32 2}
!14 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!15 = !{i64 5381746}
!16 = !{i64 2156242038}
!17 = !{i64 2156242424}
!18 = !{i64 5381328}
!19 = !{i64 2156242883}
!20 = !{i64 2156243336}
!21 = !{i64 2156244199}
!22 = !{i64 2156244585}
!23 = !{i64 2156246709}
!24 = !{i64 2156247087}
