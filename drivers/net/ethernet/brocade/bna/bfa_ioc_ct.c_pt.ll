; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/brocade/bna/bfa_ioc_ct.c_pt.bc'
source_filename = "../drivers/net/ethernet/brocade/bna/bfa_ioc_ct.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.bfa_ioc_hwif = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.anon.2 = type { i32, i32, i32 }
%struct.anon.3 = type { i32, i32 }
%struct.anon.4 = type { i32, i32 }
%struct.anon.5 = type { i32, i32, i32, i32, i32, i32 }
%struct.bfa_ioc = type { ptr, ptr, %struct.bfa_pcidev, %struct.timer_list, %struct.timer_list, %struct.timer_list, %struct.timer_list, i32, %struct.list_head, ptr, i32, i8, i32, %struct.bfa_ioc_regs, %struct.bfa_ioc_drv_stats, i8, i8, i8, i8, %struct.bfa_dma, ptr, ptr, %struct.bfa_ioc_mbox_mod, ptr, %struct.bfa_iocpf, i32, i32, i32, i32, i32, i8, i8 }
%struct.bfa_pcidev = type { i32, i8, i16, i16, ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.bfa_ioc_regs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.bfa_ioc_drv_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.bfa_dma = type { ptr, i64 }
%struct.bfa_ioc_mbox_mod = type { %struct.list_head, i32, [34 x %struct.anon] }
%struct.anon = type { ptr, ptr }
%struct.bfa_iocpf = type { ptr, ptr, i8, i8, i32 }
%struct.bfi_ioc_image_hdr = type { i32, i8, i8, i8, i8, i32, i32, [2 x i32], %struct.bfi_ioc_fwver, [4 x i32] }
%struct.bfi_ioc_fwver = type { i8, i8, i8, i8, [2 x i8], i8, i8 }

@nw_hwif_ct = internal constant { %struct.bfa_ioc_hwif, [56 x i8] } { %struct.bfa_ioc_hwif { ptr @bfa_ioc_ct_pll_init, ptr @bfa_ioc_ct_firmware_lock, ptr @bfa_ioc_ct_firmware_unlock, ptr @bfa_ioc_ct_reg_init, ptr @bfa_ioc_ct_map_port, ptr @bfa_ioc_ct_isr_mode_set, ptr @bfa_ioc_ct_notify_fail, ptr @bfa_ioc_ct_ownership_reset, ptr @bfa_ioc_ct_sync_start, ptr @bfa_ioc_ct_sync_join, ptr @bfa_ioc_ct_sync_leave, ptr @bfa_ioc_ct_sync_ack, ptr @bfa_ioc_ct_sync_complete, ptr null, ptr @bfa_ioc_ct_set_cur_ioc_fwstate, ptr @bfa_ioc_ct_get_cur_ioc_fwstate, ptr @bfa_ioc_ct_set_alt_ioc_fwstate, ptr @bfa_ioc_ct_get_alt_ioc_fwstate }, [56 x i8] zeroinitializer }, align 32
@nw_hwif_ct2 = internal constant { %struct.bfa_ioc_hwif, [56 x i8] } { %struct.bfa_ioc_hwif { ptr @bfa_ioc_ct2_pll_init, ptr @bfa_ioc_ct_firmware_lock, ptr @bfa_ioc_ct_firmware_unlock, ptr @bfa_ioc_ct2_reg_init, ptr @bfa_ioc_ct2_map_port, ptr null, ptr @bfa_ioc_ct_notify_fail, ptr @bfa_ioc_ct_ownership_reset, ptr @bfa_ioc_ct_sync_start, ptr @bfa_ioc_ct_sync_join, ptr @bfa_ioc_ct_sync_leave, ptr @bfa_ioc_ct_sync_ack, ptr @bfa_ioc_ct_sync_complete, ptr @bfa_ioc_ct2_lpu_read_stat, ptr @bfa_ioc_ct_set_cur_ioc_fwstate, ptr @bfa_ioc_ct_get_cur_ioc_fwstate, ptr @bfa_ioc_ct_set_alt_ioc_fwstate, ptr @bfa_ioc_ct_get_alt_ioc_fwstate }, [56 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@ct_fnreg = internal constant { [4 x %struct.anon.2], [48 x i8] } { [4 x %struct.anon.2] [%struct.anon.2 { i32 102912, i32 103040, i32 81928 }, %struct.anon.2 { i32 103008, i32 103136, i32 82184 }, %struct.anon.2 { i32 103424, i32 103552, i32 82696 }, %struct.anon.2 { i32 103520, i32 103648, i32 82952 }], [48 x i8] zeroinitializer }, align 32
@ct_p0reg = internal constant { [4 x %struct.anon.3], [32 x i8] } { [4 x %struct.anon.3] [%struct.anon.3 { i32 102400, i32 102408 }, %struct.anon.3 { i32 102416, i32 102424 }, %struct.anon.3 { i32 102736, i32 102744 }, %struct.anon.3 { i32 102752, i32 102760 }], [32 x i8] zeroinitializer }, align 32
@ct_p1reg = internal constant { [4 x %struct.anon.4], [32 x i8] } { [4 x %struct.anon.4] [%struct.anon.4 { i32 102404, i32 102412 }, %struct.anon.4 { i32 102420, i32 102428 }, %struct.anon.4 { i32 102740, i32 102748 }, %struct.anon.4 { i32 102756, i32 102764 }], [32 x i8] zeroinitializer }, align 32
@ct2_reg = internal constant { [2 x %struct.anon.5], [48 x i8] } { [2 x %struct.anon.5] [%struct.anon.5 { i32 196608, i32 196672, i32 196888, i32 196736, i32 196744, i32 196752 }, %struct.anon.5 { i32 196640, i32 196704, i32 196888, i32 196740, i32 196748, i32 196756 }], [48 x i8] zeroinitializer }, align 32
@___asan_gen_.1 = private unnamed_addr constant [11 x i8] c"nw_hwif_ct\00", align 1
@___asan_gen_.3 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.17, i32 55, i32 34 }
@___asan_gen_.4 = private unnamed_addr constant [12 x i8] c"nw_hwif_ct2\00", align 1
@___asan_gen_.6 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.17, i32 75, i32 34 }
@___asan_gen_.7 = private unnamed_addr constant [9 x i8] c"ct_fnreg\00", align 1
@___asan_gen_.9 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.17, i32 203, i32 3 }
@___asan_gen_.10 = private unnamed_addr constant [9 x i8] c"ct_p0reg\00", align 1
@___asan_gen_.12 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.17, i32 214, i32 3 }
@___asan_gen_.13 = private unnamed_addr constant [9 x i8] c"ct_p1reg\00", align 1
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.17, i32 225, i32 3 }
@___asan_gen_.16 = private unnamed_addr constant [8 x i8] c"ct2_reg\00", align 1
@___asan_gen_.17 = private constant [49 x i8] c"../drivers/net/ethernet/brocade/bna/bfa_ioc_ct.c\00", align 1
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.17, i32 239, i32 3 }
@llvm.compiler.used = appending global [6 x ptr] [ptr @nw_hwif_ct, ptr @nw_hwif_ct2, ptr @ct_fnreg, ptr @ct_p0reg, ptr @ct_p1reg, ptr @ct2_reg], section "llvm.metadata"
@0 = internal global [6 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nw_hwif_ct to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nw_hwif_ct2 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ct_fnreg to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ct_p0reg to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ct_p1reg to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ct2_reg to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define dso_local void @bfa_nw_ioc_set_ct_hwif(ptr nocapture noundef writeonly %ioc) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %ioc_hwif = getelementptr inbounds %struct.bfa_ioc, ptr %ioc, i32 0, i32 23
  %0 = ptrtoint ptr %ioc_hwif to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr @nw_hwif_ct, ptr %ioc_hwif, align 4
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define dso_local void @bfa_nw_ioc_set_ct2_hwif(ptr nocapture noundef writeonly %ioc) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %ioc_hwif = getelementptr inbounds %struct.bfa_ioc, ptr %ioc, i32 0, i32 23
  %0 = ptrtoint ptr %ioc_hwif to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr @nw_hwif_ct2, ptr %ioc_hwif, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @bfa_nw_ioc_ct2_poweron(ptr nocapture noundef readonly %ioc) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %pci_bar_kva = getelementptr inbounds %struct.bfa_ioc, ptr %ioc, i32 0, i32 2, i32 4
  %0 = ptrtoint ptr %pci_bar_kva to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pci_bar_kva, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 196924
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #6, !srcloc !21
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !22
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
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3, i32 %4) #6, !srcloc !23
  br label %cleanup

do.body4:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %pci_func = getelementptr inbounds %struct.bfa_ioc, ptr %ioc, i32 0, i32 2, i32 1
  %5 = ptrtoint ptr %pci_func to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %pci_func, align 4
  %conv = zext i8 %6 to i32
  %mul = shl nuw nsw i32 %conv, 6
  %or = or i32 %mul, 129024
  %7 = tail call i32 @llvm.bswap.i32(i32 %or)
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %7) #6, !srcloc !23
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !24
  tail call void @arm_heavy_mb() #6
  %8 = ptrtoint ptr %pci_func to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %pci_func, align 4
  %conv14 = zext i8 %9 to i32
  %mul15 = shl nuw nsw i32 %conv14, 6
  %10 = tail call i32 @llvm.bswap.i32(i32 %mul15)
  %add.ptr16 = getelementptr i8, ptr %1, i32 196920
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr16, i32 %10) #6, !srcloc !23
  br label %cleanup

cleanup:                                          ; preds = %do.body4, %do.body
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bfa_ioc_ct_pll_init(ptr noundef %rb, i32 noundef %asic_mode) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asic_mode)
  %cmp = icmp eq i32 %asic_mode, 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6
  tail call void @arm_heavy_mb() #6
  %add.ptr = getelementptr i8, ptr %rb, i32 83468
  br i1 %cmp, label %do.body, label %do.body5

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 0) #6, !srcloc !23
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !25
  tail call void @arm_heavy_mb() #6
  %add.ptr4 = getelementptr i8, ptr %rb, i32 82568
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4, i32 218103808) #6, !srcloc !23
  br label %do.body13

do.body5:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 16777216) #6, !srcloc !23
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !26
  tail call void @arm_heavy_mb() #6
  %add.ptr12 = getelementptr i8, ptr %rb, i32 82568
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr12, i32 33554432) #6, !srcloc !23
  br label %do.body13

do.body13:                                        ; preds = %do.body5, %do.body
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !27
  tail call void @arm_heavy_mb() #6
  %add.ptr16 = getelementptr i8, ptr %rb, i32 82500
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr16, i32 0) #6, !srcloc !23
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !28
  tail call void @arm_heavy_mb() #6
  %add.ptr20 = getelementptr i8, ptr %rb, i32 82508
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr20, i32 0) #6, !srcloc !23
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !29
  tail call void @arm_heavy_mb() #6
  %add.ptr24 = getelementptr i8, ptr %rb, i32 81924
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr24, i32 -1) #6, !srcloc !23
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !30
  tail call void @arm_heavy_mb() #6
  %add.ptr28 = getelementptr i8, ptr %rb, i32 82180
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr28, i32 -1) #6, !srcloc !23
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !31
  tail call void @arm_heavy_mb() #6
  %add.ptr32 = getelementptr i8, ptr %rb, i32 81920
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr32, i32 -1) #6, !srcloc !23
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !32
  tail call void @arm_heavy_mb() #6
  %add.ptr36 = getelementptr i8, ptr %rb, i32 82176
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr36, i32 -1) #6, !srcloc !23
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !33
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr24, i32 -1) #6, !srcloc !23
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !34
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr28, i32 -1) #6, !srcloc !23
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !35
  tail call void @arm_heavy_mb() #6
  %add.ptr48 = getelementptr i8, ptr %rb, i32 82440
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr48, i32 443744512) #6, !srcloc !23
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !36
  tail call void @arm_heavy_mb() #6
  %add.ptr53 = getelementptr i8, ptr %rb, i32 82436
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr53, i32 443744512) #6, !srcloc !23
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !37
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr48, i32 460521728) #6, !srcloc !23
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !38
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr53, i32 460521728) #6, !srcloc !23
  %0 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr24) #6, !srcloc !21
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !39
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %1 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %1(i32 noundef 429496000) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !40
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr32, i32 -1) #6, !srcloc !23
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !41
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr36, i32 -1) #6, !srcloc !23
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !42
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr48, i32 460521472) #6, !srcloc !23
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !43
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr53, i32 460521472) #6, !srcloc !23
  br i1 %cmp, label %do.body118.critedge, label %do.body88

do.body88:                                        ; preds = %do.body13
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !44
  tail call void @arm_heavy_mb() #6
  %add.ptr91 = getelementptr i8, ptr %rb, i32 145436
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr91, i32 16777216) #6, !srcloc !23
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !45
  tail call void @arm_heavy_mb() #6
  %add.ptr95 = getelementptr i8, ptr %rb, i32 146460
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr95, i32 16777216) #6, !srcloc !23
  %add.ptr99.c = getelementptr i8, ptr %rb, i32 100352
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr99.c) #6, !srcloc !21
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !46
  %3 = and i32 %2, -131073
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !47
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr99.c, i32 %3) #6, !srcloc !23
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %4 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %4(i32 noundef 214748000) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !48
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr91, i32 0) #6, !srcloc !23
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !49
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr95, i32 0) #6, !srcloc !23
  br label %do.body118

do.body118.critedge:                              ; preds = %do.body13
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr99.c168 = getelementptr i8, ptr %rb, i32 100352
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr99.c168) #6, !srcloc !21
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !46
  %6 = and i32 %5, -131073
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !47
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr99.c168, i32 %6) #6, !srcloc !23
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %7 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %7(i32 noundef 214748000) #6
  br label %do.body118

do.body118:                                       ; preds = %do.body118.critedge, %do.body88
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !50
  tail call void @arm_heavy_mb() #6
  %add.ptr121 = getelementptr i8, ptr %rb, i32 82464
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr121, i32 67108864) #6, !srcloc !23
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %8 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %8(i32 noundef 214748000) #6
  %add.ptr124 = getelementptr i8, ptr %rb, i32 82468
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr124) #6, !srcloc !21
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !51
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !52
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr121, i32 0) #6, !srcloc !23
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i1 @bfa_ioc_ct_firmware_lock(ptr noundef %ioc) #1 align 64 {
entry:
  %fwhdr = alloca %struct.bfi_ioc_image_hdr, align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %fwhdr) #6
  %0 = call ptr @memset(ptr %fwhdr, i32 255, i32 48)
  %asic_gen = getelementptr inbounds %struct.bfa_ioc, ptr %ioc, i32 0, i32 25
  %1 = ptrtoint ptr %asic_gen to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %asic_gen, align 8
  %call = tail call i32 @bfa_cb_image_get_size(i32 noundef %2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 16384, i32 %call)
  %cmp = icmp ult i32 %call, 16384
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %ioc_usage_sem_reg = getelementptr inbounds %struct.bfa_ioc, ptr %ioc, i32 0, i32 13, i32 10
  %3 = ptrtoint ptr %ioc_usage_sem_reg to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %ioc_usage_sem_reg, align 4
  %call1 = tail call zeroext i1 @bfa_nw_ioc_sem_get(ptr noundef %4) #6
  %ioc_usage_reg = getelementptr inbounds %struct.bfa_ioc, ptr %ioc, i32 0, i32 13, i32 12
  %5 = ptrtoint ptr %ioc_usage_reg to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ioc_usage_reg, align 4
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %6) #6, !srcloc !21
  %8 = tail call i32 @llvm.bswap.i32(i32 %7)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !53
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp5 = icmp eq i32 %7, 0
  br i1 %cmp5, label %do.body, label %if.end15

do.body:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !54
  tail call void @arm_heavy_mb() #6
  %9 = ptrtoint ptr %ioc_usage_reg to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ioc_usage_reg, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %10, i32 16777216) #6, !srcloc !23
  %11 = ptrtoint ptr %ioc_usage_sem_reg to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %ioc_usage_sem_reg, align 4
  tail call void @bfa_nw_ioc_sem_release(ptr noundef %12) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !55
  tail call void @arm_heavy_mb() #6
  %ioc_fail_sync = getelementptr inbounds %struct.bfa_ioc, ptr %ioc, i32 0, i32 13, i32 20
  %13 = ptrtoint ptr %ioc_fail_sync to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %ioc_fail_sync, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %14, i32 0) #6, !srcloc !23
  br label %cleanup

if.end15:                                         ; preds = %if.end
  %ioc_fwstate19 = getelementptr inbounds %struct.bfa_ioc, ptr %ioc, i32 0, i32 13, i32 15
  %15 = ptrtoint ptr %ioc_fwstate19 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %ioc_fwstate19, align 4
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %16) #6, !srcloc !21
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !56
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %cmp24.not = icmp eq i32 %17, 0
  br i1 %cmp24.not, label %do.body28, label %do.end36, !prof !57

do.body28:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/ethernet/brocade/bna/bfa_ioc_ct.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 142, 0\0A.popsection", ""() #6, !srcloc !58
  unreachable

do.end36:                                         ; preds = %if.end15
  call void @bfa_nw_ioc_fwver_get(ptr noundef %ioc, ptr noundef nonnull %fwhdr) #6
  %call37 = call zeroext i1 @bfa_nw_ioc_fwver_cmp(ptr noundef %ioc, ptr noundef nonnull %fwhdr) #6
  br i1 %call37, label %if.end41, label %if.then38

if.then38:                                        ; preds = %do.end36
  call void @__sanitizer_cov_trace_pc() #8
  %18 = ptrtoint ptr %ioc_usage_sem_reg to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %ioc_usage_sem_reg, align 4
  call void @bfa_nw_ioc_sem_release(ptr noundef %19) #6
  br label %cleanup

if.end41:                                         ; preds = %do.end36
  call void @__sanitizer_cov_trace_pc() #8
  %inc = add i32 %8, 1
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !59
  call void @arm_heavy_mb() #6
  %20 = call i32 @llvm.bswap.i32(i32 %inc)
  %21 = ptrtoint ptr %ioc_usage_reg to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %ioc_usage_reg, align 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %22, i32 %20) #6, !srcloc !23
  %23 = ptrtoint ptr %ioc_usage_sem_reg to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %ioc_usage_sem_reg, align 4
  call void @bfa_nw_ioc_sem_release(ptr noundef %24) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end41, %if.then38, %do.body, %entry.cleanup_crit_edge
  %retval.0 = phi i1 [ true, %do.body ], [ true, %if.end41 ], [ false, %if.then38 ], [ true, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %fwhdr) #6
  ret i1 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @bfa_ioc_ct_firmware_unlock(ptr nocapture noundef readonly %ioc) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %asic_gen = getelementptr inbounds %struct.bfa_ioc, ptr %ioc, i32 0, i32 25
  %0 = ptrtoint ptr %asic_gen to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %asic_gen, align 8
  %call = tail call i32 @bfa_cb_image_get_size(i32 noundef %1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 16384, i32 %call)
  %cmp = icmp ult i32 %call, 16384
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %ioc_usage_sem_reg = getelementptr inbounds %struct.bfa_ioc, ptr %ioc, i32 0, i32 13, i32 10
  %2 = ptrtoint ptr %ioc_usage_sem_reg to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ioc_usage_sem_reg, align 4
  %call1 = tail call zeroext i1 @bfa_nw_ioc_sem_get(ptr noundef %3) #6
  %ioc_usage_reg = getelementptr inbounds %struct.bfa_ioc, ptr %ioc, i32 0, i32 13, i32 12
  %4 = ptrtoint ptr %ioc_usage_reg to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ioc_usage_reg, align 4
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %5) #6, !srcloc !21
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !60
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp5.not = icmp eq i32 %6, 0
  br i1 %cmp5.not, label %do.body9, label %do.end15, !prof !57

do.body9:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/ethernet/brocade/bna/bfa_ioc_ct.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 179, 0\0A.popsection", ""() #6, !srcloc !61
  unreachable

do.end15:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %7 = tail call i32 @llvm.bswap.i32(i32 %6)
  %dec = add i32 %7, -1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !62
  tail call void @arm_heavy_mb() #6
  %8 = tail call i32 @llvm.bswap.i32(i32 %dec)
  %9 = ptrtoint ptr %ioc_usage_reg to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ioc_usage_reg, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %10, i32 %8) #6, !srcloc !23
  %11 = ptrtoint ptr %ioc_usage_sem_reg to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %ioc_usage_sem_reg, align 4
  tail call void @bfa_nw_ioc_sem_release(ptr noundef %12) #6
  br label %cleanup

cleanup:                                          ; preds = %do.end15, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @bfa_ioc_ct_reg_init(ptr noundef %ioc) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %pci_func = getelementptr inbounds %struct.bfa_ioc, ptr %ioc, i32 0, i32 2, i32 1
  %0 = ptrtoint ptr %pci_func to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %pci_func, align 4
  %conv = zext i8 %1 to i32
  %pci_bar_kva = getelementptr inbounds %struct.bfa_ioc, ptr %ioc, i32 0, i32 2, i32 4
  %2 = ptrtoint ptr %pci_bar_kva to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pci_bar_kva, align 4
  %arrayidx = getelementptr [4 x %struct.anon.2], ptr @ct_fnreg, i32 0, i32 %conv
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 %5
  %ioc_regs = getelementptr inbounds %struct.bfa_ioc, ptr %ioc, i32 0, i32 13
  %hfn_mbox2 = getelementptr inbounds %struct.bfa_ioc, ptr %ioc, i32 0, i32 13, i32 1
  %6 = ptrtoint ptr %hfn_mbox2 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %add.ptr, ptr %hfn_mbox2, align 4
  %lpu_mbox = getelementptr [4 x %struct.anon.2], ptr @ct_fnreg, i32 0, i32 %conv, i32 1
  %7 = ptrtoint ptr %lpu_mbox to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %lpu_mbox, align 4
  %add.ptr4 = getelementptr i8, ptr %3, i32 %8
  %lpu_mbox6 = getelementptr inbounds %struct.bfa_ioc, ptr %ioc, i32 0, i32 13, i32 3
  %9 = ptrtoint ptr %lpu_mbox6 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %add.ptr4, ptr %lpu_mbox6, align 4
  %hfn_pgn = getelementptr [4 x %struct.anon.2], ptr @ct_fnreg, i32 0, i32 %conv, i32 2
  %10 = ptrtoint ptr %hfn_pgn to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %hfn_pgn, align 4
  %add.ptr8 = getelementptr i8, ptr %3, i32 %11
  %host_page_num_fn = getelementptr inbounds %struct.bfa_ioc, ptr %ioc, i32 0, i32 13, i32 13
  %12 = ptrtoint ptr %host_page_num_fn to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %add.ptr8, ptr %host_page_num_fn, align 4
  %port_id = getelementptr inbounds %struct.bfa_ioc, ptr %ioc, i32 0, i32 18
  %13 = ptrtoint ptr %port_id to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %port_id, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %cmp = icmp eq i8 %14, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr12 = getelementptr i8, ptr %3, i32 82496
  %heartbeat = getelementptr inbounds %struct.bfa_ioc, ptr %ioc, i32 0, i32 13, i32 14
  %15 = ptrtoint ptr %heartbeat to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %add.ptr12, ptr %heartbeat, align 4
  %add.ptr14 = getelementptr i8, ptr %3, i32 82500
  %ioc_fwstate = getelementptr inbounds %struct.bfa_ioc, ptr %ioc, i32 0, i32 13, i32 15
  %16 = ptrtoint ptr %ioc_fwstate to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %add.ptr14, ptr %ioc_fwstate, align 4
  %add.ptr16 = getelementptr i8, ptr %3, i32 82508
  %alt_ioc_fwstate = getelementptr inbounds %struct.bfa_ioc, ptr %ioc, i32 0, i32 13, i32 16
  %17 = ptrtoint ptr %alt_ioc_fwstate to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %add.ptr16, ptr %alt_ioc_fwstate, align 4
  %arrayidx18 = getelementptr [4 x %struct.anon.3], ptr @ct_p0reg, i32 0, i32 %conv
  %18 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx18, align 4
  %add.ptr19 = getelementptr i8, ptr %3, i32 %19
  %20 = ptrtoint ptr %ioc_regs to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %add.ptr19, ptr %ioc_regs, align 4
  %lpu = getelementptr [4 x %struct.anon.3], ptr @ct_p0reg, i32 0, i32 %conv, i32 1
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr28 = getelementptr i8, ptr %3, i32 82504
  %heartbeat30 = getelementptr inbounds %struct.bfa_ioc, ptr %ioc, i32 0, i32 13, i32 14
  %21 = ptrtoint ptr %heartbeat30 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %add.ptr28, ptr %heartbeat30, align 4
  %add.ptr31 = getelementptr i8, ptr %3, i32 82508
  %ioc_fwstate33 = getelementptr inbounds %struct.bfa_ioc, ptr %ioc, i32 0, i32 13, i32 15
  %22 = ptrtoint ptr %ioc_fwstate33 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %add.ptr31, ptr %ioc_fwstate33, align 4
  %add.ptr34 = getelementptr i8, ptr %3, i32 82500
  %alt_ioc_fwstate36 = getelementptr inbounds %struct.bfa_ioc, ptr %ioc, i32 0, i32 13, i32 16
  %23 = ptrtoint ptr %alt_ioc_fwstate36 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %add.ptr34, ptr %alt_ioc_fwstate36, align 4
  %arrayidx37 = getelementptr [4 x %struct.anon.4], ptr @ct_p1reg, i32 0, i32 %conv
  %24 = ptrtoint ptr %arrayidx37 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %arrayidx37, align 4
  %add.ptr39 = getelementptr i8, ptr %3, i32 %25
  %26 = ptrtoint ptr %ioc_regs to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %add.ptr39, ptr %ioc_regs, align 4
  %lpu43 = getelementptr [4 x %struct.anon.4], ptr @ct_p1reg, i32 0, i32 %conv, i32 1
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
  %28 = getelementptr inbounds %struct.bfa_ioc, ptr %ioc, i32 0, i32 13, i32 2
  %29 = ptrtoint ptr %28 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %add.ptr44.sink, ptr %28, align 4
  %30 = getelementptr inbounds %struct.bfa_ioc, ptr %ioc, i32 0, i32 13, i32 17
  %31 = ptrtoint ptr %30 to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %add.ptr47, ptr %30, align 4
  %32 = getelementptr inbounds %struct.bfa_ioc, ptr %ioc, i32 0, i32 13, i32 18
  %33 = ptrtoint ptr %32 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %add.ptr50, ptr %32, align 4
  %add.ptr53 = getelementptr i8, ptr %3, i32 100352
  %pss_ctl_reg = getelementptr inbounds %struct.bfa_ioc, ptr %ioc, i32 0, i32 13, i32 5
  %34 = ptrtoint ptr %pss_ctl_reg to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %add.ptr53, ptr %pss_ctl_reg, align 4
  %add.ptr55 = getelementptr i8, ptr %3, i32 100368
  %pss_err_status_reg = getelementptr inbounds %struct.bfa_ioc, ptr %ioc, i32 0, i32 13, i32 6
  %35 = ptrtoint ptr %pss_err_status_reg to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %add.ptr55, ptr %pss_err_status_reg, align 4
  %add.ptr57 = getelementptr i8, ptr %3, i32 82436
  %app_pll_fast_ctl_reg = getelementptr inbounds %struct.bfa_ioc, ptr %ioc, i32 0, i32 13, i32 7
  %36 = ptrtoint ptr %app_pll_fast_ctl_reg to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %add.ptr57, ptr %app_pll_fast_ctl_reg, align 4
  %add.ptr59 = getelementptr i8, ptr %3, i32 82440
  %app_pll_slow_ctl_reg = getelementptr inbounds %struct.bfa_ioc, ptr %ioc, i32 0, i32 13, i32 8
  %37 = ptrtoint ptr %app_pll_slow_ctl_reg to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %add.ptr59, ptr %app_pll_slow_ctl_reg, align 4
  %add.ptr61 = getelementptr i8, ptr %3, i32 82480
  %ioc_sem_reg = getelementptr inbounds %struct.bfa_ioc, ptr %ioc, i32 0, i32 13, i32 9
  %38 = ptrtoint ptr %ioc_sem_reg to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %add.ptr61, ptr %ioc_sem_reg, align 4
  %add.ptr63 = getelementptr i8, ptr %3, i32 82484
  %ioc_usage_sem_reg = getelementptr inbounds %struct.bfa_ioc, ptr %ioc, i32 0, i32 13, i32 10
  %39 = ptrtoint ptr %ioc_usage_sem_reg to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %add.ptr63, ptr %ioc_usage_sem_reg, align 4
  %add.ptr65 = getelementptr i8, ptr %3, i32 82488
  %ioc_init_sem_reg = getelementptr inbounds %struct.bfa_ioc, ptr %ioc, i32 0, i32 13, i32 11
  %40 = ptrtoint ptr %ioc_init_sem_reg to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %add.ptr65, ptr %ioc_init_sem_reg, align 4
  %add.ptr67 = getelementptr i8, ptr %3, i32 83488
  %ioc_usage_reg = getelementptr inbounds %struct.bfa_ioc, ptr %ioc, i32 0, i32 13, i32 12
  %41 = ptrtoint ptr %ioc_usage_reg to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %add.ptr67, ptr %ioc_usage_reg, align 4
  %add.ptr69 = getelementptr i8, ptr %3, i32 83492
  %ioc_fail_sync = getelementptr inbounds %struct.bfa_ioc, ptr %ioc, i32 0, i32 13, i32 20
  %42 = ptrtoint ptr %ioc_fail_sync to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %add.ptr69, ptr %ioc_fail_sync, align 4
  %add.ptr71 = getelementptr i8, ptr %3, i32 32768
  %smem_page_start = getelementptr inbounds %struct.bfa_ioc, ptr %ioc, i32 0, i32 13, i32 23
  %43 = ptrtoint ptr %smem_page_start to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %add.ptr71, ptr %smem_page_start, align 4
  %smem_pg0 = getelementptr inbounds %struct.bfa_ioc, ptr %ioc, i32 0, i32 13, i32 24
  %44 = ptrtoint ptr %smem_pg0 to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 384, ptr %smem_pg0, align 4
  %add.ptr74 = getelementptr i8, ptr %3, i32 100376
  %err_set = getelementptr inbounds %struct.bfa_ioc, ptr %ioc, i32 0, i32 13, i32 19
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
  %pci_bar_kva = getelementptr inbounds %struct.bfa_ioc, ptr %ioc, i32 0, i32 2, i32 4
  %0 = ptrtoint ptr %pci_bar_kva to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pci_bar_kva, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 83460
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #6, !srcloc !21
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !63
  %pci_func = getelementptr inbounds %struct.bfa_ioc, ptr %ioc, i32 0, i32 2, i32 1
  %4 = ptrtoint ptr %pci_func to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %pci_func, align 4
  %conv = zext i8 %5 to i32
  %mul = shl nuw nsw i32 %conv, 3
  %shr = lshr i32 %3, %mul
  %6 = trunc i32 %shr to i8
  %7 = lshr i8 %6, 4
  %conv4 = and i8 %7, 3
  %port_id = getelementptr inbounds %struct.bfa_ioc, ptr %ioc, i32 0, i32 18
  %8 = ptrtoint ptr %port_id to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %conv4, ptr %port_id, align 1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @bfa_ioc_ct_isr_mode_set(ptr nocapture noundef readonly %ioc, i1 noundef zeroext %msix) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %pci_bar_kva = getelementptr inbounds %struct.bfa_ioc, ptr %ioc, i32 0, i32 2, i32 4
  %0 = ptrtoint ptr %pci_bar_kva to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pci_bar_kva, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 83460
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #6, !srcloc !21
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !64
  %pci_func = getelementptr inbounds %struct.bfa_ioc, ptr %ioc, i32 0, i32 2, i32 1
  %4 = ptrtoint ptr %pci_func to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %pci_func, align 4
  %conv = zext i8 %5 to i32
  %mul = shl nuw nsw i32 %conv, 3
  %6 = shl i32 7, %mul
  %7 = and i32 %6, %3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool3.not = icmp eq i32 %7, 0
  %or.cond = select i1 %msix, i1 true, i1 %tobool3.not
  %or.cond.not = xor i1 %or.cond, true
  %or.cond35 = select i1 %msix, i1 %tobool3.not, i1 false
  %or.cond36 = select i1 %or.cond.not, i1 true, i1 %or.cond35
  br i1 %or.cond36, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %not.msix = xor i1 %msix, true
  %. = zext i1 %not.msix to i32
  %neg = xor i32 %6, -1
  %and15 = and i32 %3, %neg
  %shl20 = shl nuw i32 %., %mul
  %or = or i32 %and15, %shl20
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !65
  tail call void @arm_heavy_mb() #6
  %8 = tail call i32 @llvm.bswap.i32(i32 %or)
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %8) #6, !srcloc !23
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @bfa_ioc_ct_notify_fail(ptr nocapture noundef readonly %ioc) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !66
  tail call void @arm_heavy_mb() #6
  %ll_halt = getelementptr inbounds %struct.bfa_ioc, ptr %ioc, i32 0, i32 13, i32 17
  %0 = ptrtoint ptr %ll_halt to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ll_halt, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %1, i32 16777216) #6, !srcloc !23
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !67
  tail call void @arm_heavy_mb() #6
  %alt_ll_halt = getelementptr inbounds %struct.bfa_ioc, ptr %ioc, i32 0, i32 13, i32 18
  %2 = ptrtoint ptr %alt_ll_halt to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %alt_ll_halt, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %3, i32 16777216) #6, !srcloc !23
  %4 = ptrtoint ptr %ll_halt to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ll_halt, align 4
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %5) #6, !srcloc !21
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !68
  %7 = ptrtoint ptr %alt_ll_halt to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %alt_ll_halt, align 4
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %8) #6, !srcloc !21
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !69
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @bfa_ioc_ct_ownership_reset(ptr noundef %ioc) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %ioc_usage_sem_reg = getelementptr inbounds %struct.bfa_ioc, ptr %ioc, i32 0, i32 13, i32 10
  %0 = ptrtoint ptr %ioc_usage_sem_reg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ioc_usage_sem_reg, align 4
  %call = tail call zeroext i1 @bfa_nw_ioc_sem_get(ptr noundef %1) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !70
  tail call void @arm_heavy_mb() #6
  %ioc_usage_reg = getelementptr inbounds %struct.bfa_ioc, ptr %ioc, i32 0, i32 13, i32 12
  %2 = ptrtoint ptr %ioc_usage_reg to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ioc_usage_reg, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %3, i32 0) #6, !srcloc !23
  %4 = ptrtoint ptr %ioc_usage_sem_reg to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ioc_usage_sem_reg, align 4
  tail call void @bfa_nw_ioc_sem_release(ptr noundef %5) #6
  %ioc_sem_reg = getelementptr inbounds %struct.bfa_ioc, ptr %ioc, i32 0, i32 13, i32 9
  %6 = ptrtoint ptr %ioc_sem_reg to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ioc_sem_reg, align 4
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %7) #6, !srcloc !21
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !71
  tail call void @bfa_nw_ioc_hw_sem_release(ptr noundef %ioc) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i1 @bfa_ioc_ct_sync_start(ptr nocapture noundef readonly %ioc) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %ioc_fail_sync = getelementptr inbounds %struct.bfa_ioc, ptr %ioc, i32 0, i32 13, i32 20
  %0 = ptrtoint ptr %ioc_fail_sync to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ioc_fail_sync, align 4
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1) #6, !srcloc !21
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !72
  %shr = lshr i32 %3, 16
  %pci_func = getelementptr inbounds %struct.bfa_ioc, ptr %ioc, i32 0, i32 2, i32 1
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
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !73
  tail call void @arm_heavy_mb() #6
  %6 = ptrtoint ptr %ioc_fail_sync to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ioc_fail_sync, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %7, i32 0) #6, !srcloc !23
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !74
  tail call void @arm_heavy_mb() #6
  %ioc_usage_reg = getelementptr inbounds %struct.bfa_ioc, ptr %ioc, i32 0, i32 13, i32 12
  %8 = ptrtoint ptr %ioc_usage_reg to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ioc_usage_reg, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %9, i32 16777216) #6, !srcloc !23
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !75
  tail call void @arm_heavy_mb() #6
  %ioc_fwstate = getelementptr inbounds %struct.bfa_ioc, ptr %ioc, i32 0, i32 13, i32 15
  %10 = ptrtoint ptr %ioc_fwstate to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ioc_fwstate, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %11, i32 0) #6, !srcloc !23
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !76
  tail call void @arm_heavy_mb() #6
  %alt_ioc_fwstate = getelementptr inbounds %struct.bfa_ioc, ptr %ioc, i32 0, i32 13, i32 16
  %12 = ptrtoint ptr %alt_ioc_fwstate to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %alt_ioc_fwstate, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %13, i32 0) #6, !srcloc !23
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call16 = tail call zeroext i1 @bfa_ioc_ct_sync_complete(ptr noundef %ioc)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %do.body
  %retval.0 = phi i1 [ true, %do.body ], [ %call16, %if.end ]
  ret i1 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @bfa_ioc_ct_sync_join(ptr nocapture noundef readonly %ioc) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %ioc_fail_sync = getelementptr inbounds %struct.bfa_ioc, ptr %ioc, i32 0, i32 13, i32 20
  %0 = ptrtoint ptr %ioc_fail_sync to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ioc_fail_sync, align 4
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1) #6, !srcloc !21
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !77
  %pci_func = getelementptr inbounds %struct.bfa_ioc, ptr %ioc, i32 0, i32 2, i32 1
  %4 = ptrtoint ptr %pci_func to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %pci_func, align 4
  %conv = zext i8 %5 to i32
  %shl2 = shl i32 65536, %conv
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !78
  tail call void @arm_heavy_mb() #6
  %or = or i32 %shl2, %3
  %6 = tail call i32 @llvm.bswap.i32(i32 %or)
  %7 = ptrtoint ptr %ioc_fail_sync to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %ioc_fail_sync, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %8, i32 %6) #6, !srcloc !23
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @bfa_ioc_ct_sync_leave(ptr nocapture noundef readonly %ioc) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %ioc_fail_sync = getelementptr inbounds %struct.bfa_ioc, ptr %ioc, i32 0, i32 13, i32 20
  %0 = ptrtoint ptr %ioc_fail_sync to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ioc_fail_sync, align 4
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1) #6, !srcloc !21
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !79
  %pci_func = getelementptr inbounds %struct.bfa_ioc, ptr %ioc, i32 0, i32 2, i32 1
  %4 = ptrtoint ptr %pci_func to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %pci_func, align 4
  %conv = zext i8 %5 to i32
  %shl = shl nuw i32 1, %conv
  %shl2 = shl i32 %shl, 16
  %or = or i32 %shl2, %shl
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !80
  tail call void @arm_heavy_mb() #6
  %neg = xor i32 %or, -1
  %and = and i32 %3, %neg
  %6 = tail call i32 @llvm.bswap.i32(i32 %and)
  %7 = ptrtoint ptr %ioc_fail_sync to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %ioc_fail_sync, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %8, i32 %6) #6, !srcloc !23
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @bfa_ioc_ct_sync_ack(ptr nocapture noundef readonly %ioc) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %ioc_fail_sync = getelementptr inbounds %struct.bfa_ioc, ptr %ioc, i32 0, i32 13, i32 20
  %0 = ptrtoint ptr %ioc_fail_sync to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ioc_fail_sync, align 4
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1) #6, !srcloc !21
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !81
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !82
  tail call void @arm_heavy_mb() #6
  %pci_func = getelementptr inbounds %struct.bfa_ioc, ptr %ioc, i32 0, i32 2, i32 1
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
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %8, i32 %6) #6, !srcloc !23
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i1 @bfa_ioc_ct_sync_complete(ptr nocapture noundef readonly %ioc) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %ioc_fail_sync = getelementptr inbounds %struct.bfa_ioc, ptr %ioc, i32 0, i32 13, i32 20
  %0 = ptrtoint ptr %ioc_fail_sync to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ioc_fail_sync, align 4
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1) #6, !srcloc !21
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !83
  %and = and i32 %3, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp = icmp eq i32 %and, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %shr = lshr i32 %3, 16
  %pci_func = getelementptr inbounds %struct.bfa_ioc, ptr %ioc, i32 0, i32 2, i32 1
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
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !84
  tail call void @arm_heavy_mb() #6
  %and18 = and i32 %3, -65536
  %6 = tail call i32 @llvm.bswap.i32(i32 %and18)
  %7 = ptrtoint ptr %ioc_fail_sync to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %ioc_fail_sync, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %8, i32 %6) #6, !srcloc !23
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !85
  tail call void @arm_heavy_mb() #6
  %ioc_fwstate = getelementptr inbounds %struct.bfa_ioc, ptr %ioc, i32 0, i32 13, i32 15
  %9 = ptrtoint ptr %ioc_fwstate to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ioc_fwstate, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %10, i32 134217728) #6, !srcloc !23
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !86
  tail call void @arm_heavy_mb() #6
  %alt_ioc_fwstate = getelementptr inbounds %struct.bfa_ioc, ptr %ioc, i32 0, i32 13, i32 16
  %11 = ptrtoint ptr %alt_ioc_fwstate to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %alt_ioc_fwstate, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %12, i32 134217728) #6, !srcloc !23
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
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !87
  tail call void @arm_heavy_mb() #6
  %or36 = or i32 %or, %3
  %13 = tail call i32 @llvm.bswap.i32(i32 %or36)
  %14 = ptrtoint ptr %ioc_fail_sync to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ioc_fail_sync, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %15, i32 %13) #6, !srcloc !23
  br label %cleanup

cleanup:                                          ; preds = %do.body33, %if.end29.cleanup_crit_edge, %do.body, %entry.cleanup_crit_edge
  %retval.0 = phi i1 [ true, %do.body ], [ true, %entry.cleanup_crit_edge ], [ false, %do.body33 ], [ false, %if.end29.cleanup_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @bfa_ioc_ct_set_cur_ioc_fwstate(ptr nocapture noundef readonly %ioc, i32 noundef %fwstate) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !88
  tail call void @arm_heavy_mb() #6
  %0 = tail call i32 @llvm.bswap.i32(i32 %fwstate)
  %ioc_fwstate = getelementptr inbounds %struct.bfa_ioc, ptr %ioc, i32 0, i32 13, i32 15
  %1 = ptrtoint ptr %ioc_fwstate to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %ioc_fwstate, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %2, i32 %0) #6, !srcloc !23
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bfa_ioc_ct_get_cur_ioc_fwstate(ptr nocapture noundef readonly %ioc) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %ioc_fwstate = getelementptr inbounds %struct.bfa_ioc, ptr %ioc, i32 0, i32 13, i32 15
  %0 = ptrtoint ptr %ioc_fwstate to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ioc_fwstate, align 4
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1) #6, !srcloc !21
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !89
  ret i32 %3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @bfa_ioc_ct_set_alt_ioc_fwstate(ptr nocapture noundef readonly %ioc, i32 noundef %fwstate) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !90
  tail call void @arm_heavy_mb() #6
  %0 = tail call i32 @llvm.bswap.i32(i32 %fwstate)
  %alt_ioc_fwstate = getelementptr inbounds %struct.bfa_ioc, ptr %ioc, i32 0, i32 13, i32 16
  %1 = ptrtoint ptr %alt_ioc_fwstate to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %alt_ioc_fwstate, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %2, i32 %0) #6, !srcloc !23
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bfa_ioc_ct_get_alt_ioc_fwstate(ptr nocapture noundef readonly %ioc) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %alt_ioc_fwstate = getelementptr inbounds %struct.bfa_ioc, ptr %ioc, i32 0, i32 13, i32 16
  %0 = ptrtoint ptr %alt_ioc_fwstate to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %alt_ioc_fwstate, align 4
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1) #6, !srcloc !21
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !91
  ret i32 %3
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bfa_cb_image_get_size(i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @bfa_nw_ioc_sem_get(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @bfa_nw_ioc_sem_release(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @bfa_nw_ioc_fwver_get(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @bfa_nw_ioc_fwver_cmp(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @bfa_nw_ioc_hw_sem_release(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bfa_ioc_ct2_pll_init(ptr noundef %rb, i32 noundef %asic_mode) #1 align 64 {
entry:
  %r32.i283 = alloca i32, align 4
  %r32.i278 = alloca i32, align 4
  %r32.i = alloca i32, align 4
  %wgn = alloca i32, align 4
  %r32 = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %wgn)
  %0 = ptrtoint ptr %wgn to i32
  call void @__asan_store4_noabort(i32 %0)
  store volatile i32 -1, ptr %wgn, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %r32)
  %1 = ptrtoint ptr %r32 to i32
  call void @__asan_store4_noabort(i32 %1)
  store volatile i32 -1, ptr %r32, align 4
  %add.ptr = getelementptr i8, ptr %rb, i32 84368
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #6, !srcloc !21
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !92
  %4 = ptrtoint ptr %wgn to i32
  call void @__asan_store4_noabort(i32 %4)
  store volatile i32 %3, ptr %wgn, align 4
  %add.ptr4 = getelementptr i8, ptr %rb, i32 161372
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr4) #6, !srcloc !21
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !93
  %6 = ptrtoint ptr %wgn to i32
  call void @__asan_load4_noabort(i32 %6)
  %wgn.0.wgn.0.wgn.0. = load volatile i32, ptr %wgn, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3072, i32 %wgn.0.wgn.0.wgn.0.)
  %cmp = icmp eq i32 %wgn.0.wgn.0.wgn.0., 3072
  %7 = tail call i32 @llvm.bswap.i32(i32 %5)
  call void @__sanitizer_cov_trace_const_cmp4(i32 322, i32 %7)
  %cmp8 = icmp ugt i32 %7, 322
  %or.cond = select i1 %cmp, i1 %cmp8, i1 false
  br i1 %or.cond, label %if.then, label %do.body97

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %r32.i)
  %8 = ptrtoint ptr %r32.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile i32 -1, ptr %r32.i, align 4
  %add.ptr.i = getelementptr i8, ptr %rb, i32 160804
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #6, !srcloc !21
  %10 = tail call i32 @llvm.bswap.i32(i32 %9) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !94
  %11 = ptrtoint ptr %r32.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile i32 %10, ptr %r32.i, align 4
  %r32.i.0.r32.i.0.r32.0.r32.0.r32.0..i = load volatile i32, ptr %r32.i, align 4
  %and.i = and i32 %r32.i.0.r32.i.0.r32.0.r32.0.r32.0..i, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i.not = icmp eq i32 %and.i, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %r32.i)
  br i1 %tobool.not.i.not, label %if.then.do.body_crit_edge, label %if.then10

if.then.do.body_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body

if.then10:                                        ; preds = %if.then
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %r32.i278)
  %12 = ptrtoint ptr %r32.i278 to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile i32 -1, ptr %r32.i278, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !95
  tail call void @arm_heavy_mb() #6
  %add.ptr.i279 = getelementptr i8, ptr %rb, i32 160800
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i279, i32 33554432) #6, !srcloc !23
  br label %for.body.i

for.body.i:                                       ; preds = %if.end.i.for.body.i_crit_edge, %if.then10
  %i.015.i = phi i32 [ 0, %if.then10 ], [ %inc.i, %if.end.i.for.body.i_crit_edge ]
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #6, !srcloc !21
  %14 = tail call i32 @llvm.bswap.i32(i32 %13) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !96
  %15 = ptrtoint ptr %r32.i278 to i32
  call void @__asan_store4_noabort(i32 %15)
  store volatile i32 %14, ptr %r32.i278, align 4
  %r32.i278.0.r32.i278.0.r32.0.r32.0.r32.0..i280 = load volatile i32, ptr %r32.i278, align 4
  %and.i281 = and i32 %r32.i278.0.r32.i278.0.r32.0.r32.0.r32.0..i280, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i281)
  %tobool.not.i282 = icmp eq i32 %and.i281, 0
  br i1 %tobool.not.i282, label %bfa_ioc_ct2_nfc_resume.exit, label %if.end.i

if.end.i:                                         ; preds = %for.body.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %16 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %16(i32 noundef 214748000) #6
  %inc.i = add nuw nsw i32 %i.015.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 1000
  br i1 %exitcond.not.i, label %do.body4.i, label %if.end.i.for.body.i_crit_edge

if.end.i.for.body.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

do.body4.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/ethernet/brocade/bna/bfa_ioc_ct.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 842, 0\0A.popsection", ""() #6, !srcloc !97
  unreachable

bfa_ioc_ct2_nfc_resume.exit:                      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %r32.i278)
  br label %do.body

do.body:                                          ; preds = %bfa_ioc_ct2_nfc_resume.exit, %if.then.do.body_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !98
  tail call void @arm_heavy_mb() #6
  %add.ptr11 = getelementptr i8, ptr %rb, i32 159880
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr11, i32 256) #6, !srcloc !23
  %add.ptr15 = getelementptr i8, ptr %rb, i32 83976
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %do.body
  %i.0290 = phi i32 [ 0, %do.body ], [ %inc, %for.body.for.body_crit_edge ]
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr15) #6, !srcloc !21
  %18 = tail call i32 @llvm.bswap.i32(i32 %17)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !99
  %19 = ptrtoint ptr %r32 to i32
  call void @__asan_store4_noabort(i32 %19)
  store volatile i32 %18, ptr %r32, align 4
  %r32.0.r32.0.r32.0. = load volatile i32, ptr %r32, align 4
  %and = and i32 %r32.0.r32.0.r32.0., 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp ne i32 %and, 0
  %inc = add nuw nsw i32 %i.0290, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 1000000, i32 %inc)
  %exitcond292.not = icmp eq i32 %inc, 1000000
  %or.cond294 = select i1 %tobool.not, i1 true, i1 %exitcond292.not
  br i1 %or.cond294, label %do.body21, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

do.body21:                                        ; preds = %for.body
  %20 = ptrtoint ptr %r32 to i32
  call void @__asan_load4_noabort(i32 %20)
  %r32.0.r32.0.r32.0.233 = load volatile i32, ptr %r32, align 4
  %and22 = and i32 %r32.0.r32.0.r32.0.233, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and22)
  %tobool23.not = icmp eq i32 %and22, 0
  br i1 %tobool23.not, label %do.body28, label %do.body21.for.body39_crit_edge, !prof !57

do.body21.for.body39_crit_edge:                   ; preds = %do.body21
  br label %for.body39

do.body28:                                        ; preds = %do.body21
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/ethernet/brocade/bna/bfa_ioc_ct.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 867, 0\0A.popsection", ""() #6, !srcloc !100
  unreachable

for.body39:                                       ; preds = %for.body39.for.body39_crit_edge, %do.body21.for.body39_crit_edge
  %i.1291 = phi i32 [ %inc51, %for.body39.for.body39_crit_edge ], [ 0, %do.body21.for.body39_crit_edge ]
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr15) #6, !srcloc !21
  %22 = tail call i32 @llvm.bswap.i32(i32 %21)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !101
  %23 = ptrtoint ptr %r32 to i32
  call void @__asan_store4_noabort(i32 %23)
  store volatile i32 %22, ptr %r32, align 4
  %r32.0.r32.0.r32.0.234 = load volatile i32, ptr %r32, align 4
  %and46 = and i32 %r32.0.r32.0.r32.0.234, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and46)
  %tobool47.not = icmp eq i32 %and46, 0
  %inc51 = add nuw nsw i32 %i.1291, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 1000000, i32 %inc51)
  %exitcond293.not = icmp eq i32 %inc51, 1000000
  %or.cond295 = select i1 %tobool47.not, i1 true, i1 %exitcond293.not
  br i1 %or.cond295, label %do.body53, label %for.body39.for.body39_crit_edge

for.body39.for.body39_crit_edge:                  ; preds = %for.body39
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body39

do.body53:                                        ; preds = %for.body39
  %24 = ptrtoint ptr %r32 to i32
  call void @__asan_load4_noabort(i32 %24)
  %r32.0.r32.0.r32.0.235 = load volatile i32, ptr %r32, align 4
  %and54 = and i32 %r32.0.r32.0.r32.0.235, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and54)
  %tobool55.not = icmp eq i32 %and54, 0
  br i1 %tobool55.not, label %do.end71, label %do.body63, !prof !102

do.body63:                                        ; preds = %do.body53
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/ethernet/brocade/bna/bfa_ioc_ct.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 874, 0\0A.popsection", ""() #6, !srcloc !103
  unreachable

do.end71:                                         ; preds = %do.body53
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %25 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %25(i32 noundef 214748000) #6
  %add.ptr74 = getelementptr i8, ptr %rb, i32 159872
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr74) #6, !srcloc !21
  %27 = tail call i32 @llvm.bswap.i32(i32 %26)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !104
  %28 = ptrtoint ptr %r32 to i32
  call void @__asan_store4_noabort(i32 %28)
  store volatile i32 %27, ptr %r32, align 4
  %r32.0.r32.0.r32.0.236 = load volatile i32, ptr %r32, align 4
  %and79 = and i32 %r32.0.r32.0.r32.0.236, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and79)
  %tobool80.not = icmp eq i32 %and79, 0
  br i1 %tobool80.not, label %do.end71.if.end139_crit_edge, label %do.body88, !prof !102

do.end71.if.end139_crit_edge:                     ; preds = %do.end71
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end139

do.body88:                                        ; preds = %do.end71
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/ethernet/brocade/bna/bfa_ioc_ct.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 878, 0\0A.popsection", ""() #6, !srcloc !105
  unreachable

do.body97:                                        ; preds = %entry
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !106
  tail call void @arm_heavy_mb() #6
  %add.ptr100 = getelementptr i8, ptr %rb, i32 160804
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr100, i32 33554432) #6, !srcloc !23
  br label %for.body103

for.body103:                                      ; preds = %if.end113.for.body103_crit_edge, %do.body97
  %i.2289 = phi i32 [ 0, %do.body97 ], [ %inc115, %if.end113.for.body103_crit_edge ]
  %29 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr100) #6, !srcloc !21
  %30 = tail call i32 @llvm.bswap.i32(i32 %29)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !107
  %31 = ptrtoint ptr %r32 to i32
  call void @__asan_store4_noabort(i32 %31)
  store volatile i32 %30, ptr %r32, align 4
  %r32.0.r32.0.r32.0.237 = load volatile i32, ptr %r32, align 4
  %and110 = and i32 %r32.0.r32.0.r32.0.237, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and110)
  %tobool111.not = icmp eq i32 %and110, 0
  br i1 %tobool111.not, label %if.end113, label %for.body103.for.end116_crit_edge

for.body103.for.end116_crit_edge:                 ; preds = %for.body103
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end116

if.end113:                                        ; preds = %for.body103
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %32 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %32(i32 noundef 214748000) #6
  %inc115 = add nuw nsw i32 %i.2289, 1
  %exitcond.not = icmp eq i32 %inc115, 1000
  br i1 %exitcond.not, label %if.end113.for.end116_crit_edge, label %if.end113.for.body103_crit_edge

if.end113.for.body103_crit_edge:                  ; preds = %if.end113
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body103

if.end113.for.end116_crit_edge:                   ; preds = %if.end113
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end116

for.end116:                                       ; preds = %if.end113.for.end116_crit_edge, %for.body103.for.end116_crit_edge
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %r32.i283)
  %33 = ptrtoint ptr %r32.i283 to i32
  call void @__asan_store4_noabort(i32 %33)
  store volatile i32 -1, ptr %r32.i283, align 4
  tail call fastcc void @bfa_ioc_ct2_sclk_init(ptr noundef %rb) #6
  %add.ptr.i.i = getelementptr i8, ptr %rb, i32 83976
  %34 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #6, !srcloc !21
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !108
  %35 = and i32 %34, -251658497
  %36 = or i32 %35, 201326848
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !109
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %36) #6, !srcloc !23
  %add.ptr5.i.i = getelementptr i8, ptr %rb, i32 84132
  %37 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5.i.i) #6, !srcloc !21
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !110
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !111
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5.i.i, i32 %37) #6, !srcloc !23
  %38 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #6, !srcloc !21
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !112
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !113
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %38) #6, !srcloc !23
  %39 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #6, !srcloc !21
  %40 = shl i32 %39, 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !114
  %and29.i.i = and i32 %40, -1073741824
  %or30.i.i = or i32 %and29.i.i, 549548827
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !115
  tail call void @arm_heavy_mb() #6
  %41 = tail call i32 @llvm.bswap.i32(i32 %or30.i.i) #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %41) #6, !srcloc !23
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %42 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %42(i32 noundef 214748000) #6
  %add.ptr.i284 = getelementptr i8, ptr %rb, i32 83980
  %43 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i284) #6, !srcloc !21
  %44 = tail call i32 @llvm.bswap.i32(i32 %43) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !116
  %45 = ptrtoint ptr %r32.i283 to i32
  call void @__asan_store4_noabort(i32 %45)
  store volatile i32 %44, ptr %r32.i283, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !117
  tail call void @arm_heavy_mb() #6
  %46 = ptrtoint ptr %r32.i283 to i32
  call void @__asan_load4_noabort(i32 %46)
  %r32.i283.0.r32.i283.0.r32.0.r32.0.r32.0..i285 = load volatile i32, ptr %r32.i283, align 4
  %and.i286 = and i32 %r32.i283.0.r32.i283.0.r32.0.r32.0.r32.0..i285, -65537
  %47 = tail call i32 @llvm.bswap.i32(i32 %and.i286) #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i284, i32 %47) #6, !srcloc !23
  %48 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #6, !srcloc !21
  %49 = tail call i32 @llvm.bswap.i32(i32 %48) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !118
  %50 = ptrtoint ptr %r32.i283 to i32
  call void @__asan_store4_noabort(i32 %50)
  store volatile i32 %49, ptr %r32.i283, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !119
  tail call void @arm_heavy_mb() #6
  %51 = ptrtoint ptr %r32.i283 to i32
  call void @__asan_load4_noabort(i32 %51)
  %r32.i283.0.r32.i283.0.r32.0.r32.0.r32.0.22.i = load volatile i32, ptr %r32.i283, align 4
  %and12.i = and i32 %r32.i283.0.r32.i283.0.r32.0.r32.0.r32.0.22.i, -65537
  %52 = tail call i32 @llvm.bswap.i32(i32 %and12.i) #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %52) #6, !srcloc !23
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !120
  tail call void @arm_heavy_mb() #6
  %add.ptr17.i = getelementptr i8, ptr %rb, i32 159952
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr17.i, i32 402653184) #6, !srcloc !23
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !121
  tail call void @arm_heavy_mb() #6
  %add.ptr21.i = getelementptr i8, ptr %rb, i32 159956
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr21.i, i32 402653184) #6, !srcloc !23
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %r32.i283)
  tail call fastcc void @bfa_ioc_ct2_sclk_init(ptr noundef %rb)
  %53 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #6, !srcloc !21
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !108
  %54 = and i32 %53, -251658497
  %55 = or i32 %54, 201326848
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !109
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %55) #6, !srcloc !23
  %56 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5.i.i) #6, !srcloc !21
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !110
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !111
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5.i.i, i32 %56) #6, !srcloc !23
  %57 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #6, !srcloc !21
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !112
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !113
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %57) #6, !srcloc !23
  %58 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #6, !srcloc !21
  %59 = shl i32 %58, 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !114
  %and29.i = and i32 %59, -1073741824
  %or30.i = or i32 %and29.i, 549548827
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !115
  tail call void @arm_heavy_mb() #6
  %60 = tail call i32 @llvm.bswap.i32(i32 %or30.i) #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %60) #6, !srcloc !23
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %61 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %61(i32 noundef 214748000) #6
  %62 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i284) #6, !srcloc !21
  %63 = tail call i32 @llvm.bswap.i32(i32 %62)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !122
  %64 = ptrtoint ptr %r32 to i32
  call void @__asan_store4_noabort(i32 %64)
  store volatile i32 %63, ptr %r32, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !123
  tail call void @arm_heavy_mb() #6
  %65 = ptrtoint ptr %r32 to i32
  call void @__asan_load4_noabort(i32 %65)
  %r32.0.r32.0.r32.0.238 = load volatile i32, ptr %r32, align 4
  %and126 = and i32 %r32.0.r32.0.r32.0.238, -65537
  %66 = tail call i32 @llvm.bswap.i32(i32 %and126)
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i284, i32 %66) #6, !srcloc !23
  %67 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #6, !srcloc !21
  %68 = tail call i32 @llvm.bswap.i32(i32 %67)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !124
  %69 = ptrtoint ptr %r32 to i32
  call void @__asan_store4_noabort(i32 %69)
  store volatile i32 %68, ptr %r32, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !125
  tail call void @arm_heavy_mb() #6
  %70 = ptrtoint ptr %r32 to i32
  call void @__asan_load4_noabort(i32 %70)
  %r32.0.r32.0.r32.0.239 = load volatile i32, ptr %r32, align 4
  %and137 = and i32 %r32.0.r32.0.r32.0.239, -65537
  %71 = tail call i32 @llvm.bswap.i32(i32 %and137)
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %71) #6, !srcloc !23
  br label %if.end139

if.end139:                                        ; preds = %for.end116, %do.end71.if.end139_crit_edge
  %72 = ptrtoint ptr %wgn to i32
  call void @__asan_load4_noabort(i32 %72)
  %wgn.0.wgn.0.wgn.0.245 = load volatile i32, ptr %wgn, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1536, i32 %wgn.0.wgn.0.wgn.0.245)
  %cmp140 = icmp eq i32 %wgn.0.wgn.0.wgn.0.245, 1536
  br i1 %cmp140, label %if.then141, label %if.end139.do.body164_crit_edge

if.end139.do.body164_crit_edge:                   ; preds = %if.end139
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body164

if.then141:                                       ; preds = %if.end139
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr144 = getelementptr i8, ptr %rb, i32 100544
  %73 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr144) #6, !srcloc !21
  %74 = tail call i32 @llvm.bswap.i32(i32 %73)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !126
  %75 = ptrtoint ptr %r32 to i32
  call void @__asan_store4_noabort(i32 %75)
  store volatile i32 %74, ptr %r32, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !127
  tail call void @arm_heavy_mb() #6
  %76 = ptrtoint ptr %r32 to i32
  call void @__asan_load4_noabort(i32 %76)
  %r32.0.r32.0.r32.0.240 = load volatile i32, ptr %r32, align 4
  %and151 = and i32 %r32.0.r32.0.r32.0.240, -2
  %77 = tail call i32 @llvm.bswap.i32(i32 %and151)
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr144, i32 %77) #6, !srcloc !23
  %add.ptr155 = getelementptr i8, ptr %rb, i32 100552
  %78 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr155) #6, !srcloc !21
  %79 = tail call i32 @llvm.bswap.i32(i32 %78)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !128
  %80 = ptrtoint ptr %r32 to i32
  call void @__asan_store4_noabort(i32 %80)
  store volatile i32 %79, ptr %r32, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !129
  tail call void @arm_heavy_mb() #6
  %81 = ptrtoint ptr %r32 to i32
  call void @__asan_load4_noabort(i32 %81)
  %r32.0.r32.0.r32.0.241 = load volatile i32, ptr %r32, align 4
  %or = or i32 %r32.0.r32.0.r32.0.241, 1
  %82 = tail call i32 @llvm.bswap.i32(i32 %or)
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr155, i32 %82) #6, !srcloc !23
  br label %do.body164

do.body164:                                       ; preds = %if.then141, %if.end139.do.body164_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !130
  tail call void @arm_heavy_mb() #6
  %add.ptr167 = getelementptr i8, ptr %rb, i32 196760
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr167, i32 16777216) #6, !srcloc !23
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !131
  tail call void @arm_heavy_mb() #6
  %add.ptr171 = getelementptr i8, ptr %rb, i32 196764
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr171, i32 16777216) #6, !srcloc !23
  %add.ptr174 = getelementptr i8, ptr %rb, i32 83476
  %83 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr174) #6, !srcloc !21
  %84 = tail call i32 @llvm.bswap.i32(i32 %83)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !132
  %85 = ptrtoint ptr %r32 to i32
  call void @__asan_store4_noabort(i32 %85)
  store volatile i32 %84, ptr %r32, align 4
  %r32.0.r32.0.r32.0.242 = load volatile i32, ptr %r32, align 4
  %and178 = and i32 %r32.0.r32.0.r32.0.242, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and178)
  %tobool179.not = icmp eq i32 %and178, 0
  br i1 %tobool179.not, label %do.body164.if.end219_crit_edge, label %if.then180

do.body164.if.end219_crit_edge:                   ; preds = %do.body164
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end219

if.then180:                                       ; preds = %do.body164
  %add.ptr183 = getelementptr i8, ptr %rb, i32 196744
  %86 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr183) #6, !srcloc !21
  %87 = tail call i32 @llvm.bswap.i32(i32 %86)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !133
  %88 = ptrtoint ptr %r32 to i32
  call void @__asan_store4_noabort(i32 %88)
  store volatile i32 %87, ptr %r32, align 4
  %r32.0.r32.0.r32.0.243 = load volatile i32, ptr %r32, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %r32.0.r32.0.r32.0.243)
  %cmp187 = icmp eq i32 %r32.0.r32.0.r32.0.243, 1
  br i1 %cmp187, label %do.body189, label %if.then180.if.end199_crit_edge

if.then180.if.end199_crit_edge:                   ; preds = %if.then180
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end199

do.body189:                                       ; preds = %if.then180
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !134
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr183, i32 16777216) #6, !srcloc !23
  %89 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr183) #6, !srcloc !21
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !135
  br label %if.end199

if.end199:                                        ; preds = %do.body189, %if.then180.if.end199_crit_edge
  %add.ptr202 = getelementptr i8, ptr %rb, i32 196748
  %90 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr202) #6, !srcloc !21
  %91 = tail call i32 @llvm.bswap.i32(i32 %90)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !136
  %92 = ptrtoint ptr %r32 to i32
  call void @__asan_store4_noabort(i32 %92)
  store volatile i32 %91, ptr %r32, align 4
  %r32.0.r32.0.r32.0.244 = load volatile i32, ptr %r32, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %r32.0.r32.0.r32.0.244)
  %cmp206 = icmp eq i32 %r32.0.r32.0.r32.0.244, 1
  br i1 %cmp206, label %do.body208, label %if.end199.if.end219_crit_edge

if.end199.if.end219_crit_edge:                    ; preds = %if.end199
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end219

do.body208:                                       ; preds = %if.end199
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !137
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr202, i32 16777216) #6, !srcloc !23
  %93 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr202) #6, !srcloc !21
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !138
  br label %if.end219

if.end219:                                        ; preds = %do.body208, %if.end199.if.end219_crit_edge, %do.body164.if.end219_crit_edge
  %add.ptr.i288 = getelementptr i8, ptr %rb, i32 100352
  %94 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i288) #6, !srcloc !21
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !139
  %95 = and i32 %94, -131073
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !140
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i288, i32 %95) #6, !srcloc !23
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %96 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %96(i32 noundef 214748000) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !141
  tail call void @arm_heavy_mb() #6
  %add.ptr6.i = getelementptr i8, ptr %rb, i32 83996
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr6.i, i32 67108864) #6, !srcloc !23
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %97 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %97(i32 noundef 214748000) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !142
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr6.i, i32 0) #6, !srcloc !23
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !143
  tail call void @arm_heavy_mb() #6
  %add.ptr223 = getelementptr i8, ptr %rb, i32 84148
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr223, i32 0) #6, !srcloc !23
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !144
  tail call void @arm_heavy_mb() #6
  %add.ptr227 = getelementptr i8, ptr %rb, i32 84156
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr227, i32 0) #6, !srcloc !23
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %r32)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %wgn)
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @bfa_ioc_ct2_reg_init(ptr noundef %ioc) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %port_id = getelementptr inbounds %struct.bfa_ioc, ptr %ioc, i32 0, i32 18
  %0 = ptrtoint ptr %port_id to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %port_id, align 1
  %conv = zext i8 %1 to i32
  %pci_bar_kva = getelementptr inbounds %struct.bfa_ioc, ptr %ioc, i32 0, i32 2, i32 4
  %2 = ptrtoint ptr %pci_bar_kva to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pci_bar_kva, align 4
  %arrayidx = getelementptr [2 x %struct.anon.5], ptr @ct2_reg, i32 0, i32 %conv
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 %5
  %ioc_regs = getelementptr inbounds %struct.bfa_ioc, ptr %ioc, i32 0, i32 13
  %hfn_mbox1 = getelementptr inbounds %struct.bfa_ioc, ptr %ioc, i32 0, i32 13, i32 1
  %6 = ptrtoint ptr %hfn_mbox1 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %add.ptr, ptr %hfn_mbox1, align 4
  %lpu_mbox = getelementptr [2 x %struct.anon.5], ptr @ct2_reg, i32 0, i32 %conv, i32 1
  %7 = ptrtoint ptr %lpu_mbox to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %lpu_mbox, align 4
  %add.ptr3 = getelementptr i8, ptr %3, i32 %8
  %lpu_mbox5 = getelementptr inbounds %struct.bfa_ioc, ptr %ioc, i32 0, i32 13, i32 3
  %9 = ptrtoint ptr %lpu_mbox5 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %add.ptr3, ptr %lpu_mbox5, align 4
  %hfn_pgn = getelementptr [2 x %struct.anon.5], ptr @ct2_reg, i32 0, i32 %conv, i32 2
  %10 = ptrtoint ptr %hfn_pgn to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %hfn_pgn, align 4
  %add.ptr7 = getelementptr i8, ptr %3, i32 %11
  %host_page_num_fn = getelementptr inbounds %struct.bfa_ioc, ptr %ioc, i32 0, i32 13, i32 13
  %12 = ptrtoint ptr %host_page_num_fn to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %add.ptr7, ptr %host_page_num_fn, align 4
  %hfn = getelementptr [2 x %struct.anon.5], ptr @ct2_reg, i32 0, i32 %conv, i32 3
  %13 = ptrtoint ptr %hfn to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %hfn, align 4
  %add.ptr10 = getelementptr i8, ptr %3, i32 %14
  %15 = ptrtoint ptr %ioc_regs to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %add.ptr10, ptr %ioc_regs, align 4
  %lpu = getelementptr [2 x %struct.anon.5], ptr @ct2_reg, i32 0, i32 %conv, i32 4
  %16 = ptrtoint ptr %lpu to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %lpu, align 4
  %add.ptr13 = getelementptr i8, ptr %3, i32 %17
  %lpu_mbox_cmd = getelementptr inbounds %struct.bfa_ioc, ptr %ioc, i32 0, i32 13, i32 2
  %18 = ptrtoint ptr %lpu_mbox_cmd to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %add.ptr13, ptr %lpu_mbox_cmd, align 4
  %lpu_read = getelementptr [2 x %struct.anon.5], ptr @ct2_reg, i32 0, i32 %conv, i32 5
  %19 = ptrtoint ptr %lpu_read to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %lpu_read, align 4
  %add.ptr16 = getelementptr i8, ptr %3, i32 %20
  %lpu_read_stat = getelementptr inbounds %struct.bfa_ioc, ptr %ioc, i32 0, i32 13, i32 4
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
  %22 = getelementptr inbounds %struct.bfa_ioc, ptr %ioc, i32 0, i32 13, i32 14
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %add.ptr29, ptr %22, align 4
  %24 = getelementptr inbounds %struct.bfa_ioc, ptr %ioc, i32 0, i32 13, i32 15
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %add.ptr32, ptr %24, align 4
  %26 = getelementptr inbounds %struct.bfa_ioc, ptr %ioc, i32 0, i32 13, i32 16
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %add.ptr35, ptr %26, align 4
  %28 = getelementptr inbounds %struct.bfa_ioc, ptr %ioc, i32 0, i32 13, i32 17
  %29 = ptrtoint ptr %28 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %add.ptr38, ptr %28, align 4
  %30 = getelementptr inbounds %struct.bfa_ioc, ptr %ioc, i32 0, i32 13, i32 18
  %31 = ptrtoint ptr %30 to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %add.ptr41, ptr %30, align 4
  %add.ptr44 = getelementptr i8, ptr %3, i32 100352
  %pss_ctl_reg = getelementptr inbounds %struct.bfa_ioc, ptr %ioc, i32 0, i32 13, i32 5
  %32 = ptrtoint ptr %pss_ctl_reg to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %add.ptr44, ptr %pss_ctl_reg, align 4
  %add.ptr46 = getelementptr i8, ptr %3, i32 100368
  %pss_err_status_reg = getelementptr inbounds %struct.bfa_ioc, ptr %ioc, i32 0, i32 13, i32 6
  %33 = ptrtoint ptr %pss_err_status_reg to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %add.ptr46, ptr %pss_err_status_reg, align 4
  %add.ptr48 = getelementptr i8, ptr %3, i32 83976
  %app_pll_fast_ctl_reg = getelementptr inbounds %struct.bfa_ioc, ptr %ioc, i32 0, i32 13, i32 7
  %34 = ptrtoint ptr %app_pll_fast_ctl_reg to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %add.ptr48, ptr %app_pll_fast_ctl_reg, align 4
  %add.ptr50 = getelementptr i8, ptr %3, i32 83980
  %app_pll_slow_ctl_reg = getelementptr inbounds %struct.bfa_ioc, ptr %ioc, i32 0, i32 13, i32 8
  %35 = ptrtoint ptr %app_pll_slow_ctl_reg to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %add.ptr50, ptr %app_pll_slow_ctl_reg, align 4
  %add.ptr52 = getelementptr i8, ptr %3, i32 84208
  %ioc_sem_reg = getelementptr inbounds %struct.bfa_ioc, ptr %ioc, i32 0, i32 13, i32 9
  %36 = ptrtoint ptr %ioc_sem_reg to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %add.ptr52, ptr %ioc_sem_reg, align 4
  %add.ptr54 = getelementptr i8, ptr %3, i32 84212
  %ioc_usage_sem_reg = getelementptr inbounds %struct.bfa_ioc, ptr %ioc, i32 0, i32 13, i32 10
  %37 = ptrtoint ptr %ioc_usage_sem_reg to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %add.ptr54, ptr %ioc_usage_sem_reg, align 4
  %add.ptr56 = getelementptr i8, ptr %3, i32 84216
  %ioc_init_sem_reg = getelementptr inbounds %struct.bfa_ioc, ptr %ioc, i32 0, i32 13, i32 11
  %38 = ptrtoint ptr %ioc_init_sem_reg to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %add.ptr56, ptr %ioc_init_sem_reg, align 4
  %add.ptr58 = getelementptr i8, ptr %3, i32 84160
  %ioc_usage_reg = getelementptr inbounds %struct.bfa_ioc, ptr %ioc, i32 0, i32 13, i32 12
  %39 = ptrtoint ptr %ioc_usage_reg to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %add.ptr58, ptr %ioc_usage_reg, align 4
  %add.ptr60 = getelementptr i8, ptr %3, i32 84164
  %ioc_fail_sync = getelementptr inbounds %struct.bfa_ioc, ptr %ioc, i32 0, i32 13, i32 20
  %40 = ptrtoint ptr %ioc_fail_sync to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %add.ptr60, ptr %ioc_fail_sync, align 4
  %add.ptr62 = getelementptr i8, ptr %3, i32 32768
  %smem_page_start = getelementptr inbounds %struct.bfa_ioc, ptr %ioc, i32 0, i32 13, i32 23
  %41 = ptrtoint ptr %smem_page_start to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %add.ptr62, ptr %smem_page_start, align 4
  %smem_pg0 = getelementptr inbounds %struct.bfa_ioc, ptr %ioc, i32 0, i32 13, i32 24
  %42 = ptrtoint ptr %smem_pg0 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 384, ptr %smem_pg0, align 4
  %add.ptr65 = getelementptr i8, ptr %3, i32 100376
  %err_set = getelementptr inbounds %struct.bfa_ioc, ptr %ioc, i32 0, i32 13, i32 19
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
  %pci_bar_kva = getelementptr inbounds %struct.bfa_ioc, ptr %ioc, i32 0, i32 2, i32 4
  %0 = ptrtoint ptr %pci_bar_kva to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pci_bar_kva, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 196872
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #6, !srcloc !21
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !145
  %3 = lshr i32 %2, 9
  %4 = trunc i32 %3 to i8
  %conv = and i8 %4, 3
  %port_id = getelementptr inbounds %struct.bfa_ioc, ptr %ioc, i32 0, i32 18
  %5 = ptrtoint ptr %port_id to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %conv, ptr %port_id, align 1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i1 @bfa_ioc_ct2_lpu_read_stat(ptr nocapture noundef readonly %ioc) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %lpu_read_stat = getelementptr inbounds %struct.bfa_ioc, ptr %ioc, i32 0, i32 13, i32 4
  %0 = ptrtoint ptr %lpu_read_stat to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %lpu_read_stat, align 4
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1) #6, !srcloc !21
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !146
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !147
  tail call void @arm_heavy_mb() #6
  %3 = ptrtoint ptr %lpu_read_stat to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %lpu_read_stat, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %4, i32 16777216) #6, !srcloc !23
  br label %cleanup

cleanup:                                          ; preds = %do.body, %entry.cleanup_crit_edge
  %5 = xor i1 %tobool.not, true
  ret i1 %5
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @bfa_ioc_ct2_sclk_init(ptr noundef %rb) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %rb, i32 83980
  %0 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #6, !srcloc !21
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !148
  %1 = and i32 %0, -251658497
  %2 = or i32 %1, 201326848
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !149
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %2) #6, !srcloc !23
  %3 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #6, !srcloc !21
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !150
  %4 = and i32 %3, -97
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !151
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %4) #6, !srcloc !23
  %add.ptr16 = getelementptr i8, ptr %rb, i32 84132
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr16) #6, !srcloc !21
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !152
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !153
  tail call void @arm_heavy_mb() #6
  %6 = or i32 %5, 4194304
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr16, i32 %6) #6, !srcloc !23
  %add.ptr27 = getelementptr i8, ptr %rb, i32 83972
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr27) #6, !srcloc !21
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !154
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !155
  tail call void @arm_heavy_mb() #6
  %8 = or i32 %7, 268435456
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr27, i32 %8) #6, !srcloc !23
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #6, !srcloc !21
  %10 = shl i32 %9, 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !156
  %and42 = and i32 %10, -536870912
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !157
  tail call void @arm_heavy_mb() #6
  %or46 = or i32 %and42, 274821915
  %11 = tail call i32 @llvm.bswap.i32(i32 %or46)
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %11) #6, !srcloc !23
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %12 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %12(i32 noundef 214748000) #6
  ret void
}

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
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 6)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 6)
  ret void
}

attributes #0 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10}
!llvm.module.flags = !{!12, !13, !14, !15, !16, !17, !18, !19}
!llvm.ident = !{!20}

!0 = !{ptr @nw_hwif_ct, !1, !"nw_hwif_ct", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/brocade/bna/bfa_ioc_ct.c", i32 55, i32 34}
!2 = !{ptr @ct_fnreg, !3, !"ct_fnreg", i1 false, i1 false}
!3 = !{!"../drivers/net/ethernet/brocade/bna/bfa_ioc_ct.c", i32 203, i32 3}
!4 = !{ptr @ct_p0reg, !5, !"ct_p0reg", i1 false, i1 false}
!5 = !{!"../drivers/net/ethernet/brocade/bna/bfa_ioc_ct.c", i32 214, i32 3}
!6 = !{ptr @ct_p1reg, !7, !"ct_p1reg", i1 false, i1 false}
!7 = !{!"../drivers/net/ethernet/brocade/bna/bfa_ioc_ct.c", i32 225, i32 3}
!8 = !{ptr @nw_hwif_ct2, !9, !"nw_hwif_ct2", i1 false, i1 false}
!9 = !{!"../drivers/net/ethernet/brocade/bna/bfa_ioc_ct.c", i32 75, i32 34}
!10 = !{ptr @ct2_reg, !11, !"ct2_reg", i1 false, i1 false}
!11 = !{!"../drivers/net/ethernet/brocade/bna/bfa_ioc_ct.c", i32 239, i32 3}
!12 = !{i32 1, !"wchar_size", i32 2}
!13 = !{i32 1, !"min_enum_size", i32 4}
!14 = !{i32 8, !"branch-target-enforcement", i32 0}
!15 = !{i32 8, !"sign-return-address", i32 0}
!16 = !{i32 8, !"sign-return-address-all", i32 0}
!17 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!18 = !{i32 7, !"uwtable", i32 1}
!19 = !{i32 7, !"frame-pointer", i32 2}
!20 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!21 = !{i64 5019601}
!22 = !{i64 2156479958}
!23 = !{i64 5019183}
!24 = !{i64 2156481362}
!25 = !{i64 2156494698}
!26 = !{i64 2156495658}
!27 = !{i64 2156496111}
!28 = !{i64 2156496576}
!29 = !{i64 2156497019}
!30 = !{i64 2156497453}
!31 = !{i64 2156497887}
!32 = !{i64 2156498321}
!33 = !{i64 2156498755}
!34 = !{i64 2156499189}
!35 = !{i64 2156499641}
!36 = !{i64 2156500120}
!37 = !{i64 2156500623}
!38 = !{i64 2156501165}
!39 = !{i64 2156501920}
!40 = !{i64 2156502708}
!41 = !{i64 2156503142}
!42 = !{i64 2156503594}
!43 = !{i64 2156504073}
!44 = !{i64 2156504544}
!45 = !{i64 2156504985}
!46 = !{i64 2156505671}
!47 = !{i64 2156505908}
!48 = !{i64 2156506862}
!49 = !{i64 2156507256}
!50 = !{i64 2156507670}
!51 = !{i64 2156508910}
!52 = !{i64 2156509134}
!53 = !{i64 2156466633}
!54 = !{i64 2156466855}
!55 = !{i64 2156467256}
!56 = !{i64 2156467953}
!57 = !{!"branch_weights", i32 1, i32 2000}
!58 = !{i64 2156468381, i64 2156468891, i64 2156468418, i64 2156468474, i64 2156468508, i64 2156468532, i64 2156468573, i64 2156468594, i64 2156468622, i64 2156468656}
!59 = !{i64 2156469878}
!60 = !{i64 2156470634}
!61 = !{i64 2156471024, i64 2156471534, i64 2156471061, i64 2156471117, i64 2156471151, i64 2156471175, i64 2156471216, i64 2156471237, i64 2156471265, i64 2156471299}
!62 = !{i64 2156472521}
!63 = !{i64 2156476784}
!64 = !{i64 2156477926}
!65 = !{i64 2156478384}
!66 = !{i64 2156472951}
!67 = !{i64 2156473391}
!68 = !{i64 2156474097}
!69 = !{i64 2156474615}
!70 = !{i64 2156481838}
!71 = !{i64 2156482535}
!72 = !{i64 2156483061}
!73 = !{i64 2156483483}
!74 = !{i64 2156483884}
!75 = !{i64 2156484296}
!76 = !{i64 2156484749}
!77 = !{i64 2156485495}
!78 = !{i64 2156485953}
!79 = !{i64 2156486703}
!80 = !{i64 2156487323}
!81 = !{i64 2156488076}
!82 = !{i64 2156488516}
!83 = !{i64 2156489392}
!84 = !{i64 2156490204}
!85 = !{i64 2156490668}
!86 = !{i64 2156491113}
!87 = !{i64 2156491565}
!88 = !{i64 2156492018}
!89 = !{i64 2156492731}
!90 = !{i64 2156492961}
!91 = !{i64 2156493694}
!92 = !{i64 2156529032}
!93 = !{i64 2156529521}
!94 = !{i64 2156525402}
!95 = !{i64 2156525654}
!96 = !{i64 2156526342}
!97 = !{i64 2156527273, i64 2156527783, i64 2156527310, i64 2156527366, i64 2156527400, i64 2156527424, i64 2156527465, i64 2156527486, i64 2156527514, i64 2156527548}
!98 = !{i64 2156529790}
!99 = !{i64 2156530481}
!100 = !{i64 2156530907, i64 2156531417, i64 2156530944, i64 2156531000, i64 2156531034, i64 2156531058, i64 2156531099, i64 2156531120, i64 2156531148, i64 2156531182}
!101 = !{i64 2156532674}
!102 = !{!"branch_weights", i32 2000, i32 1}
!103 = !{i64 2156533092, i64 2156533602, i64 2156533129, i64 2156533185, i64 2156533219, i64 2156533243, i64 2156533284, i64 2156533305, i64 2156533333, i64 2156533367}
!104 = !{i64 2156535405}
!105 = !{i64 2156535812, i64 2156536322, i64 2156535849, i64 2156535905, i64 2156535939, i64 2156535963, i64 2156536004, i64 2156536025, i64 2156536053, i64 2156536087}
!106 = !{i64 2156537326}
!107 = !{i64 2156538017}
!108 = !{i64 2156515072}
!109 = !{i64 2156515350}
!110 = !{i64 2156516012}
!111 = !{i64 2156516238}
!112 = !{i64 2156516903}
!113 = !{i64 2156517126}
!114 = !{i64 2156517788}
!115 = !{i64 2156518036}
!116 = !{i64 2156522082}
!117 = !{i64 2156522331}
!118 = !{i64 2156523038}
!119 = !{i64 2156523287}
!120 = !{i64 2156523932}
!121 = !{i64 2156524636}
!122 = !{i64 2156539071}
!123 = !{i64 2156539320}
!124 = !{i64 2156540027}
!125 = !{i64 2156540276}
!126 = !{i64 2156541005}
!127 = !{i64 2156541233}
!128 = !{i64 2156541910}
!129 = !{i64 2156542137}
!130 = !{i64 2156542579}
!131 = !{i64 2156543013}
!132 = !{i64 2156543679}
!133 = !{i64 2156544234}
!134 = !{i64 2156544491}
!135 = !{i64 2156545223}
!136 = !{i64 2156545778}
!137 = !{i64 2156546035}
!138 = !{i64 2156546767}
!139 = !{i64 2156519255}
!140 = !{i64 2156519489}
!141 = !{i64 2156520457}
!142 = !{i64 2156521426}
!143 = !{i64 2156547024}
!144 = !{i64 2156547487}
!145 = !{i64 2156477423}
!146 = !{i64 2156479083}
!147 = !{i64 2156479305}
!148 = !{i64 2156509793}
!149 = !{i64 2156510074}
!150 = !{i64 2156510739}
!151 = !{i64 2156510987}
!152 = !{i64 2156511652}
!153 = !{i64 2156511899}
!154 = !{i64 2156512600}
!155 = !{i64 2156512847}
!156 = !{i64 2156513548}
!157 = !{i64 2156513817}
