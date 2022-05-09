; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/stmicro/stmmac/mmc_core.c_pt.bc'
source_filename = "../drivers/net/ethernet/stmicro/stmmac/mmc_core.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.stmmac_mmc_ops = type { ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.stmmac_counters = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@dwmac_mmc_ops = dso_local constant { %struct.stmmac_mmc_ops, [20 x i8] } { %struct.stmmac_mmc_ops { ptr @dwmac_mmc_ctrl, ptr @dwmac_mmc_intr_all_mask, ptr @dwmac_mmc_read }, [20 x i8] zeroinitializer }, align 32
@dwxgmac_mmc_ops = dso_local constant { %struct.stmmac_mmc_ops, [20 x i8] } { %struct.stmmac_mmc_ops { ptr @dwxgmac_mmc_ctrl, ptr @dwxgmac_mmc_intr_all_mask, ptr @dwxgmac_mmc_read }, [20 x i8] zeroinitializer }, align 32
@dwmac_mmc_ctrl.__UNIQUE_ID_ddebug347 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 0, i8 49, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"stmmac\00", [25 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"dwmac_mmc_ctrl\00", [17 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"drivers/net/ethernet/stmicro/stmmac/mmc_core.c\00", [49 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"stmmac: MMC ctrl register (offset 0x%x): 0x%08x\0A\00", [47 x i8] zeroinitializer }, align 32
@___asan_gen_.4 = private unnamed_addr constant [14 x i8] c"dwmac_mmc_ops\00", align 1
@___asan_gen_.6 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.20, i32 336, i32 29 }
@___asan_gen_.7 = private unnamed_addr constant [16 x i8] c"dwxgmac_mmc_ops\00", align 1
@___asan_gen_.9 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.20, i32 471, i32 29 }
@___asan_gen_.19 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.20 = private constant [50 x i8] c"../drivers/net/ethernet/stmicro/stmmac/mmc_core.c\00", align 1
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.20, i32 196, i32 2 }
@llvm.compiler.used = appending global [6 x ptr] [ptr @dwmac_mmc_ops, ptr @dwxgmac_mmc_ops, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3], section "llvm.metadata"
@0 = internal global [6 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dwmac_mmc_ops to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dwxgmac_mmc_ops to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dwmac_mmc_ctrl(ptr noundef %mmcaddr, i32 noundef %mode) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %mmcaddr) #3, !srcloc !19
  %1 = tail call i32 @llvm.bswap.i32(i32 %0)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !20
  %and = and i32 %mode, 63
  %or = or i32 %1, %and
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !21
  tail call void @arm_heavy_mb() #3
  %2 = tail call i32 @llvm.bswap.i32(i32 %or)
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %mmcaddr, i32 %2) #3, !srcloc !22
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dwmac_mmc_ctrl.__UNIQUE_ID_ddebug347, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dwmac_mmc_ctrl, %if.then)) #3
          to label %do.end9 [label %if.then], !srcloc !23

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @dwmac_mmc_ctrl.__UNIQUE_ID_ddebug347, ptr noundef nonnull @.str.3, i32 noundef 0, i32 noundef %or) #3
  br label %do.end9

do.end9:                                          ; preds = %if.then, %entry
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dwmac_mmc_intr_all_mask(ptr noundef %mmcaddr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !24
  tail call void @arm_heavy_mb() #3
  %add.ptr = getelementptr i8, ptr %mmcaddr, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 -1) #3, !srcloc !22
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !25
  tail call void @arm_heavy_mb() #3
  %add.ptr3 = getelementptr i8, ptr %mmcaddr, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3, i32 -1) #3, !srcloc !22
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !26
  tail call void @arm_heavy_mb() #3
  %add.ptr6 = getelementptr i8, ptr %mmcaddr, i32 256
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr6, i32 -1) #3, !srcloc !22
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dwmac_mmc_read(ptr noundef %mmcaddr, ptr noundef %mmc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %mmcaddr, i32 20
  %0 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #3, !srcloc !19
  %1 = tail call i32 @llvm.bswap.i32(i32 %0)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !27
  %2 = ptrtoint ptr %mmc to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %mmc, align 4
  %add = add i32 %3, %1
  store i32 %add, ptr %mmc, align 4
  %add.ptr4 = getelementptr i8, ptr %mmcaddr, i32 24
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr4) #3, !srcloc !19
  %5 = tail call i32 @llvm.bswap.i32(i32 %4)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !28
  %mmc_tx_framecount_gb = getelementptr inbounds %struct.stmmac_counters, ptr %mmc, i32 0, i32 1
  %6 = ptrtoint ptr %mmc_tx_framecount_gb to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %mmc_tx_framecount_gb, align 4
  %add8 = add i32 %7, %5
  store i32 %add8, ptr %mmc_tx_framecount_gb, align 4
  %add.ptr11 = getelementptr i8, ptr %mmcaddr, i32 28
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr11) #3, !srcloc !19
  %9 = tail call i32 @llvm.bswap.i32(i32 %8)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !29
  %mmc_tx_broadcastframe_g = getelementptr inbounds %struct.stmmac_counters, ptr %mmc, i32 0, i32 2
  %10 = ptrtoint ptr %mmc_tx_broadcastframe_g to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %mmc_tx_broadcastframe_g, align 4
  %add15 = add i32 %11, %9
  store i32 %add15, ptr %mmc_tx_broadcastframe_g, align 4
  %add.ptr18 = getelementptr i8, ptr %mmcaddr, i32 32
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr18) #3, !srcloc !19
  %13 = tail call i32 @llvm.bswap.i32(i32 %12)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !30
  %mmc_tx_multicastframe_g = getelementptr inbounds %struct.stmmac_counters, ptr %mmc, i32 0, i32 3
  %14 = ptrtoint ptr %mmc_tx_multicastframe_g to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %mmc_tx_multicastframe_g, align 4
  %add22 = add i32 %15, %13
  store i32 %add22, ptr %mmc_tx_multicastframe_g, align 4
  %add.ptr25 = getelementptr i8, ptr %mmcaddr, i32 36
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr25) #3, !srcloc !19
  %17 = tail call i32 @llvm.bswap.i32(i32 %16)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !31
  %mmc_tx_64_octets_gb = getelementptr inbounds %struct.stmmac_counters, ptr %mmc, i32 0, i32 4
  %18 = ptrtoint ptr %mmc_tx_64_octets_gb to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %mmc_tx_64_octets_gb, align 4
  %add29 = add i32 %19, %17
  store i32 %add29, ptr %mmc_tx_64_octets_gb, align 4
  %add.ptr32 = getelementptr i8, ptr %mmcaddr, i32 40
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr32) #3, !srcloc !19
  %21 = tail call i32 @llvm.bswap.i32(i32 %20)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !32
  %mmc_tx_65_to_127_octets_gb = getelementptr inbounds %struct.stmmac_counters, ptr %mmc, i32 0, i32 5
  %22 = ptrtoint ptr %mmc_tx_65_to_127_octets_gb to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %mmc_tx_65_to_127_octets_gb, align 4
  %add36 = add i32 %23, %21
  store i32 %add36, ptr %mmc_tx_65_to_127_octets_gb, align 4
  %add.ptr39 = getelementptr i8, ptr %mmcaddr, i32 44
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr39) #3, !srcloc !19
  %25 = tail call i32 @llvm.bswap.i32(i32 %24)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !33
  %mmc_tx_128_to_255_octets_gb = getelementptr inbounds %struct.stmmac_counters, ptr %mmc, i32 0, i32 6
  %26 = ptrtoint ptr %mmc_tx_128_to_255_octets_gb to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %mmc_tx_128_to_255_octets_gb, align 4
  %add43 = add i32 %27, %25
  store i32 %add43, ptr %mmc_tx_128_to_255_octets_gb, align 4
  %add.ptr46 = getelementptr i8, ptr %mmcaddr, i32 48
  %28 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr46) #3, !srcloc !19
  %29 = tail call i32 @llvm.bswap.i32(i32 %28)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !34
  %mmc_tx_256_to_511_octets_gb = getelementptr inbounds %struct.stmmac_counters, ptr %mmc, i32 0, i32 7
  %30 = ptrtoint ptr %mmc_tx_256_to_511_octets_gb to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %mmc_tx_256_to_511_octets_gb, align 4
  %add50 = add i32 %31, %29
  store i32 %add50, ptr %mmc_tx_256_to_511_octets_gb, align 4
  %add.ptr53 = getelementptr i8, ptr %mmcaddr, i32 52
  %32 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr53) #3, !srcloc !19
  %33 = tail call i32 @llvm.bswap.i32(i32 %32)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !35
  %mmc_tx_512_to_1023_octets_gb = getelementptr inbounds %struct.stmmac_counters, ptr %mmc, i32 0, i32 8
  %34 = ptrtoint ptr %mmc_tx_512_to_1023_octets_gb to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %mmc_tx_512_to_1023_octets_gb, align 4
  %add57 = add i32 %35, %33
  store i32 %add57, ptr %mmc_tx_512_to_1023_octets_gb, align 4
  %add.ptr60 = getelementptr i8, ptr %mmcaddr, i32 56
  %36 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr60) #3, !srcloc !19
  %37 = tail call i32 @llvm.bswap.i32(i32 %36)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !36
  %mmc_tx_1024_to_max_octets_gb = getelementptr inbounds %struct.stmmac_counters, ptr %mmc, i32 0, i32 9
  %38 = ptrtoint ptr %mmc_tx_1024_to_max_octets_gb to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %mmc_tx_1024_to_max_octets_gb, align 4
  %add64 = add i32 %39, %37
  store i32 %add64, ptr %mmc_tx_1024_to_max_octets_gb, align 4
  %add.ptr67 = getelementptr i8, ptr %mmcaddr, i32 60
  %40 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr67) #3, !srcloc !19
  %41 = tail call i32 @llvm.bswap.i32(i32 %40)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !37
  %mmc_tx_unicast_gb = getelementptr inbounds %struct.stmmac_counters, ptr %mmc, i32 0, i32 10
  %42 = ptrtoint ptr %mmc_tx_unicast_gb to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %mmc_tx_unicast_gb, align 4
  %add71 = add i32 %43, %41
  store i32 %add71, ptr %mmc_tx_unicast_gb, align 4
  %add.ptr74 = getelementptr i8, ptr %mmcaddr, i32 64
  %44 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr74) #3, !srcloc !19
  %45 = tail call i32 @llvm.bswap.i32(i32 %44)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !38
  %mmc_tx_multicast_gb = getelementptr inbounds %struct.stmmac_counters, ptr %mmc, i32 0, i32 11
  %46 = ptrtoint ptr %mmc_tx_multicast_gb to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %mmc_tx_multicast_gb, align 4
  %add78 = add i32 %47, %45
  store i32 %add78, ptr %mmc_tx_multicast_gb, align 4
  %add.ptr81 = getelementptr i8, ptr %mmcaddr, i32 68
  %48 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr81) #3, !srcloc !19
  %49 = tail call i32 @llvm.bswap.i32(i32 %48)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !39
  %mmc_tx_broadcast_gb = getelementptr inbounds %struct.stmmac_counters, ptr %mmc, i32 0, i32 12
  %50 = ptrtoint ptr %mmc_tx_broadcast_gb to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %mmc_tx_broadcast_gb, align 4
  %add85 = add i32 %51, %49
  store i32 %add85, ptr %mmc_tx_broadcast_gb, align 4
  %add.ptr88 = getelementptr i8, ptr %mmcaddr, i32 72
  %52 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr88) #3, !srcloc !19
  %53 = tail call i32 @llvm.bswap.i32(i32 %52)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !40
  %mmc_tx_underflow_error = getelementptr inbounds %struct.stmmac_counters, ptr %mmc, i32 0, i32 13
  %54 = ptrtoint ptr %mmc_tx_underflow_error to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %mmc_tx_underflow_error, align 4
  %add92 = add i32 %55, %53
  store i32 %add92, ptr %mmc_tx_underflow_error, align 4
  %add.ptr95 = getelementptr i8, ptr %mmcaddr, i32 76
  %56 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr95) #3, !srcloc !19
  %57 = tail call i32 @llvm.bswap.i32(i32 %56)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !41
  %mmc_tx_singlecol_g = getelementptr inbounds %struct.stmmac_counters, ptr %mmc, i32 0, i32 14
  %58 = ptrtoint ptr %mmc_tx_singlecol_g to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %mmc_tx_singlecol_g, align 4
  %add99 = add i32 %59, %57
  store i32 %add99, ptr %mmc_tx_singlecol_g, align 4
  %add.ptr102 = getelementptr i8, ptr %mmcaddr, i32 80
  %60 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr102) #3, !srcloc !19
  %61 = tail call i32 @llvm.bswap.i32(i32 %60)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !42
  %mmc_tx_multicol_g = getelementptr inbounds %struct.stmmac_counters, ptr %mmc, i32 0, i32 15
  %62 = ptrtoint ptr %mmc_tx_multicol_g to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %mmc_tx_multicol_g, align 4
  %add106 = add i32 %63, %61
  store i32 %add106, ptr %mmc_tx_multicol_g, align 4
  %add.ptr109 = getelementptr i8, ptr %mmcaddr, i32 84
  %64 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr109) #3, !srcloc !19
  %65 = tail call i32 @llvm.bswap.i32(i32 %64)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !43
  %mmc_tx_deferred = getelementptr inbounds %struct.stmmac_counters, ptr %mmc, i32 0, i32 16
  %66 = ptrtoint ptr %mmc_tx_deferred to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %mmc_tx_deferred, align 4
  %add113 = add i32 %67, %65
  store i32 %add113, ptr %mmc_tx_deferred, align 4
  %add.ptr116 = getelementptr i8, ptr %mmcaddr, i32 88
  %68 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr116) #3, !srcloc !19
  %69 = tail call i32 @llvm.bswap.i32(i32 %68)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !44
  %mmc_tx_latecol = getelementptr inbounds %struct.stmmac_counters, ptr %mmc, i32 0, i32 17
  %70 = ptrtoint ptr %mmc_tx_latecol to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %mmc_tx_latecol, align 4
  %add120 = add i32 %71, %69
  store i32 %add120, ptr %mmc_tx_latecol, align 4
  %add.ptr123 = getelementptr i8, ptr %mmcaddr, i32 92
  %72 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr123) #3, !srcloc !19
  %73 = tail call i32 @llvm.bswap.i32(i32 %72)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !45
  %mmc_tx_exesscol = getelementptr inbounds %struct.stmmac_counters, ptr %mmc, i32 0, i32 18
  %74 = ptrtoint ptr %mmc_tx_exesscol to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %mmc_tx_exesscol, align 4
  %add127 = add i32 %75, %73
  store i32 %add127, ptr %mmc_tx_exesscol, align 4
  %add.ptr130 = getelementptr i8, ptr %mmcaddr, i32 96
  %76 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr130) #3, !srcloc !19
  %77 = tail call i32 @llvm.bswap.i32(i32 %76)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !46
  %mmc_tx_carrier_error = getelementptr inbounds %struct.stmmac_counters, ptr %mmc, i32 0, i32 19
  %78 = ptrtoint ptr %mmc_tx_carrier_error to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %mmc_tx_carrier_error, align 4
  %add134 = add i32 %79, %77
  store i32 %add134, ptr %mmc_tx_carrier_error, align 4
  %add.ptr137 = getelementptr i8, ptr %mmcaddr, i32 100
  %80 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr137) #3, !srcloc !19
  %81 = tail call i32 @llvm.bswap.i32(i32 %80)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !47
  %mmc_tx_octetcount_g = getelementptr inbounds %struct.stmmac_counters, ptr %mmc, i32 0, i32 20
  %82 = ptrtoint ptr %mmc_tx_octetcount_g to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %mmc_tx_octetcount_g, align 4
  %add141 = add i32 %83, %81
  store i32 %add141, ptr %mmc_tx_octetcount_g, align 4
  %add.ptr144 = getelementptr i8, ptr %mmcaddr, i32 104
  %84 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr144) #3, !srcloc !19
  %85 = tail call i32 @llvm.bswap.i32(i32 %84)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !48
  %mmc_tx_framecount_g = getelementptr inbounds %struct.stmmac_counters, ptr %mmc, i32 0, i32 21
  %86 = ptrtoint ptr %mmc_tx_framecount_g to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %mmc_tx_framecount_g, align 4
  %add148 = add i32 %87, %85
  store i32 %add148, ptr %mmc_tx_framecount_g, align 4
  %add.ptr151 = getelementptr i8, ptr %mmcaddr, i32 108
  %88 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr151) #3, !srcloc !19
  %89 = tail call i32 @llvm.bswap.i32(i32 %88)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !49
  %mmc_tx_excessdef = getelementptr inbounds %struct.stmmac_counters, ptr %mmc, i32 0, i32 22
  %90 = ptrtoint ptr %mmc_tx_excessdef to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %mmc_tx_excessdef, align 4
  %add155 = add i32 %91, %89
  store i32 %add155, ptr %mmc_tx_excessdef, align 4
  %add.ptr158 = getelementptr i8, ptr %mmcaddr, i32 112
  %92 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr158) #3, !srcloc !19
  %93 = tail call i32 @llvm.bswap.i32(i32 %92)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !50
  %mmc_tx_pause_frame = getelementptr inbounds %struct.stmmac_counters, ptr %mmc, i32 0, i32 23
  %94 = ptrtoint ptr %mmc_tx_pause_frame to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %mmc_tx_pause_frame, align 4
  %add162 = add i32 %95, %93
  store i32 %add162, ptr %mmc_tx_pause_frame, align 4
  %add.ptr165 = getelementptr i8, ptr %mmcaddr, i32 116
  %96 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr165) #3, !srcloc !19
  %97 = tail call i32 @llvm.bswap.i32(i32 %96)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !51
  %mmc_tx_vlan_frame_g = getelementptr inbounds %struct.stmmac_counters, ptr %mmc, i32 0, i32 24
  %98 = ptrtoint ptr %mmc_tx_vlan_frame_g to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %mmc_tx_vlan_frame_g, align 4
  %add169 = add i32 %99, %97
  store i32 %add169, ptr %mmc_tx_vlan_frame_g, align 4
  %add.ptr172 = getelementptr i8, ptr %mmcaddr, i32 128
  %100 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr172) #3, !srcloc !19
  %101 = tail call i32 @llvm.bswap.i32(i32 %100)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !52
  %mmc_rx_framecount_gb = getelementptr inbounds %struct.stmmac_counters, ptr %mmc, i32 0, i32 25
  %102 = ptrtoint ptr %mmc_rx_framecount_gb to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %mmc_rx_framecount_gb, align 4
  %add176 = add i32 %103, %101
  store i32 %add176, ptr %mmc_rx_framecount_gb, align 4
  %add.ptr179 = getelementptr i8, ptr %mmcaddr, i32 132
  %104 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr179) #3, !srcloc !19
  %105 = tail call i32 @llvm.bswap.i32(i32 %104)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !53
  %mmc_rx_octetcount_gb = getelementptr inbounds %struct.stmmac_counters, ptr %mmc, i32 0, i32 26
  %106 = ptrtoint ptr %mmc_rx_octetcount_gb to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %mmc_rx_octetcount_gb, align 4
  %add183 = add i32 %107, %105
  store i32 %add183, ptr %mmc_rx_octetcount_gb, align 4
  %add.ptr186 = getelementptr i8, ptr %mmcaddr, i32 136
  %108 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr186) #3, !srcloc !19
  %109 = tail call i32 @llvm.bswap.i32(i32 %108)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !54
  %mmc_rx_octetcount_g = getelementptr inbounds %struct.stmmac_counters, ptr %mmc, i32 0, i32 27
  %110 = ptrtoint ptr %mmc_rx_octetcount_g to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %mmc_rx_octetcount_g, align 4
  %add190 = add i32 %111, %109
  store i32 %add190, ptr %mmc_rx_octetcount_g, align 4
  %add.ptr193 = getelementptr i8, ptr %mmcaddr, i32 140
  %112 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr193) #3, !srcloc !19
  %113 = tail call i32 @llvm.bswap.i32(i32 %112)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !55
  %mmc_rx_broadcastframe_g = getelementptr inbounds %struct.stmmac_counters, ptr %mmc, i32 0, i32 28
  %114 = ptrtoint ptr %mmc_rx_broadcastframe_g to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %mmc_rx_broadcastframe_g, align 4
  %add197 = add i32 %115, %113
  store i32 %add197, ptr %mmc_rx_broadcastframe_g, align 4
  %add.ptr200 = getelementptr i8, ptr %mmcaddr, i32 144
  %116 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr200) #3, !srcloc !19
  %117 = tail call i32 @llvm.bswap.i32(i32 %116)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !56
  %mmc_rx_multicastframe_g = getelementptr inbounds %struct.stmmac_counters, ptr %mmc, i32 0, i32 29
  %118 = ptrtoint ptr %mmc_rx_multicastframe_g to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %mmc_rx_multicastframe_g, align 4
  %add204 = add i32 %119, %117
  store i32 %add204, ptr %mmc_rx_multicastframe_g, align 4
  %add.ptr207 = getelementptr i8, ptr %mmcaddr, i32 148
  %120 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr207) #3, !srcloc !19
  %121 = tail call i32 @llvm.bswap.i32(i32 %120)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !57
  %mmc_rx_crc_error = getelementptr inbounds %struct.stmmac_counters, ptr %mmc, i32 0, i32 30
  %122 = ptrtoint ptr %mmc_rx_crc_error to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %mmc_rx_crc_error, align 4
  %add211 = add i32 %123, %121
  store i32 %add211, ptr %mmc_rx_crc_error, align 4
  %add.ptr214 = getelementptr i8, ptr %mmcaddr, i32 152
  %124 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr214) #3, !srcloc !19
  %125 = tail call i32 @llvm.bswap.i32(i32 %124)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !58
  %mmc_rx_align_error = getelementptr inbounds %struct.stmmac_counters, ptr %mmc, i32 0, i32 31
  %126 = ptrtoint ptr %mmc_rx_align_error to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %mmc_rx_align_error, align 4
  %add218 = add i32 %127, %125
  store i32 %add218, ptr %mmc_rx_align_error, align 4
  %add.ptr221 = getelementptr i8, ptr %mmcaddr, i32 156
  %128 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr221) #3, !srcloc !19
  %129 = tail call i32 @llvm.bswap.i32(i32 %128)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !59
  %mmc_rx_run_error = getelementptr inbounds %struct.stmmac_counters, ptr %mmc, i32 0, i32 32
  %130 = ptrtoint ptr %mmc_rx_run_error to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %mmc_rx_run_error, align 4
  %add225 = add i32 %131, %129
  store i32 %add225, ptr %mmc_rx_run_error, align 4
  %add.ptr228 = getelementptr i8, ptr %mmcaddr, i32 160
  %132 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr228) #3, !srcloc !19
  %133 = tail call i32 @llvm.bswap.i32(i32 %132)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !60
  %mmc_rx_jabber_error = getelementptr inbounds %struct.stmmac_counters, ptr %mmc, i32 0, i32 33
  %134 = ptrtoint ptr %mmc_rx_jabber_error to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load i32, ptr %mmc_rx_jabber_error, align 4
  %add232 = add i32 %135, %133
  store i32 %add232, ptr %mmc_rx_jabber_error, align 4
  %add.ptr235 = getelementptr i8, ptr %mmcaddr, i32 164
  %136 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr235) #3, !srcloc !19
  %137 = tail call i32 @llvm.bswap.i32(i32 %136)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !61
  %mmc_rx_undersize_g = getelementptr inbounds %struct.stmmac_counters, ptr %mmc, i32 0, i32 34
  %138 = ptrtoint ptr %mmc_rx_undersize_g to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load i32, ptr %mmc_rx_undersize_g, align 4
  %add239 = add i32 %139, %137
  store i32 %add239, ptr %mmc_rx_undersize_g, align 4
  %add.ptr242 = getelementptr i8, ptr %mmcaddr, i32 168
  %140 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr242) #3, !srcloc !19
  %141 = tail call i32 @llvm.bswap.i32(i32 %140)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !62
  %mmc_rx_oversize_g = getelementptr inbounds %struct.stmmac_counters, ptr %mmc, i32 0, i32 35
  %142 = ptrtoint ptr %mmc_rx_oversize_g to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load i32, ptr %mmc_rx_oversize_g, align 4
  %add246 = add i32 %143, %141
  store i32 %add246, ptr %mmc_rx_oversize_g, align 4
  %add.ptr249 = getelementptr i8, ptr %mmcaddr, i32 172
  %144 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr249) #3, !srcloc !19
  %145 = tail call i32 @llvm.bswap.i32(i32 %144)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !63
  %mmc_rx_64_octets_gb = getelementptr inbounds %struct.stmmac_counters, ptr %mmc, i32 0, i32 36
  %146 = ptrtoint ptr %mmc_rx_64_octets_gb to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load i32, ptr %mmc_rx_64_octets_gb, align 4
  %add253 = add i32 %147, %145
  store i32 %add253, ptr %mmc_rx_64_octets_gb, align 4
  %add.ptr256 = getelementptr i8, ptr %mmcaddr, i32 176
  %148 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr256) #3, !srcloc !19
  %149 = tail call i32 @llvm.bswap.i32(i32 %148)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !64
  %mmc_rx_65_to_127_octets_gb = getelementptr inbounds %struct.stmmac_counters, ptr %mmc, i32 0, i32 37
  %150 = ptrtoint ptr %mmc_rx_65_to_127_octets_gb to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load i32, ptr %mmc_rx_65_to_127_octets_gb, align 4
  %add260 = add i32 %151, %149
  store i32 %add260, ptr %mmc_rx_65_to_127_octets_gb, align 4
  %add.ptr263 = getelementptr i8, ptr %mmcaddr, i32 180
  %152 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr263) #3, !srcloc !19
  %153 = tail call i32 @llvm.bswap.i32(i32 %152)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !65
  %mmc_rx_128_to_255_octets_gb = getelementptr inbounds %struct.stmmac_counters, ptr %mmc, i32 0, i32 38
  %154 = ptrtoint ptr %mmc_rx_128_to_255_octets_gb to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load i32, ptr %mmc_rx_128_to_255_octets_gb, align 4
  %add267 = add i32 %155, %153
  store i32 %add267, ptr %mmc_rx_128_to_255_octets_gb, align 4
  %add.ptr270 = getelementptr i8, ptr %mmcaddr, i32 184
  %156 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr270) #3, !srcloc !19
  %157 = tail call i32 @llvm.bswap.i32(i32 %156)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !66
  %mmc_rx_256_to_511_octets_gb = getelementptr inbounds %struct.stmmac_counters, ptr %mmc, i32 0, i32 39
  %158 = ptrtoint ptr %mmc_rx_256_to_511_octets_gb to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load i32, ptr %mmc_rx_256_to_511_octets_gb, align 4
  %add274 = add i32 %159, %157
  store i32 %add274, ptr %mmc_rx_256_to_511_octets_gb, align 4
  %add.ptr277 = getelementptr i8, ptr %mmcaddr, i32 188
  %160 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr277) #3, !srcloc !19
  %161 = tail call i32 @llvm.bswap.i32(i32 %160)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !67
  %mmc_rx_512_to_1023_octets_gb = getelementptr inbounds %struct.stmmac_counters, ptr %mmc, i32 0, i32 40
  %162 = ptrtoint ptr %mmc_rx_512_to_1023_octets_gb to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load i32, ptr %mmc_rx_512_to_1023_octets_gb, align 4
  %add281 = add i32 %163, %161
  store i32 %add281, ptr %mmc_rx_512_to_1023_octets_gb, align 4
  %add.ptr284 = getelementptr i8, ptr %mmcaddr, i32 192
  %164 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr284) #3, !srcloc !19
  %165 = tail call i32 @llvm.bswap.i32(i32 %164)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !68
  %mmc_rx_1024_to_max_octets_gb = getelementptr inbounds %struct.stmmac_counters, ptr %mmc, i32 0, i32 41
  %166 = ptrtoint ptr %mmc_rx_1024_to_max_octets_gb to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load i32, ptr %mmc_rx_1024_to_max_octets_gb, align 4
  %add288 = add i32 %167, %165
  store i32 %add288, ptr %mmc_rx_1024_to_max_octets_gb, align 4
  %add.ptr291 = getelementptr i8, ptr %mmcaddr, i32 196
  %168 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr291) #3, !srcloc !19
  %169 = tail call i32 @llvm.bswap.i32(i32 %168)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !69
  %mmc_rx_unicast_g = getelementptr inbounds %struct.stmmac_counters, ptr %mmc, i32 0, i32 42
  %170 = ptrtoint ptr %mmc_rx_unicast_g to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load i32, ptr %mmc_rx_unicast_g, align 4
  %add295 = add i32 %171, %169
  store i32 %add295, ptr %mmc_rx_unicast_g, align 4
  %add.ptr298 = getelementptr i8, ptr %mmcaddr, i32 200
  %172 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr298) #3, !srcloc !19
  %173 = tail call i32 @llvm.bswap.i32(i32 %172)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !70
  %mmc_rx_length_error = getelementptr inbounds %struct.stmmac_counters, ptr %mmc, i32 0, i32 43
  %174 = ptrtoint ptr %mmc_rx_length_error to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load i32, ptr %mmc_rx_length_error, align 4
  %add302 = add i32 %175, %173
  store i32 %add302, ptr %mmc_rx_length_error, align 4
  %add.ptr305 = getelementptr i8, ptr %mmcaddr, i32 204
  %176 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr305) #3, !srcloc !19
  %177 = tail call i32 @llvm.bswap.i32(i32 %176)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !71
  %mmc_rx_autofrangetype = getelementptr inbounds %struct.stmmac_counters, ptr %mmc, i32 0, i32 44
  %178 = ptrtoint ptr %mmc_rx_autofrangetype to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load i32, ptr %mmc_rx_autofrangetype, align 4
  %add309 = add i32 %179, %177
  store i32 %add309, ptr %mmc_rx_autofrangetype, align 4
  %add.ptr312 = getelementptr i8, ptr %mmcaddr, i32 208
  %180 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr312) #3, !srcloc !19
  %181 = tail call i32 @llvm.bswap.i32(i32 %180)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !72
  %mmc_rx_pause_frames = getelementptr inbounds %struct.stmmac_counters, ptr %mmc, i32 0, i32 45
  %182 = ptrtoint ptr %mmc_rx_pause_frames to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load i32, ptr %mmc_rx_pause_frames, align 4
  %add316 = add i32 %183, %181
  store i32 %add316, ptr %mmc_rx_pause_frames, align 4
  %add.ptr319 = getelementptr i8, ptr %mmcaddr, i32 212
  %184 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr319) #3, !srcloc !19
  %185 = tail call i32 @llvm.bswap.i32(i32 %184)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !73
  %mmc_rx_fifo_overflow = getelementptr inbounds %struct.stmmac_counters, ptr %mmc, i32 0, i32 46
  %186 = ptrtoint ptr %mmc_rx_fifo_overflow to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load i32, ptr %mmc_rx_fifo_overflow, align 4
  %add323 = add i32 %187, %185
  store i32 %add323, ptr %mmc_rx_fifo_overflow, align 4
  %add.ptr326 = getelementptr i8, ptr %mmcaddr, i32 216
  %188 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr326) #3, !srcloc !19
  %189 = tail call i32 @llvm.bswap.i32(i32 %188)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !74
  %mmc_rx_vlan_frames_gb = getelementptr inbounds %struct.stmmac_counters, ptr %mmc, i32 0, i32 47
  %190 = ptrtoint ptr %mmc_rx_vlan_frames_gb to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load i32, ptr %mmc_rx_vlan_frames_gb, align 4
  %add330 = add i32 %191, %189
  store i32 %add330, ptr %mmc_rx_vlan_frames_gb, align 4
  %add.ptr333 = getelementptr i8, ptr %mmcaddr, i32 220
  %192 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr333) #3, !srcloc !19
  %193 = tail call i32 @llvm.bswap.i32(i32 %192)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !75
  %mmc_rx_watchdog_error = getelementptr inbounds %struct.stmmac_counters, ptr %mmc, i32 0, i32 48
  %194 = ptrtoint ptr %mmc_rx_watchdog_error to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load i32, ptr %mmc_rx_watchdog_error, align 4
  %add337 = add i32 %195, %193
  store i32 %add337, ptr %mmc_rx_watchdog_error, align 4
  %add.ptr340 = getelementptr i8, ptr %mmcaddr, i32 256
  %196 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr340) #3, !srcloc !19
  %197 = tail call i32 @llvm.bswap.i32(i32 %196)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !76
  %mmc_rx_ipc_intr_mask = getelementptr inbounds %struct.stmmac_counters, ptr %mmc, i32 0, i32 49
  %198 = ptrtoint ptr %mmc_rx_ipc_intr_mask to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load i32, ptr %mmc_rx_ipc_intr_mask, align 4
  %add344 = add i32 %199, %197
  store i32 %add344, ptr %mmc_rx_ipc_intr_mask, align 4
  %add.ptr347 = getelementptr i8, ptr %mmcaddr, i32 264
  %200 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr347) #3, !srcloc !19
  %201 = tail call i32 @llvm.bswap.i32(i32 %200)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !77
  %mmc_rx_ipc_intr = getelementptr inbounds %struct.stmmac_counters, ptr %mmc, i32 0, i32 50
  %202 = ptrtoint ptr %mmc_rx_ipc_intr to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load i32, ptr %mmc_rx_ipc_intr, align 4
  %add351 = add i32 %203, %201
  store i32 %add351, ptr %mmc_rx_ipc_intr, align 4
  %add.ptr354 = getelementptr i8, ptr %mmcaddr, i32 272
  %204 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr354) #3, !srcloc !19
  %205 = tail call i32 @llvm.bswap.i32(i32 %204)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !78
  %mmc_rx_ipv4_gd = getelementptr inbounds %struct.stmmac_counters, ptr %mmc, i32 0, i32 51
  %206 = ptrtoint ptr %mmc_rx_ipv4_gd to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load i32, ptr %mmc_rx_ipv4_gd, align 4
  %add358 = add i32 %207, %205
  store i32 %add358, ptr %mmc_rx_ipv4_gd, align 4
  %add.ptr361 = getelementptr i8, ptr %mmcaddr, i32 276
  %208 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr361) #3, !srcloc !19
  %209 = tail call i32 @llvm.bswap.i32(i32 %208)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !79
  %mmc_rx_ipv4_hderr = getelementptr inbounds %struct.stmmac_counters, ptr %mmc, i32 0, i32 52
  %210 = ptrtoint ptr %mmc_rx_ipv4_hderr to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load i32, ptr %mmc_rx_ipv4_hderr, align 4
  %add365 = add i32 %211, %209
  store i32 %add365, ptr %mmc_rx_ipv4_hderr, align 4
  %add.ptr368 = getelementptr i8, ptr %mmcaddr, i32 280
  %212 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr368) #3, !srcloc !19
  %213 = tail call i32 @llvm.bswap.i32(i32 %212)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !80
  %mmc_rx_ipv4_nopay = getelementptr inbounds %struct.stmmac_counters, ptr %mmc, i32 0, i32 53
  %214 = ptrtoint ptr %mmc_rx_ipv4_nopay to i32
  call void @__asan_load4_noabort(i32 %214)
  %215 = load i32, ptr %mmc_rx_ipv4_nopay, align 4
  %add372 = add i32 %215, %213
  store i32 %add372, ptr %mmc_rx_ipv4_nopay, align 4
  %add.ptr375 = getelementptr i8, ptr %mmcaddr, i32 284
  %216 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr375) #3, !srcloc !19
  %217 = tail call i32 @llvm.bswap.i32(i32 %216)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !81
  %mmc_rx_ipv4_frag = getelementptr inbounds %struct.stmmac_counters, ptr %mmc, i32 0, i32 54
  %218 = ptrtoint ptr %mmc_rx_ipv4_frag to i32
  call void @__asan_load4_noabort(i32 %218)
  %219 = load i32, ptr %mmc_rx_ipv4_frag, align 4
  %add379 = add i32 %219, %217
  store i32 %add379, ptr %mmc_rx_ipv4_frag, align 4
  %add.ptr382 = getelementptr i8, ptr %mmcaddr, i32 288
  %220 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr382) #3, !srcloc !19
  %221 = tail call i32 @llvm.bswap.i32(i32 %220)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !82
  %mmc_rx_ipv4_udsbl = getelementptr inbounds %struct.stmmac_counters, ptr %mmc, i32 0, i32 55
  %222 = ptrtoint ptr %mmc_rx_ipv4_udsbl to i32
  call void @__asan_load4_noabort(i32 %222)
  %223 = load i32, ptr %mmc_rx_ipv4_udsbl, align 4
  %add386 = add i32 %223, %221
  store i32 %add386, ptr %mmc_rx_ipv4_udsbl, align 4
  %add.ptr389 = getelementptr i8, ptr %mmcaddr, i32 336
  %224 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr389) #3, !srcloc !19
  %225 = tail call i32 @llvm.bswap.i32(i32 %224)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !83
  %mmc_rx_ipv4_gd_octets = getelementptr inbounds %struct.stmmac_counters, ptr %mmc, i32 0, i32 56
  %226 = ptrtoint ptr %mmc_rx_ipv4_gd_octets to i32
  call void @__asan_load4_noabort(i32 %226)
  %227 = load i32, ptr %mmc_rx_ipv4_gd_octets, align 4
  %add393 = add i32 %227, %225
  store i32 %add393, ptr %mmc_rx_ipv4_gd_octets, align 4
  %add.ptr396 = getelementptr i8, ptr %mmcaddr, i32 340
  %228 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr396) #3, !srcloc !19
  %229 = tail call i32 @llvm.bswap.i32(i32 %228)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !84
  %mmc_rx_ipv4_hderr_octets = getelementptr inbounds %struct.stmmac_counters, ptr %mmc, i32 0, i32 57
  %230 = ptrtoint ptr %mmc_rx_ipv4_hderr_octets to i32
  call void @__asan_load4_noabort(i32 %230)
  %231 = load i32, ptr %mmc_rx_ipv4_hderr_octets, align 4
  %add400 = add i32 %231, %229
  store i32 %add400, ptr %mmc_rx_ipv4_hderr_octets, align 4
  %add.ptr403 = getelementptr i8, ptr %mmcaddr, i32 344
  %232 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr403) #3, !srcloc !19
  %233 = tail call i32 @llvm.bswap.i32(i32 %232)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !85
  %mmc_rx_ipv4_nopay_octets = getelementptr inbounds %struct.stmmac_counters, ptr %mmc, i32 0, i32 58
  %234 = ptrtoint ptr %mmc_rx_ipv4_nopay_octets to i32
  call void @__asan_load4_noabort(i32 %234)
  %235 = load i32, ptr %mmc_rx_ipv4_nopay_octets, align 4
  %add407 = add i32 %235, %233
  store i32 %add407, ptr %mmc_rx_ipv4_nopay_octets, align 4
  %add.ptr410 = getelementptr i8, ptr %mmcaddr, i32 348
  %236 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr410) #3, !srcloc !19
  %237 = tail call i32 @llvm.bswap.i32(i32 %236)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !86
  %mmc_rx_ipv4_frag_octets = getelementptr inbounds %struct.stmmac_counters, ptr %mmc, i32 0, i32 59
  %238 = ptrtoint ptr %mmc_rx_ipv4_frag_octets to i32
  call void @__asan_load4_noabort(i32 %238)
  %239 = load i32, ptr %mmc_rx_ipv4_frag_octets, align 4
  %add414 = add i32 %239, %237
  store i32 %add414, ptr %mmc_rx_ipv4_frag_octets, align 4
  %add.ptr417 = getelementptr i8, ptr %mmcaddr, i32 352
  %240 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr417) #3, !srcloc !19
  %241 = tail call i32 @llvm.bswap.i32(i32 %240)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !87
  %mmc_rx_ipv4_udsbl_octets = getelementptr inbounds %struct.stmmac_counters, ptr %mmc, i32 0, i32 60
  %242 = ptrtoint ptr %mmc_rx_ipv4_udsbl_octets to i32
  call void @__asan_load4_noabort(i32 %242)
  %243 = load i32, ptr %mmc_rx_ipv4_udsbl_octets, align 4
  %add421 = add i32 %243, %241
  store i32 %add421, ptr %mmc_rx_ipv4_udsbl_octets, align 4
  %add.ptr424 = getelementptr i8, ptr %mmcaddr, i32 356
  %244 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr424) #3, !srcloc !19
  %245 = tail call i32 @llvm.bswap.i32(i32 %244)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !88
  %mmc_rx_ipv6_gd_octets = getelementptr inbounds %struct.stmmac_counters, ptr %mmc, i32 0, i32 61
  %246 = ptrtoint ptr %mmc_rx_ipv6_gd_octets to i32
  call void @__asan_load4_noabort(i32 %246)
  %247 = load i32, ptr %mmc_rx_ipv6_gd_octets, align 4
  %add428 = add i32 %247, %245
  store i32 %add428, ptr %mmc_rx_ipv6_gd_octets, align 4
  %add.ptr431 = getelementptr i8, ptr %mmcaddr, i32 360
  %248 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr431) #3, !srcloc !19
  %249 = tail call i32 @llvm.bswap.i32(i32 %248)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !89
  %mmc_rx_ipv6_hderr_octets = getelementptr inbounds %struct.stmmac_counters, ptr %mmc, i32 0, i32 62
  %250 = ptrtoint ptr %mmc_rx_ipv6_hderr_octets to i32
  call void @__asan_load4_noabort(i32 %250)
  %251 = load i32, ptr %mmc_rx_ipv6_hderr_octets, align 4
  %add435 = add i32 %251, %249
  store i32 %add435, ptr %mmc_rx_ipv6_hderr_octets, align 4
  %add.ptr438 = getelementptr i8, ptr %mmcaddr, i32 364
  %252 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr438) #3, !srcloc !19
  %253 = tail call i32 @llvm.bswap.i32(i32 %252)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !90
  %mmc_rx_ipv6_nopay_octets = getelementptr inbounds %struct.stmmac_counters, ptr %mmc, i32 0, i32 63
  %254 = ptrtoint ptr %mmc_rx_ipv6_nopay_octets to i32
  call void @__asan_load4_noabort(i32 %254)
  %255 = load i32, ptr %mmc_rx_ipv6_nopay_octets, align 4
  %add442 = add i32 %255, %253
  store i32 %add442, ptr %mmc_rx_ipv6_nopay_octets, align 4
  %add.ptr445 = getelementptr i8, ptr %mmcaddr, i32 292
  %256 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr445) #3, !srcloc !19
  %257 = tail call i32 @llvm.bswap.i32(i32 %256)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !91
  %mmc_rx_ipv6_gd = getelementptr inbounds %struct.stmmac_counters, ptr %mmc, i32 0, i32 64
  %258 = ptrtoint ptr %mmc_rx_ipv6_gd to i32
  call void @__asan_load4_noabort(i32 %258)
  %259 = load i32, ptr %mmc_rx_ipv6_gd, align 4
  %add449 = add i32 %259, %257
  store i32 %add449, ptr %mmc_rx_ipv6_gd, align 4
  %add.ptr452 = getelementptr i8, ptr %mmcaddr, i32 296
  %260 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr452) #3, !srcloc !19
  %261 = tail call i32 @llvm.bswap.i32(i32 %260)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !92
  %mmc_rx_ipv6_hderr = getelementptr inbounds %struct.stmmac_counters, ptr %mmc, i32 0, i32 65
  %262 = ptrtoint ptr %mmc_rx_ipv6_hderr to i32
  call void @__asan_load4_noabort(i32 %262)
  %263 = load i32, ptr %mmc_rx_ipv6_hderr, align 4
  %add456 = add i32 %263, %261
  store i32 %add456, ptr %mmc_rx_ipv6_hderr, align 4
  %add.ptr459 = getelementptr i8, ptr %mmcaddr, i32 300
  %264 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr459) #3, !srcloc !19
  %265 = tail call i32 @llvm.bswap.i32(i32 %264)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !93
  %mmc_rx_ipv6_nopay = getelementptr inbounds %struct.stmmac_counters, ptr %mmc, i32 0, i32 66
  %266 = ptrtoint ptr %mmc_rx_ipv6_nopay to i32
  call void @__asan_load4_noabort(i32 %266)
  %267 = load i32, ptr %mmc_rx_ipv6_nopay, align 4
  %add463 = add i32 %267, %265
  store i32 %add463, ptr %mmc_rx_ipv6_nopay, align 4
  %add.ptr466 = getelementptr i8, ptr %mmcaddr, i32 304
  %268 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr466) #3, !srcloc !19
  %269 = tail call i32 @llvm.bswap.i32(i32 %268)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !94
  %mmc_rx_udp_gd = getelementptr inbounds %struct.stmmac_counters, ptr %mmc, i32 0, i32 67
  %270 = ptrtoint ptr %mmc_rx_udp_gd to i32
  call void @__asan_load4_noabort(i32 %270)
  %271 = load i32, ptr %mmc_rx_udp_gd, align 4
  %add470 = add i32 %271, %269
  store i32 %add470, ptr %mmc_rx_udp_gd, align 4
  %add.ptr473 = getelementptr i8, ptr %mmcaddr, i32 308
  %272 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr473) #3, !srcloc !19
  %273 = tail call i32 @llvm.bswap.i32(i32 %272)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !95
  %mmc_rx_udp_err = getelementptr inbounds %struct.stmmac_counters, ptr %mmc, i32 0, i32 68
  %274 = ptrtoint ptr %mmc_rx_udp_err to i32
  call void @__asan_load4_noabort(i32 %274)
  %275 = load i32, ptr %mmc_rx_udp_err, align 4
  %add477 = add i32 %275, %273
  store i32 %add477, ptr %mmc_rx_udp_err, align 4
  %add.ptr480 = getelementptr i8, ptr %mmcaddr, i32 312
  %276 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr480) #3, !srcloc !19
  %277 = tail call i32 @llvm.bswap.i32(i32 %276)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !96
  %mmc_rx_tcp_gd = getelementptr inbounds %struct.stmmac_counters, ptr %mmc, i32 0, i32 69
  %278 = ptrtoint ptr %mmc_rx_tcp_gd to i32
  call void @__asan_load4_noabort(i32 %278)
  %279 = load i32, ptr %mmc_rx_tcp_gd, align 4
  %add484 = add i32 %279, %277
  store i32 %add484, ptr %mmc_rx_tcp_gd, align 4
  %add.ptr487 = getelementptr i8, ptr %mmcaddr, i32 316
  %280 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr487) #3, !srcloc !19
  %281 = tail call i32 @llvm.bswap.i32(i32 %280)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !97
  %mmc_rx_tcp_err = getelementptr inbounds %struct.stmmac_counters, ptr %mmc, i32 0, i32 70
  %282 = ptrtoint ptr %mmc_rx_tcp_err to i32
  call void @__asan_load4_noabort(i32 %282)
  %283 = load i32, ptr %mmc_rx_tcp_err, align 4
  %add491 = add i32 %283, %281
  store i32 %add491, ptr %mmc_rx_tcp_err, align 4
  %add.ptr494 = getelementptr i8, ptr %mmcaddr, i32 320
  %284 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr494) #3, !srcloc !19
  %285 = tail call i32 @llvm.bswap.i32(i32 %284)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !98
  %mmc_rx_icmp_gd = getelementptr inbounds %struct.stmmac_counters, ptr %mmc, i32 0, i32 71
  %286 = ptrtoint ptr %mmc_rx_icmp_gd to i32
  call void @__asan_load4_noabort(i32 %286)
  %287 = load i32, ptr %mmc_rx_icmp_gd, align 4
  %add498 = add i32 %287, %285
  store i32 %add498, ptr %mmc_rx_icmp_gd, align 4
  %add.ptr501 = getelementptr i8, ptr %mmcaddr, i32 324
  %288 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr501) #3, !srcloc !19
  %289 = tail call i32 @llvm.bswap.i32(i32 %288)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !99
  %mmc_rx_icmp_err = getelementptr inbounds %struct.stmmac_counters, ptr %mmc, i32 0, i32 72
  %290 = ptrtoint ptr %mmc_rx_icmp_err to i32
  call void @__asan_load4_noabort(i32 %290)
  %291 = load i32, ptr %mmc_rx_icmp_err, align 4
  %add505 = add i32 %291, %289
  store i32 %add505, ptr %mmc_rx_icmp_err, align 4
  %add.ptr508 = getelementptr i8, ptr %mmcaddr, i32 368
  %292 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr508) #3, !srcloc !19
  %293 = tail call i32 @llvm.bswap.i32(i32 %292)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !100
  %mmc_rx_udp_gd_octets = getelementptr inbounds %struct.stmmac_counters, ptr %mmc, i32 0, i32 73
  %294 = ptrtoint ptr %mmc_rx_udp_gd_octets to i32
  call void @__asan_load4_noabort(i32 %294)
  %295 = load i32, ptr %mmc_rx_udp_gd_octets, align 4
  %add512 = add i32 %295, %293
  store i32 %add512, ptr %mmc_rx_udp_gd_octets, align 4
  %add.ptr515 = getelementptr i8, ptr %mmcaddr, i32 372
  %296 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr515) #3, !srcloc !19
  %297 = tail call i32 @llvm.bswap.i32(i32 %296)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !101
  %mmc_rx_udp_err_octets = getelementptr inbounds %struct.stmmac_counters, ptr %mmc, i32 0, i32 74
  %298 = ptrtoint ptr %mmc_rx_udp_err_octets to i32
  call void @__asan_load4_noabort(i32 %298)
  %299 = load i32, ptr %mmc_rx_udp_err_octets, align 4
  %add519 = add i32 %299, %297
  store i32 %add519, ptr %mmc_rx_udp_err_octets, align 4
  %add.ptr522 = getelementptr i8, ptr %mmcaddr, i32 376
  %300 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr522) #3, !srcloc !19
  %301 = tail call i32 @llvm.bswap.i32(i32 %300)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !102
  %mmc_rx_tcp_gd_octets = getelementptr inbounds %struct.stmmac_counters, ptr %mmc, i32 0, i32 75
  %302 = ptrtoint ptr %mmc_rx_tcp_gd_octets to i32
  call void @__asan_load4_noabort(i32 %302)
  %303 = load i32, ptr %mmc_rx_tcp_gd_octets, align 4
  %add526 = add i32 %303, %301
  store i32 %add526, ptr %mmc_rx_tcp_gd_octets, align 4
  %add.ptr529 = getelementptr i8, ptr %mmcaddr, i32 380
  %304 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr529) #3, !srcloc !19
  %305 = tail call i32 @llvm.bswap.i32(i32 %304)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !103
  %mmc_rx_tcp_err_octets = getelementptr inbounds %struct.stmmac_counters, ptr %mmc, i32 0, i32 76
  %306 = ptrtoint ptr %mmc_rx_tcp_err_octets to i32
  call void @__asan_load4_noabort(i32 %306)
  %307 = load i32, ptr %mmc_rx_tcp_err_octets, align 4
  %add533 = add i32 %307, %305
  store i32 %add533, ptr %mmc_rx_tcp_err_octets, align 4
  %add.ptr536 = getelementptr i8, ptr %mmcaddr, i32 384
  %308 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr536) #3, !srcloc !19
  %309 = tail call i32 @llvm.bswap.i32(i32 %308)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !104
  %mmc_rx_icmp_gd_octets = getelementptr inbounds %struct.stmmac_counters, ptr %mmc, i32 0, i32 77
  %310 = ptrtoint ptr %mmc_rx_icmp_gd_octets to i32
  call void @__asan_load4_noabort(i32 %310)
  %311 = load i32, ptr %mmc_rx_icmp_gd_octets, align 4
  %add540 = add i32 %311, %309
  store i32 %add540, ptr %mmc_rx_icmp_gd_octets, align 4
  %add.ptr543 = getelementptr i8, ptr %mmcaddr, i32 388
  %312 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr543) #3, !srcloc !19
  %313 = tail call i32 @llvm.bswap.i32(i32 %312)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !105
  %mmc_rx_icmp_err_octets = getelementptr inbounds %struct.stmmac_counters, ptr %mmc, i32 0, i32 78
  %314 = ptrtoint ptr %mmc_rx_icmp_err_octets to i32
  call void @__asan_load4_noabort(i32 %314)
  %315 = load i32, ptr %mmc_rx_icmp_err_octets, align 4
  %add547 = add i32 %315, %313
  store i32 %add547, ptr %mmc_rx_icmp_err_octets, align 4
  %add.ptr550 = getelementptr i8, ptr %mmcaddr, i32 424
  %316 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr550) #3, !srcloc !19
  %317 = tail call i32 @llvm.bswap.i32(i32 %316)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !106
  %mmc_tx_fpe_fragment_cntr = getelementptr inbounds %struct.stmmac_counters, ptr %mmc, i32 0, i32 79
  %318 = ptrtoint ptr %mmc_tx_fpe_fragment_cntr to i32
  call void @__asan_load4_noabort(i32 %318)
  %319 = load i32, ptr %mmc_tx_fpe_fragment_cntr, align 4
  %add554 = add i32 %319, %317
  store i32 %add554, ptr %mmc_tx_fpe_fragment_cntr, align 4
  %add.ptr557 = getelementptr i8, ptr %mmcaddr, i32 428
  %320 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr557) #3, !srcloc !19
  %321 = tail call i32 @llvm.bswap.i32(i32 %320)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !107
  %mmc_tx_hold_req_cntr = getelementptr inbounds %struct.stmmac_counters, ptr %mmc, i32 0, i32 80
  %322 = ptrtoint ptr %mmc_tx_hold_req_cntr to i32
  call void @__asan_load4_noabort(i32 %322)
  %323 = load i32, ptr %mmc_tx_hold_req_cntr, align 4
  %add561 = add i32 %323, %321
  store i32 %add561, ptr %mmc_tx_hold_req_cntr, align 4
  %add.ptr564 = getelementptr i8, ptr %mmcaddr, i32 456
  %324 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr564) #3, !srcloc !19
  %325 = tail call i32 @llvm.bswap.i32(i32 %324)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !108
  %mmc_rx_packet_assembly_err_cntr = getelementptr inbounds %struct.stmmac_counters, ptr %mmc, i32 0, i32 81
  %326 = ptrtoint ptr %mmc_rx_packet_assembly_err_cntr to i32
  call void @__asan_load4_noabort(i32 %326)
  %327 = load i32, ptr %mmc_rx_packet_assembly_err_cntr, align 4
  %add568 = add i32 %327, %325
  store i32 %add568, ptr %mmc_rx_packet_assembly_err_cntr, align 4
  %add.ptr571 = getelementptr i8, ptr %mmcaddr, i32 460
  %328 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr571) #3, !srcloc !19
  %329 = tail call i32 @llvm.bswap.i32(i32 %328)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !109
  %mmc_rx_packet_smd_err_cntr = getelementptr inbounds %struct.stmmac_counters, ptr %mmc, i32 0, i32 82
  %330 = ptrtoint ptr %mmc_rx_packet_smd_err_cntr to i32
  call void @__asan_load4_noabort(i32 %330)
  %331 = load i32, ptr %mmc_rx_packet_smd_err_cntr, align 4
  %add575 = add i32 %331, %329
  store i32 %add575, ptr %mmc_rx_packet_smd_err_cntr, align 4
  %add.ptr578 = getelementptr i8, ptr %mmcaddr, i32 464
  %332 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr578) #3, !srcloc !19
  %333 = tail call i32 @llvm.bswap.i32(i32 %332)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !110
  %mmc_rx_packet_assembly_ok_cntr = getelementptr inbounds %struct.stmmac_counters, ptr %mmc, i32 0, i32 83
  %334 = ptrtoint ptr %mmc_rx_packet_assembly_ok_cntr to i32
  call void @__asan_load4_noabort(i32 %334)
  %335 = load i32, ptr %mmc_rx_packet_assembly_ok_cntr, align 4
  %add582 = add i32 %335, %333
  store i32 %add582, ptr %mmc_rx_packet_assembly_ok_cntr, align 4
  %add.ptr585 = getelementptr i8, ptr %mmcaddr, i32 468
  %336 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr585) #3, !srcloc !19
  %337 = tail call i32 @llvm.bswap.i32(i32 %336)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !111
  %mmc_rx_fpe_fragment_cntr = getelementptr inbounds %struct.stmmac_counters, ptr %mmc, i32 0, i32 84
  %338 = ptrtoint ptr %mmc_rx_fpe_fragment_cntr to i32
  call void @__asan_load4_noabort(i32 %338)
  %339 = load i32, ptr %mmc_rx_fpe_fragment_cntr, align 4
  %add589 = add i32 %339, %337
  store i32 %add589, ptr %mmc_rx_fpe_fragment_cntr, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dwxgmac_mmc_ctrl(ptr noundef %mmcaddr, i32 noundef %mode) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %mmcaddr) #3, !srcloc !19
  %1 = tail call i32 @llvm.bswap.i32(i32 %0)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !112
  %and = and i32 %mode, 63
  %or = or i32 %1, %and
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !113
  tail call void @arm_heavy_mb() #3
  %2 = tail call i32 @llvm.bswap.i32(i32 %or)
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %mmcaddr, i32 %2) #3, !srcloc !22
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dwxgmac_mmc_intr_all_mask(ptr noundef %mmcaddr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !114
  tail call void @arm_heavy_mb() #3
  %add.ptr = getelementptr i8, ptr %mmcaddr, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 0) #3, !srcloc !22
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !115
  tail call void @arm_heavy_mb() #3
  %add.ptr3 = getelementptr i8, ptr %mmcaddr, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3, i32 0) #3, !srcloc !22
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !116
  tail call void @arm_heavy_mb() #3
  %add.ptr6 = getelementptr i8, ptr %mmcaddr, i32 604
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr6, i32 -1) #3, !srcloc !22
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dwxgmac_mmc_read(ptr noundef %mmcaddr, ptr noundef %mmc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %mmcaddr, i32 20
  %0 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #3, !srcloc !19
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !117
  %add.ptr6.i = getelementptr i8, ptr %mmcaddr, i32 24
  %1 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr6.i) #3, !srcloc !19
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !118
  %2 = zext i32 %1 to i64
  %3 = zext i32 %0 to i64
  %4 = shl nuw i64 %3, 32
  %5 = or i64 %4, %2
  %6 = tail call i64 @llvm.bswap.i64(i64 %5) #3
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967295, i64 %6)
  %cmp.i = icmp ugt i64 %6, 4294967295
  br i1 %cmp.i, label %entry.dwxgmac_read_mmc_reg.exit_crit_edge, label %if.else.i

entry.dwxgmac_read_mmc_reg.exit_crit_edge:        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %dwxgmac_read_mmc_reg.exit

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %7 = ptrtoint ptr %mmc to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %mmc, align 4
  %9 = trunc i64 %6 to i32
  %conv15.i = add i32 %8, %9
  br label %dwxgmac_read_mmc_reg.exit

dwxgmac_read_mmc_reg.exit:                        ; preds = %if.else.i, %entry.dwxgmac_read_mmc_reg.exit_crit_edge
  %storemerge.i = phi i32 [ %conv15.i, %if.else.i ], [ -1, %entry.dwxgmac_read_mmc_reg.exit_crit_edge ]
  %10 = ptrtoint ptr %mmc to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %storemerge.i, ptr %mmc, align 4
  %mmc_tx_framecount_gb = getelementptr inbounds %struct.stmmac_counters, ptr %mmc, i32 0, i32 1
  %add.ptr.i167 = getelementptr i8, ptr %mmcaddr, i32 28
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i167) #3, !srcloc !19
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !117
  %add.ptr6.i168 = getelementptr i8, ptr %mmcaddr, i32 32
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr6.i168) #3, !srcloc !19
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !118
  %13 = zext i32 %12 to i64
  %14 = zext i32 %11 to i64
  %15 = shl nuw i64 %14, 32
  %16 = or i64 %15, %13
  %17 = tail call i64 @llvm.bswap.i64(i64 %16) #3
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967295, i64 %17)
  %cmp.i169 = icmp ugt i64 %17, 4294967295
  br i1 %cmp.i169, label %dwxgmac_read_mmc_reg.exit.dwxgmac_read_mmc_reg.exit173_crit_edge, label %if.else.i171

dwxgmac_read_mmc_reg.exit.dwxgmac_read_mmc_reg.exit173_crit_edge: ; preds = %dwxgmac_read_mmc_reg.exit
  call void @__sanitizer_cov_trace_pc() #5
  br label %dwxgmac_read_mmc_reg.exit173

if.else.i171:                                     ; preds = %dwxgmac_read_mmc_reg.exit
  call void @__sanitizer_cov_trace_pc() #5
  %18 = ptrtoint ptr %mmc_tx_framecount_gb to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %mmc_tx_framecount_gb, align 4
  %20 = trunc i64 %17 to i32
  %conv15.i170 = add i32 %19, %20
  br label %dwxgmac_read_mmc_reg.exit173

dwxgmac_read_mmc_reg.exit173:                     ; preds = %if.else.i171, %dwxgmac_read_mmc_reg.exit.dwxgmac_read_mmc_reg.exit173_crit_edge
  %storemerge.i172 = phi i32 [ %conv15.i170, %if.else.i171 ], [ -1, %dwxgmac_read_mmc_reg.exit.dwxgmac_read_mmc_reg.exit173_crit_edge ]
  %21 = ptrtoint ptr %mmc_tx_framecount_gb to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %storemerge.i172, ptr %mmc_tx_framecount_gb, align 4
  %mmc_tx_broadcastframe_g = getelementptr inbounds %struct.stmmac_counters, ptr %mmc, i32 0, i32 2
  %add.ptr.i174 = getelementptr i8, ptr %mmcaddr, i32 36
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i174) #3, !srcloc !19
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !117
  %add.ptr6.i175 = getelementptr i8, ptr %mmcaddr, i32 40
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr6.i175) #3, !srcloc !19
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !118
  %24 = zext i32 %23 to i64
  %25 = zext i32 %22 to i64
  %26 = shl nuw i64 %25, 32
  %27 = or i64 %26, %24
  %28 = tail call i64 @llvm.bswap.i64(i64 %27) #3
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967295, i64 %28)
  %cmp.i176 = icmp ugt i64 %28, 4294967295
  br i1 %cmp.i176, label %dwxgmac_read_mmc_reg.exit173.dwxgmac_read_mmc_reg.exit180_crit_edge, label %if.else.i178

dwxgmac_read_mmc_reg.exit173.dwxgmac_read_mmc_reg.exit180_crit_edge: ; preds = %dwxgmac_read_mmc_reg.exit173
  call void @__sanitizer_cov_trace_pc() #5
  br label %dwxgmac_read_mmc_reg.exit180

if.else.i178:                                     ; preds = %dwxgmac_read_mmc_reg.exit173
  call void @__sanitizer_cov_trace_pc() #5
  %29 = ptrtoint ptr %mmc_tx_broadcastframe_g to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %mmc_tx_broadcastframe_g, align 4
  %31 = trunc i64 %28 to i32
  %conv15.i177 = add i32 %30, %31
  br label %dwxgmac_read_mmc_reg.exit180

dwxgmac_read_mmc_reg.exit180:                     ; preds = %if.else.i178, %dwxgmac_read_mmc_reg.exit173.dwxgmac_read_mmc_reg.exit180_crit_edge
  %storemerge.i179 = phi i32 [ %conv15.i177, %if.else.i178 ], [ -1, %dwxgmac_read_mmc_reg.exit173.dwxgmac_read_mmc_reg.exit180_crit_edge ]
  %32 = ptrtoint ptr %mmc_tx_broadcastframe_g to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %storemerge.i179, ptr %mmc_tx_broadcastframe_g, align 4
  %mmc_tx_multicastframe_g = getelementptr inbounds %struct.stmmac_counters, ptr %mmc, i32 0, i32 3
  %add.ptr.i181 = getelementptr i8, ptr %mmcaddr, i32 44
  %33 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i181) #3, !srcloc !19
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !117
  %add.ptr6.i182 = getelementptr i8, ptr %mmcaddr, i32 48
  %34 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr6.i182) #3, !srcloc !19
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !118
  %35 = zext i32 %34 to i64
  %36 = zext i32 %33 to i64
  %37 = shl nuw i64 %36, 32
  %38 = or i64 %37, %35
  %39 = tail call i64 @llvm.bswap.i64(i64 %38) #3
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967295, i64 %39)
  %cmp.i183 = icmp ugt i64 %39, 4294967295
  br i1 %cmp.i183, label %dwxgmac_read_mmc_reg.exit180.dwxgmac_read_mmc_reg.exit187_crit_edge, label %if.else.i185

dwxgmac_read_mmc_reg.exit180.dwxgmac_read_mmc_reg.exit187_crit_edge: ; preds = %dwxgmac_read_mmc_reg.exit180
  call void @__sanitizer_cov_trace_pc() #5
  br label %dwxgmac_read_mmc_reg.exit187

if.else.i185:                                     ; preds = %dwxgmac_read_mmc_reg.exit180
  call void @__sanitizer_cov_trace_pc() #5
  %40 = ptrtoint ptr %mmc_tx_multicastframe_g to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %mmc_tx_multicastframe_g, align 4
  %42 = trunc i64 %39 to i32
  %conv15.i184 = add i32 %41, %42
  br label %dwxgmac_read_mmc_reg.exit187

dwxgmac_read_mmc_reg.exit187:                     ; preds = %if.else.i185, %dwxgmac_read_mmc_reg.exit180.dwxgmac_read_mmc_reg.exit187_crit_edge
  %storemerge.i186 = phi i32 [ %conv15.i184, %if.else.i185 ], [ -1, %dwxgmac_read_mmc_reg.exit180.dwxgmac_read_mmc_reg.exit187_crit_edge ]
  %43 = ptrtoint ptr %mmc_tx_multicastframe_g to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %storemerge.i186, ptr %mmc_tx_multicastframe_g, align 4
  %mmc_tx_64_octets_gb = getelementptr inbounds %struct.stmmac_counters, ptr %mmc, i32 0, i32 4
  %add.ptr.i188 = getelementptr i8, ptr %mmcaddr, i32 52
  %44 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i188) #3, !srcloc !19
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !117
  %add.ptr6.i189 = getelementptr i8, ptr %mmcaddr, i32 56
  %45 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr6.i189) #3, !srcloc !19
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !118
  %46 = zext i32 %45 to i64
  %47 = zext i32 %44 to i64
  %48 = shl nuw i64 %47, 32
  %49 = or i64 %48, %46
  %50 = tail call i64 @llvm.bswap.i64(i64 %49) #3
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967295, i64 %50)
  %cmp.i190 = icmp ugt i64 %50, 4294967295
  br i1 %cmp.i190, label %dwxgmac_read_mmc_reg.exit187.dwxgmac_read_mmc_reg.exit194_crit_edge, label %if.else.i192

dwxgmac_read_mmc_reg.exit187.dwxgmac_read_mmc_reg.exit194_crit_edge: ; preds = %dwxgmac_read_mmc_reg.exit187
  call void @__sanitizer_cov_trace_pc() #5
  br label %dwxgmac_read_mmc_reg.exit194

if.else.i192:                                     ; preds = %dwxgmac_read_mmc_reg.exit187
  call void @__sanitizer_cov_trace_pc() #5
  %51 = ptrtoint ptr %mmc_tx_64_octets_gb to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %mmc_tx_64_octets_gb, align 4
  %53 = trunc i64 %50 to i32
  %conv15.i191 = add i32 %52, %53
  br label %dwxgmac_read_mmc_reg.exit194

dwxgmac_read_mmc_reg.exit194:                     ; preds = %if.else.i192, %dwxgmac_read_mmc_reg.exit187.dwxgmac_read_mmc_reg.exit194_crit_edge
  %storemerge.i193 = phi i32 [ %conv15.i191, %if.else.i192 ], [ -1, %dwxgmac_read_mmc_reg.exit187.dwxgmac_read_mmc_reg.exit194_crit_edge ]
  %54 = ptrtoint ptr %mmc_tx_64_octets_gb to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %storemerge.i193, ptr %mmc_tx_64_octets_gb, align 4
  %mmc_tx_65_to_127_octets_gb = getelementptr inbounds %struct.stmmac_counters, ptr %mmc, i32 0, i32 5
  %add.ptr.i195 = getelementptr i8, ptr %mmcaddr, i32 60
  %55 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i195) #3, !srcloc !19
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !117
  %add.ptr6.i196 = getelementptr i8, ptr %mmcaddr, i32 64
  %56 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr6.i196) #3, !srcloc !19
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !118
  %57 = zext i32 %56 to i64
  %58 = zext i32 %55 to i64
  %59 = shl nuw i64 %58, 32
  %60 = or i64 %59, %57
  %61 = tail call i64 @llvm.bswap.i64(i64 %60) #3
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967295, i64 %61)
  %cmp.i197 = icmp ugt i64 %61, 4294967295
  br i1 %cmp.i197, label %dwxgmac_read_mmc_reg.exit194.dwxgmac_read_mmc_reg.exit201_crit_edge, label %if.else.i199

dwxgmac_read_mmc_reg.exit194.dwxgmac_read_mmc_reg.exit201_crit_edge: ; preds = %dwxgmac_read_mmc_reg.exit194
  call void @__sanitizer_cov_trace_pc() #5
  br label %dwxgmac_read_mmc_reg.exit201

if.else.i199:                                     ; preds = %dwxgmac_read_mmc_reg.exit194
  call void @__sanitizer_cov_trace_pc() #5
  %62 = ptrtoint ptr %mmc_tx_65_to_127_octets_gb to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %mmc_tx_65_to_127_octets_gb, align 4
  %64 = trunc i64 %61 to i32
  %conv15.i198 = add i32 %63, %64
  br label %dwxgmac_read_mmc_reg.exit201

dwxgmac_read_mmc_reg.exit201:                     ; preds = %if.else.i199, %dwxgmac_read_mmc_reg.exit194.dwxgmac_read_mmc_reg.exit201_crit_edge
  %storemerge.i200 = phi i32 [ %conv15.i198, %if.else.i199 ], [ -1, %dwxgmac_read_mmc_reg.exit194.dwxgmac_read_mmc_reg.exit201_crit_edge ]
  %65 = ptrtoint ptr %mmc_tx_65_to_127_octets_gb to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %storemerge.i200, ptr %mmc_tx_65_to_127_octets_gb, align 4
  %mmc_tx_128_to_255_octets_gb = getelementptr inbounds %struct.stmmac_counters, ptr %mmc, i32 0, i32 6
  %add.ptr.i202 = getelementptr i8, ptr %mmcaddr, i32 68
  %66 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i202) #3, !srcloc !19
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !117
  %add.ptr6.i203 = getelementptr i8, ptr %mmcaddr, i32 72
  %67 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr6.i203) #3, !srcloc !19
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !118
  %68 = zext i32 %67 to i64
  %69 = zext i32 %66 to i64
  %70 = shl nuw i64 %69, 32
  %71 = or i64 %70, %68
  %72 = tail call i64 @llvm.bswap.i64(i64 %71) #3
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967295, i64 %72)
  %cmp.i204 = icmp ugt i64 %72, 4294967295
  br i1 %cmp.i204, label %dwxgmac_read_mmc_reg.exit201.dwxgmac_read_mmc_reg.exit208_crit_edge, label %if.else.i206

dwxgmac_read_mmc_reg.exit201.dwxgmac_read_mmc_reg.exit208_crit_edge: ; preds = %dwxgmac_read_mmc_reg.exit201
  call void @__sanitizer_cov_trace_pc() #5
  br label %dwxgmac_read_mmc_reg.exit208

if.else.i206:                                     ; preds = %dwxgmac_read_mmc_reg.exit201
  call void @__sanitizer_cov_trace_pc() #5
  %73 = ptrtoint ptr %mmc_tx_128_to_255_octets_gb to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %mmc_tx_128_to_255_octets_gb, align 4
  %75 = trunc i64 %72 to i32
  %conv15.i205 = add i32 %74, %75
  br label %dwxgmac_read_mmc_reg.exit208

dwxgmac_read_mmc_reg.exit208:                     ; preds = %if.else.i206, %dwxgmac_read_mmc_reg.exit201.dwxgmac_read_mmc_reg.exit208_crit_edge
  %storemerge.i207 = phi i32 [ %conv15.i205, %if.else.i206 ], [ -1, %dwxgmac_read_mmc_reg.exit201.dwxgmac_read_mmc_reg.exit208_crit_edge ]
  %76 = ptrtoint ptr %mmc_tx_128_to_255_octets_gb to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 %storemerge.i207, ptr %mmc_tx_128_to_255_octets_gb, align 4
  %mmc_tx_256_to_511_octets_gb = getelementptr inbounds %struct.stmmac_counters, ptr %mmc, i32 0, i32 7
  %add.ptr.i209 = getelementptr i8, ptr %mmcaddr, i32 76
  %77 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i209) #3, !srcloc !19
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !117
  %add.ptr6.i210 = getelementptr i8, ptr %mmcaddr, i32 80
  %78 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr6.i210) #3, !srcloc !19
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !118
  %79 = zext i32 %78 to i64
  %80 = zext i32 %77 to i64
  %81 = shl nuw i64 %80, 32
  %82 = or i64 %81, %79
  %83 = tail call i64 @llvm.bswap.i64(i64 %82) #3
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967295, i64 %83)
  %cmp.i211 = icmp ugt i64 %83, 4294967295
  br i1 %cmp.i211, label %dwxgmac_read_mmc_reg.exit208.dwxgmac_read_mmc_reg.exit215_crit_edge, label %if.else.i213

dwxgmac_read_mmc_reg.exit208.dwxgmac_read_mmc_reg.exit215_crit_edge: ; preds = %dwxgmac_read_mmc_reg.exit208
  call void @__sanitizer_cov_trace_pc() #5
  br label %dwxgmac_read_mmc_reg.exit215

if.else.i213:                                     ; preds = %dwxgmac_read_mmc_reg.exit208
  call void @__sanitizer_cov_trace_pc() #5
  %84 = ptrtoint ptr %mmc_tx_256_to_511_octets_gb to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %mmc_tx_256_to_511_octets_gb, align 4
  %86 = trunc i64 %83 to i32
  %conv15.i212 = add i32 %85, %86
  br label %dwxgmac_read_mmc_reg.exit215

dwxgmac_read_mmc_reg.exit215:                     ; preds = %if.else.i213, %dwxgmac_read_mmc_reg.exit208.dwxgmac_read_mmc_reg.exit215_crit_edge
  %storemerge.i214 = phi i32 [ %conv15.i212, %if.else.i213 ], [ -1, %dwxgmac_read_mmc_reg.exit208.dwxgmac_read_mmc_reg.exit215_crit_edge ]
  %87 = ptrtoint ptr %mmc_tx_256_to_511_octets_gb to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 %storemerge.i214, ptr %mmc_tx_256_to_511_octets_gb, align 4
  %mmc_tx_512_to_1023_octets_gb = getelementptr inbounds %struct.stmmac_counters, ptr %mmc, i32 0, i32 8
  %add.ptr.i216 = getelementptr i8, ptr %mmcaddr, i32 84
  %88 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i216) #3, !srcloc !19
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !117
  %add.ptr6.i217 = getelementptr i8, ptr %mmcaddr, i32 88
  %89 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr6.i217) #3, !srcloc !19
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !118
  %90 = zext i32 %89 to i64
  %91 = zext i32 %88 to i64
  %92 = shl nuw i64 %91, 32
  %93 = or i64 %92, %90
  %94 = tail call i64 @llvm.bswap.i64(i64 %93) #3
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967295, i64 %94)
  %cmp.i218 = icmp ugt i64 %94, 4294967295
  br i1 %cmp.i218, label %dwxgmac_read_mmc_reg.exit215.dwxgmac_read_mmc_reg.exit222_crit_edge, label %if.else.i220

dwxgmac_read_mmc_reg.exit215.dwxgmac_read_mmc_reg.exit222_crit_edge: ; preds = %dwxgmac_read_mmc_reg.exit215
  call void @__sanitizer_cov_trace_pc() #5
  br label %dwxgmac_read_mmc_reg.exit222

if.else.i220:                                     ; preds = %dwxgmac_read_mmc_reg.exit215
  call void @__sanitizer_cov_trace_pc() #5
  %95 = ptrtoint ptr %mmc_tx_512_to_1023_octets_gb to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %mmc_tx_512_to_1023_octets_gb, align 4
  %97 = trunc i64 %94 to i32
  %conv15.i219 = add i32 %96, %97
  br label %dwxgmac_read_mmc_reg.exit222

dwxgmac_read_mmc_reg.exit222:                     ; preds = %if.else.i220, %dwxgmac_read_mmc_reg.exit215.dwxgmac_read_mmc_reg.exit222_crit_edge
  %storemerge.i221 = phi i32 [ %conv15.i219, %if.else.i220 ], [ -1, %dwxgmac_read_mmc_reg.exit215.dwxgmac_read_mmc_reg.exit222_crit_edge ]
  %98 = ptrtoint ptr %mmc_tx_512_to_1023_octets_gb to i32
  call void @__asan_store4_noabort(i32 %98)
  store i32 %storemerge.i221, ptr %mmc_tx_512_to_1023_octets_gb, align 4
  %mmc_tx_1024_to_max_octets_gb = getelementptr inbounds %struct.stmmac_counters, ptr %mmc, i32 0, i32 9
  %add.ptr.i223 = getelementptr i8, ptr %mmcaddr, i32 92
  %99 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i223) #3, !srcloc !19
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !117
  %add.ptr6.i224 = getelementptr i8, ptr %mmcaddr, i32 96
  %100 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr6.i224) #3, !srcloc !19
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !118
  %101 = zext i32 %100 to i64
  %102 = zext i32 %99 to i64
  %103 = shl nuw i64 %102, 32
  %104 = or i64 %103, %101
  %105 = tail call i64 @llvm.bswap.i64(i64 %104) #3
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967295, i64 %105)
  %cmp.i225 = icmp ugt i64 %105, 4294967295
  br i1 %cmp.i225, label %dwxgmac_read_mmc_reg.exit222.dwxgmac_read_mmc_reg.exit229_crit_edge, label %if.else.i227

dwxgmac_read_mmc_reg.exit222.dwxgmac_read_mmc_reg.exit229_crit_edge: ; preds = %dwxgmac_read_mmc_reg.exit222
  call void @__sanitizer_cov_trace_pc() #5
  br label %dwxgmac_read_mmc_reg.exit229

if.else.i227:                                     ; preds = %dwxgmac_read_mmc_reg.exit222
  call void @__sanitizer_cov_trace_pc() #5
  %106 = ptrtoint ptr %mmc_tx_1024_to_max_octets_gb to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %mmc_tx_1024_to_max_octets_gb, align 4
  %108 = trunc i64 %105 to i32
  %conv15.i226 = add i32 %107, %108
  br label %dwxgmac_read_mmc_reg.exit229

dwxgmac_read_mmc_reg.exit229:                     ; preds = %if.else.i227, %dwxgmac_read_mmc_reg.exit222.dwxgmac_read_mmc_reg.exit229_crit_edge
  %storemerge.i228 = phi i32 [ %conv15.i226, %if.else.i227 ], [ -1, %dwxgmac_read_mmc_reg.exit222.dwxgmac_read_mmc_reg.exit229_crit_edge ]
  %109 = ptrtoint ptr %mmc_tx_1024_to_max_octets_gb to i32
  call void @__asan_store4_noabort(i32 %109)
  store i32 %storemerge.i228, ptr %mmc_tx_1024_to_max_octets_gb, align 4
  %mmc_tx_unicast_gb = getelementptr inbounds %struct.stmmac_counters, ptr %mmc, i32 0, i32 10
  %add.ptr.i230 = getelementptr i8, ptr %mmcaddr, i32 100
  %110 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i230) #3, !srcloc !19
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !117
  %add.ptr6.i231 = getelementptr i8, ptr %mmcaddr, i32 104
  %111 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr6.i231) #3, !srcloc !19
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !118
  %112 = zext i32 %111 to i64
  %113 = zext i32 %110 to i64
  %114 = shl nuw i64 %113, 32
  %115 = or i64 %114, %112
  %116 = tail call i64 @llvm.bswap.i64(i64 %115) #3
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967295, i64 %116)
  %cmp.i232 = icmp ugt i64 %116, 4294967295
  br i1 %cmp.i232, label %dwxgmac_read_mmc_reg.exit229.dwxgmac_read_mmc_reg.exit236_crit_edge, label %if.else.i234

dwxgmac_read_mmc_reg.exit229.dwxgmac_read_mmc_reg.exit236_crit_edge: ; preds = %dwxgmac_read_mmc_reg.exit229
  call void @__sanitizer_cov_trace_pc() #5
  br label %dwxgmac_read_mmc_reg.exit236

if.else.i234:                                     ; preds = %dwxgmac_read_mmc_reg.exit229
  call void @__sanitizer_cov_trace_pc() #5
  %117 = ptrtoint ptr %mmc_tx_unicast_gb to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %mmc_tx_unicast_gb, align 4
  %119 = trunc i64 %116 to i32
  %conv15.i233 = add i32 %118, %119
  br label %dwxgmac_read_mmc_reg.exit236

dwxgmac_read_mmc_reg.exit236:                     ; preds = %if.else.i234, %dwxgmac_read_mmc_reg.exit229.dwxgmac_read_mmc_reg.exit236_crit_edge
  %storemerge.i235 = phi i32 [ %conv15.i233, %if.else.i234 ], [ -1, %dwxgmac_read_mmc_reg.exit229.dwxgmac_read_mmc_reg.exit236_crit_edge ]
  %120 = ptrtoint ptr %mmc_tx_unicast_gb to i32
  call void @__asan_store4_noabort(i32 %120)
  store i32 %storemerge.i235, ptr %mmc_tx_unicast_gb, align 4
  %mmc_tx_multicast_gb = getelementptr inbounds %struct.stmmac_counters, ptr %mmc, i32 0, i32 11
  %add.ptr.i237 = getelementptr i8, ptr %mmcaddr, i32 108
  %121 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i237) #3, !srcloc !19
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !117
  %add.ptr6.i238 = getelementptr i8, ptr %mmcaddr, i32 112
  %122 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr6.i238) #3, !srcloc !19
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !118
  %123 = zext i32 %122 to i64
  %124 = zext i32 %121 to i64
  %125 = shl nuw i64 %124, 32
  %126 = or i64 %125, %123
  %127 = tail call i64 @llvm.bswap.i64(i64 %126) #3
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967295, i64 %127)
  %cmp.i239 = icmp ugt i64 %127, 4294967295
  br i1 %cmp.i239, label %dwxgmac_read_mmc_reg.exit236.dwxgmac_read_mmc_reg.exit243_crit_edge, label %if.else.i241

dwxgmac_read_mmc_reg.exit236.dwxgmac_read_mmc_reg.exit243_crit_edge: ; preds = %dwxgmac_read_mmc_reg.exit236
  call void @__sanitizer_cov_trace_pc() #5
  br label %dwxgmac_read_mmc_reg.exit243

if.else.i241:                                     ; preds = %dwxgmac_read_mmc_reg.exit236
  call void @__sanitizer_cov_trace_pc() #5
  %128 = ptrtoint ptr %mmc_tx_multicast_gb to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %mmc_tx_multicast_gb, align 4
  %130 = trunc i64 %127 to i32
  %conv15.i240 = add i32 %129, %130
  br label %dwxgmac_read_mmc_reg.exit243

dwxgmac_read_mmc_reg.exit243:                     ; preds = %if.else.i241, %dwxgmac_read_mmc_reg.exit236.dwxgmac_read_mmc_reg.exit243_crit_edge
  %storemerge.i242 = phi i32 [ %conv15.i240, %if.else.i241 ], [ -1, %dwxgmac_read_mmc_reg.exit236.dwxgmac_read_mmc_reg.exit243_crit_edge ]
  %131 = ptrtoint ptr %mmc_tx_multicast_gb to i32
  call void @__asan_store4_noabort(i32 %131)
  store i32 %storemerge.i242, ptr %mmc_tx_multicast_gb, align 4
  %mmc_tx_broadcast_gb = getelementptr inbounds %struct.stmmac_counters, ptr %mmc, i32 0, i32 12
  %add.ptr.i244 = getelementptr i8, ptr %mmcaddr, i32 116
  %132 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i244) #3, !srcloc !19
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !117
  %add.ptr6.i245 = getelementptr i8, ptr %mmcaddr, i32 120
  %133 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr6.i245) #3, !srcloc !19
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !118
  %134 = zext i32 %133 to i64
  %135 = zext i32 %132 to i64
  %136 = shl nuw i64 %135, 32
  %137 = or i64 %136, %134
  %138 = tail call i64 @llvm.bswap.i64(i64 %137) #3
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967295, i64 %138)
  %cmp.i246 = icmp ugt i64 %138, 4294967295
  br i1 %cmp.i246, label %dwxgmac_read_mmc_reg.exit243.dwxgmac_read_mmc_reg.exit250_crit_edge, label %if.else.i248

dwxgmac_read_mmc_reg.exit243.dwxgmac_read_mmc_reg.exit250_crit_edge: ; preds = %dwxgmac_read_mmc_reg.exit243
  call void @__sanitizer_cov_trace_pc() #5
  br label %dwxgmac_read_mmc_reg.exit250

if.else.i248:                                     ; preds = %dwxgmac_read_mmc_reg.exit243
  call void @__sanitizer_cov_trace_pc() #5
  %139 = ptrtoint ptr %mmc_tx_broadcast_gb to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load i32, ptr %mmc_tx_broadcast_gb, align 4
  %141 = trunc i64 %138 to i32
  %conv15.i247 = add i32 %140, %141
  br label %dwxgmac_read_mmc_reg.exit250

dwxgmac_read_mmc_reg.exit250:                     ; preds = %if.else.i248, %dwxgmac_read_mmc_reg.exit243.dwxgmac_read_mmc_reg.exit250_crit_edge
  %storemerge.i249 = phi i32 [ %conv15.i247, %if.else.i248 ], [ -1, %dwxgmac_read_mmc_reg.exit243.dwxgmac_read_mmc_reg.exit250_crit_edge ]
  %142 = ptrtoint ptr %mmc_tx_broadcast_gb to i32
  call void @__asan_store4_noabort(i32 %142)
  store i32 %storemerge.i249, ptr %mmc_tx_broadcast_gb, align 4
  %mmc_tx_underflow_error = getelementptr inbounds %struct.stmmac_counters, ptr %mmc, i32 0, i32 13
  %add.ptr.i251 = getelementptr i8, ptr %mmcaddr, i32 124
  %143 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i251) #3, !srcloc !19
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !117
  %add.ptr6.i252 = getelementptr i8, ptr %mmcaddr, i32 128
  %144 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr6.i252) #3, !srcloc !19
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !118
  %145 = zext i32 %144 to i64
  %146 = zext i32 %143 to i64
  %147 = shl nuw i64 %146, 32
  %148 = or i64 %147, %145
  %149 = tail call i64 @llvm.bswap.i64(i64 %148) #3
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967295, i64 %149)
  %cmp.i253 = icmp ugt i64 %149, 4294967295
  br i1 %cmp.i253, label %dwxgmac_read_mmc_reg.exit250.dwxgmac_read_mmc_reg.exit257_crit_edge, label %if.else.i255

dwxgmac_read_mmc_reg.exit250.dwxgmac_read_mmc_reg.exit257_crit_edge: ; preds = %dwxgmac_read_mmc_reg.exit250
  call void @__sanitizer_cov_trace_pc() #5
  br label %dwxgmac_read_mmc_reg.exit257

if.else.i255:                                     ; preds = %dwxgmac_read_mmc_reg.exit250
  call void @__sanitizer_cov_trace_pc() #5
  %150 = ptrtoint ptr %mmc_tx_underflow_error to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load i32, ptr %mmc_tx_underflow_error, align 4
  %152 = trunc i64 %149 to i32
  %conv15.i254 = add i32 %151, %152
  br label %dwxgmac_read_mmc_reg.exit257

dwxgmac_read_mmc_reg.exit257:                     ; preds = %if.else.i255, %dwxgmac_read_mmc_reg.exit250.dwxgmac_read_mmc_reg.exit257_crit_edge
  %storemerge.i256 = phi i32 [ %conv15.i254, %if.else.i255 ], [ -1, %dwxgmac_read_mmc_reg.exit250.dwxgmac_read_mmc_reg.exit257_crit_edge ]
  %153 = ptrtoint ptr %mmc_tx_underflow_error to i32
  call void @__asan_store4_noabort(i32 %153)
  store i32 %storemerge.i256, ptr %mmc_tx_underflow_error, align 4
  %mmc_tx_octetcount_g = getelementptr inbounds %struct.stmmac_counters, ptr %mmc, i32 0, i32 20
  %add.ptr.i258 = getelementptr i8, ptr %mmcaddr, i32 132
  %154 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i258) #3, !srcloc !19
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !117
  %add.ptr6.i259 = getelementptr i8, ptr %mmcaddr, i32 136
  %155 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr6.i259) #3, !srcloc !19
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !118
  %156 = zext i32 %155 to i64
  %157 = zext i32 %154 to i64
  %158 = shl nuw i64 %157, 32
  %159 = or i64 %158, %156
  %160 = tail call i64 @llvm.bswap.i64(i64 %159) #3
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967295, i64 %160)
  %cmp.i260 = icmp ugt i64 %160, 4294967295
  br i1 %cmp.i260, label %dwxgmac_read_mmc_reg.exit257.dwxgmac_read_mmc_reg.exit264_crit_edge, label %if.else.i262

dwxgmac_read_mmc_reg.exit257.dwxgmac_read_mmc_reg.exit264_crit_edge: ; preds = %dwxgmac_read_mmc_reg.exit257
  call void @__sanitizer_cov_trace_pc() #5
  br label %dwxgmac_read_mmc_reg.exit264

if.else.i262:                                     ; preds = %dwxgmac_read_mmc_reg.exit257
  call void @__sanitizer_cov_trace_pc() #5
  %161 = ptrtoint ptr %mmc_tx_octetcount_g to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load i32, ptr %mmc_tx_octetcount_g, align 4
  %163 = trunc i64 %160 to i32
  %conv15.i261 = add i32 %162, %163
  br label %dwxgmac_read_mmc_reg.exit264

dwxgmac_read_mmc_reg.exit264:                     ; preds = %if.else.i262, %dwxgmac_read_mmc_reg.exit257.dwxgmac_read_mmc_reg.exit264_crit_edge
  %storemerge.i263 = phi i32 [ %conv15.i261, %if.else.i262 ], [ -1, %dwxgmac_read_mmc_reg.exit257.dwxgmac_read_mmc_reg.exit264_crit_edge ]
  %164 = ptrtoint ptr %mmc_tx_octetcount_g to i32
  call void @__asan_store4_noabort(i32 %164)
  store i32 %storemerge.i263, ptr %mmc_tx_octetcount_g, align 4
  %mmc_tx_framecount_g = getelementptr inbounds %struct.stmmac_counters, ptr %mmc, i32 0, i32 21
  %add.ptr.i265 = getelementptr i8, ptr %mmcaddr, i32 140
  %165 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i265) #3, !srcloc !19
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !117
  %add.ptr6.i266 = getelementptr i8, ptr %mmcaddr, i32 144
  %166 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr6.i266) #3, !srcloc !19
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !118
  %167 = zext i32 %166 to i64
  %168 = zext i32 %165 to i64
  %169 = shl nuw i64 %168, 32
  %170 = or i64 %169, %167
  %171 = tail call i64 @llvm.bswap.i64(i64 %170) #3
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967295, i64 %171)
  %cmp.i267 = icmp ugt i64 %171, 4294967295
  br i1 %cmp.i267, label %dwxgmac_read_mmc_reg.exit264.dwxgmac_read_mmc_reg.exit271_crit_edge, label %if.else.i269

dwxgmac_read_mmc_reg.exit264.dwxgmac_read_mmc_reg.exit271_crit_edge: ; preds = %dwxgmac_read_mmc_reg.exit264
  call void @__sanitizer_cov_trace_pc() #5
  br label %dwxgmac_read_mmc_reg.exit271

if.else.i269:                                     ; preds = %dwxgmac_read_mmc_reg.exit264
  call void @__sanitizer_cov_trace_pc() #5
  %172 = ptrtoint ptr %mmc_tx_framecount_g to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load i32, ptr %mmc_tx_framecount_g, align 4
  %174 = trunc i64 %171 to i32
  %conv15.i268 = add i32 %173, %174
  br label %dwxgmac_read_mmc_reg.exit271

dwxgmac_read_mmc_reg.exit271:                     ; preds = %if.else.i269, %dwxgmac_read_mmc_reg.exit264.dwxgmac_read_mmc_reg.exit271_crit_edge
  %storemerge.i270 = phi i32 [ %conv15.i268, %if.else.i269 ], [ -1, %dwxgmac_read_mmc_reg.exit264.dwxgmac_read_mmc_reg.exit271_crit_edge ]
  %175 = ptrtoint ptr %mmc_tx_framecount_g to i32
  call void @__asan_store4_noabort(i32 %175)
  store i32 %storemerge.i270, ptr %mmc_tx_framecount_g, align 4
  %mmc_tx_pause_frame = getelementptr inbounds %struct.stmmac_counters, ptr %mmc, i32 0, i32 23
  %add.ptr.i272 = getelementptr i8, ptr %mmcaddr, i32 148
  %176 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i272) #3, !srcloc !19
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !117
  %add.ptr6.i273 = getelementptr i8, ptr %mmcaddr, i32 152
  %177 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr6.i273) #3, !srcloc !19
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !118
  %178 = zext i32 %177 to i64
  %179 = zext i32 %176 to i64
  %180 = shl nuw i64 %179, 32
  %181 = or i64 %180, %178
  %182 = tail call i64 @llvm.bswap.i64(i64 %181) #3
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967295, i64 %182)
  %cmp.i274 = icmp ugt i64 %182, 4294967295
  br i1 %cmp.i274, label %dwxgmac_read_mmc_reg.exit271.dwxgmac_read_mmc_reg.exit278_crit_edge, label %if.else.i276

dwxgmac_read_mmc_reg.exit271.dwxgmac_read_mmc_reg.exit278_crit_edge: ; preds = %dwxgmac_read_mmc_reg.exit271
  call void @__sanitizer_cov_trace_pc() #5
  br label %dwxgmac_read_mmc_reg.exit278

if.else.i276:                                     ; preds = %dwxgmac_read_mmc_reg.exit271
  call void @__sanitizer_cov_trace_pc() #5
  %183 = ptrtoint ptr %mmc_tx_pause_frame to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load i32, ptr %mmc_tx_pause_frame, align 4
  %185 = trunc i64 %182 to i32
  %conv15.i275 = add i32 %184, %185
  br label %dwxgmac_read_mmc_reg.exit278

dwxgmac_read_mmc_reg.exit278:                     ; preds = %if.else.i276, %dwxgmac_read_mmc_reg.exit271.dwxgmac_read_mmc_reg.exit278_crit_edge
  %storemerge.i277 = phi i32 [ %conv15.i275, %if.else.i276 ], [ -1, %dwxgmac_read_mmc_reg.exit271.dwxgmac_read_mmc_reg.exit278_crit_edge ]
  %186 = ptrtoint ptr %mmc_tx_pause_frame to i32
  call void @__asan_store4_noabort(i32 %186)
  store i32 %storemerge.i277, ptr %mmc_tx_pause_frame, align 4
  %mmc_tx_vlan_frame_g = getelementptr inbounds %struct.stmmac_counters, ptr %mmc, i32 0, i32 24
  %add.ptr.i279 = getelementptr i8, ptr %mmcaddr, i32 156
  %187 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i279) #3, !srcloc !19
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !117
  %add.ptr6.i280 = getelementptr i8, ptr %mmcaddr, i32 160
  %188 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr6.i280) #3, !srcloc !19
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !118
  %189 = zext i32 %188 to i64
  %190 = zext i32 %187 to i64
  %191 = shl nuw i64 %190, 32
  %192 = or i64 %191, %189
  %193 = tail call i64 @llvm.bswap.i64(i64 %192) #3
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967295, i64 %193)
  %cmp.i281 = icmp ugt i64 %193, 4294967295
  br i1 %cmp.i281, label %dwxgmac_read_mmc_reg.exit278.dwxgmac_read_mmc_reg.exit285_crit_edge, label %if.else.i283

dwxgmac_read_mmc_reg.exit278.dwxgmac_read_mmc_reg.exit285_crit_edge: ; preds = %dwxgmac_read_mmc_reg.exit278
  call void @__sanitizer_cov_trace_pc() #5
  br label %dwxgmac_read_mmc_reg.exit285

if.else.i283:                                     ; preds = %dwxgmac_read_mmc_reg.exit278
  call void @__sanitizer_cov_trace_pc() #5
  %194 = ptrtoint ptr %mmc_tx_vlan_frame_g to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load i32, ptr %mmc_tx_vlan_frame_g, align 4
  %196 = trunc i64 %193 to i32
  %conv15.i282 = add i32 %195, %196
  br label %dwxgmac_read_mmc_reg.exit285

dwxgmac_read_mmc_reg.exit285:                     ; preds = %if.else.i283, %dwxgmac_read_mmc_reg.exit278.dwxgmac_read_mmc_reg.exit285_crit_edge
  %storemerge.i284 = phi i32 [ %conv15.i282, %if.else.i283 ], [ -1, %dwxgmac_read_mmc_reg.exit278.dwxgmac_read_mmc_reg.exit285_crit_edge ]
  %197 = ptrtoint ptr %mmc_tx_vlan_frame_g to i32
  call void @__asan_store4_noabort(i32 %197)
  store i32 %storemerge.i284, ptr %mmc_tx_vlan_frame_g, align 4
  %mmc_rx_framecount_gb = getelementptr inbounds %struct.stmmac_counters, ptr %mmc, i32 0, i32 25
  %add.ptr.i286 = getelementptr i8, ptr %mmcaddr, i32 256
  %198 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i286) #3, !srcloc !19
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !117
  %add.ptr6.i287 = getelementptr i8, ptr %mmcaddr, i32 260
  %199 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr6.i287) #3, !srcloc !19
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !118
  %200 = zext i32 %199 to i64
  %201 = zext i32 %198 to i64
  %202 = shl nuw i64 %201, 32
  %203 = or i64 %202, %200
  %204 = tail call i64 @llvm.bswap.i64(i64 %203) #3
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967295, i64 %204)
  %cmp.i288 = icmp ugt i64 %204, 4294967295
  br i1 %cmp.i288, label %dwxgmac_read_mmc_reg.exit285.dwxgmac_read_mmc_reg.exit292_crit_edge, label %if.else.i290

dwxgmac_read_mmc_reg.exit285.dwxgmac_read_mmc_reg.exit292_crit_edge: ; preds = %dwxgmac_read_mmc_reg.exit285
  call void @__sanitizer_cov_trace_pc() #5
  br label %dwxgmac_read_mmc_reg.exit292

if.else.i290:                                     ; preds = %dwxgmac_read_mmc_reg.exit285
  call void @__sanitizer_cov_trace_pc() #5
  %205 = ptrtoint ptr %mmc_rx_framecount_gb to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load i32, ptr %mmc_rx_framecount_gb, align 4
  %207 = trunc i64 %204 to i32
  %conv15.i289 = add i32 %206, %207
  br label %dwxgmac_read_mmc_reg.exit292

dwxgmac_read_mmc_reg.exit292:                     ; preds = %if.else.i290, %dwxgmac_read_mmc_reg.exit285.dwxgmac_read_mmc_reg.exit292_crit_edge
  %storemerge.i291 = phi i32 [ %conv15.i289, %if.else.i290 ], [ -1, %dwxgmac_read_mmc_reg.exit285.dwxgmac_read_mmc_reg.exit292_crit_edge ]
  %208 = ptrtoint ptr %mmc_rx_framecount_gb to i32
  call void @__asan_store4_noabort(i32 %208)
  store i32 %storemerge.i291, ptr %mmc_rx_framecount_gb, align 4
  %mmc_rx_octetcount_gb = getelementptr inbounds %struct.stmmac_counters, ptr %mmc, i32 0, i32 26
  %add.ptr.i293 = getelementptr i8, ptr %mmcaddr, i32 264
  %209 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i293) #3, !srcloc !19
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !117
  %add.ptr6.i294 = getelementptr i8, ptr %mmcaddr, i32 268
  %210 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr6.i294) #3, !srcloc !19
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !118
  %211 = zext i32 %210 to i64
  %212 = zext i32 %209 to i64
  %213 = shl nuw i64 %212, 32
  %214 = or i64 %213, %211
  %215 = tail call i64 @llvm.bswap.i64(i64 %214) #3
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967295, i64 %215)
  %cmp.i295 = icmp ugt i64 %215, 4294967295
  br i1 %cmp.i295, label %dwxgmac_read_mmc_reg.exit292.dwxgmac_read_mmc_reg.exit299_crit_edge, label %if.else.i297

dwxgmac_read_mmc_reg.exit292.dwxgmac_read_mmc_reg.exit299_crit_edge: ; preds = %dwxgmac_read_mmc_reg.exit292
  call void @__sanitizer_cov_trace_pc() #5
  br label %dwxgmac_read_mmc_reg.exit299

if.else.i297:                                     ; preds = %dwxgmac_read_mmc_reg.exit292
  call void @__sanitizer_cov_trace_pc() #5
  %216 = ptrtoint ptr %mmc_rx_octetcount_gb to i32
  call void @__asan_load4_noabort(i32 %216)
  %217 = load i32, ptr %mmc_rx_octetcount_gb, align 4
  %218 = trunc i64 %215 to i32
  %conv15.i296 = add i32 %217, %218
  br label %dwxgmac_read_mmc_reg.exit299

dwxgmac_read_mmc_reg.exit299:                     ; preds = %if.else.i297, %dwxgmac_read_mmc_reg.exit292.dwxgmac_read_mmc_reg.exit299_crit_edge
  %storemerge.i298 = phi i32 [ %conv15.i296, %if.else.i297 ], [ -1, %dwxgmac_read_mmc_reg.exit292.dwxgmac_read_mmc_reg.exit299_crit_edge ]
  %219 = ptrtoint ptr %mmc_rx_octetcount_gb to i32
  call void @__asan_store4_noabort(i32 %219)
  store i32 %storemerge.i298, ptr %mmc_rx_octetcount_gb, align 4
  %mmc_rx_octetcount_g = getelementptr inbounds %struct.stmmac_counters, ptr %mmc, i32 0, i32 27
  %add.ptr.i300 = getelementptr i8, ptr %mmcaddr, i32 272
  %220 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i300) #3, !srcloc !19
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !117
  %add.ptr6.i301 = getelementptr i8, ptr %mmcaddr, i32 276
  %221 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr6.i301) #3, !srcloc !19
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !118
  %222 = zext i32 %221 to i64
  %223 = zext i32 %220 to i64
  %224 = shl nuw i64 %223, 32
  %225 = or i64 %224, %222
  %226 = tail call i64 @llvm.bswap.i64(i64 %225) #3
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967295, i64 %226)
  %cmp.i302 = icmp ugt i64 %226, 4294967295
  br i1 %cmp.i302, label %dwxgmac_read_mmc_reg.exit299.dwxgmac_read_mmc_reg.exit306_crit_edge, label %if.else.i304

dwxgmac_read_mmc_reg.exit299.dwxgmac_read_mmc_reg.exit306_crit_edge: ; preds = %dwxgmac_read_mmc_reg.exit299
  call void @__sanitizer_cov_trace_pc() #5
  br label %dwxgmac_read_mmc_reg.exit306

if.else.i304:                                     ; preds = %dwxgmac_read_mmc_reg.exit299
  call void @__sanitizer_cov_trace_pc() #5
  %227 = ptrtoint ptr %mmc_rx_octetcount_g to i32
  call void @__asan_load4_noabort(i32 %227)
  %228 = load i32, ptr %mmc_rx_octetcount_g, align 4
  %229 = trunc i64 %226 to i32
  %conv15.i303 = add i32 %228, %229
  br label %dwxgmac_read_mmc_reg.exit306

dwxgmac_read_mmc_reg.exit306:                     ; preds = %if.else.i304, %dwxgmac_read_mmc_reg.exit299.dwxgmac_read_mmc_reg.exit306_crit_edge
  %storemerge.i305 = phi i32 [ %conv15.i303, %if.else.i304 ], [ -1, %dwxgmac_read_mmc_reg.exit299.dwxgmac_read_mmc_reg.exit306_crit_edge ]
  %230 = ptrtoint ptr %mmc_rx_octetcount_g to i32
  call void @__asan_store4_noabort(i32 %230)
  store i32 %storemerge.i305, ptr %mmc_rx_octetcount_g, align 4
  %mmc_rx_broadcastframe_g = getelementptr inbounds %struct.stmmac_counters, ptr %mmc, i32 0, i32 28
  %add.ptr.i307 = getelementptr i8, ptr %mmcaddr, i32 280
  %231 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i307) #3, !srcloc !19
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !117
  %add.ptr6.i308 = getelementptr i8, ptr %mmcaddr, i32 284
  %232 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr6.i308) #3, !srcloc !19
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !118
  %233 = zext i32 %232 to i64
  %234 = zext i32 %231 to i64
  %235 = shl nuw i64 %234, 32
  %236 = or i64 %235, %233
  %237 = tail call i64 @llvm.bswap.i64(i64 %236) #3
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967295, i64 %237)
  %cmp.i309 = icmp ugt i64 %237, 4294967295
  br i1 %cmp.i309, label %dwxgmac_read_mmc_reg.exit306.dwxgmac_read_mmc_reg.exit313_crit_edge, label %if.else.i311

dwxgmac_read_mmc_reg.exit306.dwxgmac_read_mmc_reg.exit313_crit_edge: ; preds = %dwxgmac_read_mmc_reg.exit306
  call void @__sanitizer_cov_trace_pc() #5
  br label %dwxgmac_read_mmc_reg.exit313

if.else.i311:                                     ; preds = %dwxgmac_read_mmc_reg.exit306
  call void @__sanitizer_cov_trace_pc() #5
  %238 = ptrtoint ptr %mmc_rx_broadcastframe_g to i32
  call void @__asan_load4_noabort(i32 %238)
  %239 = load i32, ptr %mmc_rx_broadcastframe_g, align 4
  %240 = trunc i64 %237 to i32
  %conv15.i310 = add i32 %239, %240
  br label %dwxgmac_read_mmc_reg.exit313

dwxgmac_read_mmc_reg.exit313:                     ; preds = %if.else.i311, %dwxgmac_read_mmc_reg.exit306.dwxgmac_read_mmc_reg.exit313_crit_edge
  %storemerge.i312 = phi i32 [ %conv15.i310, %if.else.i311 ], [ -1, %dwxgmac_read_mmc_reg.exit306.dwxgmac_read_mmc_reg.exit313_crit_edge ]
  %241 = ptrtoint ptr %mmc_rx_broadcastframe_g to i32
  call void @__asan_store4_noabort(i32 %241)
  store i32 %storemerge.i312, ptr %mmc_rx_broadcastframe_g, align 4
  %mmc_rx_multicastframe_g = getelementptr inbounds %struct.stmmac_counters, ptr %mmc, i32 0, i32 29
  %add.ptr.i314 = getelementptr i8, ptr %mmcaddr, i32 288
  %242 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i314) #3, !srcloc !19
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !117
  %add.ptr6.i315 = getelementptr i8, ptr %mmcaddr, i32 292
  %243 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr6.i315) #3, !srcloc !19
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !118
  %244 = zext i32 %243 to i64
  %245 = zext i32 %242 to i64
  %246 = shl nuw i64 %245, 32
  %247 = or i64 %246, %244
  %248 = tail call i64 @llvm.bswap.i64(i64 %247) #3
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967295, i64 %248)
  %cmp.i316 = icmp ugt i64 %248, 4294967295
  br i1 %cmp.i316, label %dwxgmac_read_mmc_reg.exit313.dwxgmac_read_mmc_reg.exit320_crit_edge, label %if.else.i318

dwxgmac_read_mmc_reg.exit313.dwxgmac_read_mmc_reg.exit320_crit_edge: ; preds = %dwxgmac_read_mmc_reg.exit313
  call void @__sanitizer_cov_trace_pc() #5
  br label %dwxgmac_read_mmc_reg.exit320

if.else.i318:                                     ; preds = %dwxgmac_read_mmc_reg.exit313
  call void @__sanitizer_cov_trace_pc() #5
  %249 = ptrtoint ptr %mmc_rx_multicastframe_g to i32
  call void @__asan_load4_noabort(i32 %249)
  %250 = load i32, ptr %mmc_rx_multicastframe_g, align 4
  %251 = trunc i64 %248 to i32
  %conv15.i317 = add i32 %250, %251
  br label %dwxgmac_read_mmc_reg.exit320

dwxgmac_read_mmc_reg.exit320:                     ; preds = %if.else.i318, %dwxgmac_read_mmc_reg.exit313.dwxgmac_read_mmc_reg.exit320_crit_edge
  %storemerge.i319 = phi i32 [ %conv15.i317, %if.else.i318 ], [ -1, %dwxgmac_read_mmc_reg.exit313.dwxgmac_read_mmc_reg.exit320_crit_edge ]
  %252 = ptrtoint ptr %mmc_rx_multicastframe_g to i32
  call void @__asan_store4_noabort(i32 %252)
  store i32 %storemerge.i319, ptr %mmc_rx_multicastframe_g, align 4
  %mmc_rx_crc_error = getelementptr inbounds %struct.stmmac_counters, ptr %mmc, i32 0, i32 30
  %add.ptr.i321 = getelementptr i8, ptr %mmcaddr, i32 296
  %253 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i321) #3, !srcloc !19
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !117
  %add.ptr6.i322 = getelementptr i8, ptr %mmcaddr, i32 300
  %254 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr6.i322) #3, !srcloc !19
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !118
  %255 = zext i32 %254 to i64
  %256 = zext i32 %253 to i64
  %257 = shl nuw i64 %256, 32
  %258 = or i64 %257, %255
  %259 = tail call i64 @llvm.bswap.i64(i64 %258) #3
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967295, i64 %259)
  %cmp.i323 = icmp ugt i64 %259, 4294967295
  br i1 %cmp.i323, label %dwxgmac_read_mmc_reg.exit320.dwxgmac_read_mmc_reg.exit327_crit_edge, label %if.else.i325

dwxgmac_read_mmc_reg.exit320.dwxgmac_read_mmc_reg.exit327_crit_edge: ; preds = %dwxgmac_read_mmc_reg.exit320
  call void @__sanitizer_cov_trace_pc() #5
  br label %dwxgmac_read_mmc_reg.exit327

if.else.i325:                                     ; preds = %dwxgmac_read_mmc_reg.exit320
  call void @__sanitizer_cov_trace_pc() #5
  %260 = ptrtoint ptr %mmc_rx_crc_error to i32
  call void @__asan_load4_noabort(i32 %260)
  %261 = load i32, ptr %mmc_rx_crc_error, align 4
  %262 = trunc i64 %259 to i32
  %conv15.i324 = add i32 %261, %262
  br label %dwxgmac_read_mmc_reg.exit327

dwxgmac_read_mmc_reg.exit327:                     ; preds = %if.else.i325, %dwxgmac_read_mmc_reg.exit320.dwxgmac_read_mmc_reg.exit327_crit_edge
  %storemerge.i326 = phi i32 [ %conv15.i324, %if.else.i325 ], [ -1, %dwxgmac_read_mmc_reg.exit320.dwxgmac_read_mmc_reg.exit327_crit_edge ]
  %263 = ptrtoint ptr %mmc_rx_crc_error to i32
  call void @__asan_store4_noabort(i32 %263)
  store i32 %storemerge.i326, ptr %mmc_rx_crc_error, align 4
  %264 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i321) #3, !srcloc !19
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !117
  %265 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr6.i322) #3, !srcloc !19
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !118
  %266 = zext i32 %265 to i64
  %267 = zext i32 %264 to i64
  %268 = shl nuw i64 %267, 32
  %269 = or i64 %268, %266
  %270 = tail call i64 @llvm.bswap.i64(i64 %269) #3
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967295, i64 %270)
  %cmp.i330 = icmp ugt i64 %270, 4294967295
  br i1 %cmp.i330, label %dwxgmac_read_mmc_reg.exit327.dwxgmac_read_mmc_reg.exit334_crit_edge, label %if.else.i332

dwxgmac_read_mmc_reg.exit327.dwxgmac_read_mmc_reg.exit334_crit_edge: ; preds = %dwxgmac_read_mmc_reg.exit327
  call void @__sanitizer_cov_trace_pc() #5
  br label %dwxgmac_read_mmc_reg.exit334

if.else.i332:                                     ; preds = %dwxgmac_read_mmc_reg.exit327
  call void @__sanitizer_cov_trace_pc() #5
  %271 = ptrtoint ptr %mmc_rx_crc_error to i32
  call void @__asan_load4_noabort(i32 %271)
  %272 = load i32, ptr %mmc_rx_crc_error, align 4
  %273 = trunc i64 %270 to i32
  %conv15.i331 = add i32 %272, %273
  br label %dwxgmac_read_mmc_reg.exit334

dwxgmac_read_mmc_reg.exit334:                     ; preds = %if.else.i332, %dwxgmac_read_mmc_reg.exit327.dwxgmac_read_mmc_reg.exit334_crit_edge
  %storemerge.i333 = phi i32 [ %conv15.i331, %if.else.i332 ], [ -1, %dwxgmac_read_mmc_reg.exit327.dwxgmac_read_mmc_reg.exit334_crit_edge ]
  %274 = ptrtoint ptr %mmc_rx_crc_error to i32
  call void @__asan_store4_noabort(i32 %274)
  store i32 %storemerge.i333, ptr %mmc_rx_crc_error, align 4
  %add.ptr = getelementptr i8, ptr %mmcaddr, i32 304
  %275 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #3, !srcloc !19
  %276 = tail call i32 @llvm.bswap.i32(i32 %275)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !119
  %mmc_rx_run_error = getelementptr inbounds %struct.stmmac_counters, ptr %mmc, i32 0, i32 32
  %277 = ptrtoint ptr %mmc_rx_run_error to i32
  call void @__asan_load4_noabort(i32 %277)
  %278 = load i32, ptr %mmc_rx_run_error, align 4
  %add = add i32 %278, %276
  store i32 %add, ptr %mmc_rx_run_error, align 4
  %add.ptr5 = getelementptr i8, ptr %mmcaddr, i32 308
  %279 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5) #3, !srcloc !19
  %280 = tail call i32 @llvm.bswap.i32(i32 %279)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !120
  %mmc_rx_jabber_error = getelementptr inbounds %struct.stmmac_counters, ptr %mmc, i32 0, i32 33
  %281 = ptrtoint ptr %mmc_rx_jabber_error to i32
  call void @__asan_load4_noabort(i32 %281)
  %282 = load i32, ptr %mmc_rx_jabber_error, align 4
  %add9 = add i32 %282, %280
  store i32 %add9, ptr %mmc_rx_jabber_error, align 4
  %add.ptr12 = getelementptr i8, ptr %mmcaddr, i32 312
  %283 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr12) #3, !srcloc !19
  %284 = tail call i32 @llvm.bswap.i32(i32 %283)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !121
  %mmc_rx_undersize_g = getelementptr inbounds %struct.stmmac_counters, ptr %mmc, i32 0, i32 34
  %285 = ptrtoint ptr %mmc_rx_undersize_g to i32
  call void @__asan_load4_noabort(i32 %285)
  %286 = load i32, ptr %mmc_rx_undersize_g, align 4
  %add16 = add i32 %286, %284
  store i32 %add16, ptr %mmc_rx_undersize_g, align 4
  %add.ptr19 = getelementptr i8, ptr %mmcaddr, i32 316
  %287 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr19) #3, !srcloc !19
  %288 = tail call i32 @llvm.bswap.i32(i32 %287)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !122
  %mmc_rx_oversize_g = getelementptr inbounds %struct.stmmac_counters, ptr %mmc, i32 0, i32 35
  %289 = ptrtoint ptr %mmc_rx_oversize_g to i32
  call void @__asan_load4_noabort(i32 %289)
  %290 = load i32, ptr %mmc_rx_oversize_g, align 4
  %add23 = add i32 %290, %288
  store i32 %add23, ptr %mmc_rx_oversize_g, align 4
  %mmc_rx_64_octets_gb = getelementptr inbounds %struct.stmmac_counters, ptr %mmc, i32 0, i32 36
  %add.ptr.i335 = getelementptr i8, ptr %mmcaddr, i32 320
  %291 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i335) #3, !srcloc !19
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !117
  %add.ptr6.i336 = getelementptr i8, ptr %mmcaddr, i32 324
  %292 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr6.i336) #3, !srcloc !19
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !118
  %293 = zext i32 %292 to i64
  %294 = zext i32 %291 to i64
  %295 = shl nuw i64 %294, 32
  %296 = or i64 %295, %293
  %297 = tail call i64 @llvm.bswap.i64(i64 %296) #3
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967295, i64 %297)
  %cmp.i337 = icmp ugt i64 %297, 4294967295
  br i1 %cmp.i337, label %dwxgmac_read_mmc_reg.exit334.dwxgmac_read_mmc_reg.exit341_crit_edge, label %if.else.i339

dwxgmac_read_mmc_reg.exit334.dwxgmac_read_mmc_reg.exit341_crit_edge: ; preds = %dwxgmac_read_mmc_reg.exit334
  call void @__sanitizer_cov_trace_pc() #5
  br label %dwxgmac_read_mmc_reg.exit341

if.else.i339:                                     ; preds = %dwxgmac_read_mmc_reg.exit334
  call void @__sanitizer_cov_trace_pc() #5
  %298 = ptrtoint ptr %mmc_rx_64_octets_gb to i32
  call void @__asan_load4_noabort(i32 %298)
  %299 = load i32, ptr %mmc_rx_64_octets_gb, align 4
  %300 = trunc i64 %297 to i32
  %conv15.i338 = add i32 %299, %300
  br label %dwxgmac_read_mmc_reg.exit341

dwxgmac_read_mmc_reg.exit341:                     ; preds = %if.else.i339, %dwxgmac_read_mmc_reg.exit334.dwxgmac_read_mmc_reg.exit341_crit_edge
  %storemerge.i340 = phi i32 [ %conv15.i338, %if.else.i339 ], [ -1, %dwxgmac_read_mmc_reg.exit334.dwxgmac_read_mmc_reg.exit341_crit_edge ]
  %301 = ptrtoint ptr %mmc_rx_64_octets_gb to i32
  call void @__asan_store4_noabort(i32 %301)
  store i32 %storemerge.i340, ptr %mmc_rx_64_octets_gb, align 4
  %mmc_rx_65_to_127_octets_gb = getelementptr inbounds %struct.stmmac_counters, ptr %mmc, i32 0, i32 37
  %add.ptr.i342 = getelementptr i8, ptr %mmcaddr, i32 328
  %302 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i342) #3, !srcloc !19
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !117
  %add.ptr6.i343 = getelementptr i8, ptr %mmcaddr, i32 332
  %303 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr6.i343) #3, !srcloc !19
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !118
  %304 = zext i32 %303 to i64
  %305 = zext i32 %302 to i64
  %306 = shl nuw i64 %305, 32
  %307 = or i64 %306, %304
  %308 = tail call i64 @llvm.bswap.i64(i64 %307) #3
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967295, i64 %308)
  %cmp.i344 = icmp ugt i64 %308, 4294967295
  br i1 %cmp.i344, label %dwxgmac_read_mmc_reg.exit341.dwxgmac_read_mmc_reg.exit348_crit_edge, label %if.else.i346

dwxgmac_read_mmc_reg.exit341.dwxgmac_read_mmc_reg.exit348_crit_edge: ; preds = %dwxgmac_read_mmc_reg.exit341
  call void @__sanitizer_cov_trace_pc() #5
  br label %dwxgmac_read_mmc_reg.exit348

if.else.i346:                                     ; preds = %dwxgmac_read_mmc_reg.exit341
  call void @__sanitizer_cov_trace_pc() #5
  %309 = ptrtoint ptr %mmc_rx_65_to_127_octets_gb to i32
  call void @__asan_load4_noabort(i32 %309)
  %310 = load i32, ptr %mmc_rx_65_to_127_octets_gb, align 4
  %311 = trunc i64 %308 to i32
  %conv15.i345 = add i32 %310, %311
  br label %dwxgmac_read_mmc_reg.exit348

dwxgmac_read_mmc_reg.exit348:                     ; preds = %if.else.i346, %dwxgmac_read_mmc_reg.exit341.dwxgmac_read_mmc_reg.exit348_crit_edge
  %storemerge.i347 = phi i32 [ %conv15.i345, %if.else.i346 ], [ -1, %dwxgmac_read_mmc_reg.exit341.dwxgmac_read_mmc_reg.exit348_crit_edge ]
  %312 = ptrtoint ptr %mmc_rx_65_to_127_octets_gb to i32
  call void @__asan_store4_noabort(i32 %312)
  store i32 %storemerge.i347, ptr %mmc_rx_65_to_127_octets_gb, align 4
  %mmc_rx_128_to_255_octets_gb = getelementptr inbounds %struct.stmmac_counters, ptr %mmc, i32 0, i32 38
  %add.ptr.i349 = getelementptr i8, ptr %mmcaddr, i32 336
  %313 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i349) #3, !srcloc !19
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !117
  %add.ptr6.i350 = getelementptr i8, ptr %mmcaddr, i32 340
  %314 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr6.i350) #3, !srcloc !19
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !118
  %315 = zext i32 %314 to i64
  %316 = zext i32 %313 to i64
  %317 = shl nuw i64 %316, 32
  %318 = or i64 %317, %315
  %319 = tail call i64 @llvm.bswap.i64(i64 %318) #3
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967295, i64 %319)
  %cmp.i351 = icmp ugt i64 %319, 4294967295
  br i1 %cmp.i351, label %dwxgmac_read_mmc_reg.exit348.dwxgmac_read_mmc_reg.exit355_crit_edge, label %if.else.i353

dwxgmac_read_mmc_reg.exit348.dwxgmac_read_mmc_reg.exit355_crit_edge: ; preds = %dwxgmac_read_mmc_reg.exit348
  call void @__sanitizer_cov_trace_pc() #5
  br label %dwxgmac_read_mmc_reg.exit355

if.else.i353:                                     ; preds = %dwxgmac_read_mmc_reg.exit348
  call void @__sanitizer_cov_trace_pc() #5
  %320 = ptrtoint ptr %mmc_rx_128_to_255_octets_gb to i32
  call void @__asan_load4_noabort(i32 %320)
  %321 = load i32, ptr %mmc_rx_128_to_255_octets_gb, align 4
  %322 = trunc i64 %319 to i32
  %conv15.i352 = add i32 %321, %322
  br label %dwxgmac_read_mmc_reg.exit355

dwxgmac_read_mmc_reg.exit355:                     ; preds = %if.else.i353, %dwxgmac_read_mmc_reg.exit348.dwxgmac_read_mmc_reg.exit355_crit_edge
  %storemerge.i354 = phi i32 [ %conv15.i352, %if.else.i353 ], [ -1, %dwxgmac_read_mmc_reg.exit348.dwxgmac_read_mmc_reg.exit355_crit_edge ]
  %323 = ptrtoint ptr %mmc_rx_128_to_255_octets_gb to i32
  call void @__asan_store4_noabort(i32 %323)
  store i32 %storemerge.i354, ptr %mmc_rx_128_to_255_octets_gb, align 4
  %mmc_rx_256_to_511_octets_gb = getelementptr inbounds %struct.stmmac_counters, ptr %mmc, i32 0, i32 39
  %add.ptr.i356 = getelementptr i8, ptr %mmcaddr, i32 344
  %324 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i356) #3, !srcloc !19
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !117
  %add.ptr6.i357 = getelementptr i8, ptr %mmcaddr, i32 348
  %325 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr6.i357) #3, !srcloc !19
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !118
  %326 = zext i32 %325 to i64
  %327 = zext i32 %324 to i64
  %328 = shl nuw i64 %327, 32
  %329 = or i64 %328, %326
  %330 = tail call i64 @llvm.bswap.i64(i64 %329) #3
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967295, i64 %330)
  %cmp.i358 = icmp ugt i64 %330, 4294967295
  br i1 %cmp.i358, label %dwxgmac_read_mmc_reg.exit355.dwxgmac_read_mmc_reg.exit362_crit_edge, label %if.else.i360

dwxgmac_read_mmc_reg.exit355.dwxgmac_read_mmc_reg.exit362_crit_edge: ; preds = %dwxgmac_read_mmc_reg.exit355
  call void @__sanitizer_cov_trace_pc() #5
  br label %dwxgmac_read_mmc_reg.exit362

if.else.i360:                                     ; preds = %dwxgmac_read_mmc_reg.exit355
  call void @__sanitizer_cov_trace_pc() #5
  %331 = ptrtoint ptr %mmc_rx_256_to_511_octets_gb to i32
  call void @__asan_load4_noabort(i32 %331)
  %332 = load i32, ptr %mmc_rx_256_to_511_octets_gb, align 4
  %333 = trunc i64 %330 to i32
  %conv15.i359 = add i32 %332, %333
  br label %dwxgmac_read_mmc_reg.exit362

dwxgmac_read_mmc_reg.exit362:                     ; preds = %if.else.i360, %dwxgmac_read_mmc_reg.exit355.dwxgmac_read_mmc_reg.exit362_crit_edge
  %storemerge.i361 = phi i32 [ %conv15.i359, %if.else.i360 ], [ -1, %dwxgmac_read_mmc_reg.exit355.dwxgmac_read_mmc_reg.exit362_crit_edge ]
  %334 = ptrtoint ptr %mmc_rx_256_to_511_octets_gb to i32
  call void @__asan_store4_noabort(i32 %334)
  store i32 %storemerge.i361, ptr %mmc_rx_256_to_511_octets_gb, align 4
  %mmc_rx_512_to_1023_octets_gb = getelementptr inbounds %struct.stmmac_counters, ptr %mmc, i32 0, i32 40
  %add.ptr.i363 = getelementptr i8, ptr %mmcaddr, i32 352
  %335 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i363) #3, !srcloc !19
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !117
  %add.ptr6.i364 = getelementptr i8, ptr %mmcaddr, i32 356
  %336 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr6.i364) #3, !srcloc !19
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !118
  %337 = zext i32 %336 to i64
  %338 = zext i32 %335 to i64
  %339 = shl nuw i64 %338, 32
  %340 = or i64 %339, %337
  %341 = tail call i64 @llvm.bswap.i64(i64 %340) #3
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967295, i64 %341)
  %cmp.i365 = icmp ugt i64 %341, 4294967295
  br i1 %cmp.i365, label %dwxgmac_read_mmc_reg.exit362.dwxgmac_read_mmc_reg.exit369_crit_edge, label %if.else.i367

dwxgmac_read_mmc_reg.exit362.dwxgmac_read_mmc_reg.exit369_crit_edge: ; preds = %dwxgmac_read_mmc_reg.exit362
  call void @__sanitizer_cov_trace_pc() #5
  br label %dwxgmac_read_mmc_reg.exit369

if.else.i367:                                     ; preds = %dwxgmac_read_mmc_reg.exit362
  call void @__sanitizer_cov_trace_pc() #5
  %342 = ptrtoint ptr %mmc_rx_512_to_1023_octets_gb to i32
  call void @__asan_load4_noabort(i32 %342)
  %343 = load i32, ptr %mmc_rx_512_to_1023_octets_gb, align 4
  %344 = trunc i64 %341 to i32
  %conv15.i366 = add i32 %343, %344
  br label %dwxgmac_read_mmc_reg.exit369

dwxgmac_read_mmc_reg.exit369:                     ; preds = %if.else.i367, %dwxgmac_read_mmc_reg.exit362.dwxgmac_read_mmc_reg.exit369_crit_edge
  %storemerge.i368 = phi i32 [ %conv15.i366, %if.else.i367 ], [ -1, %dwxgmac_read_mmc_reg.exit362.dwxgmac_read_mmc_reg.exit369_crit_edge ]
  %345 = ptrtoint ptr %mmc_rx_512_to_1023_octets_gb to i32
  call void @__asan_store4_noabort(i32 %345)
  store i32 %storemerge.i368, ptr %mmc_rx_512_to_1023_octets_gb, align 4
  %mmc_rx_1024_to_max_octets_gb = getelementptr inbounds %struct.stmmac_counters, ptr %mmc, i32 0, i32 41
  %add.ptr.i370 = getelementptr i8, ptr %mmcaddr, i32 360
  %346 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i370) #3, !srcloc !19
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !117
  %add.ptr6.i371 = getelementptr i8, ptr %mmcaddr, i32 364
  %347 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr6.i371) #3, !srcloc !19
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !118
  %348 = zext i32 %347 to i64
  %349 = zext i32 %346 to i64
  %350 = shl nuw i64 %349, 32
  %351 = or i64 %350, %348
  %352 = tail call i64 @llvm.bswap.i64(i64 %351) #3
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967295, i64 %352)
  %cmp.i372 = icmp ugt i64 %352, 4294967295
  br i1 %cmp.i372, label %dwxgmac_read_mmc_reg.exit369.dwxgmac_read_mmc_reg.exit376_crit_edge, label %if.else.i374

dwxgmac_read_mmc_reg.exit369.dwxgmac_read_mmc_reg.exit376_crit_edge: ; preds = %dwxgmac_read_mmc_reg.exit369
  call void @__sanitizer_cov_trace_pc() #5
  br label %dwxgmac_read_mmc_reg.exit376

if.else.i374:                                     ; preds = %dwxgmac_read_mmc_reg.exit369
  call void @__sanitizer_cov_trace_pc() #5
  %353 = ptrtoint ptr %mmc_rx_1024_to_max_octets_gb to i32
  call void @__asan_load4_noabort(i32 %353)
  %354 = load i32, ptr %mmc_rx_1024_to_max_octets_gb, align 4
  %355 = trunc i64 %352 to i32
  %conv15.i373 = add i32 %354, %355
  br label %dwxgmac_read_mmc_reg.exit376

dwxgmac_read_mmc_reg.exit376:                     ; preds = %if.else.i374, %dwxgmac_read_mmc_reg.exit369.dwxgmac_read_mmc_reg.exit376_crit_edge
  %storemerge.i375 = phi i32 [ %conv15.i373, %if.else.i374 ], [ -1, %dwxgmac_read_mmc_reg.exit369.dwxgmac_read_mmc_reg.exit376_crit_edge ]
  %356 = ptrtoint ptr %mmc_rx_1024_to_max_octets_gb to i32
  call void @__asan_store4_noabort(i32 %356)
  store i32 %storemerge.i375, ptr %mmc_rx_1024_to_max_octets_gb, align 4
  %mmc_rx_unicast_g = getelementptr inbounds %struct.stmmac_counters, ptr %mmc, i32 0, i32 42
  %add.ptr.i377 = getelementptr i8, ptr %mmcaddr, i32 368
  %357 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i377) #3, !srcloc !19
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !117
  %add.ptr6.i378 = getelementptr i8, ptr %mmcaddr, i32 372
  %358 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr6.i378) #3, !srcloc !19
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !118
  %359 = zext i32 %358 to i64
  %360 = zext i32 %357 to i64
  %361 = shl nuw i64 %360, 32
  %362 = or i64 %361, %359
  %363 = tail call i64 @llvm.bswap.i64(i64 %362) #3
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967295, i64 %363)
  %cmp.i379 = icmp ugt i64 %363, 4294967295
  br i1 %cmp.i379, label %dwxgmac_read_mmc_reg.exit376.dwxgmac_read_mmc_reg.exit383_crit_edge, label %if.else.i381

dwxgmac_read_mmc_reg.exit376.dwxgmac_read_mmc_reg.exit383_crit_edge: ; preds = %dwxgmac_read_mmc_reg.exit376
  call void @__sanitizer_cov_trace_pc() #5
  br label %dwxgmac_read_mmc_reg.exit383

if.else.i381:                                     ; preds = %dwxgmac_read_mmc_reg.exit376
  call void @__sanitizer_cov_trace_pc() #5
  %364 = ptrtoint ptr %mmc_rx_unicast_g to i32
  call void @__asan_load4_noabort(i32 %364)
  %365 = load i32, ptr %mmc_rx_unicast_g, align 4
  %366 = trunc i64 %363 to i32
  %conv15.i380 = add i32 %365, %366
  br label %dwxgmac_read_mmc_reg.exit383

dwxgmac_read_mmc_reg.exit383:                     ; preds = %if.else.i381, %dwxgmac_read_mmc_reg.exit376.dwxgmac_read_mmc_reg.exit383_crit_edge
  %storemerge.i382 = phi i32 [ %conv15.i380, %if.else.i381 ], [ -1, %dwxgmac_read_mmc_reg.exit376.dwxgmac_read_mmc_reg.exit383_crit_edge ]
  %367 = ptrtoint ptr %mmc_rx_unicast_g to i32
  call void @__asan_store4_noabort(i32 %367)
  store i32 %storemerge.i382, ptr %mmc_rx_unicast_g, align 4
  %mmc_rx_length_error = getelementptr inbounds %struct.stmmac_counters, ptr %mmc, i32 0, i32 43
  %add.ptr.i384 = getelementptr i8, ptr %mmcaddr, i32 376
  %368 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i384) #3, !srcloc !19
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !117
  %add.ptr6.i385 = getelementptr i8, ptr %mmcaddr, i32 380
  %369 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr6.i385) #3, !srcloc !19
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !118
  %370 = zext i32 %369 to i64
  %371 = zext i32 %368 to i64
  %372 = shl nuw i64 %371, 32
  %373 = or i64 %372, %370
  %374 = tail call i64 @llvm.bswap.i64(i64 %373) #3
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967295, i64 %374)
  %cmp.i386 = icmp ugt i64 %374, 4294967295
  br i1 %cmp.i386, label %dwxgmac_read_mmc_reg.exit383.dwxgmac_read_mmc_reg.exit390_crit_edge, label %if.else.i388

dwxgmac_read_mmc_reg.exit383.dwxgmac_read_mmc_reg.exit390_crit_edge: ; preds = %dwxgmac_read_mmc_reg.exit383
  call void @__sanitizer_cov_trace_pc() #5
  br label %dwxgmac_read_mmc_reg.exit390

if.else.i388:                                     ; preds = %dwxgmac_read_mmc_reg.exit383
  call void @__sanitizer_cov_trace_pc() #5
  %375 = ptrtoint ptr %mmc_rx_length_error to i32
  call void @__asan_load4_noabort(i32 %375)
  %376 = load i32, ptr %mmc_rx_length_error, align 4
  %377 = trunc i64 %374 to i32
  %conv15.i387 = add i32 %376, %377
  br label %dwxgmac_read_mmc_reg.exit390

dwxgmac_read_mmc_reg.exit390:                     ; preds = %if.else.i388, %dwxgmac_read_mmc_reg.exit383.dwxgmac_read_mmc_reg.exit390_crit_edge
  %storemerge.i389 = phi i32 [ %conv15.i387, %if.else.i388 ], [ -1, %dwxgmac_read_mmc_reg.exit383.dwxgmac_read_mmc_reg.exit390_crit_edge ]
  %378 = ptrtoint ptr %mmc_rx_length_error to i32
  call void @__asan_store4_noabort(i32 %378)
  store i32 %storemerge.i389, ptr %mmc_rx_length_error, align 4
  %mmc_rx_autofrangetype = getelementptr inbounds %struct.stmmac_counters, ptr %mmc, i32 0, i32 44
  %add.ptr.i391 = getelementptr i8, ptr %mmcaddr, i32 384
  %379 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i391) #3, !srcloc !19
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !117
  %add.ptr6.i392 = getelementptr i8, ptr %mmcaddr, i32 388
  %380 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr6.i392) #3, !srcloc !19
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !118
  %381 = zext i32 %380 to i64
  %382 = zext i32 %379 to i64
  %383 = shl nuw i64 %382, 32
  %384 = or i64 %383, %381
  %385 = tail call i64 @llvm.bswap.i64(i64 %384) #3
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967295, i64 %385)
  %cmp.i393 = icmp ugt i64 %385, 4294967295
  br i1 %cmp.i393, label %dwxgmac_read_mmc_reg.exit390.dwxgmac_read_mmc_reg.exit397_crit_edge, label %if.else.i395

dwxgmac_read_mmc_reg.exit390.dwxgmac_read_mmc_reg.exit397_crit_edge: ; preds = %dwxgmac_read_mmc_reg.exit390
  call void @__sanitizer_cov_trace_pc() #5
  br label %dwxgmac_read_mmc_reg.exit397

if.else.i395:                                     ; preds = %dwxgmac_read_mmc_reg.exit390
  call void @__sanitizer_cov_trace_pc() #5
  %386 = ptrtoint ptr %mmc_rx_autofrangetype to i32
  call void @__asan_load4_noabort(i32 %386)
  %387 = load i32, ptr %mmc_rx_autofrangetype, align 4
  %388 = trunc i64 %385 to i32
  %conv15.i394 = add i32 %387, %388
  br label %dwxgmac_read_mmc_reg.exit397

dwxgmac_read_mmc_reg.exit397:                     ; preds = %if.else.i395, %dwxgmac_read_mmc_reg.exit390.dwxgmac_read_mmc_reg.exit397_crit_edge
  %storemerge.i396 = phi i32 [ %conv15.i394, %if.else.i395 ], [ -1, %dwxgmac_read_mmc_reg.exit390.dwxgmac_read_mmc_reg.exit397_crit_edge ]
  %389 = ptrtoint ptr %mmc_rx_autofrangetype to i32
  call void @__asan_store4_noabort(i32 %389)
  store i32 %storemerge.i396, ptr %mmc_rx_autofrangetype, align 4
  %mmc_rx_pause_frames = getelementptr inbounds %struct.stmmac_counters, ptr %mmc, i32 0, i32 45
  %add.ptr.i398 = getelementptr i8, ptr %mmcaddr, i32 392
  %390 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i398) #3, !srcloc !19
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !117
  %add.ptr6.i399 = getelementptr i8, ptr %mmcaddr, i32 396
  %391 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr6.i399) #3, !srcloc !19
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !118
  %392 = zext i32 %391 to i64
  %393 = zext i32 %390 to i64
  %394 = shl nuw i64 %393, 32
  %395 = or i64 %394, %392
  %396 = tail call i64 @llvm.bswap.i64(i64 %395) #3
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967295, i64 %396)
  %cmp.i400 = icmp ugt i64 %396, 4294967295
  br i1 %cmp.i400, label %dwxgmac_read_mmc_reg.exit397.dwxgmac_read_mmc_reg.exit404_crit_edge, label %if.else.i402

dwxgmac_read_mmc_reg.exit397.dwxgmac_read_mmc_reg.exit404_crit_edge: ; preds = %dwxgmac_read_mmc_reg.exit397
  call void @__sanitizer_cov_trace_pc() #5
  br label %dwxgmac_read_mmc_reg.exit404

if.else.i402:                                     ; preds = %dwxgmac_read_mmc_reg.exit397
  call void @__sanitizer_cov_trace_pc() #5
  %397 = ptrtoint ptr %mmc_rx_pause_frames to i32
  call void @__asan_load4_noabort(i32 %397)
  %398 = load i32, ptr %mmc_rx_pause_frames, align 4
  %399 = trunc i64 %396 to i32
  %conv15.i401 = add i32 %398, %399
  br label %dwxgmac_read_mmc_reg.exit404

dwxgmac_read_mmc_reg.exit404:                     ; preds = %if.else.i402, %dwxgmac_read_mmc_reg.exit397.dwxgmac_read_mmc_reg.exit404_crit_edge
  %storemerge.i403 = phi i32 [ %conv15.i401, %if.else.i402 ], [ -1, %dwxgmac_read_mmc_reg.exit397.dwxgmac_read_mmc_reg.exit404_crit_edge ]
  %400 = ptrtoint ptr %mmc_rx_pause_frames to i32
  call void @__asan_store4_noabort(i32 %400)
  store i32 %storemerge.i403, ptr %mmc_rx_pause_frames, align 4
  %mmc_rx_fifo_overflow = getelementptr inbounds %struct.stmmac_counters, ptr %mmc, i32 0, i32 46
  %add.ptr.i405 = getelementptr i8, ptr %mmcaddr, i32 400
  %401 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i405) #3, !srcloc !19
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !117
  %add.ptr6.i406 = getelementptr i8, ptr %mmcaddr, i32 404
  %402 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr6.i406) #3, !srcloc !19
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !118
  %403 = zext i32 %402 to i64
  %404 = zext i32 %401 to i64
  %405 = shl nuw i64 %404, 32
  %406 = or i64 %405, %403
  %407 = tail call i64 @llvm.bswap.i64(i64 %406) #3
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967295, i64 %407)
  %cmp.i407 = icmp ugt i64 %407, 4294967295
  br i1 %cmp.i407, label %dwxgmac_read_mmc_reg.exit404.dwxgmac_read_mmc_reg.exit411_crit_edge, label %if.else.i409

dwxgmac_read_mmc_reg.exit404.dwxgmac_read_mmc_reg.exit411_crit_edge: ; preds = %dwxgmac_read_mmc_reg.exit404
  call void @__sanitizer_cov_trace_pc() #5
  br label %dwxgmac_read_mmc_reg.exit411

if.else.i409:                                     ; preds = %dwxgmac_read_mmc_reg.exit404
  call void @__sanitizer_cov_trace_pc() #5
  %408 = ptrtoint ptr %mmc_rx_fifo_overflow to i32
  call void @__asan_load4_noabort(i32 %408)
  %409 = load i32, ptr %mmc_rx_fifo_overflow, align 4
  %410 = trunc i64 %407 to i32
  %conv15.i408 = add i32 %409, %410
  br label %dwxgmac_read_mmc_reg.exit411

dwxgmac_read_mmc_reg.exit411:                     ; preds = %if.else.i409, %dwxgmac_read_mmc_reg.exit404.dwxgmac_read_mmc_reg.exit411_crit_edge
  %storemerge.i410 = phi i32 [ %conv15.i408, %if.else.i409 ], [ -1, %dwxgmac_read_mmc_reg.exit404.dwxgmac_read_mmc_reg.exit411_crit_edge ]
  %411 = ptrtoint ptr %mmc_rx_fifo_overflow to i32
  call void @__asan_store4_noabort(i32 %411)
  store i32 %storemerge.i410, ptr %mmc_rx_fifo_overflow, align 4
  %mmc_rx_vlan_frames_gb = getelementptr inbounds %struct.stmmac_counters, ptr %mmc, i32 0, i32 47
  %add.ptr.i412 = getelementptr i8, ptr %mmcaddr, i32 408
  %412 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i412) #3, !srcloc !19
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !117
  %add.ptr6.i413 = getelementptr i8, ptr %mmcaddr, i32 412
  %413 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr6.i413) #3, !srcloc !19
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !118
  %414 = zext i32 %413 to i64
  %415 = zext i32 %412 to i64
  %416 = shl nuw i64 %415, 32
  %417 = or i64 %416, %414
  %418 = tail call i64 @llvm.bswap.i64(i64 %417) #3
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967295, i64 %418)
  %cmp.i414 = icmp ugt i64 %418, 4294967295
  br i1 %cmp.i414, label %dwxgmac_read_mmc_reg.exit411.dwxgmac_read_mmc_reg.exit418_crit_edge, label %if.else.i416

dwxgmac_read_mmc_reg.exit411.dwxgmac_read_mmc_reg.exit418_crit_edge: ; preds = %dwxgmac_read_mmc_reg.exit411
  call void @__sanitizer_cov_trace_pc() #5
  br label %dwxgmac_read_mmc_reg.exit418

if.else.i416:                                     ; preds = %dwxgmac_read_mmc_reg.exit411
  call void @__sanitizer_cov_trace_pc() #5
  %419 = ptrtoint ptr %mmc_rx_vlan_frames_gb to i32
  call void @__asan_load4_noabort(i32 %419)
  %420 = load i32, ptr %mmc_rx_vlan_frames_gb, align 4
  %421 = trunc i64 %418 to i32
  %conv15.i415 = add i32 %420, %421
  br label %dwxgmac_read_mmc_reg.exit418

dwxgmac_read_mmc_reg.exit418:                     ; preds = %if.else.i416, %dwxgmac_read_mmc_reg.exit411.dwxgmac_read_mmc_reg.exit418_crit_edge
  %storemerge.i417 = phi i32 [ %conv15.i415, %if.else.i416 ], [ -1, %dwxgmac_read_mmc_reg.exit411.dwxgmac_read_mmc_reg.exit418_crit_edge ]
  %422 = ptrtoint ptr %mmc_rx_vlan_frames_gb to i32
  call void @__asan_store4_noabort(i32 %422)
  store i32 %storemerge.i417, ptr %mmc_rx_vlan_frames_gb, align 4
  %add.ptr26 = getelementptr i8, ptr %mmcaddr, i32 416
  %423 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr26) #3, !srcloc !19
  %424 = tail call i32 @llvm.bswap.i32(i32 %423)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !123
  %mmc_rx_watchdog_error = getelementptr inbounds %struct.stmmac_counters, ptr %mmc, i32 0, i32 48
  %425 = ptrtoint ptr %mmc_rx_watchdog_error to i32
  call void @__asan_load4_noabort(i32 %425)
  %426 = load i32, ptr %mmc_rx_watchdog_error, align 4
  %add30 = add i32 %426, %424
  store i32 %add30, ptr %mmc_rx_watchdog_error, align 4
  %add.ptr33 = getelementptr i8, ptr %mmcaddr, i32 520
  %427 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr33) #3, !srcloc !19
  %428 = tail call i32 @llvm.bswap.i32(i32 %427)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !124
  %mmc_tx_fpe_fragment_cntr = getelementptr inbounds %struct.stmmac_counters, ptr %mmc, i32 0, i32 79
  %429 = ptrtoint ptr %mmc_tx_fpe_fragment_cntr to i32
  call void @__asan_load4_noabort(i32 %429)
  %430 = load i32, ptr %mmc_tx_fpe_fragment_cntr, align 4
  %add37 = add i32 %430, %428
  store i32 %add37, ptr %mmc_tx_fpe_fragment_cntr, align 4
  %add.ptr40 = getelementptr i8, ptr %mmcaddr, i32 524
  %431 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr40) #3, !srcloc !19
  %432 = tail call i32 @llvm.bswap.i32(i32 %431)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !125
  %mmc_tx_hold_req_cntr = getelementptr inbounds %struct.stmmac_counters, ptr %mmc, i32 0, i32 80
  %433 = ptrtoint ptr %mmc_tx_hold_req_cntr to i32
  call void @__asan_load4_noabort(i32 %433)
  %434 = load i32, ptr %mmc_tx_hold_req_cntr, align 4
  %add44 = add i32 %434, %432
  store i32 %add44, ptr %mmc_tx_hold_req_cntr, align 4
  %add.ptr47 = getelementptr i8, ptr %mmcaddr, i32 552
  %435 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr47) #3, !srcloc !19
  %436 = tail call i32 @llvm.bswap.i32(i32 %435)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !126
  %mmc_rx_packet_assembly_err_cntr = getelementptr inbounds %struct.stmmac_counters, ptr %mmc, i32 0, i32 81
  %437 = ptrtoint ptr %mmc_rx_packet_assembly_err_cntr to i32
  call void @__asan_load4_noabort(i32 %437)
  %438 = load i32, ptr %mmc_rx_packet_assembly_err_cntr, align 4
  %add51 = add i32 %438, %436
  store i32 %add51, ptr %mmc_rx_packet_assembly_err_cntr, align 4
  %add.ptr54 = getelementptr i8, ptr %mmcaddr, i32 556
  %439 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr54) #3, !srcloc !19
  %440 = tail call i32 @llvm.bswap.i32(i32 %439)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !127
  %mmc_rx_packet_smd_err_cntr = getelementptr inbounds %struct.stmmac_counters, ptr %mmc, i32 0, i32 82
  %441 = ptrtoint ptr %mmc_rx_packet_smd_err_cntr to i32
  call void @__asan_load4_noabort(i32 %441)
  %442 = load i32, ptr %mmc_rx_packet_smd_err_cntr, align 4
  %add58 = add i32 %442, %440
  store i32 %add58, ptr %mmc_rx_packet_smd_err_cntr, align 4
  %add.ptr61 = getelementptr i8, ptr %mmcaddr, i32 560
  %443 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr61) #3, !srcloc !19
  %444 = tail call i32 @llvm.bswap.i32(i32 %443)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !128
  %mmc_rx_packet_assembly_ok_cntr = getelementptr inbounds %struct.stmmac_counters, ptr %mmc, i32 0, i32 83
  %445 = ptrtoint ptr %mmc_rx_packet_assembly_ok_cntr to i32
  call void @__asan_load4_noabort(i32 %445)
  %446 = load i32, ptr %mmc_rx_packet_assembly_ok_cntr, align 4
  %add65 = add i32 %446, %444
  store i32 %add65, ptr %mmc_rx_packet_assembly_ok_cntr, align 4
  %add.ptr68 = getelementptr i8, ptr %mmcaddr, i32 564
  %447 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr68) #3, !srcloc !19
  %448 = tail call i32 @llvm.bswap.i32(i32 %447)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !129
  %mmc_rx_fpe_fragment_cntr = getelementptr inbounds %struct.stmmac_counters, ptr %mmc, i32 0, i32 84
  %449 = ptrtoint ptr %mmc_rx_fpe_fragment_cntr to i32
  call void @__asan_load4_noabort(i32 %449)
  %450 = load i32, ptr %mmc_rx_fpe_fragment_cntr, align 4
  %add72 = add i32 %450, %448
  store i32 %add72, ptr %mmc_rx_fpe_fragment_cntr, align 4
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #4 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 6)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #4 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 6)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind }
attributes #4 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #5 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !8, !9}
!llvm.module.flags = !{!10, !11, !12, !13, !14, !15, !16, !17}
!llvm.ident = !{!18}

!0 = !{ptr @dwmac_mmc_ops, !1, !"dwmac_mmc_ops", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/stmicro/stmmac/mmc_core.c", i32 336, i32 29}
!2 = !{ptr @dwxgmac_mmc_ops, !3, !"dwxgmac_mmc_ops", i1 false, i1 false}
!3 = !{!"../drivers/net/ethernet/stmicro/stmmac/mmc_core.c", i32 471, i32 29}
!4 = !{ptr @.str, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/net/ethernet/stmicro/stmmac/mmc_core.c", i32 196, i32 2}
!6 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @.str.3, !5, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @dwmac_mmc_ctrl.__UNIQUE_ID_ddebug347, !5, !"__UNIQUE_ID_ddebug347", i1 false, i1 false}
!10 = !{i32 1, !"wchar_size", i32 2}
!11 = !{i32 1, !"min_enum_size", i32 4}
!12 = !{i32 8, !"branch-target-enforcement", i32 0}
!13 = !{i32 8, !"sign-return-address", i32 0}
!14 = !{i32 8, !"sign-return-address-all", i32 0}
!15 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!16 = !{i32 7, !"uwtable", i32 1}
!17 = !{i32 7, !"frame-pointer", i32 2}
!18 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!19 = !{i64 1262809}
!20 = !{i64 2156428372}
!21 = !{i64 2156428590}
!22 = !{i64 1262391}
!23 = !{i64 2148708063, i64 2148708068, i64 2148708081, i64 2148708125, i64 2148708159, i64 2148708180}
!24 = !{i64 2156431539}
!25 = !{i64 2156431966}
!26 = !{i64 2156432395}
!27 = !{i64 2156433068}
!28 = !{i64 2156433547}
!29 = !{i64 2156434026}
!30 = !{i64 2156434505}
!31 = !{i64 2156434984}
!32 = !{i64 2156435463}
!33 = !{i64 2156435942}
!34 = !{i64 2156436421}
!35 = !{i64 2156436900}
!36 = !{i64 2156437379}
!37 = !{i64 2156437858}
!38 = !{i64 2156438337}
!39 = !{i64 2156438816}
!40 = !{i64 2156439295}
!41 = !{i64 2156439774}
!42 = !{i64 2156440253}
!43 = !{i64 2156440732}
!44 = !{i64 2156441211}
!45 = !{i64 2156441690}
!46 = !{i64 2156442169}
!47 = !{i64 2156442648}
!48 = !{i64 2156443127}
!49 = !{i64 2156443606}
!50 = !{i64 2156444085}
!51 = !{i64 2156444564}
!52 = !{i64 2156445043}
!53 = !{i64 2156445522}
!54 = !{i64 2156446001}
!55 = !{i64 2156446480}
!56 = !{i64 2156446959}
!57 = !{i64 2156447438}
!58 = !{i64 2156447917}
!59 = !{i64 2156448396}
!60 = !{i64 2156448875}
!61 = !{i64 2156449354}
!62 = !{i64 2156449833}
!63 = !{i64 2156450312}
!64 = !{i64 2156450791}
!65 = !{i64 2156451270}
!66 = !{i64 2156451749}
!67 = !{i64 2156452228}
!68 = !{i64 2156452707}
!69 = !{i64 2156453186}
!70 = !{i64 2156453665}
!71 = !{i64 2156454144}
!72 = !{i64 2156454623}
!73 = !{i64 2156455102}
!74 = !{i64 2156455581}
!75 = !{i64 2156456060}
!76 = !{i64 2156456544}
!77 = !{i64 2156457028}
!78 = !{i64 2156457512}
!79 = !{i64 2156457996}
!80 = !{i64 2156458480}
!81 = !{i64 2156458964}
!82 = !{i64 2156459448}
!83 = !{i64 2156459932}
!84 = !{i64 2156460416}
!85 = !{i64 2156460900}
!86 = !{i64 2156461384}
!87 = !{i64 2156461868}
!88 = !{i64 2156462352}
!89 = !{i64 2156462836}
!90 = !{i64 2156463320}
!91 = !{i64 2156463804}
!92 = !{i64 2156464288}
!93 = !{i64 2156464772}
!94 = !{i64 2156465256}
!95 = !{i64 2156465740}
!96 = !{i64 2156466224}
!97 = !{i64 2156466708}
!98 = !{i64 2156467192}
!99 = !{i64 2156467676}
!100 = !{i64 2156468160}
!101 = !{i64 2156468644}
!102 = !{i64 2156469128}
!103 = !{i64 2156469612}
!104 = !{i64 2156470096}
!105 = !{i64 2156470580}
!106 = !{i64 2156471064}
!107 = !{i64 2156471548}
!108 = !{i64 2156472032}
!109 = !{i64 2156472516}
!110 = !{i64 2156473000}
!111 = !{i64 2156473484}
!112 = !{i64 2156473963}
!113 = !{i64 2156474181}
!114 = !{i64 2156474575}
!115 = !{i64 2156474963}
!116 = !{i64 2156475371}
!117 = !{i64 2156476023}
!118 = !{i64 2156476505}
!119 = !{i64 2156477789}
!120 = !{i64 2156478273}
!121 = !{i64 2156478757}
!122 = !{i64 2156479241}
!123 = !{i64 2156479797}
!124 = !{i64 2156480281}
!125 = !{i64 2156480765}
!126 = !{i64 2156481249}
!127 = !{i64 2156481733}
!128 = !{i64 2156482217}
!129 = !{i64 2156482701}
