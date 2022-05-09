; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/nouveau/nvkm/engine/disp/sortu102.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/nvkm/engine/disp/sortu102.c"
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

@tu102_sor_hda = internal constant { %struct.nvkm_ior_func, [36 x i8] } { %struct.nvkm_ior_func { %struct.anon { ptr @gm200_sor_route_get, ptr @gm200_sor_route_set }, ptr @gv100_sor_state, ptr @nv50_sor_power, ptr null, ptr @gf119_sor_clock, ptr null, ptr null, %struct.anon.145 { ptr @gv100_hdmi_ctrl, ptr @gm200_hdmi_scdc }, %struct.anon.146 { [4 x i8] c"\00\01\02\03", ptr @tu102_sor_dp_links, ptr @g94_sor_dp_power, ptr @gm107_sor_dp_pattern, ptr @gm200_sor_dp_drive, ptr @tu102_sor_dp_vcpi, ptr @gv100_sor_dp_audio, ptr @gv100_sor_dp_audio_sym, ptr null, ptr @gv100_sor_dp_watermark }, %struct.anon.147 { ptr @gf119_hda_hpd, ptr @gf119_hda_eld, ptr @gv100_hda_device_entry } }, [36 x i8] zeroinitializer }, align 32
@tu102_sor = internal constant { %struct.nvkm_ior_func, [36 x i8] } { %struct.nvkm_ior_func { %struct.anon { ptr @gm200_sor_route_get, ptr @gm200_sor_route_set }, ptr @gv100_sor_state, ptr @nv50_sor_power, ptr null, ptr @gf119_sor_clock, ptr null, ptr null, %struct.anon.145 { ptr @gv100_hdmi_ctrl, ptr @gm200_hdmi_scdc }, %struct.anon.146 { [4 x i8] c"\00\01\02\03", ptr @tu102_sor_dp_links, ptr @g94_sor_dp_power, ptr @gm107_sor_dp_pattern, ptr @gm200_sor_dp_drive, ptr @tu102_sor_dp_vcpi, ptr @gv100_sor_dp_audio, ptr @gv100_sor_dp_audio_sym, ptr null, ptr @gv100_sor_dp_watermark }, %struct.anon.147 zeroinitializer }, [36 x i8] zeroinitializer }, align 32
@___asan_gen_.2 = private unnamed_addr constant [14 x i8] c"tu102_sor_hda\00", align 1
@___asan_gen_.4 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.6, i32 65, i32 1 }
@___asan_gen_.5 = private unnamed_addr constant [10 x i8] c"tu102_sor\00", align 1
@___asan_gen_.6 = private constant [55 x i8] c"../drivers/gpu/drm/nouveau/nvkm/engine/disp/sortu102.c\00", align 1
@___asan_gen_.7 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.6, i32 96, i32 1 }
@llvm.compiler.used = appending global [2 x ptr] [ptr @tu102_sor_hda, ptr @tu102_sor], section "llvm.metadata"
@0 = internal global [2 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tu102_sor_hda to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.2 to i32), i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tu102_sor to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @tu102_sor_dp_vcpi(ptr nocapture noundef readonly %sor, i32 noundef %head, i8 noundef zeroext %slot, i8 noundef zeroext %slot_nr, i16 noundef zeroext %pbn, i16 noundef zeroext %aligned) #0 align 64 {
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
  %add = add i32 %mul, 6382972
  %pri = getelementptr inbounds %struct.nvkm_device, ptr %3, i32 0, i32 11
  %4 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pri, align 4
  %add.ptr = getelementptr i8, ptr %5, i32 %add
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #3, !srcloc !16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !18
  tail call void @arm_heavy_mb() #3
  %conv = zext i16 %aligned to i32
  %shl = shl nuw i32 %conv, 16
  %conv2 = zext i16 %pbn to i32
  %or = or i32 %shl, %conv2
  %7 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %pri, align 4
  %add.ptr5 = getelementptr i8, ptr %8, i32 %add
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5, i32 %or) #3, !srcloc !19
  %add9 = add i32 %mul, 6382968
  %9 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %pri, align 4
  %add.ptr13 = getelementptr i8, ptr %10, i32 %add9
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr13) #3, !srcloc !16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !20
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !21
  tail call void @arm_heavy_mb() #3
  %and19 = and i32 %11, -16192
  %conv20 = zext i8 %slot_nr to i32
  %shl21 = shl nuw nsw i32 %conv20, 8
  %conv22 = zext i8 %slot to i32
  %or23 = or i32 %shl21, %conv22
  %or24 = or i32 %and19, %or23
  %12 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %pri, align 4
  %add.ptr26 = getelementptr i8, ptr %13, i32 %add9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr26, i32 %or24) #3, !srcloc !19
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @tu102_sor_new(ptr noundef %disp, i32 noundef %id) local_unnamed_addr #0 align 64 {
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
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #3, !srcloc !16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !22
  %shl = shl nuw i32 1, %id
  %and = and i32 %4, %shl
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %tu102_sor.tu102_sor_hda = select i1 %tobool.not, ptr @tu102_sor, ptr @tu102_sor_hda
  %call3 = tail call i32 @nvkm_ior_new_(ptr noundef nonnull %tu102_sor.tu102_sor_hda, ptr noundef %disp, i32 noundef 1, i32 noundef %id) #3
  ret i32 %call3
}

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

; Function Attrs: null_pointer_is_valid
declare dso_local void @gf119_sor_clock(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @gv100_hdmi_ctrl(ptr noundef, i32 noundef, i1 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, ptr noundef, i8 noundef zeroext, ptr noundef, i8 noundef zeroext) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @gm200_hdmi_scdc(ptr noundef, i8 noundef zeroext) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tu102_sor_dp_links(ptr nocapture noundef readonly %sor, ptr nocapture noundef readnone %aux) #0 align 64 {
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
  %dp = getelementptr inbounds %struct.nvkm_ior, ptr %sor, i32 0, i32 9
  %bw = getelementptr inbounds %struct.nvkm_ior, ptr %sor, i32 0, i32 9, i32 3
  %7 = ptrtoint ptr %bw to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %bw, align 1
  %conv = zext i8 %8 to i32
  %shl = shl nuw nsw i32 %conv, 18
  %nr = getelementptr inbounds %struct.nvkm_ior, ptr %sor, i32 0, i32 9, i32 2
  %9 = ptrtoint ptr %nr to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %nr, align 2
  %11 = ptrtoint ptr %dp to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %dp, align 4, !range !23
  %ef = getelementptr inbounds %struct.nvkm_ior, ptr %sor, i32 0, i32 9, i32 1
  %13 = ptrtoint ptr %ef to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %ef, align 1, !range !23
  %add = add i32 %mul.i, 6365952
  %pri = getelementptr inbounds %struct.nvkm_device, ptr %3, i32 0, i32 11
  %15 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %pri, align 4
  %add.ptr = getelementptr i8, ptr %16, i32 %add
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #3, !srcloc !16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !25
  tail call void @arm_heavy_mb() #3
  %and = and i32 %17, -8126465
  %or16 = or i32 %and, %shl
  %18 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %pri, align 4
  %add.ptr18 = getelementptr i8, ptr %19, i32 %add
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr18, i32 %or16) #3, !srcloc !19
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %_wait) #3
  %20 = call ptr @memset(ptr %_wait, i32 255, i32 40)
  call void @nvkm_timer_wait_init(ptr noundef %3, i64 noundef 40000000, ptr noundef nonnull %_wait) #3
  br label %do.body20

do.body20:                                        ; preds = %do.body20.do.body20_crit_edge, %entry
  %call22 = call i64 @nvkm_timer_wait_test(ptr noundef nonnull %_wait) #3
  %cmp = icmp sgt i64 %call22, -1
  br i1 %cmp, label %do.body20.do.body20_crit_edge, label %if.end59

do.body20.do.body20_crit_edge:                    ; preds = %do.body20
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.body20

if.end59:                                         ; preds = %do.body20
  call void @__sanitizer_cov_trace_pc() #5
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool11.not = icmp eq i8 %14, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool.not = icmp eq i8 %12, 0
  %conv4 = zext i8 %10 to i32
  %notmask = shl nsw i32 -1, %conv4
  %sub = xor i32 %notmask, -1
  %shl6 = shl i32 %sub, 16
  %or9 = or i32 %shl6, 1073741824
  %spec.select = select i1 %tobool.not, i32 %shl6, i32 %or9
  %or13 = or i32 %spec.select, 16384
  %dpctrl.1 = select i1 %tobool11.not, i32 %spec.select, i32 %or13
  %21 = and i32 %bf.load.i, 25165824
  call void @__sanitizer_cov_trace_const_cmp4(i32 16777216, i32 %21)
  %cmp.i = icmp eq i32 %21, 16777216
  %mul.i142 = select i1 %cmp.i, i32 128, i32 0
  %add.i = or i32 %mul.i142, %mul.i
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %_wait) #3
  %22 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %pri, align 4
  %add.ptr67 = getelementptr i8, ptr %23, i32 %add
  %24 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr67) #3, !srcloc !16
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !26
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !27
  call void @arm_heavy_mb() #3
  %and73 = and i32 %24, -196609
  %or74 = or i32 %and73, 65536
  %25 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %pri, align 4
  %add.ptr76 = getelementptr i8, ptr %26, i32 %add
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr76, i32 %or74) #3, !srcloc !19
  %add80 = add i32 %add.i, 6406412
  %27 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %pri, align 4
  %add.ptr84 = getelementptr i8, ptr %28, i32 %add80
  %29 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr84) #3, !srcloc !16
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !28
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !29
  call void @arm_heavy_mb() #3
  %and90 = and i32 %29, -4
  %or91 = or i32 %and90, 1
  %30 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %pri, align 4
  %add.ptr93 = getelementptr i8, ptr %31, i32 %add80
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr93, i32 %or91) #3, !srcloc !19
  %32 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %pri, align 4
  %add.ptr101 = getelementptr i8, ptr %33, i32 %add80
  %34 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr101) #3, !srcloc !16
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !30
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !31
  call void @arm_heavy_mb() #3
  %and107 = and i32 %34, -1075789825
  %or108 = or i32 %and107, %dpctrl.1
  %35 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %pri, align 4
  %add.ptr110 = getelementptr i8, ptr %36, i32 %add80
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr110, i32 %or108) #3, !srcloc !19
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @g94_sor_dp_power(ptr noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @gm107_sor_dp_pattern(ptr noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @gm200_sor_dp_drive(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) #2

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
declare dso_local void @nvkm_timer_wait_init(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @nvkm_timer_wait_test(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

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
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind }
attributes #4 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #5 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !5}
!llvm.module.flags = !{!7, !8, !9, !10, !11, !12, !13, !14}
!llvm.ident = !{!15}

!0 = !{ptr @tu102_sor_hda, !1, !"tu102_sor_hda", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/disp/sortu102.c", i32 65, i32 1}
!2 = distinct !{null, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/disp/sortu102.c", i32 56, i32 2}
!4 = distinct !{null, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @tu102_sor, !6, !"tu102_sor", i1 false, i1 false}
!6 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/disp/sortu102.c", i32 96, i32 1}
!7 = !{i32 1, !"wchar_size", i32 2}
!8 = !{i32 1, !"min_enum_size", i32 4}
!9 = !{i32 8, !"branch-target-enforcement", i32 0}
!10 = !{i32 8, !"sign-return-address", i32 0}
!11 = !{i32 8, !"sign-return-address-all", i32 0}
!12 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!13 = !{i32 7, !"uwtable", i32 1}
!14 = !{i32 7, !"frame-pointer", i32 2}
!15 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!16 = !{i64 5395686}
!17 = !{i64 2156239512}
!18 = !{i64 2156239936}
!19 = !{i64 5395268}
!20 = !{i64 2156240838}
!21 = !{i64 2156241262}
!22 = !{i64 2156248871}
!23 = !{i8 0, i8 2}
!24 = !{i64 2156242149}
!25 = !{i64 2156242543}
!26 = !{i64 2156245433}
!27 = !{i64 2156245835}
!28 = !{i64 2156246715}
!29 = !{i64 2156247117}
!30 = !{i64 2156247993}
!31 = !{i64 2156248387}
