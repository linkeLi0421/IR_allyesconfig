; ModuleID = '/llk/IR_all_yes/drivers/bcma/host_soc.c_pt.bc'
source_filename = "../drivers/bcma/host_soc.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.bcma_host_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.bcma_bus = type { ptr, ptr, ptr, i32, i8, ptr, %struct.bcma_chipinfo, %struct.bcma_boardinfo, ptr, %struct.list_head, i8, i8, %struct.bcma_drv_cc, %struct.bcma_drv_cc_b, [2 x %struct.bcma_drv_pci], %struct.bcma_drv_pcie2, %struct.bcma_drv_mips, %struct.bcma_drv_gmac_cmn, %struct.ssb_sprom }
%struct.bcma_chipinfo = type { i16, i8, i8 }
%struct.bcma_boardinfo = type { i16, i16 }
%struct.list_head = type { ptr, ptr }
%struct.bcma_drv_cc = type { ptr, i32, i32, i32, i8, i16, %struct.bcma_chipcommon_pmu, %struct.bcma_pflash, %struct.bcma_sflash, %struct.bcma_nflash, i32, [4 x %struct.bcma_serial_port], i32, ptr, %struct.spinlock, %struct.gpio_chip }
%struct.bcma_chipcommon_pmu = type { ptr, i8, i32 }
%struct.bcma_pflash = type { i8 }
%struct.bcma_sflash = type { i8, i32, i16, i32 }
%struct.bcma_nflash = type { i8, i8 }
%struct.bcma_serial_port = type { ptr, i32, i32, i32, i32 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.gpio_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, ptr, i8, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, i8, i32, %struct.spinlock, i32, i32, %struct.gpio_irq_chip, ptr, ptr, i32, ptr }
%struct.gpio_irq_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.irq_domain_ops, ptr, i32, ptr, ptr, ptr, %union.anon.68, i32, ptr, ptr, i8, i8, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr }
%struct.irq_domain_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%union.anon.68 = type { ptr }
%struct.bcma_drv_cc_b = type { ptr, i8, ptr }
%struct.bcma_drv_pci = type { ptr, i8 }
%struct.bcma_drv_pcie2 = type { ptr, i16 }
%struct.bcma_drv_mips = type { ptr, i8 }
%struct.bcma_drv_gmac_cmn = type { ptr, %struct.mutex }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.ssb_sprom = type { i8, i8, [6 x i8], [6 x i8], [6 x i8], [6 x i8], i8, i8, i8, i8, i8, i8, i16, i16, i16, i16, i8, [2 x i8], i8, i8, i8, i8, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [4 x i8], [4 x i8], [4 x i8], [4 x i8], i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i16, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, [4 x %struct.ssb_sprom_core_pwr_info], %struct.anon.69, %struct.anon.70, [8 x i16], [8 x i16], [8 x i16], [8 x i16], i8, [3 x i8], [3 x i8], [3 x i8], [3 x i8], [3 x i8], [3 x i8], [3 x i8], [3 x i8], [3 x i8], [3 x i8], i8, i8, i8, i8, i16, i16, i16, i16, i8, i8, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i16, i16, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i8, i8 }
%struct.ssb_sprom_core_pwr_info = type { i8, i8, i8, i8, i8, i8, [4 x i16], [4 x i16], [4 x i16], [4 x i16] }
%struct.anon.69 = type { i8, i8, i8, i8 }
%struct.anon.70 = type { %struct.anon.71, %struct.anon.72 }
%struct.anon.71 = type { i8, i8, i8, i8, i8 }
%struct.anon.72 = type { i8, i8, i8, i8, i8 }
%struct.bcma_device = type { ptr, %struct.bcma_device_id, %struct.device, ptr, i32, i8, i8, i8, i32, [8 x i32], i32, ptr, ptr, ptr, %struct.list_head }
%struct.bcma_device_id = type { i16, i16, i8, i8 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }

@bcma_host_soc_ops = internal constant { %struct.bcma_host_ops, [56 x i8] } { %struct.bcma_host_ops { ptr @bcma_host_soc_read8, ptr @bcma_host_soc_read16, ptr @bcma_host_soc_read32, ptr @bcma_host_soc_write8, ptr @bcma_host_soc_write16, ptr @bcma_host_soc_write32, ptr @bcma_host_soc_block_read, ptr @bcma_host_soc_block_write, ptr @bcma_host_soc_aread32, ptr @bcma_host_soc_awrite32 }, [56 x i8] zeroinitializer }, align 32
@bcma_host_soc_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @bcma_host_soc_probe, ptr @bcma_host_soc_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str.2, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @bcma_host_soc_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@.str = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"drivers/bcma/host_soc.c\00", [40 x i8] zeroinitializer }, align 32
@bcma_host_soc_aread32.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.1 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Accessed core has no wrapper/agent\0A\00", [60 x i8] zeroinitializer }, align 32
@bcma_host_soc_awrite32.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.2 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"bcma-host-soc\00", [18 x i8] zeroinitializer }, align 32
@bcma_host_soc_of_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"brcm,bus-axi\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 8, i64 1, i64 2, i64 4]
@__sancov_gen_cov_switch_values.3 = internal global [5 x i64] [i64 3, i64 8, i64 1, i64 2, i64 4]
@___asan_gen_.4 = private unnamed_addr constant [18 x i8] c"bcma_host_soc_ops\00", align 1
@___asan_gen_.6 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.20, i32 153, i32 35 }
@___asan_gen_.7 = private unnamed_addr constant [21 x i8] c"bcma_host_soc_driver\00", align 1
@___asan_gen_.9 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.20, i32 260, i32 31 }
@___asan_gen_.12 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.20, i32 69, i32 3 }
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.20, i32 140, i32 6 }
@___asan_gen_.16 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.20, i32 262, i32 11 }
@___asan_gen_.19 = private unnamed_addr constant [23 x i8] c"bcma_host_soc_of_match\00", align 1
@___asan_gen_.20 = private constant [27 x i8] c"../drivers/bcma/host_soc.c\00", align 1
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.20, i32 254, i32 34 }
@llvm.compiler.used = appending global [7 x ptr] [ptr @bcma_host_soc_unregister_driver, ptr @bcma_host_soc_ops, ptr @bcma_host_soc_driver, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @bcma_host_soc_of_match], section "llvm.metadata"
@0 = internal global [6 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcma_host_soc_ops to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcma_host_soc_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcma_host_soc_of_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local i32 @bcma_host_soc_register(ptr noundef %soc) local_unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @ioremap(i32 noundef 402653184, i32 noundef 4096) #5
  %mmio = getelementptr inbounds %struct.bcma_bus, ptr %soc, i32 0, i32 1
  %0 = ptrtoint ptr %mmio to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %call, ptr %mmio, align 4
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %hosttype = getelementptr inbounds %struct.bcma_bus, ptr %soc, i32 0, i32 3
  %1 = ptrtoint ptr %hosttype to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 2, ptr %hosttype, align 4
  %ops = getelementptr inbounds %struct.bcma_bus, ptr %soc, i32 0, i32 2
  %2 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @bcma_host_soc_ops, ptr %ops, align 4
  tail call void @bcma_init_bus(ptr noundef %soc) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ioremap(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @bcma_init_bus(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local i32 @bcma_host_soc_init(ptr noundef %soc) local_unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @bcma_bus_early_register(ptr noundef %soc) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %mmio = getelementptr inbounds %struct.bcma_bus, ptr %soc, i32 0, i32 1
  %0 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mmio, align 4
  tail call void @iounmap(ptr noundef %1) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 %call
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @bcma_bus_early_register(ptr noundef) local_unnamed_addr #2 section ".init.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @iounmap(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local i32 @bcma_host_soc_register_driver() local_unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @bcma_host_soc_driver, ptr noundef null) #5
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local void @bcma_host_soc_unregister_driver() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @platform_driver_unregister(ptr noundef nonnull @bcma_host_soc_driver) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i8 @bcma_host_soc_read8(ptr nocapture noundef readonly %core, i16 noundef zeroext %offset) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %io_addr = getelementptr inbounds %struct.bcma_device, ptr %core, i32 0, i32 11
  %0 = ptrtoint ptr %io_addr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %io_addr, align 4
  %conv = zext i16 %offset to i32
  %add.ptr = getelementptr i8, ptr %1, i32 %conv
  %2 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr) #5, !srcloc !24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !25
  ret i8 %2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i16 @bcma_host_soc_read16(ptr nocapture noundef readonly %core, i16 noundef zeroext %offset) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %io_addr = getelementptr inbounds %struct.bcma_device, ptr %core, i32 0, i32 11
  %0 = ptrtoint ptr %io_addr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %io_addr, align 4
  %conv = zext i16 %offset to i32
  %add.ptr = getelementptr i8, ptr %1, i32 %conv
  %2 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr) #5, !srcloc !26
  %3 = tail call i16 @llvm.bswap.i16(i16 %2)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !27
  ret i16 %3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bcma_host_soc_read32(ptr nocapture noundef readonly %core, i16 noundef zeroext %offset) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %io_addr = getelementptr inbounds %struct.bcma_device, ptr %core, i32 0, i32 11
  %0 = ptrtoint ptr %io_addr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %io_addr, align 4
  %conv = zext i16 %offset to i32
  %add.ptr = getelementptr i8, ptr %1, i32 %conv
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #5, !srcloc !28
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !29
  ret i32 %3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @bcma_host_soc_write8(ptr nocapture noundef readonly %core, i16 noundef zeroext %offset, i8 noundef zeroext %value) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !30
  tail call void @arm_heavy_mb() #5
  %io_addr = getelementptr inbounds %struct.bcma_device, ptr %core, i32 0, i32 11
  %0 = ptrtoint ptr %io_addr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %io_addr, align 4
  %conv = zext i16 %offset to i32
  %add.ptr = getelementptr i8, ptr %1, i32 %conv
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr, i8 %value) #5, !srcloc !31
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @bcma_host_soc_write16(ptr nocapture noundef readonly %core, i16 noundef zeroext %offset, i16 noundef zeroext %value) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !32
  tail call void @arm_heavy_mb() #5
  %0 = tail call i16 @llvm.bswap.i16(i16 %value)
  %io_addr = getelementptr inbounds %struct.bcma_device, ptr %core, i32 0, i32 11
  %1 = ptrtoint ptr %io_addr to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %io_addr, align 4
  %conv = zext i16 %offset to i32
  %add.ptr = getelementptr i8, ptr %2, i32 %conv
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr, i16 %0) #5, !srcloc !33
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @bcma_host_soc_write32(ptr nocapture noundef readonly %core, i16 noundef zeroext %offset, i32 noundef %value) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !34
  tail call void @arm_heavy_mb() #5
  %0 = tail call i32 @llvm.bswap.i32(i32 %value)
  %io_addr = getelementptr inbounds %struct.bcma_device, ptr %core, i32 0, i32 11
  %1 = ptrtoint ptr %io_addr to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %io_addr, align 4
  %conv = zext i16 %offset to i32
  %add.ptr = getelementptr i8, ptr %2, i32 %conv
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %0) #5, !srcloc !35
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @bcma_host_soc_block_read(ptr nocapture noundef readonly %core, ptr nocapture noundef writeonly %buffer, i32 noundef %count, i16 noundef zeroext %offset, i8 noundef zeroext %reg_width) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %io_addr = getelementptr inbounds %struct.bcma_device, ptr %core, i32 0, i32 11
  %0 = ptrtoint ptr %io_addr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %io_addr, align 4
  %conv = zext i16 %offset to i32
  %add.ptr = getelementptr i8, ptr %1, i32 %conv
  %2 = zext i8 %reg_width to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i8 %reg_width, label %do.end83 [
    i8 1, label %while.cond.preheader
    i8 2, label %sw.bb2
    i8 4, label %sw.bb30
  ]

while.cond.preheader:                             ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count)
  %tobool.not122 = icmp eq i32 %count, 0
  br i1 %tobool.not122, label %while.cond.preheader.sw.epilog_crit_edge, label %while.cond.preheader.while.body_crit_edge

while.cond.preheader.while.body_crit_edge:        ; preds = %while.cond.preheader
  br label %while.body

while.cond.preheader.sw.epilog_crit_edge:         ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

while.body:                                       ; preds = %while.body.while.body_crit_edge, %while.cond.preheader.while.body_crit_edge
  %count.addr.0124 = phi i32 [ %dec, %while.body.while.body_crit_edge ], [ %count, %while.cond.preheader.while.body_crit_edge ]
  %buf.0123 = phi ptr [ %incdec.ptr, %while.body.while.body_crit_edge ], [ %buffer, %while.cond.preheader.while.body_crit_edge ]
  %3 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr) #5, !srcloc !24
  %4 = ptrtoint ptr %buf.0123 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %3, ptr %buf.0123, align 1
  %incdec.ptr = getelementptr i8, ptr %buf.0123, i32 1
  %dec = add i32 %count.addr.0124, -1
  %tobool.not = icmp eq i32 %dec, 0
  br i1 %tobool.not, label %while.body.sw.epilog_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body

while.body.sw.epilog_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry
  %and = and i32 %count, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool4.not = icmp eq i32 %and, 0
  br i1 %tobool4.not, label %if.end, label %if.end.thread, !prof !36

if.end.thread:                                    ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 69, i32 noundef 9, ptr noundef null) #5
  br label %while.body26.preheader

if.end:                                           ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count)
  %tobool25.not119 = icmp eq i32 %count, 0
  br i1 %tobool25.not119, label %if.end.sw.epilog_crit_edge, label %if.end.while.body26.preheader_crit_edge

if.end.while.body26.preheader_crit_edge:          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body26.preheader

if.end.sw.epilog_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

while.body26.preheader:                           ; preds = %if.end.while.body26.preheader_crit_edge, %if.end.thread
  br label %while.body26

while.body26:                                     ; preds = %while.body26.while.body26_crit_edge, %while.body26.preheader
  %count.addr.1121 = phi i32 [ %sub, %while.body26.while.body26_crit_edge ], [ %count, %while.body26.preheader ]
  %buf3.0120 = phi ptr [ %incdec.ptr28, %while.body26.while.body26_crit_edge ], [ %buffer, %while.body26.preheader ]
  %5 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr) #5, !srcloc !26
  %6 = ptrtoint ptr %buf3.0120 to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 %5, ptr %buf3.0120, align 2
  %incdec.ptr28 = getelementptr i16, ptr %buf3.0120, i32 1
  %sub = add i32 %count.addr.1121, -2
  %tobool25.not = icmp eq i32 %sub, 0
  br i1 %tobool25.not, label %while.body26.sw.epilog_crit_edge, label %while.body26.while.body26_crit_edge

while.body26.while.body26_crit_edge:              ; preds = %while.body26
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body26

while.body26.sw.epilog_crit_edge:                 ; preds = %while.body26
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

sw.bb30:                                          ; preds = %entry
  %and33 = and i32 %count, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and33)
  %tobool34.not = icmp eq i32 %and33, 0
  br i1 %tobool34.not, label %if.end56, label %if.end56.thread, !prof !36

if.end56.thread:                                  ; preds = %sw.bb30
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 80, i32 noundef 9, ptr noundef null) #5
  br label %while.body66.preheader

if.end56:                                         ; preds = %sw.bb30
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count)
  %tobool65.not116 = icmp eq i32 %count, 0
  br i1 %tobool65.not116, label %if.end56.sw.epilog_crit_edge, label %if.end56.while.body66.preheader_crit_edge

if.end56.while.body66.preheader_crit_edge:        ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body66.preheader

if.end56.sw.epilog_crit_edge:                     ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

while.body66.preheader:                           ; preds = %if.end56.while.body66.preheader_crit_edge, %if.end56.thread
  br label %while.body66

while.body66:                                     ; preds = %while.body66.while.body66_crit_edge, %while.body66.preheader
  %count.addr.2118 = phi i32 [ %sub69, %while.body66.while.body66_crit_edge ], [ %count, %while.body66.preheader ]
  %buf31.0117 = phi ptr [ %incdec.ptr68, %while.body66.while.body66_crit_edge ], [ %buffer, %while.body66.preheader ]
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #5, !srcloc !28
  %8 = ptrtoint ptr %buf31.0117 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %buf31.0117, align 4
  %incdec.ptr68 = getelementptr i32, ptr %buf31.0117, i32 1
  %sub69 = add i32 %count.addr.2118, -4
  %tobool65.not = icmp eq i32 %sub69, 0
  br i1 %tobool65.not, label %while.body66.sw.epilog_crit_edge, label %while.body66.while.body66_crit_edge

while.body66.while.body66_crit_edge:              ; preds = %while.body66
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body66

while.body66.sw.epilog_crit_edge:                 ; preds = %while.body66
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

do.end83:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 89, i32 noundef 9, ptr noundef null) #5
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end83, %while.body66.sw.epilog_crit_edge, %if.end56.sw.epilog_crit_edge, %while.body26.sw.epilog_crit_edge, %if.end.sw.epilog_crit_edge, %while.body.sw.epilog_crit_edge, %while.cond.preheader.sw.epilog_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @bcma_host_soc_block_write(ptr nocapture noundef readonly %core, ptr nocapture noundef readonly %buffer, i32 noundef %count, i16 noundef zeroext %offset, i8 noundef zeroext %reg_width) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %io_addr = getelementptr inbounds %struct.bcma_device, ptr %core, i32 0, i32 11
  %0 = ptrtoint ptr %io_addr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %io_addr, align 4
  %conv = zext i16 %offset to i32
  %add.ptr = getelementptr i8, ptr %1, i32 %conv
  %2 = zext i8 %reg_width to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.3)
  switch i8 %reg_width, label %do.end81 [
    i8 1, label %while.cond.preheader
    i8 2, label %sw.bb2
    i8 4, label %sw.bb29
  ]

while.cond.preheader:                             ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count)
  %tobool.not120 = icmp eq i32 %count, 0
  br i1 %tobool.not120, label %while.cond.preheader.sw.epilog_crit_edge, label %while.cond.preheader.while.body_crit_edge

while.cond.preheader.while.body_crit_edge:        ; preds = %while.cond.preheader
  br label %while.body

while.cond.preheader.sw.epilog_crit_edge:         ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

while.body:                                       ; preds = %while.body.while.body_crit_edge, %while.cond.preheader.while.body_crit_edge
  %count.addr.0122 = phi i32 [ %dec, %while.body.while.body_crit_edge ], [ %count, %while.cond.preheader.while.body_crit_edge ]
  %buf.0121 = phi ptr [ %incdec.ptr, %while.body.while.body_crit_edge ], [ %buffer, %while.cond.preheader.while.body_crit_edge ]
  %3 = ptrtoint ptr %buf.0121 to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %buf.0121, align 1
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr, i8 %4) #5, !srcloc !31
  %incdec.ptr = getelementptr i8, ptr %buf.0121, i32 1
  %dec = add i32 %count.addr.0122, -1
  %tobool.not = icmp eq i32 %dec, 0
  br i1 %tobool.not, label %while.body.sw.epilog_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body

while.body.sw.epilog_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry
  %and = and i32 %count, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool4.not = icmp eq i32 %and, 0
  br i1 %tobool4.not, label %if.end, label %if.end.thread, !prof !36

if.end.thread:                                    ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 113, i32 noundef 9, ptr noundef null) #5
  br label %while.body26.preheader

if.end:                                           ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count)
  %tobool25.not117 = icmp eq i32 %count, 0
  br i1 %tobool25.not117, label %if.end.sw.epilog_crit_edge, label %if.end.while.body26.preheader_crit_edge

if.end.while.body26.preheader_crit_edge:          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body26.preheader

if.end.sw.epilog_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

while.body26.preheader:                           ; preds = %if.end.while.body26.preheader_crit_edge, %if.end.thread
  br label %while.body26

while.body26:                                     ; preds = %while.body26.while.body26_crit_edge, %while.body26.preheader
  %count.addr.1119 = phi i32 [ %sub, %while.body26.while.body26_crit_edge ], [ %count, %while.body26.preheader ]
  %buf3.0118 = phi ptr [ %incdec.ptr27, %while.body26.while.body26_crit_edge ], [ %buffer, %while.body26.preheader ]
  %5 = ptrtoint ptr %buf3.0118 to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %buf3.0118, align 2
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr, i16 %6) #5, !srcloc !33
  %incdec.ptr27 = getelementptr i16, ptr %buf3.0118, i32 1
  %sub = add i32 %count.addr.1119, -2
  %tobool25.not = icmp eq i32 %sub, 0
  br i1 %tobool25.not, label %while.body26.sw.epilog_crit_edge, label %while.body26.while.body26_crit_edge

while.body26.while.body26_crit_edge:              ; preds = %while.body26
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body26

while.body26.sw.epilog_crit_edge:                 ; preds = %while.body26
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

sw.bb29:                                          ; preds = %entry
  %and32 = and i32 %count, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and32)
  %tobool33.not = icmp eq i32 %and32, 0
  br i1 %tobool33.not, label %if.end55, label %if.end55.thread, !prof !36

if.end55.thread:                                  ; preds = %sw.bb29
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 124, i32 noundef 9, ptr noundef null) #5
  br label %while.body65.preheader

if.end55:                                         ; preds = %sw.bb29
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count)
  %tobool64.not114 = icmp eq i32 %count, 0
  br i1 %tobool64.not114, label %if.end55.sw.epilog_crit_edge, label %if.end55.while.body65.preheader_crit_edge

if.end55.while.body65.preheader_crit_edge:        ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body65.preheader

if.end55.sw.epilog_crit_edge:                     ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

while.body65.preheader:                           ; preds = %if.end55.while.body65.preheader_crit_edge, %if.end55.thread
  br label %while.body65

while.body65:                                     ; preds = %while.body65.while.body65_crit_edge, %while.body65.preheader
  %count.addr.2116 = phi i32 [ %sub67, %while.body65.while.body65_crit_edge ], [ %count, %while.body65.preheader ]
  %buf30.0115 = phi ptr [ %incdec.ptr66, %while.body65.while.body65_crit_edge ], [ %buffer, %while.body65.preheader ]
  %7 = ptrtoint ptr %buf30.0115 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %buf30.0115, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %8) #5, !srcloc !35
  %incdec.ptr66 = getelementptr i32, ptr %buf30.0115, i32 1
  %sub67 = add i32 %count.addr.2116, -4
  %tobool64.not = icmp eq i32 %sub67, 0
  br i1 %tobool64.not, label %while.body65.sw.epilog_crit_edge, label %while.body65.while.body65_crit_edge

while.body65.while.body65_crit_edge:              ; preds = %while.body65
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body65

while.body65.sw.epilog_crit_edge:                 ; preds = %while.body65
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

do.end81:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 133, i32 noundef 9, ptr noundef null) #5
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end81, %while.body65.sw.epilog_crit_edge, %if.end55.sw.epilog_crit_edge, %while.body26.sw.epilog_crit_edge, %if.end.sw.epilog_crit_edge, %while.body.sw.epilog_crit_edge, %while.cond.preheader.sw.epilog_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bcma_host_soc_aread32(ptr nocapture noundef readonly %core, i16 noundef zeroext %offset) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %io_wrap = getelementptr inbounds %struct.bcma_device, ptr %core, i32 0, i32 12
  %0 = ptrtoint ptr %io_wrap to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %io_wrap, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %land.rhs, label %if.end39

land.rhs:                                         ; preds = %entry
  %.b46 = load i1, ptr @bcma_host_soc_aread32.__already_done, align 1
  br i1 %.b46, label %land.rhs.return_crit_edge, label %if.then, !prof !36

land.rhs.return_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

if.then:                                          ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #7
  store i1 true, ptr @bcma_host_soc_aread32.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 140, i32 noundef 9, ptr noundef nonnull @.str.1) #5
  br label %return

if.end39:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %conv = zext i16 %offset to i32
  %add.ptr = getelementptr i8, ptr %1, i32 %conv
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #5, !srcloc !28
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !37
  br label %return

return:                                           ; preds = %if.end39, %if.then, %land.rhs.return_crit_edge
  %retval.0 = phi i32 [ %3, %if.end39 ], [ -1, %if.then ], [ -1, %land.rhs.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @bcma_host_soc_awrite32(ptr nocapture noundef readonly %core, i16 noundef zeroext %offset, i32 noundef %value) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %io_wrap = getelementptr inbounds %struct.bcma_device, ptr %core, i32 0, i32 12
  %0 = ptrtoint ptr %io_wrap to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %io_wrap, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %land.rhs, label %do.body40.critedge

land.rhs:                                         ; preds = %entry
  %.b47 = load i1, ptr @bcma_host_soc_awrite32.__already_done, align 1
  br i1 %.b47, label %land.rhs.return_crit_edge, label %if.then, !prof !36

land.rhs.return_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

if.then:                                          ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #7
  store i1 true, ptr @bcma_host_soc_awrite32.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 148, i32 noundef 9, ptr noundef nonnull @.str.1) #5
  br label %return

do.body40.critedge:                               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !38
  tail call void @arm_heavy_mb() #5
  %2 = tail call i32 @llvm.bswap.i32(i32 %value)
  %3 = ptrtoint ptr %io_wrap to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %io_wrap, align 8
  %conv = zext i16 %offset to i32
  %add.ptr = getelementptr i8, ptr %4, i32 %conv
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %2) #5, !srcloc !35
  br label %return

return:                                           ; preds = %do.body40.critedge, %if.then, %land.rhs.return_crit_edge
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bcma_host_soc_probe(ptr noundef %pdev) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 8
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 1268, i32 noundef 3520) #5
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %dev1, ptr %call.i, align 4
  %call3 = tail call ptr @of_iomap(ptr noundef %1, i32 noundef 0) #5
  %mmio = getelementptr inbounds %struct.bcma_bus, ptr %call.i, i32 0, i32 1
  %3 = ptrtoint ptr %mmio to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call3, ptr %mmio, align 4
  %tobool5.not = icmp eq ptr %call3, null
  br i1 %tobool5.not, label %if.end.cleanup_crit_edge, label %if.end7

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %hosttype = getelementptr inbounds %struct.bcma_bus, ptr %call.i, i32 0, i32 3
  %4 = ptrtoint ptr %hosttype to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 2, ptr %hosttype, align 4
  %ops = getelementptr inbounds %struct.bcma_bus, ptr %call.i, i32 0, i32 2
  %5 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @bcma_host_soc_ops, ptr %ops, align 4
  tail call void @bcma_init_bus(ptr noundef nonnull %call.i) #5
  %call8 = tail call i32 @bcma_bus_register(ptr noundef nonnull %call.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %if.end11, label %err_unmap_mmio

if.end11:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #7
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %6 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  br label %cleanup

err_unmap_mmio:                                   ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #7
  %7 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %mmio, align 4
  tail call void @iounmap(ptr noundef %8) #5
  br label %cleanup

cleanup:                                          ; preds = %err_unmap_mmio, %if.end11, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call8, %err_unmap_mmio ], [ 0, %if.end11 ], [ -12, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bcma_host_soc_remove(ptr nocapture noundef %pdev) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  tail call void @bcma_bus_unregister(ptr noundef %1) #5
  %mmio = getelementptr inbounds %struct.bcma_bus, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mmio, align 4
  tail call void @iounmap(ptr noundef %3) #5
  %4 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %driver_data.i.i, align 4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_iomap(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bcma_bus_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @bcma_bus_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 6)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 6)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !11, !13}
!llvm.module.flags = !{!15, !16, !17, !18, !19, !20, !21, !22}
!llvm.ident = !{!23}

!0 = !{ptr @bcma_host_soc_ops, !1, !"bcma_host_soc_ops", i1 false, i1 false}
!1 = !{!"../drivers/bcma/host_soc.c", i32 153, i32 35}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/bcma/host_soc.c", i32 69, i32 3}
!4 = distinct !{null, !5, !"__already_done", i1 false, i1 false}
!5 = !{!"../drivers/bcma/host_soc.c", i32 140, i32 6}
!6 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!7 = distinct !{null, !8, !"__already_done", i1 false, i1 false}
!8 = !{!"../drivers/bcma/host_soc.c", i32 148, i32 6}
!9 = !{ptr @.str.2, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../drivers/bcma/host_soc.c", i32 262, i32 11}
!11 = !{ptr @bcma_host_soc_driver, !12, !"bcma_host_soc_driver", i1 false, i1 false}
!12 = !{!"../drivers/bcma/host_soc.c", i32 260, i32 31}
!13 = !{ptr @bcma_host_soc_of_match, !14, !"bcma_host_soc_of_match", i1 false, i1 false}
!14 = !{!"../drivers/bcma/host_soc.c", i32 254, i32 34}
!15 = !{i32 1, !"wchar_size", i32 2}
!16 = !{i32 1, !"min_enum_size", i32 4}
!17 = !{i32 8, !"branch-target-enforcement", i32 0}
!18 = !{i32 8, !"sign-return-address", i32 0}
!19 = !{i32 8, !"sign-return-address-all", i32 0}
!20 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!21 = !{i32 7, !"uwtable", i32 1}
!22 = !{i32 7, !"frame-pointer", i32 2}
!23 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!24 = !{i64 5005486}
!25 = !{i64 2154872074}
!26 = !{i64 5004868}
!27 = !{i64 2154872580}
!28 = !{i64 5005706}
!29 = !{i64 2154873086}
!30 = !{i64 2154873307}
!31 = !{i64 5005091}
!32 = !{i64 2154873588}
!33 = !{i64 5004668}
!34 = !{i64 2154873995}
!35 = !{i64 5005288}
!36 = !{!"branch_weights", i32 2000, i32 1}
!37 = !{i64 2154878843}
!38 = !{i64 2154880188}
