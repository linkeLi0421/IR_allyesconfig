; ModuleID = '/llk/IR_all_yes/drivers/mmc/host/sdhci-pci-dwc-mshc.c_pt.bc'
source_filename = "../drivers/mmc/host/sdhci-pci-dwc-mshc.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.sdhci_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.sdhci_pci_fixes = type { i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.sdhci_host = type { ptr, i32, i32, i32, ptr, i32, ptr, i32, i32, ptr, ptr, %struct.mmc_host_ops, i64, %struct.led_classdev, [32 x i8], %struct.spinlock, i32, i32, i32, i32, i8, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, [2 x ptr], ptr, ptr, ptr, ptr, i8, %struct.sg_mapping_iter, i32, i32, i32, ptr, ptr, i32, i32, i32, i32, i32, i32, ptr, %struct.work_struct, %struct.timer_list, %struct.timer_list, ptr, ptr, i32, i32, i8, i8, i32, i32, i32, i32, i32, i32, i32, i8, i32, i32, %struct.wait_queue_head, i32, i32, i32, i32, i32, i32, i32, i32, i64, [72 x i8], [0 x i32] }
%struct.mmc_host_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.led_classdev = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, i32, i32, %struct.timer_list, i32, i32, ptr, %struct.work_struct, i32, %struct.rw_semaphore, ptr, %struct.list_head, ptr, i8, ptr, i32, ptr, %struct.mutex }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.sg_mapping_iter = type { ptr, ptr, i32, i32, %struct.sg_page_iter, i32, i32, i32 }
%struct.sg_page_iter = type { ptr, i32, i32, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }

@sdhci_snps_ops = internal constant { %struct.sdhci_ops, [40 x i8] } { %struct.sdhci_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @sdhci_snps_set_clock, ptr null, ptr null, ptr null, ptr @sdhci_pci_enable_dma, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @sdhci_set_bus_width, ptr null, ptr null, ptr @sdhci_reset, ptr null, ptr @sdhci_set_uhs_signaling, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@sdhci_snps = dso_local constant { %struct.sdhci_pci_fixes, [44 x i8] } { %struct.sdhci_pci_fixes { i32 0, i32 0, i8 0, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @sdhci_snps_ops, i32 0 }, [44 x i8] zeroinitializer }, align 32
@___asan_gen_.1 = private unnamed_addr constant [15 x i8] c"sdhci_snps_ops\00", align 1
@___asan_gen_.3 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.5, i32 74, i32 31 }
@___asan_gen_.4 = private unnamed_addr constant [11 x i8] c"sdhci_snps\00", align 1
@___asan_gen_.5 = private constant [41 x i8] c"../drivers/mmc/host/sdhci-pci-dwc-mshc.c\00", align 1
@___asan_gen_.6 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.5, i32 82, i32 30 }
@llvm.compiler.used = appending global [2 x ptr] [ptr @sdhci_snps_ops, ptr @sdhci_snps], section "llvm.metadata"
@0 = internal global [2 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdhci_snps_ops to i32), i32 120, i32 160, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdhci_snps to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 0 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sdhci_snps_set_clock(ptr noundef %host, i32 noundef %clock) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %ops.i = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 9
  %0 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ops.i, align 4
  %read_w.i = getelementptr inbounds %struct.sdhci_ops, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %read_w.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %read_w.i, align 4
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i, !prof !13

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %call.i = tail call zeroext i16 %3(ptr noundef %host, i32 noundef 232) #3
  br label %sdhci_readw.exit

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %ioaddr.i = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 4
  %4 = ptrtoint ptr %ioaddr.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ioaddr.i, align 16
  %add.ptr.i = getelementptr i8, ptr %5, i32 232
  %6 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i) #3, !srcloc !14
  %7 = tail call i16 @llvm.bswap.i16(i16 %6) #3
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !15
  br label %sdhci_readw.exit

sdhci_readw.exit:                                 ; preds = %if.else.i, %if.then.i
  %retval.0.i = phi i16 [ %call.i, %if.then.i ], [ %7, %if.else.i ]
  %conv = zext i16 %retval.0.i to i32
  %add = add nuw nsw i32 %conv, 64
  %8 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ops.i, align 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %9, align 4
  %tobool.not.i41 = icmp eq ptr %11, null
  br i1 %tobool.not.i41, label %if.else.i46, label %if.then.i43, !prof !13

if.then.i43:                                      ; preds = %sdhci_readw.exit
  call void @__sanitizer_cov_trace_pc() #5
  %call.i42 = tail call i32 %11(ptr noundef %host, i32 noundef %add) #3
  br label %sdhci_readl.exit

if.else.i46:                                      ; preds = %sdhci_readw.exit
  call void @__sanitizer_cov_trace_pc() #5
  %ioaddr.i44 = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 4
  %12 = ptrtoint ptr %ioaddr.i44 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ioaddr.i44, align 16
  %add.ptr.i45 = getelementptr i8, ptr %13, i32 %add
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i45) #3, !srcloc !16
  %15 = tail call i32 @llvm.bswap.i32(i32 %14) #3
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !17
  br label %sdhci_readl.exit

sdhci_readl.exit:                                 ; preds = %if.else.i46, %if.then.i43
  %retval.0.i47 = phi i32 [ %call.i42, %if.then.i43 ], [ %15, %if.else.i46 ]
  %and = and i32 %retval.0.i47, -17
  %16 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %ops.i, align 4
  %write_l.i = getelementptr inbounds %struct.sdhci_ops, ptr %17, i32 0, i32 3
  %18 = ptrtoint ptr %write_l.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %write_l.i, align 4
  %tobool.not.i49 = icmp eq ptr %19, null
  br i1 %tobool.not.i49, label %do.body.i, label %if.then.i50, !prof !13

if.then.i50:                                      ; preds = %sdhci_readl.exit
  call void @__sanitizer_cov_trace_pc() #5
  tail call void %19(ptr noundef %host, i32 noundef %and, i32 noundef %add) #3
  br label %sdhci_writel.exit

do.body.i:                                        ; preds = %sdhci_readl.exit
  call void @__sanitizer_cov_trace_pc() #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !18
  tail call void @arm_heavy_mb() #3
  %20 = tail call i32 @llvm.bswap.i32(i32 %and) #3
  %ioaddr.i51 = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 4
  %21 = ptrtoint ptr %ioaddr.i51 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %ioaddr.i51, align 16
  %add.ptr.i52 = getelementptr i8, ptr %22, i32 %add
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i52, i32 %20) #3, !srcloc !19
  br label %sdhci_writel.exit

sdhci_writel.exit:                                ; preds = %do.body.i, %if.then.i50
  call void @__sanitizer_cov_trace_const_cmp4(i32 52000001, i32 %clock)
  %cmp = icmp ult i32 %clock, 52000001
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %sdhci_writel.exit
  call void @__sanitizer_cov_trace_pc() #5
  tail call void @sdhci_set_clock(ptr noundef %host, i32 noundef %clock) #3
  br label %if.end15

if.else:                                          ; preds = %sdhci_writel.exit
  %add4 = add nuw nsw i32 %conv, 52
  %23 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %ops.i, align 4
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %24, align 4
  %tobool.not.i54 = icmp eq ptr %26, null
  br i1 %tobool.not.i54, label %if.else.i59, label %if.then.i56, !prof !13

if.then.i56:                                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #5
  %call.i55 = tail call i32 %26(ptr noundef %host, i32 noundef %add4) #3
  br label %sdhci_readl.exit61

if.else.i59:                                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #5
  %ioaddr.i57 = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 4
  %27 = ptrtoint ptr %ioaddr.i57 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %ioaddr.i57, align 16
  %add.ptr.i58 = getelementptr i8, ptr %28, i32 %add4
  %29 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i58) #3, !srcloc !16
  %30 = tail call i32 @llvm.bswap.i32(i32 %29) #3
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !17
  br label %sdhci_readl.exit61

sdhci_readl.exit61:                               ; preds = %if.else.i59, %if.then.i56
  %retval.0.i60 = phi i32 [ %call.i55, %if.then.i56 ], [ %30, %if.else.i59 ]
  %or = or i32 %retval.0.i60, 1
  %31 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %ops.i, align 4
  %write_l.i63 = getelementptr inbounds %struct.sdhci_ops, ptr %32, i32 0, i32 3
  %33 = ptrtoint ptr %write_l.i63 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %write_l.i63, align 4
  %tobool.not.i64 = icmp eq ptr %34, null
  br i1 %tobool.not.i64, label %do.body.i68, label %if.then.i65, !prof !13

if.then.i65:                                      ; preds = %sdhci_readl.exit61
  call void @__sanitizer_cov_trace_pc() #5
  tail call void %34(ptr noundef %host, i32 noundef %or, i32 noundef %add4) #3
  br label %sdhci_writel.exit69

do.body.i68:                                      ; preds = %sdhci_readl.exit61
  call void @__sanitizer_cov_trace_pc() #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !18
  tail call void @arm_heavy_mb() #3
  %35 = tail call i32 @llvm.bswap.i32(i32 %or) #3
  %ioaddr.i66 = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 4
  %36 = ptrtoint ptr %ioaddr.i66 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %ioaddr.i66, align 16
  %add.ptr.i67 = getelementptr i8, ptr %37, i32 %add4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i67, i32 %35) #3, !srcloc !19
  br label %sdhci_writel.exit69

sdhci_writel.exit69:                              ; preds = %do.body.i68, %if.then.i65
  call void @__sanitizer_cov_trace_const_cmp4(i32 100000000, i32 %clock)
  %cmp7 = icmp eq i32 %clock, 100000000
  %38 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %ops.i, align 4
  %write_l.i71 = getelementptr inbounds %struct.sdhci_ops, ptr %39, i32 0, i32 3
  %40 = ptrtoint ptr %write_l.i71 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %write_l.i71, align 4
  %tobool.not.i72 = icmp eq ptr %41, null
  br i1 %cmp7, label %if.then9, label %if.else10

if.then9:                                         ; preds = %sdhci_writel.exit69
  br i1 %tobool.not.i72, label %do.body.i76, label %if.then.i73, !prof !13

if.then.i73:                                      ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #5
  tail call void %41(ptr noundef %host, i32 noundef 4421, i32 noundef 4128) #3
  br label %sdhci_writel.exit77

do.body.i76:                                      ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !18
  tail call void @arm_heavy_mb() #3
  %ioaddr.i74 = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 4
  %42 = ptrtoint ptr %ioaddr.i74 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %ioaddr.i74, align 16
  %add.ptr.i75 = getelementptr i8, ptr %43, i32 4128
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i75, i32 1158742016) #3, !srcloc !19
  br label %sdhci_writel.exit77

sdhci_writel.exit77:                              ; preds = %do.body.i76, %if.then.i73
  %44 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %ops.i, align 4
  %write_l.i79 = getelementptr inbounds %struct.sdhci_ops, ptr %45, i32 0, i32 3
  %46 = ptrtoint ptr %write_l.i79 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %write_l.i79, align 4
  %tobool.not.i80 = icmp eq ptr %47, null
  br i1 %tobool.not.i80, label %do.body.i84, label %if.then.i81, !prof !13

if.then.i81:                                      ; preds = %sdhci_writel.exit77
  call void @__sanitizer_cov_trace_pc() #5
  tail call void %47(ptr noundef %host, i32 noundef 0, i32 noundef 4132) #3
  br label %if.end

do.body.i84:                                      ; preds = %sdhci_writel.exit77
  call void @__sanitizer_cov_trace_pc() #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !18
  tail call void @arm_heavy_mb() #3
  %ioaddr.i82 = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 4
  %48 = ptrtoint ptr %ioaddr.i82 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %ioaddr.i82, align 16
  %add.ptr.i83 = getelementptr i8, ptr %49, i32 4132
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i83, i32 0) #3, !srcloc !19
  br label %if.end

if.else10:                                        ; preds = %sdhci_writel.exit69
  br i1 %tobool.not.i72, label %do.body.i92, label %if.then.i89, !prof !13

if.then.i89:                                      ; preds = %if.else10
  call void @__sanitizer_cov_trace_pc() #5
  tail call void %41(ptr noundef %host, i32 noundef 4227, i32 noundef 4128) #3
  br label %sdhci_writel.exit93

do.body.i92:                                      ; preds = %if.else10
  call void @__sanitizer_cov_trace_pc() #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !18
  tail call void @arm_heavy_mb() #3
  %ioaddr.i90 = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 4
  %50 = ptrtoint ptr %ioaddr.i90 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %ioaddr.i90, align 16
  %add.ptr.i91 = getelementptr i8, ptr %51, i32 4128
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i91, i32 -2096103424) #3, !srcloc !19
  br label %sdhci_writel.exit93

sdhci_writel.exit93:                              ; preds = %do.body.i92, %if.then.i89
  %52 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %ops.i, align 4
  %write_l.i95 = getelementptr inbounds %struct.sdhci_ops, ptr %53, i32 0, i32 3
  %54 = ptrtoint ptr %write_l.i95 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %write_l.i95, align 4
  %tobool.not.i96 = icmp eq ptr %55, null
  br i1 %tobool.not.i96, label %do.body.i100, label %if.then.i97, !prof !13

if.then.i97:                                      ; preds = %sdhci_writel.exit93
  call void @__sanitizer_cov_trace_pc() #5
  tail call void %55(ptr noundef %host, i32 noundef 128, i32 noundef 4132) #3
  br label %if.end

do.body.i100:                                     ; preds = %sdhci_writel.exit93
  call void @__sanitizer_cov_trace_pc() #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !18
  tail call void @arm_heavy_mb() #3
  %ioaddr.i98 = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 4
  %56 = ptrtoint ptr %ioaddr.i98 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %ioaddr.i98, align 16
  %add.ptr.i99 = getelementptr i8, ptr %57, i32 4132
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i99, i32 -2147483648) #3, !srcloc !19
  br label %if.end

if.end:                                           ; preds = %do.body.i100, %if.then.i97, %do.body.i84, %if.then.i81
  %58 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %ops.i, align 4
  %60 = ptrtoint ptr %59 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %59, align 4
  %tobool.not.i103 = icmp eq ptr %61, null
  br i1 %tobool.not.i103, label %if.else.i108, label %if.then.i105, !prof !13

if.then.i105:                                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  %call.i104 = tail call i32 %61(ptr noundef %host, i32 noundef %add4) #3
  br label %sdhci_readl.exit110

if.else.i108:                                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  %ioaddr.i106 = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 4
  %62 = ptrtoint ptr %ioaddr.i106 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %ioaddr.i106, align 16
  %add.ptr.i107 = getelementptr i8, ptr %63, i32 %add4
  %64 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i107) #3, !srcloc !16
  %65 = tail call i32 @llvm.bswap.i32(i32 %64) #3
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !17
  br label %sdhci_readl.exit110

sdhci_readl.exit110:                              ; preds = %if.else.i108, %if.then.i105
  %retval.0.i109 = phi i32 [ %call.i104, %if.then.i105 ], [ %65, %if.else.i108 ]
  %and13 = and i32 %retval.0.i109, -2
  %66 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %ops.i, align 4
  %write_l.i112 = getelementptr inbounds %struct.sdhci_ops, ptr %67, i32 0, i32 3
  %68 = ptrtoint ptr %write_l.i112 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %write_l.i112, align 4
  %tobool.not.i113 = icmp eq ptr %69, null
  br i1 %tobool.not.i113, label %do.body.i117, label %if.then.i114, !prof !13

if.then.i114:                                     ; preds = %sdhci_readl.exit110
  call void @__sanitizer_cov_trace_pc() #5
  tail call void %69(ptr noundef %host, i32 noundef %and13, i32 noundef %add4) #3
  br label %sdhci_writel.exit118

do.body.i117:                                     ; preds = %sdhci_readl.exit110
  call void @__sanitizer_cov_trace_pc() #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !18
  tail call void @arm_heavy_mb() #3
  %70 = tail call i32 @llvm.bswap.i32(i32 %and13) #3
  %ioaddr.i115 = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 4
  %71 = ptrtoint ptr %ioaddr.i115 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %ioaddr.i115, align 16
  %add.ptr.i116 = getelementptr i8, ptr %72, i32 %add4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i116, i32 %70) #3, !srcloc !19
  br label %sdhci_writel.exit118

sdhci_writel.exit118:                             ; preds = %do.body.i117, %if.then.i114
  %73 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %ops.i, align 4
  %write_w.i = getelementptr inbounds %struct.sdhci_ops, ptr %74, i32 0, i32 4
  %75 = ptrtoint ptr %write_w.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %write_w.i, align 4
  %tobool.not.i120 = icmp eq ptr %76, null
  br i1 %tobool.not.i120, label %do.body.i124, label %if.then.i121, !prof !13

if.then.i121:                                     ; preds = %sdhci_writel.exit118
  call void @__sanitizer_cov_trace_pc() #5
  tail call void %76(ptr noundef %host, i16 noundef zeroext 37, i32 noundef 44) #3
  br label %if.end15

do.body.i124:                                     ; preds = %sdhci_writel.exit118
  call void @__sanitizer_cov_trace_pc() #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !20
  tail call void @arm_heavy_mb() #3
  %ioaddr.i122 = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 4
  %77 = ptrtoint ptr %ioaddr.i122 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %ioaddr.i122, align 16
  %add.ptr.i123 = getelementptr i8, ptr %78, i32 44
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i123, i16 9472) #3, !srcloc !21
  br label %if.end15

if.end15:                                         ; preds = %do.body.i124, %if.then.i121, %if.then
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sdhci_pci_enable_dma(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sdhci_set_bus_width(ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sdhci_reset(ptr noundef, i8 noundef zeroext) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sdhci_set_uhs_signaling(ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sdhci_set_clock(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #4 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 2)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #4 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 2)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #3 = { nounwind }
attributes #4 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #5 = { nomerge }

!llvm.asan.globals = !{!0, !2}
!llvm.module.flags = !{!4, !5, !6, !7, !8, !9, !10, !11}
!llvm.ident = !{!12}

!0 = !{ptr @sdhci_snps, !1, !"sdhci_snps", i1 false, i1 false}
!1 = !{!"../drivers/mmc/host/sdhci-pci-dwc-mshc.c", i32 82, i32 30}
!2 = !{ptr @sdhci_snps_ops, !3, !"sdhci_snps_ops", i1 false, i1 false}
!3 = !{!"../drivers/mmc/host/sdhci-pci-dwc-mshc.c", i32 74, i32 31}
!4 = !{i32 1, !"wchar_size", i32 2}
!5 = !{i32 1, !"min_enum_size", i32 4}
!6 = !{i32 8, !"branch-target-enforcement", i32 0}
!7 = !{i32 8, !"sign-return-address", i32 0}
!8 = !{i32 8, !"sign-return-address-all", i32 0}
!9 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!10 = !{i32 7, !"uwtable", i32 1}
!11 = !{i32 7, !"frame-pointer", i32 2}
!12 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!13 = !{!"branch_weights", i32 2000, i32 1}
!14 = !{i64 5813067}
!15 = !{i64 2154573614}
!16 = !{i64 5813905}
!17 = !{i64 2154572910}
!18 = !{i64 2154570940}
!19 = !{i64 5813487}
!20 = !{i64 2154571546}
!21 = !{i64 5812867}
