; ModuleID = '/llk/IR_all_yes/drivers/tty/serial/8250/8250_lpss.c_pt.bc'
source_filename = "../drivers/tty/serial/8250/8250_lpss.c"
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
%struct.lpss8250_board = type { i32, i32, ptr, ptr }
%struct.dw_dma_platform_data = type { i32, i32, i32, i32, i32, [4 x i32], [8 x i32], [8 x i32], i32, i32 }
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
%struct.lpss8250 = type { %struct.dw8250_port_data, ptr, %struct.dw_dma_chip, %struct.dw_dma_slave, i8 }
%struct.dw8250_port_data = type { i32, %struct.uart_8250_dma, i8 }
%struct.uart_8250_dma = type { ptr, ptr, ptr, ptr, ptr, %struct.dma_slave_config, %struct.dma_slave_config, ptr, ptr, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i8, i8, i8 }
%struct.dma_slave_config = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, ptr, i32 }
%struct.dw_dma_chip = type { ptr, i32, i32, ptr, ptr, ptr, ptr }
%struct.dw_dma_slave = type { ptr, i8, i8, i8, i8, i8, i8 }
%struct.dma_device = type { %struct.kref, i32, i32, %struct.list_head, %struct.list_head, %struct.dma_filter, %struct.dma_cap_mask_t, i32, i16, i16, i32, i32, i32, i32, i32, ptr, ptr, %struct.ida, %struct.mutex, i32, i32, i32, i32, i32, i32, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dma_filter = type { ptr, i32, ptr }
%struct.dma_cap_mask_t = type { [1 x i32] }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.dma_chan = type { ptr, ptr, i32, i32, i32, ptr, ptr, ptr, %struct.list_head, ptr, i32, i32, ptr, ptr, ptr }

@__initcall__kmod_8250_lpss__238_408_lpss8250_pci_driver_init6 = internal global ptr @lpss8250_pci_driver_init, section ".initcall6.init", align 4
@lpss8250_pci_driver = internal global { %struct.pci_driver, [36 x i8] } { %struct.pci_driver { %struct.list_head zeroinitializer, ptr @.str, ptr @pci_ids, ptr @lpss8250_probe, ptr @lpss8250_remove, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver zeroinitializer, %struct.pci_dynids zeroinitializer }, [36 x i8] zeroinitializer }, align 32
@__exitcall_lpss8250_pci_driver_exit = internal global ptr @lpss8250_pci_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author239 = internal constant [35 x i8] c"8250_lpss.author=Intel Corporation\00", section ".modinfo", align 1
@__UNIQUE_ID_file240 = internal constant [49 x i8] c"8250_lpss.file=drivers/tty/serial/8250/8250_lpss\00", section ".modinfo", align 1
@__UNIQUE_ID_license241 = internal constant [25 x i8] c"8250_lpss.license=GPL v2\00", section ".modinfo", align 1
@__UNIQUE_ID_description242 = internal constant [45 x i8] c"8250_lpss.description=Intel LPSS UART driver\00", section ".modinfo", align 1
@.str = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"8250_lpss\00", [22 x i8] zeroinitializer }, align 32
@pci_ids = internal constant { [14 x %struct.pci_device_id], [96 x i8] } { [14 x %struct.pci_device_id] [%struct.pci_device_id { i32 32902, i32 2358, i32 -1, i32 -1, i32 0, i32 0, i32 ptrtoint (ptr @qrk_board to i32), i32 0 }, %struct.pci_device_id { i32 32902, i32 19350, i32 -1, i32 -1, i32 0, i32 0, i32 ptrtoint (ptr @ehl_board to i32), i32 0 }, %struct.pci_device_id { i32 32902, i32 19351, i32 -1, i32 -1, i32 0, i32 0, i32 ptrtoint (ptr @ehl_board to i32), i32 0 }, %struct.pci_device_id { i32 32902, i32 19352, i32 -1, i32 -1, i32 0, i32 0, i32 ptrtoint (ptr @ehl_board to i32), i32 0 }, %struct.pci_device_id { i32 32902, i32 19353, i32 -1, i32 -1, i32 0, i32 0, i32 ptrtoint (ptr @ehl_board to i32), i32 0 }, %struct.pci_device_id { i32 32902, i32 19354, i32 -1, i32 -1, i32 0, i32 0, i32 ptrtoint (ptr @ehl_board to i32), i32 0 }, %struct.pci_device_id { i32 32902, i32 19355, i32 -1, i32 -1, i32 0, i32 0, i32 ptrtoint (ptr @ehl_board to i32), i32 0 }, %struct.pci_device_id { i32 32902, i32 3850, i32 -1, i32 -1, i32 0, i32 0, i32 ptrtoint (ptr @byt_board to i32), i32 0 }, %struct.pci_device_id { i32 32902, i32 3852, i32 -1, i32 -1, i32 0, i32 0, i32 ptrtoint (ptr @byt_board to i32), i32 0 }, %struct.pci_device_id { i32 32902, i32 8842, i32 -1, i32 -1, i32 0, i32 0, i32 ptrtoint (ptr @byt_board to i32), i32 0 }, %struct.pci_device_id { i32 32902, i32 8844, i32 -1, i32 -1, i32 0, i32 0, i32 ptrtoint (ptr @byt_board to i32), i32 0 }, %struct.pci_device_id { i32 32902, i32 40163, i32 -1, i32 -1, i32 0, i32 0, i32 ptrtoint (ptr @byt_board to i32), i32 0 }, %struct.pci_device_id { i32 32902, i32 40164, i32 -1, i32 -1, i32 0, i32 0, i32 ptrtoint (ptr @byt_board to i32), i32 0 }, %struct.pci_device_id zeroinitializer], [96 x i8] zeroinitializer }, align 32
@qrk_board = internal constant { %struct.lpss8250_board, [16 x i8] } { %struct.lpss8250_board { i32 44236800, i32 2764800, ptr @qrk_serial_setup, ptr @qrk_serial_exit }, [16 x i8] zeroinitializer }, align 32
@ehl_board = internal constant { %struct.lpss8250_board, [16 x i8] } { %struct.lpss8250_board { i32 200000000, i32 12500000, ptr @ehl_serial_setup, ptr null }, [16 x i8] zeroinitializer }, align 32
@byt_board = internal constant { %struct.lpss8250_board, [16 x i8] } { %struct.lpss8250_board { i32 100000000, i32 2764800, ptr @byt_serial_setup, ptr null }, [16 x i8] zeroinitializer }, align 32
@qrk_serial_dma_pdata = internal constant { %struct.dw_dma_platform_data, [52 x i8] } { %struct.dw_dma_platform_data { i32 1, i32 2, i32 0, i32 0, i32 4095, [4 x i32] [i32 4, i32 0, i32 0, i32 0], [8 x i32] zeroinitializer, [8 x i32] zeroinitializer, i32 0, i32 0 }, [52 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [8 x i64] [i64 6, i64 16, i64 3850, i64 3852, i64 8842, i64 8844, i64 40163, i64 40164]
@___asan_gen_.1 = private unnamed_addr constant [20 x i8] c"lpss8250_pci_driver\00", align 1
@___asan_gen_.3 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.20, i32 401, i32 26 }
@___asan_gen_.4 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.6 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.20, i32 408, i32 1 }
@___asan_gen_.7 = private unnamed_addr constant [8 x i8] c"pci_ids\00", align 1
@___asan_gen_.9 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.20, i32 383, i32 35 }
@___asan_gen_.10 = private unnamed_addr constant [10 x i8] c"qrk_board\00", align 1
@___asan_gen_.12 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.20, i32 376, i32 36 }
@___asan_gen_.13 = private unnamed_addr constant [10 x i8] c"ehl_board\00", align 1
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.20, i32 370, i32 36 }
@___asan_gen_.16 = private unnamed_addr constant [10 x i8] c"byt_board\00", align 1
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.20, i32 364, i32 36 }
@___asan_gen_.19 = private unnamed_addr constant [21 x i8] c"qrk_serial_dma_pdata\00", align 1
@___asan_gen_.20 = private constant [39 x i8] c"../drivers/tty/serial/8250/8250_lpss.c\00", align 1
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.20, i32 174, i32 42 }
@llvm.compiler.used = appending global [14 x ptr] [ptr @__UNIQUE_ID_author239, ptr @__UNIQUE_ID_description242, ptr @__UNIQUE_ID_file240, ptr @__UNIQUE_ID_license241, ptr @__exitcall_lpss8250_pci_driver_exit, ptr @__initcall__kmod_8250_lpss__238_408_lpss8250_pci_driver_init6, ptr @lpss8250_pci_driver_exit, ptr @lpss8250_pci_driver, ptr @.str, ptr @pci_ids, ptr @qrk_board, ptr @ehl_board, ptr @byt_board, ptr @qrk_serial_dma_pdata], section "llvm.metadata"
@0 = internal global [7 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpss8250_pci_driver to i32), i32 188, i32 224, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pci_ids to i32), i32 448, i32 544, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qrk_board to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ehl_board to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @byt_board to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qrk_serial_dma_pdata to i32), i32 108, i32 160, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @lpss8250_pci_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__pci_register_driver(ptr noundef nonnull @lpss8250_pci_driver, ptr noundef null, ptr noundef nonnull @.str) #7
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @lpss8250_pci_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @pci_unregister_driver(ptr noundef nonnull @lpss8250_pci_driver) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_unregister_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pci_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lpss8250_probe(ptr noundef %pdev, ptr nocapture noundef readonly %id) #2 align 64 {
entry:
  %uart = alloca %struct.uart_8250_port, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 584, ptr nonnull %uart) #7
  %call = tail call i32 @pcim_enable_device(ptr noundef %pdev) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call void @pci_set_master(ptr noundef %pdev) #7
  %dev = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 220, i32 noundef 3520) #7
  %tobool2.not = icmp eq ptr %call.i, null
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %call.i80 = tail call i32 @pci_alloc_irq_vectors_affinity(ptr noundef %pdev, i32 noundef 1, i32 noundef 1, i32 noundef 7, ptr noundef null) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i80)
  %cmp = icmp slt i32 %call.i80, 0
  br i1 %cmp, label %if.end4.cleanup_crit_edge, label %if.end7

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end7:                                          ; preds = %if.end4
  %driver_data = getelementptr inbounds %struct.pci_device_id, ptr %id, i32 0, i32 6
  %0 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %driver_data, align 4
  %2 = inttoptr i32 %1 to ptr
  %board = getelementptr inbounds %struct.lpss8250, ptr %call.i, i32 0, i32 1
  %3 = ptrtoint ptr %board to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %2, ptr %board, align 4
  %4 = call ptr @memset(ptr %uart, i32 0, i32 584)
  %dev9 = getelementptr inbounds %struct.uart_port, ptr %uart, i32 0, i32 45
  %5 = ptrtoint ptr %dev9 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %dev, ptr %dev9, align 4
  %call10 = tail call i32 @pci_irq_vector(ptr noundef %pdev, i32 noundef 0) #7
  %irq = getelementptr inbounds %struct.uart_port, ptr %uart, i32 0, i32 20
  %6 = ptrtoint ptr %irq to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %call10, ptr %irq, align 4
  %private_data = getelementptr inbounds %struct.uart_port, ptr %uart, i32 0, i32 59
  %7 = ptrtoint ptr %private_data to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call.i, ptr %private_data, align 4
  %type = getelementptr inbounds %struct.uart_port, ptr %uart, i32 0, i32 38
  %8 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 4, ptr %type, align 4
  %iotype = getelementptr inbounds %struct.uart_port, ptr %uart, i32 0, i32 26
  %9 = ptrtoint ptr %iotype to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 2, ptr %iotype, align 2
  %regshift = getelementptr inbounds %struct.uart_port, ptr %uart, i32 0, i32 25
  %10 = ptrtoint ptr %regshift to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 2, ptr %regshift, align 1
  %base_baud = getelementptr inbounds %struct.lpss8250_board, ptr %2, i32 0, i32 1
  %11 = ptrtoint ptr %base_baud to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %base_baud, align 4
  %mul = shl i32 %12, 4
  %uartclk = getelementptr inbounds %struct.uart_port, ptr %uart, i32 0, i32 22
  %13 = ptrtoint ptr %uartclk to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %mul, ptr %uartclk, align 4
  %flags = getelementptr inbounds %struct.uart_port, ptr %uart, i32 0, i32 33
  %14 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 687865856, ptr %flags, align 4
  %capabilities = getelementptr inbounds %struct.uart_8250_port, ptr %uart, i32 0, i32 3
  %15 = ptrtoint ptr %capabilities to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 2304, ptr %capabilities, align 4
  %resource = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 47
  %16 = ptrtoint ptr %resource to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %resource, align 8
  %mapbase = getelementptr inbounds %struct.uart_port, ptr %uart, i32 0, i32 43
  %18 = ptrtoint ptr %mapbase to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %mapbase, align 4
  %call20 = tail call ptr @pcim_iomap(ptr noundef %pdev, i32 noundef 0, i32 noundef 0) #7
  %membase = getelementptr inbounds %struct.uart_port, ptr %uart, i32 0, i32 2
  %19 = ptrtoint ptr %membase to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %call20, ptr %membase, align 4
  %tobool24.not = icmp eq ptr %call20, null
  br i1 %tobool24.not, label %if.end7.cleanup_crit_edge, label %if.end26

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end26:                                         ; preds = %if.end7
  %20 = ptrtoint ptr %board to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %board, align 4
  %setup = getelementptr inbounds %struct.lpss8250_board, ptr %21, i32 0, i32 2
  %22 = ptrtoint ptr %setup to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %setup, align 4
  %call29 = call i32 %23(ptr noundef nonnull %call.i, ptr noundef nonnull %uart) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29)
  %tobool30.not = icmp eq i32 %call29, 0
  br i1 %tobool30.not, label %if.end32, label %if.end26.cleanup_crit_edge

if.end26.cleanup_crit_edge:                       ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end32:                                         ; preds = %if.end26
  call void @dw8250_setup_port(ptr noundef nonnull %uart) #7
  %dma1.i = getelementptr inbounds %struct.dw8250_port_data, ptr %call.i, i32 0, i32 1
  %24 = ptrtoint ptr %dev9 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dev9, align 4
  %dma_param.i = getelementptr inbounds %struct.lpss8250, ptr %call.i, i32 0, i32 3
  %26 = ptrtoint ptr %dma_param.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %dma_param.i, align 4
  %tobool.not.i = icmp eq ptr %27, null
  br i1 %tobool.not.i, label %if.end32.if.end37_crit_edge, label %if.end.i

if.end32.if.end37_crit_edge:                      ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end37

if.end.i:                                         ; preds = %if.end32
  %call.i.i = call noalias ptr @devm_kmalloc(ptr noundef %25, i32 noundef 12, i32 noundef 3520) #7
  %tobool4.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool4.not.i, label %if.end.i.err_exit_crit_edge, label %if.end6.i

if.end.i.err_exit_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_exit

if.end6.i:                                        ; preds = %if.end.i
  %call.i37.i = call noalias ptr @devm_kmalloc(ptr noundef %25, i32 noundef 12, i32 noundef 3520) #7
  %tobool8.not.i = icmp eq ptr %call.i37.i, null
  br i1 %tobool8.not.i, label %if.end6.i.err_exit_crit_edge, label %if.end10.i

if.end6.i.err_exit_crit_edge:                     ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_exit

if.end10.i:                                       ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #9
  %28 = call ptr @memcpy(ptr %call.i.i, ptr %dma_param.i, i32 12)
  %dma_maxburst.i = getelementptr inbounds %struct.lpss8250, ptr %call.i, i32 0, i32 4
  %29 = ptrtoint ptr %dma_maxburst.i to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %dma_maxburst.i, align 4
  %conv.i = zext i8 %30 to i32
  %src_maxburst.i = getelementptr inbounds %struct.dw8250_port_data, ptr %call.i, i32 0, i32 1, i32 5, i32 5
  %31 = ptrtoint ptr %src_maxburst.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %conv.i, ptr %src_maxburst.i, align 4
  %32 = call ptr @memcpy(ptr %call.i37.i, ptr %dma_param.i, i32 12)
  %dst_maxburst.i = getelementptr inbounds %struct.dw8250_port_data, ptr %call.i, i32 0, i32 1, i32 6, i32 6
  %33 = ptrtoint ptr %dst_maxburst.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %conv.i, ptr %dst_maxburst.i, align 4
  %fn.i = getelementptr inbounds %struct.dw8250_port_data, ptr %call.i, i32 0, i32 1, i32 2
  %34 = ptrtoint ptr %fn.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr @lpss8250_dma_filter, ptr %fn.i, align 4
  %rx_param15.i = getelementptr inbounds %struct.dw8250_port_data, ptr %call.i, i32 0, i32 1, i32 3
  %35 = ptrtoint ptr %rx_param15.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %call.i.i, ptr %rx_param15.i, align 4
  %tx_param16.i = getelementptr inbounds %struct.dw8250_port_data, ptr %call.i, i32 0, i32 1, i32 4
  %36 = ptrtoint ptr %tx_param16.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %call.i37.i, ptr %tx_param16.i, align 4
  %dma17.i = getelementptr inbounds %struct.uart_8250_port, ptr %uart, i32 0, i32 19
  %37 = ptrtoint ptr %dma17.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %dma1.i, ptr %dma17.i, align 4
  br label %if.end37

if.end37:                                         ; preds = %if.end10.i, %if.end32.if.end37_crit_edge
  %call38 = call i32 @serial8250_register_8250_port(ptr noundef nonnull %uart) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call38)
  %cmp39 = icmp slt i32 %call38, 0
  br i1 %cmp39, label %if.end37.err_exit_crit_edge, label %if.end41

if.end37.err_exit_crit_edge:                      ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_exit

if.end41:                                         ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #9
  %38 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %call38, ptr %call.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 8
  %39 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  br label %cleanup

err_exit:                                         ; preds = %if.end37.err_exit_crit_edge, %if.end6.i.err_exit_crit_edge, %if.end.i.err_exit_crit_edge
  %ret.0 = phi i32 [ %call38, %if.end37.err_exit_crit_edge ], [ -12, %if.end.i.err_exit_crit_edge ], [ -12, %if.end6.i.err_exit_crit_edge ]
  %40 = ptrtoint ptr %board to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %board, align 4
  %exit = getelementptr inbounds %struct.lpss8250_board, ptr %41, i32 0, i32 3
  %42 = ptrtoint ptr %exit to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %exit, align 4
  %tobool44.not = icmp eq ptr %43, null
  br i1 %tobool44.not, label %err_exit.if.end48_crit_edge, label %if.then45

err_exit.if.end48_crit_edge:                      ; preds = %err_exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end48

if.then45:                                        ; preds = %err_exit
  call void @__sanitizer_cov_trace_pc() #9
  call void %43(ptr noundef nonnull %call.i) #7
  br label %if.end48

if.end48:                                         ; preds = %if.then45, %err_exit.if.end48_crit_edge
  call void @pci_free_irq_vectors(ptr noundef %pdev) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end48, %if.end41, %if.end26.cleanup_crit_edge, %if.end7.cleanup_crit_edge, %if.end4.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %if.end48 ], [ 0, %if.end41 ], [ %call, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ], [ %call.i80, %if.end4.cleanup_crit_edge ], [ -12, %if.end7.cleanup_crit_edge ], [ %call29, %if.end26.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 584, ptr nonnull %uart) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @lpss8250_remove(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %1, align 4
  tail call void @serial8250_unregister_port(i32 noundef %3) #7
  %board = getelementptr inbounds %struct.lpss8250, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %board to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %board, align 4
  %exit = getelementptr inbounds %struct.lpss8250_board, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %exit to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %exit, align 4
  %tobool.not = icmp eq ptr %7, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void %7(ptr noundef %1) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  tail call void @pci_free_irq_vectors(ptr noundef %pdev) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qrk_serial_setup(ptr noundef %lpss, ptr nocapture noundef readonly %port) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dma_chip.i = getelementptr inbounds %struct.lpss8250, ptr %lpss, i32 0, i32 2
  %dma_param.i = getelementptr inbounds %struct.lpss8250, ptr %lpss, i32 0, i32 3
  %dev.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 45
  %0 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 -136
  %pdata.i = getelementptr inbounds %struct.lpss8250, ptr %lpss, i32 0, i32 2, i32 6
  %2 = ptrtoint ptr %pdata.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @qrk_serial_dma_pdata, ptr %pdata.i, align 4
  %3 = ptrtoint ptr %dma_chip.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %1, ptr %dma_chip.i, align 4
  %devfn.i = getelementptr i8, ptr %1, i32 -108
  %4 = ptrtoint ptr %devfn.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %devfn.i, align 4
  %id.i = getelementptr inbounds %struct.lpss8250, ptr %lpss, i32 0, i32 2, i32 1
  %6 = ptrtoint ptr %id.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %id.i, align 4
  %call.i = tail call i32 @pci_irq_vector(ptr noundef %add.ptr.i, i32 noundef 0) #7
  %irq.i = getelementptr inbounds %struct.lpss8250, ptr %lpss, i32 0, i32 2, i32 2
  %7 = ptrtoint ptr %irq.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %call.i, ptr %irq.i, align 4
  %call4.i = tail call ptr @pci_ioremap_bar(ptr noundef %add.ptr.i, i32 noundef 1) #7
  %regs.i = getelementptr inbounds %struct.lpss8250, ptr %lpss, i32 0, i32 2, i32 3
  %8 = ptrtoint ptr %regs.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call4.i, ptr %regs.i, align 4
  %tobool.not.i = icmp eq ptr %call4.i, null
  br i1 %tobool.not.i, label %entry.qrk_serial_setup_dma.exit_crit_edge, label %if.end.i

entry.qrk_serial_setup_dma.exit_crit_edge:        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %qrk_serial_setup_dma.exit

if.end.i:                                         ; preds = %entry
  %call6.i = tail call i32 @dw_dma_probe(ptr noundef %dma_chip.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i)
  %tobool7.not.i = icmp eq i32 %call6.i, 0
  br i1 %tobool7.not.i, label %if.end9.i, label %if.end.i.qrk_serial_setup_dma.exit_crit_edge

if.end.i.qrk_serial_setup_dma.exit_crit_edge:     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %qrk_serial_setup_dma.exit

if.end9.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %call10.i = tail call i32 @pci_try_set_mwi(ptr noundef %add.ptr.i) #7
  %rx_dma_addr.i = getelementptr inbounds %struct.dw8250_port_data, ptr %lpss, i32 0, i32 1, i32 9
  %9 = ptrtoint ptr %rx_dma_addr.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 -4096, ptr %rx_dma_addr.i, align 4
  %tx_dma_addr.i = getelementptr inbounds %struct.dw8250_port_data, ptr %lpss, i32 0, i32 1, i32 10
  %10 = ptrtoint ptr %tx_dma_addr.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 -4096, ptr %tx_dma_addr.i, align 4
  %11 = ptrtoint ptr %dma_param.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %1, ptr %dma_param.i, align 4
  %src_id.i = getelementptr inbounds %struct.lpss8250, ptr %lpss, i32 0, i32 3, i32 1
  %12 = ptrtoint ptr %src_id.i to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 0, ptr %src_id.i, align 4
  %dst_id.i = getelementptr inbounds %struct.lpss8250, ptr %lpss, i32 0, i32 3, i32 2
  %13 = ptrtoint ptr %dst_id.i to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 1, ptr %dst_id.i, align 1
  %hs_polarity.i = getelementptr inbounds %struct.lpss8250, ptr %lpss, i32 0, i32 3, i32 6
  %14 = ptrtoint ptr %hs_polarity.i to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 1, ptr %hs_polarity.i, align 1
  %dma_maxburst.i = getelementptr inbounds %struct.lpss8250, ptr %lpss, i32 0, i32 4
  %15 = ptrtoint ptr %dma_maxburst.i to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 8, ptr %dma_maxburst.i, align 4
  br label %qrk_serial_setup_dma.exit

qrk_serial_setup_dma.exit:                        ; preds = %if.end9.i, %if.end.i.qrk_serial_setup_dma.exit_crit_edge, %entry.qrk_serial_setup_dma.exit_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @qrk_serial_exit(ptr noundef %lpss) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dma_param.i = getelementptr inbounds %struct.lpss8250, ptr %lpss, i32 0, i32 3
  %0 = ptrtoint ptr %dma_param.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dma_param.i, align 4
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %entry.qrk_serial_exit_dma.exit_crit_edge, label %if.end.i

entry.qrk_serial_exit_dma.exit_crit_edge:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %qrk_serial_exit_dma.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %dma_chip.i = getelementptr inbounds %struct.lpss8250, ptr %lpss, i32 0, i32 2
  %call.i = tail call i32 @dw_dma_remove(ptr noundef %dma_chip.i) #7
  %2 = ptrtoint ptr %dma_chip.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dma_chip.i, align 4
  %add.ptr.i = getelementptr i8, ptr %3, i32 -136
  %regs.i = getelementptr inbounds %struct.lpss8250, ptr %lpss, i32 0, i32 2, i32 3
  %4 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regs.i, align 4
  tail call void @pci_iounmap(ptr noundef %add.ptr.i, ptr noundef %5) #7
  br label %qrk_serial_exit_dma.exit

qrk_serial_exit_dma.exit:                         ; preds = %if.end.i, %entry.qrk_serial_exit_dma.exit_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_irq_vector(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pci_ioremap_bar(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dw_dma_probe(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_try_set_mwi(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dw_dma_remove(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_iounmap(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @ehl_serial_setup(ptr noundef %lpss, ptr nocapture noundef writeonly %port) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dma1 = getelementptr inbounds %struct.dw8250_port_data, ptr %lpss, i32 0, i32 1
  %dma2 = getelementptr inbounds %struct.uart_8250_port, ptr %port, i32 0, i32 19
  %0 = ptrtoint ptr %dma2 to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %dma1, ptr %dma2, align 4
  %set_termios = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 5
  %1 = ptrtoint ptr %set_termios to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr @dw8250_do_set_termios, ptr %set_termios, align 4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dw8250_do_set_termios(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @byt_serial_setup(ptr nocapture noundef writeonly %lpss, ptr nocapture noundef %port) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dma_param = getelementptr inbounds %struct.lpss8250, ptr %lpss, i32 0, i32 3
  %dev = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 45
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %devfn = getelementptr i8, ptr %1, i32 -108
  %2 = ptrtoint ptr %devfn to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %devfn, align 4
  %and = and i32 %3, 248
  %bus = getelementptr i8, ptr %1, i32 -128
  %4 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %bus, align 8
  %call = tail call ptr @pci_get_slot(ptr noundef %5, i32 noundef %and) #7
  %device = getelementptr i8, ptr %1, i32 -102
  %6 = ptrtoint ptr %device to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %device, align 2
  %8 = zext i16 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values)
  switch i16 %7, label %entry.cleanup_crit_edge [
    i16 3850, label %entry.sw.epilog_crit_edge
    i16 8842, label %entry.sw.epilog_crit_edge24
    i16 -25373, label %entry.sw.epilog_crit_edge25
    i16 3852, label %entry.sw.bb2_crit_edge
    i16 8844, label %entry.sw.bb2_crit_edge26
    i16 -25372, label %entry.sw.bb2_crit_edge27
  ]

entry.sw.bb2_crit_edge27:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb2

entry.sw.bb2_crit_edge26:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb2

entry.sw.bb2_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb2

entry.sw.epilog_crit_edge25:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

entry.sw.epilog_crit_edge24:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb2:                                           ; preds = %entry.sw.bb2_crit_edge, %entry.sw.bb2_crit_edge26, %entry.sw.bb2_crit_edge27
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb2, %entry.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge24, %entry.sw.epilog_crit_edge25
  %.sink23 = phi i8 [ 5, %sw.bb2 ], [ 3, %entry.sw.epilog_crit_edge ], [ 3, %entry.sw.epilog_crit_edge24 ], [ 3, %entry.sw.epilog_crit_edge25 ]
  %.sink = phi i8 [ 4, %sw.bb2 ], [ 2, %entry.sw.epilog_crit_edge ], [ 2, %entry.sw.epilog_crit_edge24 ], [ 2, %entry.sw.epilog_crit_edge25 ]
  %src_id3 = getelementptr inbounds %struct.lpss8250, ptr %lpss, i32 0, i32 3, i32 1
  %9 = ptrtoint ptr %src_id3 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %.sink23, ptr %src_id3, align 4
  %dst_id4 = getelementptr inbounds %struct.lpss8250, ptr %lpss, i32 0, i32 3, i32 2
  %10 = ptrtoint ptr %dst_id4 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %.sink, ptr %dst_id4, align 1
  %dev5 = getelementptr inbounds %struct.pci_dev, ptr %call, i32 0, i32 44
  %11 = ptrtoint ptr %dma_param to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %dev5, ptr %dma_param, align 4
  %m_master = getelementptr inbounds %struct.lpss8250, ptr %lpss, i32 0, i32 3, i32 3
  %12 = ptrtoint ptr %m_master to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 0, ptr %m_master, align 2
  %p_master = getelementptr inbounds %struct.lpss8250, ptr %lpss, i32 0, i32 3, i32 4
  %13 = ptrtoint ptr %p_master to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 1, ptr %p_master, align 1
  %dma_maxburst = getelementptr inbounds %struct.lpss8250, ptr %lpss, i32 0, i32 4
  %14 = ptrtoint ptr %dma_maxburst to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 16, ptr %dma_maxburst, align 4
  %set_termios = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 5
  %15 = ptrtoint ptr %set_termios to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr @byt_set_termios, ptr %set_termios, align 4
  %get_mctrl = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 7
  %16 = ptrtoint ptr %get_mctrl to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr @byt_get_mctrl, ptr %get_mctrl, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !32
  tail call void @arm_heavy_mb() #7
  %membase = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 2
  %17 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %membase, align 4
  %add.ptr7 = getelementptr i8, ptr %18, i32 2080
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr7, i32 33554432) #7, !srcloc !33
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %sw.epilog ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pci_get_slot(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @byt_set_termios(ptr noundef %p, ptr noundef %termios, ptr noundef %old) #2 align 64 {
entry:
  %m = alloca i32, align 4
  %n = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @tty_termios_baud_rate(ptr noundef %termios) #7
  %private_data = getelementptr inbounds %struct.uart_port, ptr %p, i32 0, i32 59
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %board = getelementptr inbounds %struct.lpss8250, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %board to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %board, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %3, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %m) #7
  %6 = ptrtoint ptr %m to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %m, align 4, !annotation !34
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %n) #7
  %7 = ptrtoint ptr %n to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 -1, ptr %n, align 4, !annotation !34
  %mul = shl i32 %call, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mul)
  %tobool.not = icmp eq i32 %mul, 0
  %spec.select = select i1 %tobool.not, i32 153600, i32 %mul
  %div = udiv i32 %5, %spec.select
  %8 = tail call i32 @llvm.ctlz.i32(i32 %div, i1 true) #7, !range !35
  %sub.i.i.op.i = xor i32 %8, 31
  %mul21 = shl i32 %spec.select, %sub.i.i.op.i
  call void @rational_best_approximation(i32 noundef %mul21, i32 noundef %5, i32 noundef 32767, i32 noundef 32767, ptr noundef nonnull %m, ptr noundef nonnull %n) #7
  %uartclk = getelementptr inbounds %struct.uart_port, ptr %p, i32 0, i32 22
  %9 = ptrtoint ptr %uartclk to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %mul21, ptr %uartclk, align 4
  %10 = ptrtoint ptr %m to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %m, align 4
  %shl22 = shl i32 %11, 1
  %12 = ptrtoint ptr %n to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %n, align 4
  %shl23 = shl i32 %13, 16
  %or = or i32 %shl23, %shl22
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !36
  call void @arm_heavy_mb() #7
  %14 = call i32 @llvm.bswap.i32(i32 %or)
  %membase = getelementptr inbounds %struct.uart_port, ptr %p, i32 0, i32 2
  %15 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %membase, align 4
  %add.ptr = getelementptr i8, ptr %16, i32 2048
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %14) #7, !srcloc !33
  %or24 = or i32 %or, -2147483647
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !37
  call void @arm_heavy_mb() #7
  %17 = call i32 @llvm.bswap.i32(i32 %or24)
  %18 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %membase, align 4
  %add.ptr29 = getelementptr i8, ptr %19, i32 2048
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr29, i32 %17) #7, !srcloc !33
  call void @dw8250_do_set_termios(ptr noundef %p, ptr noundef %termios, ptr noundef %old) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %n) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %m) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @byt_get_mctrl(ptr noundef %port) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @serial8250_do_get_mctrl(ptr noundef %port) #7
  %or = or i32 %call, 320
  ret i32 %or
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tty_termios_baud_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rational_best_approximation(i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @serial8250_do_get_mctrl(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pcim_enable_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_set_master(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pcim_iomap(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dw8250_setup_port(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @serial8250_register_8250_port(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_free_irq_vectors(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_alloc_irq_vectors_affinity(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @lpss8250_dma_filter(ptr nocapture noundef %chan, ptr noundef %param) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
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
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %private = getelementptr inbounds %struct.dma_chan, ptr %chan, i32 0, i32 14
  %6 = ptrtoint ptr %private to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %param, ptr %private, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret i1 %cmp.not
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @serial8250_unregister_port(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 7)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 7)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !10, !11, !13, !15, !17, !19, !21}
!llvm.module.flags = !{!23, !24, !25, !26, !27, !28, !29, !30}
!llvm.ident = !{!31}

!0 = !{ptr @__initcall__kmod_8250_lpss__238_408_lpss8250_pci_driver_init6, !1, !"__initcall__kmod_8250_lpss__238_408_lpss8250_pci_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/tty/serial/8250/8250_lpss.c", i32 408, i32 1}
!2 = !{ptr @__exitcall_lpss8250_pci_driver_exit, !1, !"__exitcall_lpss8250_pci_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author239, !4, !"__UNIQUE_ID_author239", i1 false, i1 false}
!4 = !{!"../drivers/tty/serial/8250/8250_lpss.c", i32 410, i32 1}
!5 = !{ptr @__UNIQUE_ID_file240, !6, !"__UNIQUE_ID_file240", i1 false, i1 false}
!6 = !{!"../drivers/tty/serial/8250/8250_lpss.c", i32 411, i32 1}
!7 = !{ptr @__UNIQUE_ID_license241, !6, !"__UNIQUE_ID_license241", i1 false, i1 false}
!8 = !{ptr @__UNIQUE_ID_description242, !9, !"__UNIQUE_ID_description242", i1 false, i1 false}
!9 = !{!"../drivers/tty/serial/8250/8250_lpss.c", i32 412, i32 1}
!10 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @lpss8250_pci_driver, !12, !"lpss8250_pci_driver", i1 false, i1 false}
!12 = !{!"../drivers/tty/serial/8250/8250_lpss.c", i32 401, i32 26}
!13 = !{ptr @pci_ids, !14, !"pci_ids", i1 false, i1 false}
!14 = !{!"../drivers/tty/serial/8250/8250_lpss.c", i32 383, i32 35}
!15 = !{ptr @qrk_board, !16, !"qrk_board", i1 false, i1 false}
!16 = !{!"../drivers/tty/serial/8250/8250_lpss.c", i32 376, i32 36}
!17 = !{ptr @qrk_serial_dma_pdata, !18, !"qrk_serial_dma_pdata", i1 false, i1 false}
!18 = !{!"../drivers/tty/serial/8250/8250_lpss.c", i32 174, i32 42}
!19 = !{ptr @ehl_board, !20, !"ehl_board", i1 false, i1 false}
!20 = !{!"../drivers/tty/serial/8250/8250_lpss.c", i32 370, i32 36}
!21 = !{ptr @byt_board, !22, !"byt_board", i1 false, i1 false}
!22 = !{!"../drivers/tty/serial/8250/8250_lpss.c", i32 364, i32 36}
!23 = !{i32 1, !"wchar_size", i32 2}
!24 = !{i32 1, !"min_enum_size", i32 4}
!25 = !{i32 8, !"branch-target-enforcement", i32 0}
!26 = !{i32 8, !"sign-return-address", i32 0}
!27 = !{i32 8, !"sign-return-address-all", i32 0}
!28 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!29 = !{i32 7, !"uwtable", i32 1}
!30 = !{i32 7, !"frame-pointer", i32 2}
!31 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!32 = !{i64 2154894185}
!33 = !{i64 4988316}
!34 = !{!"auto-init"}
!35 = !{i32 0, i32 33}
!36 = !{i64 2154891722}
!37 = !{i64 2154892285}
