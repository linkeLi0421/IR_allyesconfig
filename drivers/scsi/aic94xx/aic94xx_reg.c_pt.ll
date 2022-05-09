; ModuleID = '/llk/IR_all_yes/drivers/scsi/aic94xx/aic94xx_reg.c_pt.bc'
source_filename = "../drivers/scsi/aic94xx/aic94xx_reg.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.asd_ha_struct = type { ptr, ptr, %struct.sas_ha_struct, i8, i32, %struct.spinlock, [2 x %struct.asd_ha_addrspace], %struct.hw_profile, [8 x %struct.asd_phy], %struct.spinlock, [8 x %struct.asd_port], [8 x %struct.asd_sas_port], ptr, %struct.asd_seq_data, i32, ptr }
%struct.sas_ha_struct = type { %struct.list_head, %struct.mutex, i32, %struct.spinlock, i32, %struct.wait_queue_head, %struct.list_head, %struct.mutex, %struct.scsi_core, ptr, ptr, ptr, ptr, ptr, ptr, [3 x i8], %struct.spinlock, ptr, ptr, i32, i32, ptr, %struct.list_head, %struct.list_head, i32 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.scsi_core = type { ptr }
%struct.list_head = type { ptr, ptr }
%struct.asd_ha_addrspace = type { ptr, i32, i32, i32, i32, i32, i32 }
%struct.hw_profile = type { %struct.bios_struct, %struct.unit_element_struct, %struct.flash_struct, [8 x i8], [13 x i8], i8, [8 x %struct.asd_phy_desc], i32, ptr, i32, ptr, %struct.spinlock, ptr, i32, i32, i32, i32, i32, i32 }
%struct.bios_struct = type { i32, i8, i8, i32 }
%struct.unit_element_struct = type { i16, i16, ptr }
%struct.flash_struct = type { i32, i32, i32, i8, i8, i8, i8, i32 }
%struct.asd_phy_desc = type { [8 x i8], i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.asd_phy = type { %struct.asd_sas_phy, ptr, ptr, ptr, ptr, [1068 x i8] }
%struct.asd_sas_phy = type { %struct.atomic_t, i32, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, [8 x i8], %struct.spinlock, ptr, i32, %struct.spinlock, i32, %struct.list_head, ptr, ptr, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.asd_port = type { [8 x i8], [8 x i8], i32, i32 }
%struct.asd_sas_port = type { %struct.sas_discovery, ptr, %struct.spinlock, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, i32, %struct.sas_work, i32, i32, i32, [8 x i8], [8 x i8], i32, i32, i32, %struct.spinlock, %struct.list_head, i32, i32, ptr, ptr, ptr }
%struct.sas_discovery = type { [4 x %struct.sas_discovery_event], i32, [8 x i8], [8 x i8], [8 x i8], i32 }
%struct.sas_discovery_event = type { %struct.sas_work, ptr }
%struct.sas_work = type { %struct.list_head, %struct.work_struct }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.asd_seq_data = type { %struct.spinlock, i16, i32, %struct.list_head, i32, %struct.asd_dma_tok, %struct.spinlock, ptr, ptr, i32, %struct.tasklet_struct, ptr, ptr, i32, i32, i32, ptr, i32, ptr }
%struct.asd_dma_tok = type { ptr, i32, i32 }
%struct.tasklet_struct = type { ptr, i32, %struct.atomic_t, i8, %union.anon.94, i32 }
%union.anon.94 = type { ptr }

@MBAR0_SWB_SIZE = external dso_local local_unnamed_addr global i32, align 4
@llvm.used = appending global [1 x ptr] [ptr @asan.module_ctor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @asd_write_reg_byte(ptr noundef %asd_ha, i32 noundef %reg, i8 noundef zeroext %val) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = add i32 %reg, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 -536870912, i32 %0)
  %1 = icmp ult i32 %0, -536870912
  br i1 %1, label %do.body4, label %do.body11, !prof !9

do.body4:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/scsi/aic94xx/aic94xx_reg.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 221, 0\0A.popsection", ""() #3, !srcloc !10
  unreachable

do.body11:                                        ; preds = %entry
  %iolock = getelementptr inbounds %struct.asd_ha_struct, ptr %asd_ha, i32 0, i32 5
  %call13 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %iolock) #3
  %swa_base = getelementptr inbounds %struct.asd_ha_struct, ptr %asd_ha, i32 0, i32 6, i32 0, i32 4
  %2 = ptrtoint ptr %swa_base to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %swa_base, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %reg)
  %cmp18.not = icmp ule i32 %3, %reg
  %add = add i32 %3, 88
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %reg)
  %cmp21 = icmp ugt i32 %add, %reg
  %or.cond = and i1 %cmp18.not, %cmp21
  br i1 %or.cond, label %if.then23, label %if.else

if.then23:                                        ; preds = %do.body11
  %sub.i = sub i32 %reg, %3
  %iospace.i.i = getelementptr inbounds %struct.asd_ha_struct, ptr %asd_ha, i32 0, i32 4
  %4 = ptrtoint ptr %iospace.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %iospace.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not.i.i = icmp eq i32 %5, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3
  tail call void @arm_heavy_mb() #3
  %io_handle7.i.i = getelementptr inbounds %struct.asd_ha_struct, ptr %asd_ha, i32 0, i32 6
  %6 = ptrtoint ptr %io_handle7.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %io_handle7.i.i, align 4
  br i1 %tobool.not.i.i, label %do.body5.i.i, label %do.body.i.i, !prof !11

do.body.i.i:                                      ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #5
  %8 = ptrtoint ptr %7 to i32
  %and.i.i = and i32 %sub.i, 255
  %add.i.i = add i32 %and.i.i, %8
  %and3.i.i = and i32 %add.i.i, 1048575
  %add4.i.i = or i32 %and3.i.i, -18874368
  %9 = inttoptr i32 %add4.i.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %9, i8 %val) #3, !srcloc !12
  br label %asd_write_swa_byte.exit

do.body5.i.i:                                     ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #5
  %add.ptr.i.i = getelementptr i8, ptr %7, i32 %sub.i
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i, i8 %val) #3, !srcloc !12
  br label %asd_write_swa_byte.exit

asd_write_swa_byte.exit:                          ; preds = %do.body5.i.i, %do.body.i.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !13
  br label %if.end44

if.else:                                          ; preds = %do.body11
  %swb_base = getelementptr inbounds %struct.asd_ha_struct, ptr %asd_ha, i32 0, i32 6, i32 0, i32 5
  %10 = ptrtoint ptr %swb_base to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %swb_base, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %reg)
  %cmp24.not = icmp ugt i32 %11, %reg
  br i1 %cmp24.not, label %if.else.if.else32_crit_edge, label %land.lhs.true26

if.else.if.else32_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.else32

land.lhs.true26:                                  ; preds = %if.else
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @MBAR0_SWB_SIZE to i32))
  %12 = load i32, ptr @MBAR0_SWB_SIZE, align 4
  %add28 = add i32 %12, %11
  call void @__sanitizer_cov_trace_cmp4(i32 %add28, i32 %reg)
  %cmp29 = icmp ugt i32 %add28, %reg
  br i1 %cmp29, label %if.then31, label %land.lhs.true26.if.else32_crit_edge

land.lhs.true26.if.else32_crit_edge:              ; preds = %land.lhs.true26
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.else32

if.then31:                                        ; preds = %land.lhs.true26
  %sub.i76 = sub i32 %reg, %11
  %add.i = add i32 %sub.i76, 128
  %iospace.i.i77 = getelementptr inbounds %struct.asd_ha_struct, ptr %asd_ha, i32 0, i32 4
  %13 = ptrtoint ptr %iospace.i.i77 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %iospace.i.i77, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool.not.i.i78 = icmp eq i32 %14, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3
  tail call void @arm_heavy_mb() #3
  %io_handle7.i.i79 = getelementptr inbounds %struct.asd_ha_struct, ptr %asd_ha, i32 0, i32 6
  %15 = ptrtoint ptr %io_handle7.i.i79 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %io_handle7.i.i79, align 4
  br i1 %tobool.not.i.i78, label %do.body5.i.i86, label %do.body.i.i84, !prof !11

do.body.i.i84:                                    ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #5
  %17 = ptrtoint ptr %16 to i32
  %and.i.i80 = and i32 %add.i, 255
  %add.i.i81 = add i32 %and.i.i80, %17
  %and3.i.i82 = and i32 %add.i.i81, 1048575
  %add4.i.i83 = or i32 %and3.i.i82, -18874368
  %18 = inttoptr i32 %add4.i.i83 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %18, i8 %val) #3, !srcloc !12
  br label %asd_write_swb_byte.exit

do.body5.i.i86:                                   ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #5
  %add.ptr.i.i85 = getelementptr i8, ptr %16, i32 %add.i
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i85, i8 %val) #3, !srcloc !12
  br label %asd_write_swb_byte.exit

asd_write_swb_byte.exit:                          ; preds = %do.body5.i.i86, %do.body.i.i84
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !13
  br label %if.end44

if.else32:                                        ; preds = %land.lhs.true26.if.else32_crit_edge, %if.else.if.else32_crit_edge
  %swc_base = getelementptr inbounds %struct.asd_ha_struct, ptr %asd_ha, i32 0, i32 6, i32 0, i32 6
  %19 = ptrtoint ptr %swc_base to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %swc_base, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %20, i32 %reg)
  %cmp33.not = icmp ule i32 %20, %reg
  %add37 = add i32 %20, 8
  call void @__sanitizer_cov_trace_cmp4(i32 %add37, i32 %reg)
  %cmp38 = icmp ugt i32 %add37, %reg
  %or.cond75 = and i1 %cmp33.not, %cmp38
  br i1 %or.cond75, label %if.then40, label %if.else41

if.then40:                                        ; preds = %if.else32
  %sub.i87 = sub i32 %reg, %20
  %add.i88 = add i32 %sub.i87, 88
  %iospace.i.i89 = getelementptr inbounds %struct.asd_ha_struct, ptr %asd_ha, i32 0, i32 4
  %21 = ptrtoint ptr %iospace.i.i89 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %iospace.i.i89, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool.not.i.i90 = icmp eq i32 %22, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3
  tail call void @arm_heavy_mb() #3
  %io_handle7.i.i91 = getelementptr inbounds %struct.asd_ha_struct, ptr %asd_ha, i32 0, i32 6
  %23 = ptrtoint ptr %io_handle7.i.i91 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %io_handle7.i.i91, align 4
  br i1 %tobool.not.i.i90, label %do.body5.i.i98, label %do.body.i.i96, !prof !11

do.body.i.i96:                                    ; preds = %if.then40
  call void @__sanitizer_cov_trace_pc() #5
  %25 = ptrtoint ptr %24 to i32
  %and.i.i92 = and i32 %add.i88, 255
  %add.i.i93 = add i32 %and.i.i92, %25
  %and3.i.i94 = and i32 %add.i.i93, 1048575
  %add4.i.i95 = or i32 %and3.i.i94, -18874368
  %26 = inttoptr i32 %add4.i.i95 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %26, i8 %val) #3, !srcloc !12
  br label %asd_write_swc_byte.exit

do.body5.i.i98:                                   ; preds = %if.then40
  call void @__sanitizer_cov_trace_pc() #5
  %add.ptr.i.i97 = getelementptr i8, ptr %24, i32 %add.i88
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i97, i8 %val) #3, !srcloc !12
  br label %asd_write_swc_byte.exit

asd_write_swc_byte.exit:                          ; preds = %do.body5.i.i98, %do.body.i.i96
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !13
  br label %if.end44

if.else41:                                        ; preds = %if.else32
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @MBAR0_SWB_SIZE to i32))
  %27 = load i32, ptr @MBAR0_SWB_SIZE, align 4
  %neg.i = sub i32 0, %27
  %and.i = and i32 %neg.i, %reg
  %28 = ptrtoint ptr %asd_ha to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %asd_ha, align 4
  %call.i = tail call i32 @pci_write_config_dword(ptr noundef %29, i32 noundef 116, i32 noundef %and.i) #3
  %30 = ptrtoint ptr %swb_base to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %and.i, ptr %swb_base, align 4
  %sub.i101 = sub i32 %reg, %and.i
  %add.i102 = add i32 %sub.i101, 128
  %iospace.i.i103 = getelementptr inbounds %struct.asd_ha_struct, ptr %asd_ha, i32 0, i32 4
  %31 = ptrtoint ptr %iospace.i.i103 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %iospace.i.i103, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %tobool.not.i.i104 = icmp eq i32 %32, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3
  tail call void @arm_heavy_mb() #3
  %io_handle7.i.i105 = getelementptr inbounds %struct.asd_ha_struct, ptr %asd_ha, i32 0, i32 6
  %33 = ptrtoint ptr %io_handle7.i.i105 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %io_handle7.i.i105, align 4
  br i1 %tobool.not.i.i104, label %do.body5.i.i112, label %do.body.i.i110, !prof !11

do.body.i.i110:                                   ; preds = %if.else41
  call void @__sanitizer_cov_trace_pc() #5
  %35 = ptrtoint ptr %34 to i32
  %and.i.i106 = and i32 %add.i102, 255
  %add.i.i107 = add i32 %and.i.i106, %35
  %and3.i.i108 = and i32 %add.i.i107, 1048575
  %add4.i.i109 = or i32 %and3.i.i108, -18874368
  %36 = inttoptr i32 %add4.i.i109 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %36, i8 %val) #3, !srcloc !12
  br label %asd_write_swb_byte.exit113

do.body5.i.i112:                                  ; preds = %if.else41
  call void @__sanitizer_cov_trace_pc() #5
  %add.ptr.i.i111 = getelementptr i8, ptr %34, i32 %add.i102
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i111, i8 %val) #3, !srcloc !12
  br label %asd_write_swb_byte.exit113

asd_write_swb_byte.exit113:                       ; preds = %do.body5.i.i112, %do.body.i.i110
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !13
  br label %if.end44

if.end44:                                         ; preds = %asd_write_swb_byte.exit113, %asd_write_swc_byte.exit, %asd_write_swb_byte.exit, %asd_write_swa_byte.exit
  tail call void @arm_heavy_mb() #3
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %iolock, i32 noundef %call13) #3
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @asd_write_reg_word(ptr noundef %asd_ha, i32 noundef %reg, i16 noundef zeroext %val) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = add i32 %reg, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 -536870912, i32 %0)
  %1 = icmp ult i32 %0, -536870912
  br i1 %1, label %do.body4, label %do.body11, !prof !9

do.body4:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/scsi/aic94xx/aic94xx_reg.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 222, 0\0A.popsection", ""() #3, !srcloc !14
  unreachable

do.body11:                                        ; preds = %entry
  %iolock = getelementptr inbounds %struct.asd_ha_struct, ptr %asd_ha, i32 0, i32 5
  %call13 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %iolock) #3
  %swa_base = getelementptr inbounds %struct.asd_ha_struct, ptr %asd_ha, i32 0, i32 6, i32 0, i32 4
  %2 = ptrtoint ptr %swa_base to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %swa_base, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %reg)
  %cmp18.not = icmp ule i32 %3, %reg
  %add = add i32 %3, 88
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %reg)
  %cmp21 = icmp ugt i32 %add, %reg
  %or.cond = and i1 %cmp18.not, %cmp21
  br i1 %or.cond, label %if.then23, label %if.else

if.then23:                                        ; preds = %do.body11
  %sub.i = sub i32 %reg, %3
  %iospace.i.i = getelementptr inbounds %struct.asd_ha_struct, ptr %asd_ha, i32 0, i32 4
  %4 = ptrtoint ptr %iospace.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %iospace.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not.i.i = icmp eq i32 %5, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3
  tail call void @arm_heavy_mb() #3
  %6 = tail call i16 @llvm.bswap.i16(i16 %val) #3
  %io_handle7.i.i = getelementptr inbounds %struct.asd_ha_struct, ptr %asd_ha, i32 0, i32 6
  %7 = ptrtoint ptr %io_handle7.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %io_handle7.i.i, align 4
  br i1 %tobool.not.i.i, label %do.body5.i.i, label %do.body.i.i, !prof !11

do.body.i.i:                                      ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #5
  %9 = ptrtoint ptr %8 to i32
  %and.i.i = and i32 %sub.i, 255
  %add.i.i = add i32 %and.i.i, %9
  %and3.i.i = and i32 %add.i.i, 1048575
  %add4.i.i = or i32 %and3.i.i, -18874368
  %10 = inttoptr i32 %add4.i.i to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %10, i16 %6) #3, !srcloc !15
  br label %asd_write_swa_word.exit

do.body5.i.i:                                     ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #5
  %add.ptr.i.i = getelementptr i8, ptr %8, i32 %sub.i
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i.i, i16 %6) #3, !srcloc !15
  br label %asd_write_swa_word.exit

asd_write_swa_word.exit:                          ; preds = %do.body5.i.i, %do.body.i.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !16
  br label %if.end44

if.else:                                          ; preds = %do.body11
  %swb_base = getelementptr inbounds %struct.asd_ha_struct, ptr %asd_ha, i32 0, i32 6, i32 0, i32 5
  %11 = ptrtoint ptr %swb_base to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %swb_base, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %12, i32 %reg)
  %cmp24.not = icmp ugt i32 %12, %reg
  br i1 %cmp24.not, label %if.else.if.else32_crit_edge, label %land.lhs.true26

if.else.if.else32_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.else32

land.lhs.true26:                                  ; preds = %if.else
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @MBAR0_SWB_SIZE to i32))
  %13 = load i32, ptr @MBAR0_SWB_SIZE, align 4
  %add28 = add i32 %13, %12
  call void @__sanitizer_cov_trace_cmp4(i32 %add28, i32 %reg)
  %cmp29 = icmp ugt i32 %add28, %reg
  br i1 %cmp29, label %if.then31, label %land.lhs.true26.if.else32_crit_edge

land.lhs.true26.if.else32_crit_edge:              ; preds = %land.lhs.true26
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.else32

if.then31:                                        ; preds = %land.lhs.true26
  %sub.i76 = sub i32 %reg, %12
  %add.i = add i32 %sub.i76, 128
  %iospace.i.i77 = getelementptr inbounds %struct.asd_ha_struct, ptr %asd_ha, i32 0, i32 4
  %14 = ptrtoint ptr %iospace.i.i77 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %iospace.i.i77, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool.not.i.i78 = icmp eq i32 %15, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3
  tail call void @arm_heavy_mb() #3
  %16 = tail call i16 @llvm.bswap.i16(i16 %val) #3
  %io_handle7.i.i79 = getelementptr inbounds %struct.asd_ha_struct, ptr %asd_ha, i32 0, i32 6
  %17 = ptrtoint ptr %io_handle7.i.i79 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %io_handle7.i.i79, align 4
  br i1 %tobool.not.i.i78, label %do.body5.i.i86, label %do.body.i.i84, !prof !11

do.body.i.i84:                                    ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #5
  %19 = ptrtoint ptr %18 to i32
  %and.i.i80 = and i32 %add.i, 255
  %add.i.i81 = add i32 %and.i.i80, %19
  %and3.i.i82 = and i32 %add.i.i81, 1048575
  %add4.i.i83 = or i32 %and3.i.i82, -18874368
  %20 = inttoptr i32 %add4.i.i83 to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %20, i16 %16) #3, !srcloc !15
  br label %asd_write_swb_word.exit

do.body5.i.i86:                                   ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #5
  %add.ptr.i.i85 = getelementptr i8, ptr %18, i32 %add.i
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i.i85, i16 %16) #3, !srcloc !15
  br label %asd_write_swb_word.exit

asd_write_swb_word.exit:                          ; preds = %do.body5.i.i86, %do.body.i.i84
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !16
  br label %if.end44

if.else32:                                        ; preds = %land.lhs.true26.if.else32_crit_edge, %if.else.if.else32_crit_edge
  %swc_base = getelementptr inbounds %struct.asd_ha_struct, ptr %asd_ha, i32 0, i32 6, i32 0, i32 6
  %21 = ptrtoint ptr %swc_base to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %swc_base, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %22, i32 %reg)
  %cmp33.not = icmp ule i32 %22, %reg
  %add37 = add i32 %22, 8
  call void @__sanitizer_cov_trace_cmp4(i32 %add37, i32 %reg)
  %cmp38 = icmp ugt i32 %add37, %reg
  %or.cond75 = and i1 %cmp33.not, %cmp38
  br i1 %or.cond75, label %if.then40, label %if.else41

if.then40:                                        ; preds = %if.else32
  %sub.i87 = sub i32 %reg, %22
  %add.i88 = add i32 %sub.i87, 88
  %iospace.i.i89 = getelementptr inbounds %struct.asd_ha_struct, ptr %asd_ha, i32 0, i32 4
  %23 = ptrtoint ptr %iospace.i.i89 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %iospace.i.i89, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool.not.i.i90 = icmp eq i32 %24, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3
  tail call void @arm_heavy_mb() #3
  %25 = tail call i16 @llvm.bswap.i16(i16 %val) #3
  %io_handle7.i.i91 = getelementptr inbounds %struct.asd_ha_struct, ptr %asd_ha, i32 0, i32 6
  %26 = ptrtoint ptr %io_handle7.i.i91 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %io_handle7.i.i91, align 4
  br i1 %tobool.not.i.i90, label %do.body5.i.i98, label %do.body.i.i96, !prof !11

do.body.i.i96:                                    ; preds = %if.then40
  call void @__sanitizer_cov_trace_pc() #5
  %28 = ptrtoint ptr %27 to i32
  %and.i.i92 = and i32 %add.i88, 255
  %add.i.i93 = add i32 %and.i.i92, %28
  %and3.i.i94 = and i32 %add.i.i93, 1048575
  %add4.i.i95 = or i32 %and3.i.i94, -18874368
  %29 = inttoptr i32 %add4.i.i95 to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %29, i16 %25) #3, !srcloc !15
  br label %asd_write_swc_word.exit

do.body5.i.i98:                                   ; preds = %if.then40
  call void @__sanitizer_cov_trace_pc() #5
  %add.ptr.i.i97 = getelementptr i8, ptr %27, i32 %add.i88
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i.i97, i16 %25) #3, !srcloc !15
  br label %asd_write_swc_word.exit

asd_write_swc_word.exit:                          ; preds = %do.body5.i.i98, %do.body.i.i96
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !16
  br label %if.end44

if.else41:                                        ; preds = %if.else32
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @MBAR0_SWB_SIZE to i32))
  %30 = load i32, ptr @MBAR0_SWB_SIZE, align 4
  %neg.i = sub i32 0, %30
  %and.i = and i32 %neg.i, %reg
  %31 = ptrtoint ptr %asd_ha to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %asd_ha, align 4
  %call.i = tail call i32 @pci_write_config_dword(ptr noundef %32, i32 noundef 116, i32 noundef %and.i) #3
  %33 = ptrtoint ptr %swb_base to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %and.i, ptr %swb_base, align 4
  %sub.i101 = sub i32 %reg, %and.i
  %add.i102 = add i32 %sub.i101, 128
  %iospace.i.i103 = getelementptr inbounds %struct.asd_ha_struct, ptr %asd_ha, i32 0, i32 4
  %34 = ptrtoint ptr %iospace.i.i103 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %iospace.i.i103, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %tobool.not.i.i104 = icmp eq i32 %35, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3
  tail call void @arm_heavy_mb() #3
  %36 = tail call i16 @llvm.bswap.i16(i16 %val) #3
  %io_handle7.i.i105 = getelementptr inbounds %struct.asd_ha_struct, ptr %asd_ha, i32 0, i32 6
  %37 = ptrtoint ptr %io_handle7.i.i105 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %io_handle7.i.i105, align 4
  br i1 %tobool.not.i.i104, label %do.body5.i.i112, label %do.body.i.i110, !prof !11

do.body.i.i110:                                   ; preds = %if.else41
  call void @__sanitizer_cov_trace_pc() #5
  %39 = ptrtoint ptr %38 to i32
  %and.i.i106 = and i32 %add.i102, 255
  %add.i.i107 = add i32 %and.i.i106, %39
  %and3.i.i108 = and i32 %add.i.i107, 1048575
  %add4.i.i109 = or i32 %and3.i.i108, -18874368
  %40 = inttoptr i32 %add4.i.i109 to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %40, i16 %36) #3, !srcloc !15
  br label %asd_write_swb_word.exit113

do.body5.i.i112:                                  ; preds = %if.else41
  call void @__sanitizer_cov_trace_pc() #5
  %add.ptr.i.i111 = getelementptr i8, ptr %38, i32 %add.i102
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i.i111, i16 %36) #3, !srcloc !15
  br label %asd_write_swb_word.exit113

asd_write_swb_word.exit113:                       ; preds = %do.body5.i.i112, %do.body.i.i110
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !16
  br label %if.end44

if.end44:                                         ; preds = %asd_write_swb_word.exit113, %asd_write_swc_word.exit, %asd_write_swb_word.exit, %asd_write_swa_word.exit
  tail call void @arm_heavy_mb() #3
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %iolock, i32 noundef %call13) #3
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @asd_write_reg_dword(ptr noundef %asd_ha, i32 noundef %reg, i32 noundef %val) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = add i32 %reg, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 -536870912, i32 %0)
  %1 = icmp ult i32 %0, -536870912
  br i1 %1, label %do.body4, label %do.body11, !prof !9

do.body4:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/scsi/aic94xx/aic94xx_reg.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 223, 0\0A.popsection", ""() #3, !srcloc !17
  unreachable

do.body11:                                        ; preds = %entry
  %iolock = getelementptr inbounds %struct.asd_ha_struct, ptr %asd_ha, i32 0, i32 5
  %call13 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %iolock) #3
  %swa_base = getelementptr inbounds %struct.asd_ha_struct, ptr %asd_ha, i32 0, i32 6, i32 0, i32 4
  %2 = ptrtoint ptr %swa_base to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %swa_base, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %reg)
  %cmp18.not = icmp ule i32 %3, %reg
  %add = add i32 %3, 88
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %reg)
  %cmp21 = icmp ugt i32 %add, %reg
  %or.cond = and i1 %cmp18.not, %cmp21
  br i1 %or.cond, label %if.then23, label %if.else

if.then23:                                        ; preds = %do.body11
  %sub.i = sub i32 %reg, %3
  %iospace.i.i = getelementptr inbounds %struct.asd_ha_struct, ptr %asd_ha, i32 0, i32 4
  %4 = ptrtoint ptr %iospace.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %iospace.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not.i.i = icmp eq i32 %5, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3
  tail call void @arm_heavy_mb() #3
  %6 = tail call i32 @llvm.bswap.i32(i32 %val) #3
  %io_handle7.i.i = getelementptr inbounds %struct.asd_ha_struct, ptr %asd_ha, i32 0, i32 6
  %7 = ptrtoint ptr %io_handle7.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %io_handle7.i.i, align 4
  br i1 %tobool.not.i.i, label %do.body5.i.i, label %do.body.i.i, !prof !11

do.body.i.i:                                      ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #5
  %9 = ptrtoint ptr %8 to i32
  %and.i.i = and i32 %sub.i, 255
  %add.i.i = add i32 %and.i.i, %9
  %and3.i.i = and i32 %add.i.i, 1048575
  %add4.i.i = or i32 %and3.i.i, -18874368
  %10 = inttoptr i32 %add4.i.i to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %10, i32 %6) #3, !srcloc !18
  br label %asd_write_swa_dword.exit

do.body5.i.i:                                     ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #5
  %add.ptr.i.i = getelementptr i8, ptr %8, i32 %sub.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %6) #3, !srcloc !18
  br label %asd_write_swa_dword.exit

asd_write_swa_dword.exit:                         ; preds = %do.body5.i.i, %do.body.i.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !19
  br label %if.end44

if.else:                                          ; preds = %do.body11
  %swb_base = getelementptr inbounds %struct.asd_ha_struct, ptr %asd_ha, i32 0, i32 6, i32 0, i32 5
  %11 = ptrtoint ptr %swb_base to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %swb_base, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %12, i32 %reg)
  %cmp24.not = icmp ugt i32 %12, %reg
  br i1 %cmp24.not, label %if.else.if.else32_crit_edge, label %land.lhs.true26

if.else.if.else32_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.else32

land.lhs.true26:                                  ; preds = %if.else
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @MBAR0_SWB_SIZE to i32))
  %13 = load i32, ptr @MBAR0_SWB_SIZE, align 4
  %add28 = add i32 %13, %12
  call void @__sanitizer_cov_trace_cmp4(i32 %add28, i32 %reg)
  %cmp29 = icmp ugt i32 %add28, %reg
  br i1 %cmp29, label %if.then31, label %land.lhs.true26.if.else32_crit_edge

land.lhs.true26.if.else32_crit_edge:              ; preds = %land.lhs.true26
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.else32

if.then31:                                        ; preds = %land.lhs.true26
  %sub.i76 = sub i32 %reg, %12
  %add.i = add i32 %sub.i76, 128
  %iospace.i.i77 = getelementptr inbounds %struct.asd_ha_struct, ptr %asd_ha, i32 0, i32 4
  %14 = ptrtoint ptr %iospace.i.i77 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %iospace.i.i77, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool.not.i.i78 = icmp eq i32 %15, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3
  tail call void @arm_heavy_mb() #3
  %16 = tail call i32 @llvm.bswap.i32(i32 %val) #3
  %io_handle7.i.i79 = getelementptr inbounds %struct.asd_ha_struct, ptr %asd_ha, i32 0, i32 6
  %17 = ptrtoint ptr %io_handle7.i.i79 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %io_handle7.i.i79, align 4
  br i1 %tobool.not.i.i78, label %do.body5.i.i86, label %do.body.i.i84, !prof !11

do.body.i.i84:                                    ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #5
  %19 = ptrtoint ptr %18 to i32
  %and.i.i80 = and i32 %add.i, 255
  %add.i.i81 = add i32 %and.i.i80, %19
  %and3.i.i82 = and i32 %add.i.i81, 1048575
  %add4.i.i83 = or i32 %and3.i.i82, -18874368
  %20 = inttoptr i32 %add4.i.i83 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %20, i32 %16) #3, !srcloc !18
  br label %asd_write_swb_dword.exit

do.body5.i.i86:                                   ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #5
  %add.ptr.i.i85 = getelementptr i8, ptr %18, i32 %add.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i85, i32 %16) #3, !srcloc !18
  br label %asd_write_swb_dword.exit

asd_write_swb_dword.exit:                         ; preds = %do.body5.i.i86, %do.body.i.i84
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !19
  br label %if.end44

if.else32:                                        ; preds = %land.lhs.true26.if.else32_crit_edge, %if.else.if.else32_crit_edge
  %swc_base = getelementptr inbounds %struct.asd_ha_struct, ptr %asd_ha, i32 0, i32 6, i32 0, i32 6
  %21 = ptrtoint ptr %swc_base to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %swc_base, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %22, i32 %reg)
  %cmp33.not = icmp ule i32 %22, %reg
  %add37 = add i32 %22, 8
  call void @__sanitizer_cov_trace_cmp4(i32 %add37, i32 %reg)
  %cmp38 = icmp ugt i32 %add37, %reg
  %or.cond75 = and i1 %cmp33.not, %cmp38
  br i1 %or.cond75, label %if.then40, label %if.else41

if.then40:                                        ; preds = %if.else32
  %sub.i87 = sub i32 %reg, %22
  %add.i88 = add i32 %sub.i87, 88
  %iospace.i.i89 = getelementptr inbounds %struct.asd_ha_struct, ptr %asd_ha, i32 0, i32 4
  %23 = ptrtoint ptr %iospace.i.i89 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %iospace.i.i89, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool.not.i.i90 = icmp eq i32 %24, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3
  tail call void @arm_heavy_mb() #3
  %25 = tail call i32 @llvm.bswap.i32(i32 %val) #3
  %io_handle7.i.i91 = getelementptr inbounds %struct.asd_ha_struct, ptr %asd_ha, i32 0, i32 6
  %26 = ptrtoint ptr %io_handle7.i.i91 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %io_handle7.i.i91, align 4
  br i1 %tobool.not.i.i90, label %do.body5.i.i98, label %do.body.i.i96, !prof !11

do.body.i.i96:                                    ; preds = %if.then40
  call void @__sanitizer_cov_trace_pc() #5
  %28 = ptrtoint ptr %27 to i32
  %and.i.i92 = and i32 %add.i88, 255
  %add.i.i93 = add i32 %and.i.i92, %28
  %and3.i.i94 = and i32 %add.i.i93, 1048575
  %add4.i.i95 = or i32 %and3.i.i94, -18874368
  %29 = inttoptr i32 %add4.i.i95 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %29, i32 %25) #3, !srcloc !18
  br label %asd_write_swc_dword.exit

do.body5.i.i98:                                   ; preds = %if.then40
  call void @__sanitizer_cov_trace_pc() #5
  %add.ptr.i.i97 = getelementptr i8, ptr %27, i32 %add.i88
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i97, i32 %25) #3, !srcloc !18
  br label %asd_write_swc_dword.exit

asd_write_swc_dword.exit:                         ; preds = %do.body5.i.i98, %do.body.i.i96
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !19
  br label %if.end44

if.else41:                                        ; preds = %if.else32
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @MBAR0_SWB_SIZE to i32))
  %30 = load i32, ptr @MBAR0_SWB_SIZE, align 4
  %neg.i = sub i32 0, %30
  %and.i = and i32 %neg.i, %reg
  %31 = ptrtoint ptr %asd_ha to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %asd_ha, align 4
  %call.i = tail call i32 @pci_write_config_dword(ptr noundef %32, i32 noundef 116, i32 noundef %and.i) #3
  %33 = ptrtoint ptr %swb_base to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %and.i, ptr %swb_base, align 4
  %sub.i101 = sub i32 %reg, %and.i
  %add.i102 = add i32 %sub.i101, 128
  %iospace.i.i103 = getelementptr inbounds %struct.asd_ha_struct, ptr %asd_ha, i32 0, i32 4
  %34 = ptrtoint ptr %iospace.i.i103 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %iospace.i.i103, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %tobool.not.i.i104 = icmp eq i32 %35, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3
  tail call void @arm_heavy_mb() #3
  %36 = tail call i32 @llvm.bswap.i32(i32 %val) #3
  %io_handle7.i.i105 = getelementptr inbounds %struct.asd_ha_struct, ptr %asd_ha, i32 0, i32 6
  %37 = ptrtoint ptr %io_handle7.i.i105 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %io_handle7.i.i105, align 4
  br i1 %tobool.not.i.i104, label %do.body5.i.i112, label %do.body.i.i110, !prof !11

do.body.i.i110:                                   ; preds = %if.else41
  call void @__sanitizer_cov_trace_pc() #5
  %39 = ptrtoint ptr %38 to i32
  %and.i.i106 = and i32 %add.i102, 255
  %add.i.i107 = add i32 %and.i.i106, %39
  %and3.i.i108 = and i32 %add.i.i107, 1048575
  %add4.i.i109 = or i32 %and3.i.i108, -18874368
  %40 = inttoptr i32 %add4.i.i109 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %40, i32 %36) #3, !srcloc !18
  br label %asd_write_swb_dword.exit113

do.body5.i.i112:                                  ; preds = %if.else41
  call void @__sanitizer_cov_trace_pc() #5
  %add.ptr.i.i111 = getelementptr i8, ptr %38, i32 %add.i102
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i111, i32 %36) #3, !srcloc !18
  br label %asd_write_swb_dword.exit113

asd_write_swb_dword.exit113:                      ; preds = %do.body5.i.i112, %do.body.i.i110
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !19
  br label %if.end44

if.end44:                                         ; preds = %asd_write_swb_dword.exit113, %asd_write_swc_dword.exit, %asd_write_swb_dword.exit, %asd_write_swa_dword.exit
  tail call void @arm_heavy_mb() #3
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %iolock, i32 noundef %call13) #3
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i8 @asd_read_reg_byte(ptr noundef %asd_ha, i32 noundef %reg) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = add i32 %reg, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 -536870912, i32 %0)
  %1 = icmp ult i32 %0, -536870912
  br i1 %1, label %do.body4, label %do.body11, !prof !9

do.body4:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/scsi/aic94xx/aic94xx_reg.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 273, 0\0A.popsection", ""() #3, !srcloc !20
  unreachable

do.body11:                                        ; preds = %entry
  %iolock = getelementptr inbounds %struct.asd_ha_struct, ptr %asd_ha, i32 0, i32 5
  %call13 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %iolock) #3
  %swa_base = getelementptr inbounds %struct.asd_ha_struct, ptr %asd_ha, i32 0, i32 6, i32 0, i32 4
  %2 = ptrtoint ptr %swa_base to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %swa_base, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %reg)
  %cmp18.not = icmp ule i32 %3, %reg
  %add = add i32 %3, 88
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %reg)
  %cmp21 = icmp ugt i32 %add, %reg
  %or.cond = and i1 %cmp18.not, %cmp21
  br i1 %or.cond, label %if.then23, label %if.else

if.then23:                                        ; preds = %do.body11
  %sub.i = sub i32 %reg, %3
  %iospace.i.i = getelementptr inbounds %struct.asd_ha_struct, ptr %asd_ha, i32 0, i32 4
  %4 = ptrtoint ptr %iospace.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %iospace.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not.i.i = icmp eq i32 %5, 0
  %io_handle7.i.i = getelementptr inbounds %struct.asd_ha_struct, ptr %asd_ha, i32 0, i32 6
  %6 = ptrtoint ptr %io_handle7.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %io_handle7.i.i, align 4
  br i1 %tobool.not.i.i, label %if.else.i.i, label %if.then.i.i, !prof !11

if.then.i.i:                                      ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #5
  %8 = ptrtoint ptr %7 to i32
  %and.i.i = and i32 %sub.i, 255
  %add.i.i = add i32 %and.i.i, %8
  %and3.i.i = and i32 %add.i.i, 1048575
  %add4.i.i = or i32 %and3.i.i, -18874368
  %9 = inttoptr i32 %add4.i.i to ptr
  %10 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %9) #3, !srcloc !21
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !22
  br label %asd_read_swa_byte.exit

if.else.i.i:                                      ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #5
  %add.ptr.i.i = getelementptr i8, ptr %7, i32 %sub.i
  %11 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i.i) #3, !srcloc !21
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !23
  br label %asd_read_swa_byte.exit

asd_read_swa_byte.exit:                           ; preds = %if.else.i.i, %if.then.i.i
  %val.0.i.i = phi i8 [ %10, %if.then.i.i ], [ %11, %if.else.i.i ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !24
  br label %if.end48

if.else:                                          ; preds = %do.body11
  %swb_base = getelementptr inbounds %struct.asd_ha_struct, ptr %asd_ha, i32 0, i32 6, i32 0, i32 5
  %12 = ptrtoint ptr %swb_base to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %swb_base, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %reg)
  %cmp25.not = icmp ugt i32 %13, %reg
  br i1 %cmp25.not, label %if.else.if.else34_crit_edge, label %land.lhs.true27

if.else.if.else34_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.else34

land.lhs.true27:                                  ; preds = %if.else
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @MBAR0_SWB_SIZE to i32))
  %14 = load i32, ptr @MBAR0_SWB_SIZE, align 4
  %add29 = add i32 %14, %13
  call void @__sanitizer_cov_trace_cmp4(i32 %add29, i32 %reg)
  %cmp30 = icmp ugt i32 %add29, %reg
  br i1 %cmp30, label %if.then32, label %land.lhs.true27.if.else34_crit_edge

land.lhs.true27.if.else34_crit_edge:              ; preds = %land.lhs.true27
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.else34

if.then32:                                        ; preds = %land.lhs.true27
  %sub.i77 = sub i32 %reg, %13
  %add.i = add i32 %sub.i77, 128
  %iospace.i.i78 = getelementptr inbounds %struct.asd_ha_struct, ptr %asd_ha, i32 0, i32 4
  %15 = ptrtoint ptr %iospace.i.i78 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %iospace.i.i78, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool.not.i.i79 = icmp eq i32 %16, 0
  %io_handle7.i.i80 = getelementptr inbounds %struct.asd_ha_struct, ptr %asd_ha, i32 0, i32 6
  %17 = ptrtoint ptr %io_handle7.i.i80 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %io_handle7.i.i80, align 4
  br i1 %tobool.not.i.i79, label %if.else.i.i87, label %if.then.i.i85, !prof !11

if.then.i.i85:                                    ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #5
  %19 = ptrtoint ptr %18 to i32
  %and.i.i81 = and i32 %add.i, 255
  %add.i.i82 = add i32 %and.i.i81, %19
  %and3.i.i83 = and i32 %add.i.i82, 1048575
  %add4.i.i84 = or i32 %and3.i.i83, -18874368
  %20 = inttoptr i32 %add4.i.i84 to ptr
  %21 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %20) #3, !srcloc !21
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !22
  br label %asd_read_swb_byte.exit

if.else.i.i87:                                    ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #5
  %add.ptr.i.i86 = getelementptr i8, ptr %18, i32 %add.i
  %22 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i.i86) #3, !srcloc !21
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !23
  br label %asd_read_swb_byte.exit

asd_read_swb_byte.exit:                           ; preds = %if.else.i.i87, %if.then.i.i85
  %val.0.i.i88 = phi i8 [ %21, %if.then.i.i85 ], [ %22, %if.else.i.i87 ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !24
  br label %if.end48

if.else34:                                        ; preds = %land.lhs.true27.if.else34_crit_edge, %if.else.if.else34_crit_edge
  %swc_base = getelementptr inbounds %struct.asd_ha_struct, ptr %asd_ha, i32 0, i32 6, i32 0, i32 6
  %23 = ptrtoint ptr %swc_base to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %swc_base, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %24, i32 %reg)
  %cmp35.not = icmp ule i32 %24, %reg
  %add39 = add i32 %24, 8
  call void @__sanitizer_cov_trace_cmp4(i32 %add39, i32 %reg)
  %cmp40 = icmp ugt i32 %add39, %reg
  %or.cond76 = and i1 %cmp35.not, %cmp40
  br i1 %or.cond76, label %if.then42, label %if.else44

if.then42:                                        ; preds = %if.else34
  %sub.i89 = sub i32 %reg, %24
  %add.i90 = add i32 %sub.i89, 88
  %iospace.i.i91 = getelementptr inbounds %struct.asd_ha_struct, ptr %asd_ha, i32 0, i32 4
  %25 = ptrtoint ptr %iospace.i.i91 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %iospace.i.i91, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %tobool.not.i.i92 = icmp eq i32 %26, 0
  %io_handle7.i.i93 = getelementptr inbounds %struct.asd_ha_struct, ptr %asd_ha, i32 0, i32 6
  %27 = ptrtoint ptr %io_handle7.i.i93 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %io_handle7.i.i93, align 4
  br i1 %tobool.not.i.i92, label %if.else.i.i100, label %if.then.i.i98, !prof !11

if.then.i.i98:                                    ; preds = %if.then42
  call void @__sanitizer_cov_trace_pc() #5
  %29 = ptrtoint ptr %28 to i32
  %and.i.i94 = and i32 %add.i90, 255
  %add.i.i95 = add i32 %and.i.i94, %29
  %and3.i.i96 = and i32 %add.i.i95, 1048575
  %add4.i.i97 = or i32 %and3.i.i96, -18874368
  %30 = inttoptr i32 %add4.i.i97 to ptr
  %31 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %30) #3, !srcloc !21
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !22
  br label %asd_read_swc_byte.exit

if.else.i.i100:                                   ; preds = %if.then42
  call void @__sanitizer_cov_trace_pc() #5
  %add.ptr.i.i99 = getelementptr i8, ptr %28, i32 %add.i90
  %32 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i.i99) #3, !srcloc !21
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !23
  br label %asd_read_swc_byte.exit

asd_read_swc_byte.exit:                           ; preds = %if.else.i.i100, %if.then.i.i98
  %val.0.i.i101 = phi i8 [ %31, %if.then.i.i98 ], [ %32, %if.else.i.i100 ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !24
  br label %if.end48

if.else44:                                        ; preds = %if.else34
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @MBAR0_SWB_SIZE to i32))
  %33 = load i32, ptr @MBAR0_SWB_SIZE, align 4
  %neg.i = sub i32 0, %33
  %and.i = and i32 %neg.i, %reg
  %34 = ptrtoint ptr %asd_ha to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %asd_ha, align 4
  %call.i = tail call i32 @pci_write_config_dword(ptr noundef %35, i32 noundef 116, i32 noundef %and.i) #3
  %36 = ptrtoint ptr %swb_base to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %and.i, ptr %swb_base, align 4
  %sub.i104 = sub i32 %reg, %and.i
  %add.i105 = add i32 %sub.i104, 128
  %iospace.i.i106 = getelementptr inbounds %struct.asd_ha_struct, ptr %asd_ha, i32 0, i32 4
  %37 = ptrtoint ptr %iospace.i.i106 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %iospace.i.i106, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %tobool.not.i.i107 = icmp eq i32 %38, 0
  %io_handle7.i.i108 = getelementptr inbounds %struct.asd_ha_struct, ptr %asd_ha, i32 0, i32 6
  %39 = ptrtoint ptr %io_handle7.i.i108 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %io_handle7.i.i108, align 4
  br i1 %tobool.not.i.i107, label %if.else.i.i115, label %if.then.i.i113, !prof !11

if.then.i.i113:                                   ; preds = %if.else44
  call void @__sanitizer_cov_trace_pc() #5
  %41 = ptrtoint ptr %40 to i32
  %and.i.i109 = and i32 %add.i105, 255
  %add.i.i110 = add i32 %and.i.i109, %41
  %and3.i.i111 = and i32 %add.i.i110, 1048575
  %add4.i.i112 = or i32 %and3.i.i111, -18874368
  %42 = inttoptr i32 %add4.i.i112 to ptr
  %43 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %42) #3, !srcloc !21
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !22
  br label %asd_read_swb_byte.exit117

if.else.i.i115:                                   ; preds = %if.else44
  call void @__sanitizer_cov_trace_pc() #5
  %add.ptr.i.i114 = getelementptr i8, ptr %40, i32 %add.i105
  %44 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i.i114) #3, !srcloc !21
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !23
  br label %asd_read_swb_byte.exit117

asd_read_swb_byte.exit117:                        ; preds = %if.else.i.i115, %if.then.i.i113
  %val.0.i.i116 = phi i8 [ %43, %if.then.i.i113 ], [ %44, %if.else.i.i115 ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !24
  br label %if.end48

if.end48:                                         ; preds = %asd_read_swb_byte.exit117, %asd_read_swc_byte.exit, %asd_read_swb_byte.exit, %asd_read_swa_byte.exit
  %val.0 = phi i8 [ %val.0.i.i, %asd_read_swa_byte.exit ], [ %val.0.i.i88, %asd_read_swb_byte.exit ], [ %val.0.i.i101, %asd_read_swc_byte.exit ], [ %val.0.i.i116, %asd_read_swb_byte.exit117 ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %iolock, i32 noundef %call13) #3
  ret i8 %val.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i16 @asd_read_reg_word(ptr noundef %asd_ha, i32 noundef %reg) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = add i32 %reg, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 -536870912, i32 %0)
  %1 = icmp ult i32 %0, -536870912
  br i1 %1, label %do.body4, label %do.body11, !prof !9

do.body4:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/scsi/aic94xx/aic94xx_reg.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 274, 0\0A.popsection", ""() #3, !srcloc !25
  unreachable

do.body11:                                        ; preds = %entry
  %iolock = getelementptr inbounds %struct.asd_ha_struct, ptr %asd_ha, i32 0, i32 5
  %call13 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %iolock) #3
  %swa_base = getelementptr inbounds %struct.asd_ha_struct, ptr %asd_ha, i32 0, i32 6, i32 0, i32 4
  %2 = ptrtoint ptr %swa_base to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %swa_base, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %reg)
  %cmp18.not = icmp ule i32 %3, %reg
  %add = add i32 %3, 88
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %reg)
  %cmp21 = icmp ugt i32 %add, %reg
  %or.cond = and i1 %cmp18.not, %cmp21
  br i1 %or.cond, label %if.then23, label %if.else

if.then23:                                        ; preds = %do.body11
  %sub.i = sub i32 %reg, %3
  %iospace.i.i = getelementptr inbounds %struct.asd_ha_struct, ptr %asd_ha, i32 0, i32 4
  %4 = ptrtoint ptr %iospace.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %iospace.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not.i.i = icmp eq i32 %5, 0
  %io_handle7.i.i = getelementptr inbounds %struct.asd_ha_struct, ptr %asd_ha, i32 0, i32 6
  %6 = ptrtoint ptr %io_handle7.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %io_handle7.i.i, align 4
  br i1 %tobool.not.i.i, label %if.else.i.i, label %if.then.i.i, !prof !11

if.then.i.i:                                      ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #5
  %8 = ptrtoint ptr %7 to i32
  %and.i.i = and i32 %sub.i, 255
  %add.i.i = add i32 %and.i.i, %8
  %and3.i.i = and i32 %add.i.i, 1048575
  %add4.i.i = or i32 %and3.i.i, -18874368
  %9 = inttoptr i32 %add4.i.i to ptr
  %10 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr nonnull elementtype(i16) %9) #3, !srcloc !26
  %11 = tail call i16 @llvm.bswap.i16(i16 %10) #3
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !27
  br label %asd_read_swa_word.exit

if.else.i.i:                                      ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #5
  %add.ptr.i.i = getelementptr i8, ptr %7, i32 %sub.i
  %12 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i) #3, !srcloc !26
  %13 = tail call i16 @llvm.bswap.i16(i16 %12) #3
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !28
  br label %asd_read_swa_word.exit

asd_read_swa_word.exit:                           ; preds = %if.else.i.i, %if.then.i.i
  %val.0.i.i = phi i16 [ %11, %if.then.i.i ], [ %13, %if.else.i.i ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !29
  br label %if.end48

if.else:                                          ; preds = %do.body11
  %swb_base = getelementptr inbounds %struct.asd_ha_struct, ptr %asd_ha, i32 0, i32 6, i32 0, i32 5
  %14 = ptrtoint ptr %swb_base to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %swb_base, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %15, i32 %reg)
  %cmp25.not = icmp ugt i32 %15, %reg
  br i1 %cmp25.not, label %if.else.if.else34_crit_edge, label %land.lhs.true27

if.else.if.else34_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.else34

land.lhs.true27:                                  ; preds = %if.else
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @MBAR0_SWB_SIZE to i32))
  %16 = load i32, ptr @MBAR0_SWB_SIZE, align 4
  %add29 = add i32 %16, %15
  call void @__sanitizer_cov_trace_cmp4(i32 %add29, i32 %reg)
  %cmp30 = icmp ugt i32 %add29, %reg
  br i1 %cmp30, label %if.then32, label %land.lhs.true27.if.else34_crit_edge

land.lhs.true27.if.else34_crit_edge:              ; preds = %land.lhs.true27
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.else34

if.then32:                                        ; preds = %land.lhs.true27
  %sub.i77 = sub i32 %reg, %15
  %add.i = add i32 %sub.i77, 128
  %iospace.i.i78 = getelementptr inbounds %struct.asd_ha_struct, ptr %asd_ha, i32 0, i32 4
  %17 = ptrtoint ptr %iospace.i.i78 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %iospace.i.i78, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool.not.i.i79 = icmp eq i32 %18, 0
  %io_handle7.i.i80 = getelementptr inbounds %struct.asd_ha_struct, ptr %asd_ha, i32 0, i32 6
  %19 = ptrtoint ptr %io_handle7.i.i80 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %io_handle7.i.i80, align 4
  br i1 %tobool.not.i.i79, label %if.else.i.i87, label %if.then.i.i85, !prof !11

if.then.i.i85:                                    ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #5
  %21 = ptrtoint ptr %20 to i32
  %and.i.i81 = and i32 %add.i, 255
  %add.i.i82 = add i32 %and.i.i81, %21
  %and3.i.i83 = and i32 %add.i.i82, 1048575
  %add4.i.i84 = or i32 %and3.i.i83, -18874368
  %22 = inttoptr i32 %add4.i.i84 to ptr
  %23 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr nonnull elementtype(i16) %22) #3, !srcloc !26
  %24 = tail call i16 @llvm.bswap.i16(i16 %23) #3
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !27
  br label %asd_read_swb_word.exit

if.else.i.i87:                                    ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #5
  %add.ptr.i.i86 = getelementptr i8, ptr %20, i32 %add.i
  %25 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i86) #3, !srcloc !26
  %26 = tail call i16 @llvm.bswap.i16(i16 %25) #3
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !28
  br label %asd_read_swb_word.exit

asd_read_swb_word.exit:                           ; preds = %if.else.i.i87, %if.then.i.i85
  %val.0.i.i88 = phi i16 [ %24, %if.then.i.i85 ], [ %26, %if.else.i.i87 ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !29
  br label %if.end48

if.else34:                                        ; preds = %land.lhs.true27.if.else34_crit_edge, %if.else.if.else34_crit_edge
  %swc_base = getelementptr inbounds %struct.asd_ha_struct, ptr %asd_ha, i32 0, i32 6, i32 0, i32 6
  %27 = ptrtoint ptr %swc_base to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %swc_base, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %28, i32 %reg)
  %cmp35.not = icmp ule i32 %28, %reg
  %add39 = add i32 %28, 8
  call void @__sanitizer_cov_trace_cmp4(i32 %add39, i32 %reg)
  %cmp40 = icmp ugt i32 %add39, %reg
  %or.cond76 = and i1 %cmp35.not, %cmp40
  br i1 %or.cond76, label %if.then42, label %if.else44

if.then42:                                        ; preds = %if.else34
  %sub.i89 = sub i32 %reg, %28
  %add.i90 = add i32 %sub.i89, 88
  %iospace.i.i91 = getelementptr inbounds %struct.asd_ha_struct, ptr %asd_ha, i32 0, i32 4
  %29 = ptrtoint ptr %iospace.i.i91 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %iospace.i.i91, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %tobool.not.i.i92 = icmp eq i32 %30, 0
  %io_handle7.i.i93 = getelementptr inbounds %struct.asd_ha_struct, ptr %asd_ha, i32 0, i32 6
  %31 = ptrtoint ptr %io_handle7.i.i93 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %io_handle7.i.i93, align 4
  br i1 %tobool.not.i.i92, label %if.else.i.i100, label %if.then.i.i98, !prof !11

if.then.i.i98:                                    ; preds = %if.then42
  call void @__sanitizer_cov_trace_pc() #5
  %33 = ptrtoint ptr %32 to i32
  %and.i.i94 = and i32 %add.i90, 255
  %add.i.i95 = add i32 %and.i.i94, %33
  %and3.i.i96 = and i32 %add.i.i95, 1048575
  %add4.i.i97 = or i32 %and3.i.i96, -18874368
  %34 = inttoptr i32 %add4.i.i97 to ptr
  %35 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr nonnull elementtype(i16) %34) #3, !srcloc !26
  %36 = tail call i16 @llvm.bswap.i16(i16 %35) #3
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !27
  br label %asd_read_swc_word.exit

if.else.i.i100:                                   ; preds = %if.then42
  call void @__sanitizer_cov_trace_pc() #5
  %add.ptr.i.i99 = getelementptr i8, ptr %32, i32 %add.i90
  %37 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i99) #3, !srcloc !26
  %38 = tail call i16 @llvm.bswap.i16(i16 %37) #3
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !28
  br label %asd_read_swc_word.exit

asd_read_swc_word.exit:                           ; preds = %if.else.i.i100, %if.then.i.i98
  %val.0.i.i101 = phi i16 [ %36, %if.then.i.i98 ], [ %38, %if.else.i.i100 ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !29
  br label %if.end48

if.else44:                                        ; preds = %if.else34
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @MBAR0_SWB_SIZE to i32))
  %39 = load i32, ptr @MBAR0_SWB_SIZE, align 4
  %neg.i = sub i32 0, %39
  %and.i = and i32 %neg.i, %reg
  %40 = ptrtoint ptr %asd_ha to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %asd_ha, align 4
  %call.i = tail call i32 @pci_write_config_dword(ptr noundef %41, i32 noundef 116, i32 noundef %and.i) #3
  %42 = ptrtoint ptr %swb_base to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %and.i, ptr %swb_base, align 4
  %sub.i104 = sub i32 %reg, %and.i
  %add.i105 = add i32 %sub.i104, 128
  %iospace.i.i106 = getelementptr inbounds %struct.asd_ha_struct, ptr %asd_ha, i32 0, i32 4
  %43 = ptrtoint ptr %iospace.i.i106 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %iospace.i.i106, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %44)
  %tobool.not.i.i107 = icmp eq i32 %44, 0
  %io_handle7.i.i108 = getelementptr inbounds %struct.asd_ha_struct, ptr %asd_ha, i32 0, i32 6
  %45 = ptrtoint ptr %io_handle7.i.i108 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %io_handle7.i.i108, align 4
  br i1 %tobool.not.i.i107, label %if.else.i.i115, label %if.then.i.i113, !prof !11

if.then.i.i113:                                   ; preds = %if.else44
  call void @__sanitizer_cov_trace_pc() #5
  %47 = ptrtoint ptr %46 to i32
  %and.i.i109 = and i32 %add.i105, 255
  %add.i.i110 = add i32 %and.i.i109, %47
  %and3.i.i111 = and i32 %add.i.i110, 1048575
  %add4.i.i112 = or i32 %and3.i.i111, -18874368
  %48 = inttoptr i32 %add4.i.i112 to ptr
  %49 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr nonnull elementtype(i16) %48) #3, !srcloc !26
  %50 = tail call i16 @llvm.bswap.i16(i16 %49) #3
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !27
  br label %asd_read_swb_word.exit117

if.else.i.i115:                                   ; preds = %if.else44
  call void @__sanitizer_cov_trace_pc() #5
  %add.ptr.i.i114 = getelementptr i8, ptr %46, i32 %add.i105
  %51 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i114) #3, !srcloc !26
  %52 = tail call i16 @llvm.bswap.i16(i16 %51) #3
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !28
  br label %asd_read_swb_word.exit117

asd_read_swb_word.exit117:                        ; preds = %if.else.i.i115, %if.then.i.i113
  %val.0.i.i116 = phi i16 [ %50, %if.then.i.i113 ], [ %52, %if.else.i.i115 ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !29
  br label %if.end48

if.end48:                                         ; preds = %asd_read_swb_word.exit117, %asd_read_swc_word.exit, %asd_read_swb_word.exit, %asd_read_swa_word.exit
  %val.0 = phi i16 [ %val.0.i.i, %asd_read_swa_word.exit ], [ %val.0.i.i88, %asd_read_swb_word.exit ], [ %val.0.i.i101, %asd_read_swc_word.exit ], [ %val.0.i.i116, %asd_read_swb_word.exit117 ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %iolock, i32 noundef %call13) #3
  ret i16 %val.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @asd_read_reg_dword(ptr noundef %asd_ha, i32 noundef %reg) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = add i32 %reg, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 -536870912, i32 %0)
  %1 = icmp ult i32 %0, -536870912
  br i1 %1, label %do.body4, label %do.body11, !prof !9

do.body4:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/scsi/aic94xx/aic94xx_reg.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 275, 0\0A.popsection", ""() #3, !srcloc !30
  unreachable

do.body11:                                        ; preds = %entry
  %iolock = getelementptr inbounds %struct.asd_ha_struct, ptr %asd_ha, i32 0, i32 5
  %call13 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %iolock) #3
  %swa_base = getelementptr inbounds %struct.asd_ha_struct, ptr %asd_ha, i32 0, i32 6, i32 0, i32 4
  %2 = ptrtoint ptr %swa_base to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %swa_base, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %reg)
  %cmp18.not = icmp ule i32 %3, %reg
  %add = add i32 %3, 88
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %reg)
  %cmp21 = icmp ugt i32 %add, %reg
  %or.cond = and i1 %cmp18.not, %cmp21
  br i1 %or.cond, label %if.then23, label %if.else

if.then23:                                        ; preds = %do.body11
  %sub.i = sub i32 %reg, %3
  %iospace.i.i = getelementptr inbounds %struct.asd_ha_struct, ptr %asd_ha, i32 0, i32 4
  %4 = ptrtoint ptr %iospace.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %iospace.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not.i.i = icmp eq i32 %5, 0
  %io_handle7.i.i = getelementptr inbounds %struct.asd_ha_struct, ptr %asd_ha, i32 0, i32 6
  %6 = ptrtoint ptr %io_handle7.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %io_handle7.i.i, align 4
  br i1 %tobool.not.i.i, label %if.else.i.i, label %if.then.i.i, !prof !11

if.then.i.i:                                      ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #5
  %8 = ptrtoint ptr %7 to i32
  %and.i.i = and i32 %sub.i, 255
  %add.i.i = add i32 %and.i.i, %8
  %and3.i.i = and i32 %add.i.i, 1048575
  %add4.i.i = or i32 %and3.i.i, -18874368
  %9 = inttoptr i32 %add4.i.i to ptr
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %9) #3, !srcloc !31
  %11 = tail call i32 @llvm.bswap.i32(i32 %10) #3
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !32
  br label %asd_read_swa_dword.exit

if.else.i.i:                                      ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #5
  %add.ptr.i.i = getelementptr i8, ptr %7, i32 %sub.i
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #3, !srcloc !31
  %13 = tail call i32 @llvm.bswap.i32(i32 %12) #3
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !33
  br label %asd_read_swa_dword.exit

asd_read_swa_dword.exit:                          ; preds = %if.else.i.i, %if.then.i.i
  %val.0.i.i = phi i32 [ %11, %if.then.i.i ], [ %13, %if.else.i.i ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !34
  br label %if.end48

if.else:                                          ; preds = %do.body11
  %swb_base = getelementptr inbounds %struct.asd_ha_struct, ptr %asd_ha, i32 0, i32 6, i32 0, i32 5
  %14 = ptrtoint ptr %swb_base to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %swb_base, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %15, i32 %reg)
  %cmp25.not = icmp ugt i32 %15, %reg
  br i1 %cmp25.not, label %if.else.if.else34_crit_edge, label %land.lhs.true27

if.else.if.else34_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.else34

land.lhs.true27:                                  ; preds = %if.else
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @MBAR0_SWB_SIZE to i32))
  %16 = load i32, ptr @MBAR0_SWB_SIZE, align 4
  %add29 = add i32 %16, %15
  call void @__sanitizer_cov_trace_cmp4(i32 %add29, i32 %reg)
  %cmp30 = icmp ugt i32 %add29, %reg
  br i1 %cmp30, label %if.then32, label %land.lhs.true27.if.else34_crit_edge

land.lhs.true27.if.else34_crit_edge:              ; preds = %land.lhs.true27
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.else34

if.then32:                                        ; preds = %land.lhs.true27
  %sub.i77 = sub i32 %reg, %15
  %add.i = add i32 %sub.i77, 128
  %iospace.i.i78 = getelementptr inbounds %struct.asd_ha_struct, ptr %asd_ha, i32 0, i32 4
  %17 = ptrtoint ptr %iospace.i.i78 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %iospace.i.i78, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool.not.i.i79 = icmp eq i32 %18, 0
  %io_handle7.i.i80 = getelementptr inbounds %struct.asd_ha_struct, ptr %asd_ha, i32 0, i32 6
  %19 = ptrtoint ptr %io_handle7.i.i80 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %io_handle7.i.i80, align 4
  br i1 %tobool.not.i.i79, label %if.else.i.i87, label %if.then.i.i85, !prof !11

if.then.i.i85:                                    ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #5
  %21 = ptrtoint ptr %20 to i32
  %and.i.i81 = and i32 %add.i, 255
  %add.i.i82 = add i32 %and.i.i81, %21
  %and3.i.i83 = and i32 %add.i.i82, 1048575
  %add4.i.i84 = or i32 %and3.i.i83, -18874368
  %22 = inttoptr i32 %add4.i.i84 to ptr
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %22) #3, !srcloc !31
  %24 = tail call i32 @llvm.bswap.i32(i32 %23) #3
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !32
  br label %asd_read_swb_dword.exit

if.else.i.i87:                                    ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #5
  %add.ptr.i.i86 = getelementptr i8, ptr %20, i32 %add.i
  %25 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i86) #3, !srcloc !31
  %26 = tail call i32 @llvm.bswap.i32(i32 %25) #3
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !33
  br label %asd_read_swb_dword.exit

asd_read_swb_dword.exit:                          ; preds = %if.else.i.i87, %if.then.i.i85
  %val.0.i.i88 = phi i32 [ %24, %if.then.i.i85 ], [ %26, %if.else.i.i87 ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !34
  br label %if.end48

if.else34:                                        ; preds = %land.lhs.true27.if.else34_crit_edge, %if.else.if.else34_crit_edge
  %swc_base = getelementptr inbounds %struct.asd_ha_struct, ptr %asd_ha, i32 0, i32 6, i32 0, i32 6
  %27 = ptrtoint ptr %swc_base to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %swc_base, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %28, i32 %reg)
  %cmp35.not = icmp ule i32 %28, %reg
  %add39 = add i32 %28, 8
  call void @__sanitizer_cov_trace_cmp4(i32 %add39, i32 %reg)
  %cmp40 = icmp ugt i32 %add39, %reg
  %or.cond76 = and i1 %cmp35.not, %cmp40
  br i1 %or.cond76, label %if.then42, label %if.else44

if.then42:                                        ; preds = %if.else34
  %sub.i89 = sub i32 %reg, %28
  %add.i90 = add i32 %sub.i89, 88
  %iospace.i.i91 = getelementptr inbounds %struct.asd_ha_struct, ptr %asd_ha, i32 0, i32 4
  %29 = ptrtoint ptr %iospace.i.i91 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %iospace.i.i91, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %tobool.not.i.i92 = icmp eq i32 %30, 0
  %io_handle7.i.i93 = getelementptr inbounds %struct.asd_ha_struct, ptr %asd_ha, i32 0, i32 6
  %31 = ptrtoint ptr %io_handle7.i.i93 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %io_handle7.i.i93, align 4
  br i1 %tobool.not.i.i92, label %if.else.i.i100, label %if.then.i.i98, !prof !11

if.then.i.i98:                                    ; preds = %if.then42
  call void @__sanitizer_cov_trace_pc() #5
  %33 = ptrtoint ptr %32 to i32
  %and.i.i94 = and i32 %add.i90, 255
  %add.i.i95 = add i32 %and.i.i94, %33
  %and3.i.i96 = and i32 %add.i.i95, 1048575
  %add4.i.i97 = or i32 %and3.i.i96, -18874368
  %34 = inttoptr i32 %add4.i.i97 to ptr
  %35 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %34) #3, !srcloc !31
  %36 = tail call i32 @llvm.bswap.i32(i32 %35) #3
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !32
  br label %asd_read_swc_dword.exit

if.else.i.i100:                                   ; preds = %if.then42
  call void @__sanitizer_cov_trace_pc() #5
  %add.ptr.i.i99 = getelementptr i8, ptr %32, i32 %add.i90
  %37 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i99) #3, !srcloc !31
  %38 = tail call i32 @llvm.bswap.i32(i32 %37) #3
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !33
  br label %asd_read_swc_dword.exit

asd_read_swc_dword.exit:                          ; preds = %if.else.i.i100, %if.then.i.i98
  %val.0.i.i101 = phi i32 [ %36, %if.then.i.i98 ], [ %38, %if.else.i.i100 ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !34
  br label %if.end48

if.else44:                                        ; preds = %if.else34
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @MBAR0_SWB_SIZE to i32))
  %39 = load i32, ptr @MBAR0_SWB_SIZE, align 4
  %neg.i = sub i32 0, %39
  %and.i = and i32 %neg.i, %reg
  %40 = ptrtoint ptr %asd_ha to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %asd_ha, align 4
  %call.i = tail call i32 @pci_write_config_dword(ptr noundef %41, i32 noundef 116, i32 noundef %and.i) #3
  %42 = ptrtoint ptr %swb_base to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %and.i, ptr %swb_base, align 4
  %sub.i104 = sub i32 %reg, %and.i
  %add.i105 = add i32 %sub.i104, 128
  %iospace.i.i106 = getelementptr inbounds %struct.asd_ha_struct, ptr %asd_ha, i32 0, i32 4
  %43 = ptrtoint ptr %iospace.i.i106 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %iospace.i.i106, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %44)
  %tobool.not.i.i107 = icmp eq i32 %44, 0
  %io_handle7.i.i108 = getelementptr inbounds %struct.asd_ha_struct, ptr %asd_ha, i32 0, i32 6
  %45 = ptrtoint ptr %io_handle7.i.i108 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %io_handle7.i.i108, align 4
  br i1 %tobool.not.i.i107, label %if.else.i.i115, label %if.then.i.i113, !prof !11

if.then.i.i113:                                   ; preds = %if.else44
  call void @__sanitizer_cov_trace_pc() #5
  %47 = ptrtoint ptr %46 to i32
  %and.i.i109 = and i32 %add.i105, 255
  %add.i.i110 = add i32 %and.i.i109, %47
  %and3.i.i111 = and i32 %add.i.i110, 1048575
  %add4.i.i112 = or i32 %and3.i.i111, -18874368
  %48 = inttoptr i32 %add4.i.i112 to ptr
  %49 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %48) #3, !srcloc !31
  %50 = tail call i32 @llvm.bswap.i32(i32 %49) #3
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !32
  br label %asd_read_swb_dword.exit117

if.else.i.i115:                                   ; preds = %if.else44
  call void @__sanitizer_cov_trace_pc() #5
  %add.ptr.i.i114 = getelementptr i8, ptr %46, i32 %add.i105
  %51 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i114) #3, !srcloc !31
  %52 = tail call i32 @llvm.bswap.i32(i32 %51) #3
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !33
  br label %asd_read_swb_dword.exit117

asd_read_swb_dword.exit117:                       ; preds = %if.else.i.i115, %if.then.i.i113
  %val.0.i.i116 = phi i32 [ %50, %if.then.i.i113 ], [ %52, %if.else.i.i115 ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !34
  br label %if.end48

if.end48:                                         ; preds = %asd_read_swb_dword.exit117, %asd_read_swc_dword.exit, %asd_read_swb_dword.exit, %asd_read_swa_dword.exit
  %val.0 = phi i32 [ %val.0.i.i, %asd_read_swa_dword.exit ], [ %val.0.i.i88, %asd_read_swb_dword.exit ], [ %val.0.i.i101, %asd_read_swc_dword.exit ], [ %val.0.i.i116, %asd_read_swb_dword.exit117 ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %iolock, i32 noundef %call13) #3
  ret i32 %val.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @asd_read_reg_string(ptr noundef %asd_ha, ptr nocapture noundef writeonly %dst, i32 noundef %offs, i32 noundef %count) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %iolock = getelementptr inbounds %struct.asd_ha_struct, ptr %asd_ha, i32 0, i32 5
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %iolock) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count)
  %cmp514 = icmp sgt i32 %count, 0
  br i1 %cmp514, label %for.body.lr.ph, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %swa_base.i = getelementptr inbounds %struct.asd_ha_struct, ptr %asd_ha, i32 0, i32 6, i32 0, i32 4
  %swb_base.i = getelementptr inbounds %struct.asd_ha_struct, ptr %asd_ha, i32 0, i32 6, i32 0, i32 5
  %iospace.i.i60.i = getelementptr inbounds %struct.asd_ha_struct, ptr %asd_ha, i32 0, i32 4
  %io_handle7.i.i62.i = getelementptr inbounds %struct.asd_ha_struct, ptr %asd_ha, i32 0, i32 6
  %swc_base.i = getelementptr inbounds %struct.asd_ha_struct, ptr %asd_ha, i32 0, i32 6, i32 0, i32 6
  br label %for.body

for.body:                                         ; preds = %__asd_read_reg_byte.exit.for.body_crit_edge, %for.body.lr.ph
  %offs.addr.017 = phi i32 [ %offs, %for.body.lr.ph ], [ %inc, %__asd_read_reg_byte.exit.for.body_crit_edge ]
  %p.016 = phi ptr [ %dst, %for.body.lr.ph ], [ %incdec.ptr, %__asd_read_reg_byte.exit.for.body_crit_edge ]
  %count.addr.015 = phi i32 [ %count, %for.body.lr.ph ], [ %dec, %__asd_read_reg_byte.exit.for.body_crit_edge ]
  %0 = add i32 %offs.addr.017, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 -536870912, i32 %0)
  %1 = icmp ult i32 %0, -536870912
  br i1 %1, label %do.body4.i, label %do.end9.i, !prof !9

do.body4.i:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #5
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/scsi/aic94xx/aic94xx_reg.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 229, 0\0A.popsection", ""() #3, !srcloc !35
  unreachable

do.end9.i:                                        ; preds = %for.body
  %2 = ptrtoint ptr %swa_base.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %swa_base.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %offs.addr.017, i32 %3)
  %cmp10.not.i = icmp uge i32 %offs.addr.017, %3
  %add.i = add i32 %3, 88
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %offs.addr.017)
  %cmp12.i = icmp ugt i32 %add.i, %offs.addr.017
  %or.cond.i = and i1 %cmp10.not.i, %cmp12.i
  br i1 %or.cond.i, label %if.then13.i, label %if.else.i

if.then13.i:                                      ; preds = %do.end9.i
  %sub.i.i = sub i32 %offs.addr.017, %3
  %4 = ptrtoint ptr %iospace.i.i60.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %iospace.i.i60.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not.i.i.i = icmp eq i32 %5, 0
  %6 = ptrtoint ptr %io_handle7.i.i62.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %io_handle7.i.i62.i, align 4
  br i1 %tobool.not.i.i.i, label %if.else.i.i.i, label %if.then.i.i.i, !prof !11

if.then.i.i.i:                                    ; preds = %if.then13.i
  call void @__sanitizer_cov_trace_pc() #5
  %8 = ptrtoint ptr %7 to i32
  %and.i.i.i = and i32 %sub.i.i, 255
  %add.i.i.i = add i32 %and.i.i.i, %8
  %and3.i.i.i = and i32 %add.i.i.i, 1048575
  %add4.i.i.i = or i32 %and3.i.i.i, -18874368
  %9 = inttoptr i32 %add4.i.i.i to ptr
  %10 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %9) #3, !srcloc !21
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !22
  br label %asd_read_swa_byte.exit.i

if.else.i.i.i:                                    ; preds = %if.then13.i
  call void @__sanitizer_cov_trace_pc() #5
  %add.ptr.i.i.i = getelementptr i8, ptr %7, i32 %sub.i.i
  %11 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i.i.i) #3, !srcloc !21
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !23
  br label %asd_read_swa_byte.exit.i

asd_read_swa_byte.exit.i:                         ; preds = %if.else.i.i.i, %if.then.i.i.i
  %val.0.i.i.i = phi i8 [ %10, %if.then.i.i.i ], [ %11, %if.else.i.i.i ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !24
  br label %__asd_read_reg_byte.exit

if.else.i:                                        ; preds = %do.end9.i
  %12 = ptrtoint ptr %swb_base.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %swb_base.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %offs.addr.017, i32 %13)
  %cmp14.not.i = icmp ult i32 %offs.addr.017, %13
  br i1 %cmp14.not.i, label %if.else.i.if.else21.i_crit_edge, label %land.lhs.true15.i

if.else.i.if.else21.i_crit_edge:                  ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.else21.i

land.lhs.true15.i:                                ; preds = %if.else.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @MBAR0_SWB_SIZE to i32))
  %14 = load i32, ptr @MBAR0_SWB_SIZE, align 4
  %add17.i = add i32 %14, %13
  call void @__sanitizer_cov_trace_cmp4(i32 %add17.i, i32 %offs.addr.017)
  %cmp18.i = icmp ugt i32 %add17.i, %offs.addr.017
  br i1 %cmp18.i, label %if.then19.i, label %land.lhs.true15.i.if.else21.i_crit_edge

land.lhs.true15.i.if.else21.i_crit_edge:          ; preds = %land.lhs.true15.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.else21.i

if.then19.i:                                      ; preds = %land.lhs.true15.i
  %sub.i59.i = sub i32 %offs.addr.017, %13
  %add.i.i = add i32 %sub.i59.i, 128
  %15 = ptrtoint ptr %iospace.i.i60.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %iospace.i.i60.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool.not.i.i61.i = icmp eq i32 %16, 0
  %17 = ptrtoint ptr %io_handle7.i.i62.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %io_handle7.i.i62.i, align 4
  br i1 %tobool.not.i.i61.i, label %if.else.i.i69.i, label %if.then.i.i67.i, !prof !11

if.then.i.i67.i:                                  ; preds = %if.then19.i
  call void @__sanitizer_cov_trace_pc() #5
  %19 = ptrtoint ptr %18 to i32
  %and.i.i63.i = and i32 %add.i.i, 255
  %add.i.i64.i = add i32 %and.i.i63.i, %19
  %and3.i.i65.i = and i32 %add.i.i64.i, 1048575
  %add4.i.i66.i = or i32 %and3.i.i65.i, -18874368
  %20 = inttoptr i32 %add4.i.i66.i to ptr
  %21 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %20) #3, !srcloc !21
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !22
  br label %asd_read_swb_byte.exit.i

if.else.i.i69.i:                                  ; preds = %if.then19.i
  call void @__sanitizer_cov_trace_pc() #5
  %add.ptr.i.i68.i = getelementptr i8, ptr %18, i32 %add.i.i
  %22 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i.i68.i) #3, !srcloc !21
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !23
  br label %asd_read_swb_byte.exit.i

asd_read_swb_byte.exit.i:                         ; preds = %if.else.i.i69.i, %if.then.i.i67.i
  %val.0.i.i70.i = phi i8 [ %21, %if.then.i.i67.i ], [ %22, %if.else.i.i69.i ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !24
  br label %__asd_read_reg_byte.exit

if.else21.i:                                      ; preds = %land.lhs.true15.i.if.else21.i_crit_edge, %if.else.i.if.else21.i_crit_edge
  %23 = ptrtoint ptr %swc_base.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %swc_base.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %offs.addr.017, i32 %24)
  %cmp22.not.i = icmp uge i32 %offs.addr.017, %24
  %add25.i = add i32 %24, 8
  call void @__sanitizer_cov_trace_cmp4(i32 %add25.i, i32 %offs.addr.017)
  %cmp26.i = icmp ugt i32 %add25.i, %offs.addr.017
  %or.cond58.i = and i1 %cmp22.not.i, %cmp26.i
  br i1 %or.cond58.i, label %if.then27.i, label %if.else29.i

if.then27.i:                                      ; preds = %if.else21.i
  %sub.i71.i = sub i32 %offs.addr.017, %24
  %add.i72.i = add i32 %sub.i71.i, 88
  %25 = ptrtoint ptr %iospace.i.i60.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %iospace.i.i60.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %tobool.not.i.i74.i = icmp eq i32 %26, 0
  %27 = ptrtoint ptr %io_handle7.i.i62.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %io_handle7.i.i62.i, align 4
  br i1 %tobool.not.i.i74.i, label %if.else.i.i82.i, label %if.then.i.i80.i, !prof !11

if.then.i.i80.i:                                  ; preds = %if.then27.i
  call void @__sanitizer_cov_trace_pc() #5
  %29 = ptrtoint ptr %28 to i32
  %and.i.i76.i = and i32 %add.i72.i, 255
  %add.i.i77.i = add i32 %and.i.i76.i, %29
  %and3.i.i78.i = and i32 %add.i.i77.i, 1048575
  %add4.i.i79.i = or i32 %and3.i.i78.i, -18874368
  %30 = inttoptr i32 %add4.i.i79.i to ptr
  %31 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %30) #3, !srcloc !21
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !22
  br label %asd_read_swc_byte.exit.i

if.else.i.i82.i:                                  ; preds = %if.then27.i
  call void @__sanitizer_cov_trace_pc() #5
  %add.ptr.i.i81.i = getelementptr i8, ptr %28, i32 %add.i72.i
  %32 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i.i81.i) #3, !srcloc !21
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !23
  br label %asd_read_swc_byte.exit.i

asd_read_swc_byte.exit.i:                         ; preds = %if.else.i.i82.i, %if.then.i.i80.i
  %val.0.i.i83.i = phi i8 [ %31, %if.then.i.i80.i ], [ %32, %if.else.i.i82.i ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !24
  br label %__asd_read_reg_byte.exit

if.else29.i:                                      ; preds = %if.else21.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @MBAR0_SWB_SIZE to i32))
  %33 = load i32, ptr @MBAR0_SWB_SIZE, align 4
  %neg.i.i = sub i32 0, %33
  %and.i.i = and i32 %offs.addr.017, %neg.i.i
  %34 = ptrtoint ptr %asd_ha to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %asd_ha, align 4
  %call.i.i = tail call i32 @pci_write_config_dword(ptr noundef %35, i32 noundef 116, i32 noundef %and.i.i) #3
  %36 = ptrtoint ptr %swb_base.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %and.i.i, ptr %swb_base.i, align 4
  %sub.i86.i = sub i32 %offs.addr.017, %and.i.i
  %add.i87.i = add i32 %sub.i86.i, 128
  %37 = ptrtoint ptr %iospace.i.i60.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %iospace.i.i60.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %tobool.not.i.i89.i = icmp eq i32 %38, 0
  %39 = ptrtoint ptr %io_handle7.i.i62.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %io_handle7.i.i62.i, align 4
  br i1 %tobool.not.i.i89.i, label %if.else.i.i97.i, label %if.then.i.i95.i, !prof !11

if.then.i.i95.i:                                  ; preds = %if.else29.i
  call void @__sanitizer_cov_trace_pc() #5
  %41 = ptrtoint ptr %40 to i32
  %and.i.i91.i = and i32 %add.i87.i, 255
  %add.i.i92.i = add i32 %and.i.i91.i, %41
  %and3.i.i93.i = and i32 %add.i.i92.i, 1048575
  %add4.i.i94.i = or i32 %and3.i.i93.i, -18874368
  %42 = inttoptr i32 %add4.i.i94.i to ptr
  %43 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %42) #3, !srcloc !21
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !22
  br label %asd_read_swb_byte.exit99.i

if.else.i.i97.i:                                  ; preds = %if.else29.i
  call void @__sanitizer_cov_trace_pc() #5
  %add.ptr.i.i96.i = getelementptr i8, ptr %40, i32 %add.i87.i
  %44 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i.i96.i) #3, !srcloc !21
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !23
  br label %asd_read_swb_byte.exit99.i

asd_read_swb_byte.exit99.i:                       ; preds = %if.else.i.i97.i, %if.then.i.i95.i
  %val.0.i.i98.i = phi i8 [ %43, %if.then.i.i95.i ], [ %44, %if.else.i.i97.i ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !24
  br label %__asd_read_reg_byte.exit

__asd_read_reg_byte.exit:                         ; preds = %asd_read_swb_byte.exit99.i, %asd_read_swc_byte.exit.i, %asd_read_swb_byte.exit.i, %asd_read_swa_byte.exit.i
  %val.0.i = phi i8 [ %val.0.i.i.i, %asd_read_swa_byte.exit.i ], [ %val.0.i.i70.i, %asd_read_swb_byte.exit.i ], [ %val.0.i.i83.i, %asd_read_swc_byte.exit.i ], [ %val.0.i.i98.i, %asd_read_swb_byte.exit99.i ]
  %45 = ptrtoint ptr %p.016 to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 %val.0.i, ptr %p.016, align 1
  %dec = add nsw i32 %count.addr.015, -1
  %inc = add nuw nsw i32 %offs.addr.017, 1
  %incdec.ptr = getelementptr i8, ptr %p.016, i32 1
  %cmp5 = icmp sgt i32 %count.addr.015, 1
  br i1 %cmp5, label %__asd_read_reg_byte.exit.for.body_crit_edge, label %__asd_read_reg_byte.exit.for.end_crit_edge

__asd_read_reg_byte.exit.for.end_crit_edge:       ; preds = %__asd_read_reg_byte.exit
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.end

__asd_read_reg_byte.exit.for.body_crit_edge:      ; preds = %__asd_read_reg_byte.exit
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.body

for.end:                                          ; preds = %__asd_read_reg_byte.exit.for.end_crit_edge, %entry.for.end_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %iolock, i32 noundef %call2) #3
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @asd_write_reg_string(ptr noundef %asd_ha, ptr nocapture noundef readonly %src, i32 noundef %offs, i32 noundef %count) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %iolock = getelementptr inbounds %struct.asd_ha_struct, ptr %asd_ha, i32 0, i32 5
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %iolock) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count)
  %cmp513 = icmp sgt i32 %count, 0
  br i1 %cmp513, label %for.body.lr.ph, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %swa_base.i = getelementptr inbounds %struct.asd_ha_struct, ptr %asd_ha, i32 0, i32 6, i32 0, i32 4
  %swb_base.i = getelementptr inbounds %struct.asd_ha_struct, ptr %asd_ha, i32 0, i32 6, i32 0, i32 5
  %iospace.i.i60.i = getelementptr inbounds %struct.asd_ha_struct, ptr %asd_ha, i32 0, i32 4
  %io_handle7.i.i62.i = getelementptr inbounds %struct.asd_ha_struct, ptr %asd_ha, i32 0, i32 6
  %swc_base.i = getelementptr inbounds %struct.asd_ha_struct, ptr %asd_ha, i32 0, i32 6, i32 0, i32 6
  br label %for.body

for.body:                                         ; preds = %__asd_write_reg_byte.exit.for.body_crit_edge, %for.body.lr.ph
  %offs.addr.016 = phi i32 [ %offs, %for.body.lr.ph ], [ %inc, %__asd_write_reg_byte.exit.for.body_crit_edge ]
  %p.015 = phi ptr [ %src, %for.body.lr.ph ], [ %incdec.ptr, %__asd_write_reg_byte.exit.for.body_crit_edge ]
  %count.addr.014 = phi i32 [ %count, %for.body.lr.ph ], [ %dec, %__asd_write_reg_byte.exit.for.body_crit_edge ]
  %0 = ptrtoint ptr %p.015 to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %p.015, align 1
  %2 = add i32 %offs.addr.016, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 -536870912, i32 %2)
  %3 = icmp ult i32 %2, -536870912
  br i1 %3, label %do.body4.i, label %do.end9.i, !prof !9

do.body4.i:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #5
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/scsi/aic94xx/aic94xx_reg.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 180, 0\0A.popsection", ""() #3, !srcloc !36
  unreachable

do.end9.i:                                        ; preds = %for.body
  %4 = ptrtoint ptr %swa_base.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %swa_base.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %offs.addr.016, i32 %5)
  %cmp10.not.i = icmp uge i32 %offs.addr.016, %5
  %add.i = add i32 %5, 88
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %offs.addr.016)
  %cmp12.i = icmp ugt i32 %add.i, %offs.addr.016
  %or.cond.i = and i1 %cmp10.not.i, %cmp12.i
  br i1 %or.cond.i, label %if.then13.i, label %if.else.i

if.then13.i:                                      ; preds = %do.end9.i
  %sub.i.i = sub i32 %offs.addr.016, %5
  %6 = ptrtoint ptr %iospace.i.i60.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %iospace.i.i60.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not.i.i.i = icmp eq i32 %7, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3
  tail call void @arm_heavy_mb() #3
  %8 = ptrtoint ptr %io_handle7.i.i62.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %io_handle7.i.i62.i, align 4
  br i1 %tobool.not.i.i.i, label %do.body5.i.i.i, label %do.body.i.i.i, !prof !11

do.body.i.i.i:                                    ; preds = %if.then13.i
  call void @__sanitizer_cov_trace_pc() #5
  %10 = ptrtoint ptr %9 to i32
  %and.i.i.i = and i32 %sub.i.i, 255
  %add.i.i.i = add i32 %and.i.i.i, %10
  %and3.i.i.i = and i32 %add.i.i.i, 1048575
  %add4.i.i.i = or i32 %and3.i.i.i, -18874368
  %11 = inttoptr i32 %add4.i.i.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %11, i8 %1) #3, !srcloc !12
  br label %asd_write_swa_byte.exit.i

do.body5.i.i.i:                                   ; preds = %if.then13.i
  call void @__sanitizer_cov_trace_pc() #5
  %add.ptr.i.i.i = getelementptr i8, ptr %9, i32 %sub.i.i
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i, i8 %1) #3, !srcloc !12
  br label %asd_write_swa_byte.exit.i

asd_write_swa_byte.exit.i:                        ; preds = %do.body5.i.i.i, %do.body.i.i.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !13
  br label %__asd_write_reg_byte.exit

if.else.i:                                        ; preds = %do.end9.i
  %12 = ptrtoint ptr %swb_base.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %swb_base.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %offs.addr.016, i32 %13)
  %cmp14.not.i = icmp ult i32 %offs.addr.016, %13
  br i1 %cmp14.not.i, label %if.else.i.if.else20.i_crit_edge, label %land.lhs.true15.i

if.else.i.if.else20.i_crit_edge:                  ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.else20.i

land.lhs.true15.i:                                ; preds = %if.else.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @MBAR0_SWB_SIZE to i32))
  %14 = load i32, ptr @MBAR0_SWB_SIZE, align 4
  %add17.i = add i32 %14, %13
  call void @__sanitizer_cov_trace_cmp4(i32 %add17.i, i32 %offs.addr.016)
  %cmp18.i = icmp ugt i32 %add17.i, %offs.addr.016
  br i1 %cmp18.i, label %if.then19.i, label %land.lhs.true15.i.if.else20.i_crit_edge

land.lhs.true15.i.if.else20.i_crit_edge:          ; preds = %land.lhs.true15.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.else20.i

if.then19.i:                                      ; preds = %land.lhs.true15.i
  %sub.i59.i = sub i32 %offs.addr.016, %13
  %add.i.i = add i32 %sub.i59.i, 128
  %15 = ptrtoint ptr %iospace.i.i60.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %iospace.i.i60.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool.not.i.i61.i = icmp eq i32 %16, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3
  tail call void @arm_heavy_mb() #3
  %17 = ptrtoint ptr %io_handle7.i.i62.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %io_handle7.i.i62.i, align 4
  br i1 %tobool.not.i.i61.i, label %do.body5.i.i69.i, label %do.body.i.i67.i, !prof !11

do.body.i.i67.i:                                  ; preds = %if.then19.i
  call void @__sanitizer_cov_trace_pc() #5
  %19 = ptrtoint ptr %18 to i32
  %and.i.i63.i = and i32 %add.i.i, 255
  %add.i.i64.i = add i32 %and.i.i63.i, %19
  %and3.i.i65.i = and i32 %add.i.i64.i, 1048575
  %add4.i.i66.i = or i32 %and3.i.i65.i, -18874368
  %20 = inttoptr i32 %add4.i.i66.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %20, i8 %1) #3, !srcloc !12
  br label %asd_write_swb_byte.exit.i

do.body5.i.i69.i:                                 ; preds = %if.then19.i
  call void @__sanitizer_cov_trace_pc() #5
  %add.ptr.i.i68.i = getelementptr i8, ptr %18, i32 %add.i.i
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i68.i, i8 %1) #3, !srcloc !12
  br label %asd_write_swb_byte.exit.i

asd_write_swb_byte.exit.i:                        ; preds = %do.body5.i.i69.i, %do.body.i.i67.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !13
  br label %__asd_write_reg_byte.exit

if.else20.i:                                      ; preds = %land.lhs.true15.i.if.else20.i_crit_edge, %if.else.i.if.else20.i_crit_edge
  %21 = ptrtoint ptr %swc_base.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %swc_base.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %offs.addr.016, i32 %22)
  %cmp21.not.i = icmp uge i32 %offs.addr.016, %22
  %add24.i = add i32 %22, 8
  call void @__sanitizer_cov_trace_cmp4(i32 %add24.i, i32 %offs.addr.016)
  %cmp25.i = icmp ugt i32 %add24.i, %offs.addr.016
  %or.cond58.i = and i1 %cmp21.not.i, %cmp25.i
  br i1 %or.cond58.i, label %if.then26.i, label %if.else27.i

if.then26.i:                                      ; preds = %if.else20.i
  %sub.i70.i = sub i32 %offs.addr.016, %22
  %add.i71.i = add i32 %sub.i70.i, 88
  %23 = ptrtoint ptr %iospace.i.i60.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %iospace.i.i60.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool.not.i.i73.i = icmp eq i32 %24, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3
  tail call void @arm_heavy_mb() #3
  %25 = ptrtoint ptr %io_handle7.i.i62.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %io_handle7.i.i62.i, align 4
  br i1 %tobool.not.i.i73.i, label %do.body5.i.i81.i, label %do.body.i.i79.i, !prof !11

do.body.i.i79.i:                                  ; preds = %if.then26.i
  call void @__sanitizer_cov_trace_pc() #5
  %27 = ptrtoint ptr %26 to i32
  %and.i.i75.i = and i32 %add.i71.i, 255
  %add.i.i76.i = add i32 %and.i.i75.i, %27
  %and3.i.i77.i = and i32 %add.i.i76.i, 1048575
  %add4.i.i78.i = or i32 %and3.i.i77.i, -18874368
  %28 = inttoptr i32 %add4.i.i78.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %28, i8 %1) #3, !srcloc !12
  br label %asd_write_swc_byte.exit.i

do.body5.i.i81.i:                                 ; preds = %if.then26.i
  call void @__sanitizer_cov_trace_pc() #5
  %add.ptr.i.i80.i = getelementptr i8, ptr %26, i32 %add.i71.i
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i80.i, i8 %1) #3, !srcloc !12
  br label %asd_write_swc_byte.exit.i

asd_write_swc_byte.exit.i:                        ; preds = %do.body5.i.i81.i, %do.body.i.i79.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !13
  br label %__asd_write_reg_byte.exit

if.else27.i:                                      ; preds = %if.else20.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @MBAR0_SWB_SIZE to i32))
  %29 = load i32, ptr @MBAR0_SWB_SIZE, align 4
  %neg.i.i = sub i32 0, %29
  %and.i.i = and i32 %offs.addr.016, %neg.i.i
  %30 = ptrtoint ptr %asd_ha to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %asd_ha, align 4
  %call.i.i = tail call i32 @pci_write_config_dword(ptr noundef %31, i32 noundef 116, i32 noundef %and.i.i) #3
  %32 = ptrtoint ptr %swb_base.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %and.i.i, ptr %swb_base.i, align 4
  %sub.i84.i = sub i32 %offs.addr.016, %and.i.i
  %add.i85.i = add i32 %sub.i84.i, 128
  %33 = ptrtoint ptr %iospace.i.i60.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %iospace.i.i60.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %tobool.not.i.i87.i = icmp eq i32 %34, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3
  tail call void @arm_heavy_mb() #3
  %35 = ptrtoint ptr %io_handle7.i.i62.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %io_handle7.i.i62.i, align 4
  br i1 %tobool.not.i.i87.i, label %do.body5.i.i95.i, label %do.body.i.i93.i, !prof !11

do.body.i.i93.i:                                  ; preds = %if.else27.i
  call void @__sanitizer_cov_trace_pc() #5
  %37 = ptrtoint ptr %36 to i32
  %and.i.i89.i = and i32 %add.i85.i, 255
  %add.i.i90.i = add i32 %and.i.i89.i, %37
  %and3.i.i91.i = and i32 %add.i.i90.i, 1048575
  %add4.i.i92.i = or i32 %and3.i.i91.i, -18874368
  %38 = inttoptr i32 %add4.i.i92.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %38, i8 %1) #3, !srcloc !12
  br label %asd_write_swb_byte.exit96.i

do.body5.i.i95.i:                                 ; preds = %if.else27.i
  call void @__sanitizer_cov_trace_pc() #5
  %add.ptr.i.i94.i = getelementptr i8, ptr %36, i32 %add.i85.i
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i94.i, i8 %1) #3, !srcloc !12
  br label %asd_write_swb_byte.exit96.i

asd_write_swb_byte.exit96.i:                      ; preds = %do.body5.i.i95.i, %do.body.i.i93.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !13
  br label %__asd_write_reg_byte.exit

__asd_write_reg_byte.exit:                        ; preds = %asd_write_swb_byte.exit96.i, %asd_write_swc_byte.exit.i, %asd_write_swb_byte.exit.i, %asd_write_swa_byte.exit.i
  tail call void @arm_heavy_mb() #3
  %dec = add nsw i32 %count.addr.014, -1
  %inc = add nuw nsw i32 %offs.addr.016, 1
  %incdec.ptr = getelementptr i8, ptr %p.015, i32 1
  %cmp5 = icmp sgt i32 %count.addr.014, 1
  br i1 %cmp5, label %__asd_write_reg_byte.exit.for.body_crit_edge, label %__asd_write_reg_byte.exit.for.end_crit_edge

__asd_write_reg_byte.exit.for.end_crit_edge:      ; preds = %__asd_write_reg_byte.exit
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.end

__asd_write_reg_byte.exit.for.body_crit_edge:     ; preds = %__asd_write_reg_byte.exit
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.body

for.end:                                          ; preds = %__asd_write_reg_byte.exit.for.end_crit_edge, %entry.for.end_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %iolock, i32 noundef %call2) #3
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_write_config_dword(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

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
!9 = !{!"branch_weights", i32 1, i32 2000}
!10 = !{i64 2155959082, i64 2155959581, i64 2155959119, i64 2155959175, i64 2155959209, i64 2155959233, i64 2155959274, i64 2155959295, i64 2155959323, i64 2155959357}
!11 = !{!"branch_weights", i32 2000, i32 1}
!12 = !{i64 4987875}
!13 = !{i64 2155937925}
!14 = !{i64 2155962528, i64 2155963027, i64 2155962565, i64 2155962621, i64 2155962655, i64 2155962679, i64 2155962720, i64 2155962741, i64 2155962769, i64 2155962803}
!15 = !{i64 4987452}
!16 = !{i64 2155939088}
!17 = !{i64 2155965980, i64 2155966479, i64 2155966017, i64 2155966073, i64 2155966107, i64 2155966131, i64 2155966172, i64 2155966193, i64 2155966221, i64 2155966255}
!18 = !{i64 4988072}
!19 = !{i64 2155940251}
!20 = !{i64 2155971254, i64 2155971753, i64 2155971291, i64 2155971347, i64 2155971381, i64 2155971405, i64 2155971446, i64 2155971467, i64 2155971495, i64 2155971529}
!21 = !{i64 4988270}
!22 = !{i64 2155940679}
!23 = !{i64 2155940941}
!24 = !{i64 2155941032}
!25 = !{i64 2155974813, i64 2155975312, i64 2155974850, i64 2155974906, i64 2155974940, i64 2155974964, i64 2155975005, i64 2155975026, i64 2155975054, i64 2155975088}
!26 = !{i64 4987652}
!27 = !{i64 2155941929}
!28 = !{i64 2155942475}
!29 = !{i64 2155942566}
!30 = !{i64 2155978378, i64 2155978877, i64 2155978415, i64 2155978471, i64 2155978505, i64 2155978529, i64 2155978570, i64 2155978591, i64 2155978619, i64 2155978653}
!31 = !{i64 4988490}
!32 = !{i64 2155943467}
!33 = !{i64 2155944013}
!34 = !{i64 2155944104}
!35 = !{i64 2155968131, i64 2155968630, i64 2155968168, i64 2155968224, i64 2155968258, i64 2155968282, i64 2155968323, i64 2155968344, i64 2155968372, i64 2155968406}
!36 = !{i64 2155956075, i64 2155956574, i64 2155956112, i64 2155956168, i64 2155956202, i64 2155956226, i64 2155956267, i64 2155956288, i64 2155956316, i64 2155956350}
