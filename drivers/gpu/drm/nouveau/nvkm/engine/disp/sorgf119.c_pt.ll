; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/nouveau/nvkm/engine/disp/sorgf119.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/nvkm/engine/disp/sorgf119.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.nvkm_ior_func = type { %struct.anon, ptr, ptr, ptr, ptr, ptr, ptr, %struct.anon.145, %struct.anon.146, %struct.anon.147 }
%struct.anon = type { ptr, ptr }
%struct.anon.145 = type { ptr, ptr }
%struct.anon.146 = type { [4 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.anon.147 = type { ptr, ptr, ptr }
%struct.nvkm_ior = type { ptr, ptr, i32, i32, [8 x i8], %struct.list_head, i8, %struct.nvkm_ior_state, %struct.nvkm_ior_state, %struct.anon.148, %struct.anon.149 }
%struct.list_head = type { ptr, ptr }
%struct.nvkm_ior_state = type { ptr, i32, i24 }
%struct.anon.148 = type { i8, i8, i8, i8 }
%struct.anon.149 = type { i8 }
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

@.str = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"drivers/gpu/drm/nouveau/nvkm/engine/disp/sorgf119.c\00", [44 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"%s %s: timeout\0A\00", [16 x i8] zeroinitializer }, align 32
@gf119_sor = internal constant { %struct.nvkm_ior_func, [36 x i8] } { %struct.nvkm_ior_func { %struct.anon zeroinitializer, ptr @gf119_sor_state, ptr @nv50_sor_power, ptr null, ptr @gf119_sor_clock, ptr null, ptr null, %struct.anon.145 { ptr @gf119_hdmi_ctrl, ptr null }, %struct.anon.146 { [4 x i8] c"\02\01\00\03", ptr @gf119_sor_dp_links, ptr @g94_sor_dp_power, ptr @gf119_sor_dp_pattern, ptr @gf119_sor_dp_drive, ptr @gf119_sor_dp_vcpi, ptr @gf119_sor_dp_audio, ptr @gf119_sor_dp_audio_sym, ptr null, ptr @gf119_sor_dp_watermark }, %struct.anon.147 { ptr @gf119_hda_hpd, ptr @gf119_hda_eld, ptr @gf119_hda_device_entry } }, [36 x i8] zeroinitializer }, align 32
@switch.table.gf119_sor_state = internal constant { [10 x i32], [56 x i8] } { [10 x i32] [i32 -260046849, i32 -260046849, i32 -260046849, i32 -234881025, i32 -234881025, i32 -260046849, i32 -234881025, i32 -234881025, i32 -260046849, i32 -260046849], [56 x i8] zeroinitializer }, align 32
@switch.table.gf119_sor_state.2 = internal constant { [10 x i32], [56 x i8] } { [10 x i32] [i32 109051904, i32 75497472, i32 83886080, i32 167772160, i32 167772160, i32 92274688, i32 167772160, i32 167772160, i32 142606336, i32 150994944], [56 x i8] zeroinitializer }, align 32
@___asan_gen_.6 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.8 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.10, i32 53, i32 2 }
@___asan_gen_.9 = private unnamed_addr constant [10 x i8] c"gf119_sor\00", align 1
@___asan_gen_.10 = private constant [55 x i8] c"../drivers/gpu/drm/nouveau/nvkm/engine/disp/sorgf119.c\00", align 1
@___asan_gen_.11 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.10, i32 159, i32 1 }
@___asan_gen_.12 = private unnamed_addr constant [29 x i8] c"switch.table.gf119_sor_state\00", align 1
@___asan_gen_.13 = private unnamed_addr constant [31 x i8] c"switch.table.gf119_sor_state.2\00", align 1
@llvm.compiler.used = appending global [5 x ptr] [ptr @.str, ptr @.str.1, ptr @gf119_sor, ptr @switch.table.gf119_sor_state, ptr @switch.table.gf119_sor_state.2], section "llvm.metadata"
@0 = internal global [5 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gf119_sor to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.gf119_sor_state to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.gf119_sor_state.2 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @gf119_sor_dp_watermark(ptr nocapture noundef readonly %sor, i32 noundef %head, i8 noundef zeroext %watermark) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %disp = getelementptr inbounds %struct.nvkm_ior, ptr %sor, i32 0, i32 1
  %0 = ptrtoint ptr %disp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %disp, align 4
  %device1 = getelementptr inbounds %struct.nvkm_disp, ptr %1, i32 0, i32 1, i32 1, i32 1
  %2 = ptrtoint ptr %device1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %device1, align 4
  %mul = shl i32 %head, 11
  %add = add i32 %mul, 6383120
  %pri = getelementptr inbounds %struct.nvkm_device, ptr %3, i32 0, i32 11
  %4 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pri, align 4
  %add.ptr = getelementptr i8, ptr %5, i32 %add
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #3, !srcloc !14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !16
  tail call void @arm_heavy_mb() #3
  %and = and i32 %6, -134217792
  %conv = zext i8 %watermark to i32
  %or = or i32 %and, %conv
  %or2 = or i32 %or, 134217728
  %7 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %pri, align 4
  %add.ptr4 = getelementptr i8, ptr %8, i32 %add
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4, i32 %or2) #3, !srcloc !17
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @gf119_sor_dp_audio_sym(ptr nocapture noundef readonly %sor, i32 noundef %head, i16 noundef zeroext %h, i32 noundef %v) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %disp = getelementptr inbounds %struct.nvkm_ior, ptr %sor, i32 0, i32 1
  %0 = ptrtoint ptr %disp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %disp, align 4
  %device1 = getelementptr inbounds %struct.nvkm_disp, ptr %1, i32 0, i32 1, i32 1, i32 1
  %2 = ptrtoint ptr %device1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %device1, align 4
  %mul = shl i32 %head, 11
  %add = add i32 %mul, 6383136
  %pri = getelementptr inbounds %struct.nvkm_device, ptr %3, i32 0, i32 11
  %4 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pri, align 4
  %add.ptr = getelementptr i8, ptr %5, i32 %add
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #3, !srcloc !14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !18
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !19
  tail call void @arm_heavy_mb() #3
  %and = and i32 %6, -65536
  %conv = zext i16 %h to i32
  %or = or i32 %and, %conv
  %7 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %pri, align 4
  %add.ptr3 = getelementptr i8, ptr %8, i32 %add
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3, i32 %or) #3, !srcloc !17
  %add7 = add i32 %mul, 6383140
  %9 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %pri, align 4
  %add.ptr11 = getelementptr i8, ptr %10, i32 %add7
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr11) #3, !srcloc !14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !20
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !21
  tail call void @arm_heavy_mb() #3
  %and17 = and i32 %11, -16777216
  %or18 = or i32 %and17, %v
  %12 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %pri, align 4
  %add.ptr20 = getelementptr i8, ptr %13, i32 %add7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr20, i32 %or18) #3, !srcloc !17
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @gf119_sor_dp_audio(ptr nocapture noundef readonly %sor, i32 noundef %head, i1 noundef zeroext %enable) #0 align 64 {
entry:
  %_wait = alloca %struct.nvkm_timer_wait, align 8
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %disp = getelementptr inbounds %struct.nvkm_ior, ptr %sor, i32 0, i32 1
  %0 = ptrtoint ptr %disp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %disp, align 4
  %device1 = getelementptr inbounds %struct.nvkm_disp, ptr %1, i32 0, i32 1, i32 1, i32 1
  %2 = ptrtoint ptr %device1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %device1, align 4
  %mul = shl i32 %head, 11
  %conv = zext i1 %enable to i32
  %add = add i32 %mul, 6383128
  %pri = getelementptr inbounds %struct.nvkm_device, ptr %3, i32 0, i32 11
  %4 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pri, align 4
  %add.ptr = getelementptr i8, ptr %5, i32 %add
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #3, !srcloc !14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !22
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !23
  tail call void @arm_heavy_mb() #3
  %and = and i32 %6, 2147483634
  %or = or i32 %and, %conv
  %or3 = or i32 %or, -2147483648
  %7 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %pri, align 4
  %add.ptr5 = getelementptr i8, ptr %8, i32 %add
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5, i32 %or3) #3, !srcloc !17
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %_wait) #3
  %9 = call ptr @memset(ptr %_wait, i32 255, i32 40)
  call void @nvkm_timer_wait_init(ptr noundef %3, i64 noundef 2000000000, ptr noundef nonnull %_wait) #3
  br label %do.body7

do.body7:                                         ; preds = %do.cond16.do.body7_crit_edge, %entry
  %10 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pri, align 4
  %add.ptr11 = getelementptr i8, ptr %11, i32 %add
  %12 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr11) #3, !srcloc !14
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !24
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %12)
  %tobool15.not = icmp sgt i32 %12, -1
  br i1 %tobool15.not, label %do.body7.if.end54_crit_edge, label %do.cond16

do.body7.if.end54_crit_edge:                      ; preds = %do.body7
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end54

do.cond16:                                        ; preds = %do.body7
  %call17 = call i64 @nvkm_timer_wait_test(ptr noundef nonnull %_wait) #3
  %cmp = icmp sgt i64 %call17, -1
  br i1 %cmp, label %do.cond16.do.body7_crit_edge, label %do.end32

do.cond16.do.body7_crit_edge:                     ; preds = %do.cond16
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.body7

do.end32:                                         ; preds = %do.cond16
  %13 = ptrtoint ptr %_wait to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %_wait, align 8
  %device34 = getelementptr inbounds %struct.nvkm_timer, ptr %14, i32 0, i32 1, i32 1
  %15 = ptrtoint ptr %device34 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %device34, align 4
  %dev = getelementptr inbounds %struct.nvkm_device, ptr %16, i32 0, i32 2
  %17 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dev, align 8
  %call35 = call ptr @dev_driver_string(ptr noundef %18) #3
  %19 = ptrtoint ptr %_wait to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %_wait, align 8
  %device38 = getelementptr inbounds %struct.nvkm_timer, ptr %20, i32 0, i32 1, i32 1
  %21 = ptrtoint ptr %device38 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %device38, align 4
  %dev39 = getelementptr inbounds %struct.nvkm_device, ptr %22, i32 0, i32 2
  %23 = ptrtoint ptr %dev39 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %dev39, align 8
  %init_name.i = getelementptr inbounds %struct.device, ptr %24, i32 0, i32 3
  %25 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %26, null
  br i1 %tobool.not.i, label %if.end.i, label %do.end32.dev_name.exit_crit_edge

do.end32.dev_name.exit_crit_edge:                 ; preds = %do.end32
  call void @__sanitizer_cov_trace_pc() #5
  br label %dev_name.exit

if.end.i:                                         ; preds = %do.end32
  call void @__sanitizer_cov_trace_pc() #5
  %27 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %24, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %do.end32.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %28, %if.end.i ], [ %26, %do.end32.dev_name.exit_crit_edge ]
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 56, i32 noundef 9, ptr noundef nonnull @.str.1, ptr noundef %call35, ptr noundef %retval.0.i) #3
  br label %if.end54

if.end54:                                         ; preds = %dev_name.exit, %do.body7.if.end54_crit_edge
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %_wait) #3
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_timer_wait_init(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @nvkm_timer_wait_test(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_driver_string(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @gf119_sor_dp_vcpi(ptr nocapture noundef readonly %sor, i32 noundef %head, i8 noundef zeroext %slot, i8 noundef zeroext %slot_nr, i16 noundef zeroext %pbn, i16 noundef zeroext %aligned) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %disp = getelementptr inbounds %struct.nvkm_ior, ptr %sor, i32 0, i32 1
  %0 = ptrtoint ptr %disp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %disp, align 4
  %device1 = getelementptr inbounds %struct.nvkm_disp, ptr %1, i32 0, i32 1, i32 1, i32 1
  %2 = ptrtoint ptr %device1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %device1, align 4
  %mul = shl i32 %head, 11
  %add = add i32 %mul, 6382984
  %pri = getelementptr inbounds %struct.nvkm_device, ptr %3, i32 0, i32 11
  %4 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pri, align 4
  %add.ptr = getelementptr i8, ptr %5, i32 %add
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #3, !srcloc !14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !25
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !26
  tail call void @arm_heavy_mb() #3
  %and = and i32 %6, -16192
  %conv = zext i8 %slot_nr to i32
  %shl = shl nuw nsw i32 %conv, 8
  %conv2 = zext i8 %slot to i32
  %or = or i32 %shl, %conv2
  %or3 = or i32 %and, %or
  %7 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %pri, align 4
  %add.ptr5 = getelementptr i8, ptr %8, i32 %add
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5, i32 %or3) #3, !srcloc !17
  %add9 = add i32 %mul, 6382988
  %9 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %pri, align 4
  %add.ptr13 = getelementptr i8, ptr %10, i32 %add9
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr13) #3, !srcloc !14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !27
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !28
  tail call void @arm_heavy_mb() #3
  %conv20 = zext i16 %aligned to i32
  %shl21 = shl nuw i32 %conv20, 16
  %conv22 = zext i16 %pbn to i32
  %or23 = or i32 %shl21, %conv22
  %12 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %pri, align 4
  %add.ptr26 = getelementptr i8, ptr %13, i32 %add9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr26, i32 %or23) #3, !srcloc !17
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @gf119_sor_dp_drive(ptr nocapture noundef readonly %sor, i32 noundef %ln, i32 noundef %pc, i32 noundef %dc, i32 noundef %pe, i32 noundef %pu) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %disp = getelementptr inbounds %struct.nvkm_ior, ptr %sor, i32 0, i32 1
  %0 = ptrtoint ptr %disp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %disp, align 4
  %device1 = getelementptr inbounds %struct.nvkm_disp, ptr %1, i32 0, i32 1, i32 1, i32 1
  %2 = ptrtoint ptr %device1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %device1, align 4
  %id.i.i = getelementptr inbounds %struct.nvkm_ior, ptr %sor, i32 0, i32 3
  %4 = ptrtoint ptr %id.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %id.i.i, align 4
  %mul.i.i = shl i32 %5, 11
  %link.i = getelementptr inbounds %struct.nvkm_ior, ptr %sor, i32 0, i32 8, i32 2
  %6 = ptrtoint ptr %link.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %bf.load.i = load i32, ptr %link.i, align 4
  %7 = and i32 %bf.load.i, 25165824
  call void @__sanitizer_cov_trace_const_cmp4(i32 16777216, i32 %7)
  %cmp.i = icmp eq i32 %7, 16777216
  %mul.i = select i1 %cmp.i, i32 128, i32 0
  %add.i = or i32 %mul.i, %mul.i.i
  %8 = ptrtoint ptr %sor to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %sor, align 4
  %dp = getelementptr inbounds %struct.nvkm_ior_func, ptr %9, i32 0, i32 8
  %arrayidx = getelementptr [4 x i8], ptr %dp, i32 0, i32 %ln
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx, align 1
  %pri = getelementptr inbounds %struct.nvkm_device, ptr %3, i32 0, i32 11
  %12 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %pri, align 4
  %add = add i32 %add.i, 6406424
  %add.ptr = getelementptr i8, ptr %13, i32 %add
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #3, !srcloc !14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !29
  %15 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %pri, align 4
  %add6 = add i32 %add.i, 6406432
  %add.ptr7 = getelementptr i8, ptr %16, i32 %add6
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr7) #3, !srcloc !14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !30
  %18 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %pri, align 4
  %add16 = add i32 %add.i, 6406448
  %add.ptr17 = getelementptr i8, ptr %19, i32 %add16
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr17) #3, !srcloc !14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !31
  %and22 = and i32 %20, 65280
  %shl23 = shl i32 %pu, 8
  call void @__sanitizer_cov_trace_cmp4(i32 %and22, i32 %shl23)
  %cmp = icmp ult i32 %and22, %shl23
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ln)
  %cmp25 = icmp eq i32 %ln, 0
  %or.cond = or i1 %cmp25, %cmp
  %and28 = and i32 %20, -65281
  %or = or i32 %and28, %shl23
  %data.sroa.8.0 = select i1 %or.cond, i32 %or, i32 %20
  %conv = zext i8 %11 to i32
  %mul = shl nuw nsw i32 %conv, 3
  %shl = shl i32 255, %mul
  %neg = xor i32 %shl, -1
  %and12 = and i32 %17, %neg
  %and = and i32 %14, %neg
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !32
  tail call void @arm_heavy_mb() #3
  %shl32 = shl i32 %dc, %mul
  %or33 = or i32 %and, %shl32
  %21 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %pri, align 4
  %add.ptr36 = getelementptr i8, ptr %22, i32 %add
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr36, i32 %or33) #3, !srcloc !17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !33
  tail call void @arm_heavy_mb() #3
  %shl41 = shl i32 %pe, %mul
  %or42 = or i32 %and12, %shl41
  %23 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %pri, align 4
  %add.ptr45 = getelementptr i8, ptr %24, i32 %add6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr45, i32 %or42) #3, !srcloc !17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !34
  tail call void @arm_heavy_mb() #3
  %25 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %pri, align 4
  %add.ptr52 = getelementptr i8, ptr %26, i32 %add16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr52, i32 %data.sroa.8.0) #3, !srcloc !17
  %27 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %pri, align 4
  %add55 = add i32 %add.i, 6406460
  %add.ptr56 = getelementptr i8, ptr %28, i32 %add55
  %29 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr56) #3, !srcloc !14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !35
  %and61 = and i32 %29, %neg
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !36
  tail call void @arm_heavy_mb() #3
  %shl67 = shl i32 %pc, %mul
  %or68 = or i32 %and61, %shl67
  %30 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %pri, align 4
  %add.ptr71 = getelementptr i8, ptr %31, i32 %add55
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr71, i32 %or68) #3, !srcloc !17
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @gf119_sor_dp_pattern(ptr nocapture noundef readonly %sor, i32 noundef %pattern) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %disp = getelementptr inbounds %struct.nvkm_ior, ptr %sor, i32 0, i32 1
  %0 = ptrtoint ptr %disp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %disp, align 4
  %device1 = getelementptr inbounds %struct.nvkm_disp, ptr %1, i32 0, i32 1, i32 1, i32 1
  %2 = ptrtoint ptr %device1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %device1, align 4
  %id.i = getelementptr inbounds %struct.nvkm_ior, ptr %sor, i32 0, i32 3
  %4 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %id.i, align 4
  %mul.i = shl i32 %5, 11
  %add = add i32 %mul.i, 6406416
  %pri = getelementptr inbounds %struct.nvkm_device, ptr %3, i32 0, i32 11
  %6 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pri, align 4
  %add.ptr = getelementptr i8, ptr %7, i32 %add
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #3, !srcloc !14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !37
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !38
  tail call void @arm_heavy_mb() #3
  %and = and i32 %8, -252645136
  %mul = mul i32 %pattern, 16843009
  %or = or i32 %and, %mul
  %9 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %pri, align 4
  %add.ptr4 = getelementptr i8, ptr %10, i32 %add
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4, i32 %or) #3, !srcloc !17
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @gf119_sor_dp_links(ptr nocapture noundef readonly %sor, ptr nocapture readnone %aux) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %disp = getelementptr inbounds %struct.nvkm_ior, ptr %sor, i32 0, i32 1
  %0 = ptrtoint ptr %disp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %disp, align 4
  %device1 = getelementptr inbounds %struct.nvkm_disp, ptr %1, i32 0, i32 1, i32 1, i32 1
  %2 = ptrtoint ptr %device1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %device1, align 4
  %id.i = getelementptr inbounds %struct.nvkm_ior, ptr %sor, i32 0, i32 3
  %4 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %id.i, align 4
  %mul.i = shl i32 %5, 11
  %link.i = getelementptr inbounds %struct.nvkm_ior, ptr %sor, i32 0, i32 8, i32 2
  %6 = ptrtoint ptr %link.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %bf.load.i = load i32, ptr %link.i, align 4
  %7 = and i32 %bf.load.i, 25165824
  call void @__sanitizer_cov_trace_const_cmp4(i32 16777216, i32 %7)
  %cmp.i = icmp eq i32 %7, 16777216
  %mul.i54 = select i1 %cmp.i, i32 128, i32 0
  %add.i = or i32 %mul.i54, %mul.i
  %dp = getelementptr inbounds %struct.nvkm_ior, ptr %sor, i32 0, i32 9
  %bw = getelementptr inbounds %struct.nvkm_ior, ptr %sor, i32 0, i32 9, i32 3
  %8 = ptrtoint ptr %bw to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %bw, align 1
  %nr = getelementptr inbounds %struct.nvkm_ior, ptr %sor, i32 0, i32 9, i32 2
  %10 = ptrtoint ptr %nr to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %nr, align 2
  %conv4 = zext i8 %11 to i32
  %notmask = shl nsw i32 -1, %conv4
  %sub = xor i32 %notmask, -1
  %shl6 = shl i32 %sub, 16
  %12 = ptrtoint ptr %dp to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %dp, align 4, !range !39
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool.not = icmp eq i8 %13, 0
  %or9 = or i32 %shl6, 1073741824
  %spec.select = select i1 %tobool.not, i32 %shl6, i32 %or9
  %ef = getelementptr inbounds %struct.nvkm_ior, ptr %sor, i32 0, i32 9, i32 1
  %14 = ptrtoint ptr %ef to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %ef, align 1, !range !39
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool11.not = icmp eq i8 %15, 0
  %or13 = or i32 %spec.select, 16384
  %dpctrl.1 = select i1 %tobool11.not, i32 %spec.select, i32 %or13
  %conv = zext i8 %9 to i32
  %shl = shl nuw nsw i32 %conv, 18
  %add = add i32 %mul.i, 6365952
  %pri = getelementptr inbounds %struct.nvkm_device, ptr %3, i32 0, i32 11
  %16 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %pri, align 4
  %add.ptr = getelementptr i8, ptr %17, i32 %add
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #3, !srcloc !14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !40
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !41
  tail call void @arm_heavy_mb() #3
  %and = and i32 %18, -8126465
  %or16 = or i32 %and, %shl
  %19 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %pri, align 4
  %add.ptr18 = getelementptr i8, ptr %20, i32 %add
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr18, i32 %or16) #3, !srcloc !17
  %add22 = add i32 %add.i, 6406412
  %21 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %pri, align 4
  %add.ptr26 = getelementptr i8, ptr %22, i32 %add22
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr26) #3, !srcloc !14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !42
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !43
  tail call void @arm_heavy_mb() #3
  %and32 = and i32 %23, -1075789825
  %or33 = or i32 %and32, %dpctrl.1
  %24 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %pri, align 4
  %add.ptr35 = getelementptr i8, ptr %25, i32 %add22
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr35, i32 %or33) #3, !srcloc !17
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @gf119_sor_clock(ptr nocapture noundef readonly %sor) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %disp = getelementptr inbounds %struct.nvkm_ior, ptr %sor, i32 0, i32 1
  %0 = ptrtoint ptr %disp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %disp, align 4
  %device1 = getelementptr inbounds %struct.nvkm_disp, ptr %1, i32 0, i32 1, i32 1, i32 1
  %2 = ptrtoint ptr %device1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %device1, align 4
  %id.i = getelementptr inbounds %struct.nvkm_ior, ptr %sor, i32 0, i32 3
  %4 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %id.i, align 4
  %mul.i = shl i32 %5, 11
  %link = getelementptr inbounds %struct.nvkm_ior, ptr %sor, i32 0, i32 8, i32 2
  %6 = ptrtoint ptr %link to i32
  call void @__asan_load4_noabort(i32 %6)
  %bf.load = load i32, ptr %link, align 4
  %7 = and i32 %bf.load, 25165824
  call void @__sanitizer_cov_trace_const_cmp4(i32 25165824, i32 %7)
  %cmp = icmp eq i32 %7, 25165824
  %conv = zext i1 %cmp to i32
  %8 = and i32 %bf.load, 234881024
  call void @__sanitizer_cov_trace_const_cmp4(i32 67108864, i32 %8)
  %cmp13 = icmp eq i32 %8, 67108864
  br i1 %cmp13, label %if.then, label %entry.if.end24_crit_edge

entry.if.end24_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %.pre = add i32 %mul.i, 6365952
  br label %if.end24

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %tmds = getelementptr inbounds %struct.nvkm_ior, ptr %sor, i32 0, i32 10
  %9 = ptrtoint ptr %tmds to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %tmds, align 4, !range !39
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool.not = icmp eq i8 %10, 0
  %cond = select i1 %tobool.not, i32 2621440, i32 5242880
  %add = add i32 %mul.i, 6365952
  %pri = getelementptr inbounds %struct.nvkm_device, ptr %3, i32 0, i32 11
  %11 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %pri, align 4
  %add.ptr = getelementptr i8, ptr %12, i32 %add
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #3, !srcloc !14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !44
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !45
  tail call void @arm_heavy_mb() #3
  %and = and i32 %13, -8126465
  %or = or i32 %and, %cond
  %14 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %pri, align 4
  %add.ptr18 = getelementptr i8, ptr %15, i32 %add
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr18, i32 %or) #3, !srcloc !17
  %16 = ptrtoint ptr %tmds to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %tmds, align 4, !range !39
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool22.not = icmp eq i8 %17, 0
  %spec.select = select i1 %tobool22.not, i32 %conv, i32 1
  br label %if.end24

if.end24:                                         ; preds = %if.then, %entry.if.end24_crit_edge
  %add27.pre-phi = phi i32 [ %.pre, %entry.if.end24_crit_edge ], [ %add, %if.then ]
  %div2.1 = phi i32 [ %conv, %entry.if.end24_crit_edge ], [ %spec.select, %if.then ]
  %pri30 = getelementptr inbounds %struct.nvkm_device, ptr %3, i32 0, i32 11
  %18 = ptrtoint ptr %pri30 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %pri30, align 4
  %add.ptr31 = getelementptr i8, ptr %19, i32 %add27.pre-phi
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr31) #3, !srcloc !14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !46
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !47
  tail call void @arm_heavy_mb() #3
  %and37 = and i32 %20, -1800
  %shl38 = shl nuw nsw i32 %div2.1, 8
  %or39 = or i32 %shl38, %conv
  %or40 = or i32 %and37, %or39
  %21 = ptrtoint ptr %pri30 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %pri30, align 4
  %add.ptr42 = getelementptr i8, ptr %22, i32 %add27.pre-phi
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr42, i32 %or40) #3, !srcloc !17
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @gf119_sor_state(ptr noundef readonly %sor, ptr noundef %state) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %disp = getelementptr inbounds %struct.nvkm_ior, ptr %sor, i32 0, i32 1
  %0 = ptrtoint ptr %disp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %disp, align 4
  %device1 = getelementptr inbounds %struct.nvkm_disp, ptr %1, i32 0, i32 1, i32 1, i32 1
  %2 = ptrtoint ptr %device1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %device1, align 4
  %asy = getelementptr inbounds %struct.nvkm_ior, ptr %sor, i32 0, i32 8
  %cmp = icmp eq ptr %asy, %state
  %id = getelementptr inbounds %struct.nvkm_ior, ptr %sor, i32 0, i32 3
  %4 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %id, align 4
  %mul2 = shl i32 %5, 5
  %pri = getelementptr inbounds %struct.nvkm_device, ptr %3, i32 0, i32 11
  %6 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pri, align 4
  %add = select i1 %cmp, i32 6685184, i32 6554112
  %add3 = add i32 %add, %mul2
  %add.ptr = getelementptr i8, ptr %7, i32 %add3
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #3, !srcloc !14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !48
  %proto_evo = getelementptr inbounds %struct.nvkm_ior_state, ptr %state, i32 0, i32 2
  %9 = ptrtoint ptr %proto_evo to i32
  call void @__asan_load4_noabort(i32 %9)
  %bf.load = load i32, ptr %proto_evo, align 4
  %10 = shl i32 %8, 20
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1610612736, i32 %10)
  %11 = icmp ult i32 %10, -1610612736
  br i1 %11, label %switch.lookup, label %entry.sw.epilog_crit_edge

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.epilog

switch.lookup:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %bf.lshr = lshr i32 %10, 28
  %switch.gep = getelementptr inbounds [10 x i32], ptr @switch.table.gf119_sor_state, i32 0, i32 %bf.lshr
  %12 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %12)
  %switch.load = load i32, ptr %switch.gep, align 4
  %switch.gep87 = getelementptr inbounds [10 x i32], ptr @switch.table.gf119_sor_state.2, i32 0, i32 %bf.lshr
  %13 = ptrtoint ptr %switch.gep87 to i32
  call void @__asan_load4_noabort(i32 %13)
  %switch.load88 = load i32, ptr %switch.gep87, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %switch.lookup, %entry.sw.epilog_crit_edge
  %.sink86 = phi i32 [ %switch.load, %switch.lookup ], [ -234881025, %entry.sw.epilog_crit_edge ]
  %.sink = phi i32 [ %switch.load88, %switch.lookup ], [ 167772160, %entry.sw.epilog_crit_edge ]
  %bf.clear = and i32 %bf.load, 25198591
  %bf.shl = and i32 %10, -268435456
  %bf.set = or i32 %bf.clear, %bf.shl
  %bf.clear59 = and i32 %bf.set, %.sink86
  %bf.set60 = or i32 %bf.clear59, %.sink
  %and61 = shl i32 %8, 15
  %bf.shl64 = and i32 %and61, 491520
  %bf.set66 = or i32 %bf.set60, %bf.shl64
  %14 = ptrtoint ptr %proto_evo to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %bf.set66, ptr %proto_evo, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @gf119_sor_new(ptr noundef %disp, i32 noundef %id) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @nvkm_ior_new_(ptr noundef nonnull @gf119_sor, ptr noundef %disp, i32 noundef 1, i32 noundef %id) #3
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_ior_new_(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @gf119_sor_cnt(ptr nocapture noundef readonly %disp, ptr nocapture noundef writeonly %pmask) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %device1 = getelementptr inbounds %struct.nvkm_disp, ptr %disp, i32 0, i32 1, i32 1, i32 1
  %0 = ptrtoint ptr %device1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device1, align 4
  %pri = getelementptr inbounds %struct.nvkm_device, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pri, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 6365188
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #3, !srcloc !14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !49
  %and = lshr i32 %4, 8
  %shr = and i32 %and, 255
  %5 = ptrtoint ptr %pmask to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %shr, ptr %pmask, align 4
  ret i32 8
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nv50_sor_power(ptr noundef, i1 noundef zeroext, i1 noundef zeroext, i1 noundef zeroext, i1 noundef zeroext, i1 noundef zeroext) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @gf119_hdmi_ctrl(ptr noundef, i32 noundef, i1 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, ptr noundef, i8 noundef zeroext, ptr noundef, i8 noundef zeroext) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @g94_sor_dp_power(ptr noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @gf119_hda_hpd(ptr noundef, i32 noundef, i1 noundef zeroext) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @gf119_hda_eld(ptr noundef, i32 noundef, ptr noundef, i8 noundef zeroext) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @gf119_hda_device_entry(ptr noundef, i32 noundef) #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #4 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 5)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #4 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 5)
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
!1 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/disp/sorgf119.c", i32 53, i32 2}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @gf119_sor, !4, !"gf119_sor", i1 false, i1 false}
!4 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/disp/sorgf119.c", i32 159, i32 1}
!5 = !{i32 1, !"wchar_size", i32 2}
!6 = !{i32 1, !"min_enum_size", i32 4}
!7 = !{i32 8, !"branch-target-enforcement", i32 0}
!8 = !{i32 8, !"sign-return-address", i32 0}
!9 = !{i32 8, !"sign-return-address-all", i32 0}
!10 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!11 = !{i32 7, !"uwtable", i32 1}
!12 = !{i32 7, !"frame-pointer", i32 2}
!13 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!14 = !{i64 5398101}
!15 = !{i64 2156241928}
!16 = !{i64 2156242354}
!17 = !{i64 5397683}
!18 = !{i64 2156243237}
!19 = !{i64 2156243621}
!20 = !{i64 2156244483}
!21 = !{i64 2156244867}
!22 = !{i64 2156245726}
!23 = !{i64 2156246104}
!24 = !{i64 2156248049}
!25 = !{i64 2156249733}
!26 = !{i64 2156250157}
!27 = !{i64 2156251059}
!28 = !{i64 2156251483}
!29 = !{i64 2156252003}
!30 = !{i64 2156252409}
!31 = !{i64 2156252815}
!32 = !{i64 2156253197}
!33 = !{i64 2156253663}
!34 = !{i64 2156254097}
!35 = !{i64 2156254571}
!36 = !{i64 2156254953}
!37 = !{i64 2156255824}
!38 = !{i64 2156256246}
!39 = !{i8 0, i8 2}
!40 = !{i64 2156257132}
!41 = !{i64 2156257526}
!42 = !{i64 2156258398}
!43 = !{i64 2156258792}
!44 = !{i64 2156259669}
!45 = !{i64 2156260073}
!46 = !{i64 2156260962}
!47 = !{i64 2156261380}
!48 = !{i64 2156261897}
!49 = !{i64 2156262282}
