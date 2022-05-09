; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/nouveau/nvkm/engine/disp/hdmigk104.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/nvkm/engine/disp/hdmigk104.c"
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
define dso_local void @gk104_hdmi_ctrl(ptr nocapture noundef readonly %ior, i32 noundef %head, i1 noundef zeroext %enable, i8 noundef zeroext %max_ac_packet, i8 noundef zeroext %rekey, ptr noundef %avi, i8 noundef zeroext %avi_size, ptr noundef %vendor, i8 noundef zeroext %vendor_size) local_unnamed_addr #0 align 64 {
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
  %and10 = and i32 %14, -1073741825
  %15 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %pri, align 4
  %add.ptr13 = getelementptr i8, ptr %16, i32 %add
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr13, i32 %and10) #3, !srcloc !12
  %add17 = add i32 %mul6, 6881536
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
  %add34 = add i32 %mul6, 6881472
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
  %add51 = add i32 %mul6, 6881280
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
  %add68 = add i32 %mul6, 6881280
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
  %add89 = add i32 %mul6, 6881288
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
  %add95 = add i32 %mul6, 6881292
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
  %add101 = add i32 %mul6, 6881296
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
  %add107 = add i32 %mul6, 6881300
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
  %add113 = add i32 %mul6, 6881304
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
  %add135 = add i32 %mul6, 6881536
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
  br i1 %tobool150.not, label %if.end132.if.end190_crit_edge, label %do.body152

if.end132.if.end190_crit_edge:                    ; preds = %if.end132
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end190

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
  %add157 = add i32 %mul6, 6881544
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
  %add164 = add i32 %mul6, 6881548
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
  %add171 = add i32 %mul6, 6881552
  %add.ptr172 = getelementptr i8, ptr %78, i32 %add171
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr172, i32 %76) #3, !srcloc !12
  %79 = ptrtoint ptr %pri71 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %pri71, align 4
  %add.ptr179 = getelementptr i8, ptr %80, i32 %add135
  %81 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr179) #3, !srcloc !9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !33
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !34
  call void @arm_heavy_mb() #3
  %or186 = or i32 %81, 1
  %82 = ptrtoint ptr %pri71 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %pri71, align 4
  %add.ptr188 = getelementptr i8, ptr %83, i32 %add135
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr188, i32 %or186) #3, !srcloc !12
  br label %if.end190

if.end190:                                        ; preds = %do.body152, %if.end132.if.end190_crit_edge
  %add193 = add i32 %mul6, 6881472
  %84 = ptrtoint ptr %pri71 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %pri71, align 4
  %add.ptr197 = getelementptr i8, ptr %85, i32 %add193
  %86 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr197) #3, !srcloc !9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !35
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !36
  call void @arm_heavy_mb() #3
  %and203 = and i32 %86, -2
  %87 = ptrtoint ptr %pri71 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %pri71, align 4
  %add.ptr206 = getelementptr i8, ptr %88, i32 %add193
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr206, i32 %and203) #3, !srcloc !12
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !37
  call void @arm_heavy_mb() #3
  %89 = ptrtoint ptr %pri71 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %pri71, align 4
  %add212 = add i32 %mul6, 6881484
  %add.ptr213 = getelementptr i8, ptr %90, i32 %add212
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr213, i32 16) #3, !srcloc !12
  %91 = ptrtoint ptr %pri71 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %pri71, align 4
  %add.ptr220 = getelementptr i8, ptr %92, i32 %add193
  %93 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr220) #3, !srcloc !9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !38
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !39
  call void @arm_heavy_mb() #3
  %or227 = or i32 %93, 1
  %94 = ptrtoint ptr %pri71 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %pri71, align 4
  %add.ptr229 = getelementptr i8, ptr %95, i32 %add193
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr229, i32 %or227) #3, !srcloc !12
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !40
  call void @arm_heavy_mb() #3
  %96 = ptrtoint ptr %pri71 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %pri71, align 4
  %add235 = add i32 %mul6, 6881408
  %add.ptr236 = getelementptr i8, ptr %97, i32 %add235
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr236, i32 -2113929216) #3, !srcloc !12
  %add239 = add i32 %mul5, 6383512
  %98 = ptrtoint ptr %pri71 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %pri71, align 4
  %add.ptr243 = getelementptr i8, ptr %99, i32 %add239
  %100 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr243) #3, !srcloc !9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !41
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !42
  call void @arm_heavy_mb() #3
  %and249 = and i32 %100, -1075773568
  %or250 = or i32 %and249, %or4
  %101 = ptrtoint ptr %pri71 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %pri71, align 4
  %add.ptr252 = getelementptr i8, ptr %102, i32 %add239
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr252, i32 %or250) #3, !srcloc !12
  br label %cleanup

cleanup:                                          ; preds = %if.end190, %if.then
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
!9 = !{i64 5395548}
!10 = !{i64 2156235892}
!11 = !{i64 2156236294}
!12 = !{i64 5395130}
!13 = !{i64 2156237174}
!14 = !{i64 2156237576}
!15 = !{i64 2156238456}
!16 = !{i64 2156238858}
!17 = !{i64 2156239738}
!18 = !{i64 2156240140}
!19 = !{i64 2156241020}
!20 = !{i64 2156241422}
!21 = !{i64 2156241901}
!22 = !{i64 2156242370}
!23 = !{i64 2156242847}
!24 = !{i64 2156243323}
!25 = !{i64 2156243800}
!26 = !{i64 2156244665}
!27 = !{i64 2156245067}
!28 = !{i64 2156245947}
!29 = !{i64 2156246349}
!30 = !{i64 2156246834}
!31 = !{i64 2156247312}
!32 = !{i64 2156247798}
!33 = !{i64 2156248666}
!34 = !{i64 2156249068}
!35 = !{i64 2156249948}
!36 = !{i64 2156250350}
!37 = !{i64 2156250809}
!38 = !{i64 2156251657}
!39 = !{i64 2156252059}
!40 = !{i64 2156252518}
!41 = !{i64 2156253360}
!42 = !{i64 2156253750}
