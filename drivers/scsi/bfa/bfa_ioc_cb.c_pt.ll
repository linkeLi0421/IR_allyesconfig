; ModuleID = '/llk/IR_all_yes/drivers/scsi/bfa/bfa_ioc_cb.c_pt.bc'
source_filename = "../drivers/scsi/bfa/bfa_ioc_cb.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.bfa_ioc_hwif_s = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.anon.9 = type { i32, i32, i32 }
%struct.anon.10 = type { i32, i32 }
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

@hwif_cb = internal global { %struct.bfa_ioc_hwif_s, [56 x i8] } zeroinitializer, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@iocreg_fnreg = internal constant { [2 x %struct.anon.9], [40 x i8] } { [2 x %struct.anon.9] [%struct.anon.9 { i32 102912, i32 103040, i32 81928 }, %struct.anon.9 { i32 103008, i32 103136, i32 82184 }], [40 x i8] zeroinitializer }, align 32
@iocreg_mbcmd = internal constant { [2 x %struct.anon.10], [16 x i8] } { [2 x %struct.anon.10] [%struct.anon.10 { i32 102400, i32 102408 }, %struct.anon.10 { i32 102420, i32 102428 }], [16 x i8] zeroinitializer }, align 32
@switch.table.bfa_ioc_cb_sync_start = internal constant { [10 x i32], [56 x i8] } { [10 x i32] [i32 1, i32 1, i32 0, i32 0, i32 0, i32 0, i32 1, i32 0, i32 1, i32 1], [56 x i8] zeroinitializer }, align 32
@switch.table.bfa_ioc_cb_sync_complete = internal constant { [10 x i32], [56 x i8] } { [10 x i32] [i32 1, i32 1, i32 0, i32 0, i32 0, i32 0, i32 1, i32 0, i32 1, i32 1], [56 x i8] zeroinitializer }, align 32
@___asan_gen_.1 = private unnamed_addr constant [8 x i8] c"hwif_cb\00", align 1
@___asan_gen_.3 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.8, i32 42, i32 30 }
@___asan_gen_.4 = private unnamed_addr constant [13 x i8] c"iocreg_fnreg\00", align 1
@___asan_gen_.6 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.8, i32 121, i32 52 }
@___asan_gen_.7 = private unnamed_addr constant [13 x i8] c"iocreg_mbcmd\00", align 1
@___asan_gen_.8 = private constant [33 x i8] c"../drivers/scsi/bfa/bfa_ioc_cb.c\00", align 1
@___asan_gen_.9 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.8, i32 129, i32 33 }
@___asan_gen_.10 = private unnamed_addr constant [35 x i8] c"switch.table.bfa_ioc_cb_sync_start\00", align 1
@___asan_gen_.11 = private unnamed_addr constant [38 x i8] c"switch.table.bfa_ioc_cb_sync_complete\00", align 1
@llvm.compiler.used = appending global [5 x ptr] [ptr @hwif_cb, ptr @iocreg_fnreg, ptr @iocreg_mbcmd, ptr @switch.table.bfa_ioc_cb_sync_start, ptr @switch.table.bfa_ioc_cb_sync_complete], section "llvm.metadata"
@0 = internal global [5 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hwif_cb to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iocreg_fnreg to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iocreg_mbcmd to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.bfa_ioc_cb_sync_start to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.bfa_ioc_cb_sync_complete to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define dso_local void @bfa_ioc_set_cb_hwif(ptr nocapture noundef writeonly %ioc) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  store ptr @bfa_ioc_cb_pll_init, ptr @hwif_cb, align 4
  store ptr @bfa_ioc_cb_firmware_lock, ptr getelementptr inbounds (%struct.bfa_ioc_hwif_s, ptr @hwif_cb, i32 0, i32 1), align 4
  store ptr @bfa_ioc_cb_firmware_unlock, ptr getelementptr inbounds (%struct.bfa_ioc_hwif_s, ptr @hwif_cb, i32 0, i32 2), align 4
  store ptr @bfa_ioc_cb_reg_init, ptr getelementptr inbounds (%struct.bfa_ioc_hwif_s, ptr @hwif_cb, i32 0, i32 3), align 4
  store ptr @bfa_ioc_cb_map_port, ptr getelementptr inbounds (%struct.bfa_ioc_hwif_s, ptr @hwif_cb, i32 0, i32 4), align 4
  store ptr @bfa_ioc_cb_isr_mode_set, ptr getelementptr inbounds (%struct.bfa_ioc_hwif_s, ptr @hwif_cb, i32 0, i32 5), align 4
  store ptr @bfa_ioc_cb_notify_fail, ptr getelementptr inbounds (%struct.bfa_ioc_hwif_s, ptr @hwif_cb, i32 0, i32 6), align 4
  store ptr @bfa_ioc_cb_ownership_reset, ptr getelementptr inbounds (%struct.bfa_ioc_hwif_s, ptr @hwif_cb, i32 0, i32 7), align 4
  store ptr @bfa_ioc_cb_sync_start, ptr getelementptr inbounds (%struct.bfa_ioc_hwif_s, ptr @hwif_cb, i32 0, i32 8), align 4
  store ptr @bfa_ioc_cb_sync_join, ptr getelementptr inbounds (%struct.bfa_ioc_hwif_s, ptr @hwif_cb, i32 0, i32 9), align 4
  store ptr @bfa_ioc_cb_sync_leave, ptr getelementptr inbounds (%struct.bfa_ioc_hwif_s, ptr @hwif_cb, i32 0, i32 10), align 4
  store ptr @bfa_ioc_cb_sync_ack, ptr getelementptr inbounds (%struct.bfa_ioc_hwif_s, ptr @hwif_cb, i32 0, i32 11), align 4
  store ptr @bfa_ioc_cb_sync_complete, ptr getelementptr inbounds (%struct.bfa_ioc_hwif_s, ptr @hwif_cb, i32 0, i32 12), align 4
  store ptr @bfa_ioc_cb_set_cur_ioc_fwstate, ptr getelementptr inbounds (%struct.bfa_ioc_hwif_s, ptr @hwif_cb, i32 0, i32 14), align 4
  store ptr @bfa_ioc_cb_get_cur_ioc_fwstate, ptr getelementptr inbounds (%struct.bfa_ioc_hwif_s, ptr @hwif_cb, i32 0, i32 15), align 4
  store ptr @bfa_ioc_cb_set_alt_ioc_fwstate, ptr getelementptr inbounds (%struct.bfa_ioc_hwif_s, ptr @hwif_cb, i32 0, i32 16), align 4
  store ptr @bfa_ioc_cb_get_alt_ioc_fwstate, ptr getelementptr inbounds (%struct.bfa_ioc_hwif_s, ptr @hwif_cb, i32 0, i32 17), align 4
  %ioc_hwif = getelementptr inbounds %struct.bfa_ioc_s, ptr %ioc, i32 0, i32 24
  %0 = ptrtoint ptr %ioc_hwif to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr @hwif_cb, ptr %ioc_hwif, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @bfa_ioc_cb_pll_init(ptr noundef %rb, i32 %fcmode) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %rb, i32 82500
  %0 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #7, !srcloc !17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !18
  %1 = and i32 %0, 65535
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !19
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %1) #7, !srcloc !20
  %add.ptr5 = getelementptr i8, ptr %rb, i32 82508
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5) #7, !srcloc !17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !21
  %3 = and i32 %2, 65535
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !22
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5, i32 %3) #7, !srcloc !20
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !23
  tail call void @arm_heavy_mb() #7
  %add.ptr18 = getelementptr i8, ptr %rb, i32 81924
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr18, i32 -1) #7, !srcloc !20
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !24
  tail call void @arm_heavy_mb() #7
  %add.ptr22 = getelementptr i8, ptr %rb, i32 82180
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr22, i32 -1) #7, !srcloc !20
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !25
  tail call void @arm_heavy_mb() #7
  %add.ptr26 = getelementptr i8, ptr %rb, i32 81920
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr26, i32 -1) #7, !srcloc !20
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !26
  tail call void @arm_heavy_mb() #7
  %add.ptr30 = getelementptr i8, ptr %rb, i32 82176
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr30, i32 -1) #7, !srcloc !20
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !27
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr18, i32 -1) #7, !srcloc !20
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !28
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr22, i32 -1) #7, !srcloc !20
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !29
  tail call void @arm_heavy_mb() #7
  %add.ptr42 = getelementptr i8, ptr %rb, i32 82440
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr42, i32 256) #7, !srcloc !20
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !30
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr42, i32 67109120) #7, !srcloc !20
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !31
  tail call void @arm_heavy_mb() #7
  %add.ptr50 = getelementptr i8, ptr %rb, i32 82436
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr50, i32 256) #7, !srcloc !20
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !32
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr50, i32 67109120) #7, !srcloc !20
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %4 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %4(i32 noundef 429496) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !33
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr42, i32 256) #7, !srcloc !20
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !34
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr50, i32 256) #7, !srcloc !20
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !35
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr42, i32 66257152) #7, !srcloc !20
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !36
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr50, i32 334692608) #7, !srcloc !20
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %5 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %5(i32 noundef 429496000) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !37
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr26, i32 -1) #7, !srcloc !20
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !38
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr30, i32 -1) #7, !srcloc !20
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !39
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr42, i32 66256896) #7, !srcloc !20
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !40
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr50, i32 334692352) #7, !srcloc !20
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bfa_ioc_cb_firmware_lock(ptr noundef %ioc) #1 align 64 {
entry:
  %fwhdr = alloca %struct.bfi_ioc_image_hdr_s, align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %fwhdr) #7
  %0 = call ptr @memset(ptr %fwhdr, i32 255, i32 48)
  %ioc_fwstate.i = getelementptr inbounds %struct.bfa_ioc_s, ptr %ioc, i32 0, i32 13, i32 15
  %1 = ptrtoint ptr %ioc_fwstate.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %ioc_fwstate.i, align 4
  %3 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %2) #7, !srcloc !17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !41
  %4 = and i32 %3, -65536
  %5 = tail call i32 @llvm.bswap.i32(i32 %4) #7
  %trcmod = getelementptr inbounds %struct.bfa_ioc_s, ptr %ioc, i32 0, i32 14
  %6 = ptrtoint ptr %trcmod to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %trcmod, align 8
  %conv = zext i32 %5 to i64
  tail call void @__bfa_trc(ptr noundef %7, i32 noundef 4099, i32 noundef 81, i64 noundef %conv) #7
  %alt_ioc_fwstate.i = getelementptr inbounds %struct.bfa_ioc_s, ptr %ioc, i32 0, i32 13, i32 16
  %8 = ptrtoint ptr %alt_ioc_fwstate.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %alt_ioc_fwstate.i, align 4
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %9) #7, !srcloc !17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !42
  %11 = and i32 %10, -65536
  %12 = tail call i32 @llvm.bswap.i32(i32 %11) #7
  %13 = ptrtoint ptr %trcmod to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %trcmod, align 8
  %conv3 = zext i32 %12 to i64
  tail call void @__bfa_trc(ptr noundef %14, i32 noundef 4099, i32 noundef 83, i64 noundef %conv3) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp = icmp eq i32 %4, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @bfa_ioc_fwver_get(ptr noundef %ioc, ptr noundef nonnull %fwhdr) #7
  %call5 = call i32 @bfa_ioc_fwver_cmp(ptr noundef %ioc, ptr noundef nonnull %fwhdr) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool.not = icmp ne i32 %call5, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 100663296, i32 %11)
  %cmp6.not = icmp eq i32 %11, 100663296
  %or.cond = select i1 %tobool.not, i1 true, i1 %cmp6.not
  br i1 %or.cond, label %if.end.cleanup_crit_edge, label %if.then8

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then8:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %15 = ptrtoint ptr %trcmod to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %trcmod, align 8
  call void @__bfa_trc(ptr noundef %16, i32 noundef 4099, i32 noundef 96, i64 noundef %conv3) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then8, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.then8 ], [ 1, %entry.cleanup_crit_edge ], [ 1, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %fwhdr) #7
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @bfa_ioc_cb_firmware_unlock(ptr nocapture noundef %ioc) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @bfa_ioc_cb_reg_init(ptr noundef %ioc) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
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
  %arrayidx = getelementptr [2 x %struct.anon.9], ptr @iocreg_fnreg, i32 0, i32 %conv
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 %5
  %hfn_mbox2 = getelementptr inbounds %struct.bfa_ioc_s, ptr %ioc, i32 0, i32 13, i32 1
  %6 = ptrtoint ptr %hfn_mbox2 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %add.ptr, ptr %hfn_mbox2, align 4
  %lpu_mbox = getelementptr [2 x %struct.anon.9], ptr @iocreg_fnreg, i32 0, i32 %conv, i32 1
  %7 = ptrtoint ptr %lpu_mbox to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %lpu_mbox, align 4
  %add.ptr4 = getelementptr i8, ptr %3, i32 %8
  %lpu_mbox6 = getelementptr inbounds %struct.bfa_ioc_s, ptr %ioc, i32 0, i32 13, i32 3
  %9 = ptrtoint ptr %lpu_mbox6 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %add.ptr4, ptr %lpu_mbox6, align 4
  %hfn_pgn = getelementptr [2 x %struct.anon.9], ptr @iocreg_fnreg, i32 0, i32 %conv, i32 2
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
  %. = select i1 %cmp, i32 82496, i32 82504
  %.96 = select i1 %cmp, i32 82500, i32 82508
  %.97 = select i1 %cmp, i32 82508, i32 82500
  %add.ptr18 = getelementptr i8, ptr %3, i32 %.
  %add.ptr21 = getelementptr i8, ptr %3, i32 %.96
  %add.ptr24 = getelementptr i8, ptr %3, i32 %.97
  %15 = getelementptr inbounds %struct.bfa_ioc_s, ptr %ioc, i32 0, i32 13, i32 14
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %add.ptr18, ptr %15, align 4
  %17 = getelementptr inbounds %struct.bfa_ioc_s, ptr %ioc, i32 0, i32 13, i32 15
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %add.ptr21, ptr %17, align 4
  %19 = getelementptr inbounds %struct.bfa_ioc_s, ptr %ioc, i32 0, i32 13, i32 16
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %add.ptr24, ptr %19, align 4
  %ioc_regs = getelementptr inbounds %struct.bfa_ioc_s, ptr %ioc, i32 0, i32 13
  %arrayidx27 = getelementptr [2 x %struct.anon.10], ptr @iocreg_mbcmd, i32 0, i32 %conv
  %21 = ptrtoint ptr %arrayidx27 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %arrayidx27, align 4
  %add.ptr28 = getelementptr i8, ptr %3, i32 %22
  %23 = ptrtoint ptr %ioc_regs to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %add.ptr28, ptr %ioc_regs, align 4
  %lpu = getelementptr [2 x %struct.anon.10], ptr @iocreg_mbcmd, i32 0, i32 %conv, i32 1
  %24 = ptrtoint ptr %lpu to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %lpu, align 4
  %add.ptr31 = getelementptr i8, ptr %3, i32 %25
  %lpu_mbox_cmd = getelementptr inbounds %struct.bfa_ioc_s, ptr %ioc, i32 0, i32 13, i32 2
  %26 = ptrtoint ptr %lpu_mbox_cmd to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %add.ptr31, ptr %lpu_mbox_cmd, align 4
  %add.ptr33 = getelementptr i8, ptr %3, i32 100352
  %pss_ctl_reg = getelementptr inbounds %struct.bfa_ioc_s, ptr %ioc, i32 0, i32 13, i32 5
  %27 = ptrtoint ptr %pss_ctl_reg to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %add.ptr33, ptr %pss_ctl_reg, align 4
  %add.ptr35 = getelementptr i8, ptr %3, i32 100368
  %pss_err_status_reg = getelementptr inbounds %struct.bfa_ioc_s, ptr %ioc, i32 0, i32 13, i32 6
  %28 = ptrtoint ptr %pss_err_status_reg to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %add.ptr35, ptr %pss_err_status_reg, align 4
  %add.ptr37 = getelementptr i8, ptr %3, i32 82436
  %app_pll_fast_ctl_reg = getelementptr inbounds %struct.bfa_ioc_s, ptr %ioc, i32 0, i32 13, i32 7
  %29 = ptrtoint ptr %app_pll_fast_ctl_reg to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %add.ptr37, ptr %app_pll_fast_ctl_reg, align 4
  %add.ptr39 = getelementptr i8, ptr %3, i32 82440
  %app_pll_slow_ctl_reg = getelementptr inbounds %struct.bfa_ioc_s, ptr %ioc, i32 0, i32 13, i32 8
  %30 = ptrtoint ptr %app_pll_slow_ctl_reg to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %add.ptr39, ptr %app_pll_slow_ctl_reg, align 4
  %add.ptr41 = getelementptr i8, ptr %3, i32 82480
  %ioc_sem_reg = getelementptr inbounds %struct.bfa_ioc_s, ptr %ioc, i32 0, i32 13, i32 9
  %31 = ptrtoint ptr %ioc_sem_reg to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %add.ptr41, ptr %ioc_sem_reg, align 4
  %add.ptr43 = getelementptr i8, ptr %3, i32 82488
  %ioc_init_sem_reg = getelementptr inbounds %struct.bfa_ioc_s, ptr %ioc, i32 0, i32 13, i32 11
  %32 = ptrtoint ptr %ioc_init_sem_reg to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %add.ptr43, ptr %ioc_init_sem_reg, align 4
  %add.ptr45 = getelementptr i8, ptr %3, i32 32768
  %smem_page_start = getelementptr inbounds %struct.bfa_ioc_s, ptr %ioc, i32 0, i32 13, i32 23
  %33 = ptrtoint ptr %smem_page_start to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %add.ptr45, ptr %smem_page_start, align 4
  %smem_pg0 = getelementptr inbounds %struct.bfa_ioc_s, ptr %ioc, i32 0, i32 13, i32 24
  %34 = ptrtoint ptr %smem_pg0 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 64, ptr %smem_pg0, align 4
  %add.ptr48 = getelementptr i8, ptr %3, i32 100376
  %err_set = getelementptr inbounds %struct.bfa_ioc_s, ptr %ioc, i32 0, i32 13, i32 19
  %35 = ptrtoint ptr %err_set to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %add.ptr48, ptr %err_set, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @bfa_ioc_cb_map_port(ptr nocapture noundef %ioc) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %pci_func = getelementptr inbounds %struct.bfa_ioc_s, ptr %ioc, i32 0, i32 2, i32 1
  %0 = ptrtoint ptr %pci_func to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %pci_func, align 4
  %port_id = getelementptr inbounds %struct.bfa_ioc_s, ptr %ioc, i32 0, i32 19
  %2 = ptrtoint ptr %port_id to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 %1, ptr %port_id, align 8
  %trcmod = getelementptr inbounds %struct.bfa_ioc_s, ptr %ioc, i32 0, i32 14
  %3 = ptrtoint ptr %trcmod to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %trcmod, align 8
  %conv = zext i8 %1 to i64
  tail call void @__bfa_trc(ptr noundef %4, i32 noundef 4099, i32 noundef 201, i64 noundef %conv) #7
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @bfa_ioc_cb_isr_mode_set(ptr nocapture noundef %ioc, i32 noundef %msix) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @bfa_ioc_cb_notify_fail(ptr nocapture noundef readonly %ioc) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !43
  tail call void @arm_heavy_mb() #7
  %err_set = getelementptr inbounds %struct.bfa_ioc_s, ptr %ioc, i32 0, i32 13, i32 19
  %0 = ptrtoint ptr %err_set to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %err_set, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %1, i32 -1) #7, !srcloc !20
  %2 = ptrtoint ptr %err_set to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %err_set, align 4
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %3) #7, !srcloc !17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !44
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @bfa_ioc_cb_ownership_reset(ptr nocapture noundef readonly %ioc) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %ioc_sem_reg = getelementptr inbounds %struct.bfa_ioc_s, ptr %ioc, i32 0, i32 13, i32 9
  %0 = ptrtoint ptr %ioc_sem_reg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ioc_sem_reg, align 4
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1) #7, !srcloc !17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !45
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !46
  tail call void @arm_heavy_mb() #7
  %3 = ptrtoint ptr %ioc_sem_reg to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %ioc_sem_reg, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %4, i32 16777216) #7, !srcloc !20
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bfa_ioc_cb_sync_start(ptr nocapture noundef readonly %ioc) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %ioc_fwstate1 = getelementptr inbounds %struct.bfa_ioc_s, ptr %ioc, i32 0, i32 13, i32 15
  %0 = ptrtoint ptr %ioc_fwstate1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ioc_fwstate1, align 4
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1) #7, !srcloc !17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !47
  %3 = and i32 %2, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %if.end, label %do.body

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !48
  tail call void @arm_heavy_mb() #7
  %4 = ptrtoint ptr %ioc_fwstate1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ioc_fwstate1, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %5, i32 0) #7, !srcloc !20
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !49
  tail call void @arm_heavy_mb() #7
  %alt_ioc_fwstate = getelementptr inbounds %struct.bfa_ioc_s, ptr %ioc, i32 0, i32 13, i32 16
  %6 = ptrtoint ptr %alt_ioc_fwstate to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %alt_ioc_fwstate, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %7, i32 0) #7, !srcloc !20
  br label %cleanup

if.end:                                           ; preds = %entry
  %8 = ptrtoint ptr %ioc_fwstate1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ioc_fwstate1, align 4
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %9) #7, !srcloc !17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !41
  %11 = and i32 %10, -65536
  %12 = tail call i32 @llvm.bswap.i32(i32 %11) #7
  %trunc.i = trunc i32 %12 to i16
  call void @__sanitizer_cov_trace_const_cmp2(i16 10, i16 %trunc.i)
  %13 = icmp ult i16 %trunc.i, 10
  br i1 %13, label %switch.hole_check, label %if.end.if.else.i_crit_edge

if.end.if.else.i_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else.i

if.else.i:                                        ; preds = %switch.hole_check.if.else.i_crit_edge, %if.end.if.else.i_crit_edge
  %alt_ioc_fwstate.i.i = getelementptr inbounds %struct.bfa_ioc_s, ptr %ioc, i32 0, i32 13, i32 16
  %14 = ptrtoint ptr %alt_ioc_fwstate.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %alt_ioc_fwstate.i.i, align 4
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %15) #7, !srcloc !17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !42
  %17 = and i32 %16, -65536
  %18 = tail call i32 @llvm.bswap.i32(i32 %17) #7
  %trunc30.i = trunc i32 %18 to i16
  call void @__sanitizer_cov_trace_const_cmp2(i16 10, i16 %trunc30.i)
  %19 = icmp ult i16 %trunc30.i, 10
  br i1 %19, label %switch.lookup13, label %if.else.i.cleanup_crit_edge

if.else.i.cleanup_crit_edge:                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

switch.hole_check:                                ; preds = %if.end
  %switch.shifted = lshr i16 595, %trunc.i
  %20 = and i16 %switch.shifted, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %20)
  %switch.lobit.not = icmp eq i16 %20, 0
  br i1 %switch.lobit.not, label %switch.hole_check.if.else.i_crit_edge, label %switch.hole_check.cleanup_crit_edge

switch.hole_check.cleanup_crit_edge:              ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

switch.hole_check.if.else.i_crit_edge:            ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else.i

switch.lookup13:                                  ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #9
  %sext = shl nuw i32 %18, 16
  %21 = ashr exact i32 %sext, 16
  %switch.gep = getelementptr inbounds [10 x i32], ptr @switch.table.bfa_ioc_cb_sync_start, i32 0, i32 %21
  %22 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %22)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %cleanup

cleanup:                                          ; preds = %switch.lookup13, %switch.hole_check.cleanup_crit_edge, %if.else.i.cleanup_crit_edge, %do.body
  %retval.0 = phi i32 [ 1, %do.body ], [ %switch.load, %switch.lookup13 ], [ 0, %if.else.i.cleanup_crit_edge ], [ 1, %switch.hole_check.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @bfa_ioc_cb_sync_join(ptr nocapture noundef readonly %ioc) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %ioc_fwstate = getelementptr inbounds %struct.bfa_ioc_s, ptr %ioc, i32 0, i32 13, i32 15
  %0 = ptrtoint ptr %ioc_fwstate to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ioc_fwstate, align 4
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1) #7, !srcloc !17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !50
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !51
  tail call void @arm_heavy_mb() #7
  %3 = or i32 %2, 256
  %4 = ptrtoint ptr %ioc_fwstate to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ioc_fwstate, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %5, i32 %3) #7, !srcloc !20
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @bfa_ioc_cb_sync_leave(ptr nocapture noundef readonly %ioc) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %ioc_fwstate = getelementptr inbounds %struct.bfa_ioc_s, ptr %ioc, i32 0, i32 13, i32 15
  %0 = ptrtoint ptr %ioc_fwstate to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ioc_fwstate, align 4
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1) #7, !srcloc !17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !52
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !53
  tail call void @arm_heavy_mb() #7
  %3 = and i32 %2, -257
  %4 = ptrtoint ptr %ioc_fwstate to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ioc_fwstate, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %5, i32 %3) #7, !srcloc !20
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @bfa_ioc_cb_sync_ack(ptr nocapture noundef readonly %ioc) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %ioc_fwstate.i = getelementptr inbounds %struct.bfa_ioc_s, ptr %ioc, i32 0, i32 13, i32 15
  %0 = ptrtoint ptr %ioc_fwstate.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ioc_fwstate.i, align 4
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1) #7, !srcloc !17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !54
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !55
  tail call void @arm_heavy_mb() #7
  %3 = and i32 %2, 65535
  %4 = or i32 %3, 134217728
  %5 = ptrtoint ptr %ioc_fwstate.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ioc_fwstate.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %6, i32 %4) #7, !srcloc !20
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bfa_ioc_cb_sync_complete(ptr nocapture noundef readonly %ioc) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %ioc_fwstate.i = getelementptr inbounds %struct.bfa_ioc_s, ptr %ioc, i32 0, i32 13, i32 15
  %0 = ptrtoint ptr %ioc_fwstate.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ioc_fwstate.i, align 4
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1) #7, !srcloc !17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !41
  %3 = and i32 %2, -65536
  %4 = tail call i32 @llvm.bswap.i32(i32 %3) #7
  %trunc = trunc i32 %4 to i16
  call void @__sanitizer_cov_trace_const_cmp2(i16 10, i16 %trunc)
  %5 = icmp ult i16 %trunc, 10
  br i1 %5, label %switch.hole_check, label %entry.if.else_crit_edge

entry.if.else_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else

if.else:                                          ; preds = %switch.hole_check.if.else_crit_edge, %entry.if.else_crit_edge
  %alt_ioc_fwstate.i = getelementptr inbounds %struct.bfa_ioc_s, ptr %ioc, i32 0, i32 13, i32 16
  %6 = ptrtoint ptr %alt_ioc_fwstate.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %alt_ioc_fwstate.i, align 4
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %7) #7, !srcloc !17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !42
  %9 = and i32 %8, -65536
  %10 = tail call i32 @llvm.bswap.i32(i32 %9) #7
  %trunc30 = trunc i32 %10 to i16
  call void @__sanitizer_cov_trace_const_cmp2(i16 10, i16 %trunc30)
  %11 = icmp ult i16 %trunc30, 10
  br i1 %11, label %switch.lookup31, label %if.else.cleanup_crit_edge

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

switch.hole_check:                                ; preds = %entry
  %switch.shifted = lshr i16 595, %trunc
  %12 = and i16 %switch.shifted, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %12)
  %switch.lobit.not = icmp eq i16 %12, 0
  br i1 %switch.lobit.not, label %switch.hole_check.if.else_crit_edge, label %switch.hole_check.cleanup_crit_edge

switch.hole_check.cleanup_crit_edge:              ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

switch.hole_check.if.else_crit_edge:              ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else

switch.lookup31:                                  ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  %sext = shl nuw i32 %10, 16
  %13 = ashr exact i32 %sext, 16
  %switch.gep = getelementptr inbounds [10 x i32], ptr @switch.table.bfa_ioc_cb_sync_complete, i32 0, i32 %13
  %14 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %14)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %cleanup

cleanup:                                          ; preds = %switch.lookup31, %switch.hole_check.cleanup_crit_edge, %if.else.cleanup_crit_edge
  %retval.0 = phi i32 [ %switch.load, %switch.lookup31 ], [ 0, %if.else.cleanup_crit_edge ], [ 1, %switch.hole_check.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @bfa_ioc_cb_set_cur_ioc_fwstate(ptr nocapture noundef readonly %ioc, i32 noundef %fwstate) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %ioc_fwstate = getelementptr inbounds %struct.bfa_ioc_s, ptr %ioc, i32 0, i32 13, i32 15
  %0 = ptrtoint ptr %ioc_fwstate to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ioc_fwstate, align 4
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1) #7, !srcloc !17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !54
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !55
  tail call void @arm_heavy_mb() #7
  %3 = and i32 %2, 65535
  %4 = tail call i32 @llvm.bswap.i32(i32 %3)
  %or = or i32 %4, %fwstate
  %5 = tail call i32 @llvm.bswap.i32(i32 %or)
  %6 = ptrtoint ptr %ioc_fwstate to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ioc_fwstate, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %7, i32 %5) #7, !srcloc !20
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bfa_ioc_cb_get_cur_ioc_fwstate(ptr nocapture noundef readonly %ioc) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %ioc_fwstate = getelementptr inbounds %struct.bfa_ioc_s, ptr %ioc, i32 0, i32 13, i32 15
  %0 = ptrtoint ptr %ioc_fwstate to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ioc_fwstate, align 4
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1) #7, !srcloc !17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !41
  %3 = and i32 %2, -65536
  %4 = tail call i32 @llvm.bswap.i32(i32 %3)
  ret i32 %4
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @bfa_ioc_cb_set_alt_ioc_fwstate(ptr nocapture noundef readonly %ioc, i32 noundef %fwstate) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %alt_ioc_fwstate = getelementptr inbounds %struct.bfa_ioc_s, ptr %ioc, i32 0, i32 13, i32 16
  %0 = ptrtoint ptr %alt_ioc_fwstate to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %alt_ioc_fwstate, align 4
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1) #7, !srcloc !17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !56
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !57
  tail call void @arm_heavy_mb() #7
  %3 = and i32 %2, 65535
  %4 = tail call i32 @llvm.bswap.i32(i32 %3)
  %or = or i32 %4, %fwstate
  %5 = tail call i32 @llvm.bswap.i32(i32 %or)
  %6 = ptrtoint ptr %alt_ioc_fwstate to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %alt_ioc_fwstate, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %7, i32 %5) #7, !srcloc !20
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bfa_ioc_cb_get_alt_ioc_fwstate(ptr nocapture noundef readonly %ioc) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %alt_ioc_fwstate = getelementptr inbounds %struct.bfa_ioc_s, ptr %ioc, i32 0, i32 13, i32 16
  %0 = ptrtoint ptr %alt_ioc_fwstate to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %alt_ioc_fwstate, align 4
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1) #7, !srcloc !17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !42
  %3 = and i32 %2, -65536
  %4 = tail call i32 @llvm.bswap.i32(i32 %3)
  ret i32 %4
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @__bfa_trc(ptr noundef, i32 noundef, i32 noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @bfa_ioc_fwver_get(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bfa_ioc_fwver_cmp(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

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
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 5)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 5)
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6}
!llvm.module.flags = !{!8, !9, !10, !11, !12, !13, !14, !15}
!llvm.ident = !{!16}

!0 = !{ptr @hwif_cb, !1, !"hwif_cb", i1 false, i1 false}
!1 = !{!"../drivers/scsi/bfa/bfa_ioc_cb.c", i32 42, i32 30}
!2 = distinct !{null, !3, !"__trc_fileno", i1 false, i1 false}
!3 = !{!"../drivers/scsi/bfa/bfa_ioc_cb.c", i32 16, i32 1}
!4 = !{ptr @iocreg_fnreg, !5, !"iocreg_fnreg", i1 false, i1 false}
!5 = !{!"../drivers/scsi/bfa/bfa_ioc_cb.c", i32 121, i32 52}
!6 = !{ptr @iocreg_mbcmd, !7, !"iocreg_mbcmd", i1 false, i1 false}
!7 = !{!"../drivers/scsi/bfa/bfa_ioc_cb.c", i32 129, i32 33}
!8 = !{i32 1, !"wchar_size", i32 2}
!9 = !{i32 1, !"min_enum_size", i32 4}
!10 = !{i32 8, !"branch-target-enforcement", i32 0}
!11 = !{i32 8, !"sign-return-address", i32 0}
!12 = !{i32 8, !"sign-return-address-all", i32 0}
!13 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!14 = !{i32 7, !"uwtable", i32 1}
!15 = !{i32 7, !"frame-pointer", i32 2}
!16 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!17 = !{i64 4999097}
!18 = !{i64 2156186105}
!19 = !{i64 2156186386}
!20 = !{i64 4998679}
!21 = !{i64 2156187145}
!22 = !{i64 2156187426}
!23 = !{i64 2156187911}
!24 = !{i64 2156188345}
!25 = !{i64 2156188779}
!26 = !{i64 2156189213}
!27 = !{i64 2156189647}
!28 = !{i64 2156190081}
!29 = !{i64 2156190522}
!30 = !{i64 2156190981}
!31 = !{i64 2156191455}
!32 = !{i64 2156191914}
!33 = !{i64 2156192924}
!34 = !{i64 2156193359}
!35 = !{i64 2156193805}
!36 = !{i64 2156194284}
!37 = !{i64 2156195299}
!38 = !{i64 2156195733}
!39 = !{i64 2156196164}
!40 = !{i64 2156196586}
!41 = !{i64 2156183631}
!42 = !{i64 2156185246}
!43 = !{i64 2156176413}
!44 = !{i64 2156177094}
!45 = !{i64 2156179642}
!46 = !{i64 2156179862}
!47 = !{i64 2156178207}
!48 = !{i64 2156178451}
!49 = !{i64 2156178904}
!50 = !{i64 2156180557}
!51 = !{i64 2156180829}
!52 = !{i64 2156181569}
!53 = !{i64 2156181842}
!54 = !{i64 2156182585}
!55 = !{i64 2156182846}
!56 = !{i64 2156184176}
!57 = !{i64 2156184441}
