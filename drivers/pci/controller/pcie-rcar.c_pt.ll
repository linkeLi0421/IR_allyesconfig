; ModuleID = '/llk/IR_all_yes/drivers/pci/controller/pcie-rcar.c_pt.bc'
source_filename = "../drivers/pci/controller/pcie-rcar.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.rcar_pcie = type { ptr, ptr }
%struct.resource_entry = type { %struct.list_head, ptr, i32, %struct.resource }
%struct.list_head = type { ptr, ptr }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }

@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@llvm.used = appending global [1 x ptr] [ptr @asan.module_ctor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rcar_pci_write_reg(ptr nocapture noundef readonly %pcie, i32 noundef %val, i32 noundef %reg) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !9
  tail call void @arm_heavy_mb() #3
  %0 = tail call i32 @llvm.bswap.i32(i32 %val)
  %base = getelementptr inbounds %struct.rcar_pcie, ptr %pcie, i32 0, i32 1
  %1 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %base, align 4
  %add.ptr = getelementptr i8, ptr %2, i32 %reg
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %0) #3, !srcloc !10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rcar_pci_read_reg(ptr nocapture noundef readonly %pcie, i32 noundef %reg) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %base = getelementptr inbounds %struct.rcar_pcie, ptr %pcie, i32 0, i32 1
  %0 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 %reg
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #3, !srcloc !11
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !12
  ret i32 %3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rcar_rmw32(ptr nocapture noundef readonly %pcie, i32 noundef %where, i32 noundef %mask, i32 noundef %data) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %and = shl i32 %where, 3
  %mul = and i32 %and, 24
  %and1 = and i32 %where, -4
  %base.i = getelementptr inbounds %struct.rcar_pcie, ptr %pcie, i32 0, i32 1
  %0 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 %and1
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #3, !srcloc !11
  %3 = tail call i32 @llvm.bswap.i32(i32 %2) #3
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !12
  %shl = shl i32 %mask, %mul
  %neg = xor i32 %shl, -1
  %and2 = and i32 %3, %neg
  %shl3 = shl i32 %data, %mul
  %or = or i32 %and2, %shl3
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !9
  tail call void @arm_heavy_mb() #3
  %4 = tail call i32 @llvm.bswap.i32(i32 %or) #3
  %5 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %base.i, align 4
  %add.ptr.i12 = getelementptr i8, ptr %6, i32 %and1
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i12, i32 %4) #3, !srcloc !10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rcar_pcie_wait_for_phyrdy(ptr nocapture noundef readonly %pcie) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %base.i = getelementptr inbounds %struct.rcar_pcie, ptr %pcie, i32 0, i32 1
  %0 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 2032
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #3, !srcloc !11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !12
  %3 = and i32 %2, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool1.not = icmp eq i32 %3, 0
  br i1 %tobool1.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call void @msleep(i32 noundef 5) #3
  %4 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %base.i, align 4
  %add.ptr.i.1 = getelementptr i8, ptr %5, i32 2032
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.1) #3, !srcloc !11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !12
  %7 = and i32 %6, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool1.not.1 = icmp eq i32 %7, 0
  br i1 %tobool1.not.1, label %if.end.1, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end.1:                                         ; preds = %if.end
  tail call void @msleep(i32 noundef 5) #3
  %8 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %base.i, align 4
  %add.ptr.i.2 = getelementptr i8, ptr %9, i32 2032
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.2) #3, !srcloc !11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !12
  %11 = and i32 %10, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool1.not.2 = icmp eq i32 %11, 0
  br i1 %tobool1.not.2, label %if.end.2, label %if.end.1.cleanup_crit_edge

if.end.1.cleanup_crit_edge:                       ; preds = %if.end.1
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end.2:                                         ; preds = %if.end.1
  tail call void @msleep(i32 noundef 5) #3
  %12 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %base.i, align 4
  %add.ptr.i.3 = getelementptr i8, ptr %13, i32 2032
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.3) #3, !srcloc !11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !12
  %15 = and i32 %14, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool1.not.3 = icmp eq i32 %15, 0
  br i1 %tobool1.not.3, label %if.end.3, label %if.end.2.cleanup_crit_edge

if.end.2.cleanup_crit_edge:                       ; preds = %if.end.2
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end.3:                                         ; preds = %if.end.2
  tail call void @msleep(i32 noundef 5) #3
  %16 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %base.i, align 4
  %add.ptr.i.4 = getelementptr i8, ptr %17, i32 2032
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.4) #3, !srcloc !11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !12
  %19 = and i32 %18, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool1.not.4 = icmp eq i32 %19, 0
  br i1 %tobool1.not.4, label %if.end.4, label %if.end.3.cleanup_crit_edge

if.end.3.cleanup_crit_edge:                       ; preds = %if.end.3
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end.4:                                         ; preds = %if.end.3
  tail call void @msleep(i32 noundef 5) #3
  %20 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %base.i, align 4
  %add.ptr.i.5 = getelementptr i8, ptr %21, i32 2032
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.5) #3, !srcloc !11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !12
  %23 = and i32 %22, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool1.not.5 = icmp eq i32 %23, 0
  br i1 %tobool1.not.5, label %if.end.5, label %if.end.4.cleanup_crit_edge

if.end.4.cleanup_crit_edge:                       ; preds = %if.end.4
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end.5:                                         ; preds = %if.end.4
  tail call void @msleep(i32 noundef 5) #3
  %24 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %base.i, align 4
  %add.ptr.i.6 = getelementptr i8, ptr %25, i32 2032
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.6) #3, !srcloc !11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !12
  %27 = and i32 %26, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %tobool1.not.6 = icmp eq i32 %27, 0
  br i1 %tobool1.not.6, label %if.end.6, label %if.end.5.cleanup_crit_edge

if.end.5.cleanup_crit_edge:                       ; preds = %if.end.5
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end.6:                                         ; preds = %if.end.5
  tail call void @msleep(i32 noundef 5) #3
  %28 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %base.i, align 4
  %add.ptr.i.7 = getelementptr i8, ptr %29, i32 2032
  %30 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.7) #3, !srcloc !11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !12
  %31 = and i32 %30, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %tobool1.not.7 = icmp eq i32 %31, 0
  br i1 %tobool1.not.7, label %if.end.7, label %if.end.6.cleanup_crit_edge

if.end.6.cleanup_crit_edge:                       ; preds = %if.end.6
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end.7:                                         ; preds = %if.end.6
  tail call void @msleep(i32 noundef 5) #3
  %32 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %base.i, align 4
  %add.ptr.i.8 = getelementptr i8, ptr %33, i32 2032
  %34 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.8) #3, !srcloc !11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !12
  %35 = and i32 %34, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %tobool1.not.8 = icmp eq i32 %35, 0
  br i1 %tobool1.not.8, label %if.end.8, label %if.end.7.cleanup_crit_edge

if.end.7.cleanup_crit_edge:                       ; preds = %if.end.7
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end.8:                                         ; preds = %if.end.7
  tail call void @msleep(i32 noundef 5) #3
  %36 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %base.i, align 4
  %add.ptr.i.9 = getelementptr i8, ptr %37, i32 2032
  %38 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.9) #3, !srcloc !11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !12
  %39 = and i32 %38, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %tobool1.not.9 = icmp eq i32 %39, 0
  br i1 %tobool1.not.9, label %if.end.9, label %if.end.8.cleanup_crit_edge

if.end.8.cleanup_crit_edge:                       ; preds = %if.end.8
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end.9:                                         ; preds = %if.end.8
  call void @__sanitizer_cov_trace_pc() #5
  tail call void @msleep(i32 noundef 5) #3
  br label %cleanup

cleanup:                                          ; preds = %if.end.9, %if.end.8.cleanup_crit_edge, %if.end.7.cleanup_crit_edge, %if.end.6.cleanup_crit_edge, %if.end.5.cleanup_crit_edge, %if.end.4.cleanup_crit_edge, %if.end.3.cleanup_crit_edge, %if.end.2.cleanup_crit_edge, %if.end.1.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ 0, %if.end.1.cleanup_crit_edge ], [ 0, %if.end.2.cleanup_crit_edge ], [ 0, %if.end.3.cleanup_crit_edge ], [ 0, %if.end.4.cleanup_crit_edge ], [ 0, %if.end.5.cleanup_crit_edge ], [ 0, %if.end.6.cleanup_crit_edge ], [ 0, %if.end.7.cleanup_crit_edge ], [ 0, %if.end.8.cleanup_crit_edge ], [ -110, %if.end.9 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rcar_pcie_wait_for_dl(ptr nocapture noundef readonly %pcie) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %base.i = getelementptr inbounds %struct.rcar_pcie, ptr %pcie, i32 0, i32 1
  br label %while.body

while.body:                                       ; preds = %if.end.while.body_crit_edge, %entry
  %dec8 = phi i32 [ 9999, %entry ], [ %dec, %if.end.while.body_crit_edge ]
  %0 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 8196
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #3, !srcloc !11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !12
  %3 = and i32 %2, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool1.not = icmp eq i32 %3, 0
  br i1 %tobool1.not, label %if.end, label %while.body.cleanup_crit_edge

while.body.cleanup_crit_edge:                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end:                                           ; preds = %while.body
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %4 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %4(i32 noundef 1073740) #3
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #3, !srcloc !13
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #3, !srcloc !14
  %dec = add nsw i32 %dec8, -1
  %tobool.not = icmp eq i32 %dec8, 0
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end.while.body_crit_edge

if.end.while.body_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %while.body

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

cleanup:                                          ; preds = %if.end.cleanup_crit_edge, %while.body.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %while.body.cleanup_crit_edge ], [ -110, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rcar_pcie_set_outbound(ptr nocapture noundef readonly %pcie, i32 noundef %win, ptr nocapture noundef readonly %window) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %res1 = getelementptr inbounds %struct.resource_entry, ptr %window, i32 0, i32 1
  %0 = ptrtoint ptr %res1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %res1, align 4
  %mul = shl i32 %win, 5
  %add = add i32 %mul, 13324
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !9
  tail call void @arm_heavy_mb() #3
  %base.i = getelementptr inbounds %struct.rcar_pcie, ptr %pcie, i32 0, i32 1
  %2 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %3, i32 %add
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 0) #3, !srcloc !10
  %end.i = getelementptr inbounds %struct.resource, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %end.i, align 4
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %1, align 4
  %sub.i = add i32 %5, 1
  %add.i = sub i32 %sub.i, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %add.i)
  %cmp = icmp ugt i32 %add.i, 128
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %sub = add i32 %add.i, -1
  %8 = tail call i32 @llvm.ctlz.i32(i32 %sub, i1 false) #3, !range !15
  %sub.i.i.i.pn = sub nuw nsw i32 32, %8
  %cond22 = shl nuw i32 1, %sub.i.i.i.pn
  %9 = add i32 %cond22, -128
  %phi.bo = and i32 %9, -128
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %mask.0 = phi i32 [ %phi.bo, %if.then ], [ 0, %entry.if.end_crit_edge ]
  %add26 = add i32 %mul, 13320
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !9
  tail call void @arm_heavy_mb() #3
  %10 = tail call i32 @llvm.bswap.i32(i32 %mask.0) #3
  %11 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %base.i, align 4
  %add.ptr.i77 = getelementptr i8, ptr %12, i32 %add26
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i77, i32 %10) #3, !srcloc !10
  %flags = getelementptr inbounds %struct.resource, ptr %1, i32 0, i32 3
  %13 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %flags, align 4
  %and = and i32 %14, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %15 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %1, align 4
  br i1 %tobool.not, label %if.end.if.end34_crit_edge, label %if.then27

if.end.if.end34_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end34

if.then27:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  %call28 = tail call i32 @pci_pio_to_address(i32 noundef %16) #3
  br label %if.end34

if.end34:                                         ; preds = %if.then27, %if.end.if.end34_crit_edge
  %.sink = phi i32 [ %call28, %if.then27 ], [ %16, %if.end.if.end34_crit_edge ]
  %offset32 = getelementptr inbounds %struct.resource_entry, ptr %window, i32 0, i32 2
  %17 = ptrtoint ptr %offset32 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %offset32, align 4
  %sub33 = sub i32 %.sink, %18
  %add37 = add i32 %mul, 13316
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !9
  tail call void @arm_heavy_mb() #3
  %19 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %base.i, align 4
  %add.ptr.i79 = getelementptr i8, ptr %20, i32 %add37
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i79, i32 0) #3, !srcloc !10
  %and39 = and i32 %sub33, -128
  %add41 = add i32 %mul, 13312
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !9
  tail call void @arm_heavy_mb() #3
  %21 = tail call i32 @llvm.bswap.i32(i32 %and39) #3
  %22 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %base.i, align 4
  %add.ptr.i81 = getelementptr i8, ptr %23, i32 %add41
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i81, i32 %21) #3, !srcloc !10
  %24 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %flags, align 4
  %and43 = and i32 %25, 256
  %26 = or i32 %and43, -2147483648
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !9
  tail call void @arm_heavy_mb() #3
  %27 = tail call i32 @llvm.bswap.i32(i32 %26) #3
  %28 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %base.i, align 4
  %add.ptr.i83 = getelementptr i8, ptr %29, i32 %add
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i83, i32 %27) #3, !srcloc !10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_pio_to_address(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rcar_pcie_set_inbound(ptr nocapture noundef readonly %pcie, i64 noundef %cpu_addr, i64 noundef %pci_addr, i64 noundef %flags, i32 noundef %idx, i1 noundef zeroext %host) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  br i1 %host, label %if.then, label %if.end15.critedge

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %conv = trunc i64 %pci_addr to i32
  %mul = shl i32 %idx, 2
  %add = add i32 %mul, 8320
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !9
  tail call void @arm_heavy_mb() #3
  %0 = tail call i32 @llvm.bswap.i32(i32 %conv) #3
  %base.i = getelementptr inbounds %struct.rcar_pcie, ptr %pcie, i32 0, i32 1
  %1 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %2, i32 %add
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %0) #3, !srcloc !10
  %conv2.c = trunc i64 %cpu_addr to i32
  %mul3.c = shl i32 %idx, 5
  %add4.c = add i32 %mul3.c, 8704
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !9
  tail call void @arm_heavy_mb() #3
  %3 = tail call i32 @llvm.bswap.i32(i32 %conv2.c) #3
  %4 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %base.i, align 4
  %add.ptr.i44 = getelementptr i8, ptr %5, i32 %add4.c
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i44, i32 %3) #3, !srcloc !10
  %conv5.c = trunc i64 %flags to i32
  %add7.c = add i32 %mul3.c, 8712
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !9
  tail call void @arm_heavy_mb() #3
  %6 = tail call i32 @llvm.bswap.i32(i32 %conv5.c) #3
  %7 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %base.i, align 4
  %add.ptr.i46 = getelementptr i8, ptr %8, i32 %add7.c
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i46, i32 %6) #3, !srcloc !10
  %shr = lshr i64 %pci_addr, 32
  %conv11 = trunc i64 %shr to i32
  %add14 = add i32 %mul, 8324
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !9
  tail call void @arm_heavy_mb() #3
  %9 = tail call i32 @llvm.bswap.i32(i32 %conv11) #3
  %10 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %base.i, align 4
  %add.ptr.i48 = getelementptr i8, ptr %11, i32 %add14
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i48, i32 %9) #3, !srcloc !10
  br label %if.end15

if.end15.critedge:                                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %conv2.c38 = trunc i64 %cpu_addr to i32
  %mul3.c39 = shl i32 %idx, 5
  %add4.c40 = add i32 %mul3.c39, 8704
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !9
  tail call void @arm_heavy_mb() #3
  %12 = tail call i32 @llvm.bswap.i32(i32 %conv2.c38) #3
  %base.i49 = getelementptr inbounds %struct.rcar_pcie, ptr %pcie, i32 0, i32 1
  %13 = ptrtoint ptr %base.i49 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %base.i49, align 4
  %add.ptr.i50 = getelementptr i8, ptr %14, i32 %add4.c40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i50, i32 %12) #3, !srcloc !10
  %conv5.c41 = trunc i64 %flags to i32
  %add7.c42 = add i32 %mul3.c39, 8712
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !9
  tail call void @arm_heavy_mb() #3
  %15 = tail call i32 @llvm.bswap.i32(i32 %conv5.c41) #3
  %16 = ptrtoint ptr %base.i49 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %base.i49, align 4
  %add.ptr.i52 = getelementptr i8, ptr %17, i32 %add7.c42
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i52, i32 %15) #3, !srcloc !10
  br label %if.end15

if.end15:                                         ; preds = %if.end15.critedge, %if.then
  %add19.pre-phi = phi i32 [ %mul3.c39, %if.end15.critedge ], [ %mul3.c, %if.then ]
  %shr16 = lshr i64 %cpu_addr, 32
  %conv18 = trunc i64 %shr16 to i32
  %add21 = add i32 %add19.pre-phi, 8736
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !9
  tail call void @arm_heavy_mb() #3
  %18 = tail call i32 @llvm.bswap.i32(i32 %conv18) #3
  %base.i53 = getelementptr inbounds %struct.rcar_pcie, ptr %pcie, i32 0, i32 1
  %19 = ptrtoint ptr %base.i53 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %base.i53, align 4
  %add.ptr.i54 = getelementptr i8, ptr %20, i32 %add21
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i54, i32 %18) #3, !srcloc !10
  %add24 = add i32 %add19.pre-phi, 8744
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !9
  tail call void @arm_heavy_mb() #3
  %21 = ptrtoint ptr %base.i53 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %base.i53, align 4
  %add.ptr.i56 = getelementptr i8, ptr %22, i32 %add24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i56, i32 0) #3, !srcloc !10
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #4 {
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
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
!9 = !{i64 2154427885}
!10 = !{i64 4988609}
!11 = !{i64 4989027}
!12 = !{i64 2154428541}
!13 = !{i64 2154429539}
!14 = !{i64 2154429381}
!15 = !{i32 0, i32 33}
