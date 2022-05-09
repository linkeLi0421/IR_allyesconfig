; ModuleID = '/llk/IR_all_yes/drivers/spi/spi-iproc-qspi.c_pt.bc'
source_filename = "../drivers/spi/spi-iproc-qspi.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
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
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.list_head = type { ptr, ptr }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.bcm_iproc_intc = type { %struct.bcm_qspi_soc_intc, ptr, ptr, ptr, %struct.spinlock, i8 }
%struct.bcm_qspi_soc_intc = type { ptr, ptr, ptr }

@__initcall__kmod_spi_iproc_qspi__183_151_bcm_iproc_driver_init6 = internal global ptr @bcm_iproc_driver_init, section ".initcall6.init", align 4
@bcm_iproc_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @bcm_iproc_probe, ptr @bcm_iproc_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @bcm_iproc_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @bcm_qspi_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_bcm_iproc_driver_exit = internal global ptr @bcm_iproc_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file184 = internal constant [47 x i8] c"spi_iproc_qspi.file=drivers/spi/spi-iproc-qspi\00", section ".modinfo", align 1
@__UNIQUE_ID_license185 = internal constant [30 x i8] c"spi_iproc_qspi.license=GPL v2\00", section ".modinfo", align 1
@__UNIQUE_ID_author186 = internal constant [33 x i8] c"spi_iproc_qspi.author=Kamal Dasu\00", section ".modinfo", align 1
@__UNIQUE_ID_description187 = internal constant [68 x i8] c"spi_iproc_qspi.description=SPI flash driver for Broadcom iProc SoCs\00", section ".modinfo", align 1
@.str = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"bcm_iproc\00", [22 x i8] zeroinitializer }, align 32
@bcm_iproc_of_match = internal constant { [3 x %struct.of_device_id], [148 x i8] } { [3 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"brcm,spi-nsp-qspi\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"brcm,spi-ns2-qspi\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [148 x i8] zeroinitializer }, align 32
@bcm_qspi_pm_ops = external dso_local constant %struct.dev_pm_ops, align 4
@bcm_iproc_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"&priv->soclock\00", [17 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"intr_regs\00", [22 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"intr_status_reg\00", [16 x i8] zeroinitializer }, align 32
@switch.table.bcm_iproc_qspi_int_set = internal constant { [7 x i32], [36 x i8] } { [7 x i32] [i32 128, i32 124, i32 0, i32 88, i32 0, i32 0, i32 508], [36 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 32, i64 1, i64 2, i64 4, i64 7]
@___asan_gen_.4 = private unnamed_addr constant [17 x i8] c"bcm_iproc_driver\00", align 1
@___asan_gen_.6 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.23, i32 142, i32 31 }
@___asan_gen_.9 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.23, i32 146, i32 12 }
@___asan_gen_.10 = private unnamed_addr constant [19 x i8] c"bcm_iproc_of_match\00", align 1
@___asan_gen_.12 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.23, i32 135, i32 34 }
@___asan_gen_.13 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.23, i32 105, i32 2 }
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.23, i32 107, i32 59 }
@___asan_gen_.22 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.23 = private constant [32 x i8] c"../drivers/spi/spi-iproc-qspi.c\00", align 1
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.23, i32 113, i32 9 }
@___asan_gen_.25 = private unnamed_addr constant [36 x i8] c"switch.table.bcm_iproc_qspi_int_set\00", align 1
@llvm.compiler.used = appending global [15 x ptr] [ptr @__UNIQUE_ID_author186, ptr @__UNIQUE_ID_description187, ptr @__UNIQUE_ID_file184, ptr @__UNIQUE_ID_license185, ptr @__exitcall_bcm_iproc_driver_exit, ptr @__initcall__kmod_spi_iproc_qspi__183_151_bcm_iproc_driver_init6, ptr @bcm_iproc_driver_exit, ptr @bcm_iproc_driver, ptr @.str, ptr @bcm_iproc_of_match, ptr @bcm_iproc_probe.__key, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @switch.table.bcm_iproc_qspi_int_set], section "llvm.metadata"
@0 = internal global [8 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm_iproc_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm_iproc_of_match to i32), i32 588, i32 736, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm_iproc_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.bcm_iproc_qspi_int_set to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @bcm_iproc_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @bcm_iproc_driver, ptr noundef null) #4
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @bcm_iproc_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @platform_driver_unregister(ptr noundef nonnull @bcm_iproc_driver) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bcm_iproc_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 72, i32 noundef 3520) #4
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %pdev3 = getelementptr inbounds %struct.bcm_iproc_intc, ptr %call.i, i32 0, i32 1
  %0 = ptrtoint ptr %pdev3 to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %pdev, ptr %pdev3, align 4
  %soclock = getelementptr inbounds %struct.bcm_iproc_intc, ptr %call.i, i32 0, i32 4
  tail call void @__raw_spin_lock_init(ptr noundef %soclock, ptr noundef nonnull @.str.1, ptr noundef nonnull @bcm_iproc_probe.__key, i16 noundef signext 3) #4
  %call5 = tail call ptr @platform_get_resource_byname(ptr noundef %pdev, i32 noundef 512, ptr noundef nonnull @.str.2) #4
  %call6 = tail call ptr @devm_ioremap_resource(ptr noundef %dev1, ptr noundef %call5) #4
  %int_reg = getelementptr inbounds %struct.bcm_iproc_intc, ptr %call.i, i32 0, i32 2
  %1 = ptrtoint ptr %int_reg to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call6, ptr %int_reg, align 4
  %cmp.i = icmp ugt ptr %call6, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then9, label %if.end12

if.then9:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %2 = ptrtoint ptr %call6 to i32
  br label %cleanup

if.end12:                                         ; preds = %if.end
  %call13 = tail call ptr @platform_get_resource_byname(ptr noundef %pdev, i32 noundef 512, ptr noundef nonnull @.str.3) #4
  %call14 = tail call ptr @devm_ioremap_resource(ptr noundef %dev1, ptr noundef %call13) #4
  %int_status_reg = getelementptr inbounds %struct.bcm_iproc_intc, ptr %call.i, i32 0, i32 3
  %3 = ptrtoint ptr %int_status_reg to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call14, ptr %int_status_reg, align 4
  %cmp.i49 = icmp ugt ptr %call14, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i49, label %if.then17, label %if.end20

if.then17:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #6
  %4 = ptrtoint ptr %call14 to i32
  br label %cleanup

if.end20:                                         ; preds = %if.end12
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %5 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %of_node, align 8
  %call21 = tail call zeroext i1 @of_device_is_big_endian(ptr noundef %6) #4
  %big_endian = getelementptr inbounds %struct.bcm_iproc_intc, ptr %call.i, i32 0, i32 5
  %frombool = zext i1 %call21 to i8
  %7 = ptrtoint ptr %big_endian to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %frombool, ptr %big_endian, align 4
  tail call void @bcm_iproc_qspi_int_ack(ptr noundef nonnull %call.i, i32 noundef 7)
  %8 = ptrtoint ptr %int_reg to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %int_reg, align 4
  %call4.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %soclock) #4
  %10 = ptrtoint ptr %big_endian to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %big_endian, align 4, !range !32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool.not.i = icmp eq i8 %11, 0
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %9) #4
  br i1 %tobool.not.i, label %if.else.i.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !33
  br label %bcm_qspi_readl.exit.i

if.else.i.i:                                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #6
  %13 = tail call i32 @llvm.bswap.i32(i32 %12) #4
  br label %bcm_qspi_readl.exit.i

bcm_qspi_readl.exit.i:                            ; preds = %if.else.i.i, %if.then.i.i
  %retval.0.i21.i = phi i32 [ %12, %if.then.i.i ], [ %13, %if.else.i.i ]
  %and.i = and i32 %retval.0.i21.i, -509
  %14 = ptrtoint ptr %big_endian to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %big_endian, align 4, !range !32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool11.not.i = icmp eq i8 %15, 0
  br i1 %tobool11.not.i, label %if.else.i22.i, label %do.body.i.i

do.body.i.i:                                      ; preds = %bcm_qspi_readl.exit.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !34
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %9, i32 %and.i) #4, !srcloc !35
  br label %bcm_iproc_qspi_int_set.exit

if.else.i22.i:                                    ; preds = %bcm_qspi_readl.exit.i
  call void @__sanitizer_cov_trace_pc() #6
  %16 = tail call i32 @llvm.bswap.i32(i32 %and.i) #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %9, i32 %16) #4, !srcloc !35
  br label %bcm_iproc_qspi_int_set.exit

bcm_iproc_qspi_int_set.exit:                      ; preds = %if.else.i22.i, %do.body.i.i
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %soclock, i32 noundef %call4.i) #4
  %17 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr @bcm_iproc_qspi_int_ack, ptr %call.i, align 4
  %bcm_qspi_int_set = getelementptr inbounds %struct.bcm_qspi_soc_intc, ptr %call.i, i32 0, i32 1
  %18 = ptrtoint ptr %bcm_qspi_int_set to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr @bcm_iproc_qspi_int_set, ptr %bcm_qspi_int_set, align 4
  %bcm_qspi_get_int_status = getelementptr inbounds %struct.bcm_qspi_soc_intc, ptr %call.i, i32 0, i32 2
  %19 = ptrtoint ptr %bcm_qspi_get_int_status to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr @bcm_iproc_qspi_get_l2_int_status, ptr %bcm_qspi_get_int_status, align 4
  %call22 = tail call i32 @bcm_qspi_probe(ptr noundef %pdev, ptr noundef nonnull %call.i) #4
  br label %cleanup

cleanup:                                          ; preds = %bcm_iproc_qspi_int_set.exit, %if.then17, %if.then9, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %2, %if.then9 ], [ %4, %if.then17 ], [ %call22, %bcm_iproc_qspi_int_set.exit ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bcm_iproc_remove(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @bcm_qspi_remove(ptr noundef %pdev) #4
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource_byname(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap_resource(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @of_device_is_big_endian(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @bcm_iproc_qspi_int_ack(ptr nocapture noundef readonly %soc_intc, i32 noundef %type) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %int_status_reg = getelementptr inbounds %struct.bcm_iproc_intc, ptr %soc_intc, i32 0, i32 3
  %0 = ptrtoint ptr %int_status_reg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %int_status_reg, align 4
  %2 = zext i32 %type to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i32 %type, label %sw.epilog.i [
    i32 1, label %entry.get_qspi_mask.exit.thread_crit_edge
    i32 2, label %entry.if.then_crit_edge
    i32 7, label %sw.bb2.i
    i32 4, label %sw.bb3.i
  ]

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then

entry.get_qspi_mask.exit.thread_crit_edge:        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %get_qspi_mask.exit.thread

sw.bb2.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then

sw.bb3.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %get_qspi_mask.exit.thread

sw.epilog.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %get_qspi_mask.exit.thread

get_qspi_mask.exit.thread:                        ; preds = %sw.epilog.i, %sw.bb3.i, %entry.get_qspi_mask.exit.thread_crit_edge
  %retval.0.i.ph = phi i32 [ 32, %entry.get_qspi_mask.exit.thread_crit_edge ], [ 22, %sw.bb3.i ], [ 0, %sw.epilog.i ]
  %big_endian10 = getelementptr inbounds %struct.bcm_iproc_intc, ptr %soc_intc, i32 0, i32 5
  br label %for.inc

if.then:                                          ; preds = %sw.bb2.i, %entry.if.then_crit_edge
  %retval.0.i = phi i32 [ 127, %sw.bb2.i ], [ 31, %entry.if.then_crit_edge ]
  %big_endian = getelementptr inbounds %struct.bcm_iproc_intc, ptr %soc_intc, i32 0, i32 5
  %3 = ptrtoint ptr %big_endian to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %big_endian, align 4, !range !32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool1.not = icmp eq i8 %4, 0
  br i1 %tobool1.not, label %if.else.i, label %do.body.i

do.body.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !34
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %1, i32 1) #4, !srcloc !35
  br label %for.inc

if.else.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %1, i32 16777216) #4, !srcloc !35
  br label %for.inc

for.inc:                                          ; preds = %if.else.i, %do.body.i, %get_qspi_mask.exit.thread
  %big_endian14 = phi ptr [ %big_endian10, %get_qspi_mask.exit.thread ], [ %big_endian, %if.else.i ], [ %big_endian, %do.body.i ]
  %retval.0.i13 = phi i32 [ %retval.0.i.ph, %get_qspi_mask.exit.thread ], [ %retval.0.i, %if.else.i ], [ %retval.0.i, %do.body.i ]
  %and.1 = and i32 %retval.0.i13, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.1)
  %tobool.not.1 = icmp eq i32 %and.1, 0
  br i1 %tobool.not.1, label %for.inc.for.inc.1_crit_edge, label %if.then.1

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc.1

if.then.1:                                        ; preds = %for.inc
  %5 = ptrtoint ptr %big_endian14 to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %big_endian14, align 4, !range !32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool1.not.1 = icmp eq i8 %6, 0
  %add.ptr2.1 = getelementptr i8, ptr %1, i32 4
  br i1 %tobool1.not.1, label %if.else.i.1, label %do.body.i.1

do.body.i.1:                                      ; preds = %if.then.1
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !34
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.1, i32 1) #4, !srcloc !35
  br label %for.inc.1

if.else.i.1:                                      ; preds = %if.then.1
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.1, i32 16777216) #4, !srcloc !35
  br label %for.inc.1

for.inc.1:                                        ; preds = %if.else.i.1, %do.body.i.1, %for.inc.for.inc.1_crit_edge
  %and.2 = and i32 %retval.0.i13, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.2)
  %tobool.not.2 = icmp eq i32 %and.2, 0
  br i1 %tobool.not.2, label %for.inc.1.for.inc.2_crit_edge, label %if.then.2

for.inc.1.for.inc.2_crit_edge:                    ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc.2

if.then.2:                                        ; preds = %for.inc.1
  %7 = ptrtoint ptr %big_endian14 to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %big_endian14, align 4, !range !32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool1.not.2 = icmp eq i8 %8, 0
  %add.ptr2.2 = getelementptr i8, ptr %1, i32 8
  br i1 %tobool1.not.2, label %if.else.i.2, label %do.body.i.2

do.body.i.2:                                      ; preds = %if.then.2
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !34
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.2, i32 1) #4, !srcloc !35
  br label %for.inc.2

if.else.i.2:                                      ; preds = %if.then.2
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.2, i32 16777216) #4, !srcloc !35
  br label %for.inc.2

for.inc.2:                                        ; preds = %if.else.i.2, %do.body.i.2, %for.inc.1.for.inc.2_crit_edge
  %and.3 = and i32 %retval.0.i13, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.3)
  %tobool.not.3 = icmp eq i32 %and.3, 0
  br i1 %tobool.not.3, label %for.inc.2.for.inc.3_crit_edge, label %if.then.3

for.inc.2.for.inc.3_crit_edge:                    ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc.3

if.then.3:                                        ; preds = %for.inc.2
  %9 = ptrtoint ptr %big_endian14 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %big_endian14, align 4, !range !32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool1.not.3 = icmp eq i8 %10, 0
  %add.ptr2.3 = getelementptr i8, ptr %1, i32 12
  br i1 %tobool1.not.3, label %if.else.i.3, label %do.body.i.3

do.body.i.3:                                      ; preds = %if.then.3
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !34
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.3, i32 1) #4, !srcloc !35
  br label %for.inc.3

if.else.i.3:                                      ; preds = %if.then.3
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.3, i32 16777216) #4, !srcloc !35
  br label %for.inc.3

for.inc.3:                                        ; preds = %if.else.i.3, %do.body.i.3, %for.inc.2.for.inc.3_crit_edge
  %and.4 = and i32 %retval.0.i13, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.4)
  %tobool.not.4 = icmp eq i32 %and.4, 0
  br i1 %tobool.not.4, label %for.inc.3.for.inc.4_crit_edge, label %if.then.4

for.inc.3.for.inc.4_crit_edge:                    ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc.4

if.then.4:                                        ; preds = %for.inc.3
  %11 = ptrtoint ptr %big_endian14 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %big_endian14, align 4, !range !32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool1.not.4 = icmp eq i8 %12, 0
  %add.ptr2.4 = getelementptr i8, ptr %1, i32 16
  br i1 %tobool1.not.4, label %if.else.i.4, label %do.body.i.4

do.body.i.4:                                      ; preds = %if.then.4
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !34
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.4, i32 1) #4, !srcloc !35
  br label %for.inc.4

if.else.i.4:                                      ; preds = %if.then.4
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.4, i32 16777216) #4, !srcloc !35
  br label %for.inc.4

for.inc.4:                                        ; preds = %if.else.i.4, %do.body.i.4, %for.inc.3.for.inc.4_crit_edge
  %and.5 = and i32 %retval.0.i13, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.5)
  %tobool.not.5 = icmp eq i32 %and.5, 0
  br i1 %tobool.not.5, label %for.inc.4.for.inc.5_crit_edge, label %if.then.5

for.inc.4.for.inc.5_crit_edge:                    ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc.5

if.then.5:                                        ; preds = %for.inc.4
  %13 = ptrtoint ptr %big_endian14 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %big_endian14, align 4, !range !32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool1.not.5 = icmp eq i8 %14, 0
  %add.ptr2.5 = getelementptr i8, ptr %1, i32 20
  br i1 %tobool1.not.5, label %if.else.i.5, label %do.body.i.5

do.body.i.5:                                      ; preds = %if.then.5
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !34
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.5, i32 1) #4, !srcloc !35
  br label %for.inc.5

if.else.i.5:                                      ; preds = %if.then.5
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.5, i32 16777216) #4, !srcloc !35
  br label %for.inc.5

for.inc.5:                                        ; preds = %if.else.i.5, %do.body.i.5, %for.inc.4.for.inc.5_crit_edge
  %and.6 = and i32 %retval.0.i13, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.6)
  %tobool.not.6 = icmp eq i32 %and.6, 0
  br i1 %tobool.not.6, label %for.inc.5.for.inc.6_crit_edge, label %if.then.6

for.inc.5.for.inc.6_crit_edge:                    ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc.6

if.then.6:                                        ; preds = %for.inc.5
  %15 = ptrtoint ptr %big_endian14 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %big_endian14, align 4, !range !32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %tobool1.not.6 = icmp eq i8 %16, 0
  %add.ptr2.6 = getelementptr i8, ptr %1, i32 24
  br i1 %tobool1.not.6, label %if.else.i.6, label %do.body.i.6

do.body.i.6:                                      ; preds = %if.then.6
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !34
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.6, i32 1) #4, !srcloc !35
  br label %for.inc.6

if.else.i.6:                                      ; preds = %if.then.6
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.6, i32 16777216) #4, !srcloc !35
  br label %for.inc.6

for.inc.6:                                        ; preds = %if.else.i.6, %do.body.i.6, %for.inc.5.for.inc.6_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @bcm_iproc_qspi_int_set(ptr noundef %soc_intc, i32 noundef %type, i1 noundef zeroext %en) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %int_reg = getelementptr inbounds %struct.bcm_iproc_intc, ptr %soc_intc, i32 0, i32 2
  %0 = ptrtoint ptr %int_reg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %int_reg, align 4
  %switch.tableidx = add i32 %type, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %switch.tableidx)
  %2 = icmp ult i32 %switch.tableidx, 7
  br i1 %2, label %switch.lookup, label %entry.get_qspi_mask.exit_crit_edge

entry.get_qspi_mask.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %get_qspi_mask.exit

switch.lookup:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %switch.gep = getelementptr inbounds [7 x i32], ptr @switch.table.bcm_iproc_qspi_int_set, i32 0, i32 %switch.tableidx
  %3 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %3)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %get_qspi_mask.exit

get_qspi_mask.exit:                               ; preds = %switch.lookup, %entry.get_qspi_mask.exit_crit_edge
  %retval.0.i = phi i32 [ %switch.load, %switch.lookup ], [ 0, %entry.get_qspi_mask.exit_crit_edge ]
  %soclock = getelementptr inbounds %struct.bcm_iproc_intc, ptr %soc_intc, i32 0, i32 4
  %call4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %soclock) #4
  %big_endian = getelementptr inbounds %struct.bcm_iproc_intc, ptr %soc_intc, i32 0, i32 5
  %4 = ptrtoint ptr %big_endian to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %big_endian, align 4, !range !32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1) #4
  br i1 %tobool.not, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %get_qspi_mask.exit
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !33
  br label %bcm_qspi_readl.exit

if.else.i:                                        ; preds = %get_qspi_mask.exit
  call void @__sanitizer_cov_trace_pc() #6
  %7 = tail call i32 @llvm.bswap.i32(i32 %6) #4
  br label %bcm_qspi_readl.exit

bcm_qspi_readl.exit:                              ; preds = %if.else.i, %if.then.i
  %retval.0.i21 = phi i32 [ %6, %if.then.i ], [ %7, %if.else.i ]
  %or = or i32 %retval.0.i21, %retval.0.i
  %neg = xor i32 %retval.0.i, -1
  %and = and i32 %retval.0.i21, %neg
  %val.0 = select i1 %en, i32 %or, i32 %and
  %8 = ptrtoint ptr %big_endian to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %big_endian, align 4, !range !32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool11.not = icmp eq i8 %9, 0
  br i1 %tobool11.not, label %if.else.i22, label %do.body.i

do.body.i:                                        ; preds = %bcm_qspi_readl.exit
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !34
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %1, i32 %val.0) #4, !srcloc !35
  br label %bcm_qspi_writel.exit

if.else.i22:                                      ; preds = %bcm_qspi_readl.exit
  call void @__sanitizer_cov_trace_pc() #6
  %10 = tail call i32 @llvm.bswap.i32(i32 %val.0) #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %1, i32 %10) #4, !srcloc !35
  br label %bcm_qspi_writel.exit

bcm_qspi_writel.exit:                             ; preds = %if.else.i22, %do.body.i
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %soclock, i32 noundef %call4) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bcm_iproc_qspi_get_l2_int_status(ptr nocapture noundef readonly %soc_intc) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %int_status_reg = getelementptr inbounds %struct.bcm_iproc_intc, ptr %soc_intc, i32 0, i32 3
  %0 = ptrtoint ptr %int_status_reg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %int_status_reg, align 4
  %big_endian = getelementptr inbounds %struct.bcm_iproc_intc, ptr %soc_intc, i32 0, i32 5
  %2 = ptrtoint ptr %big_endian to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %big_endian, align 4, !range !32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1) #4
  br i1 %tobool.not, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !33
  br label %bcm_qspi_readl.exit

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %5 = tail call i32 @llvm.bswap.i32(i32 %4) #4
  br label %bcm_qspi_readl.exit

bcm_qspi_readl.exit:                              ; preds = %if.else.i, %if.then.i
  %retval.0.i = phi i32 [ %4, %if.then.i ], [ %5, %if.else.i ]
  %6 = ptrtoint ptr %big_endian to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %big_endian, align 4, !range !32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not.1 = icmp eq i8 %7, 0
  %add.ptr1.1 = getelementptr i8, ptr %1, i32 4
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.1) #4
  br i1 %tobool.not.1, label %if.else.i.1, label %if.then.i.1

if.then.i.1:                                      ; preds = %bcm_qspi_readl.exit
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !33
  br label %bcm_qspi_readl.exit.1

if.else.i.1:                                      ; preds = %bcm_qspi_readl.exit
  call void @__sanitizer_cov_trace_pc() #6
  %9 = tail call i32 @llvm.bswap.i32(i32 %8) #4
  br label %bcm_qspi_readl.exit.1

bcm_qspi_readl.exit.1:                            ; preds = %if.else.i.1, %if.then.i.1
  %retval.0.i.1 = phi i32 [ %8, %if.then.i.1 ], [ %9, %if.else.i.1 ]
  %10 = ptrtoint ptr %big_endian to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %big_endian, align 4, !range !32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool.not.2 = icmp eq i8 %11, 0
  %add.ptr1.2 = getelementptr i8, ptr %1, i32 8
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.2) #4
  br i1 %tobool.not.2, label %if.else.i.2, label %if.then.i.2

if.then.i.2:                                      ; preds = %bcm_qspi_readl.exit.1
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !33
  br label %bcm_qspi_readl.exit.2

if.else.i.2:                                      ; preds = %bcm_qspi_readl.exit.1
  call void @__sanitizer_cov_trace_pc() #6
  %13 = tail call i32 @llvm.bswap.i32(i32 %12) #4
  br label %bcm_qspi_readl.exit.2

bcm_qspi_readl.exit.2:                            ; preds = %if.else.i.2, %if.then.i.2
  %retval.0.i.2 = phi i32 [ %12, %if.then.i.2 ], [ %13, %if.else.i.2 ]
  %14 = ptrtoint ptr %big_endian to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %big_endian, align 4, !range !32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool.not.3 = icmp eq i8 %15, 0
  %add.ptr1.3 = getelementptr i8, ptr %1, i32 12
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.3) #4
  br i1 %tobool.not.3, label %if.else.i.3, label %if.then.i.3

if.then.i.3:                                      ; preds = %bcm_qspi_readl.exit.2
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !33
  br label %bcm_qspi_readl.exit.3

if.else.i.3:                                      ; preds = %bcm_qspi_readl.exit.2
  call void @__sanitizer_cov_trace_pc() #6
  %17 = tail call i32 @llvm.bswap.i32(i32 %16) #4
  br label %bcm_qspi_readl.exit.3

bcm_qspi_readl.exit.3:                            ; preds = %if.else.i.3, %if.then.i.3
  %retval.0.i.3 = phi i32 [ %16, %if.then.i.3 ], [ %17, %if.else.i.3 ]
  %18 = ptrtoint ptr %big_endian to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %big_endian, align 4, !range !32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool.not.4 = icmp eq i8 %19, 0
  %add.ptr1.4 = getelementptr i8, ptr %1, i32 16
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.4) #4
  br i1 %tobool.not.4, label %if.else.i.4, label %if.then.i.4

if.then.i.4:                                      ; preds = %bcm_qspi_readl.exit.3
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !33
  br label %bcm_qspi_readl.exit.4

if.else.i.4:                                      ; preds = %bcm_qspi_readl.exit.3
  call void @__sanitizer_cov_trace_pc() #6
  %21 = tail call i32 @llvm.bswap.i32(i32 %20) #4
  br label %bcm_qspi_readl.exit.4

bcm_qspi_readl.exit.4:                            ; preds = %if.else.i.4, %if.then.i.4
  %retval.0.i.4 = phi i32 [ %20, %if.then.i.4 ], [ %21, %if.else.i.4 ]
  %22 = ptrtoint ptr %big_endian to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %big_endian, align 4, !range !32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %tobool.not.5 = icmp eq i8 %23, 0
  %add.ptr1.5 = getelementptr i8, ptr %1, i32 20
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.5) #4
  br i1 %tobool.not.5, label %if.else.i.5, label %if.then.i.5

if.then.i.5:                                      ; preds = %bcm_qspi_readl.exit.4
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !33
  br label %bcm_qspi_readl.exit.5

if.else.i.5:                                      ; preds = %bcm_qspi_readl.exit.4
  call void @__sanitizer_cov_trace_pc() #6
  %25 = tail call i32 @llvm.bswap.i32(i32 %24) #4
  br label %bcm_qspi_readl.exit.5

bcm_qspi_readl.exit.5:                            ; preds = %if.else.i.5, %if.then.i.5
  %retval.0.i.5 = phi i32 [ %24, %if.then.i.5 ], [ %25, %if.else.i.5 ]
  %26 = ptrtoint ptr %big_endian to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %big_endian, align 4, !range !32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %27)
  %tobool.not.6 = icmp eq i8 %27, 0
  %add.ptr1.6 = getelementptr i8, ptr %1, i32 24
  %28 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.6) #4
  br i1 %tobool.not.6, label %bcm_qspi_readl.exit.5.bcm_qspi_readl.exit.6_crit_edge, label %if.then.i.6

bcm_qspi_readl.exit.5.bcm_qspi_readl.exit.6_crit_edge: ; preds = %bcm_qspi_readl.exit.5
  call void @__sanitizer_cov_trace_pc() #6
  br label %bcm_qspi_readl.exit.6

if.then.i.6:                                      ; preds = %bcm_qspi_readl.exit.5
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !33
  br label %bcm_qspi_readl.exit.6

bcm_qspi_readl.exit.6:                            ; preds = %if.then.i.6, %bcm_qspi_readl.exit.5.bcm_qspi_readl.exit.6_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i.5)
  %tobool2.not.5 = icmp ne i32 %retval.0.i.5, 0
  %or.5 = zext i1 %tobool2.not.5 to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i.4)
  %tobool2.not.4 = icmp eq i32 %retval.0.i.4, 0
  %or.4 = select i1 %tobool2.not.4, i32 0, i32 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i.3)
  %tobool2.not.3 = icmp eq i32 %retval.0.i.3, 0
  %or.3 = select i1 %tobool2.not.3, i32 0, i32 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i.2)
  %tobool2.not.2 = icmp eq i32 %retval.0.i.2, 0
  %or.2 = select i1 %tobool2.not.2, i32 0, i32 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i.1)
  %tobool2.not.1 = icmp eq i32 %retval.0.i.1, 0
  %or.1 = select i1 %tobool2.not.1, i32 0, i32 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %tobool2.not = icmp ne i32 %retval.0.i, 0
  %or = zext i1 %tobool2.not to i32
  %val.1.1 = or i32 %or.1, %or
  %val.1.2 = or i32 %or.2, %val.1.1
  %val.1.3 = or i32 %or.3, %val.1.2
  %val.1.4 = or i32 %or.4, %val.1.3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %val.1.4)
  %tobool8.not = icmp eq i32 %val.1.4, 0
  %or10 = or i32 %or.5, 2
  %sts.1 = select i1 %tobool8.not, i32 %or.5, i32 %or10
  %and12 = and i32 %val.1.4, 22
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12)
  %tobool13.not = icmp eq i32 %and12, 0
  %or15 = or i32 %sts.1, 4
  %sts.2 = select i1 %tobool13.not, i32 %sts.1, i32 %or15
  ret i32 %sts.2
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bcm_qspi_probe(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bcm_qspi_remove(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 8)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 8)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !8, !10, !12, !14, !16, !17, !19, !21}
!llvm.module.flags = !{!23, !24, !25, !26, !27, !28, !29, !30}
!llvm.ident = !{!31}

!0 = !{ptr @__initcall__kmod_spi_iproc_qspi__183_151_bcm_iproc_driver_init6, !1, !"__initcall__kmod_spi_iproc_qspi__183_151_bcm_iproc_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/spi/spi-iproc-qspi.c", i32 151, i32 1}
!2 = !{ptr @__exitcall_bcm_iproc_driver_exit, !1, !"__exitcall_bcm_iproc_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_file184, !4, !"__UNIQUE_ID_file184", i1 false, i1 false}
!4 = !{!"../drivers/spi/spi-iproc-qspi.c", i32 153, i32 1}
!5 = !{ptr @__UNIQUE_ID_license185, !4, !"__UNIQUE_ID_license185", i1 false, i1 false}
!6 = !{ptr @__UNIQUE_ID_author186, !7, !"__UNIQUE_ID_author186", i1 false, i1 false}
!7 = !{!"../drivers/spi/spi-iproc-qspi.c", i32 154, i32 1}
!8 = !{ptr @__UNIQUE_ID_description187, !9, !"__UNIQUE_ID_description187", i1 false, i1 false}
!9 = !{!"../drivers/spi/spi-iproc-qspi.c", i32 155, i32 1}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/spi/spi-iproc-qspi.c", i32 146, i32 12}
!12 = !{ptr @bcm_iproc_driver, !13, !"bcm_iproc_driver", i1 false, i1 false}
!13 = !{!"../drivers/spi/spi-iproc-qspi.c", i32 142, i32 31}
!14 = !{ptr @bcm_iproc_probe.__key, !15, !"__key", i1 false, i1 false}
!15 = !{!"../drivers/spi/spi-iproc-qspi.c", i32 105, i32 2}
!16 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.2, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/spi/spi-iproc-qspi.c", i32 107, i32 59}
!19 = !{ptr @.str.3, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/spi/spi-iproc-qspi.c", i32 113, i32 9}
!21 = !{ptr @bcm_iproc_of_match, !22, !"bcm_iproc_of_match", i1 false, i1 false}
!22 = !{!"../drivers/spi/spi-iproc-qspi.c", i32 135, i32 34}
!23 = !{i32 1, !"wchar_size", i32 2}
!24 = !{i32 1, !"min_enum_size", i32 4}
!25 = !{i32 8, !"branch-target-enforcement", i32 0}
!26 = !{i32 8, !"sign-return-address", i32 0}
!27 = !{i32 8, !"sign-return-address-all", i32 0}
!28 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!29 = !{i32 7, !"uwtable", i32 1}
!30 = !{i32 7, !"frame-pointer", i32 2}
!31 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!32 = !{i8 0, i8 2}
!33 = !{i64 2152850893}
!34 = !{i64 2152851573}
!35 = !{i64 4772760}
