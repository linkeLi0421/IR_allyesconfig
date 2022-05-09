; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/nouveau/nvkm/engine/disp/hdmigf119.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/nvkm/engine/disp/hdmigf119.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.packed_hdmi_infoframe = type { i32, i32, i32, i32, i32 }
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

@llvm.used = appending global [1 x ptr] [ptr @asan.module_ctor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @gf119_hdmi_ctrl(ptr nocapture noundef readonly %ior, i32 noundef %head, i1 noundef zeroext %enable, i8 noundef zeroext %max_ac_packet, i8 noundef zeroext %rekey, ptr noundef %avi, i8 noundef zeroext %avi_size, ptr noundef %vendor, i8 noundef zeroext %vendor_size) local_unnamed_addr #0 align 64 {
entry:
  %avi_infoframe = alloca %struct.packed_hdmi_infoframe, align 4
  %vendor_infoframe = alloca %struct.packed_hdmi_infoframe, align 4
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %disp = getelementptr inbounds %struct.nvkm_ior, ptr %ior, i32 0, i32 1
  %0 = ptrtoint ptr %disp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %disp, align 4
  %device1 = getelementptr inbounds %struct.nvkm_disp, ptr %1, i32 0, i32 1, i32 1, i32 1
  %2 = ptrtoint ptr %device1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %device1, align 4
  %mul = select i1 %enable, i32 1073741824, i32 0
  %conv2 = zext i8 %max_ac_packet to i32
  %shl = shl nuw nsw i32 %conv2, 16
  %or = or i32 %shl, %mul
  %conv3 = zext i8 %rekey to i32
  %or4 = or i32 %or, %conv3
  %mul5 = shl i32 %head, 11
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %avi_infoframe) #3
  %4 = getelementptr inbounds %struct.packed_hdmi_infoframe, ptr %avi_infoframe, i32 0, i32 1
  %5 = getelementptr inbounds %struct.packed_hdmi_infoframe, ptr %avi_infoframe, i32 0, i32 2
  %6 = getelementptr inbounds %struct.packed_hdmi_infoframe, ptr %avi_infoframe, i32 0, i32 3
  %7 = getelementptr inbounds %struct.packed_hdmi_infoframe, ptr %avi_infoframe, i32 0, i32 4
  %8 = call ptr @memset(ptr %avi_infoframe, i32 255, i32 20)
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %vendor_infoframe) #3
  %9 = getelementptr inbounds %struct.packed_hdmi_infoframe, ptr %vendor_infoframe, i32 0, i32 1
  %10 = getelementptr inbounds %struct.packed_hdmi_infoframe, ptr %vendor_infoframe, i32 0, i32 2
  %conv6 = zext i8 %avi_size to i32
  %11 = call ptr @memset(ptr %vendor_infoframe, i32 255, i32 20)
  call void @pack_hdmi_infoframe(ptr noundef nonnull %avi_infoframe, ptr noundef %avi, i32 noundef %conv6) #3
  %conv7 = zext i8 %vendor_size to i32
  call void @pack_hdmi_infoframe(ptr noundef nonnull %vendor_infoframe, ptr noundef %vendor, i32 noundef %conv7) #3
  br i1 %enable, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %add = add i32 %mul5, 6383512
  %pri = getelementptr inbounds %struct.nvkm_device, ptr %3, i32 0, i32 11
  %12 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %pri, align 4
  %add.ptr = getelementptr i8, ptr %13, i32 %add
  %14 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #3, !srcloc !9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !11
  call void @arm_heavy_mb() #3
  %and9 = and i32 %14, -1073741825
  %15 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %pri, align 4
  %add.ptr12 = getelementptr i8, ptr %16, i32 %add
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr12, i32 %and9) #3, !srcloc !12
  %add16 = add i32 %mul5, 6383408
  %17 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %pri, align 4
  %add.ptr20 = getelementptr i8, ptr %18, i32 %add16
  %19 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr20) #3, !srcloc !9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !13
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !14
  call void @arm_heavy_mb() #3
  %and26 = and i32 %19, -2
  %20 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %pri, align 4
  %add.ptr29 = getelementptr i8, ptr %21, i32 %add16
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr29, i32 %and26) #3, !srcloc !12
  %add33 = add i32 %mul5, 6383524
  %22 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %pri, align 4
  %add.ptr37 = getelementptr i8, ptr %23, i32 %add33
  %24 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr37) #3, !srcloc !9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !15
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !16
  call void @arm_heavy_mb() #3
  %and43 = and i32 %24, -2
  %25 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %pri, align 4
  %add.ptr46 = getelementptr i8, ptr %26, i32 %add33
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr46, i32 %and43) #3, !srcloc !12
  %add50 = add i32 %mul5, 6383380
  %27 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %pri, align 4
  %add.ptr54 = getelementptr i8, ptr %28, i32 %add50
  %29 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr54) #3, !srcloc !9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !17
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !18
  call void @arm_heavy_mb() #3
  %and60 = and i32 %29, -2
  %30 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %pri, align 4
  %add.ptr63 = getelementptr i8, ptr %31, i32 %add50
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr63, i32 %and60) #3, !srcloc !12
  br label %cleanup

if.end:                                           ; preds = %entry
  %add67 = add i32 %mul5, 6383380
  %pri70 = getelementptr inbounds %struct.nvkm_device, ptr %3, i32 0, i32 11
  %32 = ptrtoint ptr %pri70 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %pri70, align 4
  %add.ptr71 = getelementptr i8, ptr %33, i32 %add67
  %34 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr71) #3, !srcloc !9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !19
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !20
  call void @arm_heavy_mb() #3
  %and77 = and i32 %34, -2
  %35 = ptrtoint ptr %pri70 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %pri70, align 4
  %add.ptr80 = getelementptr i8, ptr %36, i32 %add67
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr80, i32 %and77) #3, !srcloc !12
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %avi_size)
  %tobool82.not = icmp eq i8 %avi_size, 0
  br i1 %tobool82.not, label %if.end.if.end131_crit_edge, label %do.body84

if.end.if.end131_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end131

do.body84:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !21
  call void @arm_heavy_mb() #3
  %37 = ptrtoint ptr %avi_infoframe to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %avi_infoframe, align 4
  %39 = ptrtoint ptr %pri70 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %pri70, align 4
  %add88 = add i32 %mul5, 6383388
  %add.ptr89 = getelementptr i8, ptr %40, i32 %add88
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr89, i32 %38) #3, !srcloc !12
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !22
  call void @arm_heavy_mb() #3
  %41 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %4, align 4
  %43 = ptrtoint ptr %pri70 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %pri70, align 4
  %add94 = add i32 %mul5, 6383392
  %add.ptr95 = getelementptr i8, ptr %44, i32 %add94
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr95, i32 %42) #3, !srcloc !12
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !23
  call void @arm_heavy_mb() #3
  %45 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %5, align 4
  %47 = ptrtoint ptr %pri70 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %pri70, align 4
  %add100 = add i32 %mul5, 6383396
  %add.ptr101 = getelementptr i8, ptr %48, i32 %add100
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr101, i32 %46) #3, !srcloc !12
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !24
  call void @arm_heavy_mb() #3
  %49 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %6, align 4
  %51 = ptrtoint ptr %pri70 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %pri70, align 4
  %add106 = add i32 %mul5, 6383400
  %add.ptr107 = getelementptr i8, ptr %52, i32 %add106
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr107, i32 %50) #3, !srcloc !12
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !25
  call void @arm_heavy_mb() #3
  %53 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %7, align 4
  %55 = ptrtoint ptr %pri70 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %pri70, align 4
  %add112 = add i32 %mul5, 6383404
  %add.ptr113 = getelementptr i8, ptr %56, i32 %add112
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr113, i32 %54) #3, !srcloc !12
  %57 = ptrtoint ptr %pri70 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %pri70, align 4
  %add.ptr120 = getelementptr i8, ptr %58, i32 %add67
  %59 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr120) #3, !srcloc !9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !26
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !27
  call void @arm_heavy_mb() #3
  %or127 = or i32 %59, 1
  %60 = ptrtoint ptr %pri70 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %pri70, align 4
  %add.ptr129 = getelementptr i8, ptr %61, i32 %add67
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr129, i32 %or127) #3, !srcloc !12
  br label %if.end131

if.end131:                                        ; preds = %do.body84, %if.end.if.end131_crit_edge
  %add134 = add i32 %mul5, 6383408
  %62 = ptrtoint ptr %pri70 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %pri70, align 4
  %add.ptr138 = getelementptr i8, ptr %63, i32 %add134
  %64 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr138) #3, !srcloc !9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !28
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !29
  call void @arm_heavy_mb() #3
  %and144 = and i32 %64, -65538
  %or145 = or i32 %and144, 65536
  %65 = ptrtoint ptr %pri70 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %pri70, align 4
  %add.ptr147 = getelementptr i8, ptr %66, i32 %add134
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr147, i32 %or145) #3, !srcloc !12
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %vendor_size)
  %tobool149.not = icmp eq i8 %vendor_size, 0
  br i1 %tobool149.not, label %if.end131.if.end189_crit_edge, label %do.body151

if.end131.if.end189_crit_edge:                    ; preds = %if.end131
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end189

do.body151:                                       ; preds = %if.end131
  call void @__sanitizer_cov_trace_pc() #5
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !30
  call void @arm_heavy_mb() #3
  %67 = ptrtoint ptr %vendor_infoframe to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %vendor_infoframe, align 4
  %69 = ptrtoint ptr %pri70 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %pri70, align 4
  %add156 = add i32 %mul5, 6383416
  %add.ptr157 = getelementptr i8, ptr %70, i32 %add156
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr157, i32 %68) #3, !srcloc !12
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !31
  call void @arm_heavy_mb() #3
  %71 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %9, align 4
  %73 = ptrtoint ptr %pri70 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %pri70, align 4
  %add163 = add i32 %mul5, 6383420
  %add.ptr164 = getelementptr i8, ptr %74, i32 %add163
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr164, i32 %72) #3, !srcloc !12
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !32
  call void @arm_heavy_mb() #3
  %75 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %10, align 4
  %77 = ptrtoint ptr %pri70 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %pri70, align 4
  %add170 = add i32 %mul5, 6383424
  %add.ptr171 = getelementptr i8, ptr %78, i32 %add170
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr171, i32 %76) #3, !srcloc !12
  %79 = ptrtoint ptr %pri70 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %pri70, align 4
  %add.ptr178 = getelementptr i8, ptr %80, i32 %add134
  %81 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr178) #3, !srcloc !9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !33
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !34
  call void @arm_heavy_mb() #3
  %or185 = or i32 %81, 1
  %82 = ptrtoint ptr %pri70 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %pri70, align 4
  %add.ptr187 = getelementptr i8, ptr %83, i32 %add134
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr187, i32 %or185) #3, !srcloc !12
  br label %if.end189

if.end189:                                        ; preds = %do.body151, %if.end131.if.end189_crit_edge
  %add192 = add i32 %mul5, 6383524
  %84 = ptrtoint ptr %pri70 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %pri70, align 4
  %add.ptr196 = getelementptr i8, ptr %85, i32 %add192
  %86 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr196) #3, !srcloc !9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !35
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !36
  call void @arm_heavy_mb() #3
  %and202 = and i32 %86, -2
  %87 = ptrtoint ptr %pri70 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %pri70, align 4
  %add.ptr205 = getelementptr i8, ptr %88, i32 %add192
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr205, i32 %and202) #3, !srcloc !12
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !37
  call void @arm_heavy_mb() #3
  %89 = ptrtoint ptr %pri70 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %pri70, align 4
  %add211 = add i32 %mul5, 6383532
  %add.ptr212 = getelementptr i8, ptr %90, i32 %add211
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr212, i32 16) #3, !srcloc !12
  %91 = ptrtoint ptr %pri70 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %pri70, align 4
  %add.ptr219 = getelementptr i8, ptr %92, i32 %add192
  %93 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr219) #3, !srcloc !9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !38
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !39
  call void @arm_heavy_mb() #3
  %or226 = or i32 %93, 1
  %94 = ptrtoint ptr %pri70 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %pri70, align 4
  %add.ptr228 = getelementptr i8, ptr %95, i32 %add192
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr228, i32 %or226) #3, !srcloc !12
  %add232 = add i32 %mul5, 6383512
  %96 = ptrtoint ptr %pri70 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %pri70, align 4
  %add.ptr236 = getelementptr i8, ptr %97, i32 %add232
  %98 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr236) #3, !srcloc !9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !40
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !41
  call void @arm_heavy_mb() #3
  %and242 = and i32 %98, -1075773568
  %or243 = or i32 %and242, %or4
  %99 = ptrtoint ptr %pri70 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %pri70, align 4
  %add.ptr245 = getelementptr i8, ptr %100, i32 %add232
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr245, i32 %or243) #3, !srcloc !12
  br label %cleanup

cleanup:                                          ; preds = %if.end189, %if.then
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %vendor_infoframe) #3
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %avi_infoframe) #3
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pack_hdmi_infoframe(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #4 {
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind }
attributes #4 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #5 = { nomerge }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5, !6, !7}
!llvm.ident = !{!8}

!0 = !{i32 1, !"wchar_size", i32 2}
!1 = !{i32 1, !"min_enum_size", i32 4}
!2 = !{i32 8, !"branch-target-enforcement", i32 0}
!3 = !{i32 8, !"sign-return-address", i32 0}
!4 = !{i32 8, !"sign-return-address-all", i32 0}
!5 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!6 = !{i32 7, !"uwtable", i32 1}
!7 = !{i32 7, !"frame-pointer", i32 2}
!8 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!9 = !{i64 5395590}
!10 = !{i64 2156235934}
!11 = !{i64 2156236336}
!12 = !{i64 5395172}
!13 = !{i64 2156237216}
!14 = !{i64 2156237618}
!15 = !{i64 2156238498}
!16 = !{i64 2156238900}
!17 = !{i64 2156239780}
!18 = !{i64 2156240182}
!19 = !{i64 2156241062}
!20 = !{i64 2156241464}
!21 = !{i64 2156241943}
!22 = !{i64 2156242412}
!23 = !{i64 2156242889}
!24 = !{i64 2156243365}
!25 = !{i64 2156243842}
!26 = !{i64 2156244707}
!27 = !{i64 2156245109}
!28 = !{i64 2156245989}
!29 = !{i64 2156246391}
!30 = !{i64 2156246876}
!31 = !{i64 2156247354}
!32 = !{i64 2156247840}
!33 = !{i64 2156248708}
!34 = !{i64 2156249110}
!35 = !{i64 2156249990}
!36 = !{i64 2156250392}
!37 = !{i64 2156250851}
!38 = !{i64 2156251699}
!39 = !{i64 2156252101}
!40 = !{i64 2156252975}
!41 = !{i64 2156253365}
