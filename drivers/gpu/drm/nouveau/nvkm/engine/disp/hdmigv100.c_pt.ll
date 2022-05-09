; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/nouveau/nvkm/engine/disp/hdmigv100.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/nvkm/engine/disp/hdmigv100.c"
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
define dso_local void @gv100_hdmi_ctrl(ptr nocapture noundef readonly %ior, i32 noundef %head, i1 noundef zeroext %enable, i8 noundef zeroext %max_ac_packet, i8 noundef zeroext %rekey, ptr noundef %avi, i8 noundef zeroext %avi_size, ptr noundef %vendor, i8 noundef zeroext %vendor_size) local_unnamed_addr #0 align 64 {
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
  %mul6 = shl i32 %head, 10
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %avi_infoframe) #3
  %4 = getelementptr inbounds %struct.packed_hdmi_infoframe, ptr %avi_infoframe, i32 0, i32 1
  %5 = getelementptr inbounds %struct.packed_hdmi_infoframe, ptr %avi_infoframe, i32 0, i32 2
  %6 = getelementptr inbounds %struct.packed_hdmi_infoframe, ptr %avi_infoframe, i32 0, i32 3
  %7 = getelementptr inbounds %struct.packed_hdmi_infoframe, ptr %avi_infoframe, i32 0, i32 4
  %8 = call ptr @memset(ptr %avi_infoframe, i32 255, i32 20)
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %vendor_infoframe) #3
  %9 = getelementptr inbounds %struct.packed_hdmi_infoframe, ptr %vendor_infoframe, i32 0, i32 1
  %10 = getelementptr inbounds %struct.packed_hdmi_infoframe, ptr %vendor_infoframe, i32 0, i32 2
  %conv7 = zext i8 %avi_size to i32
  %11 = call ptr @memset(ptr %vendor_infoframe, i32 255, i32 20)
  call void @pack_hdmi_infoframe(ptr noundef nonnull %avi_infoframe, ptr noundef %avi, i32 noundef %conv7) #3
  %conv8 = zext i8 %vendor_size to i32
  call void @pack_hdmi_infoframe(ptr noundef nonnull %vendor_infoframe, ptr noundef %vendor, i32 noundef %conv8) #3
  br i1 %enable, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %add = add i32 %mul5, 6383040
  %pri = getelementptr inbounds %struct.nvkm_device, ptr %3, i32 0, i32 11
  %12 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %pri, align 4
  %add.ptr = getelementptr i8, ptr %13, i32 %add
  %14 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #3, !srcloc !9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !11
  call void @arm_heavy_mb() #3
  %and10 = and i32 %14, -1073741825
  %15 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %pri, align 4
  %add.ptr13 = getelementptr i8, ptr %16, i32 %add
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr13, i32 %and10) #3, !srcloc !12
  %add17 = add i32 %mul6, 7274752
  %17 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %pri, align 4
  %add.ptr21 = getelementptr i8, ptr %18, i32 %add17
  %19 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr21) #3, !srcloc !9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !13
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !14
  call void @arm_heavy_mb() #3
  %and27 = and i32 %19, -2
  %20 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %pri, align 4
  %add.ptr30 = getelementptr i8, ptr %21, i32 %add17
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr30, i32 %and27) #3, !srcloc !12
  %add34 = add i32 %mul6, 7274688
  %22 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %pri, align 4
  %add.ptr38 = getelementptr i8, ptr %23, i32 %add34
  %24 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr38) #3, !srcloc !9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !15
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !16
  call void @arm_heavy_mb() #3
  %and44 = and i32 %24, -2
  %25 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %pri, align 4
  %add.ptr47 = getelementptr i8, ptr %26, i32 %add34
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr47, i32 %and44) #3, !srcloc !12
  %add51 = add i32 %mul6, 7274496
  %27 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %pri, align 4
  %add.ptr55 = getelementptr i8, ptr %28, i32 %add51
  %29 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr55) #3, !srcloc !9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !17
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !18
  call void @arm_heavy_mb() #3
  %and61 = and i32 %29, -2
  %30 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %pri, align 4
  %add.ptr64 = getelementptr i8, ptr %31, i32 %add51
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr64, i32 %and61) #3, !srcloc !12
  br label %cleanup

if.end:                                           ; preds = %entry
  %add68 = add i32 %mul6, 7274496
  %pri71 = getelementptr inbounds %struct.nvkm_device, ptr %3, i32 0, i32 11
  %32 = ptrtoint ptr %pri71 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %pri71, align 4
  %add.ptr72 = getelementptr i8, ptr %33, i32 %add68
  %34 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr72) #3, !srcloc !9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !19
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !20
  call void @arm_heavy_mb() #3
  %and78 = and i32 %34, -2
  %35 = ptrtoint ptr %pri71 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %pri71, align 4
  %add.ptr81 = getelementptr i8, ptr %36, i32 %add68
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr81, i32 %and78) #3, !srcloc !12
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %avi_size)
  %tobool83.not = icmp eq i8 %avi_size, 0
  br i1 %tobool83.not, label %if.end.if.end132_crit_edge, label %do.body85

if.end.if.end132_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end132

do.body85:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !21
  call void @arm_heavy_mb() #3
  %37 = ptrtoint ptr %avi_infoframe to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %avi_infoframe, align 4
  %39 = ptrtoint ptr %pri71 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %pri71, align 4
  %add89 = add i32 %mul6, 7274504
  %add.ptr90 = getelementptr i8, ptr %40, i32 %add89
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr90, i32 %38) #3, !srcloc !12
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !22
  call void @arm_heavy_mb() #3
  %41 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %4, align 4
  %43 = ptrtoint ptr %pri71 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %pri71, align 4
  %add95 = add i32 %mul6, 7274508
  %add.ptr96 = getelementptr i8, ptr %44, i32 %add95
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr96, i32 %42) #3, !srcloc !12
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !23
  call void @arm_heavy_mb() #3
  %45 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %5, align 4
  %47 = ptrtoint ptr %pri71 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %pri71, align 4
  %add101 = add i32 %mul6, 7274512
  %add.ptr102 = getelementptr i8, ptr %48, i32 %add101
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr102, i32 %46) #3, !srcloc !12
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !24
  call void @arm_heavy_mb() #3
  %49 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %6, align 4
  %51 = ptrtoint ptr %pri71 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %pri71, align 4
  %add107 = add i32 %mul6, 7274516
  %add.ptr108 = getelementptr i8, ptr %52, i32 %add107
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr108, i32 %50) #3, !srcloc !12
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !25
  call void @arm_heavy_mb() #3
  %53 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %7, align 4
  %55 = ptrtoint ptr %pri71 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %pri71, align 4
  %add113 = add i32 %mul6, 7274520
  %add.ptr114 = getelementptr i8, ptr %56, i32 %add113
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr114, i32 %54) #3, !srcloc !12
  %57 = ptrtoint ptr %pri71 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %pri71, align 4
  %add.ptr121 = getelementptr i8, ptr %58, i32 %add68
  %59 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr121) #3, !srcloc !9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !26
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !27
  call void @arm_heavy_mb() #3
  %or128 = or i32 %59, 1
  %60 = ptrtoint ptr %pri71 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %pri71, align 4
  %add.ptr130 = getelementptr i8, ptr %61, i32 %add68
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr130, i32 %or128) #3, !srcloc !12
  br label %if.end132

if.end132:                                        ; preds = %do.body85, %if.end.if.end132_crit_edge
  %add135 = add i32 %mul6, 7274752
  %62 = ptrtoint ptr %pri71 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %pri71, align 4
  %add.ptr139 = getelementptr i8, ptr %63, i32 %add135
  %64 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr139) #3, !srcloc !9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !28
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !29
  call void @arm_heavy_mb() #3
  %and145 = and i32 %64, -65538
  %65 = ptrtoint ptr %pri71 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %pri71, align 4
  %add.ptr148 = getelementptr i8, ptr %66, i32 %add135
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr148, i32 %and145) #3, !srcloc !12
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %vendor_size)
  %tobool150.not = icmp eq i8 %vendor_size, 0
  br i1 %tobool150.not, label %if.end132.if.end220_crit_edge, label %do.body152

if.end132.if.end220_crit_edge:                    ; preds = %if.end132
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end220

do.body152:                                       ; preds = %if.end132
  call void @__sanitizer_cov_trace_pc() #5
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !30
  call void @arm_heavy_mb() #3
  %67 = ptrtoint ptr %vendor_infoframe to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %vendor_infoframe, align 4
  %69 = ptrtoint ptr %pri71 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %pri71, align 4
  %add157 = add i32 %mul6, 7274760
  %add.ptr158 = getelementptr i8, ptr %70, i32 %add157
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr158, i32 %68) #3, !srcloc !12
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !31
  call void @arm_heavy_mb() #3
  %71 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %9, align 4
  %73 = ptrtoint ptr %pri71 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %pri71, align 4
  %add164 = add i32 %mul6, 7274764
  %add.ptr165 = getelementptr i8, ptr %74, i32 %add164
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr165, i32 %72) #3, !srcloc !12
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !32
  call void @arm_heavy_mb() #3
  %75 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %10, align 4
  %77 = ptrtoint ptr %pri71 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %pri71, align 4
  %add171 = add i32 %mul6, 7274768
  %add.ptr172 = getelementptr i8, ptr %78, i32 %add171
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr172, i32 %76) #3, !srcloc !12
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !33
  call void @arm_heavy_mb() #3
  %79 = ptrtoint ptr %pri71 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %pri71, align 4
  %add177 = add i32 %mul6, 7274772
  %add.ptr178 = getelementptr i8, ptr %80, i32 %add177
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr178, i32 0) #3, !srcloc !12
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !34
  call void @arm_heavy_mb() #3
  %81 = ptrtoint ptr %pri71 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %pri71, align 4
  %add183 = add i32 %mul6, 7274776
  %add.ptr184 = getelementptr i8, ptr %82, i32 %add183
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr184, i32 0) #3, !srcloc !12
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !35
  call void @arm_heavy_mb() #3
  %83 = ptrtoint ptr %pri71 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %pri71, align 4
  %add189 = add i32 %mul6, 7274780
  %add.ptr190 = getelementptr i8, ptr %84, i32 %add189
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr190, i32 0) #3, !srcloc !12
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !36
  call void @arm_heavy_mb() #3
  %85 = ptrtoint ptr %pri71 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %pri71, align 4
  %add195 = add i32 %mul6, 7274784
  %add.ptr196 = getelementptr i8, ptr %86, i32 %add195
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr196, i32 0) #3, !srcloc !12
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !37
  call void @arm_heavy_mb() #3
  %87 = ptrtoint ptr %pri71 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %pri71, align 4
  %add201 = add i32 %mul6, 7274788
  %add.ptr202 = getelementptr i8, ptr %88, i32 %add201
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr202, i32 0) #3, !srcloc !12
  %89 = ptrtoint ptr %pri71 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %pri71, align 4
  %add.ptr209 = getelementptr i8, ptr %90, i32 %add135
  %91 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr209) #3, !srcloc !9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !38
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !39
  call void @arm_heavy_mb() #3
  %or216 = or i32 %91, 1
  %92 = ptrtoint ptr %pri71 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %pri71, align 4
  %add.ptr218 = getelementptr i8, ptr %93, i32 %add135
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr218, i32 %or216) #3, !srcloc !12
  br label %if.end220

if.end220:                                        ; preds = %do.body152, %if.end132.if.end220_crit_edge
  %add223 = add i32 %mul6, 7274688
  %94 = ptrtoint ptr %pri71 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %pri71, align 4
  %add.ptr227 = getelementptr i8, ptr %95, i32 %add223
  %96 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr227) #3, !srcloc !9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !40
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !41
  call void @arm_heavy_mb() #3
  %and233 = and i32 %96, -2
  %97 = ptrtoint ptr %pri71 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %pri71, align 4
  %add.ptr236 = getelementptr i8, ptr %98, i32 %add223
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr236, i32 %and233) #3, !srcloc !12
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !42
  call void @arm_heavy_mb() #3
  %99 = ptrtoint ptr %pri71 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %pri71, align 4
  %add242 = add i32 %mul6, 7274700
  %add.ptr243 = getelementptr i8, ptr %100, i32 %add242
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr243, i32 16) #3, !srcloc !12
  %101 = ptrtoint ptr %pri71 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %pri71, align 4
  %add.ptr250 = getelementptr i8, ptr %102, i32 %add223
  %103 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr250) #3, !srcloc !9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !43
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !44
  call void @arm_heavy_mb() #3
  %or257 = or i32 %103, 1
  %104 = ptrtoint ptr %pri71 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %pri71, align 4
  %add.ptr259 = getelementptr i8, ptr %105, i32 %add223
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr259, i32 %or257) #3, !srcloc !12
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !45
  call void @arm_heavy_mb() #3
  %106 = ptrtoint ptr %pri71 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %pri71, align 4
  %add265 = add i32 %mul6, 7274624
  %add.ptr266 = getelementptr i8, ptr %107, i32 %add265
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr266, i32 -2113929216) #3, !srcloc !12
  %add269 = add i32 %mul5, 6383040
  %108 = ptrtoint ptr %pri71 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %pri71, align 4
  %add.ptr273 = getelementptr i8, ptr %109, i32 %add269
  %110 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr273) #3, !srcloc !9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !46
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !47
  call void @arm_heavy_mb() #3
  %and279 = and i32 %110, -1075773568
  %or280 = or i32 %and279, %or4
  %111 = ptrtoint ptr %pri71 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %pri71, align 4
  %add.ptr282 = getelementptr i8, ptr %112, i32 %add269
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr282, i32 %or280) #3, !srcloc !12
  br label %cleanup

cleanup:                                          ; preds = %if.end220, %if.then
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
!9 = !{i64 5395759}
!10 = !{i64 2156236103}
!11 = !{i64 2156236505}
!12 = !{i64 5395341}
!13 = !{i64 2156237385}
!14 = !{i64 2156237787}
!15 = !{i64 2156238667}
!16 = !{i64 2156239069}
!17 = !{i64 2156239949}
!18 = !{i64 2156240351}
!19 = !{i64 2156241231}
!20 = !{i64 2156241633}
!21 = !{i64 2156242112}
!22 = !{i64 2156242581}
!23 = !{i64 2156243058}
!24 = !{i64 2156243534}
!25 = !{i64 2156244011}
!26 = !{i64 2156244876}
!27 = !{i64 2156245278}
!28 = !{i64 2156246158}
!29 = !{i64 2156246560}
!30 = !{i64 2156247045}
!31 = !{i64 2156247523}
!32 = !{i64 2156248009}
!33 = !{i64 2156248456}
!34 = !{i64 2156248883}
!35 = !{i64 2156249310}
!36 = !{i64 2156249737}
!37 = !{i64 2156250164}
!38 = !{i64 2156251012}
!39 = !{i64 2156251414}
!40 = !{i64 2156252294}
!41 = !{i64 2156252696}
!42 = !{i64 2156253155}
!43 = !{i64 2156254003}
!44 = !{i64 2156254405}
!45 = !{i64 2156254864}
!46 = !{i64 2156255706}
!47 = !{i64 2156256096}
