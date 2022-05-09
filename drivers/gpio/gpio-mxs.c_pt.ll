; ModuleID = '/llk/IR_all_yes/drivers/gpio/gpio-mxs.c_pt.bc'
source_filename = "../drivers/gpio/gpio-mxs.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.irq_domain_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
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
%struct.mxs_gpio_port = type { ptr, i32, i32, ptr, %struct.gpio_chip, ptr, i32, i32 }
%struct.gpio_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, ptr, i8, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, i8, i32, %struct.spinlock, i32, i32, %struct.gpio_irq_chip, ptr, ptr, i32, ptr }
%struct.gpio_irq_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.irq_domain_ops, ptr, i32, ptr, ptr, ptr, %union.anon.68, i32, ptr, ptr, i8, i8, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr }
%union.anon.68 = type { ptr }
%struct.irq_chip_generic = type { %struct.raw_spinlock, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, ptr, %struct.list_head, [0 x %struct.irq_chip_type] }
%struct.irq_chip_type = type { %struct.irq_chip, %struct.irq_chip_regs, ptr, i32, i32, ptr }
%struct.irq_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.irq_chip_regs = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.irq_common_data = type { i32, ptr, ptr, ptr, ptr, i32 }
%struct.irq_desc = type { %struct.irq_common_data, %struct.irq_data, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, %struct.atomic_t, i32, %struct.raw_spinlock, ptr, ptr, ptr, ptr, i32, %struct.atomic_t, %struct.wait_queue_head, i32, i32, i32, i32, ptr, ptr, ptr, %struct.callback_head, %struct.kobject, %struct.mutex, i32, ptr, ptr, [8 x i8] }
%struct.irq_data = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr }
%struct.callback_head = type { ptr, ptr }

@__initcall__kmod_gpio_mxs__227_361_mxs_gpio_init2 = internal global ptr @mxs_gpio_init, section ".initcall2.init", align 4
@__UNIQUE_ID_author228 = internal constant [112 x i8] c"gpio_mxs.author=Freescale Semiconductor, Daniel Mack <danielncaiaq.de>, Juergen Beisert <kernel@pengutronix.de>\00", section ".modinfo", align 1
@__UNIQUE_ID_description229 = internal constant [40 x i8] c"gpio_mxs.description=Freescale MXS GPIO\00", section ".modinfo", align 1
@__UNIQUE_ID_file230 = internal constant [36 x i8] c"gpio_mxs.file=drivers/gpio/gpio-mxs\00", section ".modinfo", align 1
@__UNIQUE_ID_license231 = internal constant [21 x i8] c"gpio_mxs.license=GPL\00", section ".modinfo", align 1
@mxs_gpio_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @mxs_gpio_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 1, i32 0, ptr @mxs_gpio_dt_ids, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"gpio-mxs\00", [23 x i8] zeroinitializer }, align 32
@mxs_gpio_dt_ids = internal constant { [3 x %struct.of_device_id], [148 x i8] } { [3 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,imx23-gpio\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,imx28-gpio\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 1 to ptr) }, %struct.of_device_id zeroinitializer], [148 x i8] zeroinitializer }, align 32
@mxs_gpio_probe.base = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"gpio\00", [27 x i8] zeroinitializer }, align 32
@irq_domain_simple_ops = external dso_local constant %struct.irq_domain_ops, align 4
@mxs_gpio_probe.lock_key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@mxs_gpio_probe.request_key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@__sancov_gen_cov_switch_values = internal global [7 x i64] [i64 5, i64 32, i64 1, i64 2, i64 3, i64 4, i64 8]
@___asan_gen_.2 = private unnamed_addr constant [16 x i8] c"mxs_gpio_driver\00", align 1
@___asan_gen_.4 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.21, i32 348, i32 31 }
@___asan_gen_.7 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.21, i32 350, i32 11 }
@___asan_gen_.8 = private unnamed_addr constant [16 x i8] c"mxs_gpio_dt_ids\00", align 1
@___asan_gen_.10 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.21, i32 252, i32 34 }
@___asan_gen_.11 = private unnamed_addr constant [5 x i8] c"base\00", align 1
@___asan_gen_.13 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.21, i32 263, i32 23 }
@___asan_gen_.14 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.21, i32 272, i32 33 }
@___asan_gen_.17 = private unnamed_addr constant [9 x i8] c"lock_key\00", align 1
@___asan_gen_.20 = private unnamed_addr constant [12 x i8] c"request_key\00", align 1
@___asan_gen_.21 = private constant [27 x i8] c"../drivers/gpio/gpio-mxs.c\00", align 1
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.21, i32 335, i32 8 }
@llvm.compiler.used = appending global [12 x ptr] [ptr @__UNIQUE_ID_author228, ptr @__UNIQUE_ID_description229, ptr @__UNIQUE_ID_file230, ptr @__UNIQUE_ID_license231, ptr @__initcall__kmod_gpio_mxs__227_361_mxs_gpio_init2, ptr @mxs_gpio_driver, ptr @.str, ptr @mxs_gpio_dt_ids, ptr @mxs_gpio_probe.base, ptr @.str.1, ptr @mxs_gpio_probe.lock_key, ptr @mxs_gpio_probe.request_key], section "llvm.metadata"
@0 = internal global [7 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxs_gpio_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.2 to i32), i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxs_gpio_dt_ids to i32), i32 588, i32 736, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxs_gpio_probe.base to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxs_gpio_probe.lock_key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxs_gpio_probe.request_key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @mxs_gpio_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @mxs_gpio_driver, ptr noundef null) #5
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mxs_gpio_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 8
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 376, i32 noundef 3520) #5
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call i32 @of_alias_get_id(ptr noundef %1, ptr noundef nonnull @.str.1) #5
  %id = getelementptr inbounds %struct.mxs_gpio_port, ptr %call.i, i32 0, i32 1
  %2 = ptrtoint ptr %id to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %call2, ptr %id, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp = icmp slt i32 %call2, 0
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %call8 = tail call ptr @of_device_get_match_data(ptr noundef %dev) #5
  %3 = ptrtoint ptr %call8 to i32
  %devid = getelementptr inbounds %struct.mxs_gpio_port, ptr %call.i, i32 0, i32 6
  %4 = ptrtoint ptr %devid to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %devid, align 4
  %dev10 = getelementptr inbounds %struct.mxs_gpio_port, ptr %call.i, i32 0, i32 5
  %5 = ptrtoint ptr %dev10 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %dev, ptr %dev10, align 4
  %call11 = tail call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 0) #5
  %irq = getelementptr inbounds %struct.mxs_gpio_port, ptr %call.i, i32 0, i32 2
  %6 = ptrtoint ptr %irq to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %call11, ptr %irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %cmp13 = icmp slt i32 %call11, 0
  br i1 %cmp13, label %if.end6.cleanup_crit_edge, label %if.end16

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end16:                                         ; preds = %if.end6
  %7 = load ptr, ptr @mxs_gpio_probe.base, align 4
  %tobool17.not = icmp eq ptr %7, null
  br i1 %tobool17.not, label %if.then18, label %if.end16.if.end24_crit_edge

if.end16.if.end24_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end24

if.then18:                                        ; preds = %if.end16
  %call19 = tail call ptr @of_get_parent(ptr noundef %1) #5
  %call20 = tail call ptr @of_iomap(ptr noundef %call19, i32 noundef 0) #5
  store ptr %call20, ptr @mxs_gpio_probe.base, align 4
  tail call void @of_node_put(ptr noundef %call19) #5
  %8 = load ptr, ptr @mxs_gpio_probe.base, align 4
  %tobool21.not = icmp eq ptr %8, null
  br i1 %tobool21.not, label %if.then18.cleanup_crit_edge, label %if.then18.if.end24_crit_edge

if.then18.if.end24_crit_edge:                     ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end24

if.then18.cleanup_crit_edge:                      ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end24:                                         ; preds = %if.then18.if.end24_crit_edge, %if.end16.if.end24_crit_edge
  %9 = load ptr, ptr @mxs_gpio_probe.base, align 4
  %10 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %9, ptr %call.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !32
  tail call void @arm_heavy_mb() #5
  %11 = ptrtoint ptr %devid to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %devid, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %cmp.i.not = icmp eq i32 %12, 0
  %cond = select i1 %cmp.i.not, i32 2048, i32 4096
  %13 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %id, align 4
  %mul = shl i32 %14, 4
  %add = add i32 %cond, %mul
  %add.ptr = getelementptr i8, ptr %9, i32 %add
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 0) #5, !srcloc !33
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !34
  tail call void @arm_heavy_mb() #5
  %cond35 = select i1 %cmp.i.not, i32 2304, i32 4352
  %add38 = add i32 %cond35, %mul
  %add.ptr39 = getelementptr i8, ptr %9, i32 %add38
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr39, i32 0) #5, !srcloc !33
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !35
  tail call void @arm_heavy_mb() #5
  %cond46 = select i1 %cmp.i.not, i32 3072, i32 5120
  %add49 = add i32 %cond46, %mul
  %add.ptr50 = getelementptr i8, ptr %9, i32 %add49
  %add.ptr51 = getelementptr i8, ptr %add.ptr50, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr51, i32 -1) #5, !srcloc !33
  %call54 = tail call i32 @__devm_irq_alloc_descs(ptr noundef %dev, i32 noundef -1, i32 noundef 0, i32 noundef 32, i32 noundef 0, ptr noundef null, ptr noundef null) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call54)
  %cmp55 = icmp slt i32 %call54, 0
  br i1 %cmp55, label %if.end24.out_iounmap_crit_edge, label %if.end57

if.end24.out_iounmap_crit_edge:                   ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #7
  br label %out_iounmap

if.end57:                                         ; preds = %if.end24
  %call58 = tail call ptr @irq_domain_add_legacy(ptr noundef %1, i32 noundef 32, i32 noundef %call54, i32 noundef 0, ptr noundef nonnull @irq_domain_simple_ops, ptr noundef null) #5
  %domain = getelementptr inbounds %struct.mxs_gpio_port, ptr %call.i, i32 0, i32 3
  %15 = ptrtoint ptr %domain to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call58, ptr %domain, align 4
  %tobool60.not = icmp eq ptr %call58, null
  br i1 %tobool60.not, label %if.end57.out_iounmap_crit_edge, label %if.end62

if.end57.out_iounmap_crit_edge:                   ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #7
  br label %out_iounmap

if.end62:                                         ; preds = %if.end57
  %16 = ptrtoint ptr %dev10 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev10, align 4
  %18 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %call.i, align 4
  %call.i189 = tail call ptr @devm_irq_alloc_generic_chip(ptr noundef %17, ptr noundef nonnull @.str, i32 noundef 2, i32 noundef %call54, ptr noundef %19, ptr noundef nonnull @handle_level_irq) #5
  %tobool.not.i = icmp eq ptr %call.i189, null
  br i1 %tobool.not.i, label %if.end62.out_irqdomain_remove_crit_edge, label %mxs_gpio_init_gc.exit

if.end62.out_irqdomain_remove_crit_edge:          ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #7
  br label %out_irqdomain_remove

mxs_gpio_init_gc.exit:                            ; preds = %if.end62
  %private.i = getelementptr inbounds %struct.irq_chip_generic, ptr %call.i189, i32 0, i32 14
  %20 = ptrtoint ptr %private.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %call.i, ptr %private.i, align 4
  %type.i = getelementptr inbounds %struct.irq_chip_generic, ptr %call.i189, i32 2, i32 2
  %21 = ptrtoint ptr %type.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 12, ptr %type.i, align 4
  %irq_ack.i = getelementptr inbounds %struct.irq_chip_generic, ptr %call.i189, i32 1, i32 0, i32 4, i32 1, i32 1
  %22 = ptrtoint ptr %irq_ack.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr @irq_gc_ack_set_bit, ptr %irq_ack.i, align 4
  %irq_mask.i = getelementptr inbounds %struct.irq_chip_generic, ptr %call.i189, i32 1, i32 0, i32 4, i32 2
  %23 = ptrtoint ptr %irq_mask.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr @irq_gc_mask_disable_reg, ptr %irq_mask.i, align 4
  %irq_unmask.i = getelementptr inbounds %struct.irq_chip_generic, ptr %call.i189, i32 1, i32 0, i32 4, i32 6
  %24 = ptrtoint ptr %irq_unmask.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr @irq_gc_unmask_enable_reg, ptr %irq_unmask.i, align 4
  %irq_set_type.i = getelementptr inbounds %struct.irq_chip_generic, ptr %call.i189, i32 1, i32 3
  %25 = ptrtoint ptr %irq_set_type.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr @mxs_gpio_set_irq_type, ptr %irq_set_type.i, align 4
  %irq_set_wake.i = getelementptr inbounds %struct.irq_chip_generic, ptr %call.i189, i32 1, i32 4
  %26 = ptrtoint ptr %irq_set_wake.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr @mxs_gpio_set_wake_irq, ptr %irq_set_wake.i, align 4
  %flags.i = getelementptr inbounds %struct.irq_chip_generic, ptr %call.i189, i32 2, i32 0, i32 3
  %27 = ptrtoint ptr %flags.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 1, ptr %flags.i, align 4
  %28 = ptrtoint ptr %devid to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %devid, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %cmp.i.not.i = icmp eq i32 %29, 0
  %cond.i = select i1 %cmp.i.not.i, i32 3072, i32 5120
  %30 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %id, align 4
  %mul.i = shl i32 %31, 4
  %add.i = add i32 %cond.i, %mul.i
  %add8.i = or i32 %add.i, 8
  %regs.i = getelementptr inbounds %struct.irq_chip_generic, ptr %call.i189, i32 2, i32 0, i32 4
  %ack.i = getelementptr inbounds %struct.irq_chip_generic, ptr %call.i189, i32 2, i32 0, i32 4, i32 2
  %32 = ptrtoint ptr %ack.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %add8.i, ptr %ack.i, align 4
  %33 = ptrtoint ptr %devid to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %devid, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %cmp.i111.not.i = icmp eq i32 %34, 0
  %cond11.i = select i1 %cmp.i111.not.i, i32 2048, i32 4096
  %35 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %id, align 4
  %mul13.i = shl i32 %36, 4
  %add14.i = add i32 %cond11.i, %mul13.i
  %add15.i = or i32 %add14.i, 4
  %37 = ptrtoint ptr %regs.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %add15.i, ptr %regs.i, align 4
  %38 = ptrtoint ptr %devid to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %devid, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %cmp.i114.not.i = icmp eq i32 %39, 0
  %cond19.i = select i1 %cmp.i114.not.i, i32 2048, i32 4096
  %40 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %id, align 4
  %mul21.i = shl i32 %41, 4
  %add22.i = add i32 %cond19.i, %mul21.i
  %add23.i = or i32 %add22.i, 8
  %disable.i = getelementptr inbounds %struct.irq_chip_generic, ptr %call.i189, i32 2, i32 0, i32 4, i32 1
  %42 = ptrtoint ptr %disable.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %add23.i, ptr %disable.i, align 4
  %type27.i = getelementptr %struct.irq_chip_generic, ptr %call.i189, i32 3, i32 17
  %43 = ptrtoint ptr %type27.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 3, ptr %type27.i, align 4
  %irq_ack29.i = getelementptr %struct.irq_chip_generic, ptr %call.i189, i32 2, i32 11
  %44 = ptrtoint ptr %irq_ack29.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr @irq_gc_ack_set_bit, ptr %irq_ack29.i, align 4
  %irq_mask31.i = getelementptr %struct.irq_chip_generic, ptr %call.i189, i32 2, i32 12
  %45 = ptrtoint ptr %irq_mask31.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr @irq_gc_mask_disable_reg, ptr %irq_mask31.i, align 4
  %irq_unmask33.i = getelementptr %struct.irq_chip_generic, ptr %call.i189, i32 2, i32 14
  %46 = ptrtoint ptr %irq_unmask33.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr @irq_gc_unmask_enable_reg, ptr %irq_unmask33.i, align 4
  %irq_set_type35.i = getelementptr %struct.irq_chip_generic, ptr %call.i189, i32 2, i32 18
  %47 = ptrtoint ptr %irq_set_type35.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr @mxs_gpio_set_irq_type, ptr %irq_set_type35.i, align 4
  %irq_set_wake37.i = getelementptr %struct.irq_chip_generic, ptr %call.i189, i32 2, i32 18, i32 1
  %48 = ptrtoint ptr %irq_set_wake37.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr @mxs_gpio_set_wake_irq, ptr %irq_set_wake37.i, align 4
  %flags39.i = getelementptr %struct.irq_chip_generic, ptr %call.i189, i32 3, i32 8
  %49 = ptrtoint ptr %flags39.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 1, ptr %flags39.i, align 4
  %50 = ptrtoint ptr %devid to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %devid, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %51)
  %cmp.i117.not.i = icmp eq i32 %51, 0
  %cond42.i = select i1 %cmp.i117.not.i, i32 3072, i32 5120
  %52 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %id, align 4
  %mul44.i = shl i32 %53, 4
  %add45.i = add i32 %cond42.i, %mul44.i
  %add46.i = or i32 %add45.i, 8
  %regs47.i = getelementptr %struct.irq_chip_generic, ptr %call.i189, i32 3, i32 9
  %ack48.i = getelementptr %struct.irq_chip_generic, ptr %call.i189, i32 3, i32 12
  %54 = ptrtoint ptr %ack48.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %add46.i, ptr %ack48.i, align 4
  %55 = ptrtoint ptr %devid to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %devid, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %56)
  %cmp.i120.not.i = icmp eq i32 %56, 0
  %cond51.i = select i1 %cmp.i120.not.i, i32 2304, i32 4352
  %57 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %id, align 4
  %mul53.i = shl i32 %58, 4
  %add54.i = add i32 %cond51.i, %mul53.i
  %add55.i = or i32 %add54.i, 4
  %59 = ptrtoint ptr %regs47.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %add55.i, ptr %regs47.i, align 4
  %60 = ptrtoint ptr %devid to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %devid, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %61)
  %cmp.i123.not.i = icmp eq i32 %61, 0
  %cond60.i = select i1 %cmp.i123.not.i, i32 2304, i32 4352
  %62 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %id, align 4
  %mul62.i = shl i32 %63, 4
  %add63.i = add i32 %cond60.i, %mul62.i
  %add64.i = or i32 %add63.i, 8
  %disable66.i = getelementptr %struct.irq_chip_generic, ptr %call.i189, i32 3, i32 10
  %64 = ptrtoint ptr %disable66.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %add64.i, ptr %disable66.i, align 4
  %handler.i = getelementptr %struct.irq_chip_generic, ptr %call.i189, i32 3, i32 16
  %65 = ptrtoint ptr %handler.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr @handle_level_irq, ptr %handler.i, align 4
  %66 = ptrtoint ptr %dev10 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %dev10, align 4
  %call68.i = tail call i32 @devm_irq_setup_generic_chip(ptr noundef %67, ptr noundef nonnull %call.i189, i32 noundef -1, i32 noundef 2, i32 noundef 2048, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call68.i)
  %cmp64 = icmp slt i32 %call68.i, 0
  br i1 %cmp64, label %mxs_gpio_init_gc.exit.out_irqdomain_remove_crit_edge, label %if.end66

mxs_gpio_init_gc.exit.out_irqdomain_remove_crit_edge: ; preds = %mxs_gpio_init_gc.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %out_irqdomain_remove

if.end66:                                         ; preds = %mxs_gpio_init_gc.exit
  %68 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %irq, align 4
  tail call void @irq_set_chained_handler_and_data(i32 noundef %69, ptr noundef nonnull @mxs_gpio_irq_handler, ptr noundef nonnull %call.i) #5
  %gc = getelementptr inbounds %struct.mxs_gpio_port, ptr %call.i, i32 0, i32 4
  %70 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %call.i, align 4
  %72 = ptrtoint ptr %devid to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %devid, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %73)
  %cmp.i191.not = icmp eq i32 %73, 0
  %cond72 = select i1 %cmp.i191.not, i32 1536, i32 2304
  %74 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %id, align 4
  %mul74 = shl i32 %75, 4
  %add75 = add i32 %cond72, %mul74
  %add.ptr76 = getelementptr i8, ptr %71, i32 %add75
  %cond80 = select i1 %cmp.i191.not, i32 1280, i32 1792
  %add83 = add i32 %cond80, %mul74
  %add.ptr84 = getelementptr i8, ptr %71, i32 %add83
  %add.ptr85 = getelementptr i8, ptr %add.ptr84, i32 4
  %add.ptr94 = getelementptr i8, ptr %add.ptr84, i32 8
  %cond98 = select i1 %cmp.i191.not, i32 1792, i32 2816
  %add101 = add i32 %cond98, %mul74
  %add.ptr102 = getelementptr i8, ptr %71, i32 %add101
  %call103 = tail call i32 @bgpio_init(ptr noundef %gc, ptr noundef %dev, i32 noundef 4, ptr noundef %add.ptr76, ptr noundef %add.ptr85, ptr noundef %add.ptr94, ptr noundef %add.ptr102, ptr noundef null, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call103)
  %tobool104.not = icmp eq i32 %call103, 0
  br i1 %tobool104.not, label %if.end106, label %if.end66.out_irqdomain_remove_crit_edge

if.end66.out_irqdomain_remove_crit_edge:          ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #7
  br label %out_irqdomain_remove

if.end106:                                        ; preds = %if.end66
  %to_irq = getelementptr inbounds %struct.mxs_gpio_port, ptr %call.i, i32 0, i32 4, i32 15
  %76 = ptrtoint ptr %to_irq to i32
  call void @__asan_store4_noabort(i32 %76)
  store ptr @mxs_gpio_to_irq, ptr %to_irq, align 4
  %get_direction = getelementptr inbounds %struct.mxs_gpio_port, ptr %call.i, i32 0, i32 4, i32 7
  %77 = ptrtoint ptr %get_direction to i32
  call void @__asan_store4_noabort(i32 %77)
  store ptr @mxs_gpio_get_direction, ptr %get_direction, align 4
  %78 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %id, align 4
  %mul110 = shl i32 %79, 5
  %base112 = getelementptr inbounds %struct.mxs_gpio_port, ptr %call.i, i32 0, i32 4, i32 19
  %80 = ptrtoint ptr %base112 to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 %mul110, ptr %base112, align 4
  %call114 = tail call i32 @gpiochip_add_data_with_key(ptr noundef %gc, ptr noundef nonnull %call.i, ptr noundef nonnull @mxs_gpio_probe.lock_key, ptr noundef nonnull @mxs_gpio_probe.request_key) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call114)
  %tobool115.not = icmp eq i32 %call114, 0
  br i1 %tobool115.not, label %if.end106.cleanup_crit_edge, label %if.end106.out_irqdomain_remove_crit_edge

if.end106.out_irqdomain_remove_crit_edge:         ; preds = %if.end106
  call void @__sanitizer_cov_trace_pc() #7
  br label %out_irqdomain_remove

if.end106.cleanup_crit_edge:                      ; preds = %if.end106
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

out_irqdomain_remove:                             ; preds = %if.end106.out_irqdomain_remove_crit_edge, %if.end66.out_irqdomain_remove_crit_edge, %mxs_gpio_init_gc.exit.out_irqdomain_remove_crit_edge, %if.end62.out_irqdomain_remove_crit_edge
  %err.0 = phi i32 [ %call68.i, %mxs_gpio_init_gc.exit.out_irqdomain_remove_crit_edge ], [ %call103, %if.end66.out_irqdomain_remove_crit_edge ], [ %call114, %if.end106.out_irqdomain_remove_crit_edge ], [ -12, %if.end62.out_irqdomain_remove_crit_edge ]
  %81 = ptrtoint ptr %domain to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %domain, align 4
  tail call void @irq_domain_remove(ptr noundef %82) #5
  br label %out_iounmap

out_iounmap:                                      ; preds = %out_irqdomain_remove, %if.end57.out_iounmap_crit_edge, %if.end24.out_iounmap_crit_edge
  %err.1 = phi i32 [ %err.0, %out_irqdomain_remove ], [ %call54, %if.end24.out_iounmap_crit_edge ], [ -19, %if.end57.out_iounmap_crit_edge ]
  %83 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %call.i, align 4
  tail call void @iounmap(ptr noundef %84) #5
  br label %cleanup

cleanup:                                          ; preds = %out_iounmap, %if.end106.cleanup_crit_edge, %if.then18.cleanup_crit_edge, %if.end6.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.1, %out_iounmap ], [ -12, %entry.cleanup_crit_edge ], [ %call2, %if.end.cleanup_crit_edge ], [ %call11, %if.end6.cleanup_crit_edge ], [ -99, %if.then18.cleanup_crit_edge ], [ 0, %if.end106.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_alias_get_id(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_parent(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_iomap(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__devm_irq_alloc_descs(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @irq_domain_add_legacy(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_set_chained_handler_and_data(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mxs_gpio_irq_handler(ptr noundef %desc) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %handler_data.i = getelementptr inbounds %struct.irq_common_data, ptr %desc, i32 0, i32 1
  %0 = ptrtoint ptr %handler_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %handler_data.i, align 4
  %irq_data = getelementptr inbounds %struct.irq_desc, ptr %desc, i32 0, i32 1
  %chip = getelementptr inbounds %struct.irq_desc, ptr %desc, i32 0, i32 1, i32 4
  %2 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %chip, align 8
  %irq_ack = getelementptr inbounds %struct.irq_chip, ptr %3, i32 0, i32 6
  %4 = ptrtoint ptr %irq_ack to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %irq_ack, align 4
  tail call void %5(ptr noundef %irq_data) #5
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 4
  %devid.i = getelementptr inbounds %struct.mxs_gpio_port, ptr %1, i32 0, i32 6
  %8 = ptrtoint ptr %devid.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %devid.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp.i.not = icmp eq i32 %9, 0
  %cond = select i1 %cmp.i.not, i32 3072, i32 5120
  %id = getelementptr inbounds %struct.mxs_gpio_port, ptr %1, i32 0, i32 1
  %10 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %id, align 4
  %mul = shl i32 %11, 4
  %add = add i32 %cond, %mul
  %add.ptr = getelementptr i8, ptr %7, i32 %add
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #5, !srcloc !36
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !37
  %13 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %1, align 4
  %15 = ptrtoint ptr %devid.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %devid.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %cmp.i40.not = icmp eq i32 %16, 0
  %cond10 = select i1 %cmp.i40.not, i32 2304, i32 4352
  %17 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %id, align 4
  %mul12 = shl i32 %18, 4
  %add13 = add i32 %cond10, %mul12
  %add.ptr14 = getelementptr i8, ptr %14, i32 %add13
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr14) #5, !srcloc !36
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !38
  %20 = and i32 %19, %12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %cmp.not42 = icmp eq i32 %20, 0
  br i1 %cmp.not42, label %entry.while.end_crit_edge, label %while.body.lr.ph

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end

while.body.lr.ph:                                 ; preds = %entry
  %21 = tail call i32 @llvm.bswap.i32(i32 %20)
  %both_edges = getelementptr inbounds %struct.mxs_gpio_port, ptr %1, i32 0, i32 7
  %domain = getelementptr inbounds %struct.mxs_gpio_port, ptr %1, i32 0, i32 3
  br label %while.body

while.body:                                       ; preds = %if.end.while.body_crit_edge, %while.body.lr.ph
  %irq_stat.043 = phi i32 [ %21, %while.body.lr.ph ], [ %and23, %if.end.while.body_crit_edge ]
  %22 = tail call i32 @llvm.ctlz.i32(i32 %irq_stat.043, i1 true) #5, !range !39
  %sub = xor i32 %22, 31
  %23 = ptrtoint ptr %both_edges to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %both_edges, align 4
  %shl = shl nuw i32 1, %sub
  %and19 = and i32 %24, %shl
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and19)
  %tobool20.not = icmp eq i32 %and19, 0
  br i1 %tobool20.not, label %while.body.if.end_crit_edge, label %if.then

while.body.if.end_crit_edge:                      ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %while.body
  %25 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %1, align 4
  %27 = ptrtoint ptr %devid.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %devid.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %cmp.i.not.i = icmp eq i32 %28, 0
  %cond.i = select i1 %cmp.i.not.i, i32 2816, i32 4864
  %29 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %id, align 4
  %mul.i = shl i32 %30, 4
  %add.i = add i32 %cond.i, %mul.i
  %add.ptr.i = getelementptr i8, ptr %26, i32 %add.i
  %31 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #5, !srcloc !36
  %32 = tail call i32 @llvm.bswap.i32(i32 %31) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !40
  %and.i = and i32 %32, %shl
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool3.not.i = icmp eq i32 %and.i, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5
  tail call void @arm_heavy_mb() #5
  %33 = tail call i32 @llvm.bswap.i32(i32 %shl) #5
  br i1 %tobool3.not.i, label %do.body5.i, label %do.body.i

do.body.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  %add.ptr4.i = getelementptr i8, ptr %add.ptr.i, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i, i32 %33) #5, !srcloc !33
  br label %if.end

do.body5.i:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  %add.ptr8.i = getelementptr i8, ptr %add.ptr.i, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr8.i, i32 %33) #5, !srcloc !33
  br label %if.end

if.end:                                           ; preds = %do.body5.i, %do.body.i, %while.body.if.end_crit_edge
  %34 = ptrtoint ptr %domain to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %domain, align 4
  %call21 = tail call i32 @generic_handle_domain_irq(ptr noundef %35, i32 noundef %sub) #5
  %neg = xor i32 %shl, -1
  %and23 = and i32 %irq_stat.043, %neg
  %cmp.not = icmp eq i32 %and23, 0
  br i1 %cmp.not, label %if.end.while.end_crit_edge, label %if.end.while.body_crit_edge

if.end.while.body_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body

if.end.while.end_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end

while.end:                                        ; preds = %if.end.while.end_crit_edge, %entry.while.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bgpio_init(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mxs_gpio_to_irq(ptr noundef %gc, i32 noundef %offset) #2 align 64 {
entry:
  %irq.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @gpiochip_get_data(ptr noundef %gc) #5
  %domain = getelementptr inbounds %struct.mxs_gpio_port, ptr %call, i32 0, i32 3
  %0 = ptrtoint ptr %domain to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %domain, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %irq.i) #5
  %2 = ptrtoint ptr %irq.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %irq.i, align 4, !annotation !41
  %call.i = call ptr @__irq_resolve_mapping(ptr noundef %1, i32 noundef %offset, ptr noundef nonnull %irq.i) #5
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %entry.irq_find_mapping.exit_crit_edge, label %if.then.i

entry.irq_find_mapping.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %irq_find_mapping.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %3 = ptrtoint ptr %irq.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %irq.i, align 4
  br label %irq_find_mapping.exit

irq_find_mapping.exit:                            ; preds = %if.then.i, %entry.irq_find_mapping.exit_crit_edge
  %retval.0.i = phi i32 [ %4, %if.then.i ], [ 0, %entry.irq_find_mapping.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %irq.i) #5
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mxs_gpio_get_direction(ptr noundef %gc, i32 noundef %offset) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @gpiochip_get_data(ptr noundef %gc) #5
  %0 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %call, align 4
  %devid.i = getelementptr inbounds %struct.mxs_gpio_port, ptr %call, i32 0, i32 6
  %2 = ptrtoint ptr %devid.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %devid.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp.i.not = icmp eq i32 %3, 0
  %cond = select i1 %cmp.i.not, i32 1792, i32 2816
  %id = getelementptr inbounds %struct.mxs_gpio_port, ptr %call, i32 0, i32 1
  %4 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %id, align 4
  %mul = shl i32 %5, 4
  %add = add i32 %cond, %mul
  %add.ptr = getelementptr i8, ptr %1, i32 %add
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #5, !srcloc !36
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !42
  %7 = xor i32 %6, -1
  %8 = tail call i32 @llvm.bswap.i32(i32 %7)
  %9 = lshr i32 %8, %offset
  %10 = and i32 %9, 1
  ret i32 %10
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiochip_add_data_with_key(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_domain_remove(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iounmap(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_irq_alloc_generic_chip(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @handle_level_irq(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_gc_ack_set_bit(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_gc_mask_disable_reg(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_gc_unmask_enable_reg(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mxs_gpio_set_irq_type(ptr noundef %d, i32 noundef %type) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %hwirq = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 2
  %0 = ptrtoint ptr %hwirq to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %hwirq, align 4
  %shl = shl nuw i32 1, %1
  %chip_data.i = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 7
  %2 = ptrtoint ptr %chip_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %chip_data.i, align 4
  %chip.i = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 4
  %4 = ptrtoint ptr %chip.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %chip.i, align 4
  %private = getelementptr inbounds %struct.irq_chip_generic, ptr %3, i32 0, i32 14
  %6 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %private, align 4
  %type2 = getelementptr inbounds %struct.irq_chip_type, ptr %5, i32 0, i32 3
  %8 = ptrtoint ptr %type2 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %type2, align 4
  %and = and i32 %9, %type
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end6_crit_edge

entry.if.end6_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end6

if.then:                                          ; preds = %entry
  %call3 = tail call i32 @irq_setup_alt_chip(ptr noundef %d, i32 noundef %type) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.then.if.end6_crit_edge, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then.if.end6_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end6

if.end6:                                          ; preds = %if.then.if.end6_crit_edge, %entry.if.end6_crit_edge
  %neg = xor i32 %shl, -1
  %both_edges = getelementptr inbounds %struct.mxs_gpio_port, ptr %7, i32 0, i32 7
  %10 = ptrtoint ptr %both_edges to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %both_edges, align 4
  %and7 = and i32 %11, %neg
  store i32 %and7, ptr %both_edges, align 4
  %12 = zext i32 %type to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values)
  switch i32 %type, label %if.end6.cleanup_crit_edge [
    i32 3, label %sw.bb
    i32 1, label %if.end6.sw.epilog_crit_edge
    i32 2, label %sw.bb18
    i32 8, label %sw.bb19
    i32 4, label %sw.bb20
  ]

if.end6.sw.epilog_crit_edge:                      ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

sw.bb:                                            ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #7
  %13 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %7, align 4
  %devid.i = getelementptr inbounds %struct.mxs_gpio_port, ptr %7, i32 0, i32 6
  %15 = ptrtoint ptr %devid.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %devid.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %cmp.i.not = icmp eq i32 %16, 0
  %cond = select i1 %cmp.i.not, i32 1536, i32 2304
  %id = getelementptr inbounds %struct.mxs_gpio_port, ptr %7, i32 0, i32 1
  %17 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %id, align 4
  %mul = shl i32 %18, 4
  %add = add i32 %cond, %mul
  %add.ptr = getelementptr i8, ptr %14, i32 %add
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #5, !srcloc !36
  %20 = tail call i32 @llvm.bswap.i32(i32 %19)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !43
  %and12 = and i32 %20, %shl
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12)
  %tobool13.not = icmp eq i32 %and12, 0
  %. = select i1 %tobool13.not, i32 2, i32 0
  %21 = ptrtoint ptr %both_edges to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %both_edges, align 4
  %or = or i32 %22, %shl
  store i32 %or, ptr %both_edges, align 4
  br label %sw.epilog

sw.bb18:                                          ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

sw.bb19:                                          ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

sw.bb20:                                          ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb20, %sw.bb19, %sw.bb18, %sw.bb, %if.end6.sw.epilog_crit_edge
  %edge.1 = phi i32 [ 3, %sw.bb20 ], [ 1, %sw.bb19 ], [ 0, %sw.bb18 ], [ %., %sw.bb ], [ 2, %if.end6.sw.epilog_crit_edge ]
  %23 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %7, align 4
  %devid.i139 = getelementptr inbounds %struct.mxs_gpio_port, ptr %7, i32 0, i32 6
  %25 = ptrtoint ptr %devid.i139 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %devid.i139, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %cmp.i140.not = icmp eq i32 %26, 0
  %cond24 = select i1 %cmp.i140.not, i32 2560, i32 4608
  %id25 = getelementptr inbounds %struct.mxs_gpio_port, ptr %7, i32 0, i32 1
  %27 = ptrtoint ptr %id25 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %id25, align 4
  %mul26 = shl i32 %28, 4
  %add27 = add i32 %cond24, %mul26
  %add.ptr28 = getelementptr i8, ptr %24, i32 %add27
  %and29 = and i32 %edge.1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and29)
  %tobool30.not = icmp eq i32 %and29, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5
  tail call void @arm_heavy_mb() #5
  %29 = tail call i32 @llvm.bswap.i32(i32 %shl)
  br i1 %tobool30.not, label %do.body46, label %do.body

do.body:                                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #7
  %add.ptr32 = getelementptr i8, ptr %add.ptr28, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr32, i32 %29) #5, !srcloc !33
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !44
  tail call void @arm_heavy_mb() #5
  %30 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %7, align 4
  %32 = ptrtoint ptr %devid.i139 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %devid.i139, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %cmp.i143.not = icmp eq i32 %33, 0
  %cond39 = select i1 %cmp.i143.not, i32 2304, i32 4352
  %34 = ptrtoint ptr %id25 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %id25, align 4
  %mul41 = shl i32 %35, 4
  %add42 = add i32 %cond39, %mul41
  %add.ptr43 = getelementptr i8, ptr %31, i32 %add42
  %add.ptr44 = getelementptr i8, ptr %add.ptr43, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr44, i32 %29) #5, !srcloc !33
  br label %if.end62

do.body46:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #7
  %add.ptr49 = getelementptr i8, ptr %add.ptr28, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr49, i32 %29) #5, !srcloc !33
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !45
  tail call void @arm_heavy_mb() #5
  %36 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %7, align 4
  %38 = ptrtoint ptr %devid.i139 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %devid.i139, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %cmp.i146.not = icmp eq i32 %39, 0
  %cond56 = select i1 %cmp.i146.not, i32 2048, i32 4096
  %40 = ptrtoint ptr %id25 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %id25, align 4
  %mul58 = shl i32 %41, 4
  %add59 = add i32 %cond56, %mul58
  %add.ptr60 = getelementptr i8, ptr %37, i32 %add59
  %add.ptr61 = getelementptr i8, ptr %add.ptr60, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr61, i32 %29) #5, !srcloc !33
  br label %if.end62

if.end62:                                         ; preds = %do.body46, %do.body
  %42 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %7, align 4
  %44 = ptrtoint ptr %devid.i139 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %devid.i139, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %45)
  %cmp.i149.not = icmp eq i32 %45, 0
  %cond66 = select i1 %cmp.i149.not, i32 2816, i32 4864
  %46 = ptrtoint ptr %id25 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %id25, align 4
  %mul68 = shl i32 %47, 4
  %add69 = add i32 %cond66, %mul68
  %add.ptr70 = getelementptr i8, ptr %43, i32 %add69
  %and71 = and i32 %edge.1, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and71)
  %tobool72.not = icmp eq i32 %and71, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5
  tail call void @arm_heavy_mb() #5
  %48 = tail call i32 @llvm.bswap.i32(i32 %shl)
  br i1 %tobool72.not, label %do.body79, label %do.body74

do.body74:                                        ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #7
  %add.ptr77 = getelementptr i8, ptr %add.ptr70, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr77, i32 %48) #5, !srcloc !33
  br label %do.body84

do.body79:                                        ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #7
  %add.ptr82 = getelementptr i8, ptr %add.ptr70, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr82, i32 %48) #5, !srcloc !33
  br label %do.body84

do.body84:                                        ; preds = %do.body79, %do.body74
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !46
  tail call void @arm_heavy_mb() #5
  %49 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %7, align 4
  %51 = ptrtoint ptr %devid.i139 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %devid.i139, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %52)
  %cmp.i152.not = icmp eq i32 %52, 0
  %cond90 = select i1 %cmp.i152.not, i32 3072, i32 5120
  %53 = ptrtoint ptr %id25 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %id25, align 4
  %mul92 = shl i32 %54, 4
  %add93 = add i32 %cond90, %mul92
  %add.ptr94 = getelementptr i8, ptr %50, i32 %add93
  %add.ptr95 = getelementptr i8, ptr %add.ptr94, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr95, i32 %48) #5, !srcloc !33
  br label %cleanup

cleanup:                                          ; preds = %do.body84, %if.end6.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.body84 ], [ -22, %if.then.cleanup_crit_edge ], [ -22, %if.end6.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mxs_gpio_set_wake_irq(ptr nocapture noundef readonly %d, i32 noundef %enable) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %chip_data.i = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 7
  %0 = ptrtoint ptr %chip_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip_data.i, align 4
  %private = getelementptr inbounds %struct.irq_chip_generic, ptr %1, i32 0, i32 14
  %2 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %enable)
  %tobool.not = icmp ne i32 %enable, 0
  %irq2 = getelementptr inbounds %struct.mxs_gpio_port, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %irq2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %irq2, align 4
  %. = zext i1 %tobool.not to i32
  %call.i5 = tail call i32 @irq_set_irq_wake(i32 noundef %5, i32 noundef %.) #5
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_irq_setup_generic_chip(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_setup_alt_chip(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_set_irq_wake(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @generic_handle_domain_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @gpiochip_get_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__irq_resolve_mapping(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 7)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 7)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !9, !11, !13, !15, !17, !19, !20}
!llvm.named.register.sp = !{!22}
!llvm.module.flags = !{!23, !24, !25, !26, !27, !28, !29, !30}
!llvm.ident = !{!31}

!0 = !{ptr @__initcall__kmod_gpio_mxs__227_361_mxs_gpio_init2, !1, !"__initcall__kmod_gpio_mxs__227_361_mxs_gpio_init2", i1 false, i1 false}
!1 = !{!"../drivers/gpio/gpio-mxs.c", i32 361, i32 1}
!2 = !{ptr @__UNIQUE_ID_author228, !3, !"__UNIQUE_ID_author228", i1 false, i1 false}
!3 = !{!"../drivers/gpio/gpio-mxs.c", i32 363, i32 1}
!4 = !{ptr @__UNIQUE_ID_description229, !5, !"__UNIQUE_ID_description229", i1 false, i1 false}
!5 = !{!"../drivers/gpio/gpio-mxs.c", i32 366, i32 1}
!6 = !{ptr @__UNIQUE_ID_file230, !7, !"__UNIQUE_ID_file230", i1 false, i1 false}
!7 = !{!"../drivers/gpio/gpio-mxs.c", i32 367, i32 1}
!8 = !{ptr @__UNIQUE_ID_license231, !7, !"__UNIQUE_ID_license231", i1 false, i1 false}
!9 = !{ptr @.str, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../drivers/gpio/gpio-mxs.c", i32 350, i32 11}
!11 = !{ptr @mxs_gpio_driver, !12, !"mxs_gpio_driver", i1 false, i1 false}
!12 = !{!"../drivers/gpio/gpio-mxs.c", i32 348, i32 31}
!13 = !{ptr @mxs_gpio_probe.base, !14, !"base", i1 false, i1 false}
!14 = !{!"../drivers/gpio/gpio-mxs.c", i32 263, i32 23}
!15 = !{ptr @.str.1, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/gpio/gpio-mxs.c", i32 272, i32 33}
!17 = !{ptr @mxs_gpio_probe.lock_key, !18, !"lock_key", i1 false, i1 false}
!18 = !{!"../drivers/gpio/gpio-mxs.c", i32 335, i32 8}
!19 = !{ptr @mxs_gpio_probe.request_key, !18, !"request_key", i1 false, i1 false}
!20 = !{ptr @mxs_gpio_dt_ids, !21, !"mxs_gpio_dt_ids", i1 false, i1 false}
!21 = !{!"../drivers/gpio/gpio-mxs.c", i32 252, i32 34}
!22 = !{!"sp"}
!23 = !{i32 1, !"wchar_size", i32 2}
!24 = !{i32 1, !"min_enum_size", i32 4}
!25 = !{i32 8, !"branch-target-enforcement", i32 0}
!26 = !{i32 8, !"sign-return-address", i32 0}
!27 = !{i32 8, !"sign-return-address-all", i32 0}
!28 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!29 = !{i32 7, !"uwtable", i32 1}
!30 = !{i32 7, !"frame-pointer", i32 2}
!31 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!32 = !{i64 2153983173}
!33 = !{i64 4206029}
!34 = !{i64 2153983742}
!35 = !{i64 2153984323}
!36 = !{i64 4206447}
!37 = !{i64 2153980570}
!38 = !{i64 2153981366}
!39 = !{i32 0, i32 33}
!40 = !{i64 2153979000}
!41 = !{!"auto-init"}
!42 = !{i64 2153982643}
!43 = !{i64 2153974840}
!44 = !{i64 2153975705}
!45 = !{i64 2153976725}
!46 = !{i64 2153978227}
