; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/nouveau/nvkm/engine/disp/sorg94.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/nvkm/engine/disp/sorg94.c"
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

@.str = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"drivers/gpu/drm/nouveau/nvkm/engine/disp/sorg94.c\00", [46 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"%s %s: timeout\0A\00", [16 x i8] zeroinitializer }, align 32
@g94_sor = internal constant { %struct.nvkm_ior_func, [36 x i8] } { %struct.nvkm_ior_func { %struct.anon zeroinitializer, ptr @g94_sor_state, ptr @nv50_sor_power, ptr null, ptr @nv50_sor_clock, ptr @g94_sor_war_2, ptr @g94_sor_war_3, %struct.anon.145 zeroinitializer, %struct.anon.146 { [4 x i8] c"\02\01\00\03", ptr @g94_sor_dp_links, ptr @g94_sor_dp_power, ptr @g94_sor_dp_pattern, ptr @g94_sor_dp_drive, ptr null, ptr null, ptr @g94_sor_dp_audio_sym, ptr @g94_sor_dp_activesym, ptr @g94_sor_dp_watermark }, %struct.anon.147 zeroinitializer }, [36 x i8] zeroinitializer }, align 32
@switch.table.g94_sor_state = internal constant { [10 x i32], [56 x i8] } { [10 x i32] [i32 -260046849, i32 -260046849, i32 -260046849, i32 -234881025, i32 -234881025, i32 -260046849, i32 -234881025, i32 -234881025, i32 -260046849, i32 -260046849], [56 x i8] zeroinitializer }, align 32
@switch.table.g94_sor_state.2 = internal constant { [10 x i32], [56 x i8] } { [10 x i32] [i32 109051904, i32 75497472, i32 83886080, i32 167772160, i32 167772160, i32 92274688, i32 167772160, i32 167772160, i32 142606336, i32 150994944], [56 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 196608]
@__sancov_gen_cov_switch_values.3 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 196608]
@__sancov_gen_cov_switch_values.4 = internal global [4 x i64] [i64 2, i64 32, i64 33554432, i64 50331648]
@___asan_gen_.8 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.10 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.12, i32 96, i32 2 }
@___asan_gen_.11 = private unnamed_addr constant [8 x i8] c"g94_sor\00", align 1
@___asan_gen_.12 = private constant [53 x i8] c"../drivers/gpu/drm/nouveau/nvkm/engine/disp/sorg94.c\00", align 1
@___asan_gen_.13 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.12, i32 261, i32 1 }
@___asan_gen_.14 = private unnamed_addr constant [27 x i8] c"switch.table.g94_sor_state\00", align 1
@___asan_gen_.15 = private unnamed_addr constant [29 x i8] c"switch.table.g94_sor_state.2\00", align 1
@llvm.compiler.used = appending global [5 x ptr] [ptr @.str, ptr @.str.1, ptr @g94_sor, ptr @switch.table.g94_sor_state, ptr @switch.table.g94_sor_state.2], section "llvm.metadata"
@0 = internal global [5 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @g94_sor to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.g94_sor_state to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.g94_sor_state.2 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @g94_sor_dp_watermark(ptr nocapture noundef readonly %sor, i32 %head, i8 noundef zeroext %watermark) #0 align 64 {
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
  %add.i = add i32 %mul.i.i, 6406440
  %add = or i32 %add.i, %mul.i
  %pri = getelementptr inbounds %struct.nvkm_device, ptr %3, i32 0, i32 11
  %8 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pri, align 4
  %add.ptr = getelementptr i8, ptr %9, i32 %add
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #3, !srcloc !14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !16
  tail call void @arm_heavy_mb() #3
  %and = and i32 %10, -64
  %conv = zext i8 %watermark to i32
  %or = or i32 %and, %conv
  %11 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %pri, align 4
  %add.ptr4 = getelementptr i8, ptr %12, i32 %add
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4, i32 %or) #3, !srcloc !17
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @g94_sor_dp_activesym(ptr nocapture noundef readonly %sor, i32 %head, i8 noundef zeroext %TU, i8 noundef zeroext %VTUa, i8 noundef zeroext %VTUf, i8 noundef zeroext %VTUi) #0 align 64 {
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
  %add = add i32 %add.i, 6406412
  %pri = getelementptr inbounds %struct.nvkm_device, ptr %3, i32 0, i32 11
  %8 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pri, align 4
  %add.ptr = getelementptr i8, ptr %9, i32 %add
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #3, !srcloc !14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !18
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !19
  tail call void @arm_heavy_mb() #3
  %and = and i32 %10, -509
  %conv = zext i8 %TU to i32
  %shl = shl nuw nsw i32 %conv, 2
  %or = or i32 %and, %shl
  %11 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %pri, align 4
  %add.ptr4 = getelementptr i8, ptr %12, i32 %add
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4, i32 %or) #3, !srcloc !17
  %add8 = add i32 %add.i, 6406440
  %13 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %pri, align 4
  %add.ptr12 = getelementptr i8, ptr %14, i32 %add8
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr12) #3, !srcloc !14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !20
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !21
  tail call void @arm_heavy_mb() #3
  %and18 = and i32 %15, -17792769
  %conv19 = zext i8 %VTUa to i32
  %shl20 = shl nuw i32 %conv19, 24
  %conv21 = zext i8 %VTUf to i32
  %shl22 = shl nuw nsw i32 %conv21, 16
  %or23 = or i32 %shl22, %shl20
  %conv24 = zext i8 %VTUi to i32
  %shl25 = shl nuw nsw i32 %conv24, 8
  %or26 = or i32 %or23, %shl25
  %or27 = or i32 %and18, %or26
  %16 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %pri, align 4
  %add.ptr29 = getelementptr i8, ptr %17, i32 %add8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr29, i32 %or27) #3, !srcloc !17
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @g94_sor_dp_audio_sym(ptr nocapture noundef readonly %sor, i32 %head, i16 noundef zeroext %h, i32 noundef %v) #0 align 64 {
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
  %add = add i32 %mul.i, 6406632
  %pri = getelementptr inbounds %struct.nvkm_device, ptr %3, i32 0, i32 11
  %6 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pri, align 4
  %add.ptr = getelementptr i8, ptr %7, i32 %add
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #3, !srcloc !14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !22
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !23
  tail call void @arm_heavy_mb() #3
  %and = and i32 %8, -65536
  %conv = zext i16 %h to i32
  %or = or i32 %and, %conv
  %9 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %pri, align 4
  %add.ptr4 = getelementptr i8, ptr %10, i32 %add
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4, i32 %or) #3, !srcloc !17
  %add8 = add i32 %mul.i, 6406636
  %11 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %pri, align 4
  %add.ptr12 = getelementptr i8, ptr %12, i32 %add8
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr12) #3, !srcloc !14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !25
  tail call void @arm_heavy_mb() #3
  %and18 = and i32 %13, -16777216
  %or19 = or i32 %and18, %v
  %14 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %pri, align 4
  %add.ptr21 = getelementptr i8, ptr %15, i32 %add8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr21, i32 %or19) #3, !srcloc !17
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @g94_sor_dp_drive(ptr nocapture noundef readonly %sor, i32 noundef %ln, i32 %pc, i32 noundef %dc, i32 noundef %pe, i32 noundef %pu) #0 align 64 {
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
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !26
  %15 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %pri, align 4
  %add6 = add i32 %add.i, 6406432
  %add.ptr7 = getelementptr i8, ptr %16, i32 %add6
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr7) #3, !srcloc !14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !27
  %18 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %pri, align 4
  %add16 = add i32 %add.i, 6406448
  %add.ptr17 = getelementptr i8, ptr %19, i32 %add16
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr17) #3, !srcloc !14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !28
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
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !29
  tail call void @arm_heavy_mb() #3
  %shl32 = shl i32 %dc, %mul
  %or33 = or i32 %and, %shl32
  %21 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %pri, align 4
  %add.ptr36 = getelementptr i8, ptr %22, i32 %add
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr36, i32 %or33) #3, !srcloc !17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !30
  tail call void @arm_heavy_mb() #3
  %shl41 = shl i32 %pe, %mul
  %or42 = or i32 %and12, %shl41
  %23 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %pri, align 4
  %add.ptr45 = getelementptr i8, ptr %24, i32 %add6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr45, i32 %or42) #3, !srcloc !17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !31
  tail call void @arm_heavy_mb() #3
  %25 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %pri, align 4
  %add.ptr52 = getelementptr i8, ptr %26, i32 %add16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr52, i32 %data.sroa.8.0) #3, !srcloc !17
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @g94_sor_dp_pattern(ptr nocapture noundef readonly %sor, i32 noundef %pattern) #0 align 64 {
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
  %add.i = add i32 %mul.i.i, 6406412
  %add = or i32 %add.i, %mul.i
  %pri = getelementptr inbounds %struct.nvkm_device, ptr %3, i32 0, i32 11
  %8 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pri, align 4
  %add.ptr = getelementptr i8, ptr %9, i32 %add
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #3, !srcloc !14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !33
  tail call void @arm_heavy_mb() #3
  %and = and i32 %10, -251658241
  %shl = shl i32 %pattern, 24
  %or = or i32 %and, %shl
  %11 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %pri, align 4
  %add.ptr4 = getelementptr i8, ptr %12, i32 %add
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4, i32 %or) #3, !srcloc !17
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @g94_sor_dp_power(ptr nocapture noundef readonly %sor, i32 noundef %nr) #0 align 64 {
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
  %mul.i92 = select i1 %cmp.i, i32 128, i32 0
  %add.i = or i32 %mul.i92, %mul.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %nr)
  %cmp95.not = icmp eq i32 %nr, 0
  br i1 %cmp95.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %8 = ptrtoint ptr %sor to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %sor, align 4
  %dp = getelementptr inbounds %struct.nvkm_ior_func, ptr %9, i32 0, i32 8
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %mask.097 = phi i32 [ 0, %for.body.lr.ph ], [ %or, %for.body.for.body_crit_edge ]
  %i.096 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %arrayidx = getelementptr [4 x i8], ptr %dp, i32 0, i32 %i.096
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %11 to i32
  %shl = shl nuw i32 1, %conv
  %or = or i32 %shl, %mask.097
  %inc = add nuw i32 %i.096, 1
  %exitcond.not = icmp eq i32 %inc, %nr
  br i1 %exitcond.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  %mask.0.lcssa = phi i32 [ 0, %entry.for.end_crit_edge ], [ %or, %for.body.for.end_crit_edge ]
  %add = add i32 %add.i, 6406448
  %pri = getelementptr inbounds %struct.nvkm_device, ptr %3, i32 0, i32 11
  %12 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %pri, align 4
  %add.ptr = getelementptr i8, ptr %13, i32 %add
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #3, !srcloc !14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !34
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !35
  tail call void @arm_heavy_mb() #3
  %and = and i32 %14, -16
  %or4 = or i32 %and, %mask.0.lcssa
  %15 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %pri, align 4
  %add.ptr6 = getelementptr i8, ptr %16, i32 %add
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr6, i32 %or4) #3, !srcloc !17
  %add10 = add i32 %mul.i, 6406196
  %17 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %pri, align 4
  %add.ptr14 = getelementptr i8, ptr %18, i32 %add10
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr14) #3, !srcloc !14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !36
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !37
  tail call void @arm_heavy_mb() #3
  %or21 = or i32 %19, -2147483648
  %20 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %pri, align 4
  %add.ptr23 = getelementptr i8, ptr %21, i32 %add10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr23, i32 %or21) #3, !srcloc !17
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %_wait) #3
  %22 = call ptr @memset(ptr %_wait, i32 255, i32 40)
  call void @nvkm_timer_wait_init(ptr noundef %3, i64 noundef 2000000000, ptr noundef nonnull %_wait) #3
  br label %do.body25

do.body25:                                        ; preds = %do.cond33.do.body25_crit_edge, %for.end
  %23 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %pri, align 4
  %add.ptr29 = getelementptr i8, ptr %24, i32 %add10
  %25 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr29) #3, !srcloc !14
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !38
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %25)
  %tobool.not = icmp sgt i32 %25, -1
  br i1 %tobool.not, label %do.body25.if.end72_crit_edge, label %do.cond33

do.body25.if.end72_crit_edge:                     ; preds = %do.body25
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end72

do.cond33:                                        ; preds = %do.body25
  %call34 = call i64 @nvkm_timer_wait_test(ptr noundef nonnull %_wait) #3
  %cmp35 = icmp sgt i64 %call34, -1
  br i1 %cmp35, label %do.cond33.do.body25_crit_edge, label %do.end50

do.cond33.do.body25_crit_edge:                    ; preds = %do.cond33
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.body25

do.end50:                                         ; preds = %do.cond33
  %26 = ptrtoint ptr %_wait to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %_wait, align 8
  %device52 = getelementptr inbounds %struct.nvkm_timer, ptr %27, i32 0, i32 1, i32 1
  %28 = ptrtoint ptr %device52 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %device52, align 4
  %dev = getelementptr inbounds %struct.nvkm_device, ptr %29, i32 0, i32 2
  %30 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %dev, align 8
  %call53 = call ptr @dev_driver_string(ptr noundef %31) #3
  %32 = ptrtoint ptr %_wait to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %_wait, align 8
  %device56 = getelementptr inbounds %struct.nvkm_timer, ptr %33, i32 0, i32 1, i32 1
  %34 = ptrtoint ptr %device56 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %device56, align 4
  %dev57 = getelementptr inbounds %struct.nvkm_device, ptr %35, i32 0, i32 2
  %36 = ptrtoint ptr %dev57 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %dev57, align 8
  %init_name.i = getelementptr inbounds %struct.device, ptr %37, i32 0, i32 3
  %38 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %39, null
  br i1 %tobool.not.i, label %if.end.i, label %do.end50.dev_name.exit_crit_edge

do.end50.dev_name.exit_crit_edge:                 ; preds = %do.end50
  call void @__sanitizer_cov_trace_pc() #5
  br label %dev_name.exit

if.end.i:                                         ; preds = %do.end50
  call void @__sanitizer_cov_trace_pc() #5
  %40 = ptrtoint ptr %37 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %37, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %do.end50.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %41, %if.end.i ], [ %39, %do.end50.dev_name.exit_crit_edge ]
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 99, i32 noundef 9, ptr noundef nonnull @.str.1, ptr noundef %call53, ptr noundef %retval.0.i) #3
  br label %if.end72

if.end72:                                         ; preds = %dev_name.exit, %do.body25.if.end72_crit_edge
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
define dso_local i32 @g94_sor_dp_links(ptr nocapture noundef readonly %sor, ptr nocapture readnone %aux) #0 align 64 {
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
  %mul.i49 = select i1 %cmp.i, i32 128, i32 0
  %add.i = or i32 %mul.i49, %mul.i
  %nr = getelementptr inbounds %struct.nvkm_ior, ptr %sor, i32 0, i32 9, i32 2
  %8 = ptrtoint ptr %nr to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %nr, align 2
  %conv = zext i8 %9 to i32
  %notmask = shl nsw i32 -1, %conv
  %sub = xor i32 %notmask, -1
  %shl3 = shl i32 %sub, 16
  %ef = getelementptr inbounds %struct.nvkm_ior, ptr %sor, i32 0, i32 9, i32 1
  %10 = ptrtoint ptr %ef to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %ef, align 1, !range !39
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool.not = icmp eq i8 %11, 0
  %or5 = or i32 %shl3, 16384
  %spec.select = select i1 %tobool.not, i32 %shl3, i32 %or5
  %bw = getelementptr inbounds %struct.nvkm_ior, ptr %sor, i32 0, i32 9, i32 3
  %12 = ptrtoint ptr %bw to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %bw, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %13)
  %cmp = icmp ugt i8 %13, 6
  %clksor.0 = select i1 %cmp, i32 262144, i32 0
  %add = add i32 %mul.i, 6374144
  %pri = getelementptr inbounds %struct.nvkm_device, ptr %3, i32 0, i32 11
  %14 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %pri, align 4
  %add.ptr = getelementptr i8, ptr %15, i32 %add
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #3, !srcloc !14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !40
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !41
  tail call void @arm_heavy_mb() #3
  %and = and i32 %16, -786433
  %or13 = or i32 %and, %clksor.0
  %17 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %pri, align 4
  %add.ptr15 = getelementptr i8, ptr %18, i32 %add
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr15, i32 %or13) #3, !srcloc !17
  %add19 = add i32 %add.i, 6406412
  %19 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %pri, align 4
  %add.ptr23 = getelementptr i8, ptr %20, i32 %add19
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr23) #3, !srcloc !14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !42
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !43
  tail call void @arm_heavy_mb() #3
  %and29 = and i32 %21, -2048001
  %or30 = or i32 %and29, %spec.select
  %22 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %pri, align 4
  %add.ptr32 = getelementptr i8, ptr %23, i32 %add19
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr32, i32 %or30) #3, !srcloc !17
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @g94_sor_state(ptr noundef %sor, ptr noundef %state) #0 align 64 {
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
  %id = getelementptr inbounds %struct.nvkm_ior, ptr %sor, i32 0, i32 3
  %4 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %id, align 4
  %mul = shl i32 %5, 3
  %arm = getelementptr inbounds %struct.nvkm_ior, ptr %sor, i32 0, i32 7
  %cmp = icmp eq ptr %arm, %state
  %pri = getelementptr inbounds %struct.nvkm_device, ptr %3, i32 0, i32 11
  %6 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pri, align 4
  %add = select i1 %cmp, i32 6358936, i32 6358932
  %add3 = add i32 %add, %mul
  %add.ptr = getelementptr i8, ptr %7, i32 %add3
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #3, !srcloc !14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !44
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
  %switch.gep = getelementptr inbounds [10 x i32], ptr @switch.table.g94_sor_state, i32 0, i32 %bf.lshr
  %12 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %12)
  %switch.load = load i32, ptr %switch.gep, align 4
  %switch.gep90 = getelementptr inbounds [10 x i32], ptr @switch.table.g94_sor_state.2, i32 0, i32 %bf.lshr
  %13 = ptrtoint ptr %switch.gep90 to i32
  call void @__asan_load4_noabort(i32 %13)
  %switch.load91 = load i32, ptr %switch.gep90, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %switch.lookup, %entry.sw.epilog_crit_edge
  %.sink89 = phi i32 [ %switch.load, %switch.lookup ], [ -234881025, %entry.sw.epilog_crit_edge ]
  %.sink = phi i32 [ %switch.load91, %switch.lookup ], [ 167772160, %entry.sw.epilog_crit_edge ]
  %bf.clear = and i32 %bf.load, 25198591
  %bf.shl = and i32 %10, -268435456
  %bf.set = or i32 %bf.clear, %bf.shl
  %bf.clear59 = and i32 %bf.set, %.sink89
  %bf.set60 = or i32 %bf.clear59, %.sink
  %and61 = shl i32 %8, 15
  %bf.shl64 = and i32 %and61, 98304
  %bf.set66 = or i32 %bf.set60, %bf.shl64
  %14 = ptrtoint ptr %proto_evo to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %bf.set66, ptr %proto_evo, align 4
  tail call void @nv50_pior_depth(ptr noundef %sor, ptr noundef %state, i32 noundef %8) #3
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nv50_pior_depth(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @g94_sor_new(ptr noundef %disp, i32 noundef %id) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @nvkm_ior_new_(ptr noundef nonnull @g94_sor, ptr noundef %disp, i32 noundef 1, i32 noundef %id) #3
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_ior_new_(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @g94_sor_cnt(ptr nocapture noundef readonly %disp, ptr nocapture noundef writeonly %pmask) local_unnamed_addr #0 align 64 {
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
  %add.ptr = getelementptr i8, ptr %3, i32 6357380
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #3, !srcloc !14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !45
  %and = lshr i32 %4, 24
  %shr = and i32 %and, 15
  %5 = ptrtoint ptr %pmask to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %shr, ptr %pmask, align 4
  ret i32 4
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nv50_sor_power(ptr noundef, i1 noundef zeroext, i1 noundef zeroext, i1 noundef zeroext, i1 noundef zeroext, i1 noundef zeroext) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nv50_sor_clock(ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @g94_sor_war_2(ptr nocapture noundef readonly %sor) #0 align 64 {
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
  %id.i = getelementptr inbounds %struct.nvkm_ior, ptr %sor, i32 0, i32 3
  %4 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %id.i, align 4
  %mul.i = shl i32 %5, 11
  %proto.i = getelementptr inbounds %struct.nvkm_ior, ptr %sor, i32 0, i32 8, i32 2
  %6 = ptrtoint ptr %proto.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %bf.load.i = load i32, ptr %proto.i, align 4
  %7 = and i32 %bf.load.i, 234881024
  call void @__sanitizer_cov_trace_const_cmp4(i32 67108864, i32 %7)
  %cmp.i = icmp eq i32 %7, 67108864
  br i1 %cmp.i, label %g94_sor_war_needed.exit, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

g94_sor_war_needed.exit:                          ; preds = %entry
  %pri.i = getelementptr inbounds %struct.nvkm_device, ptr %3, i32 0, i32 11
  %8 = ptrtoint ptr %pri.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pri.i, align 4
  %add.i = add i32 %mul.i, 6374144
  %add.ptr.i = getelementptr i8, ptr %9, i32 %add.i
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #3, !srcloc !14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !46
  %and.i = and i32 %10, 196608
  %11 = zext i32 %and.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values)
  switch i32 %and.i, label %g94_sor_war_needed.exit.cleanup_crit_edge [
    i32 196608, label %g94_sor_war_needed.exit.if.end_crit_edge
    i32 0, label %g94_sor_war_needed.exit.if.end_crit_edge214
  ]

g94_sor_war_needed.exit.if.end_crit_edge214:      ; preds = %g94_sor_war_needed.exit
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end

g94_sor_war_needed.exit.if.end_crit_edge:         ; preds = %g94_sor_war_needed.exit
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end

g94_sor_war_needed.exit.cleanup_crit_edge:        ; preds = %g94_sor_war_needed.exit
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end:                                           ; preds = %g94_sor_war_needed.exit.if.end_crit_edge, %g94_sor_war_needed.exit.if.end_crit_edge214
  %12 = ptrtoint ptr %pri.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %pri.i, align 4
  %add.ptr = getelementptr i8, ptr %13, i32 59456
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #3, !srcloc !14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !47
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !48
  tail call void @arm_heavy_mb() #3
  %or = or i32 %14, -2147483648
  %15 = ptrtoint ptr %pri.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %pri.i, align 4
  %add.ptr5 = getelementptr i8, ptr %16, i32 59456
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5, i32 %or) #3, !srcloc !17
  %17 = ptrtoint ptr %pri.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %pri.i, align 4
  %add.ptr12 = getelementptr i8, ptr %18, i32 %add.i
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr12) #3, !srcloc !14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !49
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !50
  tail call void @arm_heavy_mb() #3
  %or19 = or i32 %19, 50331648
  %20 = ptrtoint ptr %pri.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %pri.i, align 4
  %add.ptr21 = getelementptr i8, ptr %21, i32 %add.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr21, i32 %or19) #3, !srcloc !17
  %add25 = add i32 %mul.i, 6406412
  %22 = ptrtoint ptr %pri.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %pri.i, align 4
  %add.ptr29 = getelementptr i8, ptr %23, i32 %add25
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr29) #3, !srcloc !14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !51
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !52
  tail call void @arm_heavy_mb() #3
  %or36 = or i32 %24, 1
  %25 = ptrtoint ptr %pri.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %pri.i, align 4
  %add.ptr38 = getelementptr i8, ptr %26, i32 %add25
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr38, i32 %or36) #3, !srcloc !17
  %add42 = add i32 %mul.i, 6406156
  %27 = ptrtoint ptr %pri.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %pri.i, align 4
  %add.ptr46 = getelementptr i8, ptr %28, i32 %add42
  %29 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr46) #3, !srcloc !14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !53
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !54
  tail call void @arm_heavy_mb() #3
  %and52 = and i32 %29, -251658241
  %30 = ptrtoint ptr %pri.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %pri.i, align 4
  %add.ptr55 = getelementptr i8, ptr %31, i32 %add42
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr55, i32 %and52) #3, !srcloc !17
  %add59 = add i32 %mul.i, 6406152
  %32 = ptrtoint ptr %pri.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %pri.i, align 4
  %add.ptr63 = getelementptr i8, ptr %33, i32 %add59
  %34 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr63) #3, !srcloc !14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !55
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !56
  tail call void @arm_heavy_mb() #3
  %and69 = and i32 %34, 16777215
  %or70 = or i32 %and69, 335544320
  %35 = ptrtoint ptr %pri.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %pri.i, align 4
  %add.ptr72 = getelementptr i8, ptr %36, i32 %add59
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr72, i32 %or70) #3, !srcloc !17
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %_wait) #3
  %37 = call ptr @memset(ptr %_wait, i32 255, i32 40)
  call void @nvkm_timer_wait_init(ptr noundef %3, i64 noundef 400000, ptr noundef nonnull %_wait) #3
  br label %do.body74

do.body74:                                        ; preds = %do.body74.do.body74_crit_edge, %if.end
  %call76 = call i64 @nvkm_timer_wait_test(ptr noundef nonnull %_wait) #3
  %cmp = icmp sgt i64 %call76, -1
  br i1 %cmp, label %do.body74.do.body74_crit_edge, label %if.end109

do.body74.do.body74_crit_edge:                    ; preds = %do.body74
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.body74

if.end109:                                        ; preds = %do.body74
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %_wait) #3
  %38 = ptrtoint ptr %pri.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %pri.i, align 4
  %add.ptr117 = getelementptr i8, ptr %39, i32 %add59
  %40 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr117) #3, !srcloc !14
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !57
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !58
  call void @arm_heavy_mb() #3
  %and123 = and i32 %40, 16777215
  %41 = ptrtoint ptr %pri.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %pri.i, align 4
  %add.ptr126 = getelementptr i8, ptr %42, i32 %add59
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr126, i32 %and123) #3, !srcloc !17
  %43 = ptrtoint ptr %pri.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %pri.i, align 4
  %add.ptr134 = getelementptr i8, ptr %44, i32 %add42
  %45 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr134) #3, !srcloc !14
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !59
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !60
  call void @arm_heavy_mb() #3
  %and140 = and i32 %45, -251658241
  %or141 = or i32 %and140, 16777216
  %46 = ptrtoint ptr %pri.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %pri.i, align 4
  %add.ptr143 = getelementptr i8, ptr %47, i32 %add42
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr143, i32 %or141) #3, !srcloc !17
  %48 = ptrtoint ptr %pri.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %pri.i, align 4
  %add147 = add i32 %mul.i, 6406148
  %add.ptr148 = getelementptr i8, ptr %49, i32 %add147
  %50 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr148) #3, !srcloc !14
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !61
  %and151 = and i32 %50, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and151)
  %tobool152.not = icmp eq i32 %and151, 0
  br i1 %tobool152.not, label %if.end109.cleanup_crit_edge, label %if.then153

if.end109.cleanup_crit_edge:                      ; preds = %if.end109
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.then153:                                       ; preds = %if.end109
  call void @__sanitizer_cov_trace_pc() #5
  %51 = ptrtoint ptr %pri.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %pri.i, align 4
  %add156 = add i32 %mul.i, 6406192
  %add.ptr157 = getelementptr i8, ptr %52, i32 %add156
  %53 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr157) #3, !srcloc !14
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !62
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !63
  call void @arm_heavy_mb() #3
  %54 = ptrtoint ptr %pri.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %pri.i, align 4
  %add165 = add i32 %mul.i, 6406208
  %and160 = shl i32 %53, 2
  %mul = and i32 %and160, 60
  %add166 = or i32 %mul, %add165
  %add.ptr167 = getelementptr i8, ptr %55, i32 %add166
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr167, i32 520126464) #3, !srcloc !17
  br label %cleanup

cleanup:                                          ; preds = %if.then153, %if.end109.cleanup_crit_edge, %g94_sor_war_needed.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @g94_sor_war_3(ptr nocapture noundef readonly %sor) #0 align 64 {
entry:
  %_wait = alloca %struct.nvkm_timer_wait, align 8
  %_wait78 = alloca %struct.nvkm_timer_wait, align 8
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
  %proto.i = getelementptr inbounds %struct.nvkm_ior, ptr %sor, i32 0, i32 8, i32 2
  %6 = ptrtoint ptr %proto.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %bf.load.i = load i32, ptr %proto.i, align 4
  %7 = and i32 %bf.load.i, 234881024
  call void @__sanitizer_cov_trace_const_cmp4(i32 67108864, i32 %7)
  %cmp.i = icmp eq i32 %7, 67108864
  br i1 %cmp.i, label %g94_sor_war_needed.exit, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

g94_sor_war_needed.exit:                          ; preds = %entry
  %pri.i = getelementptr inbounds %struct.nvkm_device, ptr %3, i32 0, i32 11
  %8 = ptrtoint ptr %pri.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pri.i, align 4
  %add.i = add i32 %mul.i, 6374144
  %add.ptr.i = getelementptr i8, ptr %9, i32 %add.i
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #3, !srcloc !14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !46
  %and.i = and i32 %10, 196608
  %11 = zext i32 %and.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values.3)
  switch i32 %and.i, label %g94_sor_war_needed.exit.cleanup_crit_edge [
    i32 196608, label %g94_sor_war_needed.exit.if.end_crit_edge
    i32 0, label %g94_sor_war_needed.exit.if.end_crit_edge287
  ]

g94_sor_war_needed.exit.if.end_crit_edge287:      ; preds = %g94_sor_war_needed.exit
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end

g94_sor_war_needed.exit.if.end_crit_edge:         ; preds = %g94_sor_war_needed.exit
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end

g94_sor_war_needed.exit.cleanup_crit_edge:        ; preds = %g94_sor_war_needed.exit
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end:                                           ; preds = %g94_sor_war_needed.exit.if.end_crit_edge, %g94_sor_war_needed.exit.if.end_crit_edge287
  %12 = ptrtoint ptr %pri.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %pri.i, align 4
  %add = add i32 %mul.i, 6406148
  %add.ptr = getelementptr i8, ptr %13, i32 %add
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #3, !srcloc !14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !64
  %and = and i32 %14, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end.if.end154_crit_edge, label %if.then4

if.end.if.end154_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end154

if.then4:                                         ; preds = %if.end
  %15 = ptrtoint ptr %pri.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %pri.i, align 4
  %add7 = add i32 %mul.i, 6406192
  %add.ptr8 = getelementptr i8, ptr %16, i32 %add7
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr8) #3, !srcloc !14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !65
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !66
  tail call void @arm_heavy_mb() #3
  %18 = ptrtoint ptr %pri.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %pri.i, align 4
  %add14 = add i32 %mul.i, 6406208
  %20 = lshr i32 %17, 6
  %mul = and i32 %20, 60
  %add15 = or i32 %mul, %add14
  %add.ptr16 = getelementptr i8, ptr %19, i32 %add15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr16, i32 520126464) #3, !srcloc !17
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %_wait) #3
  %21 = call ptr @memset(ptr %_wait, i32 255, i32 40)
  call void @nvkm_timer_wait_init(ptr noundef %3, i64 noundef 2000000000, ptr noundef nonnull %_wait) #3
  br label %do.body17

do.body17:                                        ; preds = %do.cond28.do.body17_crit_edge, %if.then4
  %22 = ptrtoint ptr %pri.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %pri.i, align 4
  %add.ptr21 = getelementptr i8, ptr %23, i32 %add7
  %24 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr21) #3, !srcloc !14
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !67
  %and24 = and i32 %24, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and24)
  %tobool25.not = icmp eq i32 %and24, 0
  br i1 %tobool25.not, label %do.body17.if.end63_crit_edge, label %do.cond28

do.body17.if.end63_crit_edge:                     ; preds = %do.body17
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end63

do.cond28:                                        ; preds = %do.body17
  %call29 = call i64 @nvkm_timer_wait_test(ptr noundef nonnull %_wait) #3
  %cmp = icmp sgt i64 %call29, -1
  br i1 %cmp, label %do.cond28.do.body17_crit_edge, label %do.end41

do.cond28.do.body17_crit_edge:                    ; preds = %do.cond28
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.body17

do.end41:                                         ; preds = %do.cond28
  %25 = ptrtoint ptr %_wait to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %_wait, align 8
  %device43 = getelementptr inbounds %struct.nvkm_timer, ptr %26, i32 0, i32 1, i32 1
  %27 = ptrtoint ptr %device43 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %device43, align 4
  %dev = getelementptr inbounds %struct.nvkm_device, ptr %28, i32 0, i32 2
  %29 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %dev, align 8
  %call44 = call ptr @dev_driver_string(ptr noundef %30) #3
  %31 = ptrtoint ptr %_wait to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %_wait, align 8
  %device47 = getelementptr inbounds %struct.nvkm_timer, ptr %32, i32 0, i32 1, i32 1
  %33 = ptrtoint ptr %device47 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %device47, align 4
  %dev48 = getelementptr inbounds %struct.nvkm_device, ptr %34, i32 0, i32 2
  %35 = ptrtoint ptr %dev48 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %dev48, align 8
  %init_name.i = getelementptr inbounds %struct.device, ptr %36, i32 0, i32 3
  %37 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %38, null
  br i1 %tobool.not.i, label %if.end.i, label %do.end41.dev_name.exit_crit_edge

do.end41.dev_name.exit_crit_edge:                 ; preds = %do.end41
  call void @__sanitizer_cov_trace_pc() #5
  br label %dev_name.exit

if.end.i:                                         ; preds = %do.end41
  call void @__sanitizer_cov_trace_pc() #5
  %39 = ptrtoint ptr %36 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %36, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %do.end41.dev_name.exit_crit_edge
  %retval.0.i257 = phi ptr [ %40, %if.end.i ], [ %38, %do.end41.dev_name.exit_crit_edge ]
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 189, i32 noundef 9, ptr noundef nonnull @.str.1, ptr noundef %call44, ptr noundef %retval.0.i257) #3
  br label %if.end63

if.end63:                                         ; preds = %dev_name.exit, %do.body17.if.end63_crit_edge
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %_wait) #3
  %41 = ptrtoint ptr %pri.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %pri.i, align 4
  %add.ptr68 = getelementptr i8, ptr %42, i32 %add
  %43 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr68) #3, !srcloc !14
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !68
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !69
  call void @arm_heavy_mb() #3
  %and74 = and i32 %43, 2147483646
  %or = or i32 %and74, -2147483648
  %44 = ptrtoint ptr %pri.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %pri.i, align 4
  %add.ptr76 = getelementptr i8, ptr %45, i32 %add
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr76, i32 %or) #3, !srcloc !17
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %_wait78) #3
  %46 = call ptr @memset(ptr %_wait78, i32 255, i32 40)
  call void @nvkm_timer_wait_init(ptr noundef %3, i64 noundef 2000000000, ptr noundef nonnull %_wait78) #3
  br label %do.body81

do.body81:                                        ; preds = %do.cond92.do.body81_crit_edge, %if.end63
  %47 = ptrtoint ptr %pri.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %pri.i, align 4
  %add.ptr85 = getelementptr i8, ptr %48, i32 %add7
  %49 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr85) #3, !srcloc !14
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !70
  %and88 = and i32 %49, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and88)
  %tobool89.not = icmp eq i32 %and88, 0
  br i1 %tobool89.not, label %do.body81.if.end136_crit_edge, label %do.cond92

do.body81.if.end136_crit_edge:                    ; preds = %do.body81
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end136

do.cond92:                                        ; preds = %do.body81
  %call93 = call i64 @nvkm_timer_wait_test(ptr noundef nonnull %_wait78) #3
  %cmp94 = icmp sgt i64 %call93, -1
  br i1 %cmp94, label %do.cond92.do.body81_crit_edge, label %do.end112

do.cond92.do.body81_crit_edge:                    ; preds = %do.cond92
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.body81

do.end112:                                        ; preds = %do.cond92
  %50 = ptrtoint ptr %_wait78 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %_wait78, align 8
  %device115 = getelementptr inbounds %struct.nvkm_timer, ptr %51, i32 0, i32 1, i32 1
  %52 = ptrtoint ptr %device115 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %device115, align 4
  %dev116 = getelementptr inbounds %struct.nvkm_device, ptr %53, i32 0, i32 2
  %54 = ptrtoint ptr %dev116 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %dev116, align 8
  %call117 = call ptr @dev_driver_string(ptr noundef %55) #3
  %56 = ptrtoint ptr %_wait78 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %_wait78, align 8
  %device120 = getelementptr inbounds %struct.nvkm_timer, ptr %57, i32 0, i32 1, i32 1
  %58 = ptrtoint ptr %device120 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %device120, align 4
  %dev121 = getelementptr inbounds %struct.nvkm_device, ptr %59, i32 0, i32 2
  %60 = ptrtoint ptr %dev121 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %dev121, align 8
  %init_name.i258 = getelementptr inbounds %struct.device, ptr %61, i32 0, i32 3
  %62 = ptrtoint ptr %init_name.i258 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %init_name.i258, align 8
  %tobool.not.i259 = icmp eq ptr %63, null
  br i1 %tobool.not.i259, label %if.end.i260, label %do.end112.dev_name.exit262_crit_edge

do.end112.dev_name.exit262_crit_edge:             ; preds = %do.end112
  call void @__sanitizer_cov_trace_pc() #5
  br label %dev_name.exit262

if.end.i260:                                      ; preds = %do.end112
  call void @__sanitizer_cov_trace_pc() #5
  %64 = ptrtoint ptr %61 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %61, align 4
  br label %dev_name.exit262

dev_name.exit262:                                 ; preds = %if.end.i260, %do.end112.dev_name.exit262_crit_edge
  %retval.0.i261 = phi ptr [ %65, %if.end.i260 ], [ %63, %do.end112.dev_name.exit262_crit_edge ]
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 194, i32 noundef 9, ptr noundef nonnull @.str.1, ptr noundef %call117, ptr noundef %retval.0.i261) #3
  br label %if.end136

if.end136:                                        ; preds = %dev_name.exit262, %do.body81.if.end136_crit_edge
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %_wait78) #3
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !71
  call void @arm_heavy_mb() #3
  %66 = ptrtoint ptr %pri.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %pri.i, align 4
  %add.ptr145 = getelementptr i8, ptr %67, i32 %add15
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr145, i32 8192) #3, !srcloc !17
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !72
  call void @arm_heavy_mb() #3
  %68 = ptrtoint ptr %pri.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %pri.i, align 4
  %and12 = shl i32 %17, 2
  %mul151 = and i32 %and12, 60
  %add152 = or i32 %mul151, %add14
  %add.ptr153 = getelementptr i8, ptr %69, i32 %add152
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr153, i32 520093696) #3, !srcloc !17
  br label %if.end154

if.end154:                                        ; preds = %if.end136, %if.end.if.end154_crit_edge
  %add157 = add i32 %mul.i, 6406412
  %70 = ptrtoint ptr %pri.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %pri.i, align 4
  %add.ptr161 = getelementptr i8, ptr %71, i32 %add157
  %72 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr161) #3, !srcloc !14
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !73
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !74
  call void @arm_heavy_mb() #3
  %and167 = and i32 %72, -2
  %73 = ptrtoint ptr %pri.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %pri.i, align 4
  %add.ptr170 = getelementptr i8, ptr %74, i32 %add157
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr170, i32 %and167) #3, !srcloc !17
  %75 = ptrtoint ptr %pri.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %pri.i, align 4
  %add.ptr178 = getelementptr i8, ptr %76, i32 %add.i
  %77 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr178) #3, !srcloc !14
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !75
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !76
  call void @arm_heavy_mb() #3
  %and184 = and i32 %77, -50331649
  %78 = ptrtoint ptr %pri.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %pri.i, align 4
  %add.ptr187 = getelementptr i8, ptr %79, i32 %add.i
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr187, i32 %and184) #3, !srcloc !17
  br i1 %tobool.not, label %if.end154.if.end209_crit_edge, label %if.then191

if.end154.if.end209_crit_edge:                    ; preds = %if.end154
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end209

if.then191:                                       ; preds = %if.end154
  call void @__sanitizer_cov_trace_pc() #5
  %80 = ptrtoint ptr %pri.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %pri.i, align 4
  %add.ptr198 = getelementptr i8, ptr %81, i32 %add
  %82 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr198) #3, !srcloc !14
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !77
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !78
  call void @arm_heavy_mb() #3
  %or205 = or i32 %82, -2147483647
  %83 = ptrtoint ptr %pri.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %pri.i, align 4
  %add.ptr207 = getelementptr i8, ptr %84, i32 %add
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr207, i32 %or205) #3, !srcloc !17
  br label %if.end209

if.end209:                                        ; preds = %if.then191, %if.end154.if.end209_crit_edge
  %85 = ptrtoint ptr %disp to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %disp, align 4
  %device1.i263 = getelementptr inbounds %struct.nvkm_disp, ptr %86, i32 0, i32 1, i32 1, i32 1
  %87 = ptrtoint ptr %device1.i263 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %device1.i263, align 4
  %ior2.i = getelementptr inbounds %struct.nvkm_disp, ptr %86, i32 0, i32 3
  %89 = ptrtoint ptr %ior2.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %.pn38.i = load ptr, ptr %ior2.i, align 4
  %cmp.not39.i = icmp eq ptr %.pn38.i, %ior2.i
  br i1 %cmp.not39.i, label %if.end209.if.end14.i_crit_edge, label %for.body.lr.ph.i

if.end209.if.end14.i_crit_edge:                   ; preds = %if.end209
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end14.i

for.body.lr.ph.i:                                 ; preds = %if.end209
  %pri.i264 = getelementptr inbounds %struct.nvkm_device, ptr %88, i32 0, i32 11
  br label %for.body.outer.i

for.body.outer.i:                                 ; preds = %for.inc.thread.i.for.body.outer.i_crit_edge, %for.body.lr.ph.i
  %.pn41.ph.i = phi ptr [ %.pn43.i, %for.inc.thread.i.for.body.outer.i_crit_edge ], [ %.pn38.i, %for.body.lr.ph.i ]
  %used.0.off040.ph.i = phi i1 [ true, %for.inc.thread.i.for.body.outer.i_crit_edge ], [ false, %for.body.lr.ph.i ]
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.outer.i
  %.pn41.i = phi ptr [ %.pn.i, %for.inc.i.for.body.i_crit_edge ], [ %.pn41.ph.i, %for.body.outer.i ]
  %type.i = getelementptr i8, ptr %.pn41.i, i32 -16
  %90 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %91)
  %cmp4.not.i = icmp eq i32 %91, 1
  br i1 %cmp4.not.i, label %if.end.i269, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.inc.i

if.end.i269:                                      ; preds = %for.body.i
  %92 = ptrtoint ptr %pri.i264 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %pri.i264, align 4
  %id.i.i265 = getelementptr i8, ptr %.pn41.i, i32 -12
  %94 = ptrtoint ptr %id.i.i265 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %id.i.i265, align 4
  %mul.i.i266 = shl i32 %95, 11
  %add.i267 = add i32 %mul.i.i266, 6374144
  %add.ptr5.i = getelementptr i8, ptr %93, i32 %add.i267
  %96 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5.i) #3, !srcloc !14
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !79
  %and.i268 = and i32 %96, 50331648
  %97 = zext i32 %and.i268 to i64
  call void @__sanitizer_cov_trace_switch(i64 %97, ptr @__sancov_gen_cov_switch_values.4)
  switch i32 %and.i268, label %if.end.i269.for.inc.i_crit_edge [
    i32 33554432, label %if.end.i269.for.inc.thread.i_crit_edge
    i32 50331648, label %if.end.i269.for.inc.thread.i_crit_edge288
  ]

if.end.i269.for.inc.thread.i_crit_edge288:        ; preds = %if.end.i269
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.inc.thread.i

if.end.i269.for.inc.thread.i_crit_edge:           ; preds = %if.end.i269
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.inc.thread.i

if.end.i269.for.inc.i_crit_edge:                  ; preds = %if.end.i269
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.end.i269.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %98 = ptrtoint ptr %.pn41.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %.pn.i = load ptr, ptr %.pn41.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, %ior2.i
  br i1 %cmp.not.i, label %for.end.i, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.body.i

for.inc.thread.i:                                 ; preds = %if.end.i269.for.inc.thread.i_crit_edge, %if.end.i269.for.inc.thread.i_crit_edge288
  %99 = ptrtoint ptr %.pn41.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %.pn43.i = load ptr, ptr %.pn41.i, align 4
  %cmp.not44.i = icmp eq ptr %.pn43.i, %ior2.i
  br i1 %cmp.not44.i, label %for.inc.thread.i.cleanup_crit_edge, label %for.inc.thread.i.for.body.outer.i_crit_edge

for.inc.thread.i.for.body.outer.i_crit_edge:      ; preds = %for.inc.thread.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.body.outer.i

for.inc.thread.i.cleanup_crit_edge:               ; preds = %for.inc.thread.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

for.end.i:                                        ; preds = %for.inc.i
  br i1 %used.0.off040.ph.i, label %for.end.i.cleanup_crit_edge, label %for.end.i.if.end14.i_crit_edge

for.end.i.if.end14.i_crit_edge:                   ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end14.i

for.end.i.cleanup_crit_edge:                      ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end14.i:                                       ; preds = %for.end.i.if.end14.i_crit_edge, %if.end209.if.end14.i_crit_edge
  %pri16.i = getelementptr inbounds %struct.nvkm_device, ptr %88, i32 0, i32 11
  %100 = ptrtoint ptr %pri16.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %pri16.i, align 4
  %add.ptr17.i = getelementptr i8, ptr %101, i32 59456
  %102 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr17.i) #3, !srcloc !14
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !80
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !81
  call void @arm_heavy_mb() #3
  %and20.i = and i32 %102, 2147483647
  %103 = ptrtoint ptr %pri16.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %pri16.i, align 4
  %add.ptr22.i = getelementptr i8, ptr %104, i32 59456
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr22.i, i32 %and20.i) #3, !srcloc !17
  br label %cleanup

cleanup:                                          ; preds = %if.end14.i, %for.end.i.cleanup_crit_edge, %for.inc.thread.i.cleanup_crit_edge, %g94_sor_war_needed.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

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
!1 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/disp/sorg94.c", i32 96, i32 2}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @g94_sor, !4, !"g94_sor", i1 false, i1 false}
!4 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/disp/sorg94.c", i32 261, i32 1}
!5 = !{i32 1, !"wchar_size", i32 2}
!6 = !{i32 1, !"min_enum_size", i32 4}
!7 = !{i32 8, !"branch-target-enforcement", i32 0}
!8 = !{i32 8, !"sign-return-address", i32 0}
!9 = !{i32 8, !"sign-return-address-all", i32 0}
!10 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!11 = !{i32 7, !"uwtable", i32 1}
!12 = !{i32 7, !"frame-pointer", i32 2}
!13 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!14 = !{i64 5400325}
!15 = !{i64 2156244139}
!16 = !{i64 2156244539}
!17 = !{i64 5399907}
!18 = !{i64 2156245415}
!19 = !{i64 2156245811}
!20 = !{i64 2156246739}
!21 = !{i64 2156247243}
!22 = !{i64 2156248165}
!23 = !{i64 2156248549}
!24 = !{i64 2156249411}
!25 = !{i64 2156249795}
!26 = !{i64 2156250295}
!27 = !{i64 2156250701}
!28 = !{i64 2156251107}
!29 = !{i64 2156251489}
!30 = !{i64 2156251955}
!31 = !{i64 2156252389}
!32 = !{i64 2156253237}
!33 = !{i64 2156253645}
!34 = !{i64 2156254522}
!35 = !{i64 2156254912}
!36 = !{i64 2156255786}
!37 = !{i64 2156256188}
!38 = !{i64 2156258145}
!39 = !{i8 0, i8 2}
!40 = !{i64 2156259812}
!41 = !{i64 2156260206}
!42 = !{i64 2156261078}
!43 = !{i64 2156261472}
!44 = !{i64 2156292210}
!45 = !{i64 2156292595}
!46 = !{i64 2156261977}
!47 = !{i64 2156280424}
!48 = !{i64 2156280826}
!49 = !{i64 2156281706}
!50 = !{i64 2156282108}
!51 = !{i64 2156282988}
!52 = !{i64 2156283390}
!53 = !{i64 2156284270}
!54 = !{i64 2156284672}
!55 = !{i64 2156285552}
!56 = !{i64 2156285954}
!57 = !{i64 2156288754}
!58 = !{i64 2156289156}
!59 = !{i64 2156290036}
!60 = !{i64 2156290438}
!61 = !{i64 2156290947}
!62 = !{i64 2156291353}
!63 = !{i64 2156291733}
!64 = !{i64 2156267263}
!65 = !{i64 2156267669}
!66 = !{i64 2156268049}
!67 = !{i64 2156269976}
!68 = !{i64 2156271649}
!69 = !{i64 2156272051}
!70 = !{i64 2156274010}
!71 = !{i64 2156275286}
!72 = !{i64 2156275737}
!73 = !{i64 2156276585}
!74 = !{i64 2156276987}
!75 = !{i64 2156277867}
!76 = !{i64 2156278269}
!77 = !{i64 2156279149}
!78 = !{i64 2156279551}
!79 = !{i64 2156265582}
!80 = !{i64 2156266352}
!81 = !{i64 2156266754}
