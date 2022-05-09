; ModuleID = '/llk/IR_all_yes/drivers/tty/serial/8250/8250_mid.c_pt.bc'
source_filename = "../drivers/tty/serial/8250/8250_mid.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pci_driver = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, %struct.pci_dynids }
%struct.list_head = type { ptr, ptr }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pci_dynids = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.pci_device_id = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.mid8250_board = type { i32, i32, i32, ptr, ptr }
%struct.uart_8250_port = type { %struct.uart_port, %struct.timer_list, %struct.list_head, i32, i16, i8, i32, i8, i8, i8, i8, i8, i8, i32, i8, i8, ptr, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.delayed_work, i32 }
%struct.uart_port = type { %struct.spinlock, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i8, i8, i8, i8, i32, i32, ptr, %struct.uart_icount, ptr, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, ptr, i32, i32, i8, i8, i8, i8, i8, ptr, ptr, ptr, %struct.serial_rs485, ptr, %struct.serial_iso7816, ptr }
%struct.uart_icount = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.serial_rs485 = type { i32, i32, i32, [5 x i32] }
%struct.serial_iso7816 = type { i32, i32, i32, i32, i32, [5 x i32] }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.73, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
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
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.hlist_head = type { ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.73 = type { ptr }
%struct.mid8250 = type { i32, i32, ptr, %struct.uart_8250_dma, ptr, %struct.hsu_dma_chip }
%struct.uart_8250_dma = type { ptr, ptr, ptr, ptr, ptr, %struct.dma_slave_config, %struct.dma_slave_config, ptr, ptr, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i8, i8, i8 }
%struct.dma_slave_config = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, ptr, i32 }
%struct.hsu_dma_chip = type { ptr, i32, ptr, i32, i32, ptr }
%struct.hsu_dma_slave = type { ptr, i32 }
%struct.dma_device = type { %struct.kref, i32, i32, %struct.list_head, %struct.list_head, %struct.dma_filter, %struct.dma_cap_mask_t, i32, i16, i16, i32, i32, i32, i32, i32, ptr, ptr, %struct.ida, %struct.mutex, i32, i32, i32, i32, i32, i32, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dma_filter = type { ptr, i32, ptr }
%struct.dma_cap_mask_t = type { [1 x i32] }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.dma_chan = type { ptr, ptr, i32, i32, i32, ptr, ptr, ptr, %struct.list_head, ptr, i32, i32, ptr, ptr, ptr }

@__initcall__kmod_8250_mid__238_391_mid8250_pci_driver_init6 = internal global ptr @mid8250_pci_driver_init, section ".initcall6.init", align 4
@mid8250_pci_driver = internal global { %struct.pci_driver, [36 x i8] } { %struct.pci_driver { %struct.list_head zeroinitializer, ptr @.str, ptr @pci_ids, ptr @mid8250_probe, ptr @mid8250_remove, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver zeroinitializer, %struct.pci_dynids zeroinitializer }, [36 x i8] zeroinitializer }, align 32
@__exitcall_mid8250_pci_driver_exit = internal global ptr @mid8250_pci_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author239 = internal constant [34 x i8] c"8250_mid.author=Intel Corporation\00", section ".modinfo", align 1
@__UNIQUE_ID_file240 = internal constant [47 x i8] c"8250_mid.file=drivers/tty/serial/8250/8250_mid\00", section ".modinfo", align 1
@__UNIQUE_ID_license241 = internal constant [24 x i8] c"8250_mid.license=GPL v2\00", section ".modinfo", align 1
@__UNIQUE_ID_description242 = internal constant [43 x i8] c"8250_mid.description=Intel MID UART driver\00", section ".modinfo", align 1
@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"8250_mid\00", [23 x i8] zeroinitializer }, align 32
@pci_ids = internal constant { [7 x %struct.pci_device_id], [32 x i8] } { [7 x %struct.pci_device_id] [%struct.pci_device_id { i32 32902, i32 2075, i32 -1, i32 -1, i32 0, i32 0, i32 ptrtoint (ptr @pnw_board to i32), i32 0 }, %struct.pci_device_id { i32 32902, i32 2076, i32 -1, i32 -1, i32 0, i32 0, i32 ptrtoint (ptr @pnw_board to i32), i32 0 }, %struct.pci_device_id { i32 32902, i32 2077, i32 -1, i32 -1, i32 0, i32 0, i32 ptrtoint (ptr @pnw_board to i32), i32 0 }, %struct.pci_device_id { i32 32902, i32 4497, i32 -1, i32 -1, i32 0, i32 0, i32 ptrtoint (ptr @tng_board to i32), i32 0 }, %struct.pci_device_id { i32 32902, i32 6360, i32 -1, i32 -1, i32 0, i32 0, i32 ptrtoint (ptr @dnv_board to i32), i32 0 }, %struct.pci_device_id { i32 32902, i32 6616, i32 -1, i32 -1, i32 0, i32 0, i32 ptrtoint (ptr @dnv_board to i32), i32 0 }, %struct.pci_device_id zeroinitializer], [32 x i8] zeroinitializer }, align 32
@pnw_board = internal constant { %struct.mid8250_board, [44 x i8] } { %struct.mid8250_board { i32 0, i32 50000000, i32 115200, ptr @pnw_setup, ptr null }, [44 x i8] zeroinitializer }, align 32
@tng_board = internal constant { %struct.mid8250_board, [44 x i8] } { %struct.mid8250_board { i32 0, i32 38400000, i32 1843200, ptr @tng_setup, ptr null }, [44 x i8] zeroinitializer }, align 32
@dnv_board = internal constant { %struct.mid8250_board, [44 x i8] } { %struct.mid8250_board { i32 1, i32 133333333, i32 115200, ptr @dnv_setup, ptr @dnv_exit }, [44 x i8] zeroinitializer }, align 32
@___asan_gen_.1 = private unnamed_addr constant [19 x i8] c"mid8250_pci_driver\00", align 1
@___asan_gen_.3 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.17, i32 384, i32 26 }
@___asan_gen_.4 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.6 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.17, i32 391, i32 1 }
@___asan_gen_.7 = private unnamed_addr constant [8 x i8] c"pci_ids\00", align 1
@___asan_gen_.9 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.17, i32 373, i32 35 }
@___asan_gen_.10 = private unnamed_addr constant [10 x i8] c"pnw_board\00", align 1
@___asan_gen_.12 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.17, i32 349, i32 35 }
@___asan_gen_.13 = private unnamed_addr constant [10 x i8] c"tng_board\00", align 1
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.17, i32 356, i32 35 }
@___asan_gen_.16 = private unnamed_addr constant [10 x i8] c"dnv_board\00", align 1
@___asan_gen_.17 = private constant [38 x i8] c"../drivers/tty/serial/8250/8250_mid.c\00", align 1
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.17, i32 363, i32 35 }
@llvm.compiler.used = appending global [13 x ptr] [ptr @__UNIQUE_ID_author239, ptr @__UNIQUE_ID_description242, ptr @__UNIQUE_ID_file240, ptr @__UNIQUE_ID_license241, ptr @__exitcall_mid8250_pci_driver_exit, ptr @__initcall__kmod_8250_mid__238_391_mid8250_pci_driver_init6, ptr @mid8250_pci_driver_exit, ptr @mid8250_pci_driver, ptr @.str, ptr @pci_ids, ptr @pnw_board, ptr @tng_board, ptr @dnv_board], section "llvm.metadata"
@0 = internal global [6 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mid8250_pci_driver to i32), i32 188, i32 224, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pci_ids to i32), i32 224, i32 256, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pnw_board to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tng_board to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dnv_board to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @mid8250_pci_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__pci_register_driver(ptr noundef nonnull @mid8250_pci_driver, ptr noundef null, ptr noundef nonnull @.str) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @mid8250_pci_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @pci_unregister_driver(ptr noundef nonnull @mid8250_pci_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_unregister_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pci_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mid8250_probe(ptr noundef %pdev, ptr nocapture noundef readonly %id) #2 align 64 {
entry:
  %uart = alloca %struct.uart_8250_port, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 584, ptr nonnull %uart) #6
  %call = tail call i32 @pcim_enable_device(ptr noundef %pdev) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %dev = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 204, i32 noundef 3520) #6
  %tobool2.not = icmp eq ptr %call.i, null
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %driver_data = getelementptr inbounds %struct.pci_device_id, ptr %id, i32 0, i32 6
  %0 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %driver_data, align 4
  %2 = inttoptr i32 %1 to ptr
  %board = getelementptr inbounds %struct.mid8250, ptr %call.i, i32 0, i32 4
  %3 = ptrtoint ptr %board to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %2, ptr %board, align 4
  %4 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %2, align 4
  %and = and i32 %5, 7
  %6 = call ptr @memset(ptr %uart, i32 0, i32 584)
  %dev7 = getelementptr inbounds %struct.uart_port, ptr %uart, i32 0, i32 45
  %7 = ptrtoint ptr %dev7 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %dev, ptr %dev7, align 4
  %irq = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 46
  %8 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %irq, align 4
  %irq9 = getelementptr inbounds %struct.uart_port, ptr %uart, i32 0, i32 20
  %10 = ptrtoint ptr %irq9 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %irq9, align 4
  %private_data = getelementptr inbounds %struct.uart_port, ptr %uart, i32 0, i32 59
  %11 = ptrtoint ptr %private_data to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call.i, ptr %private_data, align 4
  %type = getelementptr inbounds %struct.uart_port, ptr %uart, i32 0, i32 38
  %12 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 8, ptr %type, align 4
  %iotype = getelementptr inbounds %struct.uart_port, ptr %uart, i32 0, i32 26
  %13 = ptrtoint ptr %iotype to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 2, ptr %iotype, align 2
  %base_baud = getelementptr inbounds %struct.mid8250_board, ptr %2, i32 0, i32 2
  %14 = ptrtoint ptr %base_baud to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %base_baud, align 4
  %mul = shl i32 %15, 4
  %uartclk = getelementptr inbounds %struct.uart_port, ptr %uart, i32 0, i32 22
  %16 = ptrtoint ptr %uartclk to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %mul, ptr %uartclk, align 4
  %flags16 = getelementptr inbounds %struct.uart_port, ptr %uart, i32 0, i32 33
  %17 = ptrtoint ptr %flags16 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 687865856, ptr %flags16, align 4
  %set_termios = getelementptr inbounds %struct.uart_port, ptr %uart, i32 0, i32 5
  %18 = ptrtoint ptr %set_termios to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr @mid8250_set_termios, ptr %set_termios, align 4
  %arrayidx = getelementptr %struct.pci_dev, ptr %pdev, i32 0, i32 47, i32 %and
  %19 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %arrayidx, align 8
  %mapbase = getelementptr inbounds %struct.uart_port, ptr %uart, i32 0, i32 43
  %21 = ptrtoint ptr %mapbase to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %mapbase, align 4
  %call19 = tail call ptr @pcim_iomap(ptr noundef %pdev, i32 noundef %and, i32 noundef 0) #6
  %membase = getelementptr inbounds %struct.uart_port, ptr %uart, i32 0, i32 2
  %22 = ptrtoint ptr %membase to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %call19, ptr %membase, align 4
  %tobool23.not = icmp eq ptr %call19, null
  br i1 %tobool23.not, label %if.end4.cleanup_crit_edge, label %if.end25

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end25:                                         ; preds = %if.end4
  %23 = ptrtoint ptr %board to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %board, align 4
  %setup = getelementptr inbounds %struct.mid8250_board, ptr %24, i32 0, i32 3
  %25 = ptrtoint ptr %setup to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %setup, align 4
  %tobool27.not = icmp eq ptr %26, null
  br i1 %tobool27.not, label %if.end25.if.end36_crit_edge, label %if.then28

if.end25.if.end36_crit_edge:                      ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end36

if.then28:                                        ; preds = %if.end25
  %call32 = call i32 %26(ptr noundef nonnull %call.i, ptr noundef nonnull %uart) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32)
  %tobool33.not = icmp eq i32 %call32, 0
  br i1 %tobool33.not, label %if.then28.if.end36_crit_edge, label %if.then28.cleanup_crit_edge

if.then28.cleanup_crit_edge:                      ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then28.if.end36_crit_edge:                     ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end36

if.end36:                                         ; preds = %if.then28.if.end36_crit_edge, %if.end25.if.end36_crit_edge
  %dma1.i = getelementptr inbounds %struct.mid8250, ptr %call.i, i32 0, i32 3
  %27 = ptrtoint ptr %dev7 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %dev7, align 4
  %dma_dev.i = getelementptr inbounds %struct.mid8250, ptr %call.i, i32 0, i32 2
  %29 = ptrtoint ptr %dma_dev.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %dma_dev.i, align 4
  %tobool.not.i = icmp eq ptr %30, null
  br i1 %tobool.not.i, label %if.end36.if.end40_crit_edge, label %if.end.i

if.end36.if.end40_crit_edge:                      ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end40

if.end.i:                                         ; preds = %if.end36
  %call.i.i = call noalias ptr @devm_kmalloc(ptr noundef %28, i32 noundef 8, i32 noundef 3520) #6
  %tobool4.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool4.not.i, label %if.end.i.err_crit_edge, label %if.end6.i

if.end.i.err_crit_edge:                           ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %err

if.end6.i:                                        ; preds = %if.end.i
  %call.i44.i = call noalias ptr @devm_kmalloc(ptr noundef %28, i32 noundef 8, i32 noundef 3520) #6
  %tobool8.not.i = icmp eq ptr %call.i44.i, null
  br i1 %tobool8.not.i, label %if.end6.i.err_crit_edge, label %if.end10.i

if.end6.i.err_crit_edge:                          ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %err

if.end10.i:                                       ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #8
  %dma_index.i = getelementptr inbounds %struct.mid8250, ptr %call.i, i32 0, i32 1
  %31 = ptrtoint ptr %dma_index.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %dma_index.i, align 4
  %mul.i = shl i32 %32, 1
  %add.i = or i32 %mul.i, 1
  %chan_id.i = getelementptr inbounds %struct.hsu_dma_slave, ptr %call.i.i, i32 0, i32 1
  %33 = ptrtoint ptr %chan_id.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %add.i, ptr %chan_id.i, align 4
  %chan_id13.i = getelementptr inbounds %struct.hsu_dma_slave, ptr %call.i44.i, i32 0, i32 1
  %34 = ptrtoint ptr %chan_id13.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %mul.i, ptr %chan_id13.i, align 4
  %src_maxburst.i = getelementptr inbounds %struct.mid8250, ptr %call.i, i32 0, i32 3, i32 5, i32 5
  %35 = ptrtoint ptr %src_maxburst.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 64, ptr %src_maxburst.i, align 4
  %dst_maxburst.i = getelementptr inbounds %struct.mid8250, ptr %call.i, i32 0, i32 3, i32 6, i32 6
  %36 = ptrtoint ptr %dst_maxburst.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 64, ptr %dst_maxburst.i, align 4
  %37 = ptrtoint ptr %dma_dev.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %dma_dev.i, align 4
  %dev15.i = getelementptr inbounds %struct.pci_dev, ptr %38, i32 0, i32 44
  %39 = ptrtoint ptr %call.i.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %dev15.i, ptr %call.i.i, align 4
  %40 = ptrtoint ptr %call.i44.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %dev15.i, ptr %call.i44.i, align 4
  %fn.i = getelementptr inbounds %struct.mid8250, ptr %call.i, i32 0, i32 3, i32 2
  %41 = ptrtoint ptr %fn.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr @mid8250_dma_filter, ptr %fn.i, align 4
  %rx_param20.i = getelementptr inbounds %struct.mid8250, ptr %call.i, i32 0, i32 3, i32 3
  %42 = ptrtoint ptr %rx_param20.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %call.i.i, ptr %rx_param20.i, align 4
  %tx_param21.i = getelementptr inbounds %struct.mid8250, ptr %call.i, i32 0, i32 3, i32 4
  %43 = ptrtoint ptr %tx_param21.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %call.i44.i, ptr %tx_param21.i, align 4
  %dma22.i = getelementptr inbounds %struct.uart_8250_port, ptr %uart, i32 0, i32 19
  %44 = ptrtoint ptr %dma22.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %dma1.i, ptr %dma22.i, align 4
  br label %if.end40

if.end40:                                         ; preds = %if.end10.i, %if.end36.if.end40_crit_edge
  %call41 = call i32 @serial8250_register_8250_port(ptr noundef nonnull %uart) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call41)
  %cmp = icmp slt i32 %call41, 0
  br i1 %cmp, label %if.end40.err_crit_edge, label %if.end43

if.end40.err_crit_edge:                           ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #8
  br label %err

if.end43:                                         ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #8
  %45 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %call41, ptr %call.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 8
  %46 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  br label %cleanup

err:                                              ; preds = %if.end40.err_crit_edge, %if.end6.i.err_crit_edge, %if.end.i.err_crit_edge
  %ret.0 = phi i32 [ %call41, %if.end40.err_crit_edge ], [ -12, %if.end.i.err_crit_edge ], [ -12, %if.end6.i.err_crit_edge ]
  %47 = ptrtoint ptr %board to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %board, align 4
  %exit = getelementptr inbounds %struct.mid8250_board, ptr %48, i32 0, i32 4
  %49 = ptrtoint ptr %exit to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %exit, align 4
  %tobool45.not = icmp eq ptr %50, null
  br i1 %tobool45.not, label %err.cleanup_crit_edge, label %if.then46

err.cleanup_crit_edge:                            ; preds = %err
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then46:                                        ; preds = %err
  call void @__sanitizer_cov_trace_pc() #8
  call void %50(ptr noundef nonnull %call.i) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then46, %err.cleanup_crit_edge, %if.end43, %if.then28.cleanup_crit_edge, %if.end4.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end43 ], [ %call, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ], [ -12, %if.end4.cleanup_crit_edge ], [ %call32, %if.then28.cleanup_crit_edge ], [ %ret.0, %if.then46 ], [ %ret.0, %err.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 584, ptr nonnull %uart) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mid8250_remove(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %1, align 4
  tail call void @serial8250_unregister_port(i32 noundef %3) #6
  %board = getelementptr inbounds %struct.mid8250, ptr %1, i32 0, i32 4
  %4 = ptrtoint ptr %board to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %board, align 4
  %exit = getelementptr inbounds %struct.mid8250_board, ptr %5, i32 0, i32 4
  %6 = ptrtoint ptr %exit to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %exit, align 4
  %tobool.not = icmp eq ptr %7, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void %7(ptr noundef %1) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pnw_setup(ptr nocapture noundef writeonly %mid, ptr nocapture noundef readonly %p) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.uart_port, ptr %p, i32 0, i32 45
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %device = getelementptr i8, ptr %1, i32 -102
  %2 = ptrtoint ptr %device to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %device, align 2
  %switch.tableidx = add i16 %3, -2075
  call void @__sanitizer_cov_trace_const_cmp2(i16 3, i16 %switch.tableidx)
  %4 = icmp ult i16 %switch.tableidx, 3
  br i1 %4, label %switch.lookup, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

switch.lookup:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %switch.idx.cast = zext i16 %switch.tableidx to i32
  %dma_index4 = getelementptr inbounds %struct.mid8250, ptr %mid, i32 0, i32 1
  %5 = ptrtoint ptr %dma_index4 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %switch.idx.cast, ptr %dma_index4, align 4
  %bus = getelementptr i8, ptr %1, i32 -128
  %6 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %bus, align 8
  %devfn = getelementptr i8, ptr %1, i32 -108
  %8 = ptrtoint ptr %devfn to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %devfn, align 4
  %and = and i32 %9, 248
  %or = or i32 %and, 3
  %call = tail call ptr @pci_get_slot(ptr noundef %7, i32 noundef %or) #6
  %dma_dev = getelementptr inbounds %struct.mid8250, ptr %mid, i32 0, i32 2
  %10 = ptrtoint ptr %dma_dev to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call, ptr %dma_dev, align 4
  br label %cleanup

cleanup:                                          ; preds = %switch.lookup, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %switch.lookup ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pci_get_slot(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tng_setup(ptr nocapture noundef writeonly %mid, ptr nocapture noundef %p) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.uart_port, ptr %p, i32 0, i32 45
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %devfn = getelementptr i8, ptr %1, i32 -108
  %2 = ptrtoint ptr %devfn to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %devfn, align 4
  %and = and i32 %3, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp = icmp eq i32 %and, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %dec = add nsw i32 %and, -1
  %dma_index = getelementptr inbounds %struct.mid8250, ptr %mid, i32 0, i32 1
  %4 = ptrtoint ptr %dma_index to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %dec, ptr %dma_index, align 4
  %bus = getelementptr i8, ptr %1, i32 -128
  %5 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %bus, align 8
  %call = tail call ptr @pci_get_slot(ptr noundef %6, i32 noundef 40) #6
  %dma_dev = getelementptr inbounds %struct.mid8250, ptr %mid, i32 0, i32 2
  %7 = ptrtoint ptr %dma_dev to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call, ptr %dma_dev, align 4
  %handle_irq = getelementptr inbounds %struct.uart_port, ptr %p, i32 0, i32 15
  %8 = ptrtoint ptr %handle_irq to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @tng_handle_irq, ptr %handle_irq, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -19, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tng_handle_irq(ptr noundef %p) #2 align 64 {
entry:
  %status = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.uart_port, ptr %p, i32 0, i32 59
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %status) #6
  %2 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %status, align 4, !annotation !30
  %dma_dev = getelementptr inbounds %struct.mid8250, ptr %1, i32 0, i32 2
  %3 = ptrtoint ptr %dma_dev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dma_dev, align 4
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %4, i32 0, i32 44, i32 8
  %5 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %driver_data.i.i, align 4
  %dma_index = getelementptr inbounds %struct.mid8250, ptr %1, i32 0, i32 1
  %7 = ptrtoint ptr %dma_index to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %dma_index, align 4
  %.tr = trunc i32 %8 to i16
  %9 = shl i16 %.tr, 1
  %conv = or i16 %9, 1
  %call2 = call i32 @hsu_dma_get_status(ptr noundef %6, i16 noundef zeroext %conv, ptr noundef nonnull %status) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp = icmp sgt i32 %call2, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  call void @serial8250_rx_dma_flush(ptr noundef %p) #6
  br label %if.end13

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp4 = icmp eq i32 %call2, 0
  br i1 %cmp4, label %if.then6, label %if.else.if.end13_crit_edge

if.else.if.end13_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end13

if.then6:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  %10 = ptrtoint ptr %dma_index to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %dma_index, align 4
  %.tr56 = trunc i32 %11 to i16
  %12 = shl i16 %.tr56, 1
  %conv10 = or i16 %12, 1
  %13 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %status, align 4
  %call11 = call i32 @hsu_dma_do_irq(ptr noundef %6, i16 noundef zeroext %conv10, i32 noundef %14) #6
  br label %if.end13

if.end13:                                         ; preds = %if.then6, %if.else.if.end13_crit_edge, %if.then
  %ret.0 = phi i32 [ 1, %if.then ], [ %call11, %if.then6 ], [ 0, %if.else.if.end13_crit_edge ]
  %15 = ptrtoint ptr %dma_index to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %dma_index, align 4
  %.tr54 = trunc i32 %16 to i16
  %conv16 = shl i16 %.tr54, 1
  %call17 = call i32 @hsu_dma_get_status(ptr noundef %6, i16 noundef zeroext %conv16, ptr noundef nonnull %status) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %cmp18 = icmp sgt i32 %call17, 0
  br i1 %cmp18, label %if.then20, label %if.else22

if.then20:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #8
  %or21 = or i32 %ret.0, 1
  br label %if.end32

if.else22:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %cmp23 = icmp eq i32 %call17, 0
  br i1 %cmp23, label %if.then25, label %if.else22.if.end32_crit_edge

if.else22.if.end32_crit_edge:                     ; preds = %if.else22
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end32

if.then25:                                        ; preds = %if.else22
  call void @__sanitizer_cov_trace_pc() #8
  %17 = ptrtoint ptr %dma_index to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %dma_index, align 4
  %.tr55 = trunc i32 %18 to i16
  %conv28 = shl i16 %.tr55, 1
  %19 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %status, align 4
  %call29 = call i32 @hsu_dma_do_irq(ptr noundef %6, i16 noundef zeroext %conv28, i32 noundef %20) #6
  %or30 = or i32 %call29, %ret.0
  br label %if.end32

if.end32:                                         ; preds = %if.then25, %if.else22.if.end32_crit_edge, %if.then20
  %ret.1 = phi i32 [ %or21, %if.then20 ], [ %or30, %if.then25 ], [ %ret.0, %if.else22.if.end32_crit_edge ]
  %serial_in.i = getelementptr inbounds %struct.uart_port, ptr %p, i32 0, i32 3
  %21 = ptrtoint ptr %serial_in.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %serial_in.i, align 4
  %call.i = call i32 %22(ptr noundef %p, i32 noundef 2) #6
  %call34 = call i32 @serial8250_handle_irq(ptr noundef %p, i32 noundef %call.i) #6
  %or35 = or i32 %call34, %ret.1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or35)
  %tobool.not = icmp ne i32 %or35, 0
  %cond = zext i1 %tobool.not to i32
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %status) #6
  ret i32 %cond
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hsu_dma_get_status(ptr noundef, i16 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @serial8250_rx_dma_flush(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hsu_dma_do_irq(ptr noundef, i16 noundef zeroext, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @serial8250_handle_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dnv_setup(ptr noundef %mid, ptr nocapture noundef %p) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dma_chip = getelementptr inbounds %struct.mid8250, ptr %mid, i32 0, i32 5
  %dev = getelementptr inbounds %struct.uart_port, ptr %p, i32 0, i32 45
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 -136
  %board = getelementptr inbounds %struct.mid8250, ptr %mid, i32 0, i32 4
  %2 = ptrtoint ptr %board to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %board, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %3, align 4
  tail call void @pci_set_master(ptr noundef %add.ptr) #6
  %call.i = tail call i32 @pci_alloc_irq_vectors_affinity(ptr noundef %add.ptr, i32 noundef 1, i32 noundef 1, i32 noundef 7, ptr noundef null) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %and = and i32 %5, 7
  %call1 = tail call i32 @pci_irq_vector(ptr noundef %add.ptr, i32 noundef 0) #6
  %irq = getelementptr inbounds %struct.uart_port, ptr %p, i32 0, i32 20
  %6 = ptrtoint ptr %irq to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %call1, ptr %irq, align 4
  %7 = ptrtoint ptr %dma_chip to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %1, ptr %dma_chip, align 4
  %call4 = tail call i32 @pci_irq_vector(ptr noundef %add.ptr, i32 noundef 0) #6
  %irq5 = getelementptr inbounds %struct.mid8250, ptr %mid, i32 0, i32 5, i32 1
  %8 = ptrtoint ptr %irq5 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %call4, ptr %irq5, align 4
  %membase = getelementptr inbounds %struct.uart_port, ptr %p, i32 0, i32 2
  %9 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %membase, align 4
  %regs = getelementptr inbounds %struct.mid8250, ptr %mid, i32 0, i32 5, i32 2
  %11 = ptrtoint ptr %regs to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %10, ptr %regs, align 4
  %resource = getelementptr i8, ptr %1, i32 936
  %arrayidx = getelementptr [17 x %struct.resource], ptr %resource, i32 0, i32 %and
  %end = getelementptr inbounds %struct.resource, ptr %arrayidx, i32 0, i32 1
  %12 = ptrtoint ptr %end to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %end, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp6 = icmp eq i32 %13, 0
  br i1 %cmp6, label %if.end.cond.end_crit_edge, label %cond.false

if.end.cond.end_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end

cond.false:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %14 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx, align 8
  %sub = add i32 %13, 1
  %add = sub i32 %sub, %15
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %if.end.cond.end_crit_edge
  %cond = phi i32 [ %add, %cond.false ], [ 0, %if.end.cond.end_crit_edge ]
  %length = getelementptr inbounds %struct.mid8250, ptr %mid, i32 0, i32 5, i32 3
  %16 = ptrtoint ptr %length to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %cond, ptr %length, align 4
  %offset = getelementptr inbounds %struct.mid8250, ptr %mid, i32 0, i32 5, i32 4
  %17 = ptrtoint ptr %offset to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 128, ptr %offset, align 4
  %call12 = tail call i32 @hsu_dma_probe(ptr noundef %dma_chip) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool.not = icmp eq i32 %call12, 0
  br i1 %tobool.not, label %if.end14, label %cond.end.cleanup_crit_edge

cond.end.cleanup_crit_edge:                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end14:                                         ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #8
  %dma_dev = getelementptr inbounds %struct.mid8250, ptr %mid, i32 0, i32 2
  %18 = ptrtoint ptr %dma_dev to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %add.ptr, ptr %dma_dev, align 4
  %handle_irq = getelementptr inbounds %struct.uart_port, ptr %p, i32 0, i32 15
  %19 = ptrtoint ptr %handle_irq to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr @dnv_handle_irq, ptr %handle_irq, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end14, %cond.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end14 ], [ %call.i, %entry.cleanup_crit_edge ], [ 0, %cond.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dnv_exit(ptr noundef %mid) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dma_dev = getelementptr inbounds %struct.mid8250, ptr %mid, i32 0, i32 2
  %0 = ptrtoint ptr %dma_dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dma_dev, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %dma_chip = getelementptr inbounds %struct.mid8250, ptr %mid, i32 0, i32 5
  %call = tail call i32 @hsu_dma_remove(ptr noundef %dma_chip) #6
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_set_master(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_irq_vector(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hsu_dma_probe(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dnv_handle_irq(ptr noundef %p) #2 align 64 {
entry:
  %status = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.uart_port, ptr %p, i32 0, i32 59
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %serial_in.i = getelementptr inbounds %struct.uart_port, ptr %p, i32 0, i32 3
  %2 = ptrtoint ptr %serial_in.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %serial_in.i, align 4
  %call.i = tail call i32 %3(ptr noundef %p, i32 noundef 8) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %status) #6
  %4 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %status, align 4, !annotation !30
  %and = and i32 %call.i, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end10_crit_edge, label %if.then

entry.if.end10_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end10

if.then:                                          ; preds = %entry
  %dma_chip = getelementptr inbounds %struct.mid8250, ptr %1, i32 0, i32 5
  %call2 = call i32 @hsu_dma_get_status(ptr noundef %dma_chip, i16 noundef zeroext 1, ptr noundef nonnull %status) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp = icmp sgt i32 %call2, 0
  br i1 %cmp, label %if.then3, label %if.else

if.then3:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  call void @serial8250_rx_dma_flush(ptr noundef %p) #6
  br label %if.end10

if.else:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp4 = icmp eq i32 %call2, 0
  br i1 %cmp4, label %if.then5, label %if.else.if.end10_crit_edge

if.else.if.end10_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end10

if.then5:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  %5 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %status, align 4
  %call7 = call i32 @hsu_dma_do_irq(ptr noundef %dma_chip, i16 noundef zeroext 1, i32 noundef %6) #6
  br label %if.end10

if.end10:                                         ; preds = %if.then5, %if.else.if.end10_crit_edge, %if.then3, %entry.if.end10_crit_edge
  %ret.0 = phi i32 [ 1, %if.then3 ], [ %call7, %if.then5 ], [ 0, %if.else.if.end10_crit_edge ], [ 0, %entry.if.end10_crit_edge ]
  %and11 = and i32 %call.i, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11)
  %tobool12.not = icmp eq i32 %and11, 0
  br i1 %tobool12.not, label %if.end10.if.end27_crit_edge, label %if.then13

if.end10.if.end27_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end27

if.then13:                                        ; preds = %if.end10
  %dma_chip14 = getelementptr inbounds %struct.mid8250, ptr %1, i32 0, i32 5
  %call15 = call i32 @hsu_dma_get_status(ptr noundef %dma_chip14, i16 noundef zeroext 0, ptr noundef nonnull %status) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %cmp16 = icmp sgt i32 %call15, 0
  br i1 %cmp16, label %if.then17, label %if.else19

if.then17:                                        ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #8
  %or18 = or i32 %ret.0, 1
  br label %if.end27

if.else19:                                        ; preds = %if.then13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %cmp20 = icmp eq i32 %call15, 0
  br i1 %cmp20, label %if.then21, label %if.else19.if.end27_crit_edge

if.else19.if.end27_crit_edge:                     ; preds = %if.else19
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end27

if.then21:                                        ; preds = %if.else19
  call void @__sanitizer_cov_trace_pc() #8
  %7 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %status, align 4
  %call23 = call i32 @hsu_dma_do_irq(ptr noundef %dma_chip14, i16 noundef zeroext 0, i32 noundef %8) #6
  %or24 = or i32 %call23, %ret.0
  br label %if.end27

if.end27:                                         ; preds = %if.then21, %if.else19.if.end27_crit_edge, %if.then17, %if.end10.if.end27_crit_edge
  %ret.1 = phi i32 [ %or18, %if.then17 ], [ %or24, %if.then21 ], [ %ret.0, %if.else19.if.end27_crit_edge ], [ %ret.0, %if.end10.if.end27_crit_edge ]
  %and28 = and i32 %call.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and28)
  %tobool29.not = icmp eq i32 %and28, 0
  br i1 %tobool29.not, label %if.end27.if.end34_crit_edge, label %if.then30

if.end27.if.end34_crit_edge:                      ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end34

if.then30:                                        ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #8
  %9 = ptrtoint ptr %serial_in.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %serial_in.i, align 4
  %call.i54 = call i32 %10(ptr noundef %p, i32 noundef 2) #6
  %call32 = call i32 @serial8250_handle_irq(ptr noundef %p, i32 noundef %call.i54) #6
  %or33 = or i32 %call32, %ret.1
  br label %if.end34

if.end34:                                         ; preds = %if.then30, %if.end27.if.end34_crit_edge
  %ret.2 = phi i32 [ %or33, %if.then30 ], [ %ret.1, %if.end27.if.end34_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.2)
  %tobool35.not = icmp ne i32 %ret.2, 0
  %cond = zext i1 %tobool35.not to i32
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %status) #6
  ret i32 %cond
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_alloc_irq_vectors_affinity(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hsu_dma_remove(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pcim_enable_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mid8250_set_termios(ptr noundef %p, ptr noundef %termios, ptr noundef %old) #2 align 64 {
entry:
  %mul1 = alloca i32, align 4
  %div = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @tty_termios_baud_rate(ptr noundef %termios) #6
  %private_data = getelementptr inbounds %struct.uart_port, ptr %p, i32 0, i32 59
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %mul = shl i32 %call, 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mul1) #6
  %2 = ptrtoint ptr %mul1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %mul1, align 4, !annotation !30
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %div) #6
  %3 = ptrtoint ptr %div to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %div, align 4, !annotation !30
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mul)
  %tobool.not = icmp eq i32 %mul, 0
  %spec.select = select i1 %tobool.not, i32 153600, i32 %mul
  %board = getelementptr inbounds %struct.mid8250, ptr %1, i32 0, i32 4
  %4 = ptrtoint ptr %board to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %board, align 4
  %freq = getelementptr inbounds %struct.mid8250_board, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %freq to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %freq, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %spec.select)
  %cmp = icmp ult i32 %7, %spec.select
  br i1 %cmp, label %if.then, label %cond.end48

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %call)
  %cmp5 = icmp ugt i32 %7, %call
  br i1 %cmp5, label %if.then7, label %if.then.if.end_crit_edge

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then7:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %div10 = udiv i32 %7, %call
  %conv11 = trunc i32 %div10 to i16
  br label %if.end

if.end:                                           ; preds = %if.then7, %if.then.if.end_crit_edge
  %ps.0 = phi i16 [ %conv11, %if.then7 ], [ 1, %if.then.if.end_crit_edge ]
  %conv12 = zext i16 %ps.0 to i32
  %mul13 = mul i32 %call, %conv12
  br label %if.end51

cond.end48:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %div17 = udiv i32 %7, %spec.select
  %8 = tail call i32 @llvm.ctlz.i32(i32 %div17, i1 true) #6, !range !31
  %sub.i.i.op.i = xor i32 %8, 31
  %mul50 = shl i32 %spec.select, %sub.i.i.op.i
  br label %if.end51

if.end51:                                         ; preds = %cond.end48, %if.end
  %ps.1 = phi i16 [ %ps.0, %if.end ], [ 16, %cond.end48 ]
  %fuart.0 = phi i32 [ %mul13, %if.end ], [ %mul50, %cond.end48 ]
  call void @rational_best_approximation(i32 noundef %fuart.0, i32 noundef %7, i32 noundef 16777215, i32 noundef 16777215, ptr noundef nonnull %mul1, ptr noundef nonnull %div) #6
  %mul54 = shl i32 %fuart.0, 4
  %conv55 = zext i16 %ps.1 to i32
  %div56 = udiv i32 %mul54, %conv55
  %uartclk = getelementptr inbounds %struct.uart_port, ptr %p, i32 0, i32 22
  %9 = ptrtoint ptr %uartclk to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %div56, ptr %uartclk, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !32
  call void @arm_heavy_mb() #6
  %10 = call i32 @llvm.bswap.i32(i32 %conv55)
  %membase = getelementptr inbounds %struct.uart_port, ptr %p, i32 0, i32 2
  %11 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %membase, align 4
  %add.ptr = getelementptr i8, ptr %12, i32 48
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %10) #6, !srcloc !33
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !34
  call void @arm_heavy_mb() #6
  %13 = ptrtoint ptr %mul1 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %mul1, align 4
  %15 = call i32 @llvm.bswap.i32(i32 %14)
  %16 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %membase, align 4
  %add.ptr62 = getelementptr i8, ptr %17, i32 52
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr62, i32 %15) #6, !srcloc !33
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !35
  call void @arm_heavy_mb() #6
  %18 = ptrtoint ptr %div to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %div, align 4
  %20 = call i32 @llvm.bswap.i32(i32 %19)
  %21 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %membase, align 4
  %add.ptr67 = getelementptr i8, ptr %22, i32 56
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr67, i32 %20) #6, !srcloc !33
  call void @serial8250_do_set_termios(ptr noundef %p, ptr noundef %termios, ptr noundef %old) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %div) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mul1) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pcim_iomap(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @serial8250_register_8250_port(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tty_termios_baud_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rational_best_approximation(i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @serial8250_do_set_termios(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @mid8250_dma_filter(ptr nocapture noundef %chan, ptr noundef %param) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %param to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %param, align 4
  %2 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %chan, align 4
  %dev = getelementptr inbounds %struct.dma_device, ptr %3, i32 0, i32 15
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 4
  %cmp.not = icmp eq ptr %1, %5
  br i1 %cmp.not, label %lor.lhs.false, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %chan_id = getelementptr inbounds %struct.hsu_dma_slave, ptr %param, i32 0, i32 1
  %6 = ptrtoint ptr %chan_id to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %chan_id, align 4
  %chan_id1 = getelementptr inbounds %struct.dma_chan, ptr %chan, i32 0, i32 4
  %8 = ptrtoint ptr %chan_id1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %chan_id1, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %9)
  %cmp2.not = icmp eq i32 %7, %9
  br i1 %cmp2.not, label %if.end, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  %private = getelementptr inbounds %struct.dma_chan, ptr %chan, i32 0, i32 14
  %10 = ptrtoint ptr %private to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %param, ptr %private, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i1 [ true, %if.end ], [ false, %lor.lhs.false.cleanup_crit_edge ], [ false, %entry.cleanup_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @serial8250_unregister_port(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load2_noabort(i32)

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

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !10, !11, !13, !15, !17, !19}
!llvm.module.flags = !{!21, !22, !23, !24, !25, !26, !27, !28}
!llvm.ident = !{!29}

!0 = !{ptr @__initcall__kmod_8250_mid__238_391_mid8250_pci_driver_init6, !1, !"__initcall__kmod_8250_mid__238_391_mid8250_pci_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/tty/serial/8250/8250_mid.c", i32 391, i32 1}
!2 = !{ptr @__exitcall_mid8250_pci_driver_exit, !1, !"__exitcall_mid8250_pci_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author239, !4, !"__UNIQUE_ID_author239", i1 false, i1 false}
!4 = !{!"../drivers/tty/serial/8250/8250_mid.c", i32 393, i32 1}
!5 = !{ptr @__UNIQUE_ID_file240, !6, !"__UNIQUE_ID_file240", i1 false, i1 false}
!6 = !{!"../drivers/tty/serial/8250/8250_mid.c", i32 394, i32 1}
!7 = !{ptr @__UNIQUE_ID_license241, !6, !"__UNIQUE_ID_license241", i1 false, i1 false}
!8 = !{ptr @__UNIQUE_ID_description242, !9, !"__UNIQUE_ID_description242", i1 false, i1 false}
!9 = !{!"../drivers/tty/serial/8250/8250_mid.c", i32 395, i32 1}
!10 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @mid8250_pci_driver, !12, !"mid8250_pci_driver", i1 false, i1 false}
!12 = !{!"../drivers/tty/serial/8250/8250_mid.c", i32 384, i32 26}
!13 = !{ptr @pci_ids, !14, !"pci_ids", i1 false, i1 false}
!14 = !{!"../drivers/tty/serial/8250/8250_mid.c", i32 373, i32 35}
!15 = !{ptr @pnw_board, !16, !"pnw_board", i1 false, i1 false}
!16 = !{!"../drivers/tty/serial/8250/8250_mid.c", i32 349, i32 35}
!17 = !{ptr @tng_board, !18, !"tng_board", i1 false, i1 false}
!18 = !{!"../drivers/tty/serial/8250/8250_mid.c", i32 356, i32 35}
!19 = !{ptr @dnv_board, !20, !"dnv_board", i1 false, i1 false}
!20 = !{!"../drivers/tty/serial/8250/8250_mid.c", i32 363, i32 35}
!21 = !{i32 1, !"wchar_size", i32 2}
!22 = !{i32 1, !"min_enum_size", i32 4}
!23 = !{i32 8, !"branch-target-enforcement", i32 0}
!24 = !{i32 8, !"sign-return-address", i32 0}
!25 = !{i32 8, !"sign-return-address-all", i32 0}
!26 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!27 = !{i32 7, !"uwtable", i32 1}
!28 = !{i32 7, !"frame-pointer", i32 2}
!29 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!30 = !{!"auto-init"}
!31 = !{i32 0, i32 33}
!32 = !{i64 2154861024}
!33 = !{i64 4987429}
!34 = !{i64 2154861415}
!35 = !{i64 2154861809}
