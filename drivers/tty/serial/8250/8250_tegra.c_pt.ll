; ModuleID = '/llk/IR_all_yes/drivers/tty/serial/8250/8250_tegra.c_pt.bc'
source_filename = "../drivers/tty/serial/8250/8250_tegra.c"
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
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.uart_8250_port = type { %struct.uart_port, %struct.timer_list, %struct.list_head, i32, i16, i8, i32, i8, i8, i8, i8, i8, i8, i32, i8, i8, ptr, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.delayed_work, i32 }
%struct.uart_port = type { %struct.spinlock, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i8, i8, i8, i8, i32, i32, ptr, %struct.uart_icount, ptr, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, ptr, i32, i32, i8, i8, i8, i8, i8, ptr, ptr, ptr, %struct.serial_rs485, ptr, %struct.serial_iso7816, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.uart_icount = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.serial_rs485 = type { i32, i32, i32, [5 x i32] }
%struct.serial_iso7816 = type { i32, i32, i32, i32, i32, [5 x i32] }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.list_head = type { ptr, ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
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
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.tegra_uart = type { ptr, ptr, i32 }
%struct.console = type { [16 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, i16, i16, i32, i32, i32, ptr, ptr }

@__initcall__kmod_8250_tegra__234_195_tegra_uart_driver_init6 = internal global ptr @tegra_uart_driver_init, section ".initcall6.init", align 4
@tegra_uart_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @tegra_uart_probe, ptr @tegra_uart_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @tegra_uart_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @tegra_uart_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_tegra_uart_driver_exit = internal global ptr @tegra_uart_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author235 = internal constant [51 x i8] c"8250_tegra.author=Jeff Brasen <jbrasen@nvidia.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description236 = internal constant [48 x i8] c"8250_tegra.description=NVIDIA Tegra 8250 Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file237 = internal constant [51 x i8] c"8250_tegra.file=drivers/tty/serial/8250/8250_tegra\00", section ".modinfo", align 1
@__UNIQUE_ID_license238 = internal constant [26 x i8] c"8250_tegra.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"tegra-uart\00", [21 x i8] zeroinitializer }, align 32
@tegra_uart_of_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"nvidia,tegra20-uart\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@tegra_uart_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @tegra_uart_suspend, ptr @tegra_uart_resume, ptr @tegra_uart_suspend, ptr @tegra_uart_resume, ptr @tegra_uart_suspend, ptr @tegra_uart_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@tegra_uart_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&port->lock\00", [20 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"serial\00", [25 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"clock-frequency\00", [16 x i8] zeroinitializer }, align 32
@tegra_uart_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.5, ptr @.str.6, i32 98, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"failed to get clock!\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"tegra_uart_probe\00", [47 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"drivers/tty/serial/8250/8250_tegra.c\00", [59 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@tegra_uart_probe._entry_ptr = internal global ptr @tegra_uart_probe._entry, section ".printk_index", align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@console_suspend_enabled = external dso_local local_unnamed_addr global i8, align 1
@___asan_gen_.9 = private unnamed_addr constant [18 x i8] c"tegra_uart_driver\00", align 1
@___asan_gen_.11 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.49, i32 184, i32 31 }
@___asan_gen_.14 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.49, i32 186, i32 11 }
@___asan_gen_.15 = private unnamed_addr constant [20 x i8] c"tegra_uart_of_match\00", align 1
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.49, i32 172, i32 34 }
@___asan_gen_.18 = private unnamed_addr constant [18 x i8] c"tegra_uart_pm_ops\00", align 1
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.49, i32 169, i32 8 }
@___asan_gen_.21 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.49, i32 57, i32 2 }
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.49, i32 68, i32 43 }
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.49, i32 94, i32 43 }
@___asan_gen_.33 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.48 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.49 = private constant [40 x i8] c"../drivers/tty/serial/8250/8250_tegra.c\00", align 1
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.49, i32 98, i32 4 }
@llvm.compiler.used = appending global [22 x ptr] [ptr @__UNIQUE_ID_author235, ptr @__UNIQUE_ID_description236, ptr @__UNIQUE_ID_file237, ptr @__UNIQUE_ID_license238, ptr @__exitcall_tegra_uart_driver_exit, ptr @__initcall__kmod_8250_tegra__234_195_tegra_uart_driver_init6, ptr @tegra_uart_driver_exit, ptr @tegra_uart_probe._entry, ptr @tegra_uart_probe._entry_ptr, ptr @tegra_uart_driver, ptr @.str, ptr @tegra_uart_of_match, ptr @tegra_uart_pm_ops, ptr @tegra_uart_probe.__key, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8], section "llvm.metadata"
@0 = internal global [14 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_uart_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_uart_of_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_uart_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_uart_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_uart_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @tegra_uart_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @tegra_uart_driver, ptr noundef null) #5
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @tegra_uart_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @platform_driver_unregister(ptr noundef nonnull @tegra_uart_driver) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tegra_uart_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %port8250 = alloca %struct.uart_8250_port, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 584, ptr nonnull %port8250) #5
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 12, i32 noundef 3520) #5
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = call ptr @memset(ptr %port8250, i32 0, i32 584)
  call void @__raw_spin_lock_init(ptr noundef nonnull %port8250, ptr noundef nonnull @.str.1, ptr noundef nonnull @tegra_uart_probe.__key, i16 noundef signext 3) #5
  %flags = getelementptr inbounds %struct.uart_port, ptr %port8250, i32 0, i32 33
  %1 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 956301312, ptr %flags, align 4
  %iotype = getelementptr inbounds %struct.uart_port, ptr %port8250, i32 0, i32 26
  %2 = ptrtoint ptr %iotype to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 3, ptr %iotype, align 2
  %regshift = getelementptr inbounds %struct.uart_port, ptr %port8250, i32 0, i32 25
  %3 = ptrtoint ptr %regshift to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 2, ptr %regshift, align 1
  %type = getelementptr inbounds %struct.uart_port, ptr %port8250, i32 0, i32 38
  %4 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 20, ptr %type, align 4
  %irqflags = getelementptr inbounds %struct.uart_port, ptr %port8250, i32 0, i32 21
  %5 = ptrtoint ptr %irqflags to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %irqflags, align 4
  %or = or i32 %6, 128
  store i32 %or, ptr %irqflags, align 4
  %dev4 = getelementptr inbounds %struct.uart_port, ptr %port8250, i32 0, i32 45
  %7 = ptrtoint ptr %dev4 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %dev, ptr %dev4, align 4
  %handle_break = getelementptr inbounds %struct.uart_port, ptr %port8250, i32 0, i32 17
  %8 = ptrtoint ptr %handle_break to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @tegra_uart_handle_break, ptr %handle_break, align 4
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %9 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %of_node, align 8
  %call6 = call i32 @of_alias_get_id(ptr noundef %10, ptr noundef nonnull @.str.2) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call6)
  %cmp = icmp sgt i32 %call6, -1
  br i1 %cmp, label %if.then7, label %if.end.if.end8_crit_edge

if.end.if.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end8

if.then7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %line = getelementptr inbounds %struct.uart_port, ptr %port8250, i32 0, i32 41
  %11 = ptrtoint ptr %line to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %call6, ptr %line, align 4
  br label %if.end8

if.end8:                                          ; preds = %if.then7, %if.end.if.end8_crit_edge
  %call9 = call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %cmp10 = icmp slt i32 %call9, 0
  br i1 %cmp10, label %if.end8.cleanup_crit_edge, label %if.end12

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end12:                                         ; preds = %if.end8
  %irq = getelementptr inbounds %struct.uart_port, ptr %port8250, i32 0, i32 20
  %12 = ptrtoint ptr %irq to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %call9, ptr %irq, align 4
  %call13 = call ptr @platform_get_resource(ptr noundef %pdev, i32 noundef 512, i32 noundef 0) #5
  %tobool14.not = icmp eq ptr %call13, null
  br i1 %tobool14.not, label %if.end12.cleanup_crit_edge, label %if.end16

if.end12.cleanup_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end16:                                         ; preds = %if.end12
  %13 = ptrtoint ptr %call13 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %call13, align 4
  %end.i = getelementptr inbounds %struct.resource, ptr %call13, i32 0, i32 1
  %15 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %end.i, align 4
  %sub.i = sub i32 1, %14
  %add.i = add i32 %sub.i, %16
  %call19 = call ptr @devm_ioremap(ptr noundef %dev, i32 noundef %14, i32 noundef %add.i) #5
  %membase = getelementptr inbounds %struct.uart_port, ptr %port8250, i32 0, i32 2
  %17 = ptrtoint ptr %membase to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %call19, ptr %membase, align 4
  %tobool21.not = icmp eq ptr %call19, null
  br i1 %tobool21.not, label %if.end16.cleanup_crit_edge, label %if.end23

if.end16.cleanup_crit_edge:                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end23:                                         ; preds = %if.end16
  %18 = ptrtoint ptr %call13 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %call13, align 4
  %mapbase = getelementptr inbounds %struct.uart_port, ptr %port8250, i32 0, i32 43
  %20 = ptrtoint ptr %mapbase to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %mapbase, align 4
  %21 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %end.i, align 4
  %23 = load i32, ptr %call13, align 4
  %sub.i123 = add i32 %22, 1
  %add.i124 = sub i32 %sub.i123, %23
  %mapsize = getelementptr inbounds %struct.uart_port, ptr %port8250, i32 0, i32 44
  %24 = ptrtoint ptr %mapsize to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %add.i124, ptr %mapsize, align 4
  %call.i125 = call ptr @__devm_reset_control_get(ptr noundef %dev, ptr noundef null, i32 noundef 0, i1 noundef zeroext true, i1 noundef zeroext true, i1 noundef zeroext false) #5
  %rst = getelementptr inbounds %struct.tegra_uart, ptr %call.i, i32 0, i32 1
  %25 = ptrtoint ptr %rst to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %call.i125, ptr %rst, align 4
  %cmp.i = icmp ugt ptr %call.i125, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then30, label %if.end33

if.then30:                                        ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #7
  %26 = ptrtoint ptr %call.i125 to i32
  br label %cleanup

if.end33:                                         ; preds = %if.end23
  %uartclk = getelementptr inbounds %struct.uart_port, ptr %port8250, i32 0, i32 22
  %call.i126 = call i32 @device_property_read_u32_array(ptr noundef %dev, ptr noundef nonnull @.str.3, ptr noundef %uartclk, i32 noundef 1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i126)
  %tobool36.not = icmp eq i32 %call.i126, 0
  br i1 %tobool36.not, label %if.end33.if.end56_crit_edge, label %if.then37

if.end33.if.end56_crit_edge:                      ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end56

if.then37:                                        ; preds = %if.end33
  %call39 = call ptr @devm_clk_get(ptr noundef %dev, ptr noundef null) #5
  %27 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %call39, ptr %call.i, align 4
  %cmp.i127 = icmp ugt ptr %call39, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i127, label %do.end45, label %if.end47

do.end45:                                         ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.4) #8
  br label %cleanup

if.end47:                                         ; preds = %if.then37
  %call.i128 = call i32 @clk_prepare(ptr noundef %call39) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i128)
  %tobool.not.i = icmp eq i32 %call.i128, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end47.clk_prepare_enable.exit_crit_edge

if.end47.clk_prepare_enable.exit_crit_edge:       ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #7
  br label %clk_prepare_enable.exit

if.end.i:                                         ; preds = %if.end47
  %call1.i = call i32 @clk_enable(ptr noundef %call39) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end.i.if.end52_crit_edge, label %if.then3.i

if.end.i.if.end52_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end52

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  call void @clk_unprepare(ptr noundef %call39) #5
  br label %clk_prepare_enable.exit

clk_prepare_enable.exit:                          ; preds = %if.then3.i, %if.end47.clk_prepare_enable.exit_crit_edge
  %retval.0.i = phi i32 [ %call.i128, %if.end47.clk_prepare_enable.exit_crit_edge ], [ %call1.i, %if.then3.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %cmp50 = icmp slt i32 %retval.0.i, 0
  br i1 %cmp50, label %clk_prepare_enable.exit.cleanup_crit_edge, label %clk_prepare_enable.exit.if.end52_crit_edge

clk_prepare_enable.exit.if.end52_crit_edge:       ; preds = %clk_prepare_enable.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end52

clk_prepare_enable.exit.cleanup_crit_edge:        ; preds = %clk_prepare_enable.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end52:                                         ; preds = %clk_prepare_enable.exit.if.end52_crit_edge, %if.end.i.if.end52_crit_edge
  %28 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %call.i, align 4
  %call54 = call i32 @clk_get_rate(ptr noundef %29) #5
  %30 = ptrtoint ptr %uartclk to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %call54, ptr %uartclk, align 4
  br label %if.end56

if.end56:                                         ; preds = %if.end52, %if.end33.if.end56_crit_edge
  %31 = ptrtoint ptr %rst to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %rst, align 4
  %call58 = call i32 @reset_control_deassert(ptr noundef %32) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %if.end61, label %if.end56.err_clkdisable_crit_edge

if.end56.err_clkdisable_crit_edge:                ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #7
  br label %err_clkdisable

if.end61:                                         ; preds = %if.end56
  %call62 = call i32 @serial8250_register_8250_port(ptr noundef nonnull %port8250) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call62)
  %cmp63 = icmp slt i32 %call62, 0
  br i1 %cmp63, label %if.end61.err_clkdisable_crit_edge, label %if.end65

if.end61.err_clkdisable_crit_edge:                ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #7
  br label %err_clkdisable

if.end65:                                         ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #7
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %33 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %line66 = getelementptr inbounds %struct.tegra_uart, ptr %call.i, i32 0, i32 2
  %34 = ptrtoint ptr %line66 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %call62, ptr %line66, align 4
  br label %cleanup

err_clkdisable:                                   ; preds = %if.end61.err_clkdisable_crit_edge, %if.end56.err_clkdisable_crit_edge
  %ret.0 = phi i32 [ %call58, %if.end56.err_clkdisable_crit_edge ], [ %call62, %if.end61.err_clkdisable_crit_edge ]
  %35 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %call.i, align 4
  call void @clk_disable(ptr noundef %36) #5
  call void @clk_unprepare(ptr noundef %36) #5
  br label %cleanup

cleanup:                                          ; preds = %err_clkdisable, %if.end65, %clk_prepare_enable.exit.cleanup_crit_edge, %do.end45, %if.then30, %if.end16.cleanup_crit_edge, %if.end12.cleanup_crit_edge, %if.end8.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %26, %if.then30 ], [ -19, %do.end45 ], [ %ret.0, %err_clkdisable ], [ 0, %if.end65 ], [ -12, %entry.cleanup_crit_edge ], [ %call9, %if.end8.cleanup_crit_edge ], [ -19, %if.end12.cleanup_crit_edge ], [ -12, %if.end16.cleanup_crit_edge ], [ %retval.0.i, %clk_prepare_enable.exit.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 584, ptr nonnull %port8250) #5
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tegra_uart_remove(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %line = getelementptr inbounds %struct.tegra_uart, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %line to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %line, align 4
  tail call void @serial8250_unregister_port(i32 noundef %3) #5
  %rst = getelementptr inbounds %struct.tegra_uart, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %rst to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %rst, align 4
  %call1 = tail call i32 @reset_control_assert(ptr noundef %5) #5
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 4
  tail call void @clk_disable(ptr noundef %7) #5
  tail call void @clk_unprepare(ptr noundef %7) #5
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tegra_uart_handle_break(ptr noundef %p) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %serial_in = getelementptr inbounds %struct.uart_port, ptr %p, i32 0, i32 3
  %0 = ptrtoint ptr %serial_in to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %serial_in, align 4
  %call8 = tail call i32 %1(ptr noundef %p, i32 noundef 5) #5
  %and9 = and i32 %call8, 158
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9)
  %tobool.not10 = icmp eq i32 %and9, 0
  br i1 %tobool.not10, label %entry.while.end_crit_edge, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  br label %if.end

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end

if.end:                                           ; preds = %if.end4.if.end_crit_edge, %entry.if.end_crit_edge
  %tmout.011 = phi i32 [ %dec, %if.end4.if.end_crit_edge ], [ 10000, %entry.if.end_crit_edge ]
  %2 = ptrtoint ptr %serial_in to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %serial_in, align 4
  %call2 = tail call i32 %3(ptr noundef %p, i32 noundef 0) #5
  %dec = add nsw i32 %tmout.011, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %cmp = icmp eq i32 %dec, 0
  br i1 %cmp, label %if.end.while.end_crit_edge, label %if.end4

if.end.while.end_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end

if.end4:                                          ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %4 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %4(i32 noundef 214748) #5
  %5 = ptrtoint ptr %serial_in to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %serial_in, align 4
  %call = tail call i32 %6(ptr noundef %p, i32 noundef 5) #5
  %and = and i32 %call, 158
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end4.while.end_crit_edge, label %if.end4.if.end_crit_edge

if.end4.if.end_crit_edge:                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.end4.while.end_crit_edge:                      ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end

while.end:                                        ; preds = %if.end4.while.end_crit_edge, %if.end.while.end_crit_edge, %entry.while.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_alias_get_id(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_deassert(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @serial8250_register_8250_port(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_reset_control_get(ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_property_read_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @serial8250_unregister_port(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_assert(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tegra_uart_suspend(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %line = getelementptr inbounds %struct.tegra_uart, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %line to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %line, align 4
  %call1 = tail call ptr @serial8250_get_port(i32 noundef %3) #5
  %4 = ptrtoint ptr %line to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %line, align 4
  tail call void @serial8250_suspend_port(i32 noundef %5) #5
  %cons = getelementptr inbounds %struct.uart_port, ptr %call1, i32 0, i32 32
  %6 = ptrtoint ptr %cons to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %cons, align 4
  %tobool.not = icmp eq ptr %7, null
  br i1 %tobool.not, label %entry.if.then_crit_edge, label %land.lhs.true

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then

land.lhs.true:                                    ; preds = %entry
  %index = getelementptr inbounds %struct.console, ptr %7, i32 0, i32 9
  %8 = ptrtoint ptr %index to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %index, align 2
  %conv = sext i16 %9 to i32
  %line5 = getelementptr inbounds %struct.uart_port, ptr %call1, i32 0, i32 41
  %10 = ptrtoint ptr %line5 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %line5, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %conv)
  %cmp = icmp eq i32 %11, %conv
  br i1 %cmp, label %lor.lhs.false, label %land.lhs.true.if.then_crit_edge

land.lhs.true.if.then_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then

lor.lhs.false:                                    ; preds = %land.lhs.true
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @console_suspend_enabled to i32))
  %12 = load i8, ptr @console_suspend_enabled, align 1, !range !42
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool7.not = icmp eq i8 %12, 0
  br i1 %tobool7.not, label %lor.lhs.false.if.end_crit_edge, label %lor.lhs.false.if.then_crit_edge

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then

lor.lhs.false.if.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %land.lhs.true.if.then_crit_edge, %entry.if.then_crit_edge
  %13 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %1, align 4
  tail call void @clk_disable(ptr noundef %14) #5
  tail call void @clk_unprepare(ptr noundef %14) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %lor.lhs.false.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tegra_uart_resume(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %line = getelementptr inbounds %struct.tegra_uart, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %line to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %line, align 4
  %call1 = tail call ptr @serial8250_get_port(i32 noundef %3) #5
  %cons = getelementptr inbounds %struct.uart_port, ptr %call1, i32 0, i32 32
  %4 = ptrtoint ptr %cons to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %cons, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %entry.if.then_crit_edge, label %land.lhs.true

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then

land.lhs.true:                                    ; preds = %entry
  %index = getelementptr inbounds %struct.console, ptr %5, i32 0, i32 9
  %6 = ptrtoint ptr %index to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %index, align 2
  %conv = sext i16 %7 to i32
  %line4 = getelementptr inbounds %struct.uart_port, ptr %call1, i32 0, i32 41
  %8 = ptrtoint ptr %line4 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %line4, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %conv)
  %cmp = icmp eq i32 %9, %conv
  br i1 %cmp, label %lor.lhs.false, label %land.lhs.true.if.then_crit_edge

land.lhs.true.if.then_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then

lor.lhs.false:                                    ; preds = %land.lhs.true
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @console_suspend_enabled to i32))
  %10 = load i8, ptr @console_suspend_enabled, align 1, !range !42
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool6.not = icmp eq i8 %10, 0
  br i1 %tobool6.not, label %lor.lhs.false.if.end_crit_edge, label %lor.lhs.false.if.then_crit_edge

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then

lor.lhs.false.if.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %land.lhs.true.if.then_crit_edge, %entry.if.then_crit_edge
  %11 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %1, align 4
  %call.i = tail call i32 @clk_prepare(ptr noundef %12) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then.if.end_crit_edge

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.end.i:                                         ; preds = %if.then
  %call1.i = tail call i32 @clk_enable(ptr noundef %12) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end.i.if.end_crit_edge, label %if.then3.i

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @clk_unprepare(ptr noundef %12) #5
  br label %if.end

if.end:                                           ; preds = %if.then3.i, %if.end.i.if.end_crit_edge, %if.then.if.end_crit_edge, %lor.lhs.false.if.end_crit_edge
  %13 = ptrtoint ptr %line to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %line, align 4
  tail call void @serial8250_resume_port(i32 noundef %14) #5
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @serial8250_get_port(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @serial8250_suspend_port(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @serial8250_resume_port(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 14)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 14)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !17, !19, !21, !23, !24, !25, !26, !27, !28, !29, !31}
!llvm.module.flags = !{!33, !34, !35, !36, !37, !38, !39, !40}
!llvm.ident = !{!41}

!0 = !{ptr @__initcall__kmod_8250_tegra__234_195_tegra_uart_driver_init6, !1, !"__initcall__kmod_8250_tegra__234_195_tegra_uart_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/tty/serial/8250/8250_tegra.c", i32 195, i32 1}
!2 = !{ptr @__exitcall_tegra_uart_driver_exit, !1, !"__exitcall_tegra_uart_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author235, !4, !"__UNIQUE_ID_author235", i1 false, i1 false}
!4 = !{!"../drivers/tty/serial/8250/8250_tegra.c", i32 197, i32 1}
!5 = !{ptr @__UNIQUE_ID_description236, !6, !"__UNIQUE_ID_description236", i1 false, i1 false}
!6 = !{!"../drivers/tty/serial/8250/8250_tegra.c", i32 198, i32 1}
!7 = !{ptr @__UNIQUE_ID_file237, !8, !"__UNIQUE_ID_file237", i1 false, i1 false}
!8 = !{!"../drivers/tty/serial/8250/8250_tegra.c", i32 199, i32 1}
!9 = !{ptr @__UNIQUE_ID_license238, !8, !"__UNIQUE_ID_license238", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/tty/serial/8250/8250_tegra.c", i32 186, i32 11}
!12 = !{ptr @tegra_uart_driver, !13, !"tegra_uart_driver", i1 false, i1 false}
!13 = !{!"../drivers/tty/serial/8250/8250_tegra.c", i32 184, i32 31}
!14 = !{ptr @tegra_uart_probe.__key, !15, !"__key", i1 false, i1 false}
!15 = !{!"../drivers/tty/serial/8250/8250_tegra.c", i32 57, i32 2}
!16 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.2, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/tty/serial/8250/8250_tegra.c", i32 68, i32 43}
!19 = !{ptr @.str.3, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/tty/serial/8250/8250_tegra.c", i32 94, i32 43}
!21 = !{ptr @.str.4, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/tty/serial/8250/8250_tegra.c", i32 98, i32 4}
!23 = !{ptr @.str.5, !22, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.6, !22, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.7, !22, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @.str.8, !22, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @tegra_uart_probe._entry, !22, !"_entry", i1 false, i1 false}
!28 = !{ptr @tegra_uart_probe._entry_ptr, !22, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @tegra_uart_of_match, !30, !"tegra_uart_of_match", i1 false, i1 false}
!30 = !{!"../drivers/tty/serial/8250/8250_tegra.c", i32 172, i32 34}
!31 = !{ptr @tegra_uart_pm_ops, !32, !"tegra_uart_pm_ops", i1 false, i1 false}
!32 = !{!"../drivers/tty/serial/8250/8250_tegra.c", i32 169, i32 8}
!33 = !{i32 1, !"wchar_size", i32 2}
!34 = !{i32 1, !"min_enum_size", i32 4}
!35 = !{i32 8, !"branch-target-enforcement", i32 0}
!36 = !{i32 8, !"sign-return-address", i32 0}
!37 = !{i32 8, !"sign-return-address-all", i32 0}
!38 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!39 = !{i32 7, !"uwtable", i32 1}
!40 = !{i32 7, !"frame-pointer", i32 2}
!41 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!42 = !{i8 0, i8 2}
