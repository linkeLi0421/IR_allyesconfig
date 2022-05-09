; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/nouveau/nvkm/engine/disp/hdmigt215.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/nvkm/engine/disp/hdmigt215.c"
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
define dso_local void @gt215_hdmi_ctrl(ptr nocapture noundef readonly %ior, i32 noundef %head, i1 noundef zeroext %enable, i8 noundef zeroext %max_ac_packet, i8 noundef zeroext %rekey, ptr noundef %avi, i8 noundef zeroext %avi_size, ptr noundef %vendor, i8 noundef zeroext %vendor_size) local_unnamed_addr #0 align 64 {
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
  %or = select i1 %enable, i32 1593835520, i32 520093696
  %conv2 = zext i8 %max_ac_packet to i32
  %shl = shl nuw nsw i32 %conv2, 16
  %or3 = or i32 %shl, %or
  %conv4 = zext i8 %rekey to i32
  %or5 = or i32 %or3, %conv4
  %id.i = getelementptr inbounds %struct.nvkm_ior, ptr %ior, i32 0, i32 3
  %4 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %id.i, align 4
  %mul.i = shl i32 %5, 11
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %avi_infoframe) #3
  %6 = getelementptr inbounds %struct.packed_hdmi_infoframe, ptr %avi_infoframe, i32 0, i32 1
  %7 = getelementptr inbounds %struct.packed_hdmi_infoframe, ptr %avi_infoframe, i32 0, i32 2
  %8 = getelementptr inbounds %struct.packed_hdmi_infoframe, ptr %avi_infoframe, i32 0, i32 3
  %9 = getelementptr inbounds %struct.packed_hdmi_infoframe, ptr %avi_infoframe, i32 0, i32 4
  %10 = call ptr @memset(ptr %avi_infoframe, i32 255, i32 20)
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %vendor_infoframe) #3
  %11 = getelementptr inbounds %struct.packed_hdmi_infoframe, ptr %vendor_infoframe, i32 0, i32 1
  %12 = getelementptr inbounds %struct.packed_hdmi_infoframe, ptr %vendor_infoframe, i32 0, i32 2
  %conv6 = zext i8 %avi_size to i32
  %13 = call ptr @memset(ptr %vendor_infoframe, i32 255, i32 20)
  call void @pack_hdmi_infoframe(ptr noundef nonnull %avi_infoframe, ptr noundef %avi, i32 noundef %conv6) #3
  %conv7 = zext i8 %vendor_size to i32
  call void @pack_hdmi_infoframe(ptr noundef nonnull %vendor_infoframe, ptr noundef %vendor, i32 noundef %conv7) #3
  %and = and i32 %or, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool8.not = icmp eq i32 %and, 0
  br i1 %tobool8.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %add = add i32 %mul.i, 6407588
  %pri = getelementptr inbounds %struct.nvkm_device, ptr %3, i32 0, i32 11
  %14 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %pri, align 4
  %add.ptr = getelementptr i8, ptr %15, i32 %add
  %16 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #3, !srcloc !9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !11
  call void @arm_heavy_mb() #3
  %and10 = and i32 %16, -1073741825
  %17 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %pri, align 4
  %add.ptr13 = getelementptr i8, ptr %18, i32 %add
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr13, i32 %and10) #3, !srcloc !12
  %add17 = add i32 %mul.i, 6407484
  %19 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %pri, align 4
  %add.ptr21 = getelementptr i8, ptr %20, i32 %add17
  %21 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr21) #3, !srcloc !9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !13
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !14
  call void @arm_heavy_mb() #3
  %and27 = and i32 %21, -2
  %22 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %pri, align 4
  %add.ptr30 = getelementptr i8, ptr %23, i32 %add17
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr30, i32 %and27) #3, !srcloc !12
  %add34 = add i32 %mul.i, 6407456
  %24 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %pri, align 4
  %add.ptr38 = getelementptr i8, ptr %25, i32 %add34
  %26 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr38) #3, !srcloc !9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !15
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !16
  call void @arm_heavy_mb() #3
  %and44 = and i32 %26, -2
  %27 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %pri, align 4
  %add.ptr47 = getelementptr i8, ptr %28, i32 %add34
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr47, i32 %and44) #3, !srcloc !12
  %add51 = add i32 %mul.i, 6407424
  %29 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %pri, align 4
  %add.ptr55 = getelementptr i8, ptr %30, i32 %add51
  %31 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr55) #3, !srcloc !9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !17
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !18
  call void @arm_heavy_mb() #3
  %and61 = and i32 %31, -2
  %32 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %pri, align 4
  %add.ptr64 = getelementptr i8, ptr %33, i32 %add51
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr64, i32 %and61) #3, !srcloc !12
  br label %cleanup

if.end:                                           ; preds = %entry
  %add68 = add i32 %mul.i, 6407456
  %pri71 = getelementptr inbounds %struct.nvkm_device, ptr %3, i32 0, i32 11
  %34 = ptrtoint ptr %pri71 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %pri71, align 4
  %add.ptr72 = getelementptr i8, ptr %35, i32 %add68
  %36 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr72) #3, !srcloc !9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !19
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !20
  call void @arm_heavy_mb() #3
  %and78 = and i32 %36, -2
  %37 = ptrtoint ptr %pri71 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %pri71, align 4
  %add.ptr81 = getelementptr i8, ptr %38, i32 %add68
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
  %39 = ptrtoint ptr %avi_infoframe to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %avi_infoframe, align 4
  %41 = ptrtoint ptr %pri71 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %pri71, align 4
  %add89 = add i32 %mul.i, 6407464
  %add.ptr90 = getelementptr i8, ptr %42, i32 %add89
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr90, i32 %40) #3, !srcloc !12
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !22
  call void @arm_heavy_mb() #3
  %43 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %6, align 4
  %45 = ptrtoint ptr %pri71 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %pri71, align 4
  %add95 = add i32 %mul.i, 6407468
  %add.ptr96 = getelementptr i8, ptr %46, i32 %add95
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr96, i32 %44) #3, !srcloc !12
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !23
  call void @arm_heavy_mb() #3
  %47 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %7, align 4
  %49 = ptrtoint ptr %pri71 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %pri71, align 4
  %add101 = add i32 %mul.i, 6407472
  %add.ptr102 = getelementptr i8, ptr %50, i32 %add101
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr102, i32 %48) #3, !srcloc !12
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !24
  call void @arm_heavy_mb() #3
  %51 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %8, align 4
  %53 = ptrtoint ptr %pri71 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %pri71, align 4
  %add107 = add i32 %mul.i, 6407476
  %add.ptr108 = getelementptr i8, ptr %54, i32 %add107
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr108, i32 %52) #3, !srcloc !12
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !25
  call void @arm_heavy_mb() #3
  %55 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %9, align 4
  %57 = ptrtoint ptr %pri71 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %pri71, align 4
  %add113 = add i32 %mul.i, 6407480
  %add.ptr114 = getelementptr i8, ptr %58, i32 %add113
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr114, i32 %56) #3, !srcloc !12
  %59 = ptrtoint ptr %pri71 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %pri71, align 4
  %add.ptr121 = getelementptr i8, ptr %60, i32 %add68
  %61 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr121) #3, !srcloc !9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !26
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !27
  call void @arm_heavy_mb() #3
  %or128 = or i32 %61, 1
  %62 = ptrtoint ptr %pri71 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %pri71, align 4
  %add.ptr130 = getelementptr i8, ptr %63, i32 %add68
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr130, i32 %or128) #3, !srcloc !12
  br label %if.end132

if.end132:                                        ; preds = %do.body85, %if.end.if.end132_crit_edge
  %add135 = add i32 %mul.i, 6407424
  %64 = ptrtoint ptr %pri71 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %pri71, align 4
  %add.ptr139 = getelementptr i8, ptr %65, i32 %add135
  %66 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr139) #3, !srcloc !9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !28
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !29
  call void @arm_heavy_mb() #3
  %and145 = and i32 %66, -2
  %67 = ptrtoint ptr %pri71 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %pri71, align 4
  %add.ptr148 = getelementptr i8, ptr %68, i32 %add135
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr148, i32 %and145) #3, !srcloc !12
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !30
  call void @arm_heavy_mb() #3
  %69 = ptrtoint ptr %pri71 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %pri71, align 4
  %add154 = add i32 %mul.i, 6407432
  %add.ptr155 = getelementptr i8, ptr %70, i32 %add154
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr155, i32 655748) #3, !srcloc !12
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !31
  call void @arm_heavy_mb() #3
  %71 = ptrtoint ptr %pri71 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %pri71, align 4
  %add160 = add i32 %mul.i, 6407436
  %add.ptr161 = getelementptr i8, ptr %72, i32 %add160
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr161, i32 113) #3, !srcloc !12
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !32
  call void @arm_heavy_mb() #3
  %73 = ptrtoint ptr %pri71 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %pri71, align 4
  %add166 = add i32 %mul.i, 6407440
  %add.ptr167 = getelementptr i8, ptr %74, i32 %add166
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr167, i32 0) #3, !srcloc !12
  %75 = ptrtoint ptr %pri71 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %pri71, align 4
  %add.ptr174 = getelementptr i8, ptr %76, i32 %add135
  %77 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr174) #3, !srcloc !9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !33
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !34
  call void @arm_heavy_mb() #3
  %or181 = or i32 %77, 1
  %78 = ptrtoint ptr %pri71 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %pri71, align 4
  %add.ptr183 = getelementptr i8, ptr %79, i32 %add135
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr183, i32 %or181) #3, !srcloc !12
  %add187 = add i32 %mul.i, 6407484
  %80 = ptrtoint ptr %pri71 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %pri71, align 4
  %add.ptr191 = getelementptr i8, ptr %81, i32 %add187
  %82 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr191) #3, !srcloc !9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !35
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !36
  call void @arm_heavy_mb() #3
  %and197 = and i32 %82, -65538
  %or198 = or i32 %and197, 65536
  %83 = ptrtoint ptr %pri71 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %pri71, align 4
  %add.ptr200 = getelementptr i8, ptr %84, i32 %add187
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr200, i32 %or198) #3, !srcloc !12
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %vendor_size)
  %tobool202.not = icmp eq i8 %vendor_size, 0
  br i1 %tobool202.not, label %if.end132.if.end242_crit_edge, label %do.body204

if.end132.if.end242_crit_edge:                    ; preds = %if.end132
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end242

do.body204:                                       ; preds = %if.end132
  call void @__sanitizer_cov_trace_pc() #5
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !37
  call void @arm_heavy_mb() #3
  %85 = ptrtoint ptr %vendor_infoframe to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %vendor_infoframe, align 4
  %87 = ptrtoint ptr %pri71 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %pri71, align 4
  %add209 = add i32 %mul.i, 6407492
  %add.ptr210 = getelementptr i8, ptr %88, i32 %add209
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr210, i32 %86) #3, !srcloc !12
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !38
  call void @arm_heavy_mb() #3
  %89 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %11, align 4
  %91 = ptrtoint ptr %pri71 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %pri71, align 4
  %add216 = add i32 %mul.i, 6407496
  %add.ptr217 = getelementptr i8, ptr %92, i32 %add216
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr217, i32 %90) #3, !srcloc !12
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !39
  call void @arm_heavy_mb() #3
  %93 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %12, align 4
  %95 = ptrtoint ptr %pri71 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %pri71, align 4
  %add223 = add i32 %mul.i, 6407500
  %add.ptr224 = getelementptr i8, ptr %96, i32 %add223
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr224, i32 %94) #3, !srcloc !12
  %97 = ptrtoint ptr %pri71 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %pri71, align 4
  %add.ptr231 = getelementptr i8, ptr %98, i32 %add187
  %99 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr231) #3, !srcloc !9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !40
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !41
  call void @arm_heavy_mb() #3
  %or238 = or i32 %99, 65537
  %100 = ptrtoint ptr %pri71 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %pri71, align 4
  %add.ptr240 = getelementptr i8, ptr %101, i32 %add187
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr240, i32 %or238) #3, !srcloc !12
  br label %if.end242

if.end242:                                        ; preds = %do.body204, %if.end132.if.end242_crit_edge
  %add245 = add i32 %mul.i, 6407632
  %102 = ptrtoint ptr %pri71 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %pri71, align 4
  %add.ptr249 = getelementptr i8, ptr %103, i32 %add245
  %104 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr249) #3, !srcloc !9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !42
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !43
  call void @arm_heavy_mb() #3
  %and255 = and i32 %104, -458754
  %or256 = or i32 %and255, 65537
  %105 = ptrtoint ptr %pri71 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %pri71, align 4
  %add.ptr258 = getelementptr i8, ptr %106, i32 %add245
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr258, i32 %or256) #3, !srcloc !12
  %add262 = add i32 %mul.i, 6407528
  %107 = ptrtoint ptr %pri71 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %pri71, align 4
  %add.ptr266 = getelementptr i8, ptr %108, i32 %add262
  %109 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr266) #3, !srcloc !9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !44
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !45
  call void @arm_heavy_mb() #3
  %and272 = and i32 %109, -65794
  %110 = ptrtoint ptr %pri71 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %pri71, align 4
  %add.ptr275 = getelementptr i8, ptr %111, i32 %add262
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr275, i32 %and272) #3, !srcloc !12
  %add279 = add i32 %mul.i, 6407544
  %112 = ptrtoint ptr %pri71 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %pri71, align 4
  %add.ptr283 = getelementptr i8, ptr %113, i32 %add279
  %114 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr283) #3, !srcloc !9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !46
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !47
  call void @arm_heavy_mb() #3
  %or290 = or i32 %114, -2147483648
  %115 = ptrtoint ptr %pri71 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %pri71, align 4
  %add.ptr292 = getelementptr i8, ptr %116, i32 %add279
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr292, i32 %or290) #3, !srcloc !12
  %117 = ptrtoint ptr %pri71 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %pri71, align 4
  %add.ptr299 = getelementptr i8, ptr %118, i32 6386492
  %119 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr299) #3, !srcloc !9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !48
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !49
  call void @arm_heavy_mb() #3
  %or306 = or i32 %119, 1048576
  %120 = ptrtoint ptr %pri71 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %pri71, align 4
  %add.ptr308 = getelementptr i8, ptr %121, i32 6386492
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr308, i32 %or306) #3, !srcloc !12
  %122 = ptrtoint ptr %pri71 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %pri71, align 4
  %add.ptr315 = getelementptr i8, ptr %123, i32 6386492
  %124 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr315) #3, !srcloc !9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !50
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !51
  call void @arm_heavy_mb() #3
  %or322 = or i32 %124, 268435456
  %125 = ptrtoint ptr %pri71 to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %pri71, align 4
  %add.ptr324 = getelementptr i8, ptr %126, i32 6386492
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr324, i32 %or322) #3, !srcloc !12
  %127 = ptrtoint ptr %pri71 to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %pri71, align 4
  %add.ptr331 = getelementptr i8, ptr %128, i32 6386492
  %129 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr331) #3, !srcloc !9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !52
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !53
  call void @arm_heavy_mb() #3
  %and337 = and i32 %129, -1048577
  %130 = ptrtoint ptr %pri71 to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %pri71, align 4
  %add.ptr340 = getelementptr i8, ptr %131, i32 6386492
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr340, i32 %and337) #3, !srcloc !12
  %add344 = add i32 %mul.i, 6407588
  %132 = ptrtoint ptr %pri71 to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %pri71, align 4
  %add.ptr348 = getelementptr i8, ptr %133, i32 %add344
  %134 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr348) #3, !srcloc !9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !54
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !55
  call void @arm_heavy_mb() #3
  %and354 = and i32 %134, -1595867264
  %or355 = or i32 %and354, %or5
  %135 = ptrtoint ptr %pri71 to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %pri71, align 4
  %add.ptr357 = getelementptr i8, ptr %136, i32 %add344
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr357, i32 %or355) #3, !srcloc !12
  br label %cleanup

cleanup:                                          ; preds = %if.end242, %if.then
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

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

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
!9 = !{i64 5396190}
!10 = !{i64 2156236534}
!11 = !{i64 2156236936}
!12 = !{i64 5395772}
!13 = !{i64 2156237816}
!14 = !{i64 2156238218}
!15 = !{i64 2156239098}
!16 = !{i64 2156239500}
!17 = !{i64 2156240380}
!18 = !{i64 2156240782}
!19 = !{i64 2156241662}
!20 = !{i64 2156242064}
!21 = !{i64 2156242543}
!22 = !{i64 2156243012}
!23 = !{i64 2156243489}
!24 = !{i64 2156243965}
!25 = !{i64 2156244442}
!26 = !{i64 2156245307}
!27 = !{i64 2156245709}
!28 = !{i64 2156246589}
!29 = !{i64 2156246991}
!30 = !{i64 2156247450}
!31 = !{i64 2156247877}
!32 = !{i64 2156248304}
!33 = !{i64 2156249152}
!34 = !{i64 2156249554}
!35 = !{i64 2156250434}
!36 = !{i64 2156250836}
!37 = !{i64 2156251321}
!38 = !{i64 2156251799}
!39 = !{i64 2156252285}
!40 = !{i64 2156253153}
!41 = !{i64 2156253555}
!42 = !{i64 2156254435}
!43 = !{i64 2156254837}
!44 = !{i64 2156255717}
!45 = !{i64 2156256119}
!46 = !{i64 2156256999}
!47 = !{i64 2156257401}
!48 = !{i64 2156258274}
!49 = !{i64 2156258676}
!50 = !{i64 2156259549}
!51 = !{i64 2156259951}
!52 = !{i64 2156260824}
!53 = !{i64 2156261226}
!54 = !{i64 2156262100}
!55 = !{i64 2156262490}
