; ModuleID = '/llk/IR_all_yes/drivers/scsi/bfa/bfa_ioc_ct.c_pt.bc'
source_filename = "../drivers/scsi/bfa/bfa_ioc_ct.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.bfa_ioc_hwif_s = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.anon.9 = type { i32, i32, i32 }
%struct.anon.10 = type { i32, i32 }
%struct.anon.11 = type { i32, i32 }
%struct.anon.12 = type { i32, i32, i32, i32, i32, i32 }
%struct.bfa_ioc_s = type { ptr, ptr, %struct.bfa_pcidev_s, ptr, %struct.bfa_timer_s, %struct.bfa_timer_s, %struct.bfa_timer_s, i32, %struct.list_head, ptr, i32, i32, i32, %struct.bfa_ioc_regs_s, ptr, %struct.bfa_ioc_drv_stats_s, i32, i32, i32, i8, %struct.bfa_dma_s, ptr, ptr, %struct.bfa_ioc_mbox_mod_s, ptr, %struct.bfa_iocpf_s, i32, i32, i32, i32, i32, i8, i8, i32 }
%struct.bfa_pcidev_s = type { i32, i8, i16, i16, ptr }
%struct.bfa_timer_s = type { %struct.list_head, ptr, ptr, i32 }
%struct.list_head = type { ptr, ptr }
%struct.bfa_ioc_regs_s = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.bfa_ioc_drv_stats_s = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.bfa_dma_s = type { ptr, i64 }
%struct.bfa_ioc_mbox_mod_s = type { %struct.list_head, i32, [35 x %struct.anon.0] }
%struct.anon.0 = type { ptr, ptr }
%struct.bfa_iocpf_s = type { ptr, ptr, i32, i32, i32 }
%struct.bfi_ioc_image_hdr_s = type { i32, i8, i8, i8, i8, i32, i32, [2 x i32], %struct.bfi_ioc_fwver_s, [4 x i32] }
%struct.bfi_ioc_fwver_s = type { i8, i8, i8, i8, [2 x i8], i8, i8 }

@hwif_ct = internal global { %struct.bfa_ioc_hwif_s, [56 x i8] } zeroinitializer, align 32
@hwif_ct2 = internal global { %struct.bfa_ioc_hwif_s, [56 x i8] } zeroinitializer, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@.str = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"drivers/scsi/bfa/bfa_ioc_ct.c\00", [34 x i8] zeroinitializer }, align 32
@ct_fnreg = internal constant { [4 x %struct.anon.9], [48 x i8] } { [4 x %struct.anon.9] [%struct.anon.9 { i32 102912, i32 103040, i32 81928 }, %struct.anon.9 { i32 103008, i32 103136, i32 82184 }, %struct.anon.9 { i32 103424, i32 103552, i32 82696 }, %struct.anon.9 { i32 103520, i32 103648, i32 82952 }], [48 x i8] zeroinitializer }, align 32
@ct_p0reg = internal constant { [4 x %struct.anon.10], [32 x i8] } { [4 x %struct.anon.10] [%struct.anon.10 { i32 102400, i32 102408 }, %struct.anon.10 { i32 102416, i32 102424 }, %struct.anon.10 { i32 102736, i32 102744 }, %struct.anon.10 { i32 102752, i32 102760 }], [32 x i8] zeroinitializer }, align 32
@ct_p1reg = internal constant { [4 x %struct.anon.11], [32 x i8] } { [4 x %struct.anon.11] [%struct.anon.11 { i32 102404, i32 102412 }, %struct.anon.11 { i32 102420, i32 102428 }, %struct.anon.11 { i32 102740, i32 102748 }, %struct.anon.11 { i32 102756, i32 102764 }], [32 x i8] zeroinitializer }, align 32
@ct2_reg = internal constant { [2 x %struct.anon.12], [48 x i8] } { [2 x %struct.anon.12] [%struct.anon.12 { i32 196608, i32 196672, i32 196888, i32 196736, i32 196744, i32 196752 }, %struct.anon.12 { i32 196640, i32 196704, i32 196888, i32 196740, i32 196748, i32 196756 }], [48 x i8] zeroinitializer }, align 32
@___asan_gen_.1 = private unnamed_addr constant [8 x i8] c"hwif_ct\00", align 1
@___asan_gen_.3 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.20, i32 46, i32 30 }
@___asan_gen_.4 = private unnamed_addr constant [9 x i8] c"hwif_ct2\00", align 1
@___asan_gen_.6 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.20, i32 47, i32 30 }
@___asan_gen_.7 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.9 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.20, i32 80, i32 2 }
@___asan_gen_.10 = private unnamed_addr constant [9 x i8] c"ct_fnreg\00", align 1
@___asan_gen_.12 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.20, i32 145, i32 52 }
@___asan_gen_.13 = private unnamed_addr constant [9 x i8] c"ct_p0reg\00", align 1
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.20, i32 155, i32 33 }
@___asan_gen_.16 = private unnamed_addr constant [9 x i8] c"ct_p1reg\00", align 1
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.20, i32 165, i32 33 }
@___asan_gen_.19 = private unnamed_addr constant [8 x i8] c"ct2_reg\00", align 1
@___asan_gen_.20 = private constant [33 x i8] c"../drivers/scsi/bfa/bfa_ioc_ct.c\00", align 1
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.20, i32 173, i32 2 }
@llvm.compiler.used = appending global [7 x ptr] [ptr @hwif_ct, ptr @hwif_ct2, ptr @.str, ptr @ct_fnreg, ptr @ct_p0reg, ptr @ct_p1reg, ptr @ct2_reg], section "llvm.metadata"
@0 = internal global [7 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hwif_ct to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hwif_ct2 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ct_fnreg to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ct_p0reg to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ct_p1reg to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ct2_reg to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define dso_local void @bfa_ioc_set_ct_hwif(ptr nocapture noundef writeonly %ioc) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  store ptr @bfa_ioc_ct_firmware_lock, ptr getelementptr inbounds (%struct.bfa_ioc_hwif_s, ptr @hwif_ct, i32 0, i32 1), align 4
  store ptr @bfa_ioc_ct_firmware_unlock, ptr getelementptr inbounds (%struct.bfa_ioc_hwif_s, ptr @hwif_ct, i32 0, i32 2), align 4
  store ptr @bfa_ioc_ct_notify_fail, ptr getelementptr inbounds (%struct.bfa_ioc_hwif_s, ptr @hwif_ct, i32 0, i32 6), align 4
  store ptr @bfa_ioc_ct_ownership_reset, ptr getelementptr inbounds (%struct.bfa_ioc_hwif_s, ptr @hwif_ct, i32 0, i32 7), align 4
  store ptr @bfa_ioc_ct_sync_start, ptr getelementptr inbounds (%struct.bfa_ioc_hwif_s, ptr @hwif_ct, i32 0, i32 8), align 4
  store ptr @bfa_ioc_ct_sync_join, ptr getelementptr inbounds (%struct.bfa_ioc_hwif_s, ptr @hwif_ct, i32 0, i32 9), align 4
  store ptr @bfa_ioc_ct_sync_leave, ptr getelementptr inbounds (%struct.bfa_ioc_hwif_s, ptr @hwif_ct, i32 0, i32 10), align 4
  store ptr @bfa_ioc_ct_sync_ack, ptr getelementptr inbounds (%struct.bfa_ioc_hwif_s, ptr @hwif_ct, i32 0, i32 11), align 4
  store ptr @bfa_ioc_ct_sync_complete, ptr getelementptr inbounds (%struct.bfa_ioc_hwif_s, ptr @hwif_ct, i32 0, i32 12), align 4
  store ptr @bfa_ioc_ct_set_cur_ioc_fwstate, ptr getelementptr inbounds (%struct.bfa_ioc_hwif_s, ptr @hwif_ct, i32 0, i32 14), align 4
  store ptr @bfa_ioc_ct_get_cur_ioc_fwstate, ptr getelementptr inbounds (%struct.bfa_ioc_hwif_s, ptr @hwif_ct, i32 0, i32 15), align 4
  store ptr @bfa_ioc_ct_set_alt_ioc_fwstate, ptr getelementptr inbounds (%struct.bfa_ioc_hwif_s, ptr @hwif_ct, i32 0, i32 16), align 4
  store ptr @bfa_ioc_ct_get_alt_ioc_fwstate, ptr getelementptr inbounds (%struct.bfa_ioc_hwif_s, ptr @hwif_ct, i32 0, i32 17), align 4
  store ptr @bfa_ioc_ct_pll_init, ptr @hwif_ct, align 4
  store ptr @bfa_ioc_ct_reg_init, ptr getelementptr inbounds (%struct.bfa_ioc_hwif_s, ptr @hwif_ct, i32 0, i32 3), align 4
  store ptr @bfa_ioc_ct_map_port, ptr getelementptr inbounds (%struct.bfa_ioc_hwif_s, ptr @hwif_ct, i32 0, i32 4), align 4
  store ptr @bfa_ioc_ct_isr_mode_set, ptr getelementptr inbounds (%struct.bfa_ioc_hwif_s, ptr @hwif_ct, i32 0, i32 5), align 4
  %ioc_hwif = getelementptr inbounds %struct.bfa_ioc_s, ptr %ioc, i32 0, i32 24
  %0 = ptrtoint ptr %ioc_hwif to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr @hwif_ct, ptr %ioc_hwif, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @bfa_ioc_ct_pll_init(ptr noundef %rb, i32 noundef %mode) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %mode)
  %cmp = icmp eq i32 %mode, 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6
  tail call void @arm_heavy_mb() #6
  %add.ptr = getelementptr i8, ptr %rb, i32 83468
  br i1 %cmp, label %do.body, label %do.body5

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 0) #6, !srcloc !25
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !26
  tail call void @arm_heavy_mb() #6
  %add.ptr4 = getelementptr i8, ptr %rb, i32 82568
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4, i32 218103808) #6, !srcloc !25
  br label %do.body13

do.body5:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 16777216) #6, !srcloc !25
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !27
  tail call void @arm_heavy_mb() #6
  %add.ptr12 = getelementptr i8, ptr %rb, i32 82568
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr12, i32 33554432) #6, !srcloc !25
  br label %do.body13

do.body13:                                        ; preds = %do.body5, %do.body
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !28
  tail call void @arm_heavy_mb() #6
  %add.ptr16 = getelementptr i8, ptr %rb, i32 82500
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr16, i32 0) #6, !srcloc !25
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !29
  tail call void @arm_heavy_mb() #6
  %add.ptr20 = getelementptr i8, ptr %rb, i32 82508
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr20, i32 0) #6, !srcloc !25
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !30
  tail call void @arm_heavy_mb() #6
  %add.ptr24 = getelementptr i8, ptr %rb, i32 81924
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr24, i32 -1) #6, !srcloc !25
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !31
  tail call void @arm_heavy_mb() #6
  %add.ptr28 = getelementptr i8, ptr %rb, i32 82180
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr28, i32 -1) #6, !srcloc !25
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !32
  tail call void @arm_heavy_mb() #6
  %add.ptr32 = getelementptr i8, ptr %rb, i32 81920
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr32, i32 -1) #6, !srcloc !25
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !33
  tail call void @arm_heavy_mb() #6
  %add.ptr36 = getelementptr i8, ptr %rb, i32 82176
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr36, i32 -1) #6, !srcloc !25
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !34
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr24, i32 -1) #6, !srcloc !25
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !35
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr28, i32 -1) #6, !srcloc !25
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !36
  tail call void @arm_heavy_mb() #6
  %add.ptr48 = getelementptr i8, ptr %rb, i32 82440
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr48, i32 443744512) #6, !srcloc !25
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !37
  tail call void @arm_heavy_mb() #6
  %add.ptr53 = getelementptr i8, ptr %rb, i32 82436
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr53, i32 443744512) #6, !srcloc !25
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !38
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr48, i32 460521728) #6, !srcloc !25
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !39
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr53, i32 460521728) #6, !srcloc !25
  %0 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr24) #6, !srcloc !40
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !41
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %1 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %1(i32 noundef 429496000) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !42
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr32, i32 -1) #6, !srcloc !25
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !43
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr36, i32 -1) #6, !srcloc !25
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !44
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr48, i32 460521472) #6, !srcloc !25
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !45
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr53, i32 460521472) #6, !srcloc !25
  br i1 %cmp, label %do.body118.critedge, label %do.body88

do.body88:                                        ; preds = %do.body13
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !46
  tail call void @arm_heavy_mb() #6
  %add.ptr91 = getelementptr i8, ptr %rb, i32 145436
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr91, i32 16777216) #6, !srcloc !25
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !47
  tail call void @arm_heavy_mb() #6
  %add.ptr95 = getelementptr i8, ptr %rb, i32 146460
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr95, i32 16777216) #6, !srcloc !25
  %add.ptr99.c = getelementptr i8, ptr %rb, i32 100352
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr99.c) #6, !srcloc !40
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !48
  %3 = and i32 %2, -131073
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !49
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr99.c, i32 %3) #6, !srcloc !25
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %4 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %4(i32 noundef 214748000) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !50
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr91, i32 0) #6, !srcloc !25
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !51
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr95, i32 0) #6, !srcloc !25
  br label %do.body118

do.body118.critedge:                              ; preds = %do.body13
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr99.c168 = getelementptr i8, ptr %rb, i32 100352
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr99.c168) #6, !srcloc !40
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !48
  %6 = and i32 %5, -131073
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !49
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr99.c168, i32 %6) #6, !srcloc !25
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %7 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %7(i32 noundef 214748000) #6
  br label %do.body118

do.body118:                                       ; preds = %do.body118.critedge, %do.body88
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !52
  tail call void @arm_heavy_mb() #6
  %add.ptr121 = getelementptr i8, ptr %rb, i32 82464
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr121, i32 67108864) #6, !srcloc !25
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %8 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %8(i32 noundef 214748000) #6
  %add.ptr124 = getelementptr i8, ptr %rb, i32 82468
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr124) #6, !srcloc !40
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !53
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !54
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr121, i32 0) #6, !srcloc !25
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @bfa_ioc_ct_reg_init(ptr noundef %ioc) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %pci_func = getelementptr inbounds %struct.bfa_ioc_s, ptr %ioc, i32 0, i32 2, i32 1
  %0 = ptrtoint ptr %pci_func to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %pci_func, align 4
  %conv = zext i8 %1 to i32
  %pci_bar_kva = getelementptr inbounds %struct.bfa_ioc_s, ptr %ioc, i32 0, i32 2, i32 4
  %2 = ptrtoint ptr %pci_bar_kva to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pci_bar_kva, align 4
  %arrayidx = getelementptr [4 x %struct.anon.9], ptr @ct_fnreg, i32 0, i32 %conv
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 %5
  %ioc_regs = getelementptr inbounds %struct.bfa_ioc_s, ptr %ioc, i32 0, i32 13
  %hfn_mbox2 = getelementptr inbounds %struct.bfa_ioc_s, ptr %ioc, i32 0, i32 13, i32 1
  %6 = ptrtoint ptr %hfn_mbox2 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %add.ptr, ptr %hfn_mbox2, align 4
  %lpu_mbox = getelementptr [4 x %struct.anon.9], ptr @ct_fnreg, i32 0, i32 %conv, i32 1
  %7 = ptrtoint ptr %lpu_mbox to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %lpu_mbox, align 4
  %add.ptr4 = getelementptr i8, ptr %3, i32 %8
  %lpu_mbox6 = getelementptr inbounds %struct.bfa_ioc_s, ptr %ioc, i32 0, i32 13, i32 3
  %9 = ptrtoint ptr %lpu_mbox6 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %add.ptr4, ptr %lpu_mbox6, align 4
  %hfn_pgn = getelementptr [4 x %struct.anon.9], ptr @ct_fnreg, i32 0, i32 %conv, i32 2
  %10 = ptrtoint ptr %hfn_pgn to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %hfn_pgn, align 4
  %add.ptr8 = getelementptr i8, ptr %3, i32 %11
  %host_page_num_fn = getelementptr inbounds %struct.bfa_ioc_s, ptr %ioc, i32 0, i32 13, i32 13
  %12 = ptrtoint ptr %host_page_num_fn to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %add.ptr8, ptr %host_page_num_fn, align 4
  %port_id = getelementptr inbounds %struct.bfa_ioc_s, ptr %ioc, i32 0, i32 19
  %13 = ptrtoint ptr %port_id to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %port_id, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %cmp = icmp eq i8 %14, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr12 = getelementptr i8, ptr %3, i32 82496
  %heartbeat = getelementptr inbounds %struct.bfa_ioc_s, ptr %ioc, i32 0, i32 13, i32 14
  %15 = ptrtoint ptr %heartbeat to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %add.ptr12, ptr %heartbeat, align 4
  %add.ptr14 = getelementptr i8, ptr %3, i32 82500
  %ioc_fwstate = getelementptr inbounds %struct.bfa_ioc_s, ptr %ioc, i32 0, i32 13, i32 15
  %16 = ptrtoint ptr %ioc_fwstate to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %add.ptr14, ptr %ioc_fwstate, align 4
  %add.ptr16 = getelementptr i8, ptr %3, i32 82508
  %alt_ioc_fwstate = getelementptr inbounds %struct.bfa_ioc_s, ptr %ioc, i32 0, i32 13, i32 16
  %17 = ptrtoint ptr %alt_ioc_fwstate to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %add.ptr16, ptr %alt_ioc_fwstate, align 4
  %arrayidx18 = getelementptr [4 x %struct.anon.10], ptr @ct_p0reg, i32 0, i32 %conv
  %18 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx18, align 4
  %add.ptr19 = getelementptr i8, ptr %3, i32 %19
  %20 = ptrtoint ptr %ioc_regs to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %add.ptr19, ptr %ioc_regs, align 4
  %lpu = getelementptr [4 x %struct.anon.10], ptr @ct_p0reg, i32 0, i32 %conv, i32 1
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr28 = getelementptr i8, ptr %3, i32 82504
  %heartbeat30 = getelementptr inbounds %struct.bfa_ioc_s, ptr %ioc, i32 0, i32 13, i32 14
  %21 = ptrtoint ptr %heartbeat30 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %add.ptr28, ptr %heartbeat30, align 4
  %add.ptr31 = getelementptr i8, ptr %3, i32 82508
  %ioc_fwstate33 = getelementptr inbounds %struct.bfa_ioc_s, ptr %ioc, i32 0, i32 13, i32 15
  %22 = ptrtoint ptr %ioc_fwstate33 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %add.ptr31, ptr %ioc_fwstate33, align 4
  %add.ptr34 = getelementptr i8, ptr %3, i32 82500
  %alt_ioc_fwstate36 = getelementptr inbounds %struct.bfa_ioc_s, ptr %ioc, i32 0, i32 13, i32 16
  %23 = ptrtoint ptr %alt_ioc_fwstate36 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %add.ptr34, ptr %alt_ioc_fwstate36, align 4
  %arrayidx37 = getelementptr [4 x %struct.anon.11], ptr @ct_p1reg, i32 0, i32 %conv
  %24 = ptrtoint ptr %arrayidx37 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %arrayidx37, align 4
  %add.ptr39 = getelementptr i8, ptr %3, i32 %25
  %26 = ptrtoint ptr %ioc_regs to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %add.ptr39, ptr %ioc_regs, align 4
  %lpu43 = getelementptr [4 x %struct.anon.11], ptr @ct_p1reg, i32 0, i32 %conv, i32 1
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %.sink140 = phi i32 [ 102844, %if.else ], [ 102828, %if.then ]
  %.sink = phi i32 [ 102828, %if.else ], [ 102844, %if.then ]
  %.pn.in = phi ptr [ %lpu43, %if.else ], [ %lpu, %if.then ]
  %add.ptr47 = getelementptr i8, ptr %3, i32 %.sink140
  %add.ptr50 = getelementptr i8, ptr %3, i32 %.sink
  %27 = ptrtoint ptr %.pn.in to i32
  call void @__asan_load4_noabort(i32 %27)
  %.pn = load i32, ptr %.pn.in, align 4
  %add.ptr44.sink = getelementptr i8, ptr %3, i32 %.pn
  %28 = getelementptr inbounds %struct.bfa_ioc_s, ptr %ioc, i32 0, i32 13, i32 2
  %29 = ptrtoint ptr %28 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %add.ptr44.sink, ptr %28, align 4
  %30 = getelementptr inbounds %struct.bfa_ioc_s, ptr %ioc, i32 0, i32 13, i32 17
  %31 = ptrtoint ptr %30 to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %add.ptr47, ptr %30, align 4
  %32 = getelementptr inbounds %struct.bfa_ioc_s, ptr %ioc, i32 0, i32 13, i32 18
  %33 = ptrtoint ptr %32 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %add.ptr50, ptr %32, align 4
  %add.ptr53 = getelementptr i8, ptr %3, i32 100352
  %pss_ctl_reg = getelementptr inbounds %struct.bfa_ioc_s, ptr %ioc, i32 0, i32 13, i32 5
  %34 = ptrtoint ptr %pss_ctl_reg to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %add.ptr53, ptr %pss_ctl_reg, align 4
  %add.ptr55 = getelementptr i8, ptr %3, i32 100368
  %pss_err_status_reg = getelementptr inbounds %struct.bfa_ioc_s, ptr %ioc, i32 0, i32 13, i32 6
  %35 = ptrtoint ptr %pss_err_status_reg to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %add.ptr55, ptr %pss_err_status_reg, align 4
  %add.ptr57 = getelementptr i8, ptr %3, i32 82436
  %app_pll_fast_ctl_reg = getelementptr inbounds %struct.bfa_ioc_s, ptr %ioc, i32 0, i32 13, i32 7
  %36 = ptrtoint ptr %app_pll_fast_ctl_reg to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %add.ptr57, ptr %app_pll_fast_ctl_reg, align 4
  %add.ptr59 = getelementptr i8, ptr %3, i32 82440
  %app_pll_slow_ctl_reg = getelementptr inbounds %struct.bfa_ioc_s, ptr %ioc, i32 0, i32 13, i32 8
  %37 = ptrtoint ptr %app_pll_slow_ctl_reg to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %add.ptr59, ptr %app_pll_slow_ctl_reg, align 4
  %add.ptr61 = getelementptr i8, ptr %3, i32 82480
  %ioc_sem_reg = getelementptr inbounds %struct.bfa_ioc_s, ptr %ioc, i32 0, i32 13, i32 9
  %38 = ptrtoint ptr %ioc_sem_reg to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %add.ptr61, ptr %ioc_sem_reg, align 4
  %add.ptr63 = getelementptr i8, ptr %3, i32 82484
  %ioc_usage_sem_reg = getelementptr inbounds %struct.bfa_ioc_s, ptr %ioc, i32 0, i32 13, i32 10
  %39 = ptrtoint ptr %ioc_usage_sem_reg to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %add.ptr63, ptr %ioc_usage_sem_reg, align 4
  %add.ptr65 = getelementptr i8, ptr %3, i32 82488
  %ioc_init_sem_reg = getelementptr inbounds %struct.bfa_ioc_s, ptr %ioc, i32 0, i32 13, i32 11
  %40 = ptrtoint ptr %ioc_init_sem_reg to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %add.ptr65, ptr %ioc_init_sem_reg, align 4
  %add.ptr67 = getelementptr i8, ptr %3, i32 83488
  %ioc_usage_reg = getelementptr inbounds %struct.bfa_ioc_s, ptr %ioc, i32 0, i32 13, i32 12
  %41 = ptrtoint ptr %ioc_usage_reg to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %add.ptr67, ptr %ioc_usage_reg, align 4
  %add.ptr69 = getelementptr i8, ptr %3, i32 83492
  %ioc_fail_sync = getelementptr inbounds %struct.bfa_ioc_s, ptr %ioc, i32 0, i32 13, i32 20
  %42 = ptrtoint ptr %ioc_fail_sync to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %add.ptr69, ptr %ioc_fail_sync, align 4
  %add.ptr71 = getelementptr i8, ptr %3, i32 32768
  %smem_page_start = getelementptr inbounds %struct.bfa_ioc_s, ptr %ioc, i32 0, i32 13, i32 23
  %43 = ptrtoint ptr %smem_page_start to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %add.ptr71, ptr %smem_page_start, align 4
  %smem_pg0 = getelementptr inbounds %struct.bfa_ioc_s, ptr %ioc, i32 0, i32 13, i32 24
  %44 = ptrtoint ptr %smem_pg0 to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 384, ptr %smem_pg0, align 4
  %add.ptr74 = getelementptr i8, ptr %3, i32 100376
  %err_set = getelementptr inbounds %struct.bfa_ioc_s, ptr %ioc, i32 0, i32 13, i32 19
  %45 = ptrtoint ptr %err_set to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %add.ptr74, ptr %err_set, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @bfa_ioc_ct_map_port(ptr nocapture noundef %ioc) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %pci_bar_kva = getelementptr inbounds %struct.bfa_ioc_s, ptr %ioc, i32 0, i32 2, i32 4
  %0 = ptrtoint ptr %pci_bar_kva to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pci_bar_kva, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 83460
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #6, !srcloc !40
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !55
  %pci_func = getelementptr inbounds %struct.bfa_ioc_s, ptr %ioc, i32 0, i32 2, i32 1
  %4 = ptrtoint ptr %pci_func to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %pci_func, align 4
  %conv = zext i8 %5 to i32
  %mul = shl nuw nsw i32 %conv, 3
  %shr = lshr i32 %3, %mul
  %6 = trunc i32 %shr to i8
  %7 = lshr i8 %6, 4
  %conv4 = and i8 %7, 3
  %port_id = getelementptr inbounds %struct.bfa_ioc_s, ptr %ioc, i32 0, i32 19
  %8 = ptrtoint ptr %port_id to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %conv4, ptr %port_id, align 8
  %trcmod = getelementptr inbounds %struct.bfa_ioc_s, ptr %ioc, i32 0, i32 14
  %9 = ptrtoint ptr %trcmod to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %trcmod, align 8
  %conv7 = zext i8 %5 to i64
  tail call void @__bfa_trc(ptr noundef %10, i32 noundef 4100, i32 noundef 317, i64 noundef %conv7) #6
  %11 = ptrtoint ptr %trcmod to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %trcmod, align 8
  %13 = ptrtoint ptr %port_id to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %port_id, align 8
  %conv10 = zext i8 %14 to i64
  tail call void @__bfa_trc(ptr noundef %12, i32 noundef 4100, i32 noundef 318, i64 noundef %conv10) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @bfa_ioc_ct_isr_mode_set(ptr nocapture noundef readonly %ioc, i32 noundef %msix) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %pci_bar_kva = getelementptr inbounds %struct.bfa_ioc_s, ptr %ioc, i32 0, i32 2, i32 4
  %0 = ptrtoint ptr %pci_bar_kva to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pci_bar_kva, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 83460
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #6, !srcloc !40
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !56
  %trcmod = getelementptr inbounds %struct.bfa_ioc_s, ptr %ioc, i32 0, i32 14
  %4 = ptrtoint ptr %trcmod to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %trcmod, align 8
  %conv = zext i32 %3 to i64
  tail call void @__bfa_trc(ptr noundef %5, i32 noundef 4100, i32 noundef 344, i64 noundef %conv) #6
  %pci_func = getelementptr inbounds %struct.bfa_ioc_s, ptr %ioc, i32 0, i32 2, i32 1
  %6 = ptrtoint ptr %pci_func to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %pci_func, align 4
  %conv3 = zext i8 %7 to i32
  %mul = shl nuw nsw i32 %conv3, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %msix)
  %tobool.not = icmp eq i32 %msix, 0
  %8 = shl i32 7, %mul
  %9 = and i32 %8, %3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool4.not = icmp eq i32 %9, 0
  %or.cond43 = xor i1 %tobool.not, %tobool4.not
  br i1 %or.cond43, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %. = zext i1 %tobool.not to i32
  %neg = xor i32 %8, -1
  %and15 = and i32 %3, %neg
  %shl20 = shl nuw i32 %., %mul
  %or = or i32 %and15, %shl20
  %10 = ptrtoint ptr %trcmod to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %trcmod, align 8
  %conv22 = zext i32 %or to i64
  tail call void @__bfa_trc(ptr noundef %11, i32 noundef 4100, i32 noundef 362, i64 noundef %conv22) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !57
  tail call void @arm_heavy_mb() #6
  %12 = tail call i32 @llvm.bswap.i32(i32 %or)
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %12) #6, !srcloc !25
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define dso_local void @bfa_ioc_set_ct2_hwif(ptr nocapture noundef writeonly %ioc) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  store ptr @bfa_ioc_ct_firmware_lock, ptr getelementptr inbounds (%struct.bfa_ioc_hwif_s, ptr @hwif_ct2, i32 0, i32 1), align 4
  store ptr @bfa_ioc_ct_firmware_unlock, ptr getelementptr inbounds (%struct.bfa_ioc_hwif_s, ptr @hwif_ct2, i32 0, i32 2), align 4
  store ptr @bfa_ioc_ct_notify_fail, ptr getelementptr inbounds (%struct.bfa_ioc_hwif_s, ptr @hwif_ct2, i32 0, i32 6), align 4
  store ptr @bfa_ioc_ct_ownership_reset, ptr getelementptr inbounds (%struct.bfa_ioc_hwif_s, ptr @hwif_ct2, i32 0, i32 7), align 4
  store ptr @bfa_ioc_ct_sync_start, ptr getelementptr inbounds (%struct.bfa_ioc_hwif_s, ptr @hwif_ct2, i32 0, i32 8), align 4
  store ptr @bfa_ioc_ct_sync_join, ptr getelementptr inbounds (%struct.bfa_ioc_hwif_s, ptr @hwif_ct2, i32 0, i32 9), align 4
  store ptr @bfa_ioc_ct_sync_leave, ptr getelementptr inbounds (%struct.bfa_ioc_hwif_s, ptr @hwif_ct2, i32 0, i32 10), align 4
  store ptr @bfa_ioc_ct_sync_ack, ptr getelementptr inbounds (%struct.bfa_ioc_hwif_s, ptr @hwif_ct2, i32 0, i32 11), align 4
  store ptr @bfa_ioc_ct_sync_complete, ptr getelementptr inbounds (%struct.bfa_ioc_hwif_s, ptr @hwif_ct2, i32 0, i32 12), align 4
  store ptr @bfa_ioc_ct_set_cur_ioc_fwstate, ptr getelementptr inbounds (%struct.bfa_ioc_hwif_s, ptr @hwif_ct2, i32 0, i32 14), align 4
  store ptr @bfa_ioc_ct_get_cur_ioc_fwstate, ptr getelementptr inbounds (%struct.bfa_ioc_hwif_s, ptr @hwif_ct2, i32 0, i32 15), align 4
  store ptr @bfa_ioc_ct_set_alt_ioc_fwstate, ptr getelementptr inbounds (%struct.bfa_ioc_hwif_s, ptr @hwif_ct2, i32 0, i32 16), align 4
  store ptr @bfa_ioc_ct_get_alt_ioc_fwstate, ptr getelementptr inbounds (%struct.bfa_ioc_hwif_s, ptr @hwif_ct2, i32 0, i32 17), align 4
  store ptr @bfa_ioc_ct2_pll_init, ptr @hwif_ct2, align 4
  store ptr @bfa_ioc_ct2_reg_init, ptr getelementptr inbounds (%struct.bfa_ioc_hwif_s, ptr @hwif_ct2, i32 0, i32 3), align 4
  store ptr @bfa_ioc_ct2_map_port, ptr getelementptr inbounds (%struct.bfa_ioc_hwif_s, ptr @hwif_ct2, i32 0, i32 4), align 4
  store ptr @bfa_ioc_ct2_lpu_read_stat, ptr getelementptr inbounds (%struct.bfa_ioc_hwif_s, ptr @hwif_ct2, i32 0, i32 13), align 4
  store ptr null, ptr getelementptr inbounds (%struct.bfa_ioc_hwif_s, ptr @hwif_ct2, i32 0, i32 5), align 4
  %ioc_hwif = getelementptr inbounds %struct.bfa_ioc_s, ptr %ioc, i32 0, i32 24
  %0 = ptrtoint ptr %ioc_hwif to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr @hwif_ct2, ptr %ioc_hwif, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @bfa_ioc_ct2_pll_init(ptr noundef %rb, i32 %mode) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %rb, i32 84368
  %0 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #6, !srcloc !40
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !58
  call void @__sanitizer_cov_trace_const_cmp4(i32 393216, i32 %0)
  %cmp = icmp eq i32 %0, 393216
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call fastcc void @bfa_ioc_ct2_clk_reset(ptr noundef %rb)
  %add.ptr.i = getelementptr i8, ptr %rb, i32 100544
  %1 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #6, !srcloc !40
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !59
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !60
  tail call void @arm_heavy_mb() #6
  %2 = and i32 %1, -16777217
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %2) #6, !srcloc !25
  %add.ptr5.i = getelementptr i8, ptr %rb, i32 100552
  %3 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5.i) #6, !srcloc !40
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !61
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !62
  tail call void @arm_heavy_mb() #6
  %4 = or i32 %3, 16777216
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5.i, i32 %4) #6, !srcloc !25
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !63
  tail call void @arm_heavy_mb() #6
  %add.ptr.i113 = getelementptr i8, ptr %rb, i32 159952
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i113, i32 402653184) #6, !srcloc !25
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !64
  tail call void @arm_heavy_mb() #6
  %add.ptr3.i = getelementptr i8, ptr %rb, i32 159956
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i, i32 402653184) #6, !srcloc !25
  tail call fastcc void @bfa_ioc_ct2_clk_reset(ptr noundef %rb)
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #6, !srcloc !40
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !59
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !60
  tail call void @arm_heavy_mb() #6
  %6 = and i32 %5, -16777217
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %6) #6, !srcloc !25
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5.i) #6, !srcloc !40
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !61
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !62
  tail call void @arm_heavy_mb() #6
  %8 = or i32 %7, 16777216
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5.i, i32 %8) #6, !srcloc !25
  br label %if.end12

if.else:                                          ; preds = %entry
  %add.ptr4 = getelementptr i8, ptr %rb, i32 161372
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr4) #6, !srcloc !40
  %10 = tail call i32 @llvm.bswap.i32(i32 %9)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !65
  call void @__sanitizer_cov_trace_const_cmp4(i32 326, i32 %10)
  %cmp8 = icmp ugt i32 %10, 326
  call void @__sanitizer_cov_trace_const_cmp4(i32 786432, i32 %0)
  %cmp9 = icmp eq i32 %0, 786432
  %or.cond = select i1 %cmp8, i1 %cmp9, i1 false
  br i1 %or.cond, label %if.then10, label %if.else11

if.then10:                                        ; preds = %if.else
  %add.ptr.i.i = getelementptr i8, ptr %rb, i32 160804
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #6, !srcloc !40
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !66
  %12 = and i32 %11, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool.not.i = icmp eq i32 %12, 0
  br i1 %tobool.not.i, label %if.then10.if.end.i_crit_edge, label %if.then.i

if.then10.if.end.i_crit_edge:                     ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i

if.then.i:                                        ; preds = %if.then10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !67
  tail call void @arm_heavy_mb() #6
  %add.ptr.i43.i = getelementptr i8, ptr %rb, i32 160800
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i43.i, i32 33554432) #6, !srcloc !25
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %if.end.i.i.for.body.i.i_crit_edge, %if.then.i
  %i.028.i.i = phi i32 [ 0, %if.then.i ], [ %inc.i.i, %if.end.i.i.for.body.i.i_crit_edge ]
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #6, !srcloc !40
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !68
  %14 = and i32 %13, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool.not.i.i = icmp eq i32 %14, 0
  br i1 %tobool.not.i.i, label %for.body.i.i.if.end.i_crit_edge, label %if.end.i.i

for.body.i.i.if.end.i_crit_edge:                  ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i

if.end.i.i:                                       ; preds = %for.body.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %15 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %15(i32 noundef 214748000) #6
  %inc.i.i = add nuw nsw i32 %i.028.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, 1000
  br i1 %exitcond.not.i.i, label %do.end10.i.i, label %if.end.i.i.for.body.i.i_crit_edge

if.end.i.i.for.body.i.i_crit_edge:                ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i.i

do.end10.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 813, i32 noundef 9, ptr noundef null) #6
  br label %if.end.i

if.end.i:                                         ; preds = %do.end10.i.i, %for.body.i.i.if.end.i_crit_edge, %if.then10.if.end.i_crit_edge
  %add.ptr.i116 = getelementptr i8, ptr %rb, i32 160784
  br label %for.body.i

for.body.i:                                       ; preds = %if.end5.i.for.body.i_crit_edge, %if.end.i
  %i.044.i = phi i32 [ 0, %if.end.i ], [ %inc.i, %if.end5.i.for.body.i_crit_edge ]
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i116) #6, !srcloc !40
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !69
  call void @__sanitizer_cov_trace_const_cmp4(i32 16777248, i32 %16)
  %cmp3.i = icmp eq i32 %16, 16777248
  br i1 %cmp3.i, label %for.body.i.bfa_ioc_ct2_wait_till_nfc_running.exit_crit_edge, label %if.end5.i

for.body.i.bfa_ioc_ct2_wait_till_nfc_running.exit_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %bfa_ioc_ct2_wait_till_nfc_running.exit

if.end5.i:                                        ; preds = %for.body.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %17 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %17(i32 noundef 214748000) #6
  %inc.i = add nuw nsw i32 %i.044.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 4000
  br i1 %exitcond.not.i, label %for.end.i, label %if.end5.i.for.body.i_crit_edge

if.end5.i.for.body.i_crit_edge:                   ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

for.end.i:                                        ; preds = %if.end5.i
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i116) #6, !srcloc !40
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !70
  call void @__sanitizer_cov_trace_const_cmp4(i32 16777248, i32 %18)
  %cmp12.not.i = icmp eq i32 %18, 16777248
  br i1 %cmp12.not.i, label %for.end.i.bfa_ioc_ct2_wait_till_nfc_running.exit_crit_edge, label %do.end.i, !prof !71

for.end.i.bfa_ioc_ct2_wait_till_nfc_running.exit_crit_edge: ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %bfa_ioc_ct2_wait_till_nfc_running.exit

do.end.i:                                         ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 884, i32 noundef 9, ptr noundef null) #6
  br label %bfa_ioc_ct2_wait_till_nfc_running.exit

bfa_ioc_ct2_wait_till_nfc_running.exit:           ; preds = %do.end.i, %for.end.i.bfa_ioc_ct2_wait_till_nfc_running.exit_crit_edge, %for.body.i.bfa_ioc_ct2_wait_till_nfc_running.exit_crit_edge
  %add.ptr.i117 = getelementptr i8, ptr %rb, i32 100352
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i117) #6, !srcloc !40
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !72
  %20 = or i32 %19, 50331648
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !73
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i117, i32 %20) #6, !srcloc !25
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !74
  tail call void @arm_heavy_mb() #6
  %add.ptr6.i = getelementptr i8, ptr %rb, i32 159880
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr6.i, i32 256) #6, !srcloc !25
  %add.ptr9.i = getelementptr i8, ptr %rb, i32 84020
  br label %for.body.i121

for.cond.i:                                       ; preds = %for.body.i121
  %inc.i118 = add nuw nsw i32 %i.0144.i, 1
  %exitcond.not.i119 = icmp eq i32 %inc.i118, 1000000
  br i1 %exitcond.not.i119, label %do.end27.i, label %for.cond.i.for.body.i121_crit_edge

for.cond.i.for.body.i121_crit_edge:               ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i121

for.body.i121:                                    ; preds = %for.cond.i.for.body.i121_crit_edge, %bfa_ioc_ct2_wait_till_nfc_running.exit
  %i.0144.i = phi i32 [ 0, %bfa_ioc_ct2_wait_till_nfc_running.exit ], [ %inc.i118, %for.cond.i.for.body.i121_crit_edge ]
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr9.i) #6, !srcloc !40
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !75
  %22 = and i32 %21, 536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool.not.i120 = icmp eq i32 %22, 0
  br i1 %tobool.not.i120, label %for.cond.i, label %for.body.i121.for.body43.i.preheader_crit_edge

for.body.i121.for.body43.i.preheader_crit_edge:   ; preds = %for.body.i121
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body43.i.preheader

do.end27.i:                                       ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 854, i32 noundef 9, ptr noundef null) #6
  br label %for.body43.i.preheader

for.body43.i.preheader:                           ; preds = %do.end27.i, %for.body.i121.for.body43.i.preheader_crit_edge
  br label %for.body43.i

for.cond41.i:                                     ; preds = %for.body43.i
  %inc55.i = add nuw nsw i32 %i.1145.i, 1
  %exitcond147.not.i = icmp eq i32 %inc55.i, 1000000
  br i1 %exitcond147.not.i, label %do.end75.i, label %for.cond41.i.for.body43.i_crit_edge

for.cond41.i.for.body43.i_crit_edge:              ; preds = %for.cond41.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body43.i

for.body43.i:                                     ; preds = %for.cond41.i.for.body43.i_crit_edge, %for.body43.i.preheader
  %i.1145.i = phi i32 [ %inc55.i, %for.cond41.i.for.body43.i_crit_edge ], [ 0, %for.body43.i.preheader ]
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr9.i) #6, !srcloc !40
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !76
  %24 = and i32 %23, 536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool51.not.i = icmp eq i32 %24, 0
  br i1 %tobool51.not.i, label %for.body43.i.if.end81.i_crit_edge, label %for.cond41.i

for.body43.i.if.end81.i_crit_edge:                ; preds = %for.body43.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end81.i

do.end75.i:                                       ; preds = %for.cond41.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 862, i32 noundef 9, ptr noundef null) #6
  br label %if.end81.i

if.end81.i:                                       ; preds = %do.end75.i, %for.body43.i.if.end81.i_crit_edge
  %add.ptr91.i = getelementptr i8, ptr %rb, i32 159872
  %25 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr91.i) #6, !srcloc !40
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !77
  %26 = and i32 %25, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %tobool97.not.i = icmp eq i32 %26, 0
  br i1 %tobool97.not.i, label %if.end81.i.if.end12_crit_edge, label %do.end113.i, !prof !71

if.end81.i.if.end12_crit_edge:                    ; preds = %if.end81.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end12

do.end113.i:                                      ; preds = %if.end81.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 865, i32 noundef 9, ptr noundef null) #6
  br label %if.end12

if.else11:                                        ; preds = %if.else
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !78
  tail call void @arm_heavy_mb() #6
  %add.ptr.i122 = getelementptr i8, ptr %rb, i32 160804
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i122, i32 33554432) #6, !srcloc !25
  br label %for.body.i124

for.body.i124:                                    ; preds = %if.end.i127.for.body.i124_crit_edge, %if.else11
  %i.034.i = phi i32 [ 0, %if.else11 ], [ %inc.i125, %if.end.i127.for.body.i124_crit_edge ]
  %27 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i122) #6, !srcloc !40
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !66
  %28 = and i32 %27, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool.not.i123 = icmp eq i32 %28, 0
  br i1 %tobool.not.i123, label %if.end.i127, label %for.body.i124.for.end.i128_crit_edge

for.body.i124.for.end.i128_crit_edge:             ; preds = %for.body.i124
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.i128

if.end.i127:                                      ; preds = %for.body.i124
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %29 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %29(i32 noundef 214748000) #6
  %inc.i125 = add nuw nsw i32 %i.034.i, 1
  %exitcond.not.i126 = icmp eq i32 %inc.i125, 1000
  br i1 %exitcond.not.i126, label %if.end.i127.for.end.i128_crit_edge, label %if.end.i127.for.body.i124_crit_edge

if.end.i127.for.body.i124_crit_edge:              ; preds = %if.end.i127
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i124

if.end.i127.for.end.i128_crit_edge:               ; preds = %if.end.i127
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.i128

for.end.i128:                                     ; preds = %if.end.i127.for.end.i128_crit_edge, %for.body.i124.for.end.i128_crit_edge
  %30 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i122) #6, !srcloc !40
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !66
  %31 = and i32 %30, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %tobool2.not.i = icmp eq i32 %31, 0
  br i1 %tobool2.not.i, label %do.end15.i, label %for.end.i128.bfa_ioc_ct2_nfc_halt.exit_crit_edge, !prof !79

for.end.i128.bfa_ioc_ct2_nfc_halt.exit_crit_edge: ; preds = %for.end.i128
  call void @__sanitizer_cov_trace_pc() #8
  br label %bfa_ioc_ct2_nfc_halt.exit

do.end15.i:                                       ; preds = %for.end.i128
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 797, i32 noundef 9, ptr noundef null) #6
  br label %bfa_ioc_ct2_nfc_halt.exit

bfa_ioc_ct2_nfc_halt.exit:                        ; preds = %do.end15.i, %for.end.i128.bfa_ioc_ct2_nfc_halt.exit_crit_edge
  tail call fastcc void @bfa_ioc_ct2_clk_reset(ptr noundef %rb)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !63
  tail call void @arm_heavy_mb() #6
  %add.ptr.i129 = getelementptr i8, ptr %rb, i32 159952
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i129, i32 402653184) #6, !srcloc !25
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !64
  tail call void @arm_heavy_mb() #6
  %add.ptr3.i130 = getelementptr i8, ptr %rb, i32 159956
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i130, i32 402653184) #6, !srcloc !25
  tail call fastcc void @bfa_ioc_ct2_clk_reset(ptr noundef %rb)
  br label %if.end12

if.end12:                                         ; preds = %bfa_ioc_ct2_nfc_halt.exit, %do.end113.i, %if.end81.i.if.end12_crit_edge, %if.then
  %add.ptr15 = getelementptr i8, ptr %rb, i32 84132
  %32 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr15) #6, !srcloc !40
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !80
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !81
  tail call void @arm_heavy_mb() #6
  %33 = and i32 %32, -5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr15, i32 %33) #6, !srcloc !25
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !82
  tail call void @arm_heavy_mb() #6
  %add.ptr23 = getelementptr i8, ptr %rb, i32 196760
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr23, i32 16777216) #6, !srcloc !25
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !83
  tail call void @arm_heavy_mb() #6
  %add.ptr27 = getelementptr i8, ptr %rb, i32 196764
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr27, i32 16777216) #6, !srcloc !25
  %add.ptr30 = getelementptr i8, ptr %rb, i32 83476
  %34 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr30) #6, !srcloc !40
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !84
  %35 = and i32 %34, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %tobool.not = icmp eq i32 %35, 0
  br i1 %tobool.not, label %if.end12.if.end74_crit_edge, label %if.then35

if.end12.if.end74_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end74

if.then35:                                        ; preds = %if.end12
  %add.ptr38 = getelementptr i8, ptr %rb, i32 196744
  %36 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr38) #6, !srcloc !40
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !85
  call void @__sanitizer_cov_trace_const_cmp4(i32 16777216, i32 %36)
  %cmp42 = icmp eq i32 %36, 16777216
  br i1 %cmp42, label %do.body44, label %if.then35.if.end54_crit_edge

if.then35.if.end54_crit_edge:                     ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end54

do.body44:                                        ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !86
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr38, i32 16777216) #6, !srcloc !25
  %37 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr38) #6, !srcloc !40
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !87
  br label %if.end54

if.end54:                                         ; preds = %do.body44, %if.then35.if.end54_crit_edge
  %add.ptr57 = getelementptr i8, ptr %rb, i32 196748
  %38 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr57) #6, !srcloc !40
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !88
  call void @__sanitizer_cov_trace_const_cmp4(i32 16777216, i32 %38)
  %cmp61 = icmp eq i32 %38, 16777216
  br i1 %cmp61, label %do.body63, label %if.end54.if.end74_crit_edge

if.end54.if.end74_crit_edge:                      ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end74

do.body63:                                        ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !89
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr57, i32 16777216) #6, !srcloc !25
  %39 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr57) #6, !srcloc !40
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !90
  br label %if.end74

if.end74:                                         ; preds = %do.body63, %if.end54.if.end74_crit_edge, %if.end12.if.end74_crit_edge
  %add.ptr.i131 = getelementptr i8, ptr %rb, i32 100352
  %40 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i131) #6, !srcloc !40
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !91
  %41 = and i32 %40, -131073
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !92
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i131, i32 %41) #6, !srcloc !25
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %42 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %42(i32 noundef 214748000) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !93
  tail call void @arm_heavy_mb() #6
  %add.ptr6.i132 = getelementptr i8, ptr %rb, i32 83996
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr6.i132, i32 67108864) #6, !srcloc !25
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %43 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %43(i32 noundef 214748000) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !94
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr6.i132, i32 0) #6, !srcloc !25
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !95
  tail call void @arm_heavy_mb() #6
  %add.ptr78 = getelementptr i8, ptr %rb, i32 84148
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr78, i32 0) #6, !srcloc !25
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !96
  tail call void @arm_heavy_mb() #6
  %add.ptr82 = getelementptr i8, ptr %rb, i32 84156
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr82, i32 0) #6, !srcloc !25
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @bfa_ioc_ct2_reg_init(ptr noundef %ioc) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %port_id = getelementptr inbounds %struct.bfa_ioc_s, ptr %ioc, i32 0, i32 19
  %0 = ptrtoint ptr %port_id to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %port_id, align 8
  %conv = zext i8 %1 to i32
  %pci_bar_kva = getelementptr inbounds %struct.bfa_ioc_s, ptr %ioc, i32 0, i32 2, i32 4
  %2 = ptrtoint ptr %pci_bar_kva to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pci_bar_kva, align 4
  %arrayidx = getelementptr [2 x %struct.anon.12], ptr @ct2_reg, i32 0, i32 %conv
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 %5
  %ioc_regs = getelementptr inbounds %struct.bfa_ioc_s, ptr %ioc, i32 0, i32 13
  %hfn_mbox1 = getelementptr inbounds %struct.bfa_ioc_s, ptr %ioc, i32 0, i32 13, i32 1
  %6 = ptrtoint ptr %hfn_mbox1 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %add.ptr, ptr %hfn_mbox1, align 4
  %lpu_mbox = getelementptr [2 x %struct.anon.12], ptr @ct2_reg, i32 0, i32 %conv, i32 1
  %7 = ptrtoint ptr %lpu_mbox to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %lpu_mbox, align 4
  %add.ptr3 = getelementptr i8, ptr %3, i32 %8
  %lpu_mbox5 = getelementptr inbounds %struct.bfa_ioc_s, ptr %ioc, i32 0, i32 13, i32 3
  %9 = ptrtoint ptr %lpu_mbox5 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %add.ptr3, ptr %lpu_mbox5, align 4
  %hfn_pgn = getelementptr [2 x %struct.anon.12], ptr @ct2_reg, i32 0, i32 %conv, i32 2
  %10 = ptrtoint ptr %hfn_pgn to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %hfn_pgn, align 4
  %add.ptr7 = getelementptr i8, ptr %3, i32 %11
  %host_page_num_fn = getelementptr inbounds %struct.bfa_ioc_s, ptr %ioc, i32 0, i32 13, i32 13
  %12 = ptrtoint ptr %host_page_num_fn to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %add.ptr7, ptr %host_page_num_fn, align 4
  %hfn = getelementptr [2 x %struct.anon.12], ptr @ct2_reg, i32 0, i32 %conv, i32 3
  %13 = ptrtoint ptr %hfn to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %hfn, align 4
  %add.ptr10 = getelementptr i8, ptr %3, i32 %14
  %15 = ptrtoint ptr %ioc_regs to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %add.ptr10, ptr %ioc_regs, align 4
  %lpu = getelementptr [2 x %struct.anon.12], ptr @ct2_reg, i32 0, i32 %conv, i32 4
  %16 = ptrtoint ptr %lpu to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %lpu, align 4
  %add.ptr13 = getelementptr i8, ptr %3, i32 %17
  %lpu_mbox_cmd = getelementptr inbounds %struct.bfa_ioc_s, ptr %ioc, i32 0, i32 13, i32 2
  %18 = ptrtoint ptr %lpu_mbox_cmd to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %add.ptr13, ptr %lpu_mbox_cmd, align 4
  %lpu_read = getelementptr [2 x %struct.anon.12], ptr @ct2_reg, i32 0, i32 %conv, i32 5
  %19 = ptrtoint ptr %lpu_read to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %lpu_read, align 4
  %add.ptr16 = getelementptr i8, ptr %3, i32 %20
  %lpu_read_stat = getelementptr inbounds %struct.bfa_ioc_s, ptr %ioc, i32 0, i32 13, i32 4
  %21 = ptrtoint ptr %lpu_read_stat to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %add.ptr16, ptr %lpu_read_stat, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %cmp = icmp eq i8 %1, 0
  %. = select i1 %cmp, i32 84144, i32 84152
  %.132 = select i1 %cmp, i32 84148, i32 84156
  %.133 = select i1 %cmp, i32 84156, i32 84148
  %.134 = select i1 %cmp, i32 102828, i32 102844
  %.135 = select i1 %cmp, i32 102844, i32 102828
  %add.ptr29 = getelementptr i8, ptr %3, i32 %.
  %add.ptr32 = getelementptr i8, ptr %3, i32 %.132
  %add.ptr35 = getelementptr i8, ptr %3, i32 %.133
  %add.ptr38 = getelementptr i8, ptr %3, i32 %.134
  %add.ptr41 = getelementptr i8, ptr %3, i32 %.135
  %22 = getelementptr inbounds %struct.bfa_ioc_s, ptr %ioc, i32 0, i32 13, i32 14
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %add.ptr29, ptr %22, align 4
  %24 = getelementptr inbounds %struct.bfa_ioc_s, ptr %ioc, i32 0, i32 13, i32 15
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %add.ptr32, ptr %24, align 4
  %26 = getelementptr inbounds %struct.bfa_ioc_s, ptr %ioc, i32 0, i32 13, i32 16
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %add.ptr35, ptr %26, align 4
  %28 = getelementptr inbounds %struct.bfa_ioc_s, ptr %ioc, i32 0, i32 13, i32 17
  %29 = ptrtoint ptr %28 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %add.ptr38, ptr %28, align 4
  %30 = getelementptr inbounds %struct.bfa_ioc_s, ptr %ioc, i32 0, i32 13, i32 18
  %31 = ptrtoint ptr %30 to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %add.ptr41, ptr %30, align 4
  %add.ptr44 = getelementptr i8, ptr %3, i32 100352
  %pss_ctl_reg = getelementptr inbounds %struct.bfa_ioc_s, ptr %ioc, i32 0, i32 13, i32 5
  %32 = ptrtoint ptr %pss_ctl_reg to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %add.ptr44, ptr %pss_ctl_reg, align 4
  %add.ptr46 = getelementptr i8, ptr %3, i32 100368
  %pss_err_status_reg = getelementptr inbounds %struct.bfa_ioc_s, ptr %ioc, i32 0, i32 13, i32 6
  %33 = ptrtoint ptr %pss_err_status_reg to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %add.ptr46, ptr %pss_err_status_reg, align 4
  %add.ptr48 = getelementptr i8, ptr %3, i32 83976
  %app_pll_fast_ctl_reg = getelementptr inbounds %struct.bfa_ioc_s, ptr %ioc, i32 0, i32 13, i32 7
  %34 = ptrtoint ptr %app_pll_fast_ctl_reg to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %add.ptr48, ptr %app_pll_fast_ctl_reg, align 4
  %add.ptr50 = getelementptr i8, ptr %3, i32 83980
  %app_pll_slow_ctl_reg = getelementptr inbounds %struct.bfa_ioc_s, ptr %ioc, i32 0, i32 13, i32 8
  %35 = ptrtoint ptr %app_pll_slow_ctl_reg to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %add.ptr50, ptr %app_pll_slow_ctl_reg, align 4
  %add.ptr52 = getelementptr i8, ptr %3, i32 84208
  %ioc_sem_reg = getelementptr inbounds %struct.bfa_ioc_s, ptr %ioc, i32 0, i32 13, i32 9
  %36 = ptrtoint ptr %ioc_sem_reg to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %add.ptr52, ptr %ioc_sem_reg, align 4
  %add.ptr54 = getelementptr i8, ptr %3, i32 84212
  %ioc_usage_sem_reg = getelementptr inbounds %struct.bfa_ioc_s, ptr %ioc, i32 0, i32 13, i32 10
  %37 = ptrtoint ptr %ioc_usage_sem_reg to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %add.ptr54, ptr %ioc_usage_sem_reg, align 4
  %add.ptr56 = getelementptr i8, ptr %3, i32 84216
  %ioc_init_sem_reg = getelementptr inbounds %struct.bfa_ioc_s, ptr %ioc, i32 0, i32 13, i32 11
  %38 = ptrtoint ptr %ioc_init_sem_reg to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %add.ptr56, ptr %ioc_init_sem_reg, align 4
  %add.ptr58 = getelementptr i8, ptr %3, i32 84160
  %ioc_usage_reg = getelementptr inbounds %struct.bfa_ioc_s, ptr %ioc, i32 0, i32 13, i32 12
  %39 = ptrtoint ptr %ioc_usage_reg to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %add.ptr58, ptr %ioc_usage_reg, align 4
  %add.ptr60 = getelementptr i8, ptr %3, i32 84164
  %ioc_fail_sync = getelementptr inbounds %struct.bfa_ioc_s, ptr %ioc, i32 0, i32 13, i32 20
  %40 = ptrtoint ptr %ioc_fail_sync to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %add.ptr60, ptr %ioc_fail_sync, align 4
  %add.ptr62 = getelementptr i8, ptr %3, i32 32768
  %smem_page_start = getelementptr inbounds %struct.bfa_ioc_s, ptr %ioc, i32 0, i32 13, i32 23
  %41 = ptrtoint ptr %smem_page_start to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %add.ptr62, ptr %smem_page_start, align 4
  %smem_pg0 = getelementptr inbounds %struct.bfa_ioc_s, ptr %ioc, i32 0, i32 13, i32 24
  %42 = ptrtoint ptr %smem_pg0 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 384, ptr %smem_pg0, align 4
  %add.ptr65 = getelementptr i8, ptr %3, i32 100376
  %err_set = getelementptr inbounds %struct.bfa_ioc_s, ptr %ioc, i32 0, i32 13, i32 19
  %43 = ptrtoint ptr %err_set to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %add.ptr65, ptr %err_set, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @bfa_ioc_ct2_map_port(ptr nocapture noundef %ioc) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %pci_bar_kva = getelementptr inbounds %struct.bfa_ioc_s, ptr %ioc, i32 0, i32 2, i32 4
  %0 = ptrtoint ptr %pci_bar_kva to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pci_bar_kva, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 196872
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #6, !srcloc !40
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !97
  %3 = lshr i32 %2, 9
  %4 = trunc i32 %3 to i8
  %conv = and i8 %4, 3
  %port_id = getelementptr inbounds %struct.bfa_ioc_s, ptr %ioc, i32 0, i32 19
  %5 = ptrtoint ptr %port_id to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %conv, ptr %port_id, align 8
  %trcmod = getelementptr inbounds %struct.bfa_ioc_s, ptr %ioc, i32 0, i32 14
  %6 = ptrtoint ptr %trcmod to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %trcmod, align 8
  %pci_func = getelementptr inbounds %struct.bfa_ioc_s, ptr %ioc, i32 0, i32 2, i32 1
  %8 = ptrtoint ptr %pci_func to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %pci_func, align 4
  %conv3 = zext i8 %9 to i64
  tail call void @__bfa_trc(ptr noundef %7, i32 noundef 4100, i32 noundef 330, i64 noundef %conv3) #6
  %10 = ptrtoint ptr %trcmod to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %trcmod, align 8
  %12 = ptrtoint ptr %port_id to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %port_id, align 8
  %conv6 = zext i8 %13 to i64
  tail call void @__bfa_trc(ptr noundef %11, i32 noundef 4100, i32 noundef 331, i64 noundef %conv6) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bfa_ioc_ct2_lpu_read_stat(ptr nocapture noundef readonly %ioc) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %lpu_read_stat = getelementptr inbounds %struct.bfa_ioc_s, ptr %ioc, i32 0, i32 13, i32 4
  %0 = ptrtoint ptr %lpu_read_stat to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %lpu_read_stat, align 4
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1) #6, !srcloc !40
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !98
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !99
  tail call void @arm_heavy_mb() #6
  %3 = ptrtoint ptr %lpu_read_stat to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %lpu_read_stat, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %4, i32 16777216) #6, !srcloc !25
  br label %cleanup

cleanup:                                          ; preds = %do.body, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %do.body ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @bfa_ioc_ct2_poweron(ptr nocapture noundef readonly %ioc) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %pci_bar_kva = getelementptr inbounds %struct.bfa_ioc_s, ptr %ioc, i32 0, i32 2, i32 4
  %0 = ptrtoint ptr %pci_bar_kva to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pci_bar_kva, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 196924
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #6, !srcloc !40
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !100
  %and = and i32 %3, 4192256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6
  tail call void @arm_heavy_mb() #6
  br i1 %tobool.not, label %do.body4, label %do.body

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %and2 = and i32 %3, 2047
  %4 = tail call i32 @llvm.bswap.i32(i32 %and2)
  %add.ptr3 = getelementptr i8, ptr %1, i32 196920
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3, i32 %4) #6, !srcloc !25
  br label %cleanup

do.body4:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %pci_func = getelementptr inbounds %struct.bfa_ioc_s, ptr %ioc, i32 0, i32 2, i32 1
  %5 = ptrtoint ptr %pci_func to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %pci_func, align 4
  %conv = zext i8 %6 to i32
  %mul = shl nuw nsw i32 %conv, 6
  %or = or i32 %mul, 129024
  %7 = tail call i32 @llvm.bswap.i32(i32 %or)
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %7) #6, !srcloc !25
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !101
  tail call void @arm_heavy_mb() #6
  %8 = ptrtoint ptr %pci_func to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %pci_func, align 4
  %conv14 = zext i8 %9 to i32
  %mul15 = shl nuw nsw i32 %conv14, 6
  %10 = tail call i32 @llvm.bswap.i32(i32 %mul15)
  %add.ptr16 = getelementptr i8, ptr %1, i32 196920
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr16, i32 %10) #6, !srcloc !25
  br label %cleanup

cleanup:                                          ; preds = %do.body4, %do.body
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @bfa_ioc_ct2_clk_reset(ptr noundef %rb) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %rb, i32 83980
  %0 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #6, !srcloc !40
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !102
  %1 = and i32 %0, -251658497
  %2 = or i32 %1, 201326848
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !103
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %2) #6, !srcloc !25
  %3 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #6, !srcloc !40
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !104
  %4 = and i32 %3, -97
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !105
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %4) #6, !srcloc !25
  %add.ptr16.i = getelementptr i8, ptr %rb, i32 84132
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr16.i) #6, !srcloc !40
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !106
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !107
  tail call void @arm_heavy_mb() #6
  %6 = or i32 %5, 4194304
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr16.i, i32 %6) #6, !srcloc !25
  %add.ptr27.i = getelementptr i8, ptr %rb, i32 83972
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr27.i) #6, !srcloc !40
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !108
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !109
  tail call void @arm_heavy_mb() #6
  %8 = or i32 %7, 268435456
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr27.i, i32 %8) #6, !srcloc !25
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #6, !srcloc !40
  %10 = shl i32 %9, 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !110
  %and42.i = and i32 %10, -536870912
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !111
  tail call void @arm_heavy_mb() #6
  %or46.i = or i32 %and42.i, 274821915
  %11 = tail call i32 @llvm.bswap.i32(i32 %or46.i) #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %11) #6, !srcloc !25
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %12 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %12(i32 noundef 214748000) #6
  %add.ptr.i20 = getelementptr i8, ptr %rb, i32 83976
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i20) #6, !srcloc !40
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !112
  %14 = and i32 %13, -251658497
  %15 = or i32 %14, 201326848
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !113
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i20, i32 %15) #6, !srcloc !25
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr16.i) #6, !srcloc !40
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !114
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !115
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr16.i, i32 %16) #6, !srcloc !25
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i20) #6, !srcloc !40
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !116
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !117
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i20, i32 %17) #6, !srcloc !25
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i20) #6, !srcloc !40
  %19 = shl i32 %18, 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !118
  %and29.i = and i32 %19, -1073741824
  %or30.i = or i32 %and29.i, 549548827
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !119
  tail call void @arm_heavy_mb() #6
  %20 = tail call i32 @llvm.bswap.i32(i32 %or30.i) #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i20, i32 %20) #6, !srcloc !25
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %21 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %21(i32 noundef 214748000) #6
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #6, !srcloc !40
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !120
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !121
  tail call void @arm_heavy_mb() #6
  %23 = and i32 %22, -257
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %23) #6, !srcloc !25
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i20) #6, !srcloc !40
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !122
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !123
  tail call void @arm_heavy_mb() #6
  %25 = and i32 %24, -257
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i20, i32 %25) #6, !srcloc !25
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bfa_ioc_ct_firmware_lock(ptr noundef %ioc) #1 align 64 {
entry:
  %fwhdr = alloca %struct.bfi_ioc_image_hdr_s, align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %fwhdr) #6
  %0 = call ptr @memset(ptr %fwhdr, i32 255, i32 48)
  %ioc_usage_sem_reg = getelementptr inbounds %struct.bfa_ioc_s, ptr %ioc, i32 0, i32 13, i32 10
  %1 = ptrtoint ptr %ioc_usage_sem_reg to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %ioc_usage_sem_reg, align 4
  %call = tail call i32 @bfa_ioc_sem_get(ptr noundef %2) #6
  %ioc_usage_reg = getelementptr inbounds %struct.bfa_ioc_s, ptr %ioc, i32 0, i32 13, i32 12
  %3 = ptrtoint ptr %ioc_usage_reg to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %ioc_usage_reg, align 4
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %4) #6, !srcloc !40
  %6 = tail call i32 @llvm.bswap.i32(i32 %5)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !124
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp = icmp eq i32 %5, 0
  br i1 %cmp, label %do.body, label %if.end

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !125
  tail call void @arm_heavy_mb() #6
  %7 = ptrtoint ptr %ioc_usage_reg to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %ioc_usage_reg, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %8, i32 16777216) #6, !srcloc !25
  %9 = ptrtoint ptr %ioc_usage_sem_reg to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ioc_usage_sem_reg, align 4
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %10) #6, !srcloc !40
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !126
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !127
  tail call void @arm_heavy_mb() #6
  %12 = ptrtoint ptr %ioc_usage_sem_reg to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ioc_usage_sem_reg, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %13, i32 16777216) #6, !srcloc !25
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !128
  tail call void @arm_heavy_mb() #6
  %ioc_fail_sync = getelementptr inbounds %struct.bfa_ioc_s, ptr %ioc, i32 0, i32 13, i32 20
  %14 = ptrtoint ptr %ioc_fail_sync to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ioc_fail_sync, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %15, i32 0) #6, !srcloc !25
  %trcmod = getelementptr inbounds %struct.bfa_ioc_s, ptr %ioc, i32 0, i32 14
  %16 = ptrtoint ptr %trcmod to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %trcmod, align 8
  tail call void @__bfa_trc(ptr noundef %17, i32 noundef 4100, i32 noundef 70, i64 noundef 0) #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %ioc_fwstate25 = getelementptr inbounds %struct.bfa_ioc_s, ptr %ioc, i32 0, i32 13, i32 15
  %18 = ptrtoint ptr %ioc_fwstate25 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %ioc_fwstate25, align 4
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %19) #6, !srcloc !40
  %21 = tail call i32 @llvm.bswap.i32(i32 %20)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !129
  %trcmod29 = getelementptr inbounds %struct.bfa_ioc_s, ptr %ioc, i32 0, i32 14
  %22 = ptrtoint ptr %trcmod29 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %trcmod29, align 8
  %conv30 = zext i32 %21 to i64
  tail call void @__bfa_trc(ptr noundef %23, i32 noundef 4100, i32 noundef 75, i64 noundef %conv30) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %cmp31 = icmp eq i32 %20, 0
  br i1 %cmp31, label %do.end43, label %if.end.if.end49_crit_edge, !prof !79

if.end.if.end49_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end49

do.end43:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 80, i32 noundef 9, ptr noundef null) #6
  br label %if.end49

if.end49:                                         ; preds = %do.end43, %if.end.if.end49_crit_edge
  call void @bfa_ioc_fwver_get(ptr noundef %ioc, ptr noundef nonnull %fwhdr) #6
  %call57 = call i32 @bfa_ioc_fwver_cmp(ptr noundef %ioc, ptr noundef nonnull %fwhdr) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call57)
  %tobool58.not = icmp eq i32 %call57, 0
  br i1 %tobool58.not, label %if.then59, label %if.end74

if.then59:                                        ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #8
  %24 = ptrtoint ptr %ioc_usage_sem_reg to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %ioc_usage_sem_reg, align 4
  %26 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %25) #6, !srcloc !40
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !130
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !131
  call void @arm_heavy_mb() #6
  %27 = ptrtoint ptr %ioc_usage_sem_reg to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %ioc_usage_sem_reg, align 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %28, i32 16777216) #6, !srcloc !25
  %29 = ptrtoint ptr %trcmod29 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %trcmod29, align 8
  %conv73 = zext i32 %6 to i64
  call void @__bfa_trc(ptr noundef %30, i32 noundef 4100, i32 noundef 89, i64 noundef %conv73) #6
  br label %cleanup

if.end74:                                         ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #8
  %inc = add i32 %6, 1
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !132
  call void @arm_heavy_mb() #6
  %31 = call i32 @llvm.bswap.i32(i32 %inc)
  %32 = ptrtoint ptr %ioc_usage_reg to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %ioc_usage_reg, align 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %33, i32 %31) #6, !srcloc !25
  %34 = ptrtoint ptr %ioc_usage_sem_reg to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %ioc_usage_sem_reg, align 4
  %36 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %35) #6, !srcloc !40
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !133
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !134
  call void @arm_heavy_mb() #6
  %37 = ptrtoint ptr %ioc_usage_sem_reg to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %ioc_usage_sem_reg, align 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %38, i32 16777216) #6, !srcloc !25
  %39 = ptrtoint ptr %trcmod29 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %trcmod29, align 8
  %conv93 = zext i32 %inc to i64
  call void @__bfa_trc(ptr noundef %40, i32 noundef 4100, i32 noundef 100, i64 noundef %conv93) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end74, %if.then59, %do.body
  %retval.0 = phi i32 [ 1, %do.body ], [ 1, %if.end74 ], [ 0, %if.then59 ]
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %fwhdr) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @bfa_ioc_ct_firmware_unlock(ptr nocapture noundef readonly %ioc) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %ioc_usage_sem_reg = getelementptr inbounds %struct.bfa_ioc_s, ptr %ioc, i32 0, i32 13, i32 10
  %0 = ptrtoint ptr %ioc_usage_sem_reg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ioc_usage_sem_reg, align 4
  %call = tail call i32 @bfa_ioc_sem_get(ptr noundef %1) #6
  %ioc_usage_reg = getelementptr inbounds %struct.bfa_ioc_s, ptr %ioc, i32 0, i32 13, i32 12
  %2 = ptrtoint ptr %ioc_usage_reg to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ioc_usage_reg, align 4
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %3) #6, !srcloc !40
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !135
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp = icmp eq i32 %4, 0
  br i1 %cmp, label %do.end, label %entry.if.end_crit_edge, !prof !79

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 114, i32 noundef 9, ptr noundef null) #6
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %5 = tail call i32 @llvm.bswap.i32(i32 %4)
  %dec = add i32 %5, -1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !136
  tail call void @arm_heavy_mb() #6
  %6 = tail call i32 @llvm.bswap.i32(i32 %dec)
  %7 = ptrtoint ptr %ioc_usage_reg to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %ioc_usage_reg, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %8, i32 %6) #6, !srcloc !25
  %trcmod = getelementptr inbounds %struct.bfa_ioc_s, ptr %ioc, i32 0, i32 14
  %9 = ptrtoint ptr %trcmod to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %trcmod, align 8
  %conv = zext i32 %dec to i64
  tail call void @__bfa_trc(ptr noundef %10, i32 noundef 4100, i32 noundef 118, i64 noundef %conv) #6
  %11 = ptrtoint ptr %ioc_usage_sem_reg to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %ioc_usage_sem_reg, align 4
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %12) #6, !srcloc !40
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !137
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !138
  tail call void @arm_heavy_mb() #6
  %14 = ptrtoint ptr %ioc_usage_sem_reg to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ioc_usage_sem_reg, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %15, i32 16777216) #6, !srcloc !25
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @bfa_ioc_ct_notify_fail(ptr noundef %ioc) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @bfa_ioc_get_type(ptr noundef %ioc) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call)
  %cmp = icmp eq i32 %call, 2
  br i1 %cmp, label %entry.do.body_crit_edge, label %lor.lhs.false

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body

lor.lhs.false:                                    ; preds = %entry
  %call1 = tail call i32 @bfa_ioc_get_type(ptr noundef %ioc) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %call1)
  %cmp2 = icmp eq i32 %call1, 3
  br i1 %cmp2, label %lor.lhs.false.do.body_crit_edge, label %do.body17

lor.lhs.false.do.body_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body

do.body:                                          ; preds = %lor.lhs.false.do.body_crit_edge, %entry.do.body_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !139
  tail call void @arm_heavy_mb() #6
  %ll_halt = getelementptr inbounds %struct.bfa_ioc_s, ptr %ioc, i32 0, i32 13, i32 17
  %0 = ptrtoint ptr %ll_halt to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ll_halt, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %1, i32 16777216) #6, !srcloc !25
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !140
  tail call void @arm_heavy_mb() #6
  %alt_ll_halt = getelementptr inbounds %struct.bfa_ioc_s, ptr %ioc, i32 0, i32 13, i32 18
  %2 = ptrtoint ptr %alt_ll_halt to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %alt_ll_halt, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %3, i32 16777216) #6, !srcloc !25
  %4 = ptrtoint ptr %ll_halt to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ll_halt, align 4
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %5) #6, !srcloc !40
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !141
  %7 = ptrtoint ptr %alt_ll_halt to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %alt_ll_halt, align 4
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %8) #6, !srcloc !40
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !142
  br label %if.end

do.body17:                                        ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !143
  tail call void @arm_heavy_mb() #6
  %err_set = getelementptr inbounds %struct.bfa_ioc_s, ptr %ioc, i32 0, i32 13, i32 19
  %10 = ptrtoint ptr %err_set to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %err_set, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %11, i32 -1) #6, !srcloc !25
  %12 = ptrtoint ptr %err_set to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %err_set, align 4
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %13) #6, !srcloc !40
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !144
  br label %if.end

if.end:                                           ; preds = %do.body17, %do.body
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @bfa_ioc_ct_ownership_reset(ptr nocapture noundef readonly %ioc) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %ioc_usage_sem_reg = getelementptr inbounds %struct.bfa_ioc_s, ptr %ioc, i32 0, i32 13, i32 10
  %0 = ptrtoint ptr %ioc_usage_sem_reg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ioc_usage_sem_reg, align 4
  %call = tail call i32 @bfa_ioc_sem_get(ptr noundef %1) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !145
  tail call void @arm_heavy_mb() #6
  %ioc_usage_reg = getelementptr inbounds %struct.bfa_ioc_s, ptr %ioc, i32 0, i32 13, i32 12
  %2 = ptrtoint ptr %ioc_usage_reg to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ioc_usage_reg, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %3, i32 0) #6, !srcloc !25
  %4 = ptrtoint ptr %ioc_usage_sem_reg to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ioc_usage_sem_reg, align 4
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %5) #6, !srcloc !40
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !146
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !147
  tail call void @arm_heavy_mb() #6
  %7 = ptrtoint ptr %ioc_usage_sem_reg to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %ioc_usage_sem_reg, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %8, i32 16777216) #6, !srcloc !25
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !148
  tail call void @arm_heavy_mb() #6
  %ioc_fail_sync = getelementptr inbounds %struct.bfa_ioc_s, ptr %ioc, i32 0, i32 13, i32 20
  %9 = ptrtoint ptr %ioc_fail_sync to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ioc_fail_sync, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %10, i32 0) #6, !srcloc !25
  %ioc_sem_reg = getelementptr inbounds %struct.bfa_ioc_s, ptr %ioc, i32 0, i32 13, i32 9
  %11 = ptrtoint ptr %ioc_sem_reg to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %ioc_sem_reg, align 4
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %12) #6, !srcloc !40
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !149
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !150
  tail call void @arm_heavy_mb() #6
  %14 = ptrtoint ptr %ioc_sem_reg to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ioc_sem_reg, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %15, i32 16777216) #6, !srcloc !25
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bfa_ioc_ct_sync_start(ptr nocapture noundef readonly %ioc) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %ioc_fail_sync = getelementptr inbounds %struct.bfa_ioc_s, ptr %ioc, i32 0, i32 13, i32 20
  %0 = ptrtoint ptr %ioc_fail_sync to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ioc_fail_sync, align 4
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1) #6, !srcloc !40
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !151
  %shr = lshr i32 %3, 16
  %pci_func = getelementptr inbounds %struct.bfa_ioc_s, ptr %ioc, i32 0, i32 2, i32 1
  %4 = ptrtoint ptr %pci_func to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %pci_func, align 4
  %conv = zext i8 %5 to i32
  %shl = shl nuw i32 1, %conv
  %and = and i32 %shl, %shr
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %do.body

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !152
  tail call void @arm_heavy_mb() #6
  %6 = ptrtoint ptr %ioc_fail_sync to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ioc_fail_sync, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %7, i32 0) #6, !srcloc !25
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !153
  tail call void @arm_heavy_mb() #6
  %ioc_usage_reg = getelementptr inbounds %struct.bfa_ioc_s, ptr %ioc, i32 0, i32 13, i32 12
  %8 = ptrtoint ptr %ioc_usage_reg to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ioc_usage_reg, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %9, i32 16777216) #6, !srcloc !25
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !154
  tail call void @arm_heavy_mb() #6
  %ioc_fwstate = getelementptr inbounds %struct.bfa_ioc_s, ptr %ioc, i32 0, i32 13, i32 15
  %10 = ptrtoint ptr %ioc_fwstate to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ioc_fwstate, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %11, i32 0) #6, !srcloc !25
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !155
  tail call void @arm_heavy_mb() #6
  %alt_ioc_fwstate = getelementptr inbounds %struct.bfa_ioc_s, ptr %ioc, i32 0, i32 13, i32 16
  %12 = ptrtoint ptr %alt_ioc_fwstate to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %alt_ioc_fwstate, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %13, i32 0) #6, !srcloc !25
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call16 = tail call i32 @bfa_ioc_ct_sync_complete(ptr noundef %ioc)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %do.body
  %retval.0 = phi i32 [ 1, %do.body ], [ %call16, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @bfa_ioc_ct_sync_join(ptr nocapture noundef readonly %ioc) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %ioc_fail_sync = getelementptr inbounds %struct.bfa_ioc_s, ptr %ioc, i32 0, i32 13, i32 20
  %0 = ptrtoint ptr %ioc_fail_sync to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ioc_fail_sync, align 4
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1) #6, !srcloc !40
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !156
  %pci_func = getelementptr inbounds %struct.bfa_ioc_s, ptr %ioc, i32 0, i32 2, i32 1
  %4 = ptrtoint ptr %pci_func to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %pci_func, align 4
  %conv = zext i8 %5 to i32
  %shl2 = shl i32 65536, %conv
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !157
  tail call void @arm_heavy_mb() #6
  %or = or i32 %shl2, %3
  %6 = tail call i32 @llvm.bswap.i32(i32 %or)
  %7 = ptrtoint ptr %ioc_fail_sync to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %ioc_fail_sync, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %8, i32 %6) #6, !srcloc !25
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @bfa_ioc_ct_sync_leave(ptr nocapture noundef readonly %ioc) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %ioc_fail_sync = getelementptr inbounds %struct.bfa_ioc_s, ptr %ioc, i32 0, i32 13, i32 20
  %0 = ptrtoint ptr %ioc_fail_sync to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ioc_fail_sync, align 4
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1) #6, !srcloc !40
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !158
  %pci_func = getelementptr inbounds %struct.bfa_ioc_s, ptr %ioc, i32 0, i32 2, i32 1
  %4 = ptrtoint ptr %pci_func to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %pci_func, align 4
  %conv = zext i8 %5 to i32
  %shl = shl nuw i32 1, %conv
  %shl2 = shl i32 %shl, 16
  %or = or i32 %shl2, %shl
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !159
  tail call void @arm_heavy_mb() #6
  %neg = xor i32 %or, -1
  %and = and i32 %3, %neg
  %6 = tail call i32 @llvm.bswap.i32(i32 %and)
  %7 = ptrtoint ptr %ioc_fail_sync to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %ioc_fail_sync, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %8, i32 %6) #6, !srcloc !25
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @bfa_ioc_ct_sync_ack(ptr nocapture noundef readonly %ioc) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %ioc_fail_sync = getelementptr inbounds %struct.bfa_ioc_s, ptr %ioc, i32 0, i32 13, i32 20
  %0 = ptrtoint ptr %ioc_fail_sync to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ioc_fail_sync, align 4
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1) #6, !srcloc !40
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !160
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !161
  tail call void @arm_heavy_mb() #6
  %pci_func = getelementptr inbounds %struct.bfa_ioc_s, ptr %ioc, i32 0, i32 2, i32 1
  %4 = ptrtoint ptr %pci_func to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %pci_func, align 4
  %conv = zext i8 %5 to i32
  %shl = shl nuw i32 1, %conv
  %or = or i32 %shl, %3
  %6 = tail call i32 @llvm.bswap.i32(i32 %or)
  %7 = ptrtoint ptr %ioc_fail_sync to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %ioc_fail_sync, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %8, i32 %6) #6, !srcloc !25
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bfa_ioc_ct_sync_complete(ptr nocapture noundef readonly %ioc) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %ioc_fail_sync = getelementptr inbounds %struct.bfa_ioc_s, ptr %ioc, i32 0, i32 13, i32 20
  %0 = ptrtoint ptr %ioc_fail_sync to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ioc_fail_sync, align 4
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1) #6, !srcloc !40
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !162
  %and = and i32 %3, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp = icmp eq i32 %and, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %shr = lshr i32 %3, 16
  %pci_func = getelementptr inbounds %struct.bfa_ioc_s, ptr %ioc, i32 0, i32 2, i32 1
  %4 = ptrtoint ptr %pci_func to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %pci_func, align 4
  %conv = zext i8 %5 to i32
  %shl = shl nuw i32 1, %conv
  %and2 = and i32 %shl, %shr
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2)
  %tobool.not = icmp ne i32 %and2, 0
  %and7 = and i32 %shl, %and
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7)
  %tobool8.not = icmp eq i32 %and7, 0
  %or.cond = select i1 %tobool.not, i1 %tobool8.not, i1 false
  %or = select i1 %or.cond, i32 %shl, i32 0
  %sync_ackd.0 = or i32 %or, %and
  call void @__sanitizer_cov_trace_cmp4(i32 %shr, i32 %sync_ackd.0)
  %cmp15 = icmp eq i32 %shr, %sync_ackd.0
  br i1 %cmp15, label %do.body, label %if.end29

do.body:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !163
  tail call void @arm_heavy_mb() #6
  %and18 = and i32 %3, -65536
  %6 = tail call i32 @llvm.bswap.i32(i32 %and18)
  %7 = ptrtoint ptr %ioc_fail_sync to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %ioc_fail_sync, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %8, i32 %6) #6, !srcloc !25
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !164
  tail call void @arm_heavy_mb() #6
  %ioc_fwstate = getelementptr inbounds %struct.bfa_ioc_s, ptr %ioc, i32 0, i32 13, i32 15
  %9 = ptrtoint ptr %ioc_fwstate to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ioc_fwstate, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %10, i32 134217728) #6, !srcloc !25
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !165
  tail call void @arm_heavy_mb() #6
  %alt_ioc_fwstate = getelementptr inbounds %struct.bfa_ioc_s, ptr %ioc, i32 0, i32 13, i32 16
  %11 = ptrtoint ptr %alt_ioc_fwstate to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %alt_ioc_fwstate, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %12, i32 134217728) #6, !srcloc !25
  br label %cleanup

if.end29:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_cmp4(i32 %and, i32 %sync_ackd.0)
  %cmp30.not = icmp eq i32 %and, %sync_ackd.0
  br i1 %cmp30.not, label %if.end29.cleanup_crit_edge, label %do.body33

if.end29.cleanup_crit_edge:                       ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.body33:                                        ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !166
  tail call void @arm_heavy_mb() #6
  %or36 = or i32 %or, %3
  %13 = tail call i32 @llvm.bswap.i32(i32 %or36)
  %14 = ptrtoint ptr %ioc_fail_sync to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ioc_fail_sync, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %15, i32 %13) #6, !srcloc !25
  br label %cleanup

cleanup:                                          ; preds = %do.body33, %if.end29.cleanup_crit_edge, %do.body, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %do.body ], [ 1, %entry.cleanup_crit_edge ], [ 0, %do.body33 ], [ 0, %if.end29.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @bfa_ioc_ct_set_cur_ioc_fwstate(ptr nocapture noundef readonly %ioc, i32 noundef %fwstate) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !167
  tail call void @arm_heavy_mb() #6
  %0 = tail call i32 @llvm.bswap.i32(i32 %fwstate)
  %ioc_fwstate = getelementptr inbounds %struct.bfa_ioc_s, ptr %ioc, i32 0, i32 13, i32 15
  %1 = ptrtoint ptr %ioc_fwstate to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %ioc_fwstate, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %2, i32 %0) #6, !srcloc !25
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bfa_ioc_ct_get_cur_ioc_fwstate(ptr nocapture noundef readonly %ioc) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %ioc_fwstate = getelementptr inbounds %struct.bfa_ioc_s, ptr %ioc, i32 0, i32 13, i32 15
  %0 = ptrtoint ptr %ioc_fwstate to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ioc_fwstate, align 4
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1) #6, !srcloc !40
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !168
  ret i32 %3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @bfa_ioc_ct_set_alt_ioc_fwstate(ptr nocapture noundef readonly %ioc, i32 noundef %fwstate) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !169
  tail call void @arm_heavy_mb() #6
  %0 = tail call i32 @llvm.bswap.i32(i32 %fwstate)
  %alt_ioc_fwstate = getelementptr inbounds %struct.bfa_ioc_s, ptr %ioc, i32 0, i32 13, i32 16
  %1 = ptrtoint ptr %alt_ioc_fwstate to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %alt_ioc_fwstate, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %2, i32 %0) #6, !srcloc !25
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bfa_ioc_ct_get_alt_ioc_fwstate(ptr nocapture noundef readonly %ioc) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %alt_ioc_fwstate = getelementptr inbounds %struct.bfa_ioc_s, ptr %ioc, i32 0, i32 13, i32 16
  %0 = ptrtoint ptr %alt_ioc_fwstate to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %alt_ioc_fwstate, align 4
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1) #6, !srcloc !40
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !170
  ret i32 %3
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bfa_ioc_sem_get(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @__bfa_trc(ptr noundef, i32 noundef, i32 noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @bfa_ioc_fwver_get(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bfa_ioc_fwver_cmp(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bfa_ioc_get_type(ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 7)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 7)
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14}
!llvm.module.flags = !{!16, !17, !18, !19, !20, !21, !22, !23}
!llvm.ident = !{!24}

!0 = !{ptr @hwif_ct, !1, !"hwif_ct", i1 false, i1 false}
!1 = !{!"../drivers/scsi/bfa/bfa_ioc_ct.c", i32 46, i32 30}
!2 = !{ptr @hwif_ct2, !3, !"hwif_ct2", i1 false, i1 false}
!3 = !{!"../drivers/scsi/bfa/bfa_ioc_ct.c", i32 47, i32 30}
!4 = !{ptr @.str, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/scsi/bfa/bfa_ioc_ct.c", i32 80, i32 2}
!6 = distinct !{null, !7, !"__trc_fileno", i1 false, i1 false}
!7 = !{!"../drivers/scsi/bfa/bfa_ioc_ct.c", i32 16, i32 1}
!8 = !{ptr @ct_fnreg, !9, !"ct_fnreg", i1 false, i1 false}
!9 = !{!"../drivers/scsi/bfa/bfa_ioc_ct.c", i32 145, i32 52}
!10 = !{ptr @ct_p0reg, !11, !"ct_p0reg", i1 false, i1 false}
!11 = !{!"../drivers/scsi/bfa/bfa_ioc_ct.c", i32 155, i32 33}
!12 = !{ptr @ct_p1reg, !13, !"ct_p1reg", i1 false, i1 false}
!13 = !{!"../drivers/scsi/bfa/bfa_ioc_ct.c", i32 165, i32 33}
!14 = !{ptr @ct2_reg, !15, !"ct2_reg", i1 false, i1 false}
!15 = !{!"../drivers/scsi/bfa/bfa_ioc_ct.c", i32 173, i32 2}
!16 = !{i32 1, !"wchar_size", i32 2}
!17 = !{i32 1, !"min_enum_size", i32 4}
!18 = !{i32 8, !"branch-target-enforcement", i32 0}
!19 = !{i32 8, !"sign-return-address", i32 0}
!20 = !{i32 8, !"sign-return-address-all", i32 0}
!21 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!22 = !{i32 7, !"uwtable", i32 1}
!23 = !{i32 7, !"frame-pointer", i32 2}
!24 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!25 = !{i64 5014204}
!26 = !{i64 2156222731}
!27 = !{i64 2156223691}
!28 = !{i64 2156224144}
!29 = !{i64 2156224609}
!30 = !{i64 2156225052}
!31 = !{i64 2156225486}
!32 = !{i64 2156225920}
!33 = !{i64 2156226354}
!34 = !{i64 2156226788}
!35 = !{i64 2156227222}
!36 = !{i64 2156227674}
!37 = !{i64 2156228153}
!38 = !{i64 2156228656}
!39 = !{i64 2156229198}
!40 = !{i64 5014622}
!41 = !{i64 2156229953}
!42 = !{i64 2156230741}
!43 = !{i64 2156231175}
!44 = !{i64 2156231627}
!45 = !{i64 2156232106}
!46 = !{i64 2156232577}
!47 = !{i64 2156233018}
!48 = !{i64 2156233716}
!49 = !{i64 2156233953}
!50 = !{i64 2156234907}
!51 = !{i64 2156235301}
!52 = !{i64 2156235715}
!53 = !{i64 2156236967}
!54 = !{i64 2156237191}
!55 = !{i64 2156204969}
!56 = !{i64 2156206554}
!57 = !{i64 2156207162}
!58 = !{i64 2156266080}
!59 = !{i64 2156251759}
!60 = !{i64 2156251990}
!61 = !{i64 2156252682}
!62 = !{i64 2156252912}
!63 = !{i64 2156250249}
!64 = !{i64 2156250969}
!65 = !{i64 2156266591}
!66 = !{i64 2156253606}
!67 = !{i64 2156255372}
!68 = !{i64 2156256060}
!69 = !{i64 2156263996}
!70 = !{i64 2156265050}
!71 = !{!"branch_weights", i32 2000, i32 1}
!72 = !{i64 2156259568}
!73 = !{i64 2156259816}
!74 = !{i64 2156260233}
!75 = !{i64 2156260924}
!76 = !{i64 2156261956}
!77 = !{i64 2156262979}
!78 = !{i64 2156253858}
!79 = !{!"branch_weights", i32 1, i32 2000}
!80 = !{i64 2156267108}
!81 = !{i64 2156267349}
!82 = !{i64 2156267830}
!83 = !{i64 2156268270}
!84 = !{i64 2156268939}
!85 = !{i64 2156269506}
!86 = !{i64 2156269766}
!87 = !{i64 2156270513}
!88 = !{i64 2156271080}
!89 = !{i64 2156271340}
!90 = !{i64 2156272087}
!91 = !{i64 2156247462}
!92 = !{i64 2156247699}
!93 = !{i64 2156248673}
!94 = !{i64 2156249648}
!95 = !{i64 2156272347}
!96 = !{i64 2156272816}
!97 = !{i64 2156205821}
!98 = !{i64 2156207878}
!99 = !{i64 2156208100}
!100 = !{i64 2156220036}
!101 = !{i64 2156221440}
!102 = !{i64 2156237862}
!103 = !{i64 2156238143}
!104 = !{i64 2156238820}
!105 = !{i64 2156239068}
!106 = !{i64 2156239745}
!107 = !{i64 2156239995}
!108 = !{i64 2156240711}
!109 = !{i64 2156240961}
!110 = !{i64 2156241677}
!111 = !{i64 2156241949}
!112 = !{i64 2156243219}
!113 = !{i64 2156243500}
!114 = !{i64 2156244177}
!115 = !{i64 2156244403}
!116 = !{i64 2156245080}
!117 = !{i64 2156245306}
!118 = !{i64 2156245983}
!119 = !{i64 2156246231}
!120 = !{i64 2156257620}
!121 = !{i64 2156257872}
!122 = !{i64 2156258594}
!123 = !{i64 2156258846}
!124 = !{i64 2156191983}
!125 = !{i64 2156192205}
!126 = !{i64 2156192926}
!127 = !{i64 2156193152}
!128 = !{i64 2156193557}
!129 = !{i64 2156194331}
!130 = !{i64 2156195476}
!131 = !{i64 2156195702}
!132 = !{i64 2156196189}
!133 = !{i64 2156196925}
!134 = !{i64 2156197151}
!135 = !{i64 2156197938}
!136 = !{i64 2156198669}
!137 = !{i64 2156199483}
!138 = !{i64 2156199709}
!139 = !{i64 2156200237}
!140 = !{i64 2156200677}
!141 = !{i64 2156201383}
!142 = !{i64 2156201901}
!143 = !{i64 2156202119}
!144 = !{i64 2156202800}
!145 = !{i64 2156208501}
!146 = !{i64 2156209222}
!147 = !{i64 2156209448}
!148 = !{i64 2156209853}
!149 = !{i64 2156210550}
!150 = !{i64 2156210770}
!151 = !{i64 2156211490}
!152 = !{i64 2156211827}
!153 = !{i64 2156212228}
!154 = !{i64 2156212640}
!155 = !{i64 2156213093}
!156 = !{i64 2156213839}
!157 = !{i64 2156214212}
!158 = !{i64 2156214962}
!159 = !{i64 2156215412}
!160 = !{i64 2156216165}
!161 = !{i64 2156216518}
!162 = !{i64 2156217405}
!163 = !{i64 2156217962}
!164 = !{i64 2156218426}
!165 = !{i64 2156218871}
!166 = !{i64 2156219323}
!167 = !{i64 2156273251}
!168 = !{i64 2156273964}
!169 = !{i64 2156274194}
!170 = !{i64 2156274927}
