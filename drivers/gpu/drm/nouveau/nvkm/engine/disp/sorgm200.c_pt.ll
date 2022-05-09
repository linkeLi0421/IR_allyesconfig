; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/nouveau/nvkm/engine/disp/sorgm200.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/nvkm/engine/disp/sorgm200.c"
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
%struct.nvkm_outp = type { ptr, ptr, i32, %struct.dcb_output, ptr, %struct.list_head, ptr, i8, i8, ptr }
%struct.dcb_output = type { i32, i16, i16, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, %union.anon.139, i8 }
%union.anon.139 = type { %struct.anon.143 }
%struct.anon.143 = type { %struct.sor_conf, i32, i32 }
%struct.sor_conf = type { i32 }

@.str = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"drivers/gpu/drm/nouveau/nvkm/engine/disp/sorgm200.c\00", [44 x i8] zeroinitializer }, align 32
@gm200_sor_hda = internal constant { %struct.nvkm_ior_func, [36 x i8] } { %struct.nvkm_ior_func { %struct.anon { ptr @gm200_sor_route_get, ptr @gm200_sor_route_set }, ptr @gf119_sor_state, ptr @nv50_sor_power, ptr null, ptr @gf119_sor_clock, ptr null, ptr null, %struct.anon.145 { ptr @gk104_hdmi_ctrl, ptr @gm200_hdmi_scdc }, %struct.anon.146 { [4 x i8] c"\00\01\02\03", ptr @gf119_sor_dp_links, ptr @g94_sor_dp_power, ptr @gm107_sor_dp_pattern, ptr @gm200_sor_dp_drive, ptr @gf119_sor_dp_vcpi, ptr @gf119_sor_dp_audio, ptr @gf119_sor_dp_audio_sym, ptr null, ptr @gf119_sor_dp_watermark }, %struct.anon.147 { ptr @gf119_hda_hpd, ptr @gf119_hda_eld, ptr @gf119_hda_device_entry } }, [36 x i8] zeroinitializer }, align 32
@gm200_sor = internal constant { %struct.nvkm_ior_func, [36 x i8] } { %struct.nvkm_ior_func { %struct.anon { ptr @gm200_sor_route_get, ptr @gm200_sor_route_set }, ptr @gf119_sor_state, ptr @nv50_sor_power, ptr null, ptr @gf119_sor_clock, ptr null, ptr null, %struct.anon.145 { ptr @gk104_hdmi_ctrl, ptr @gm200_hdmi_scdc }, %struct.anon.146 { [4 x i8] c"\00\01\02\03", ptr @gf119_sor_dp_links, ptr @g94_sor_dp_power, ptr @gm107_sor_dp_pattern, ptr @gm200_sor_dp_drive, ptr @gf119_sor_dp_vcpi, ptr @gf119_sor_dp_audio, ptr @gf119_sor_dp_audio_sym, ptr null, ptr @gf119_sor_dp_watermark }, %struct.anon.147 zeroinitializer }, [36 x i8] zeroinitializer }, align 32
@___asan_gen_.1 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.3 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.8, i32 84, i32 27 }
@___asan_gen_.4 = private unnamed_addr constant [14 x i8] c"gm200_sor_hda\00", align 1
@___asan_gen_.6 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.8, i32 92, i32 1 }
@___asan_gen_.7 = private unnamed_addr constant [10 x i8] c"gm200_sor\00", align 1
@___asan_gen_.8 = private constant [55 x i8] c"../drivers/gpu/drm/nouveau/nvkm/engine/disp/sorgm200.c\00", align 1
@___asan_gen_.9 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.8, i32 123, i32 1 }
@llvm.compiler.used = appending global [3 x ptr] [ptr @.str, ptr @gm200_sor_hda, ptr @gm200_sor], section "llvm.metadata"
@0 = internal global [3 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gm200_sor_hda to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gm200_sor to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @gm200_sor_dp_drive(ptr nocapture noundef readonly %sor, i32 noundef %ln, i32 noundef %pc, i32 noundef %dc, i32 noundef %pe, i32 noundef %pu) #0 align 64 {
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
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #3, !srcloc !15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !16
  %15 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %pri, align 4
  %add7 = add i32 %add.i, 6406432
  %add.ptr8 = getelementptr i8, ptr %16, i32 %add7
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr8) #3, !srcloc !15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !17
  %18 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %pri, align 4
  %add17 = add i32 %add.i, 6406448
  %add.ptr18 = getelementptr i8, ptr %19, i32 %add17
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr18) #3, !srcloc !15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !18
  %and23 = and i32 %20, 3840
  %and = shl i32 %pu, 8
  %shl24 = and i32 %and, 3840
  call void @__sanitizer_cov_trace_cmp4(i32 %and23, i32 %shl24)
  %cmp = icmp ult i32 %and23, %shl24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ln)
  %cmp26 = icmp eq i32 %ln, 0
  %or.cond = or i1 %cmp26, %cmp
  %and29 = and i32 %20, -3841
  %or = or i32 %and29, %shl24
  %data.sroa.8.0 = select i1 %or.cond, i32 %or, i32 %20
  %conv = zext i8 %11 to i32
  %mul = shl nuw nsw i32 %conv, 3
  %shl = shl i32 255, %mul
  %neg = xor i32 %shl, -1
  %and13 = and i32 %17, %neg
  %and3 = and i32 %14, %neg
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !19
  tail call void @arm_heavy_mb() #3
  %shl33 = shl i32 %dc, %mul
  %or34 = or i32 %and3, %shl33
  %21 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %pri, align 4
  %add.ptr37 = getelementptr i8, ptr %22, i32 %add
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr37, i32 %or34) #3, !srcloc !20
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !21
  tail call void @arm_heavy_mb() #3
  %shl42 = shl i32 %pe, %mul
  %or43 = or i32 %and13, %shl42
  %23 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %pri, align 4
  %add.ptr46 = getelementptr i8, ptr %24, i32 %add7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr46, i32 %or43) #3, !srcloc !20
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !22
  tail call void @arm_heavy_mb() #3
  %25 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %pri, align 4
  %add.ptr53 = getelementptr i8, ptr %26, i32 %add17
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr53, i32 %data.sroa.8.0) #3, !srcloc !20
  %27 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %pri, align 4
  %add56 = add i32 %add.i, 6406460
  %add.ptr57 = getelementptr i8, ptr %28, i32 %add56
  %29 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr57) #3, !srcloc !15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !23
  %and62 = and i32 %29, %neg
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !24
  tail call void @arm_heavy_mb() #3
  %shl68 = shl i32 %pc, %mul
  %or69 = or i32 %and62, %shl68
  %30 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %pri, align 4
  %add.ptr72 = getelementptr i8, ptr %31, i32 %add56
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr72, i32 %or69) #3, !srcloc !20
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @gm200_sor_route_set(ptr nocapture noundef readonly %outp, ptr noundef readonly %ior) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %disp = getelementptr inbounds %struct.nvkm_outp, ptr %outp, i32 0, i32 1
  %0 = ptrtoint ptr %disp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %disp, align 4
  %device1 = getelementptr inbounds %struct.nvkm_disp, ptr %1, i32 0, i32 1, i32 1, i32 1
  %2 = ptrtoint ptr %device1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %device1, align 4
  %or = getelementptr inbounds %struct.nvkm_outp, ptr %outp, i32 0, i32 3, i32 9
  %4 = ptrtoint ptr %or to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %or, align 1
  %conv = zext i8 %5 to i32
  %6 = tail call i32 @llvm.cttz.i32(i32 %conv, i1 false) #3, !range !25
  %mul = shl nuw nsw i32 %6, 8
  %tobool.not = icmp eq ptr %ior, null
  br i1 %tobool.not, label %entry.cond.end7_crit_edge, label %cond.true3

entry.cond.end7_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cond.end7

cond.true3:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %id = getelementptr inbounds %struct.nvkm_ior, ptr %ior, i32 0, i32 3
  %7 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %id, align 4
  %add = add i32 %8, 1
  %link4 = getelementptr inbounds %struct.nvkm_ior, ptr %ior, i32 0, i32 8, i32 2
  %9 = ptrtoint ptr %link4 to i32
  call void @__asan_load4_noabort(i32 %9)
  %bf.load = load i32, ptr %link4, align 4
  %10 = and i32 %bf.load, 25165824
  call void @__sanitizer_cov_trace_const_cmp4(i32 16777216, i32 %10)
  %cmp = icmp eq i32 %10, 16777216
  %conv5 = zext i1 %cmp to i32
  br label %cond.end7

cond.end7:                                        ; preds = %cond.true3, %entry.cond.end7_crit_edge
  %cond63 = phi i32 [ %add, %cond.true3 ], [ 0, %entry.cond.end7_crit_edge ]
  %cond8 = phi i32 [ %conv5, %cond.true3 ], [ 0, %entry.cond.end7_crit_edge ]
  %11 = getelementptr inbounds %struct.nvkm_outp, ptr %outp, i32 0, i32 3, i32 13
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %11, align 4
  %and = and i32 %13, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool11.not = icmp eq i32 %and, 0
  br i1 %tobool11.not, label %cond.end7.if.end_crit_edge, label %if.then

cond.end7.if.end_crit_edge:                       ; preds = %cond.end7
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end

if.then:                                          ; preds = %cond.end7
  call void @__sanitizer_cov_trace_pc() #5
  %add12 = add nuw nsw i32 %mul, 6365960
  %pri = getelementptr inbounds %struct.nvkm_device, ptr %3, i32 0, i32 11
  %14 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %pri, align 4
  %add.ptr = getelementptr i8, ptr %15, i32 %add12
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #3, !srcloc !15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !26
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !27
  tail call void @arm_heavy_mb() #3
  %and14 = and i32 %16, -32
  %shl = shl nuw nsw i32 %cond8, 4
  %or15 = or i32 %shl, %cond63
  %or16 = or i32 %or15, %and14
  %17 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %pri, align 4
  %add.ptr18 = getelementptr i8, ptr %18, i32 %add12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr18, i32 %or16) #3, !srcloc !20
  %inc = add nuw nsw i32 %cond8, 1
  br label %if.end

if.end:                                           ; preds = %if.then, %cond.end7.if.end_crit_edge
  %link.0 = phi i32 [ %inc, %if.then ], [ %cond8, %cond.end7.if.end_crit_edge ]
  %19 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %11, align 4
  %and22 = and i32 %20, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and22)
  %tobool23.not = icmp eq i32 %and22, 0
  br i1 %tobool23.not, label %if.end.if.end44_crit_edge, label %if.then24

if.end.if.end44_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end44

if.then24:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  %add27 = add nuw nsw i32 %mul, 6366088
  %pri30 = getelementptr inbounds %struct.nvkm_device, ptr %3, i32 0, i32 11
  %21 = ptrtoint ptr %pri30 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %pri30, align 4
  %add.ptr31 = getelementptr i8, ptr %22, i32 %add27
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr31) #3, !srcloc !15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !28
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !29
  tail call void @arm_heavy_mb() #3
  %and37 = and i32 %23, -32
  %shl38 = shl nuw nsw i32 %link.0, 4
  %or39 = or i32 %shl38, %cond63
  %or40 = or i32 %or39, %and37
  %24 = ptrtoint ptr %pri30 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %pri30, align 4
  %add.ptr42 = getelementptr i8, ptr %25, i32 %add27
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr42, i32 %or40) #3, !srcloc !20
  br label %if.end44

if.end44:                                         ; preds = %if.then24, %if.end.if.end44_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @gm200_sor_route_get(ptr nocapture noundef readonly %outp, ptr nocapture noundef %link) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %disp = getelementptr inbounds %struct.nvkm_outp, ptr %outp, i32 0, i32 1
  %0 = ptrtoint ptr %disp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %disp, align 4
  %device1 = getelementptr inbounds %struct.nvkm_disp, ptr %1, i32 0, i32 1, i32 1, i32 1
  %2 = ptrtoint ptr %device1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %device1, align 4
  %4 = getelementptr inbounds %struct.nvkm_outp, ptr %outp, i32 0, i32 3, i32 13
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %4, align 4
  %7 = ptrtoint ptr %link to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %link, align 4
  %or = getelementptr inbounds %struct.nvkm_outp, ptr %outp, i32 0, i32 3, i32 9
  %8 = ptrtoint ptr %or to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %or, align 1
  %conv = zext i8 %9 to i32
  %10 = tail call i32 @llvm.cttz.i32(i32 %conv, i1 false) #3, !range !25
  %mul = shl nuw nsw i32 %10, 8
  %pri = getelementptr inbounds %struct.nvkm_device, ptr %3, i32 0, i32 11
  %and = and i32 %6, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.for.inc_crit_edge, label %if.then

entry.for.inc_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.inc

if.then:                                          ; preds = %entry
  %11 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %pri, align 4
  %mul5 = shl nuw nsw i32 %10, 8
  %add = add nuw nsw i32 %mul5, 6365960
  %add.ptr = getelementptr i8, ptr %12, i32 %add
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #3, !srcloc !15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !30
  %and8 = and i32 %13, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8)
  %tobool11.not = icmp eq i32 %and8, 0
  br i1 %tobool11.not, label %if.then.cleanup59_crit_edge, label %if.end

if.then.cleanup59_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup59

if.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #5
  %and7 = lshr i32 %13, 4
  %shr = and i32 %and7, 1
  %14 = ptrtoint ptr %link to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %link, align 4
  %or14 = or i32 %15, %shr
  store i32 %or14, ptr %link, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.end, %entry.for.inc_crit_edge
  %lnk.sroa.0.0 = phi i32 [ -1, %entry.for.inc_crit_edge ], [ %shr, %if.end ]
  %sor.sroa.0.0 = phi i32 [ -1, %entry.for.inc_crit_edge ], [ %and8, %if.end ]
  %and.1 = and i32 %6, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.1)
  %tobool.not.1 = icmp eq i32 %and.1, 0
  br i1 %tobool.not.1, label %for.inc.for.inc.1_crit_edge, label %if.then.1

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.inc.1

if.then.1:                                        ; preds = %for.inc
  %16 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %pri, align 4
  %add.1 = add nuw nsw i32 %mul, 6366088
  %add.ptr.1 = getelementptr i8, ptr %17, i32 %add.1
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.1) #3, !srcloc !15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !30
  %and8.1 = and i32 %18, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8.1)
  %tobool11.not.1 = icmp eq i32 %and8.1, 0
  br i1 %tobool11.not.1, label %if.then.1.cleanup59_crit_edge, label %if.end.1

if.then.1.cleanup59_crit_edge:                    ; preds = %if.then.1
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup59

if.end.1:                                         ; preds = %if.then.1
  call void @__sanitizer_cov_trace_pc() #5
  %and7.1 = lshr i32 %18, 4
  %shr.1 = and i32 %and7.1, 1
  %19 = ptrtoint ptr %link to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %link, align 4
  %or14.1 = or i32 %20, %shr.1
  store i32 %or14.1, ptr %link, align 4
  br label %for.inc.1

for.inc.1:                                        ; preds = %if.end.1, %for.inc.for.inc.1_crit_edge
  %lnk.sroa.5.0 = phi i32 [ -1, %for.inc.for.inc.1_crit_edge ], [ %shr.1, %if.end.1 ]
  %sor.sroa.6.0 = phi i32 [ -1, %for.inc.for.inc.1_crit_edge ], [ %and8.1, %if.end.1 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %6)
  %cmp17 = icmp eq i32 %6, 3
  br i1 %cmp17, label %if.then19, label %if.end54

if.then19:                                        ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_cmp4(i32 %sor.sroa.0.0, i32 %sor.sroa.6.0)
  %cmp22.not = icmp eq i32 %sor.sroa.0.0, %sor.sroa.6.0
  br i1 %cmp22.not, label %lor.lhs.false, label %if.then19.cleanup59_crit_edge

if.then19.cleanup59_crit_edge:                    ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup59

lor.lhs.false:                                    ; preds = %if.then19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %lnk.sroa.0.0)
  %tobool25.not = icmp ne i32 %lnk.sroa.0.0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %lnk.sroa.5.0)
  %tobool27.not = icmp eq i32 %lnk.sroa.5.0, 0
  %or.cond = select i1 %tobool25.not, i1 true, i1 %tobool27.not
  br i1 %or.cond, label %do.end, label %lor.lhs.false.cond.end_crit_edge, !prof !31

lor.lhs.false.cond.end_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #5
  br label %cond.end

do.end:                                           ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 84, i32 noundef 9, ptr noundef null) #3
  br label %cleanup59

if.end54:                                         ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #5
  %spec.select = select i1 %tobool.not, i32 %sor.sroa.6.0, i32 %sor.sroa.0.0
  br label %cond.end

cond.end:                                         ; preds = %if.end54, %lor.lhs.false.cond.end_crit_edge
  %cond = phi i32 [ %sor.sroa.0.0, %lor.lhs.false.cond.end_crit_edge ], [ %spec.select, %if.end54 ]
  %sub = add nsw i32 %cond, -1
  br label %cleanup59

cleanup59:                                        ; preds = %cond.end, %do.end, %if.then19.cleanup59_crit_edge, %if.then.1.cleanup59_crit_edge, %if.then.cleanup59_crit_edge
  %retval.3 = phi i32 [ %sub, %cond.end ], [ -1, %do.end ], [ -1, %if.then19.cleanup59_crit_edge ], [ -1, %if.then.1.cleanup59_crit_edge ], [ -1, %if.then.cleanup59_crit_edge ]
  ret i32 %retval.3
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @gm200_sor_new(ptr noundef %disp, i32 noundef %id) local_unnamed_addr #0 align 64 {
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
  %add.ptr = getelementptr i8, ptr %3, i32 565596
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #3, !srcloc !15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !32
  %and = and i32 %4, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %5 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %pri, align 4
  %add.ptr4 = getelementptr i8, ptr %6, i32 1052724
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr4) #3, !srcloc !15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !33
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %hda.0 = phi i32 [ %4, %entry.if.end_crit_edge ], [ %7, %if.then ]
  %shl = shl nuw i32 1, %id
  %and7 = and i32 %hda.0, %shl
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7)
  %tobool8.not = icmp eq i32 %and7, 0
  %gm200_sor.gm200_sor_hda = select i1 %tobool8.not, ptr @gm200_sor, ptr @gm200_sor_hda
  %call12 = tail call i32 @nvkm_ior_new_(ptr noundef nonnull %gm200_sor.gm200_sor_hda, ptr noundef %disp, i32 noundef 1, i32 noundef %id) #3
  ret i32 %call12
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_ior_new_(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @gf119_sor_state(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @nv50_sor_power(ptr noundef, i1 noundef zeroext, i1 noundef zeroext, i1 noundef zeroext, i1 noundef zeroext, i1 noundef zeroext) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gf119_sor_clock(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gk104_hdmi_ctrl(ptr noundef, i32 noundef, i1 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, ptr noundef, i8 noundef zeroext, ptr noundef, i8 noundef zeroext) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gm200_hdmi_scdc(ptr noundef, i8 noundef zeroext) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gf119_sor_dp_links(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @g94_sor_dp_power(ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gm107_sor_dp_pattern(ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gf119_sor_dp_vcpi(ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gf119_sor_dp_audio(ptr noundef, i32 noundef, i1 noundef zeroext) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gf119_sor_dp_audio_sym(ptr noundef, i32 noundef, i16 noundef zeroext, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gf119_sor_dp_watermark(ptr noundef, i32 noundef, i8 noundef zeroext) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gf119_hda_hpd(ptr noundef, i32 noundef, i1 noundef zeroext) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gf119_hda_eld(ptr noundef, i32 noundef, ptr noundef, i8 noundef zeroext) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gf119_hda_device_entry(ptr noundef, i32 noundef) #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

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
attributes #2 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #3 = { nounwind }
attributes #4 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #5 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4}
!llvm.module.flags = !{!6, !7, !8, !9, !10, !11, !12, !13}
!llvm.ident = !{!14}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/disp/sorgm200.c", i32 84, i32 27}
!2 = !{ptr @gm200_sor_hda, !3, !"gm200_sor_hda", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/disp/sorgm200.c", i32 92, i32 1}
!4 = !{ptr @gm200_sor, !5, !"gm200_sor", i1 false, i1 false}
!5 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/disp/sorgm200.c", i32 123, i32 1}
!6 = !{i32 1, !"wchar_size", i32 2}
!7 = !{i32 1, !"min_enum_size", i32 4}
!8 = !{i32 8, !"branch-target-enforcement", i32 0}
!9 = !{i32 8, !"sign-return-address", i32 0}
!10 = !{i32 8, !"sign-return-address-all", i32 0}
!11 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!12 = !{i32 7, !"uwtable", i32 1}
!13 = !{i32 7, !"frame-pointer", i32 2}
!14 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!15 = !{i64 5396670}
!16 = !{i64 2156236643}
!17 = !{i64 2156237049}
!18 = !{i64 2156237455}
!19 = !{i64 2156237837}
!20 = !{i64 5396252}
!21 = !{i64 2156238303}
!22 = !{i64 2156238737}
!23 = !{i64 2156239211}
!24 = !{i64 2156239593}
!25 = !{i32 0, i32 33}
!26 = !{i64 2156240459}
!27 = !{i64 2156240871}
!28 = !{i64 2156241761}
!29 = !{i64 2156242173}
!30 = !{i64 2156242780}
!31 = !{!"branch_weights", i32 2002, i32 2000}
!32 = !{i64 2156243696}
!33 = !{i64 2156244081}
