; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/nouveau/nvkm/engine/disp/sorga102.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/nvkm/engine/disp/sorga102.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.nvkm_ior_func = type { %struct.anon.144, ptr, ptr, ptr, ptr, ptr, ptr, %struct.anon.153, %struct.anon.154, %struct.anon.155 }
%struct.anon.144 = type { ptr, ptr }
%struct.anon.153 = type { ptr, ptr }
%struct.anon.154 = type { [4 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.anon.155 = type { ptr, ptr, ptr }
%struct.nvkm_disp = type { ptr, %struct.nvkm_engine, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.nvkm_event, %struct.nvkm_event, %struct.anon.137 }
%struct.nvkm_engine = type { ptr, %struct.nvkm_subdev, %struct.spinlock, %struct.anon.136 }
%struct.nvkm_subdev = type { ptr, ptr, i32, i32, [16 x i8], i32, %struct.list_head, ptr, i8 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.anon.136 = type { %struct.refcount_struct, %struct.mutex, i8 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.nvkm_event = type { ptr, i32, i32, %struct.spinlock, %struct.spinlock, %struct.list_head, ptr }
%struct.anon.137 = type { %struct.spinlock, ptr }
%struct.nvkm_device = type { ptr, ptr, ptr, i32, i64, ptr, ptr, ptr, %struct.list_head, %struct.mutex, i32, ptr, %struct.nvkm_event, i32, ptr, i32, i32, i8, i32, %struct.anon.134, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [3 x ptr], ptr, ptr, [10 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [5 x ptr], [3 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head }
%struct.anon.134 = type { %struct.notifier_block }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.nvkm_ior = type { ptr, ptr, i32, i32, [8 x i8], %struct.list_head, i8, %struct.nvkm_ior_state, %struct.nvkm_ior_state, %struct.anon.145, %struct.anon.146 }
%struct.nvkm_ior_state = type { ptr, i32, i24 }
%struct.anon.145 = type { i8, i8, i8, i8 }
%struct.anon.146 = type { i8 }
%struct.nvkm_timer_wait = type { ptr, i64, i64, i64, i32 }

@ga102_sor_hda = internal constant { %struct.nvkm_ior_func, [36 x i8] } { %struct.nvkm_ior_func { %struct.anon.144 { ptr @gm200_sor_route_get, ptr @gm200_sor_route_set }, ptr @gv100_sor_state, ptr @nv50_sor_power, ptr null, ptr @ga102_sor_clock, ptr null, ptr null, %struct.anon.153 { ptr @gv100_hdmi_ctrl, ptr @gm200_hdmi_scdc }, %struct.anon.154 { [4 x i8] c"\00\01\02\03", ptr @ga102_sor_dp_links, ptr @g94_sor_dp_power, ptr @gm107_sor_dp_pattern, ptr @gm200_sor_dp_drive, ptr @tu102_sor_dp_vcpi, ptr @gv100_sor_dp_audio, ptr @gv100_sor_dp_audio_sym, ptr null, ptr @gv100_sor_dp_watermark }, %struct.anon.155 { ptr @gf119_hda_hpd, ptr @gf119_hda_eld, ptr @gv100_hda_device_entry } }, [36 x i8] zeroinitializer }, align 32
@ga102_sor = internal constant { %struct.nvkm_ior_func, [36 x i8] } { %struct.nvkm_ior_func { %struct.anon.144 { ptr @gm200_sor_route_get, ptr @gm200_sor_route_set }, ptr @gv100_sor_state, ptr @nv50_sor_power, ptr null, ptr @ga102_sor_clock, ptr null, ptr null, %struct.anon.153 { ptr @gv100_hdmi_ctrl, ptr @gm200_hdmi_scdc }, %struct.anon.154 { [4 x i8] c"\00\01\02\03", ptr @ga102_sor_dp_links, ptr @g94_sor_dp_power, ptr @gm107_sor_dp_pattern, ptr @gm200_sor_dp_drive, ptr @tu102_sor_dp_vcpi, ptr @gv100_sor_dp_audio, ptr @gv100_sor_dp_audio_sym, ptr null, ptr @gv100_sor_dp_watermark }, %struct.anon.155 zeroinitializer }, [36 x i8] zeroinitializer }, align 32
@.str = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"drivers/gpu/drm/nouveau/nvkm/engine/disp/sorga102.c\00", [44 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 8, i64 6, i64 10, i64 20, i64 30]
@___asan_gen_.2 = private unnamed_addr constant [14 x i8] c"ga102_sor_hda\00", align 1
@___asan_gen_.4 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.9, i32 76, i32 1 }
@___asan_gen_.5 = private unnamed_addr constant [10 x i8] c"ga102_sor\00", align 1
@___asan_gen_.7 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.9, i32 107, i32 1 }
@___asan_gen_.8 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.9 = private constant [55 x i8] c"../drivers/gpu/drm/nouveau/nvkm/engine/disp/sorga102.c\00", align 1
@___asan_gen_.10 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.9, i32 41, i32 3 }
@llvm.compiler.used = appending global [3 x ptr] [ptr @ga102_sor_hda, ptr @ga102_sor, ptr @.str], section "llvm.metadata"
@0 = internal global [3 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ga102_sor_hda to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.2 to i32), i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ga102_sor to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ga102_sor_new(ptr noundef %disp, i32 noundef %id) local_unnamed_addr #0 align 64 {
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
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #3, !srcloc !17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !18
  %shl = shl nuw i32 1, %id
  %and = and i32 %4, %shl
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %ga102_sor.ga102_sor_hda = select i1 %tobool.not, ptr @ga102_sor, ptr @ga102_sor_hda
  %call3 = tail call i32 @nvkm_ior_new_(ptr noundef nonnull %ga102_sor.ga102_sor_hda, ptr noundef %disp, i32 noundef 1, i32 noundef %id) #3
  ret i32 %call3
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_ior_new_(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gm200_sor_route_get(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @gm200_sor_route_set(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @gv100_sor_state(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nv50_sor_power(ptr noundef, i1 noundef zeroext, i1 noundef zeroext, i1 noundef zeroext, i1 noundef zeroext, i1 noundef zeroext) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ga102_sor_clock(ptr nocapture noundef readonly %sor) #0 align 64 {
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
  %proto = getelementptr inbounds %struct.nvkm_ior, ptr %sor, i32 0, i32 8, i32 2
  %4 = ptrtoint ptr %proto to i32
  call void @__asan_load4_noabort(i32 %4)
  %bf.load = load i32, ptr %proto, align 4
  %5 = and i32 %bf.load, 234881024
  call void @__sanitizer_cov_trace_const_cmp4(i32 67108864, i32 %5)
  %cmp = icmp eq i32 %5, 67108864
  br i1 %cmp, label %if.then, label %entry.do.body_crit_edge

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.body

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %tmds = getelementptr inbounds %struct.nvkm_ior, ptr %sor, i32 0, i32 10
  %6 = ptrtoint ptr %tmds to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %tmds, align 4, !range !19
  %8 = zext i8 %7 to i32
  br label %do.body

do.body:                                          ; preds = %if.then, %entry.do.body_crit_edge
  %div2.0 = phi i32 [ 0, %entry.do.body_crit_edge ], [ %8, %if.then ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !20
  tail call void @arm_heavy_mb() #3
  %pri = getelementptr inbounds %struct.nvkm_device, ptr %3, i32 0, i32 11
  %9 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %pri, align 4
  %id = getelementptr inbounds %struct.nvkm_ior, ptr %sor, i32 0, i32 3
  %11 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %id, align 4
  %mul = shl i32 %12, 4
  %add = add i32 %mul, 60424
  %add.ptr = getelementptr i8, ptr %10, i32 %add
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 0) #3, !srcloc !21
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !22
  tail call void @arm_heavy_mb() #3
  %13 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %pri, align 4
  %15 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %id, align 4
  %mul9 = shl i32 %16, 4
  %add10 = add i32 %mul9, 60420
  %add.ptr11 = getelementptr i8, ptr %14, i32 %add10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr11, i32 %div2.0) #3, !srcloc !21
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @gv100_hdmi_ctrl(ptr noundef, i32 noundef, i1 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, ptr noundef, i8 noundef zeroext, ptr noundef, i8 noundef zeroext) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @gm200_hdmi_scdc(ptr noundef, i8 noundef zeroext) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ga102_sor_dp_links(ptr nocapture noundef readonly %sor, ptr nocapture noundef readnone %aux) #0 align 64 {
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
  %mul.i181 = select i1 %cmp.i, i32 128, i32 0
  %add.i = or i32 %mul.i181, %mul.i
  %dp = getelementptr inbounds %struct.nvkm_ior, ptr %sor, i32 0, i32 9
  %bw = getelementptr inbounds %struct.nvkm_ior, ptr %sor, i32 0, i32 9, i32 3
  %8 = ptrtoint ptr %bw to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %bw, align 1
  %10 = zext i8 %9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values)
  switch i8 %9, label %do.end [
    i8 6, label %entry.sw.epilog_crit_edge
    i8 10, label %sw.bb3
    i8 20, label %sw.bb5
    i8 30, label %sw.bb7
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.epilog

sw.bb3:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.epilog

sw.bb5:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.epilog

sw.bb7:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.epilog

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 41, i32 noundef 9, ptr noundef null) #3
  br label %cleanup

sw.epilog:                                        ; preds = %sw.bb7, %sw.bb5, %sw.bb3, %entry.sw.epilog_crit_edge
  %clksor.0 = phi i32 [ 786432, %sw.bb7 ], [ 524288, %sw.bb5 ], [ 262144, %sw.bb3 ], [ 0, %entry.sw.epilog_crit_edge ]
  %nr = getelementptr inbounds %struct.nvkm_ior, ptr %sor, i32 0, i32 9, i32 2
  %11 = ptrtoint ptr %nr to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %nr, align 2
  %conv24 = zext i8 %12 to i32
  %notmask = shl nsw i32 -1, %conv24
  %sub = xor i32 %notmask, -1
  %shl25 = shl i32 %sub, 16
  %13 = ptrtoint ptr %dp to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %dp, align 4, !range !19
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool28.not = icmp eq i8 %14, 0
  %or30 = or i32 %shl25, 1073741824
  %spec.select = select i1 %tobool28.not, i32 %shl25, i32 %or30
  %ef = getelementptr inbounds %struct.nvkm_ior, ptr %sor, i32 0, i32 9, i32 1
  %15 = ptrtoint ptr %ef to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %ef, align 1, !range !19
  %or35 = or i32 %spec.select, 16384
  %add = add i32 %mul.i, 6365952
  %pri = getelementptr inbounds %struct.nvkm_device, ptr %3, i32 0, i32 11
  %17 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %pri, align 4
  %add.ptr = getelementptr i8, ptr %18, i32 %add
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #3, !srcloc !17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !23
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !24
  tail call void @arm_heavy_mb() #3
  %and = and i32 %19, -8126465
  %or42 = or i32 %and, %clksor.0
  %20 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %pri, align 4
  %add.ptr44 = getelementptr i8, ptr %21, i32 %add
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr44, i32 %or42) #3, !srcloc !21
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %_wait) #3
  %22 = call ptr @memset(ptr %_wait, i32 255, i32 40)
  call void @nvkm_timer_wait_init(ptr noundef %3, i64 noundef 40000000, ptr noundef nonnull %_wait) #3
  br label %do.body46

do.body46:                                        ; preds = %do.body46.do.body46_crit_edge, %sw.epilog
  %call48 = call i64 @nvkm_timer_wait_test(ptr noundef nonnull %_wait) #3
  %cmp = icmp sgt i64 %call48, -1
  br i1 %cmp, label %do.body46.do.body46_crit_edge, label %if.end90

do.body46.do.body46_crit_edge:                    ; preds = %do.body46
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.body46

if.end90:                                         ; preds = %do.body46
  call void @__sanitizer_cov_trace_pc() #5
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %tobool33.not = icmp eq i8 %16, 0
  %dpctrl.1 = select i1 %tobool33.not, i32 %spec.select, i32 %or35
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %_wait) #3
  %23 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %pri, align 4
  %add.ptr98 = getelementptr i8, ptr %24, i32 %add
  %25 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr98) #3, !srcloc !17
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !25
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !26
  call void @arm_heavy_mb() #3
  %and104 = and i32 %25, -196609
  %or105 = or i32 %and104, 65536
  %26 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %pri, align 4
  %add.ptr107 = getelementptr i8, ptr %27, i32 %add
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr107, i32 %or105) #3, !srcloc !21
  %add111 = add i32 %add.i, 6406412
  %28 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %pri, align 4
  %add.ptr115 = getelementptr i8, ptr %29, i32 %add111
  %30 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr115) #3, !srcloc !17
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !27
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !28
  call void @arm_heavy_mb() #3
  %and121 = and i32 %30, -4
  %or122 = or i32 %and121, 1
  %31 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %pri, align 4
  %add.ptr124 = getelementptr i8, ptr %32, i32 %add111
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr124, i32 %or122) #3, !srcloc !21
  %33 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %pri, align 4
  %add.ptr132 = getelementptr i8, ptr %34, i32 %add111
  %35 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr132) #3, !srcloc !17
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !29
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !30
  call void @arm_heavy_mb() #3
  %and138 = and i32 %35, -1075789825
  %or139 = or i32 %and138, %dpctrl.1
  %36 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %pri, align 4
  %add.ptr141 = getelementptr i8, ptr %37, i32 %add111
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr141, i32 %or139) #3, !srcloc !21
  br label %cleanup

cleanup:                                          ; preds = %if.end90, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ 0, %if.end90 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @g94_sor_dp_power(ptr noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @gm107_sor_dp_pattern(ptr noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @gm200_sor_dp_drive(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @tu102_sor_dp_vcpi(ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @gv100_sor_dp_audio(ptr noundef, i32 noundef, i1 noundef zeroext) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @gv100_sor_dp_audio_sym(ptr noundef, i32 noundef, i16 noundef zeroext, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @gv100_sor_dp_watermark(ptr noundef, i32 noundef, i8 noundef zeroext) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @gf119_hda_hpd(ptr noundef, i32 noundef, i1 noundef zeroext) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @gf119_hda_eld(ptr noundef, i32 noundef, ptr noundef, i8 noundef zeroext) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @gv100_hda_device_entry(ptr noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_timer_wait_init(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @nvkm_timer_wait_test(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

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
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind }
attributes #4 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #5 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6}
!llvm.module.flags = !{!8, !9, !10, !11, !12, !13, !14, !15}
!llvm.ident = !{!16}

!0 = !{ptr @ga102_sor_hda, !1, !"ga102_sor_hda", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/disp/sorga102.c", i32 76, i32 1}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/disp/sorga102.c", i32 41, i32 3}
!4 = distinct !{null, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/disp/sorga102.c", i32 54, i32 2}
!6 = !{ptr @ga102_sor, !7, !"ga102_sor", i1 false, i1 false}
!7 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/disp/sorga102.c", i32 107, i32 1}
!8 = !{i32 1, !"wchar_size", i32 2}
!9 = !{i32 1, !"min_enum_size", i32 4}
!10 = !{i32 8, !"branch-target-enforcement", i32 0}
!11 = !{i32 8, !"sign-return-address", i32 0}
!12 = !{i32 8, !"sign-return-address-all", i32 0}
!13 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!14 = !{i32 7, !"uwtable", i32 1}
!15 = !{i32 7, !"frame-pointer", i32 2}
!16 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!17 = !{i64 5395867}
!18 = !{i64 2156247802}
!19 = !{i8 0, i8 2}
!20 = !{i64 2156246913}
!21 = !{i64 5395449}
!22 = !{i64 2156247352}
!23 = !{i64 2156240196}
!24 = !{i64 2156240590}
!25 = !{i64 2156243480}
!26 = !{i64 2156243882}
!27 = !{i64 2156244762}
!28 = !{i64 2156245164}
!29 = !{i64 2156246040}
!30 = !{i64 2156246434}
