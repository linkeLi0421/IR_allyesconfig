; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/nouveau/nvkm/engine/disp/vga.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/nvkm/engine/disp/vga.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.nvkm_device = type { ptr, ptr, ptr, i32, i64, ptr, ptr, ptr, %struct.list_head, %struct.mutex, i32, ptr, %struct.nvkm_event, i32, ptr, i32, i32, i8, i32, %struct.anon.132, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [3 x ptr], ptr, ptr, [10 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [5 x ptr], [3 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.nvkm_event = type { ptr, i32, i32, %struct.spinlock, %struct.spinlock, %struct.list_head, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.anon.132 = type { %struct.notifier_block }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.list_head = type { ptr, ptr }

@__sancov_gen_cov_switch_values = internal global [13 x i64] [i64 11, i64 16, i64 960, i64 961, i64 962, i64 964, i64 965, i64 972, i64 974, i64 975, i64 980, i64 981, i64 986]
@__sancov_gen_cov_switch_values.1 = internal global [13 x i64] [i64 11, i64 16, i64 960, i64 961, i64 962, i64 964, i64 965, i64 972, i64 974, i64 975, i64 980, i64 981, i64 986]
@__sancov_gen_cov_switch_values.2 = internal global [5 x i64] [i64 3, i64 16, i64 964, i64 974, i64 980]
@__sancov_gen_cov_switch_values.3 = internal global [5 x i64] [i64 3, i64 16, i64 964, i64 974, i64 980]
@llvm.used = appending global [1 x ptr] [ptr @asan.module_ctor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i8 @nvkm_rdport(ptr nocapture noundef readonly %device, i32 noundef %head, i16 noundef zeroext %port) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %card_type = getelementptr inbounds %struct.nvkm_device, ptr %device, i32 0, i32 15
  %0 = ptrtoint ptr %card_type to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %card_type, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 79, i32 %1)
  %cmp = icmp ugt i32 %1, 79
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  %pri = getelementptr inbounds %struct.nvkm_device, ptr %device, i32 0, i32 11
  %2 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pri, align 4
  %conv = zext i16 %port to i32
  %add = add nuw nsw i32 %conv, 6295552
  %add.ptr = getelementptr i8, ptr %3, i32 %add
  %4 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr) #2, !srcloc !9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #2, !srcloc !10
  br label %return

if.end:                                           ; preds = %entry
  %conv1 = zext i16 %port to i32
  %5 = zext i16 %port to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values)
  switch i16 %port, label %if.end.return_crit_edge [
    i16 960, label %if.end.if.then23_crit_edge
    i16 961, label %if.end.if.then23_crit_edge87
    i16 962, label %if.end.if.then23_crit_edge88
    i16 986, label %if.end.if.then23_crit_edge89
    i16 980, label %if.end.if.then23_crit_edge90
    i16 981, label %if.end.if.then23_crit_edge91
    i16 972, label %if.end.if.then54_crit_edge
    i16 964, label %if.end.if.then54_crit_edge92
    i16 965, label %if.end.if.then54_crit_edge93
    i16 974, label %if.end.if.then54_crit_edge94
    i16 975, label %if.end.if.then54_crit_edge95
  ]

if.end.if.then54_crit_edge95:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.then54

if.end.if.then54_crit_edge94:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.then54

if.end.if.then54_crit_edge93:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.then54

if.end.if.then54_crit_edge92:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.then54

if.end.if.then54_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.then54

if.end.if.then23_crit_edge91:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.then23

if.end.if.then23_crit_edge90:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.then23

if.end.if.then23_crit_edge89:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.then23

if.end.if.then23_crit_edge88:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.then23

if.end.if.then23_crit_edge87:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.then23

if.end.if.then23_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.then23

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #4
  br label %return

if.then23:                                        ; preds = %if.end.if.then23_crit_edge, %if.end.if.then23_crit_edge87, %if.end.if.then23_crit_edge88, %if.end.if.then23_crit_edge89, %if.end.if.then23_crit_edge90, %if.end.if.then23_crit_edge91
  %pri24 = getelementptr inbounds %struct.nvkm_device, ptr %device, i32 0, i32 11
  %6 = ptrtoint ptr %pri24 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pri24, align 4
  %mul = shl i32 %head, 13
  %add25 = add i32 %mul, 6295552
  %add27 = add i32 %add25, %conv1
  %add.ptr28 = getelementptr i8, ptr %7, i32 %add27
  %8 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr28) #2, !srcloc !9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #2, !srcloc !10
  br label %return

if.then54:                                        ; preds = %if.end.if.then54_crit_edge, %if.end.if.then54_crit_edge92, %if.end.if.then54_crit_edge93, %if.end.if.then54_crit_edge94, %if.end.if.then54_crit_edge95
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %1)
  %cmp56 = icmp ult i32 %1, 64
  %pri60 = getelementptr inbounds %struct.nvkm_device, ptr %device, i32 0, i32 11
  %9 = ptrtoint ptr %pri60 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %pri60, align 4
  %head.op = shl i32 %head, 13
  %head.op.op = add i32 %head.op, 786432
  %add62 = select i1 %cmp56, i32 786432, i32 %head.op.op
  %add64 = add i32 %add62, %conv1
  %add.ptr65 = getelementptr i8, ptr %10, i32 %add64
  %11 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr65) #2, !srcloc !9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #2, !srcloc !10
  br label %return

return:                                           ; preds = %if.then54, %if.then23, %if.end.return_crit_edge, %if.then
  %retval.0 = phi i8 [ %4, %if.then ], [ %8, %if.then23 ], [ %11, %if.then54 ], [ 0, %if.end.return_crit_edge ]
  ret i8 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nvkm_wrport(ptr nocapture noundef readonly %device, i32 noundef %head, i16 noundef zeroext %port, i8 noundef zeroext %data) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %card_type = getelementptr inbounds %struct.nvkm_device, ptr %device, i32 0, i32 15
  %0 = ptrtoint ptr %card_type to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %card_type, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 79, i32 %1)
  %cmp = icmp ugt i32 %1, 79
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  %pri = getelementptr inbounds %struct.nvkm_device, ptr %device, i32 0, i32 11
  %2 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pri, align 4
  %conv = zext i16 %port to i32
  %add = add nuw nsw i32 %conv, 6295552
  %add.ptr = getelementptr i8, ptr %3, i32 %add
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #2, !srcloc !11
  tail call void @arm_heavy_mb() #2
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr, i8 %data) #2, !srcloc !12
  br label %if.end66

if.else:                                          ; preds = %entry
  %conv1 = zext i16 %port to i32
  %4 = zext i16 %port to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.1)
  switch i16 %port, label %if.else.if.end66_crit_edge [
    i16 960, label %if.else.if.then23_crit_edge
    i16 961, label %if.else.if.then23_crit_edge88
    i16 962, label %if.else.if.then23_crit_edge89
    i16 986, label %if.else.if.then23_crit_edge90
    i16 980, label %if.else.if.then23_crit_edge91
    i16 981, label %if.else.if.then23_crit_edge92
    i16 972, label %if.else.if.then53_crit_edge
    i16 964, label %if.else.if.then53_crit_edge93
    i16 965, label %if.else.if.then53_crit_edge94
    i16 974, label %if.else.if.then53_crit_edge95
    i16 975, label %if.else.if.then53_crit_edge96
  ]

if.else.if.then53_crit_edge96:                    ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.then53

if.else.if.then53_crit_edge95:                    ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.then53

if.else.if.then53_crit_edge94:                    ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.then53

if.else.if.then53_crit_edge93:                    ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.then53

if.else.if.then53_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.then53

if.else.if.then23_crit_edge92:                    ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.then23

if.else.if.then23_crit_edge91:                    ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.then23

if.else.if.then23_crit_edge90:                    ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.then23

if.else.if.then23_crit_edge89:                    ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.then23

if.else.if.then23_crit_edge88:                    ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.then23

if.else.if.then23_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.then23

if.else.if.end66_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end66

if.then23:                                        ; preds = %if.else.if.then23_crit_edge, %if.else.if.then23_crit_edge88, %if.else.if.then23_crit_edge89, %if.else.if.then23_crit_edge90, %if.else.if.then23_crit_edge91, %if.else.if.then23_crit_edge92
  %pri24 = getelementptr inbounds %struct.nvkm_device, ptr %device, i32 0, i32 11
  %5 = ptrtoint ptr %pri24 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %pri24, align 4
  %mul = shl i32 %head, 13
  %add25 = add i32 %mul, 6295552
  %add27 = add i32 %add25, %conv1
  %add.ptr28 = getelementptr i8, ptr %6, i32 %add27
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #2, !srcloc !11
  tail call void @arm_heavy_mb() #2
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr28, i8 %data) #2, !srcloc !12
  br label %if.end66

if.then53:                                        ; preds = %if.else.if.then53_crit_edge, %if.else.if.then53_crit_edge93, %if.else.if.then53_crit_edge94, %if.else.if.then53_crit_edge95, %if.else.if.then53_crit_edge96
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %1)
  %cmp55 = icmp ult i32 %1, 64
  %pri58 = getelementptr inbounds %struct.nvkm_device, ptr %device, i32 0, i32 11
  %7 = ptrtoint ptr %pri58 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %pri58, align 4
  %head.op = shl i32 %head, 13
  %head.op.op = add i32 %head.op, 786432
  %add60 = select i1 %cmp55, i32 786432, i32 %head.op.op
  %add62 = add i32 %add60, %conv1
  %add.ptr63 = getelementptr i8, ptr %8, i32 %add62
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #2, !srcloc !11
  tail call void @arm_heavy_mb() #2
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr63, i8 %data) #2, !srcloc !12
  br label %if.end66

if.end66:                                         ; preds = %if.then53, %if.then23, %if.else.if.end66_crit_edge, %if.then
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i8 @nvkm_rdvgas(ptr nocapture noundef readonly %device, i32 noundef %head, i8 noundef zeroext %index) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %card_type.i = getelementptr inbounds %struct.nvkm_device, ptr %device, i32 0, i32 15
  %0 = ptrtoint ptr %card_type.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %card_type.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 79, i32 %1)
  %cmp.i = icmp ugt i32 %1, 79
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  %pri.i = getelementptr inbounds %struct.nvkm_device, ptr %device, i32 0, i32 11
  %2 = ptrtoint ptr %pri.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pri.i, align 4
  %add.ptr.i = getelementptr i8, ptr %3, i32 6296516
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #2, !srcloc !11
  tail call void @arm_heavy_mb() #2
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i, i8 %index) #2, !srcloc !12
  br label %nvkm_wrport.exit

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %1)
  %cmp55.i = icmp ult i32 %1, 64
  %pri58.i = getelementptr inbounds %struct.nvkm_device, ptr %device, i32 0, i32 11
  %4 = ptrtoint ptr %pri58.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pri58.i, align 4
  %head.op.i = shl i32 %head, 13
  %head.op.op.i.op = add i32 %head.op.i, 787396
  %add62.i = select i1 %cmp55.i, i32 787396, i32 %head.op.op.i.op
  %add.ptr63.i = getelementptr i8, ptr %5, i32 %add62.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #2, !srcloc !11
  tail call void @arm_heavy_mb() #2
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr63.i, i8 %index) #2, !srcloc !12
  br label %nvkm_wrport.exit

nvkm_wrport.exit:                                 ; preds = %if.else.i, %if.then.i
  %6 = ptrtoint ptr %card_type.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %card_type.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 79, i32 %7)
  %cmp.i4 = icmp ugt i32 %7, 79
  br i1 %cmp.i4, label %if.then.i7, label %if.end.i

if.then.i7:                                       ; preds = %nvkm_wrport.exit
  call void @__sanitizer_cov_trace_pc() #4
  %pri.i5 = getelementptr inbounds %struct.nvkm_device, ptr %device, i32 0, i32 11
  %8 = ptrtoint ptr %pri.i5 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pri.i5, align 4
  %add.ptr.i6 = getelementptr i8, ptr %9, i32 6296517
  %10 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i6) #2, !srcloc !9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #2, !srcloc !10
  br label %nvkm_rdport.exit

if.end.i:                                         ; preds = %nvkm_wrport.exit
  call void @__sanitizer_cov_trace_pc() #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %7)
  %cmp56.i = icmp ult i32 %7, 64
  %pri60.i = getelementptr inbounds %struct.nvkm_device, ptr %device, i32 0, i32 11
  %11 = ptrtoint ptr %pri60.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %pri60.i, align 4
  %head.op.i8 = shl i32 %head, 13
  %head.op.op.i9.op = add i32 %head.op.i8, 787397
  %add64.i = select i1 %cmp56.i, i32 787397, i32 %head.op.op.i9.op
  %add.ptr65.i = getelementptr i8, ptr %12, i32 %add64.i
  %13 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr65.i) #2, !srcloc !9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #2, !srcloc !10
  br label %nvkm_rdport.exit

nvkm_rdport.exit:                                 ; preds = %if.end.i, %if.then.i7
  %retval.0.i = phi i8 [ %10, %if.then.i7 ], [ %13, %if.end.i ]
  ret i8 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nvkm_wrvgas(ptr nocapture noundef readonly %device, i32 noundef %head, i8 noundef zeroext %index, i8 noundef zeroext %value) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %card_type.i = getelementptr inbounds %struct.nvkm_device, ptr %device, i32 0, i32 15
  %0 = ptrtoint ptr %card_type.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %card_type.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 79, i32 %1)
  %cmp.i = icmp ugt i32 %1, 79
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  %pri.i = getelementptr inbounds %struct.nvkm_device, ptr %device, i32 0, i32 11
  %2 = ptrtoint ptr %pri.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pri.i, align 4
  %add.ptr.i = getelementptr i8, ptr %3, i32 6296516
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #2, !srcloc !11
  tail call void @arm_heavy_mb() #2
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i, i8 %index) #2, !srcloc !12
  br label %nvkm_wrport.exit

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %1)
  %cmp55.i = icmp ult i32 %1, 64
  %pri58.i = getelementptr inbounds %struct.nvkm_device, ptr %device, i32 0, i32 11
  %4 = ptrtoint ptr %pri58.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pri58.i, align 4
  %head.op.i = shl i32 %head, 13
  %head.op.op.i.op = add i32 %head.op.i, 787396
  %add62.i = select i1 %cmp55.i, i32 787396, i32 %head.op.op.i.op
  %add.ptr63.i = getelementptr i8, ptr %5, i32 %add62.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #2, !srcloc !11
  tail call void @arm_heavy_mb() #2
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr63.i, i8 %index) #2, !srcloc !12
  br label %nvkm_wrport.exit

nvkm_wrport.exit:                                 ; preds = %if.else.i, %if.then.i
  %6 = ptrtoint ptr %card_type.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %card_type.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 79, i32 %7)
  %cmp.i4 = icmp ugt i32 %7, 79
  br i1 %cmp.i4, label %if.then.i7, label %if.else.i8

if.then.i7:                                       ; preds = %nvkm_wrport.exit
  call void @__sanitizer_cov_trace_pc() #4
  %pri.i5 = getelementptr inbounds %struct.nvkm_device, ptr %device, i32 0, i32 11
  %8 = ptrtoint ptr %pri.i5 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pri.i5, align 4
  %add.ptr.i6 = getelementptr i8, ptr %9, i32 6296517
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #2, !srcloc !11
  tail call void @arm_heavy_mb() #2
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i6, i8 %value) #2, !srcloc !12
  br label %nvkm_wrport.exit16

if.else.i8:                                       ; preds = %nvkm_wrport.exit
  call void @__sanitizer_cov_trace_pc() #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %7)
  %cmp55.i9 = icmp ult i32 %7, 64
  %pri58.i10 = getelementptr inbounds %struct.nvkm_device, ptr %device, i32 0, i32 11
  %10 = ptrtoint ptr %pri58.i10 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pri58.i10, align 4
  %head.op.i11 = shl i32 %head, 13
  %head.op.op.i12.op = add i32 %head.op.i11, 787397
  %add62.i14 = select i1 %cmp55.i9, i32 787397, i32 %head.op.op.i12.op
  %add.ptr63.i15 = getelementptr i8, ptr %11, i32 %add62.i14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #2, !srcloc !11
  tail call void @arm_heavy_mb() #2
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr63.i15, i8 %value) #2, !srcloc !12
  br label %nvkm_wrport.exit16

nvkm_wrport.exit16:                               ; preds = %if.else.i8, %if.then.i7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i8 @nvkm_rdvgag(ptr nocapture noundef readonly %device, i32 noundef %head, i8 noundef zeroext %index) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %card_type.i = getelementptr inbounds %struct.nvkm_device, ptr %device, i32 0, i32 15
  %0 = ptrtoint ptr %card_type.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %card_type.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 79, i32 %1)
  %cmp.i = icmp ugt i32 %1, 79
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  %pri.i = getelementptr inbounds %struct.nvkm_device, ptr %device, i32 0, i32 11
  %2 = ptrtoint ptr %pri.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pri.i, align 4
  %add.ptr.i = getelementptr i8, ptr %3, i32 6296526
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #2, !srcloc !11
  tail call void @arm_heavy_mb() #2
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i, i8 %index) #2, !srcloc !12
  br label %nvkm_wrport.exit

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %1)
  %cmp55.i = icmp ult i32 %1, 64
  %pri58.i = getelementptr inbounds %struct.nvkm_device, ptr %device, i32 0, i32 11
  %4 = ptrtoint ptr %pri58.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pri58.i, align 4
  %head.op.i = shl i32 %head, 13
  %head.op.op.i.op = add i32 %head.op.i, 787406
  %add62.i = select i1 %cmp55.i, i32 787406, i32 %head.op.op.i.op
  %add.ptr63.i = getelementptr i8, ptr %5, i32 %add62.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #2, !srcloc !11
  tail call void @arm_heavy_mb() #2
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr63.i, i8 %index) #2, !srcloc !12
  br label %nvkm_wrport.exit

nvkm_wrport.exit:                                 ; preds = %if.else.i, %if.then.i
  %6 = ptrtoint ptr %card_type.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %card_type.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 79, i32 %7)
  %cmp.i4 = icmp ugt i32 %7, 79
  br i1 %cmp.i4, label %if.then.i7, label %if.end.i

if.then.i7:                                       ; preds = %nvkm_wrport.exit
  call void @__sanitizer_cov_trace_pc() #4
  %pri.i5 = getelementptr inbounds %struct.nvkm_device, ptr %device, i32 0, i32 11
  %8 = ptrtoint ptr %pri.i5 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pri.i5, align 4
  %add.ptr.i6 = getelementptr i8, ptr %9, i32 6296527
  %10 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i6) #2, !srcloc !9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #2, !srcloc !10
  br label %nvkm_rdport.exit

if.end.i:                                         ; preds = %nvkm_wrport.exit
  call void @__sanitizer_cov_trace_pc() #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %7)
  %cmp56.i = icmp ult i32 %7, 64
  %pri60.i = getelementptr inbounds %struct.nvkm_device, ptr %device, i32 0, i32 11
  %11 = ptrtoint ptr %pri60.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %pri60.i, align 4
  %head.op.i8 = shl i32 %head, 13
  %head.op.op.i9.op = add i32 %head.op.i8, 787407
  %add64.i = select i1 %cmp56.i, i32 787407, i32 %head.op.op.i9.op
  %add.ptr65.i = getelementptr i8, ptr %12, i32 %add64.i
  %13 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr65.i) #2, !srcloc !9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #2, !srcloc !10
  br label %nvkm_rdport.exit

nvkm_rdport.exit:                                 ; preds = %if.end.i, %if.then.i7
  %retval.0.i = phi i8 [ %10, %if.then.i7 ], [ %13, %if.end.i ]
  ret i8 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nvkm_wrvgag(ptr nocapture noundef readonly %device, i32 noundef %head, i8 noundef zeroext %index, i8 noundef zeroext %value) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %card_type.i = getelementptr inbounds %struct.nvkm_device, ptr %device, i32 0, i32 15
  %0 = ptrtoint ptr %card_type.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %card_type.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 79, i32 %1)
  %cmp.i = icmp ugt i32 %1, 79
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  %pri.i = getelementptr inbounds %struct.nvkm_device, ptr %device, i32 0, i32 11
  %2 = ptrtoint ptr %pri.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pri.i, align 4
  %add.ptr.i = getelementptr i8, ptr %3, i32 6296526
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #2, !srcloc !11
  tail call void @arm_heavy_mb() #2
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i, i8 %index) #2, !srcloc !12
  br label %nvkm_wrport.exit

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %1)
  %cmp55.i = icmp ult i32 %1, 64
  %pri58.i = getelementptr inbounds %struct.nvkm_device, ptr %device, i32 0, i32 11
  %4 = ptrtoint ptr %pri58.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pri58.i, align 4
  %head.op.i = shl i32 %head, 13
  %head.op.op.i.op = add i32 %head.op.i, 787406
  %add62.i = select i1 %cmp55.i, i32 787406, i32 %head.op.op.i.op
  %add.ptr63.i = getelementptr i8, ptr %5, i32 %add62.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #2, !srcloc !11
  tail call void @arm_heavy_mb() #2
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr63.i, i8 %index) #2, !srcloc !12
  br label %nvkm_wrport.exit

nvkm_wrport.exit:                                 ; preds = %if.else.i, %if.then.i
  %6 = ptrtoint ptr %card_type.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %card_type.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 79, i32 %7)
  %cmp.i4 = icmp ugt i32 %7, 79
  br i1 %cmp.i4, label %if.then.i7, label %if.else.i8

if.then.i7:                                       ; preds = %nvkm_wrport.exit
  call void @__sanitizer_cov_trace_pc() #4
  %pri.i5 = getelementptr inbounds %struct.nvkm_device, ptr %device, i32 0, i32 11
  %8 = ptrtoint ptr %pri.i5 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pri.i5, align 4
  %add.ptr.i6 = getelementptr i8, ptr %9, i32 6296527
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #2, !srcloc !11
  tail call void @arm_heavy_mb() #2
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i6, i8 %value) #2, !srcloc !12
  br label %nvkm_wrport.exit16

if.else.i8:                                       ; preds = %nvkm_wrport.exit
  call void @__sanitizer_cov_trace_pc() #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %7)
  %cmp55.i9 = icmp ult i32 %7, 64
  %pri58.i10 = getelementptr inbounds %struct.nvkm_device, ptr %device, i32 0, i32 11
  %10 = ptrtoint ptr %pri58.i10 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pri58.i10, align 4
  %head.op.i11 = shl i32 %head, 13
  %head.op.op.i12.op = add i32 %head.op.i11, 787407
  %add62.i14 = select i1 %cmp55.i9, i32 787407, i32 %head.op.op.i12.op
  %add.ptr63.i15 = getelementptr i8, ptr %11, i32 %add62.i14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #2, !srcloc !11
  tail call void @arm_heavy_mb() #2
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr63.i15, i8 %value) #2, !srcloc !12
  br label %nvkm_wrport.exit16

nvkm_wrport.exit16:                               ; preds = %if.else.i8, %if.then.i7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i8 @nvkm_rdvgac(ptr nocapture noundef readonly %device, i32 noundef %head, i8 noundef zeroext %index) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %card_type.i = getelementptr inbounds %struct.nvkm_device, ptr %device, i32 0, i32 15
  %0 = ptrtoint ptr %card_type.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %card_type.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 79, i32 %1)
  %cmp.i = icmp ugt i32 %1, 79
  %pri.i = getelementptr inbounds %struct.nvkm_device, ptr %device, i32 0, i32 11
  %2 = ptrtoint ptr %pri.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pri.i, align 4
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  %add.ptr.i = getelementptr i8, ptr %3, i32 6296532
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #2, !srcloc !11
  tail call void @arm_heavy_mb() #2
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i, i8 %index) #2, !srcloc !12
  br label %nvkm_wrport.exit

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  %mul.i = shl i32 %head, 13
  %add27.i = add i32 %mul.i, 6296532
  %add.ptr28.i = getelementptr i8, ptr %3, i32 %add27.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #2, !srcloc !11
  tail call void @arm_heavy_mb() #2
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr28.i, i8 %index) #2, !srcloc !12
  br label %nvkm_wrport.exit

nvkm_wrport.exit:                                 ; preds = %if.else.i, %if.then.i
  %4 = ptrtoint ptr %card_type.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %card_type.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 79, i32 %5)
  %cmp.i4 = icmp ugt i32 %5, 79
  %pri.i5 = getelementptr inbounds %struct.nvkm_device, ptr %device, i32 0, i32 11
  %6 = ptrtoint ptr %pri.i5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pri.i5, align 4
  br i1 %cmp.i4, label %if.then.i7, label %if.end.i

if.then.i7:                                       ; preds = %nvkm_wrport.exit
  call void @__sanitizer_cov_trace_pc() #4
  %add.ptr.i6 = getelementptr i8, ptr %7, i32 6296533
  %8 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i6) #2, !srcloc !9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #2, !srcloc !10
  br label %nvkm_rdport.exit

if.end.i:                                         ; preds = %nvkm_wrport.exit
  call void @__sanitizer_cov_trace_pc() #4
  %mul.i9 = shl i32 %head, 13
  %add27.i11 = add i32 %mul.i9, 6296533
  %add.ptr28.i12 = getelementptr i8, ptr %7, i32 %add27.i11
  %9 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr28.i12) #2, !srcloc !9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #2, !srcloc !10
  br label %nvkm_rdport.exit

nvkm_rdport.exit:                                 ; preds = %if.end.i, %if.then.i7
  %retval.0.i = phi i8 [ %8, %if.then.i7 ], [ %9, %if.end.i ]
  ret i8 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nvkm_wrvgac(ptr nocapture noundef readonly %device, i32 noundef %head, i8 noundef zeroext %index, i8 noundef zeroext %value) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %card_type.i = getelementptr inbounds %struct.nvkm_device, ptr %device, i32 0, i32 15
  %0 = ptrtoint ptr %card_type.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %card_type.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 79, i32 %1)
  %cmp.i = icmp ugt i32 %1, 79
  %pri.i = getelementptr inbounds %struct.nvkm_device, ptr %device, i32 0, i32 11
  %2 = ptrtoint ptr %pri.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pri.i, align 4
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  %add.ptr.i = getelementptr i8, ptr %3, i32 6296532
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #2, !srcloc !11
  tail call void @arm_heavy_mb() #2
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i, i8 %index) #2, !srcloc !12
  br label %nvkm_wrport.exit

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  %mul.i = shl i32 %head, 13
  %add27.i = add i32 %mul.i, 6296532
  %add.ptr28.i = getelementptr i8, ptr %3, i32 %add27.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #2, !srcloc !11
  tail call void @arm_heavy_mb() #2
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr28.i, i8 %index) #2, !srcloc !12
  br label %nvkm_wrport.exit

nvkm_wrport.exit:                                 ; preds = %if.else.i, %if.then.i
  %4 = ptrtoint ptr %card_type.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %card_type.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 79, i32 %5)
  %cmp.i4 = icmp ugt i32 %5, 79
  %pri.i5 = getelementptr inbounds %struct.nvkm_device, ptr %device, i32 0, i32 11
  %6 = ptrtoint ptr %pri.i5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pri.i5, align 4
  br i1 %cmp.i4, label %if.then.i7, label %if.else.i8

if.then.i7:                                       ; preds = %nvkm_wrport.exit
  call void @__sanitizer_cov_trace_pc() #4
  %add.ptr.i6 = getelementptr i8, ptr %7, i32 6296533
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #2, !srcloc !11
  tail call void @arm_heavy_mb() #2
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i6, i8 %value) #2, !srcloc !12
  br label %nvkm_wrport.exit14

if.else.i8:                                       ; preds = %nvkm_wrport.exit
  call void @__sanitizer_cov_trace_pc() #4
  %mul.i10 = shl i32 %head, 13
  %add27.i12 = add i32 %mul.i10, 6296533
  %add.ptr28.i13 = getelementptr i8, ptr %7, i32 %add27.i12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #2, !srcloc !11
  tail call void @arm_heavy_mb() #2
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr28.i13, i8 %value) #2, !srcloc !12
  br label %nvkm_wrport.exit14

nvkm_wrport.exit14:                               ; preds = %if.else.i8, %if.then.i7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i8 @nvkm_rdvgai(ptr nocapture noundef readonly %device, i32 noundef %head, i16 noundef zeroext %port, i8 noundef zeroext %index) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i16 %port to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.2)
  switch i16 %port, label %entry.return_crit_edge [
    i16 964, label %if.then
    i16 974, label %if.then5
    i16 980, label %if.then11
  ]

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %return

if.then:                                          ; preds = %entry
  %card_type.i.i = getelementptr inbounds %struct.nvkm_device, ptr %device, i32 0, i32 15
  %1 = ptrtoint ptr %card_type.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %card_type.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 79, i32 %2)
  %cmp.i.i = icmp ugt i32 %2, 79
  br i1 %cmp.i.i, label %if.then.i.i, label %if.else.i.i

if.then.i.i:                                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #4
  %pri.i.i = getelementptr inbounds %struct.nvkm_device, ptr %device, i32 0, i32 11
  %3 = ptrtoint ptr %pri.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %pri.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %4, i32 6296516
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #2, !srcloc !11
  tail call void @arm_heavy_mb() #2
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i, i8 %index) #2, !srcloc !12
  br label %nvkm_wrport.exit.i

if.else.i.i:                                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %2)
  %cmp55.i.i = icmp ult i32 %2, 64
  %pri58.i.i = getelementptr inbounds %struct.nvkm_device, ptr %device, i32 0, i32 11
  %5 = ptrtoint ptr %pri58.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %pri58.i.i, align 4
  %head.op.i.i = shl i32 %head, 13
  %head.op.op.i.op.i = add i32 %head.op.i.i, 787396
  %add62.i.i = select i1 %cmp55.i.i, i32 787396, i32 %head.op.op.i.op.i
  %add.ptr63.i.i = getelementptr i8, ptr %6, i32 %add62.i.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #2, !srcloc !11
  tail call void @arm_heavy_mb() #2
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr63.i.i, i8 %index) #2, !srcloc !12
  br label %nvkm_wrport.exit.i

nvkm_wrport.exit.i:                               ; preds = %if.else.i.i, %if.then.i.i
  %7 = ptrtoint ptr %card_type.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %card_type.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 79, i32 %8)
  %cmp.i4.i = icmp ugt i32 %8, 79
  br i1 %cmp.i4.i, label %if.then.i7.i, label %if.end.i.i

if.then.i7.i:                                     ; preds = %nvkm_wrport.exit.i
  call void @__sanitizer_cov_trace_pc() #4
  %pri.i5.i = getelementptr inbounds %struct.nvkm_device, ptr %device, i32 0, i32 11
  %9 = ptrtoint ptr %pri.i5.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %pri.i5.i, align 4
  %add.ptr.i6.i = getelementptr i8, ptr %10, i32 6296517
  %11 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i6.i) #2, !srcloc !9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #2, !srcloc !10
  br label %return

if.end.i.i:                                       ; preds = %nvkm_wrport.exit.i
  call void @__sanitizer_cov_trace_pc() #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %8)
  %cmp56.i.i = icmp ult i32 %8, 64
  %pri60.i.i = getelementptr inbounds %struct.nvkm_device, ptr %device, i32 0, i32 11
  %12 = ptrtoint ptr %pri60.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %pri60.i.i, align 4
  %head.op.i8.i = shl i32 %head, 13
  %head.op.op.i9.op.i = add i32 %head.op.i8.i, 787397
  %add64.i.i = select i1 %cmp56.i.i, i32 787397, i32 %head.op.op.i9.op.i
  %add.ptr65.i.i = getelementptr i8, ptr %13, i32 %add64.i.i
  %14 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr65.i.i) #2, !srcloc !9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #2, !srcloc !10
  br label %return

if.then5:                                         ; preds = %entry
  %card_type.i.i22 = getelementptr inbounds %struct.nvkm_device, ptr %device, i32 0, i32 15
  %15 = ptrtoint ptr %card_type.i.i22 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %card_type.i.i22, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 79, i32 %16)
  %cmp.i.i23 = icmp ugt i32 %16, 79
  br i1 %cmp.i.i23, label %if.then.i.i26, label %if.else.i.i33

if.then.i.i26:                                    ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #4
  %pri.i.i24 = getelementptr inbounds %struct.nvkm_device, ptr %device, i32 0, i32 11
  %17 = ptrtoint ptr %pri.i.i24 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %pri.i.i24, align 4
  %add.ptr.i.i25 = getelementptr i8, ptr %18, i32 6296526
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #2, !srcloc !11
  tail call void @arm_heavy_mb() #2
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i25, i8 %index) #2, !srcloc !12
  br label %nvkm_wrport.exit.i35

if.else.i.i33:                                    ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %16)
  %cmp55.i.i27 = icmp ult i32 %16, 64
  %pri58.i.i28 = getelementptr inbounds %struct.nvkm_device, ptr %device, i32 0, i32 11
  %19 = ptrtoint ptr %pri58.i.i28 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %pri58.i.i28, align 4
  %head.op.i.i29 = shl i32 %head, 13
  %head.op.op.i.op.i30 = add i32 %head.op.i.i29, 787406
  %add62.i.i31 = select i1 %cmp55.i.i27, i32 787406, i32 %head.op.op.i.op.i30
  %add.ptr63.i.i32 = getelementptr i8, ptr %20, i32 %add62.i.i31
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #2, !srcloc !11
  tail call void @arm_heavy_mb() #2
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr63.i.i32, i8 %index) #2, !srcloc !12
  br label %nvkm_wrport.exit.i35

nvkm_wrport.exit.i35:                             ; preds = %if.else.i.i33, %if.then.i.i26
  %21 = ptrtoint ptr %card_type.i.i22 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %card_type.i.i22, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 79, i32 %22)
  %cmp.i4.i34 = icmp ugt i32 %22, 79
  br i1 %cmp.i4.i34, label %if.then.i7.i38, label %if.end.i.i45

if.then.i7.i38:                                   ; preds = %nvkm_wrport.exit.i35
  call void @__sanitizer_cov_trace_pc() #4
  %pri.i5.i36 = getelementptr inbounds %struct.nvkm_device, ptr %device, i32 0, i32 11
  %23 = ptrtoint ptr %pri.i5.i36 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %pri.i5.i36, align 4
  %add.ptr.i6.i37 = getelementptr i8, ptr %24, i32 6296527
  %25 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i6.i37) #2, !srcloc !9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #2, !srcloc !10
  br label %return

if.end.i.i45:                                     ; preds = %nvkm_wrport.exit.i35
  call void @__sanitizer_cov_trace_pc() #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %22)
  %cmp56.i.i39 = icmp ult i32 %22, 64
  %pri60.i.i40 = getelementptr inbounds %struct.nvkm_device, ptr %device, i32 0, i32 11
  %26 = ptrtoint ptr %pri60.i.i40 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %pri60.i.i40, align 4
  %head.op.i8.i41 = shl i32 %head, 13
  %head.op.op.i9.op.i42 = add i32 %head.op.i8.i41, 787407
  %add64.i.i43 = select i1 %cmp56.i.i39, i32 787407, i32 %head.op.op.i9.op.i42
  %add.ptr65.i.i44 = getelementptr i8, ptr %27, i32 %add64.i.i43
  %28 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr65.i.i44) #2, !srcloc !9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #2, !srcloc !10
  br label %return

if.then11:                                        ; preds = %entry
  %card_type.i.i47 = getelementptr inbounds %struct.nvkm_device, ptr %device, i32 0, i32 15
  %29 = ptrtoint ptr %card_type.i.i47 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %card_type.i.i47, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 79, i32 %30)
  %cmp.i.i48 = icmp ugt i32 %30, 79
  %pri.i.i49 = getelementptr inbounds %struct.nvkm_device, ptr %device, i32 0, i32 11
  %31 = ptrtoint ptr %pri.i.i49 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %pri.i.i49, align 4
  br i1 %cmp.i.i48, label %if.then.i.i51, label %if.else.i.i52

if.then.i.i51:                                    ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #4
  %add.ptr.i.i50 = getelementptr i8, ptr %32, i32 6296532
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #2, !srcloc !11
  tail call void @arm_heavy_mb() #2
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i50, i8 %index) #2, !srcloc !12
  br label %nvkm_wrport.exit.i55

if.else.i.i52:                                    ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #4
  %mul.i.i = shl i32 %head, 13
  %add27.i.i = add i32 %mul.i.i, 6296532
  %add.ptr28.i.i = getelementptr i8, ptr %32, i32 %add27.i.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #2, !srcloc !11
  tail call void @arm_heavy_mb() #2
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr28.i.i, i8 %index) #2, !srcloc !12
  br label %nvkm_wrport.exit.i55

nvkm_wrport.exit.i55:                             ; preds = %if.else.i.i52, %if.then.i.i51
  %33 = ptrtoint ptr %card_type.i.i47 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %card_type.i.i47, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 79, i32 %34)
  %cmp.i4.i53 = icmp ugt i32 %34, 79
  %35 = ptrtoint ptr %pri.i.i49 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %pri.i.i49, align 4
  br i1 %cmp.i4.i53, label %if.then.i7.i57, label %if.end.i.i58

if.then.i7.i57:                                   ; preds = %nvkm_wrport.exit.i55
  call void @__sanitizer_cov_trace_pc() #4
  %add.ptr.i6.i56 = getelementptr i8, ptr %36, i32 6296533
  %37 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i6.i56) #2, !srcloc !9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #2, !srcloc !10
  br label %return

if.end.i.i58:                                     ; preds = %nvkm_wrport.exit.i55
  call void @__sanitizer_cov_trace_pc() #4
  %mul.i9.i = shl i32 %head, 13
  %add27.i11.i = add i32 %mul.i9.i, 6296533
  %add.ptr28.i12.i = getelementptr i8, ptr %36, i32 %add27.i11.i
  %38 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr28.i12.i) #2, !srcloc !9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #2, !srcloc !10
  br label %return

return:                                           ; preds = %if.end.i.i58, %if.then.i7.i57, %if.end.i.i45, %if.then.i7.i38, %if.end.i.i, %if.then.i7.i, %entry.return_crit_edge
  %retval.0 = phi i8 [ 0, %entry.return_crit_edge ], [ %11, %if.then.i7.i ], [ %14, %if.end.i.i ], [ %25, %if.then.i7.i38 ], [ %28, %if.end.i.i45 ], [ %37, %if.then.i7.i57 ], [ %38, %if.end.i.i58 ]
  ret i8 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nvkm_wrvgai(ptr nocapture noundef readonly %device, i32 noundef %head, i16 noundef zeroext %port, i8 noundef zeroext %index, i8 noundef zeroext %value) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i16 %port to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.3)
  switch i16 %port, label %entry.if.end12_crit_edge [
    i16 964, label %if.then
    i16 974, label %if.then5
    i16 980, label %if.then10
  ]

entry.if.end12_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end12

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  tail call void @nvkm_wrvgas(ptr noundef %device, i32 noundef %head, i8 noundef zeroext %index, i8 noundef zeroext %value)
  br label %if.end12

if.then5:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  tail call void @nvkm_wrvgag(ptr noundef %device, i32 noundef %head, i8 noundef zeroext %index, i8 noundef zeroext %value)
  br label %if.end12

if.then10:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  tail call void @nvkm_wrvgac(ptr noundef %device, i32 noundef %head, i8 noundef zeroext %index, i8 noundef zeroext %value)
  br label %if.end12

if.end12:                                         ; preds = %if.then10, %if.then5, %if.then, %entry.if.end12_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @nvkm_lockvgac(ptr nocapture noundef readonly %device, i1 noundef zeroext %lock) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %card_type.i.i = getelementptr inbounds %struct.nvkm_device, ptr %device, i32 0, i32 15
  %pri.i.i = getelementptr inbounds %struct.nvkm_device, ptr %device, i32 0, i32 11
  %0 = ptrtoint ptr %pri.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pri.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 6296532
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #2
  tail call void @arm_heavy_mb() #2
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i, i8 31) #2
  %2 = ptrtoint ptr %pri.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pri.i.i, align 4
  %add.ptr.i6.i = getelementptr i8, ptr %3, i32 6296533
  %4 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i6.i) #2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #2
  %conv = select i1 %lock, i8 -103, i8 87
  %5 = ptrtoint ptr %card_type.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %card_type.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 80, i32 %6)
  %cmp = icmp ult i32 %6, 80
  %7 = ptrtoint ptr %pri.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %pri.i.i, align 4
  %add.ptr28.i.i26 = getelementptr i8, ptr %8, i32 6296532
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #2
  tail call void @arm_heavy_mb() #2
  br i1 %cmp, label %nvkm_wrport.exit.i30, label %nvkm_wrport.exit.i42

nvkm_wrport.exit.i30:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr28.i.i26, i8 31) #2, !srcloc !12
  %9 = ptrtoint ptr %pri.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %pri.i.i, align 4
  %add.ptr.i6.i31 = getelementptr i8, ptr %10, i32 6296533
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #2
  tail call void @arm_heavy_mb() #2
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i6.i31, i8 %conv) #2
  br label %if.end

nvkm_wrport.exit.i42:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr28.i.i26, i8 63) #2, !srcloc !12
  %11 = ptrtoint ptr %pri.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %pri.i.i, align 4
  %add.ptr.i6.i43 = getelementptr i8, ptr %12, i32 6296533
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #2
  tail call void @arm_heavy_mb() #2
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i6.i43, i8 %conv) #2
  br label %if.end

if.end:                                           ; preds = %nvkm_wrport.exit.i42, %nvkm_wrport.exit.i30
  %chipset = getelementptr inbounds %struct.nvkm_device, ptr %device, i32 0, i32 16
  %13 = ptrtoint ptr %chipset to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %chipset, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 17, i32 %14)
  %cmp4 = icmp eq i32 %14, 17
  br i1 %cmp4, label %if.then6, label %if.end.if.end11_crit_edge

if.end.if.end11_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end11

if.then6:                                         ; preds = %if.end
  %15 = ptrtoint ptr %pri.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %pri.i.i, align 4
  %add.ptr = getelementptr i8, ptr %16, i32 4228
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #2, !srcloc !13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #2, !srcloc !14
  %and = and i32 %17, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool8.not = icmp eq i32 %and, 0
  br i1 %tobool8.not, label %if.then9, label %if.then6.if.end11_crit_edge

if.then6.if.end11_crit_edge:                      ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end11

if.then9:                                         ; preds = %if.then6
  %18 = ptrtoint ptr %card_type.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %card_type.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 79, i32 %19)
  %cmp.i.i49 = icmp ugt i32 %19, 79
  %20 = ptrtoint ptr %pri.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %pri.i.i, align 4
  br i1 %cmp.i.i49, label %if.then.i.i52, label %if.else.i.i54

if.then.i.i52:                                    ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #4
  %add.ptr.i.i51 = getelementptr i8, ptr %21, i32 6296532
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #2, !srcloc !11
  tail call void @arm_heavy_mb() #2
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i51, i8 31) #2, !srcloc !12
  br label %nvkm_wrport.exit.i57

if.else.i.i54:                                    ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #4
  %add.ptr28.i.i53 = getelementptr i8, ptr %21, i32 6304724
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #2, !srcloc !11
  tail call void @arm_heavy_mb() #2
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr28.i.i53, i8 31) #2, !srcloc !12
  br label %nvkm_wrport.exit.i57

nvkm_wrport.exit.i57:                             ; preds = %if.else.i.i54, %if.then.i.i52
  %22 = ptrtoint ptr %card_type.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %card_type.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 79, i32 %23)
  %cmp.i4.i55 = icmp ugt i32 %23, 79
  %24 = ptrtoint ptr %pri.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %pri.i.i, align 4
  br i1 %cmp.i4.i55, label %if.then.i7.i59, label %if.else.i8.i61

if.then.i7.i59:                                   ; preds = %nvkm_wrport.exit.i57
  call void @__sanitizer_cov_trace_pc() #4
  %add.ptr.i6.i58 = getelementptr i8, ptr %25, i32 6296533
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #2, !srcloc !11
  tail call void @arm_heavy_mb() #2
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i6.i58, i8 %conv) #2, !srcloc !12
  br label %if.end11

if.else.i8.i61:                                   ; preds = %nvkm_wrport.exit.i57
  call void @__sanitizer_cov_trace_pc() #4
  %add.ptr28.i13.i60 = getelementptr i8, ptr %25, i32 6304725
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #2, !srcloc !11
  tail call void @arm_heavy_mb() #2
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr28.i13.i60, i8 %conv) #2, !srcloc !12
  br label %if.end11

if.end11:                                         ; preds = %if.else.i8.i61, %if.then.i7.i59, %if.then6.if.end11_crit_edge, %if.end.if.end11_crit_edge
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.not = icmp eq i8 %4, 0
  ret i1 %tobool.not
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i8 @nvkm_rdvgaowner(ptr nocapture noundef readonly %device) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %card_type = getelementptr inbounds %struct.nvkm_device, ptr %device, i32 0, i32 15
  %0 = ptrtoint ptr %card_type to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %card_type, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 80, i32 %1)
  %cmp = icmp ult i32 %1, 80
  br i1 %cmp, label %if.then, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %return

if.then:                                          ; preds = %entry
  %chipset = getelementptr inbounds %struct.nvkm_device, ptr %device, i32 0, i32 16
  %2 = ptrtoint ptr %chipset to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %chipset, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 17, i32 %3)
  %cmp1 = icmp eq i32 %3, 17
  %pri = getelementptr inbounds %struct.nvkm_device, ptr %device, i32 0, i32 11
  %4 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pri, align 4
  br i1 %cmp1, label %if.then2, label %nvkm_wrport.exit.i110

if.then2:                                         ; preds = %if.then
  %add.ptr = getelementptr i8, ptr %5, i32 4228
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #2, !srcloc !13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #2, !srcloc !15
  %and = and i32 %6, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp3 = icmp eq i32 %and, 0
  br i1 %cmp3, label %if.then4, label %if.then2.return_crit_edge

if.then2.return_crit_edge:                        ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #4
  br label %return

if.then4:                                         ; preds = %if.then2
  %7 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %pri, align 4
  %add.ptr.i.i = getelementptr i8, ptr %8, i32 6296532
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #2
  tail call void @arm_heavy_mb() #2
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i, i8 40) #2
  %9 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %pri, align 4
  %add.ptr.i6.i = getelementptr i8, ptr %10, i32 6296533
  %11 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i6.i) #2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #2
  %12 = and i8 %11, -128
  %13 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %pri, align 4
  %add.ptr.i.i56 = getelementptr i8, ptr %14, i32 6296532
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #2
  tail call void @arm_heavy_mb() #2
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i56, i8 51) #2
  %15 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %pri, align 4
  %add.ptr.i6.i63 = getelementptr i8, ptr %16, i32 6296533
  %17 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i6.i63) #2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #2
  %18 = ptrtoint ptr %card_type to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %card_type, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 79, i32 %19)
  %cmp.i.i70 = icmp ugt i32 %19, 79
  %20 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %pri, align 4
  br i1 %cmp.i.i70, label %if.then.i.i73, label %if.else.i.i75

if.then.i.i73:                                    ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #4
  %add.ptr.i.i72 = getelementptr i8, ptr %21, i32 6296532
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #2, !srcloc !11
  tail call void @arm_heavy_mb() #2
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i72, i8 40) #2, !srcloc !12
  br label %nvkm_wrport.exit.i78

if.else.i.i75:                                    ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #4
  %add.ptr28.i.i74 = getelementptr i8, ptr %21, i32 6304724
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #2, !srcloc !11
  tail call void @arm_heavy_mb() #2
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr28.i.i74, i8 40) #2, !srcloc !12
  br label %nvkm_wrport.exit.i78

nvkm_wrport.exit.i78:                             ; preds = %if.else.i.i75, %if.then.i.i73
  %22 = ptrtoint ptr %card_type to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %card_type, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 79, i32 %23)
  %cmp.i4.i76 = icmp ugt i32 %23, 79
  %24 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %pri, align 4
  br i1 %cmp.i4.i76, label %if.then.i7.i80, label %if.end.i.i82

if.then.i7.i80:                                   ; preds = %nvkm_wrport.exit.i78
  call void @__sanitizer_cov_trace_pc() #4
  %add.ptr.i6.i79 = getelementptr i8, ptr %25, i32 6296533
  %26 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i6.i79) #2, !srcloc !9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #2, !srcloc !10
  br label %nvkm_rdvgac.exit84

if.end.i.i82:                                     ; preds = %nvkm_wrport.exit.i78
  call void @__sanitizer_cov_trace_pc() #4
  %add.ptr28.i12.i81 = getelementptr i8, ptr %25, i32 6304725
  %27 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr28.i12.i81) #2, !srcloc !9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #2, !srcloc !10
  br label %nvkm_rdvgac.exit84

nvkm_rdvgac.exit84:                               ; preds = %if.end.i.i82, %if.then.i7.i80
  %retval.0.i.i83 = phi i8 [ %26, %if.then.i7.i80 ], [ %27, %if.end.i.i82 ]
  %28 = and i8 %retval.0.i.i83, -128
  %29 = ptrtoint ptr %card_type to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %card_type, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 79, i32 %30)
  %cmp.i.i86 = icmp ugt i32 %30, 79
  %31 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %pri, align 4
  br i1 %cmp.i.i86, label %if.then.i.i89, label %if.else.i.i91

if.then.i.i89:                                    ; preds = %nvkm_rdvgac.exit84
  call void @__sanitizer_cov_trace_pc() #4
  %add.ptr.i.i88 = getelementptr i8, ptr %32, i32 6296532
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #2, !srcloc !11
  tail call void @arm_heavy_mb() #2
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i88, i8 51) #2, !srcloc !12
  br label %nvkm_wrport.exit.i94

if.else.i.i91:                                    ; preds = %nvkm_rdvgac.exit84
  call void @__sanitizer_cov_trace_pc() #4
  %add.ptr28.i.i90 = getelementptr i8, ptr %32, i32 6304724
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #2, !srcloc !11
  tail call void @arm_heavy_mb() #2
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr28.i.i90, i8 51) #2, !srcloc !12
  br label %nvkm_wrport.exit.i94

nvkm_wrport.exit.i94:                             ; preds = %if.else.i.i91, %if.then.i.i89
  %33 = ptrtoint ptr %card_type to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %card_type, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 79, i32 %34)
  %cmp.i4.i92 = icmp ugt i32 %34, 79
  %35 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %pri, align 4
  br i1 %cmp.i4.i92, label %if.then.i7.i96, label %if.end.i.i98

if.then.i7.i96:                                   ; preds = %nvkm_wrport.exit.i94
  call void @__sanitizer_cov_trace_pc() #4
  %add.ptr.i6.i95 = getelementptr i8, ptr %36, i32 6296533
  %37 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i6.i95) #2, !srcloc !9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #2, !srcloc !10
  br label %nvkm_rdvgac.exit100

if.end.i.i98:                                     ; preds = %nvkm_wrport.exit.i94
  call void @__sanitizer_cov_trace_pc() #4
  %add.ptr28.i12.i97 = getelementptr i8, ptr %36, i32 6304725
  %38 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr28.i12.i97) #2, !srcloc !9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #2, !srcloc !10
  br label %nvkm_rdvgac.exit100

nvkm_rdvgac.exit100:                              ; preds = %if.end.i.i98, %if.then.i7.i96
  %retval.0.i.i99 = phi i8 [ %37, %if.then.i7.i96 ], [ %38, %if.end.i.i98 ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool.not = icmp ne i8 %12, 0
  %39 = and i8 %17, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %39)
  %tobool21.not = icmp eq i8 %39, 0
  %or.cond = select i1 %tobool.not, i1 %tobool21.not, i1 false
  br i1 %or.cond, label %nvkm_rdvgac.exit100.return_crit_edge, label %if.end

nvkm_rdvgac.exit100.return_crit_edge:             ; preds = %nvkm_rdvgac.exit100
  call void @__sanitizer_cov_trace_pc() #4
  br label %return

if.end:                                           ; preds = %nvkm_rdvgac.exit100
  %40 = and i8 %retval.0.i.i99, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %28)
  %tobool24.not = icmp ne i8 %28, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %40)
  %tobool26.not = icmp eq i8 %40, 0
  %or.cond52 = select i1 %tobool24.not, i1 %tobool26.not, i1 false
  br i1 %or.cond52, label %if.end.return_crit_edge, label %if.end28

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #4
  br label %return

if.end28:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool29.not = icmp eq i8 %12, 0
  br i1 %tobool29.not, label %if.end31, label %if.end28.return_crit_edge

if.end28.return_crit_edge:                        ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #4
  br label %return

if.end31:                                         ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %28)
  %tobool32.not = icmp eq i8 %28, 0
  %. = select i1 %tobool32.not, i8 0, i8 3
  br label %return

nvkm_wrport.exit.i110:                            ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #4
  %add.ptr28.i.i106 = getelementptr i8, ptr %5, i32 6296532
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #2, !srcloc !11
  tail call void @arm_heavy_mb() #2
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr28.i.i106, i8 68) #2, !srcloc !12
  %41 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %pri, align 4
  %add.ptr.i6.i111 = getelementptr i8, ptr %42, i32 6296533
  %43 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i6.i111) #2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #2
  br label %return

return:                                           ; preds = %nvkm_wrport.exit.i110, %if.end31, %if.end28.return_crit_edge, %if.end.return_crit_edge, %nvkm_rdvgac.exit100.return_crit_edge, %if.then2.return_crit_edge, %entry.return_crit_edge
  %retval.2 = phi i8 [ 0, %nvkm_rdvgac.exit100.return_crit_edge ], [ 3, %if.end.return_crit_edge ], [ 0, %if.end28.return_crit_edge ], [ %., %if.end31 ], [ 4, %if.then2.return_crit_edge ], [ 0, %entry.return_crit_edge ], [ %43, %nvkm_wrport.exit.i110 ]
  ret i8 %retval.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nvkm_wrvgaowner(ptr nocapture noundef readonly %device, i8 noundef zeroext %select) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %card_type = getelementptr inbounds %struct.nvkm_device, ptr %device, i32 0, i32 15
  %0 = ptrtoint ptr %card_type to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %card_type, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 80, i32 %1)
  %cmp = icmp ult i32 %1, 80
  br i1 %cmp, label %if.then, label %entry.if.end14_crit_edge

entry.if.end14_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end14

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %select)
  %cmp1 = icmp eq i8 %select, 1
  %spec.select = select i1 %cmp1, i8 3, i8 %select
  %chipset = getelementptr inbounds %struct.nvkm_device, ptr %device, i32 0, i32 16
  %2 = ptrtoint ptr %chipset to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %chipset, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 17, i32 %3)
  %cmp5 = icmp eq i32 %3, 17
  br i1 %cmp5, label %nvkm_wrport.exit.i, label %if.then.if.end_crit_edge

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end

nvkm_wrport.exit.i:                               ; preds = %if.then
  %pri.i.i = getelementptr inbounds %struct.nvkm_device, ptr %device, i32 0, i32 11
  %4 = ptrtoint ptr %pri.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pri.i.i, align 4
  %add.ptr28.i.i = getelementptr i8, ptr %5, i32 6296532
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #2, !srcloc !11
  tail call void @arm_heavy_mb() #2
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr28.i.i, i8 31) #2, !srcloc !12
  %6 = ptrtoint ptr %pri.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pri.i.i, align 4
  %add.ptr.i6.i = getelementptr i8, ptr %7, i32 6296533
  %8 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i6.i) #2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #2
  %9 = ptrtoint ptr %card_type to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %card_type, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 79, i32 %10)
  %cmp.i.i26 = icmp ugt i32 %10, 79
  %11 = ptrtoint ptr %pri.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %pri.i.i, align 4
  br i1 %cmp.i.i26, label %if.then.i.i29, label %if.else.i.i31

if.then.i.i29:                                    ; preds = %nvkm_wrport.exit.i
  call void @__sanitizer_cov_trace_pc() #4
  %add.ptr.i.i28 = getelementptr i8, ptr %12, i32 6296532
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #2, !srcloc !11
  tail call void @arm_heavy_mb() #2
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i28, i8 31) #2, !srcloc !12
  br label %nvkm_wrport.exit.i34

if.else.i.i31:                                    ; preds = %nvkm_wrport.exit.i
  call void @__sanitizer_cov_trace_pc() #4
  %add.ptr28.i.i30 = getelementptr i8, ptr %12, i32 6304724
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #2, !srcloc !11
  tail call void @arm_heavy_mb() #2
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr28.i.i30, i8 31) #2, !srcloc !12
  br label %nvkm_wrport.exit.i34

nvkm_wrport.exit.i34:                             ; preds = %if.else.i.i31, %if.then.i.i29
  %13 = ptrtoint ptr %card_type to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %card_type, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 79, i32 %14)
  %cmp.i4.i32 = icmp ugt i32 %14, 79
  %15 = ptrtoint ptr %pri.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %pri.i.i, align 4
  br i1 %cmp.i4.i32, label %if.then.i7.i36, label %if.end.i.i38

if.then.i7.i36:                                   ; preds = %nvkm_wrport.exit.i34
  call void @__sanitizer_cov_trace_pc() #4
  %add.ptr.i6.i35 = getelementptr i8, ptr %16, i32 6296533
  %17 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i6.i35) #2, !srcloc !9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #2, !srcloc !10
  br label %if.end

if.end.i.i38:                                     ; preds = %nvkm_wrport.exit.i34
  call void @__sanitizer_cov_trace_pc() #4
  %add.ptr28.i12.i37 = getelementptr i8, ptr %16, i32 6304725
  %18 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr28.i12.i37) #2, !srcloc !9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #2, !srcloc !10
  br label %if.end

if.end:                                           ; preds = %if.end.i.i38, %if.then.i7.i36, %if.then.if.end_crit_edge
  %pri.i.i43 = getelementptr inbounds %struct.nvkm_device, ptr %device, i32 0, i32 11
  %19 = ptrtoint ptr %pri.i.i43 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %pri.i.i43, align 4
  %add.ptr.i.i44 = getelementptr i8, ptr %20, i32 6296532
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #2
  tail call void @arm_heavy_mb() #2
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i44, i8 68) #2
  %21 = ptrtoint ptr %pri.i.i43 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %pri.i.i43, align 4
  %add.ptr.i6.i51 = getelementptr i8, ptr %22, i32 6296533
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #2
  tail call void @arm_heavy_mb() #2
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i6.i51, i8 %spec.select) #2
  %23 = ptrtoint ptr %chipset to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %chipset, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 17, i32 %24)
  %cmp10 = icmp eq i32 %24, 17
  br i1 %cmp10, label %if.then12, label %if.end.if.end14_crit_edge

if.end.if.end14_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end14

if.then12:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #4
  %25 = ptrtoint ptr %pri.i.i43 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %pri.i.i43, align 4
  %add.ptr.i.i56 = getelementptr i8, ptr %26, i32 6296532
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #2
  tail call void @arm_heavy_mb() #2
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i56, i8 46) #2
  %27 = ptrtoint ptr %pri.i.i43 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %pri.i.i43, align 4
  %add.ptr.i6.i63 = getelementptr i8, ptr %28, i32 6296533
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #2
  tail call void @arm_heavy_mb() #2
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i6.i63, i8 %spec.select) #2
  %29 = ptrtoint ptr %pri.i.i43 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %pri.i.i43, align 4
  %add.ptr.i.i71 = getelementptr i8, ptr %30, i32 6296532
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #2
  tail call void @arm_heavy_mb() #2
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i71, i8 46) #2
  %31 = ptrtoint ptr %pri.i.i43 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %pri.i.i43, align 4
  %add.ptr.i6.i78 = getelementptr i8, ptr %32, i32 6296533
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #2
  tail call void @arm_heavy_mb() #2
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i6.i78, i8 %spec.select) #2
  br label %if.end14

if.end14:                                         ; preds = %if.then12, %if.end.if.end14_crit_edge, %entry.if.end14_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #2

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #3 {
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind }
attributes #3 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #4 = { nomerge }

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
!9 = !{i64 5387251}
!10 = !{i64 2152926596}
!11 = !{i64 2152928201}
!12 = !{i64 5386856}
!13 = !{i64 5387471}
!14 = !{i64 2156223462}
!15 = !{i64 2156223847}
