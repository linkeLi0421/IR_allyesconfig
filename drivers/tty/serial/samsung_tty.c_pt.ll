; ModuleID = '/llk/IR_all_yes/drivers/tty/serial/samsung_tty.c_pt.bc'
source_filename = "../drivers/tty/serial/samsung_tty.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.earlycon_id = type { [15 x i8], i8, [128 x i8], ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.platform_device_id = type { [20 x i8], i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.s3c24xx_uart_port = type { i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, %struct.uart_port, ptr, ptr, ptr }
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
%struct.uart_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.uart_driver = type { ptr, ptr, ptr, i32, i32, i32, ptr, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.console = type { [16 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, i16, i16, i32, i32, i32, ptr, ptr }
%struct.s3c24xx_serial_drv_data = type { ptr, ptr, [4 x i32] }
%struct.s3c24xx_uart_info = type { ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8 }
%struct.s3c2410_uartcfg = type { i8, i8, i16, i32, i32, i32, i32, i32, i32 }
%struct.samsung_early_console_data = type { i32 }
%struct.earlycon_device = type { ptr, %struct.uart_port, [16 x i8], i32 }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
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
%struct.list_head = type { ptr, ptr }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.dma_tx_state = type { i32, i32, i32, i32 }
%struct.s3c24xx_uart_dma = type { i32, i32, %struct.dma_slave_config, %struct.dma_slave_config, ptr, ptr, i32, i32, i32, i32, ptr, i32, i32, i32, ptr, ptr, i32, i32 }
%struct.dma_slave_config = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, ptr, i32 }
%struct.dma_device = type { %struct.kref, i32, i32, %struct.list_head, %struct.list_head, %struct.dma_filter, %struct.dma_cap_mask_t, i32, i16, i16, i32, i32, i32, i32, i32, ptr, ptr, %struct.ida, %struct.mutex, i32, i32, i32, i32, i32, i32, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dma_filter = type { ptr, i32, ptr }
%struct.dma_cap_mask_t = type { [1 x i32] }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.dma_async_tx_descriptor = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, %struct.spinlock }
%struct.uart_state = type { %struct.tty_port, i32, %struct.circ_buf, %struct.atomic_t, %struct.wait_queue_head, ptr }
%struct.tty_port = type { %struct.tty_bufhead, ptr, ptr, ptr, ptr, %struct.spinlock, i32, i32, %struct.wait_queue_head, %struct.wait_queue_head, i32, i32, i8, %struct.mutex, %struct.mutex, ptr, i32, i32, i32, %struct.kref, ptr }
%struct.tty_bufhead = type { ptr, %struct.work_struct, %struct.mutex, %struct.atomic_t, %struct.tty_buffer, %struct.llist_head, %struct.atomic_t, i32, ptr }
%struct.tty_buffer = type { %union.anon.37, i32, i32, i32, i32, i32, [0 x i32] }
%union.anon.37 = type { ptr }
%struct.llist_head = type { ptr }
%struct.circ_buf = type { ptr, i32, i32 }
%struct.ktermios = type { i32, i32, i32, i32, i8, [19 x i8], i32, i32 }
%struct.tty_struct = type { i32, %struct.kref, ptr, ptr, ptr, i32, %struct.ld_semaphore, ptr, %struct.mutex, %struct.mutex, %struct.mutex, %struct.rw_semaphore, %struct.mutex, %struct.ktermios, %struct.ktermios, [64 x i8], i32, i32, %struct.winsize, %struct.anon.38, %struct.anon.39, i32, i32, i32, ptr, ptr, %struct.wait_queue_head, %struct.wait_queue_head, %struct.work_struct, ptr, ptr, %struct.spinlock, %struct.list_head, i32, ptr, i32, %struct.work_struct, ptr }
%struct.ld_semaphore = type { %struct.atomic_t, %struct.raw_spinlock, i32, %struct.list_head, %struct.list_head, %struct.lockdep_map }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.winsize = type { i16, i16, i16, i16 }
%struct.anon.38 = type { %struct.spinlock, i8, i8, [0 x i32] }
%struct.anon.39 = type { %struct.spinlock, ptr, ptr, i8, i8, [0 x i32] }
%struct.scatterlist = type { i32, i32, i32, i32, i32 }
%struct.dma_slave_caps = type { i32, i32, i32, i32, i32, i32, i8, i8, i8, i32, i8 }
%struct.page = type { i32, %union.anon.2, %union.anon.69, %struct.atomic_t, i32 }
%union.anon.2 = type { %struct.anon.3 }
%struct.anon.3 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.69 = type { %struct.atomic_t }

@samsung_serial_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @s3c24xx_serial_probe, ptr @s3c24xx_serial_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @s3c24xx_uart_dt_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @s3c24xx_serial_pm_ops, ptr null, ptr null }, ptr @s3c24xx_serial_driver_ids, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__initcall__kmod_samsung_tty__269_2930_samsung_serial_init6 = internal global ptr @samsung_serial_init, section ".initcall6.init", align 4
@__exitcall_samsung_serial_exit = internal global ptr @samsung_serial_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID___earlycon_s3c2410270 = internal constant %struct.earlycon_id { [15 x i8] c"s3c2410\00\00\00\00\00\00\00\00", i8 0, [128 x i8] c"samsung,s3c2410-uart\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @s3c2410_early_console_setup }, section "__earlycon_table", align 4
@__UNIQUE_ID___earlycon_s3c2412271 = internal constant %struct.earlycon_id { [15 x i8] c"s3c2412\00\00\00\00\00\00\00\00", i8 0, [128 x i8] c"samsung,s3c2412-uart\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @s3c2440_early_console_setup }, section "__earlycon_table", align 4
@__UNIQUE_ID___earlycon_s3c2440272 = internal constant %struct.earlycon_id { [15 x i8] c"s3c2440\00\00\00\00\00\00\00\00", i8 0, [128 x i8] c"samsung,s3c2440-uart\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @s3c2440_early_console_setup }, section "__earlycon_table", align 4
@__UNIQUE_ID___earlycon_s3c6400273 = internal constant %struct.earlycon_id { [15 x i8] c"s3c6400\00\00\00\00\00\00\00\00", i8 0, [128 x i8] c"samsung,s3c6400-uart\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @s3c2440_early_console_setup }, section "__earlycon_table", align 4
@__UNIQUE_ID___earlycon_s5pv210274 = internal constant %struct.earlycon_id { [15 x i8] c"s5pv210\00\00\00\00\00\00\00\00", i8 0, [128 x i8] c"samsung,s5pv210-uart\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @s5pv210_early_console_setup }, section "__earlycon_table", align 4
@__UNIQUE_ID___earlycon_exynos4210275 = internal constant %struct.earlycon_id { [15 x i8] c"exynos4210\00\00\00\00\00", i8 0, [128 x i8] c"samsung,exynos4210-uart\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @s5pv210_early_console_setup }, section "__earlycon_table", align 4
@__UNIQUE_ID___earlycon_s5l276 = internal constant %struct.earlycon_id { [15 x i8] c"s5l\00\00\00\00\00\00\00\00\00\00\00\00", i8 0, [128 x i8] c"apple,s5l-uart\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @apple_s5l_early_console_setup }, section "__earlycon_table", align 4
@__UNIQUE_ID_alias277 = internal constant [40 x i8] c"samsung_tty.alias=platform:samsung-uart\00", section ".modinfo", align 1
@__UNIQUE_ID_description278 = internal constant [55 x i8] c"samsung_tty.description=Samsung SoC Serial port driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author279 = internal constant [48 x i8] c"samsung_tty.author=Ben Dooks <ben@simtec.co.uk>\00", section ".modinfo", align 1
@__UNIQUE_ID_file280 = internal constant [48 x i8] c"samsung_tty.file=drivers/tty/serial/samsung_tty\00", section ".modinfo", align 1
@__UNIQUE_ID_license281 = internal constant [27 x i8] c"samsung_tty.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"samsung-uart\00", [19 x i8] zeroinitializer }, align 32
@s3c24xx_uart_dt_match = internal constant { [10 x %struct.of_device_id], [504 x i8] } { [10 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"samsung,s3c2410-uart\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"samsung,s3c2412-uart\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"samsung,s3c2440-uart\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"samsung,s3c6400-uart\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @s3c6400_serial_drv_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"samsung,s5pv210-uart\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @s5pv210_serial_drv_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"samsung,exynos4210-uart\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @exynos4210_serial_drv_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"samsung,exynos5433-uart\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @exynos5433_serial_drv_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"apple,s5l-uart\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"samsung,exynos850-uart\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @exynos850_serial_drv_data }, %struct.of_device_id zeroinitializer], [504 x i8] zeroinitializer }, align 32
@s3c24xx_serial_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @s3c24xx_serial_suspend, ptr @s3c24xx_serial_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @s3c24xx_serial_resume_noirq, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@s3c24xx_serial_driver_ids = internal constant { [10 x %struct.platform_device_id], [48 x i8] } { [10 x %struct.platform_device_id] [%struct.platform_device_id { [20 x i8] c"s3c2410-uart\00\00\00\00\00\00\00\00", i32 0 }, %struct.platform_device_id { [20 x i8] c"s3c2412-uart\00\00\00\00\00\00\00\00", i32 0 }, %struct.platform_device_id { [20 x i8] c"s3c2440-uart\00\00\00\00\00\00\00\00", i32 0 }, %struct.platform_device_id { [20 x i8] c"s3c6400-uart\00\00\00\00\00\00\00\00", i32 ptrtoint (ptr @s3c6400_serial_drv_data to i32) }, %struct.platform_device_id { [20 x i8] c"s5pv210-uart\00\00\00\00\00\00\00\00", i32 ptrtoint (ptr @s5pv210_serial_drv_data to i32) }, %struct.platform_device_id { [20 x i8] c"exynos4210-uart\00\00\00\00\00", i32 ptrtoint (ptr @exynos4210_serial_drv_data to i32) }, %struct.platform_device_id { [20 x i8] c"exynos5433-uart\00\00\00\00\00", i32 ptrtoint (ptr @exynos5433_serial_drv_data to i32) }, %struct.platform_device_id { [20 x i8] c"s5l-uart\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.platform_device_id { [20 x i8] c"exynos850-uart\00\00\00\00\00\00", i32 ptrtoint (ptr @exynos850_serial_drv_data to i32) }, %struct.platform_device_id zeroinitializer], [48 x i8] zeroinitializer }, align 32
@probe_index = internal global { i32, [28 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"serial\00", [25 x i8] zeroinitializer }, align 32
@s3c24xx_serial_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 2188, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"serial%d out of range\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"s3c24xx_serial_probe\00", [43 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"drivers/tty/serial/samsung_tty.c\00", [63 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@s3c24xx_serial_probe._entry_ptr = internal global ptr @s3c24xx_serial_probe._entry, section ".printk_index", align 4
@s3c24xx_serial_ports = internal global { [4 x %struct.s3c24xx_uart_port], [432 x i8] } { [4 x %struct.s3c24xx_uart_port] [%struct.s3c24xx_uart_port { i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, ptr null, %struct.uart_port { %struct.spinlock { %union.anon.0 { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.25, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, i32 0, i32 16, i8 0, i8 0, i8 2, i8 0, i32 0, i32 0, ptr null, %struct.uart_icount zeroinitializer, ptr null, i32 268435456, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @s3c24xx_serial_ops, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, ptr null, ptr null, ptr null, %struct.serial_rs485 zeroinitializer, ptr null, %struct.serial_iso7816 zeroinitializer, ptr null }, ptr null, ptr null, ptr null }, %struct.s3c24xx_uart_port { i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, ptr null, %struct.uart_port { %struct.spinlock { %union.anon.0 { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.26, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, i32 0, i32 16, i8 0, i8 0, i8 2, i8 0, i32 0, i32 0, ptr null, %struct.uart_icount zeroinitializer, ptr null, i32 268435456, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @s3c24xx_serial_ops, i32 0, i32 1, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, ptr null, ptr null, ptr null, %struct.serial_rs485 zeroinitializer, ptr null, %struct.serial_iso7816 zeroinitializer, ptr null }, ptr null, ptr null, ptr null }, %struct.s3c24xx_uart_port { i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, ptr null, %struct.uart_port { %struct.spinlock { %union.anon.0 { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.27, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, i32 0, i32 16, i8 0, i8 0, i8 2, i8 0, i32 0, i32 0, ptr null, %struct.uart_icount zeroinitializer, ptr null, i32 268435456, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @s3c24xx_serial_ops, i32 0, i32 2, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, ptr null, ptr null, ptr null, %struct.serial_rs485 zeroinitializer, ptr null, %struct.serial_iso7816 zeroinitializer, ptr null }, ptr null, ptr null, ptr null }, %struct.s3c24xx_uart_port { i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, ptr null, %struct.uart_port { %struct.spinlock { %union.anon.0 { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.28, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, i32 0, i32 16, i8 0, i8 0, i8 2, i8 0, i32 0, i32 0, ptr null, %struct.uart_icount zeroinitializer, ptr null, i32 268435456, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @s3c24xx_serial_ops, i32 0, i32 3, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, ptr null, ptr null, ptr null, %struct.serial_rs485 zeroinitializer, ptr null, %struct.serial_iso7816 zeroinitializer, ptr null }, ptr null, ptr null, ptr null }], [432 x i8] zeroinitializer }, align 32
@s3c24xx_serial_probe._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.3, ptr @.str.4, i32 2195, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"could not find driver data\0A\00", [36 x i8] zeroinitializer }, align 32
@s3c24xx_serial_probe._entry_ptr.9 = internal global ptr @s3c24xx_serial_probe._entry.7, section ".printk_index", align 4
@s3c24xx_serial_ops = internal constant { %struct.uart_ops, [56 x i8] } { %struct.uart_ops { ptr @s3c24xx_serial_tx_empty, ptr @s3c24xx_serial_set_mctrl, ptr @s3c24xx_serial_get_mctrl, ptr @s3c24xx_serial_stop_tx, ptr @s3c24xx_serial_start_tx, ptr null, ptr null, ptr null, ptr @s3c24xx_serial_stop_rx, ptr null, ptr @s3c24xx_serial_break_ctl, ptr @s3c24xx_serial_startup, ptr @s3c24xx_serial_shutdown, ptr null, ptr @s3c24xx_serial_set_termios, ptr null, ptr @s3c24xx_serial_pm, ptr @s3c24xx_serial_type, ptr null, ptr null, ptr @s3c24xx_serial_config_port, ptr @s3c24xx_serial_verify_port, ptr null, ptr null, ptr @s3c24xx_serial_put_poll_char, ptr @s3c24xx_serial_get_poll_char }, [56 x i8] zeroinitializer }, align 32
@s3c64xx_serial_ops = internal constant { %struct.uart_ops, [56 x i8] } { %struct.uart_ops { ptr @s3c24xx_serial_tx_empty, ptr @s3c24xx_serial_set_mctrl, ptr @s3c24xx_serial_get_mctrl, ptr @s3c24xx_serial_stop_tx, ptr @s3c24xx_serial_start_tx, ptr null, ptr null, ptr null, ptr @s3c24xx_serial_stop_rx, ptr null, ptr @s3c24xx_serial_break_ctl, ptr @s3c64xx_serial_startup, ptr @s3c64xx_serial_shutdown, ptr null, ptr @s3c24xx_serial_set_termios, ptr null, ptr @s3c24xx_serial_pm, ptr @s3c24xx_serial_type, ptr null, ptr null, ptr @s3c24xx_serial_config_port, ptr @s3c24xx_serial_verify_port, ptr null, ptr null, ptr @s3c24xx_serial_put_poll_char, ptr @s3c24xx_serial_get_poll_char }, [56 x i8] zeroinitializer }, align 32
@apple_s5l_serial_ops = internal constant { %struct.uart_ops, [56 x i8] } { %struct.uart_ops { ptr @s3c24xx_serial_tx_empty, ptr @s3c24xx_serial_set_mctrl, ptr @s3c24xx_serial_get_mctrl, ptr @s3c24xx_serial_stop_tx, ptr @s3c24xx_serial_start_tx, ptr null, ptr null, ptr null, ptr @s3c24xx_serial_stop_rx, ptr null, ptr @s3c24xx_serial_break_ctl, ptr @apple_s5l_serial_startup, ptr @apple_s5l_serial_shutdown, ptr null, ptr @s3c24xx_serial_set_termios, ptr null, ptr @s3c24xx_serial_pm, ptr @s3c24xx_serial_type, ptr null, ptr null, ptr @s3c24xx_serial_config_port, ptr @s3c24xx_serial_verify_port, ptr null, ptr null, ptr @s3c24xx_serial_put_poll_char, ptr @s3c24xx_serial_get_poll_char }, [56 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"samsung,uart-fifosize\00", [42 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"reg-io-width\00", [19 x i8] zeroinitializer }, align 32
@s3c24xx_serial_probe._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.3, ptr @.str.4, i32 2231, ptr @.str.14, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"unsupported reg-io-width (%d)\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@s3c24xx_serial_probe._entry_ptr.15 = internal global ptr @s3c24xx_serial_probe._entry.12, section ".printk_index", align 4
@s3c24xx_serial_probe.__UNIQUE_ID_ddebug265 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.16, ptr @.str.3, ptr @.str.4, ptr @.str.17, i8 2, i8 50, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.16 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"samsung_tty\00", [20 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"%s: initialising port %p...\0A\00", [35 x i8] zeroinitializer }, align 32
@s3c24xx_uart_drv = internal global { %struct.uart_driver, [60 x i8] } { %struct.uart_driver { ptr null, ptr @.str.96, ptr @.str.97, i32 204, i32 64, i32 4, ptr @s3c24xx_serial_console, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@s3c24xx_serial_probe._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.3, ptr @.str.4, i32 2259, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\013Failed to register Samsung UART driver\0A\00", [54 x i8] zeroinitializer }, align 32
@s3c24xx_serial_probe._entry_ptr.20 = internal global ptr @s3c24xx_serial_probe._entry.18, section ".printk_index", align 4
@s3c24xx_serial_probe.__UNIQUE_ID_ddebug266 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.16, ptr @.str.3, ptr @.str.4, ptr @.str.21, i8 2, i8 54, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.21 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"%s: adding port\0A\00", [47 x i8] zeroinitializer }, align 32
@s3c24xx_serial_probe._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.3, ptr @.str.4, i32 2279, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"failed to add cpufreq notifier\0A\00", [32 x i8] zeroinitializer }, align 32
@s3c24xx_serial_probe._entry_ptr.24 = internal global ptr @s3c24xx_serial_probe._entry.22, section ".printk_index", align 4
@.str.25 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"s3c24xx_serial_ports[0].port.lock\00", [62 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"s3c24xx_serial_ports[1].port.lock\00", [62 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"s3c24xx_serial_ports[2].port.lock\00", [62 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"s3c24xx_serial_ports[3].port.lock\00", [62 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@s3c24xx_serial_start_tx_dma._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.30, ptr @.str.4, i32 456, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Unable to get desc for Tx\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"s3c24xx_serial_start_tx_dma\00", [36 x i8] zeroinitializer }, align 32
@s3c24xx_serial_start_tx_dma._entry_ptr = internal global ptr @s3c24xx_serial_start_tx_dma._entry, section ".printk_index", align 4
@s3c24xx_serial_stop_rx.__UNIQUE_ID_ddebug248 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.16, ptr @.str.31, ptr @.str.4, ptr @.str.32, i8 0, i8 -120, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.31 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"s3c24xx_serial_stop_rx\00", [41 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"stopping rx\0A\00", [19 x i8] zeroinitializer }, align 32
@s3c24xx_uart_copy_rx_to_tty._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.34, ptr @.str.4, i32 526, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"No tty port\0A\00", [19 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"s3c24xx_uart_copy_rx_to_tty\00", [36 x i8] zeroinitializer }, align 32
@s3c24xx_uart_copy_rx_to_tty._entry_ptr = internal global ptr @s3c24xx_uart_copy_rx_to_tty._entry, section ".printk_index", align 4
@s3c24xx_uart_copy_rx_to_tty._entry.35 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.34, ptr @.str.4, i32 533, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"RxData copy to tty layer failed\0A\00", [63 x i8] zeroinitializer }, align 32
@s3c24xx_uart_copy_rx_to_tty._entry_ptr.37 = internal global ptr @s3c24xx_uart_copy_rx_to_tty._entry.35, section ".printk_index", align 4
@s3c24xx_serial_startup._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.39, ptr @.str.4, i32 1244, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"cannot get irq %d\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"s3c24xx_serial_startup\00", [41 x i8] zeroinitializer }, align 32
@s3c24xx_serial_startup._entry_ptr = internal global ptr @s3c24xx_serial_startup._entry, section ".printk_index", align 4
@s3c24xx_serial_startup.__UNIQUE_ID_ddebug251 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.16, ptr @.str.39, ptr @.str.4, ptr @.str.40, i8 1, i8 56, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.40 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"requesting tx irq...\0A\00", [42 x i8] zeroinitializer }, align 32
@s3c24xx_serial_startup._entry.41 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.39, ptr @.str.4, i32 1258, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@s3c24xx_serial_startup._entry_ptr.42 = internal global ptr @s3c24xx_serial_startup._entry.41, section ".printk_index", align 4
@s3c64xx_start_rx_dma._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.44, ptr @.str.4, i32 649, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Unable to get desc for Rx\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"s3c64xx_start_rx_dma\00", [43 x i8] zeroinitializer }, align 32
@s3c64xx_start_rx_dma._entry_ptr = internal global ptr @s3c64xx_start_rx_dma._entry, section ".printk_index", align 4
@s3c24xx_serial_rx_drain_fifo.__UNIQUE_ID_ddebug249 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.16, ptr @.str.45, ptr @.str.4, ptr @.str.46, i8 0, i8 -54, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.45 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"s3c24xx_serial_rx_drain_fifo\00", [35 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"rxerr: port ch=0x%02x, rxs=0x%08x\0A\00", [61 x i8] zeroinitializer }, align 32
@s3c24xx_serial_rx_drain_fifo.__UNIQUE_ID_ddebug250 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.16, ptr @.str.45, ptr @.str.4, ptr @.str.47, i8 0, i8 -53, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.47 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"break!\0A\00", [24 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@s3c24xx_serial_set_termios.__UNIQUE_ID_ddebug252 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.16, ptr @.str.48, ptr @.str.4, ptr @.str.49, i8 1, i8 -119, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.48 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"s3c24xx_serial_set_termios\00", [37 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"fracval = %04x\0A\00", [16 x i8] zeroinitializer }, align 32
@udivslot_table = internal constant { [16 x i16], [32 x i8] } { [16 x i16] [i16 0, i16 128, i16 2056, i16 2184, i16 8738, i16 18724, i16 19026, i16 21674, i16 21845, i16 -10923, i16 -10795, i16 -8747, i16 -8739, i16 -8227, i16 -8225, i16 -33], [32 x i8] zeroinitializer }, align 32
@s3c24xx_serial_set_termios.__UNIQUE_ID_ddebug253 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.16, ptr @.str.48, ptr @.str.4, ptr @.str.50, i8 1, i8 -118, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.50 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"udivslot = %04x (div %d)\0A\00", [38 x i8] zeroinitializer }, align 32
@s3c24xx_serial_set_termios.__UNIQUE_ID_ddebug254 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.16, ptr @.str.48, ptr @.str.4, ptr @.str.51, i8 1, i8 -117, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.51 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"config: 5bits/char\0A\00", [44 x i8] zeroinitializer }, align 32
@s3c24xx_serial_set_termios.__UNIQUE_ID_ddebug255 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.16, ptr @.str.48, ptr @.str.4, ptr @.str.52, i8 1, i8 -116, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.52 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"config: 6bits/char\0A\00", [44 x i8] zeroinitializer }, align 32
@s3c24xx_serial_set_termios.__UNIQUE_ID_ddebug256 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.16, ptr @.str.48, ptr @.str.4, ptr @.str.53, i8 1, i8 -115, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.53 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"config: 7bits/char\0A\00", [44 x i8] zeroinitializer }, align 32
@s3c24xx_serial_set_termios.__UNIQUE_ID_ddebug257 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.16, ptr @.str.48, ptr @.str.4, ptr @.str.54, i8 1, i8 -114, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.54 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"config: 8bits/char\0A\00", [44 x i8] zeroinitializer }, align 32
@s3c24xx_serial_set_termios.__UNIQUE_ID_ddebug258 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.16, ptr @.str.48, ptr @.str.4, ptr @.str.55, i8 1, i8 -108, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.55 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"setting ulcon to %08x, brddiv to %d, udivslot %08x\0A\00", [44 x i8] zeroinitializer }, align 32
@s3c24xx_serial_set_termios.__UNIQUE_ID_ddebug259 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.16, ptr @.str.48, ptr @.str.4, ptr @.str.56, i8 1, i8 -101, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.56 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"uart: ulcon = 0x%08x, ucon = 0x%08x, ufcon = 0x%08x\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"clk_uart_baud%d\00", [16 x i8] zeroinitializer }, align 32
@s3c24xx_serial_pm._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.58, ptr @.str.59, ptr @.str.4, i32 1387, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"s3c24xx_serial: unknown pm %d\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"s3c24xx_serial_pm\00", [46 x i8] zeroinitializer }, align 32
@s3c24xx_serial_pm._entry_ptr = internal global ptr @s3c24xx_serial_pm._entry, section ".printk_index", align 4
@.str.60 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"S3C24XX\00", [24 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"S3C6400/10\00", [21 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"APPLE S5L\00", [22 x i8] zeroinitializer }, align 32
@s3c64xx_serial_startup._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.63, ptr @.str.4, i32 1294, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"s3c64xx_serial_startup\00", [41 x i8] zeroinitializer }, align 32
@s3c64xx_serial_startup._entry_ptr = internal global ptr @s3c64xx_serial_startup._entry, section ".printk_index", align 4
@.str.64 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"rx\00", [29 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"DMA RX channel request failed\00", [34 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"insufficient DMA RX engine capabilities\00", [56 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"tx\00", [29 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"DMA TX channel request failed\00", [34 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"insufficient DMA TX engine capabilities\00", [56 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"DMA mapping error for RX buffer\00", [32 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"DMA mapping error for TX buffer\00", [32 x i8] zeroinitializer }, align 32
@s3c24xx_serial_request_dma._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.72, ptr @.str.73, ptr @.str.4, i32 1139, ptr @.str.14, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"%s, DMA will not be used\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"s3c24xx_serial_request_dma\00", [37 x i8] zeroinitializer }, align 32
@s3c24xx_serial_request_dma._entry_ptr = internal global ptr @s3c24xx_serial_request_dma._entry, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@dma_map_single_attrs.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.74 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/dma-mapping.h\00", [36 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"%s %s: rejecting DMA map of vmalloc memory\0A\00", [52 x i8] zeroinitializer }, align 32
@mem_map = external dso_local local_unnamed_addr global ptr, align 4
@apple_s5l_serial_startup._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.76, ptr @.str.4, i32 1332, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"apple_s5l_serial_startup\00", [39 x i8] zeroinitializer }, align 32
@apple_s5l_serial_startup._entry_ptr = internal global ptr @apple_s5l_serial_startup._entry, section ".printk_index", align 4
@s3c24xx_serial_init_port.__UNIQUE_ID_ddebug260 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.16, ptr @.str.77, ptr @.str.4, ptr @.str.78, i8 1, i8 -2, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.77 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"s3c24xx_serial_init_port\00", [39 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"enabling flow control\0A\00", [41 x i8] zeroinitializer }, align 32
@s3c24xx_serial_init_port._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.79, ptr @.str.77, ptr @.str.4, i32 2048, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"failed to find memory resource for uart\0A\00", [55 x i8] zeroinitializer }, align 32
@s3c24xx_serial_init_port._entry_ptr = internal global ptr @s3c24xx_serial_init_port._entry, section ".printk_index", align 4
@s3c24xx_serial_init_port.__UNIQUE_ID_ddebug261 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.16, ptr @.str.77, ptr @.str.4, ptr @.str.80, i8 2, i8 1, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.80 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"resource %pR)\0A\00", [17 x i8] zeroinitializer }, align 32
@s3c24xx_serial_init_port._entry.81 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.82, ptr @.str.77, ptr @.str.4, i32 2056, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"failed to remap controller address\0A\00", [60 x i8] zeroinitializer }, align 32
@s3c24xx_serial_init_port._entry_ptr.83 = internal global ptr @s3c24xx_serial_init_port._entry.81, section ".printk_index", align 4
@.str.84 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"dmas\00", [27 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"uart\00", [27 x i8] zeroinitializer }, align 32
@s3c24xx_serial_init_port._entry.86 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.87, ptr @.str.77, ptr @.str.4, i32 2098, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\013%s: Controller clock not found\0A\00", [62 x i8] zeroinitializer }, align 32
@s3c24xx_serial_init_port._entry_ptr.88 = internal global ptr @s3c24xx_serial_init_port._entry.86, section ".printk_index", align 4
@s3c24xx_serial_init_port._entry.89 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.90, ptr @.str.77, ptr @.str.4, i32 2105, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\013uart: clock failed to prepare+enable: %d\0A\00", [52 x i8] zeroinitializer }, align 32
@s3c24xx_serial_init_port._entry_ptr.91 = internal global ptr @s3c24xx_serial_init_port._entry.89, section ".printk_index", align 4
@s3c24xx_serial_init_port._entry.92 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.93, ptr @.str.77, ptr @.str.4, i32 2112, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\014uart: failed to enable baudclk\0A\00", [62 x i8] zeroinitializer }, align 32
@s3c24xx_serial_init_port._entry_ptr.94 = internal global ptr @s3c24xx_serial_init_port._entry.92, section ".printk_index", align 4
@s3c24xx_serial_init_port.__UNIQUE_ID_ddebug262 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.16, ptr @.str.77, ptr @.str.4, ptr @.str.95, i8 2, i8 22, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.95 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"port: map=%pa, mem=%p, irq=%d (%d,%d), clock=%u\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"s3c2410_serial\00", [17 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"ttySAC\00", [25 x i8] zeroinitializer }, align 32
@s3c24xx_serial_console = internal global { %struct.console, [60 x i8] } { %struct.console { [16 x i8] c"ttySAC\00\00\00\00\00\00\00\00\00\00", ptr @s3c24xx_serial_console_write, ptr null, ptr @uart_console_device, ptr null, ptr @s3c24xx_serial_console_setup, ptr null, ptr null, i16 1, i16 -1, i32 0, i32 0, i32 0, ptr @s3c24xx_uart_drv, ptr null }, [60 x i8] zeroinitializer }, align 32
@cons_uart = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@s3c24xx_serial_console_setup.__UNIQUE_ID_ddebug268 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.16, ptr @.str.98, ptr @.str.4, ptr @.str.99, i8 2, i8 -118, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.98 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"s3c24xx_serial_console_setup\00", [35 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"baud %d\0A\00", [23 x i8] zeroinitializer }, align 32
@s3c24xx_serial_get_options.__UNIQUE_ID_ddebug267 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.16, ptr @.str.100, ptr @.str.4, ptr @.str.101, i8 2, i8 -128, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.100 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"s3c24xx_serial_get_options\00", [37 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"calculated baud %d\0A\00", [44 x i8] zeroinitializer }, align 32
@s3c6400_serial_drv_data = internal global { %struct.s3c24xx_serial_drv_data, [40 x i8] } { %struct.s3c24xx_serial_drv_data { ptr @.compoundliteral, ptr @.compoundliteral.103, [4 x i32] zeroinitializer }, [40 x i8] zeroinitializer }, align 32
@s5pv210_serial_drv_data = internal global { %struct.s3c24xx_serial_drv_data, [40 x i8] } { %struct.s3c24xx_serial_drv_data { ptr @.compoundliteral.105, ptr @.compoundliteral.106, [4 x i32] [i32 256, i32 64, i32 16, i32 16] }, [40 x i8] zeroinitializer }, align 32
@exynos4210_serial_drv_data = internal global { %struct.s3c24xx_serial_drv_data, [40 x i8] } { %struct.s3c24xx_serial_drv_data { ptr @.compoundliteral.108, ptr @.compoundliteral.109, [4 x i32] [i32 256, i32 64, i32 16, i32 16] }, [40 x i8] zeroinitializer }, align 32
@exynos5433_serial_drv_data = internal global { %struct.s3c24xx_serial_drv_data, [40 x i8] } { %struct.s3c24xx_serial_drv_data { ptr @.compoundliteral.110, ptr @.compoundliteral.111, [4 x i32] [i32 64, i32 256, i32 16, i32 256] }, [40 x i8] zeroinitializer }, align 32
@exynos850_serial_drv_data = internal global { %struct.s3c24xx_serial_drv_data, [40 x i8] } { %struct.s3c24xx_serial_drv_data { ptr @.compoundliteral.112, ptr @.compoundliteral.113, [4 x i32] [i32 256, i32 64, i32 64, i32 64] }, [40 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Samsung S3C6400 UART\00", [43 x i8] zeroinitializer }, align 32
@.compoundliteral = internal global { %struct.s3c24xx_uart_info, [32 x i8] } { %struct.s3c24xx_uart_info { ptr @.str.102, i32 1, i32 84, i32 64, i32 63, i32 0, i32 64, i32 16128, i32 8, i32 16384, i32 4, i32 4, i32 3072, i32 10, i32 0, i8 -128 }, [32 x i8] zeroinitializer }, align 32
@.compoundliteral.103 = internal global { %struct.s3c2410_uartcfg, [36 x i8] } { %struct.s3c2410_uartcfg { i8 0, i8 0, i16 0, i32 0, i32 0, i32 0, i32 901, i32 0, i32 17 }, [36 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Samsung S5PV210 UART\00", [43 x i8] zeroinitializer }, align 32
@.compoundliteral.105 = internal global { %struct.s3c24xx_uart_info, [32 x i8] } { %struct.s3c24xx_uart_info { ptr @.str.104, i32 1, i32 84, i32 0, i32 255, i32 0, i32 256, i32 16711680, i32 16, i32 16777216, i32 1, i32 2, i32 1024, i32 10, i32 0, i8 -128 }, [32 x i8] zeroinitializer }, align 32
@.compoundliteral.106 = internal global { %struct.s3c2410_uartcfg, [36 x i8] } { %struct.s3c2410_uartcfg { i8 0, i8 0, i16 0, i32 0, i32 0, i32 0, i32 965, i32 0, i32 273 }, [36 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Samsung Exynos UART\00", [44 x i8] zeroinitializer }, align 32
@.compoundliteral.108 = internal global { %struct.s3c24xx_uart_info, [32 x i8] } { %struct.s3c24xx_uart_info { ptr @.str.107, i32 1, i32 84, i32 0, i32 255, i32 0, i32 256, i32 16711680, i32 16, i32 16777216, i32 1, i32 1, i32 0, i32 0, i32 0, i8 -128 }, [32 x i8] zeroinitializer }, align 32
@.compoundliteral.109 = internal global { %struct.s3c2410_uartcfg, [36 x i8] } { %struct.s3c2410_uartcfg { i8 0, i8 0, i16 0, i32 0, i32 0, i32 1, i32 965, i32 0, i32 273 }, [36 x i8] zeroinitializer }, align 32
@.compoundliteral.110 = internal global { %struct.s3c24xx_uart_info, [32 x i8] } { %struct.s3c24xx_uart_info { ptr @.str.107, i32 1, i32 84, i32 0, i32 255, i32 0, i32 256, i32 16711680, i32 16, i32 16777216, i32 1, i32 1, i32 0, i32 0, i32 0, i8 -128 }, [32 x i8] zeroinitializer }, align 32
@.compoundliteral.111 = internal global { %struct.s3c2410_uartcfg, [36 x i8] } { %struct.s3c2410_uartcfg { i8 0, i8 0, i16 0, i32 0, i32 0, i32 1, i32 965, i32 0, i32 273 }, [36 x i8] zeroinitializer }, align 32
@.compoundliteral.112 = internal global { %struct.s3c24xx_uart_info, [32 x i8] } { %struct.s3c24xx_uart_info { ptr @.str.107, i32 1, i32 84, i32 0, i32 255, i32 0, i32 256, i32 16711680, i32 16, i32 16777216, i32 1, i32 1, i32 0, i32 0, i32 0, i8 -128 }, [32 x i8] zeroinitializer }, align 32
@.compoundliteral.113 = internal global { %struct.s3c2410_uartcfg, [36 x i8] } { %struct.s3c2410_uartcfg { i8 0, i8 0, i16 0, i32 0, i32 0, i32 1, i32 965, i32 0, i32 273 }, [36 x i8] zeroinitializer }, align 32
@s3c24xx_serial_resume_noirq._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.114, ptr @.str.115, ptr @.str.4, i32 2362, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.114 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"clk_enable clk failed: %d\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.115 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"s3c24xx_serial_resume_noirq\00", [36 x i8] zeroinitializer }, align 32
@s3c24xx_serial_resume_noirq._entry_ptr = internal global ptr @s3c24xx_serial_resume_noirq._entry, section ".printk_index", align 4
@s3c24xx_serial_resume_noirq._entry.116 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.117, ptr @.str.115, ptr @.str.4, i32 2368, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.117 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"clk_enable baudclk failed: %d\0A\00", [33 x i8] zeroinitializer }, align 32
@s3c24xx_serial_resume_noirq._entry_ptr.118 = internal global ptr @s3c24xx_serial_resume_noirq._entry.116, section ".printk_index", align 4
@s3c2410_early_console_data = internal global { %struct.samsung_early_console_data, [28 x i8] } { %struct.samsung_early_console_data { i32 512 }, [28 x i8] zeroinitializer }, align 32
@s3c2440_early_console_data = internal global { %struct.samsung_early_console_data, [28 x i8] } { %struct.samsung_early_console_data { i32 16384 }, [28 x i8] zeroinitializer }, align 32
@s5pv210_early_console_data = internal global { %struct.samsung_early_console_data, [28 x i8] } { %struct.samsung_early_console_data { i32 16777216 }, [28 x i8] zeroinitializer }, align 32
@switch.table.s3c24xx_serial_probe = internal constant { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @s3c24xx_serial_ops, ptr @s3c64xx_serial_ops, ptr @apple_s5l_serial_ops], [20 x i8] zeroinitializer }, align 32
@switch.table.s3c24xx_serial_type = internal constant { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @.str.60, ptr @.str.61, ptr @.str.62], [20 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 4]
@__sancov_gen_cov_switch_values.119 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.120 = internal global [4 x i64] [i64 2, i64 8, i64 2, i64 3]
@__sancov_gen_cov_switch_values.121 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.122 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.123 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.124 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 3]
@__sancov_gen_cov_switch_values.125 = internal global [4 x i64] [i64 2, i64 8, i64 2, i64 3]
@__sancov_gen_cov_switch_values.126 = internal global [4 x i64] [i64 2, i64 8, i64 2, i64 3]
@__sancov_gen_cov_switch_values.127 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.128 = internal global [4 x i64] [i64 2, i64 8, i64 2, i64 3]
@__sancov_gen_cov_switch_values.129 = internal global [4 x i64] [i64 2, i64 8, i64 2, i64 3]
@__sancov_gen_cov_switch_values.130 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.131 = internal global [4 x i64] [i64 2, i64 8, i64 2, i64 3]
@__sancov_gen_cov_switch_values.132 = internal global [4 x i64] [i64 2, i64 8, i64 2, i64 3]
@__sancov_gen_cov_switch_values.133 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.134 = internal global [4 x i64] [i64 2, i64 8, i64 2, i64 3]
@___asan_gen_.135 = private unnamed_addr constant [22 x i8] c"samsung_serial_driver\00", align 1
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.536, i32 2898, i32 31 }
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.536, i32 2903, i32 11 }
@___asan_gen_.141 = private unnamed_addr constant [22 x i8] c"s3c24xx_uart_dt_match\00", align 1
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.536, i32 2874, i32 34 }
@___asan_gen_.144 = private unnamed_addr constant [22 x i8] c"s3c24xx_serial_pm_ops\00", align 1
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.536, i32 2401, i32 32 }
@___asan_gen_.147 = private unnamed_addr constant [26 x i8] c"s3c24xx_serial_driver_ids\00", align 1
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.536, i32 2840, i32 40 }
@___asan_gen_.150 = private unnamed_addr constant [12 x i8] c"probe_index\00", align 1
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.536, i32 2157, i32 12 }
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.536, i32 2182, i32 29 }
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.536, i32 2188, i32 3 }
@___asan_gen_.174 = private unnamed_addr constant [21 x i8] c"s3c24xx_serial_ports\00", align 1
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.536, i32 1818, i32 1 }
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.536, i32 2195, i32 3 }
@___asan_gen_.183 = private unnamed_addr constant [19 x i8] c"s3c24xx_serial_ops\00", align 1
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.536, i32 1742, i32 30 }
@___asan_gen_.186 = private unnamed_addr constant [19 x i8] c"s3c64xx_serial_ops\00", align 1
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.536, i32 1763, i32 30 }
@___asan_gen_.189 = private unnamed_addr constant [21 x i8] c"apple_s5l_serial_ops\00", align 1
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.536, i32 1784, i32 30 }
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.536, i32 2219, i32 4 }
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.536, i32 2221, i32 32 }
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.536, i32 2230, i32 5 }
@___asan_gen_.212 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.536, i32 2250, i32 2 }
@___asan_gen_.213 = private unnamed_addr constant [17 x i8] c"s3c24xx_uart_drv\00", align 1
@___asan_gen_.215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.536, i32 1805, i32 27 }
@___asan_gen_.221 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.536, i32 2259, i32 4 }
@___asan_gen_.224 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.536, i32 2264, i32 2 }
@___asan_gen_.230 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.536, i32 2279, i32 3 }
@___asan_gen_.233 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.536, i32 1821, i32 13 }
@___asan_gen_.236 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.536, i32 1832, i32 13 }
@___asan_gen_.239 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.536, i32 1844, i32 13 }
@___asan_gen_.242 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.536, i32 1857, i32 13 }
@___asan_gen_.251 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.536, i32 456, i32 3 }
@___asan_gen_.257 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.536, i32 547, i32 3 }
@___asan_gen_.266 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.536, i32 526, i32 3 }
@___asan_gen_.272 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.536, i32 533, i32 3 }
@___asan_gen_.281 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.536, i32 1244, i32 3 }
@___asan_gen_.284 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.536, i32 1250, i32 2 }
@___asan_gen_.287 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.536, i32 1258, i32 3 }
@___asan_gen_.296 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.536, i32 649, i32 3 }
@___asan_gen_.302 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.536, i32 809, i32 4 }
@___asan_gen_.305 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.536, i32 815, i32 5 }
@___asan_gen_.311 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.536, i32 1572, i32 4 }
@___asan_gen_.312 = private unnamed_addr constant [15 x i8] c"udivslot_table\00", align 1
@___asan_gen_.314 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.536, i32 1502, i32 12 }
@___asan_gen_.317 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.536, i32 1575, i32 4 }
@___asan_gen_.320 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.536, i32 1582, i32 3 }
@___asan_gen_.323 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.536, i32 1586, i32 3 }
@___asan_gen_.326 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.536, i32 1590, i32 3 }
@___asan_gen_.329 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.536, i32 1595, i32 3 }
@___asan_gen_.332 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.536, i32 1617, i32 2 }
@___asan_gen_.335 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.536, i32 1640, i32 2 }
@___asan_gen_.338 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.536, i32 1454, i32 20 }
@___asan_gen_.347 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.536, i32 1387, i32 3 }
@___asan_gen_.350 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.536, i32 1682, i32 10 }
@___asan_gen_.353 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.536, i32 1684, i32 10 }
@___asan_gen_.356 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.536, i32 1686, i32 10 }
@___asan_gen_.362 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.536, i32 1294, i32 3 }
@___asan_gen_.365 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.536, i32 1064, i32 47 }
@___asan_gen_.368 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.536, i32 1067, i32 12 }
@___asan_gen_.371 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.536, i32 1075, i32 12 }
@___asan_gen_.374 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.536, i32 1082, i32 47 }
@___asan_gen_.377 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.536, i32 1084, i32 12 }
@___asan_gen_.380 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.536, i32 1092, i32 12 }
@___asan_gen_.383 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.536, i32 1111, i32 12 }
@___asan_gen_.386 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.536, i32 1121, i32 12 }
@___asan_gen_.395 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.536, i32 1139, i32 3 }
@___asan_gen_.400 = private unnamed_addr constant [31 x i8] c"../include/linux/dma-mapping.h\00", align 1
@___asan_gen_.401 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.400, i32 326, i32 6 }
@___asan_gen_.407 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.536, i32 1332, i32 3 }
@___asan_gen_.413 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.536, i32 2040, i32 3 }
@___asan_gen_.419 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.536, i32 2048, i32 3 }
@___asan_gen_.422 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.536, i32 2052, i32 2 }
@___asan_gen_.428 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.536, i32 2056, i32 3 }
@___asan_gen_.431 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.536, i32 2085, i32 12 }
@___asan_gen_.434 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.536, i32 2095, i32 40 }
@___asan_gen_.440 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.536, i32 2097, i32 3 }
@___asan_gen_.446 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.536, i32 2105, i32 3 }
@___asan_gen_.452 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.536, i32 2112, i32 3 }
@___asan_gen_.455 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.536, i32 2137, i32 2 }
@___asan_gen_.458 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.536, i32 1807, i32 17 }
@___asan_gen_.461 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.536, i32 1810, i32 14 }
@___asan_gen_.462 = private unnamed_addr constant [23 x i8] c"s3c24xx_serial_console\00", align 1
@___asan_gen_.464 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.536, i32 2606, i32 23 }
@___asan_gen_.465 = private unnamed_addr constant [10 x i8] c"cons_uart\00", align 1
@___asan_gen_.467 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.536, i32 2417, i32 26 }
@___asan_gen_.473 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.536, i32 2601, i32 2 }
@___asan_gen_.479 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.536, i32 2563, i32 3 }
@___asan_gen_.480 = private unnamed_addr constant [24 x i8] c"s3c6400_serial_drv_data\00", align 1
@___asan_gen_.482 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.536, i32 2706, i32 39 }
@___asan_gen_.483 = private unnamed_addr constant [24 x i8] c"s5pv210_serial_drv_data\00", align 1
@___asan_gen_.485 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.536, i32 2735, i32 39 }
@___asan_gen_.486 = private unnamed_addr constant [27 x i8] c"exynos4210_serial_drv_data\00", align 1
@___asan_gen_.488 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.536, i32 2787, i32 39 }
@___asan_gen_.489 = private unnamed_addr constant [27 x i8] c"exynos5433_serial_drv_data\00", align 1
@___asan_gen_.491 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.536, i32 2792, i32 39 }
@___asan_gen_.492 = private unnamed_addr constant [26 x i8] c"exynos850_serial_drv_data\00", align 1
@___asan_gen_.494 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.536, i32 2797, i32 39 }
@___asan_gen_.497 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.536, i32 2708, i32 12 }
@___asan_gen_.498 = private unnamed_addr constant [17 x i8] c".compoundliteral\00", align 1
@___asan_gen_.499 = private unnamed_addr constant [21 x i8] c".compoundliteral.103\00", align 1
@___asan_gen_.502 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.536, i32 2737, i32 12 }
@___asan_gen_.503 = private unnamed_addr constant [21 x i8] c".compoundliteral.105\00", align 1
@___asan_gen_.504 = private unnamed_addr constant [21 x i8] c".compoundliteral.106\00", align 1
@___asan_gen_.507 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.536, i32 2788, i32 2 }
@___asan_gen_.508 = private unnamed_addr constant [21 x i8] c".compoundliteral.108\00", align 1
@___asan_gen_.509 = private unnamed_addr constant [21 x i8] c".compoundliteral.109\00", align 1
@___asan_gen_.510 = private unnamed_addr constant [21 x i8] c".compoundliteral.110\00", align 1
@___asan_gen_.511 = private unnamed_addr constant [21 x i8] c".compoundliteral.111\00", align 1
@___asan_gen_.512 = private unnamed_addr constant [21 x i8] c".compoundliteral.112\00", align 1
@___asan_gen_.513 = private unnamed_addr constant [21 x i8] c".compoundliteral.113\00", align 1
@___asan_gen_.522 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.536, i32 2362, i32 5 }
@___asan_gen_.523 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.526 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.528 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.536, i32 2368, i32 6 }
@___asan_gen_.529 = private unnamed_addr constant [27 x i8] c"s3c2410_early_console_data\00", align 1
@___asan_gen_.531 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.536, i32 2997, i32 42 }
@___asan_gen_.532 = private unnamed_addr constant [27 x i8] c"s3c2440_early_console_data\00", align 1
@___asan_gen_.534 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.536, i32 3012, i32 42 }
@___asan_gen_.535 = private unnamed_addr constant [27 x i8] c"s5pv210_early_console_data\00", align 1
@___asan_gen_.536 = private constant [36 x i8] c"../drivers/tty/serial/samsung_tty.c\00", align 1
@___asan_gen_.537 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.536, i32 3031, i32 42 }
@___asan_gen_.538 = private unnamed_addr constant [34 x i8] c"switch.table.s3c24xx_serial_probe\00", align 1
@___asan_gen_.539 = private unnamed_addr constant [33 x i8] c"switch.table.s3c24xx_serial_type\00", align 1
@llvm.compiler.used = appending global [180 x ptr] [ptr @__UNIQUE_ID___earlycon_exynos4210275, ptr @__UNIQUE_ID___earlycon_s3c2410270, ptr @__UNIQUE_ID___earlycon_s3c2412271, ptr @__UNIQUE_ID___earlycon_s3c2440272, ptr @__UNIQUE_ID___earlycon_s3c6400273, ptr @__UNIQUE_ID___earlycon_s5l276, ptr @__UNIQUE_ID___earlycon_s5pv210274, ptr @__UNIQUE_ID_alias277, ptr @__UNIQUE_ID_author279, ptr @__UNIQUE_ID_description278, ptr @__UNIQUE_ID_file280, ptr @__UNIQUE_ID_license281, ptr @__exitcall_samsung_serial_exit, ptr @__initcall__kmod_samsung_tty__269_2930_samsung_serial_init6, ptr @apple_s5l_serial_startup._entry, ptr @apple_s5l_serial_startup._entry_ptr, ptr @s3c24xx_serial_init_port._entry, ptr @s3c24xx_serial_init_port._entry.81, ptr @s3c24xx_serial_init_port._entry.86, ptr @s3c24xx_serial_init_port._entry.89, ptr @s3c24xx_serial_init_port._entry.92, ptr @s3c24xx_serial_init_port._entry_ptr, ptr @s3c24xx_serial_init_port._entry_ptr.83, ptr @s3c24xx_serial_init_port._entry_ptr.88, ptr @s3c24xx_serial_init_port._entry_ptr.91, ptr @s3c24xx_serial_init_port._entry_ptr.94, ptr @s3c24xx_serial_pm._entry, ptr @s3c24xx_serial_pm._entry_ptr, ptr @s3c24xx_serial_probe._entry, ptr @s3c24xx_serial_probe._entry.12, ptr @s3c24xx_serial_probe._entry.18, ptr @s3c24xx_serial_probe._entry.22, ptr @s3c24xx_serial_probe._entry.7, ptr @s3c24xx_serial_probe._entry_ptr, ptr @s3c24xx_serial_probe._entry_ptr.15, ptr @s3c24xx_serial_probe._entry_ptr.20, ptr @s3c24xx_serial_probe._entry_ptr.24, ptr @s3c24xx_serial_probe._entry_ptr.9, ptr @s3c24xx_serial_request_dma._entry, ptr @s3c24xx_serial_request_dma._entry_ptr, ptr @s3c24xx_serial_resume_noirq._entry, ptr @s3c24xx_serial_resume_noirq._entry.116, ptr @s3c24xx_serial_resume_noirq._entry_ptr, ptr @s3c24xx_serial_resume_noirq._entry_ptr.118, ptr @s3c24xx_serial_start_tx_dma._entry, ptr @s3c24xx_serial_start_tx_dma._entry_ptr, ptr @s3c24xx_serial_startup._entry, ptr @s3c24xx_serial_startup._entry.41, ptr @s3c24xx_serial_startup._entry_ptr, ptr @s3c24xx_serial_startup._entry_ptr.42, ptr @s3c24xx_uart_copy_rx_to_tty._entry, ptr @s3c24xx_uart_copy_rx_to_tty._entry.35, ptr @s3c24xx_uart_copy_rx_to_tty._entry_ptr, ptr @s3c24xx_uart_copy_rx_to_tty._entry_ptr.37, ptr @s3c64xx_serial_startup._entry, ptr @s3c64xx_serial_startup._entry_ptr, ptr @s3c64xx_start_rx_dma._entry, ptr @s3c64xx_start_rx_dma._entry_ptr, ptr @samsung_serial_exit, ptr @samsung_serial_driver, ptr @.str, ptr @s3c24xx_uart_dt_match, ptr @s3c24xx_serial_pm_ops, ptr @s3c24xx_serial_driver_ids, ptr @probe_index, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @s3c24xx_serial_ports, ptr @.str.8, ptr @s3c24xx_serial_ops, ptr @s3c64xx_serial_ops, ptr @apple_s5l_serial_ops, ptr @.str.10, ptr @.str.11, ptr @.str.13, ptr @.str.14, ptr @.str.16, ptr @.str.17, ptr @s3c24xx_uart_drv, ptr @.str.19, ptr @.str.21, ptr @.str.23, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.36, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @udivslot_table, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.82, ptr @.str.84, ptr @.str.85, ptr @.str.87, ptr @.str.90, ptr @.str.93, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @s3c24xx_serial_console, ptr @cons_uart, ptr @.str.98, ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @s3c6400_serial_drv_data, ptr @s5pv210_serial_drv_data, ptr @exynos4210_serial_drv_data, ptr @exynos5433_serial_drv_data, ptr @exynos850_serial_drv_data, ptr @.str.102, ptr @.compoundliteral, ptr @.compoundliteral.103, ptr @.str.104, ptr @.compoundliteral.105, ptr @.compoundliteral.106, ptr @.str.107, ptr @.compoundliteral.108, ptr @.compoundliteral.109, ptr @.compoundliteral.110, ptr @.compoundliteral.111, ptr @.compoundliteral.112, ptr @.compoundliteral.113, ptr @.str.114, ptr @.str.115, ptr @.str.117, ptr @s3c2410_early_console_data, ptr @s3c2440_early_console_data, ptr @s5pv210_early_console_data, ptr @switch.table.s3c24xx_serial_probe, ptr @switch.table.s3c24xx_serial_type], section "llvm.metadata"
@0 = internal global [143 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @samsung_serial_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s3c24xx_uart_dt_match to i32), i32 1960, i32 2464, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s3c24xx_serial_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s3c24xx_serial_driver_ids to i32), i32 240, i32 288, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @probe_index to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s3c24xx_serial_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s3c24xx_serial_ports to i32), i32 1680, i32 2112, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s3c24xx_serial_probe._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s3c24xx_serial_ops to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s3c64xx_serial_ops to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @apple_s5l_serial_ops to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s3c24xx_serial_probe._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s3c24xx_uart_drv to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s3c24xx_serial_probe._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s3c24xx_serial_probe._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s3c24xx_serial_start_tx_dma._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s3c24xx_uart_copy_rx_to_tty._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s3c24xx_uart_copy_rx_to_tty._entry.35 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s3c24xx_serial_startup._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s3c24xx_serial_startup._entry.41 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s3c64xx_start_rx_dma._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @udivslot_table to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s3c24xx_serial_pm._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s3c64xx_serial_startup._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s3c24xx_serial_request_dma._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @apple_s5l_serial_startup._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s3c24xx_serial_init_port._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s3c24xx_serial_init_port._entry.81 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s3c24xx_serial_init_port._entry.86 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s3c24xx_serial_init_port._entry.89 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s3c24xx_serial_init_port._entry.92 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s3c24xx_serial_console to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cons_uart to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s3c6400_serial_drv_data to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5pv210_serial_drv_data to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @exynos4210_serial_drv_data to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @exynos5433_serial_drv_data to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @exynos850_serial_drv_data to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.103 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.105 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.106 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.108 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.109 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.110 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.111 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.112 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.113 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s3c24xx_serial_resume_noirq._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s3c24xx_serial_resume_noirq._entry.116 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s3c2410_early_console_data to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s3c2440_early_console_data to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5pv210_early_console_data to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.s3c24xx_serial_probe to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.s3c24xx_serial_type to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @samsung_serial_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @platform_driver_unregister(ptr noundef nonnull @samsung_serial_driver) #12
  %0 = load i16, ptr getelementptr inbounds (%struct.console, ptr @s3c24xx_serial_console, i32 0, i32 8), align 4
  %1 = and i16 %0, 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %1)
  %tobool.not.i = icmp eq i16 %1, 0
  br i1 %tobool.not.i, label %entry.s3c24xx_serial_unregister_console.exit_crit_edge, label %if.then.i

entry.s3c24xx_serial_unregister_console.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %s3c24xx_serial_unregister_console.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %call.i = tail call i32 @unregister_console(ptr noundef nonnull @s3c24xx_serial_console) #12
  br label %s3c24xx_serial_unregister_console.exit

s3c24xx_serial_unregister_console.exit:           ; preds = %if.then.i, %entry.s3c24xx_serial_unregister_console.exit_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @samsung_serial_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @register_console(ptr noundef nonnull @s3c24xx_serial_console) #12
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @samsung_serial_driver, ptr noundef null) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.then

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then:                                          ; preds = %entry
  %0 = load i16, ptr getelementptr inbounds (%struct.console, ptr @s3c24xx_serial_console, i32 0, i32 8), align 4
  %1 = and i16 %0, 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %1)
  %tobool.not.i = icmp eq i16 %1, 0
  br i1 %tobool.not.i, label %if.then.cleanup_crit_edge, label %if.then.i

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  %call.i = tail call i32 @unregister_console(ptr noundef nonnull @s3c24xx_serial_console) #12
  br label %cleanup

cleanup:                                          ; preds = %if.then.i, %if.then.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret i32 %call
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind null_pointer_is_valid optsize sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @s3c2410_early_console_setup(ptr nocapture noundef %device, ptr nocapture noundef readnone %opt) #2 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.earlycon_device, ptr %device, i32 0, i32 1, i32 59
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr @s3c2410_early_console_data, ptr %private_data, align 4
  %membase.i = getelementptr inbounds %struct.earlycon_device, ptr %device, i32 0, i32 1, i32 2
  %1 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %membase.i, align 4
  %tobool.not.i = icmp eq ptr %2, null
  br i1 %tobool.not.i, label %entry.samsung_early_console_setup.exit_crit_edge, label %if.end.i

entry.samsung_early_console_setup.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %samsung_early_console_setup.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %3 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %device, align 4
  %write.i = getelementptr inbounds %struct.console, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %write.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @samsung_early_write, ptr %write.i, align 4
  br label %samsung_early_console_setup.exit

samsung_early_console_setup.exit:                 ; preds = %if.end.i, %entry.samsung_early_console_setup.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %if.end.i ], [ -19, %entry.samsung_early_console_setup.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind null_pointer_is_valid optsize sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @s3c2440_early_console_setup(ptr nocapture noundef %device, ptr nocapture noundef readnone %opt) #2 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.earlycon_device, ptr %device, i32 0, i32 1, i32 59
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr @s3c2440_early_console_data, ptr %private_data, align 4
  %membase.i = getelementptr inbounds %struct.earlycon_device, ptr %device, i32 0, i32 1, i32 2
  %1 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %membase.i, align 4
  %tobool.not.i = icmp eq ptr %2, null
  br i1 %tobool.not.i, label %entry.samsung_early_console_setup.exit_crit_edge, label %if.end.i

entry.samsung_early_console_setup.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %samsung_early_console_setup.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %3 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %device, align 4
  %write.i = getelementptr inbounds %struct.console, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %write.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @samsung_early_write, ptr %write.i, align 4
  br label %samsung_early_console_setup.exit

samsung_early_console_setup.exit:                 ; preds = %if.end.i, %entry.samsung_early_console_setup.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %if.end.i ], [ -19, %entry.samsung_early_console_setup.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind null_pointer_is_valid optsize sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @s5pv210_early_console_setup(ptr nocapture noundef %device, ptr nocapture noundef readnone %opt) #2 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.earlycon_device, ptr %device, i32 0, i32 1, i32 59
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr @s5pv210_early_console_data, ptr %private_data, align 4
  %membase.i = getelementptr inbounds %struct.earlycon_device, ptr %device, i32 0, i32 1, i32 2
  %1 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %membase.i, align 4
  %tobool.not.i = icmp eq ptr %2, null
  br i1 %tobool.not.i, label %entry.samsung_early_console_setup.exit_crit_edge, label %if.end.i

entry.samsung_early_console_setup.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %samsung_early_console_setup.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %3 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %device, align 4
  %write.i = getelementptr inbounds %struct.console, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %write.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @samsung_early_write, ptr %write.i, align 4
  br label %samsung_early_console_setup.exit

samsung_early_console_setup.exit:                 ; preds = %if.end.i, %entry.samsung_early_console_setup.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %if.end.i ], [ -19, %entry.samsung_early_console_setup.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind null_pointer_is_valid optsize sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @apple_s5l_early_console_setup(ptr nocapture noundef %device, ptr nocapture noundef readnone %opt) #2 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.earlycon_device, ptr %device, i32 0, i32 1, i32 59
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr @s3c2410_early_console_data, ptr %private_data, align 4
  %membase.i = getelementptr inbounds %struct.earlycon_device, ptr %device, i32 0, i32 1, i32 2
  %1 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %membase.i, align 4
  %tobool.not.i = icmp eq ptr %2, null
  br i1 %tobool.not.i, label %entry.samsung_early_console_setup.exit_crit_edge, label %if.end.i

entry.samsung_early_console_setup.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %samsung_early_console_setup.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %3 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %device, align 4
  %write.i = getelementptr inbounds %struct.console, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %write.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @samsung_early_write, ptr %write.i, align 4
  br label %samsung_early_console_setup.exit

samsung_early_console_setup.exit:                 ; preds = %if.end.i, %entry.samsung_early_console_setup.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %if.end.i ], [ -19, %entry.samsung_early_console_setup.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @s3c24xx_serial_probe(ptr noundef %pdev) #3 align 64 {
entry:
  %prop = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 8
  %2 = load i32, ptr @probe_index, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %prop) #12
  %3 = ptrtoint ptr %prop to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %prop, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end2_crit_edge, label %if.then

entry.if.end2_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end2

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %call = tail call i32 @of_alias_get_id(ptr noundef nonnull %1, ptr noundef nonnull @.str.1) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp212 = icmp slt i32 %call, 0
  %spec.select = select i1 %cmp212, i32 %2, i32 %call
  br label %if.end2

if.end2:                                          ; preds = %if.then, %entry.if.end2_crit_edge
  %index.0 = phi i32 [ %2, %entry.if.end2_crit_edge ], [ %spec.select, %if.then ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %index.0)
  %cmp3 = icmp ugt i32 %index.0, 3
  br i1 %cmp3, label %do.end, label %if.end6

do.end:                                           ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.2, i32 noundef %index.0) #15
  br label %cleanup

if.end6:                                          ; preds = %if.end2
  %arrayidx = getelementptr [4 x %struct.s3c24xx_uart_port], ptr @s3c24xx_serial_ports, i32 0, i32 %index.0
  %4 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %of_node, align 8
  %tobool.not.i = icmp eq ptr %5, null
  br i1 %tobool.not.i, label %if.end.i, label %if.then.i

if.then.i:                                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #14
  %call.i = tail call ptr @of_match_node(ptr noundef nonnull @s3c24xx_uart_dt_match, ptr noundef nonnull %5) #12
  %data.i = getelementptr inbounds %struct.of_device_id, ptr %call.i, i32 0, i32 3
  %6 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %data.i, align 4
  br label %s3c24xx_get_driver_data.exit

if.end.i:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #14
  %id_entry.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 8
  %8 = ptrtoint ptr %id_entry.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %id_entry.i, align 4
  %driver_data.i = getelementptr inbounds %struct.platform_device_id, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %driver_data.i, align 4
  %12 = inttoptr i32 %11 to ptr
  br label %s3c24xx_get_driver_data.exit

s3c24xx_get_driver_data.exit:                     ; preds = %if.end.i, %if.then.i
  %retval.0.i207 = phi ptr [ %7, %if.then.i ], [ %12, %if.end.i ]
  %drv_data = getelementptr [4 x %struct.s3c24xx_uart_port], ptr @s3c24xx_serial_ports, i32 0, i32 %index.0, i32 16
  %13 = ptrtoint ptr %drv_data to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %retval.0.i207, ptr %drv_data, align 4
  %tobool9.not = icmp eq ptr %retval.0.i207, null
  br i1 %tobool9.not, label %do.end13, label %if.end15

do.end13:                                         ; preds = %s3c24xx_get_driver_data.exit
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.8) #15
  br label %cleanup

if.end15:                                         ; preds = %s3c24xx_get_driver_data.exit
  %baudclk = getelementptr [4 x %struct.s3c24xx_uart_port], ptr @s3c24xx_serial_ports, i32 0, i32 %index.0, i32 14
  %14 = ptrtoint ptr %baudclk to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr inttoptr (i32 -22 to ptr), ptr %baudclk, align 4
  %15 = ptrtoint ptr %retval.0.i207 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %retval.0.i207, align 4
  %info18 = getelementptr [4 x %struct.s3c24xx_uart_port], ptr @s3c24xx_serial_ports, i32 0, i32 %index.0, i32 12
  %17 = ptrtoint ptr %info18 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %16, ptr %info18, align 4
  %platform_data.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 7
  %18 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %platform_data.i, align 8
  %tobool21.not = icmp eq ptr %19, null
  br i1 %tobool21.not, label %cond.false, label %if.end15.cond.end_crit_edge

if.end15.cond.end_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.end

cond.false:                                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #14
  %def_cfg = getelementptr inbounds %struct.s3c24xx_serial_drv_data, ptr %retval.0.i207, i32 0, i32 1
  %20 = ptrtoint ptr %def_cfg to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %def_cfg, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %if.end15.cond.end_crit_edge
  %cond = phi ptr [ %21, %cond.false ], [ %19, %if.end15.cond.end_crit_edge ]
  %cfg = getelementptr [4 x %struct.s3c24xx_uart_port], ptr @s3c24xx_serial_ports, i32 0, i32 %index.0, i32 17
  %22 = ptrtoint ptr %cfg to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %cond, ptr %cfg, align 4
  %type = getelementptr inbounds %struct.s3c24xx_uart_info, ptr %16, i32 0, i32 1
  %23 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %24)
  %25 = icmp ult i32 %24, 3
  br i1 %25, label %switch.lookup, label %cond.end.sw.epilog_crit_edge

cond.end.sw.epilog_crit_edge:                     ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

switch.lookup:                                    ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #14
  %switch.gep = getelementptr inbounds [3 x ptr], ptr @switch.table.s3c24xx_serial_probe, i32 0, i32 %24
  %26 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %26)
  %switch.load = load ptr, ptr %switch.gep, align 4
  %ops31 = getelementptr [4 x %struct.s3c24xx_uart_port], ptr @s3c24xx_serial_ports, i32 0, i32 %index.0, i32 15, i32 39
  %27 = ptrtoint ptr %ops31 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %switch.load, ptr %ops31, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %switch.lookup, %cond.end.sw.epilog_crit_edge
  br i1 %tobool.not, label %sw.epilog.if.end50_crit_edge, label %if.then33

sw.epilog.if.end50_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end50

if.then33:                                        ; preds = %sw.epilog
  %fifosize = getelementptr [4 x %struct.s3c24xx_uart_port], ptr @s3c24xx_serial_ports, i32 0, i32 %index.0, i32 15, i32 23
  %call.i.i = tail call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %1, ptr noundef nonnull @.str.10, ptr noundef %fifosize, i32 noundef 1, i32 noundef 0) #12
  %call.i.i209 = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %1, ptr noundef nonnull @.str.11, ptr noundef nonnull %prop, i32 noundef 1, i32 noundef 0) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i209)
  %cmp37 = icmp sgt i32 %call.i.i209, -1
  br i1 %cmp37, label %if.then38, label %if.then33.if.end50_crit_edge

if.then33.if.end50_crit_edge:                     ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end50

if.then38:                                        ; preds = %if.then33
  %28 = ptrtoint ptr %prop to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %prop, align 4
  %30 = zext i32 %29 to i64
  call void @__sanitizer_cov_trace_switch(i64 %30, ptr @__sancov_gen_cov_switch_values)
  switch i32 %29, label %do.end46 [
    i32 1, label %if.then38.if.end50.sink.split_crit_edge
    i32 4, label %sw.bb41
  ]

if.then38.if.end50.sink.split_crit_edge:          ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end50.sink.split

sw.bb41:                                          ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end50.sink.split

do.end46:                                         ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.13, i32 noundef %29) #15
  br label %cleanup

if.end50.sink.split:                              ; preds = %sw.bb41, %if.then38.if.end50.sink.split_crit_edge
  %.sink = phi i8 [ 3, %sw.bb41 ], [ 2, %if.then38.if.end50.sink.split_crit_edge ]
  %iotype43 = getelementptr [4 x %struct.s3c24xx_uart_port], ptr @s3c24xx_serial_ports, i32 0, i32 %index.0, i32 15, i32 26
  %31 = ptrtoint ptr %iotype43 to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 %.sink, ptr %iotype43, align 2
  br label %if.end50

if.end50:                                         ; preds = %if.end50.sink.split, %if.then33.if.end50_crit_edge, %sw.epilog.if.end50_crit_edge
  %32 = ptrtoint ptr %drv_data to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %drv_data, align 4
  %arrayidx53 = getelementptr %struct.s3c24xx_serial_drv_data, ptr %33, i32 0, i32 2, i32 %index.0
  %34 = ptrtoint ptr %arrayidx53 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %arrayidx53, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %tobool54.not = icmp eq i32 %35, 0
  br i1 %tobool54.not, label %if.else, label %if.end50.if.end70.sink.split_crit_edge

if.end50.if.end70.sink.split_crit_edge:           ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end70.sink.split

if.else:                                          ; preds = %if.end50
  %36 = ptrtoint ptr %info18 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %info18, align 4
  %fifosize62 = getelementptr inbounds %struct.s3c24xx_uart_info, ptr %37, i32 0, i32 3
  %38 = ptrtoint ptr %fifosize62 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %fifosize62, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %tobool63.not = icmp eq i32 %39, 0
  br i1 %tobool63.not, label %if.else.if.end70_crit_edge, label %if.else.if.end70.sink.split_crit_edge

if.else.if.end70.sink.split_crit_edge:            ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end70.sink.split

if.else.if.end70_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end70

if.end70.sink.split:                              ; preds = %if.else.if.end70.sink.split_crit_edge, %if.end50.if.end70.sink.split_crit_edge
  %.sink213 = phi i32 [ %35, %if.end50.if.end70.sink.split_crit_edge ], [ %39, %if.else.if.end70.sink.split_crit_edge ]
  %fifosize68 = getelementptr [4 x %struct.s3c24xx_uart_port], ptr @s3c24xx_serial_ports, i32 0, i32 %index.0, i32 15, i32 23
  %40 = ptrtoint ptr %fifosize68 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %.sink213, ptr %fifosize68, align 4
  br label %if.end70

if.end70:                                         ; preds = %if.end70.sink.split, %if.else.if.end70_crit_edge
  %port71 = getelementptr [4 x %struct.s3c24xx_uart_port], ptr @s3c24xx_serial_ports, i32 0, i32 %index.0, i32 15
  %has_sysrq = getelementptr [4 x %struct.s3c24xx_uart_port], ptr @s3c24xx_serial_ports, i32 0, i32 %index.0, i32 15, i32 48
  %41 = ptrtoint ptr %has_sysrq to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 1, ptr %has_sysrq, align 4
  %fifosize73 = getelementptr [4 x %struct.s3c24xx_uart_port], ptr @s3c24xx_serial_ports, i32 0, i32 %index.0, i32 15, i32 23
  %42 = ptrtoint ptr %fifosize73 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %fifosize73, align 4
  %44 = call i32 @llvm.smax.i32(i32 %43, i32 128)
  %min_dma_size = getelementptr [4 x %struct.s3c24xx_uart_port], ptr @s3c24xx_serial_ports, i32 0, i32 %index.0, i32 6
  %45 = ptrtoint ptr %min_dma_size to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %44, ptr %min_dma_size, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @s3c24xx_serial_probe.__UNIQUE_ID_ddebug265, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@s3c24xx_serial_probe, %if.then86)) #12
          to label %do.end90 [label %if.then86], !srcloc !299

if.then86:                                        ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @s3c24xx_serial_probe.__UNIQUE_ID_ddebug265, ptr noundef %dev, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.3, ptr noundef %arrayidx) #12
  br label %do.end90

do.end90:                                         ; preds = %if.then86, %if.end70
  %call91 = call fastcc i32 @s3c24xx_serial_init_port(ptr noundef %arrayidx, ptr noundef %pdev)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call91)
  %cmp92 = icmp slt i32 %call91, 0
  br i1 %cmp92, label %do.end90.cleanup_crit_edge, label %if.end94

do.end90.cleanup_crit_edge:                       ; preds = %do.end90
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end94:                                         ; preds = %do.end90
  %46 = load ptr, ptr getelementptr inbounds (%struct.uart_driver, ptr @s3c24xx_uart_drv, i32 0, i32 7), align 4
  %tobool95.not = icmp eq ptr %46, null
  br i1 %tobool95.not, label %if.then96, label %if.end94.do.body107_crit_edge

if.end94.do.body107_crit_edge:                    ; preds = %if.end94
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body107

if.then96:                                        ; preds = %if.end94
  %call97 = call i32 @uart_register_driver(ptr noundef nonnull @s3c24xx_uart_drv) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call97)
  %cmp98 = icmp slt i32 %call97, 0
  br i1 %cmp98, label %do.end102, label %if.then96.do.body107_crit_edge

if.then96.do.body107_crit_edge:                   ; preds = %if.then96
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body107

do.end102:                                        ; preds = %if.then96
  call void @__sanitizer_cov_trace_pc() #14
  %call104 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19) #15
  br label %cleanup

do.body107:                                       ; preds = %if.then96.do.body107_crit_edge, %if.end94.do.body107_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @s3c24xx_serial_probe.__UNIQUE_ID_ddebug266, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@s3c24xx_serial_probe, %if.then119)) #12
          to label %do.end123 [label %if.then119], !srcloc !299

if.then119:                                       ; preds = %do.body107
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @s3c24xx_serial_probe.__UNIQUE_ID_ddebug266, ptr noundef %dev, ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.3) #12
  br label %do.end123

do.end123:                                        ; preds = %if.then119, %do.body107
  %call125 = call i32 @uart_add_one_port(ptr noundef nonnull @s3c24xx_uart_drv, ptr noundef %port71) #12
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %47 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %port71, ptr %driver_data.i.i, align 4
  %clk = getelementptr [4 x %struct.s3c24xx_uart_port], ptr @s3c24xx_serial_ports, i32 0, i32 %index.0, i32 13
  %48 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %clk, align 4
  call void @clk_disable(ptr noundef %49) #12
  call void @clk_unprepare(ptr noundef %49) #12
  %50 = ptrtoint ptr %baudclk to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %baudclk, align 4
  %cmp.i = icmp ugt ptr %51, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end123.if.end131_crit_edge, label %if.then129

do.end123.if.end131_crit_edge:                    ; preds = %do.end123
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end131

if.then129:                                       ; preds = %do.end123
  call void @__sanitizer_cov_trace_pc() #14
  call void @clk_disable(ptr noundef %51) #12
  call void @clk_unprepare(ptr noundef %51) #12
  br label %if.end131

if.end131:                                        ; preds = %if.then129, %do.end123.if.end131_crit_edge
  %52 = load i32, ptr @probe_index, align 4
  %inc = add i32 %52, 1
  store i32 %inc, ptr @probe_index, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end131, %do.end102, %do.end90.cleanup_crit_edge, %do.end46, %do.end13, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ -22, %do.end46 ], [ 0, %if.end131 ], [ %call97, %do.end102 ], [ -19, %do.end13 ], [ %call91, %do.end90.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %prop) #12
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @s3c24xx_serial_remove(ptr nocapture noundef readonly %dev) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.platform_device, ptr %dev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %call3 = tail call i32 @uart_remove_one_port(ptr noundef nonnull @s3c24xx_uart_drv, ptr noundef nonnull %1) #12
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  tail call void @uart_unregister_driver(ptr noundef nonnull @s3c24xx_uart_drv) #12
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_alias_get_id(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @s3c24xx_serial_init_port(ptr noundef %ourport, ptr noundef %platdev) unnamed_addr #3 align 64 {
entry:
  %clk_name.i = alloca [15 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %cfg2 = getelementptr inbounds %struct.s3c24xx_uart_port, ptr %ourport, i32 0, i32 17
  %0 = ptrtoint ptr %cfg2 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cfg2, align 4
  %cmp = icmp eq ptr %platdev, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %mapbase = getelementptr inbounds %struct.s3c24xx_uart_port, ptr %ourport, i32 0, i32 15, i32 43
  %2 = ptrtoint ptr %mapbase to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %mapbase, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp3.not = icmp eq i32 %3, 0
  br i1 %cmp3.not, label %if.end5, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %dev = getelementptr inbounds %struct.platform_device, ptr %platdev, i32 0, i32 3
  %dev6 = getelementptr inbounds %struct.s3c24xx_uart_port, ptr %ourport, i32 0, i32 15, i32 45
  %4 = ptrtoint ptr %dev6 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %dev, ptr %dev6, align 4
  %uartclk = getelementptr inbounds %struct.s3c24xx_uart_port, ptr %ourport, i32 0, i32 15, i32 22
  %5 = ptrtoint ptr %uartclk to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 1, ptr %uartclk, align 4
  %uart_flags = getelementptr inbounds %struct.s3c2410_uartcfg, ptr %1, i32 0, i32 3
  %6 = ptrtoint ptr %uart_flags to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %uart_flags, align 4
  %and = and i32 %7, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end5.if.end14_crit_edge, label %do.body

if.end5.if.end14_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end14

do.body:                                          ; preds = %if.end5
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @s3c24xx_serial_init_port.__UNIQUE_ID_ddebug260, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@s3c24xx_serial_init_port, %if.then11)) #12
          to label %do.end [label %if.then11], !srcloc !299

if.then11:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  %8 = ptrtoint ptr %dev6 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev6, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @s3c24xx_serial_init_port.__UNIQUE_ID_ddebug260, ptr noundef %9, ptr noundef nonnull @.str.78) #12
  br label %do.end

do.end:                                           ; preds = %if.then11, %do.body
  %flags = getelementptr inbounds %struct.s3c24xx_uart_port, ptr %ourport, i32 0, i32 15, i32 33
  %10 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %flags, align 4
  %or = or i32 %11, 8388608
  store i32 %or, ptr %flags, align 4
  br label %if.end14

if.end14:                                         ; preds = %do.end, %if.end5.if.end14_crit_edge
  %call15 = tail call ptr @platform_get_resource(ptr noundef nonnull %platdev, i32 noundef 512, i32 noundef 0) #12
  %cmp16 = icmp eq ptr %call15, null
  br i1 %cmp16, label %do.end20, label %do.body23

do.end20:                                         ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #14
  %12 = ptrtoint ptr %dev6 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev6, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %13, ptr noundef nonnull @.str.79) #15
  br label %cleanup

do.body23:                                        ; preds = %if.end14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @s3c24xx_serial_init_port.__UNIQUE_ID_ddebug261, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@s3c24xx_serial_init_port, %if.then35)) #12
          to label %do.end39 [label %if.then35], !srcloc !299

if.then35:                                        ; preds = %do.body23
  call void @__sanitizer_cov_trace_pc() #14
  %14 = ptrtoint ptr %dev6 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev6, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @s3c24xx_serial_init_port.__UNIQUE_ID_ddebug261, ptr noundef %15, ptr noundef nonnull @.str.80, ptr noundef nonnull %call15) #12
  br label %do.end39

do.end39:                                         ; preds = %if.then35, %do.body23
  %16 = ptrtoint ptr %dev6 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev6, align 4
  %call41 = tail call ptr @devm_ioremap_resource(ptr noundef %17, ptr noundef nonnull %call15) #12
  %membase = getelementptr inbounds %struct.s3c24xx_uart_port, ptr %ourport, i32 0, i32 15, i32 2
  %18 = ptrtoint ptr %membase to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %call41, ptr %membase, align 4
  %cmp.i = icmp ugt ptr %call41, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end47, label %if.end49

do.end47:                                         ; preds = %do.end39
  call void @__sanitizer_cov_trace_pc() #14
  %19 = ptrtoint ptr %dev6 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dev6, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %20, ptr noundef nonnull @.str.82) #15
  br label %cleanup

if.end49:                                         ; preds = %do.end39
  %21 = ptrtoint ptr %call15 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %call15, align 4
  %23 = ptrtoint ptr %mapbase to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %mapbase, align 4
  %call51 = tail call i32 @platform_get_irq(ptr noundef nonnull %platdev, i32 noundef 0) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call51)
  %cmp52 = icmp slt i32 %call51, 0
  br i1 %cmp52, label %if.end49.if.end55_crit_edge, label %if.else

if.end49.if.end55_crit_edge:                      ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end55

if.else:                                          ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #14
  %rx_irq = getelementptr inbounds %struct.s3c24xx_uart_port, ptr %ourport, i32 0, i32 7
  %24 = ptrtoint ptr %rx_irq to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %call51, ptr %rx_irq, align 4
  %add = add nuw i32 %call51, 1
  %tx_irq = getelementptr inbounds %struct.s3c24xx_uart_port, ptr %ourport, i32 0, i32 8
  %25 = ptrtoint ptr %tx_irq to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %add, ptr %tx_irq, align 4
  br label %if.end55

if.end55:                                         ; preds = %if.else, %if.end49.if.end55_crit_edge
  %call51.sink = phi i32 [ %call51, %if.else ], [ 0, %if.end49.if.end55_crit_edge ]
  %26 = getelementptr inbounds %struct.s3c24xx_uart_port, ptr %ourport, i32 0, i32 15, i32 20
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %call51.sink, ptr %26, align 4
  %info = getelementptr %struct.s3c24xx_uart_port, ptr %ourport, i32 0, i32 12
  %28 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %info, align 4
  %type = getelementptr inbounds %struct.s3c24xx_uart_info, ptr %29, i32 0, i32 1
  %30 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %cond = icmp eq i32 %31, 0
  br i1 %cond, label %sw.bb, label %if.end55.sw.epilog_crit_edge

if.end55.sw.epilog_crit_edge:                     ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end55
  %call56 = tail call i32 @platform_get_irq(ptr noundef nonnull %platdev, i32 noundef 1) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call56)
  %cmp57 = icmp sgt i32 %call56, 0
  br i1 %cmp57, label %if.then58, label %sw.bb.sw.epilog_crit_edge

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

if.then58:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #14
  %tx_irq59 = getelementptr inbounds %struct.s3c24xx_uart_port, ptr %ourport, i32 0, i32 8
  %32 = ptrtoint ptr %tx_irq59 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %call56, ptr %tx_irq59, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then58, %sw.bb.sw.epilog_crit_edge, %if.end55.sw.epilog_crit_edge
  %of_node = getelementptr inbounds %struct.platform_device, ptr %platdev, i32 0, i32 3, i32 27
  %33 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %of_node, align 8
  %tobool62.not = icmp eq ptr %34, null
  br i1 %tobool62.not, label %sw.epilog.if.end74_crit_edge, label %land.lhs.true

sw.epilog.if.end74_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end74

land.lhs.true:                                    ; preds = %sw.epilog
  %call65 = tail call ptr @of_find_property(ptr noundef nonnull %34, ptr noundef nonnull @.str.84, ptr noundef null) #12
  %tobool66.not = icmp eq ptr %call65, null
  br i1 %tobool66.not, label %land.lhs.true.if.end74_crit_edge, label %if.then67

land.lhs.true.if.end74_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end74

if.then67:                                        ; preds = %land.lhs.true
  %35 = ptrtoint ptr %dev6 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %dev6, align 4
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %36, i32 noundef 160, i32 noundef 3520) #12
  %dma = getelementptr inbounds %struct.s3c24xx_uart_port, ptr %ourport, i32 0, i32 18
  %37 = ptrtoint ptr %dma to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %call.i, ptr %dma, align 4
  %tobool71.not = icmp eq ptr %call.i, null
  br i1 %tobool71.not, label %if.then67.err_crit_edge, label %if.then67.if.end74_crit_edge

if.then67.if.end74_crit_edge:                     ; preds = %if.then67
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end74

if.then67.err_crit_edge:                          ; preds = %if.then67
  call void @__sanitizer_cov_trace_pc() #14
  br label %err

if.end74:                                         ; preds = %if.then67.if.end74_crit_edge, %land.lhs.true.if.end74_crit_edge, %sw.epilog.if.end74_crit_edge
  %call76 = tail call ptr @clk_get(ptr noundef %dev, ptr noundef nonnull @.str.85) #12
  %clk = getelementptr inbounds %struct.s3c24xx_uart_port, ptr %ourport, i32 0, i32 13
  %38 = ptrtoint ptr %clk to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %call76, ptr %clk, align 4
  %cmp.i228 = icmp ugt ptr %call76, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i228, label %do.end82, label %if.end89

do.end82:                                         ; preds = %if.end74
  %init_name.i = getelementptr inbounds %struct.platform_device, ptr %platdev, i32 0, i32 3, i32 3
  %39 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %40, null
  br i1 %tobool.not.i, label %if.end.i, label %do.end82.dev_name.exit_crit_edge

do.end82.dev_name.exit_crit_edge:                 ; preds = %do.end82
  call void @__sanitizer_cov_trace_pc() #14
  br label %dev_name.exit

if.end.i:                                         ; preds = %do.end82
  call void @__sanitizer_cov_trace_pc() #14
  %41 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %dev, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %do.end82.dev_name.exit_crit_edge
  %retval.0.i229 = phi ptr [ %42, %if.end.i ], [ %40, %do.end82.dev_name.exit_crit_edge ]
  %call86 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.87, ptr noundef %retval.0.i229) #15
  %43 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %clk, align 4
  %45 = ptrtoint ptr %44 to i32
  br label %err

if.end89:                                         ; preds = %if.end74
  %call.i230 = tail call i32 @clk_prepare(ptr noundef %call76) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i230)
  %tobool.not.i231 = icmp eq i32 %call.i230, 0
  br i1 %tobool.not.i231, label %if.end.i232, label %if.end89.do.end96_crit_edge

if.end89.do.end96_crit_edge:                      ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end96

if.end.i232:                                      ; preds = %if.end89
  %call1.i = tail call i32 @clk_enable(ptr noundef %call76) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end100, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i232
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @clk_unprepare(ptr noundef %call76) #12
  br label %do.end96

do.end96:                                         ; preds = %if.then3.i, %if.end89.do.end96_crit_edge
  %retval.0.i233.ph = phi i32 [ %call1.i, %if.then3.i ], [ %call.i230, %if.end89.do.end96_crit_edge ]
  %call98 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.90, i32 noundef %retval.0.i233.ph) #15
  %46 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %clk, align 4
  tail call void @clk_put(ptr noundef %47) #12
  br label %err

if.end100:                                        ; preds = %if.end.i232
  %48 = ptrtoint ptr %dev6 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %dev6, align 4
  %50 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %info, align 4
  call void @llvm.lifetime.start.p0(i64 15, ptr nonnull %clk_name.i) #12
  %52 = call ptr @memset(ptr %clk_name.i, i32 255, i32 15)
  %53 = ptrtoint ptr %cfg2 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %cfg2, align 4
  %clk_sel3.i = getelementptr inbounds %struct.s3c2410_uartcfg, ptr %54, i32 0, i32 4
  %55 = ptrtoint ptr %clk_sel3.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %clk_sel3.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %56)
  %tobool.not.i234 = icmp eq i32 %56, 0
  br i1 %tobool.not.i234, label %cond.false.i, label %if.end100.cond.end.i_crit_edge

if.end100.cond.end.i_crit_edge:                   ; preds = %if.end100
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.end.i

cond.false.i:                                     ; preds = %if.end100
  call void @__sanitizer_cov_trace_pc() #14
  %def_clk_sel.i = getelementptr inbounds %struct.s3c24xx_uart_info, ptr %51, i32 0, i32 10
  %57 = ptrtoint ptr %def_clk_sel.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %def_clk_sel.i, align 4
  br label %cond.end.i

cond.end.i:                                       ; preds = %cond.false.i, %if.end100.cond.end.i_crit_edge
  %cond.i = phi i32 [ %58, %cond.false.i ], [ %56, %if.end100.cond.end.i_crit_edge ]
  %num_clks.i = getelementptr inbounds %struct.s3c24xx_uart_info, ptr %51, i32 0, i32 11
  %59 = ptrtoint ptr %num_clks.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %num_clks.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %60)
  %cmp41.not.i = icmp eq i32 %60, 0
  br i1 %cmp41.not.i, label %cond.end.i.do.end106_crit_edge, label %cond.end.i.for.body.i_crit_edge

cond.end.i.for.body.i_crit_edge:                  ; preds = %cond.end.i
  br label %for.body.i

cond.end.i.do.end106_crit_edge:                   ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end106

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %cond.end.i.for.body.i_crit_edge
  %clk_num.042.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %cond.end.i.for.body.i_crit_edge ]
  %shl.i = shl nuw i32 1, %clk_num.042.i
  %and.i = and i32 %shl.i, %cond.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool4.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool4.not.i, label %for.body.i.for.inc.i_crit_edge, label %if.end.i236

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i

if.end.i236:                                      ; preds = %for.body.i
  %call.i235 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %clk_name.i, ptr noundef nonnull @.str.57, i32 noundef %clk_num.042.i) #12
  %call6.i = call ptr @clk_get(ptr noundef %49, ptr noundef nonnull %clk_name.i) #12
  %cmp.i.i = icmp ugt ptr %call6.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.end.i236.for.inc.i_crit_edge, label %if.end9.i

if.end.i236.for.inc.i_crit_edge:                  ; preds = %if.end.i236
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i

if.end9.i:                                        ; preds = %if.end.i236
  %call.i.i = call i32 @clk_prepare(ptr noundef %call6.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.end9.i.if.then12.i_crit_edge

if.end9.i.if.then12.i_crit_edge:                  ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then12.i

if.end.i.i:                                       ; preds = %if.end9.i
  %call1.i.i = call i32 @clk_enable(ptr noundef %call6.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool2.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool2.not.i.i, label %if.end13.i, label %if.then3.i.i

if.then3.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @clk_unprepare(ptr noundef %call6.i) #12
  br label %if.then12.i

if.then12.i:                                      ; preds = %if.then3.i.i, %if.end9.i.if.then12.i_crit_edge
  call void @clk_put(ptr noundef %call6.i) #12
  br label %for.inc.i

if.end13.i:                                       ; preds = %if.end.i.i
  %baudclk.i = getelementptr inbounds %struct.s3c24xx_uart_port, ptr %ourport, i32 0, i32 14
  %61 = ptrtoint ptr %baudclk.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr %call6.i, ptr %baudclk.i, align 4
  %call14.i = call i32 @clk_get_rate(ptr noundef %call6.i) #12
  %baudclk_rate.i = getelementptr inbounds %struct.s3c24xx_uart_port, ptr %ourport, i32 0, i32 5
  %62 = ptrtoint ptr %baudclk_rate.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %call14.i, ptr %baudclk_rate.i, align 4
  %63 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %info, align 4
  %num_clks.i.i = getelementptr inbounds %struct.s3c24xx_uart_info, ptr %64, i32 0, i32 11
  %65 = ptrtoint ptr %num_clks.i.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %num_clks.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %66)
  %cmp.i36.i = icmp eq i32 %66, 1
  br i1 %cmp.i36.i, label %if.end13.i.s3c24xx_serial_enable_baudclk.exit.thread_crit_edge, label %if.end.i37.i

if.end13.i.s3c24xx_serial_enable_baudclk.exit.thread_crit_edge: ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %s3c24xx_serial_enable_baudclk.exit.thread

if.end.i37.i:                                     ; preds = %if.end13.i
  %67 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %membase, align 4
  %add.ptr.i.i = getelementptr i8, ptr %68, i32 4
  %69 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #12, !srcloc !300
  %70 = call i32 @llvm.bswap.i32(i32 %69) #12
  %clksel_mask.i.i = getelementptr inbounds %struct.s3c24xx_uart_info, ptr %64, i32 0, i32 12
  %71 = ptrtoint ptr %clksel_mask.i.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %clksel_mask.i.i, align 4
  %and.i.i = and i32 %70, %72
  %clksel_shift.i.i = getelementptr inbounds %struct.s3c24xx_uart_info, ptr %64, i32 0, i32 13
  %73 = ptrtoint ptr %clksel_shift.i.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %clksel_shift.i.i, align 4
  %shr.i.i = lshr i32 %and.i.i, %74
  call void @__sanitizer_cov_trace_cmp4(i32 %shr.i.i, i32 %clk_num.042.i)
  %cmp2.i.i = icmp eq i32 %shr.i.i, %clk_num.042.i
  br i1 %cmp2.i.i, label %if.end.i37.i.s3c24xx_serial_enable_baudclk.exit.thread_crit_edge, label %if.end4.i.i

if.end.i37.i.s3c24xx_serial_enable_baudclk.exit.thread_crit_edge: ; preds = %if.end.i37.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %s3c24xx_serial_enable_baudclk.exit.thread

if.end4.i.i:                                      ; preds = %if.end.i37.i
  call void @__sanitizer_cov_trace_pc() #14
  %neg.i.i = xor i32 %72, -1
  %and6.i.i = and i32 %70, %neg.i.i
  %shl.i.i = shl i32 %clk_num.042.i, %74
  %or.i.i = or i32 %shl.i.i, %and6.i.i
  %75 = call i32 @llvm.bswap.i32(i32 %or.i.i) #12
  %76 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %membase, align 4
  %add.ptr9.i.i = getelementptr i8, ptr %77, i32 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr9.i.i, i32 %75) #12, !srcloc !301
  br label %s3c24xx_serial_enable_baudclk.exit.thread

for.inc.i:                                        ; preds = %if.then12.i, %if.end.i236.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %inc.i = add nuw i32 %clk_num.042.i, 1
  %78 = ptrtoint ptr %num_clks.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %num_clks.i, align 4
  %cmp.i237 = icmp ult i32 %inc.i, %79
  br i1 %cmp.i237, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.do.end106_crit_edge

for.inc.i.do.end106_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end106

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i

s3c24xx_serial_enable_baudclk.exit.thread:        ; preds = %if.end4.i.i, %if.end.i37.i.s3c24xx_serial_enable_baudclk.exit.thread_crit_edge, %if.end13.i.s3c24xx_serial_enable_baudclk.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 15, ptr nonnull %clk_name.i) #12
  br label %if.end109

do.end106:                                        ; preds = %for.inc.i.do.end106_crit_edge, %cond.end.i.do.end106_crit_edge
  call void @llvm.lifetime.end.p0(i64 15, ptr nonnull %clk_name.i) #12
  %call108 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.93) #15
  br label %if.end109

if.end109:                                        ; preds = %do.end106, %s3c24xx_serial_enable_baudclk.exit.thread
  %80 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %info, align 4
  %type111 = getelementptr inbounds %struct.s3c24xx_uart_info, ptr %81, i32 0, i32 1
  %82 = ptrtoint ptr %type111 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %type111, align 4
  %84 = zext i32 %83 to i64
  call void @__sanitizer_cov_trace_switch(i64 %84, ptr @__sancov_gen_cov_switch_values.119)
  switch i32 %83, label %if.end109.do.body130_crit_edge [
    i32 1, label %sw.bb112
    i32 2, label %sw.bb118
  ]

if.end109.do.body130_crit_edge:                   ; preds = %if.end109
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body130

sw.bb112:                                         ; preds = %if.end109
  call void @__sanitizer_cov_trace_pc() #14
  %85 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %membase, align 4
  %add.ptr = getelementptr i8, ptr %86, i32 56
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 251658240) #12, !srcloc !301
  %87 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %membase, align 4
  %add.ptr115 = getelementptr i8, ptr %88, i32 48
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr115, i32 251658240) #12, !srcloc !301
  %89 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %membase, align 4
  %add.ptr117 = getelementptr i8, ptr %90, i32 52
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr117, i32 251658240) #12, !srcloc !301
  br label %do.body130

sw.bb118:                                         ; preds = %if.end109
  call void @__sanitizer_cov_trace_pc() #14
  %91 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %membase, align 4
  %add.ptr120 = getelementptr i8, ptr %92, i32 4
  %93 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr120) #12, !srcloc !300
  %94 = and i32 %93, -3276801
  %95 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %membase, align 4
  %add.ptr125 = getelementptr i8, ptr %96, i32 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr125, i32 %94) #12, !srcloc !301
  %97 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %membase, align 4
  %add.ptr127 = getelementptr i8, ptr %98, i32 16
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr127, i32 -268238848) #12, !srcloc !301
  br label %do.body130

do.body130:                                       ; preds = %sw.bb118, %sw.bb112, %if.end109.do.body130_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @s3c24xx_serial_init_port.__UNIQUE_ID_ddebug262, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@s3c24xx_serial_init_port, %if.then142)) #12
          to label %do.end152 [label %if.then142], !srcloc !299

if.then142:                                       ; preds = %do.body130
  call void @__sanitizer_cov_trace_pc() #14
  %99 = ptrtoint ptr %dev6 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %dev6, align 4
  %101 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %membase, align 4
  %103 = ptrtoint ptr %26 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %26, align 4
  %rx_irq147 = getelementptr inbounds %struct.s3c24xx_uart_port, ptr %ourport, i32 0, i32 7
  %105 = ptrtoint ptr %rx_irq147 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %rx_irq147, align 4
  %tx_irq148 = getelementptr inbounds %struct.s3c24xx_uart_port, ptr %ourport, i32 0, i32 8
  %107 = ptrtoint ptr %tx_irq148 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %tx_irq148, align 4
  %109 = ptrtoint ptr %uartclk to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %uartclk, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @s3c24xx_serial_init_port.__UNIQUE_ID_ddebug262, ptr noundef %100, ptr noundef nonnull @.str.95, ptr noundef %mapbase, ptr noundef %102, i32 noundef %104, i32 noundef %106, i32 noundef %108, i32 noundef %110) #12
  br label %do.end152

do.end152:                                        ; preds = %if.then142, %do.body130
  %111 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %info, align 4
  %113 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %membase, align 4
  %add.ptr.i = getelementptr i8, ptr %114, i32 4
  %115 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #12, !srcloc !300
  %116 = call i32 @llvm.bswap.i32(i32 %115) #12
  %clksel_mask.i = getelementptr inbounds %struct.s3c24xx_uart_info, ptr %112, i32 0, i32 12
  %117 = ptrtoint ptr %clksel_mask.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %clksel_mask.i, align 4
  %ucon_mask.i = getelementptr inbounds %struct.s3c24xx_uart_info, ptr %112, i32 0, i32 14
  %119 = ptrtoint ptr %ucon_mask.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %ucon_mask.i, align 4
  %or.i = or i32 %120, %118
  %and.i239 = and i32 %or.i, %116
  %ucon2.i = getelementptr inbounds %struct.s3c2410_uartcfg, ptr %1, i32 0, i32 6
  %121 = ptrtoint ptr %ucon2.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %ucon2.i, align 4
  %or3.i = or i32 %and.i239, %122
  %123 = call i32 @llvm.bswap.i32(i32 %or3.i) #12
  %124 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %membase, align 4
  %add.ptr5.i = getelementptr i8, ptr %125, i32 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5.i, i32 %123) #12, !srcloc !301
  %ufcon.i = getelementptr inbounds %struct.s3c2410_uartcfg, ptr %1, i32 0, i32 8
  %126 = ptrtoint ptr %ufcon.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %ufcon.i, align 4
  %or6.i = or i32 %127, 6
  %128 = call i32 @llvm.bswap.i32(i32 %or6.i) #12
  %129 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %membase, align 4
  %add.ptr8.i = getelementptr i8, ptr %130, i32 8
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr8.i, i32 %128) #12, !srcloc !301
  %131 = ptrtoint ptr %ufcon.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load i32, ptr %ufcon.i, align 4
  %133 = call i32 @llvm.bswap.i32(i32 %132) #12
  %134 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %membase, align 4
  %add.ptr11.i = getelementptr i8, ptr %135, i32 8
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr11.i, i32 %133) #12, !srcloc !301
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %136 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %136(i32 noundef 214748) #12
  br label %cleanup

err:                                              ; preds = %do.end96, %dev_name.exit, %if.then67.err_crit_edge
  %ret.0 = phi i32 [ %45, %dev_name.exit ], [ %retval.0.i233.ph, %do.end96 ], [ -12, %if.then67.err_crit_edge ]
  %137 = ptrtoint ptr %mapbase to i32
  call void @__asan_store4_noabort(i32 %137)
  store i32 0, ptr %mapbase, align 4
  br label %cleanup

cleanup:                                          ; preds = %err, %do.end152, %do.end47, %do.end20, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end20 ], [ -16, %do.end47 ], [ %ret.0, %err ], [ 0, %do.end152 ], [ -19, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @uart_register_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @uart_add_one_port(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_match_node(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @s3c24xx_serial_tx_empty(ptr nocapture noundef readonly %port) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %info.i = getelementptr i8, ptr %port, i32 -12
  %0 = ptrtoint ptr %info.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %info.i, align 4
  %membase = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 2
  %2 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %membase, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 24
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #12, !srcloc !300
  %5 = tail call i32 @llvm.bswap.i32(i32 %4)
  %6 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %membase, align 4
  %add.ptr4 = getelementptr i8, ptr %7, i32 8
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr4) #12, !srcloc !300
  %9 = and i32 %8, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.not = icmp eq i32 %9, 0
  br i1 %tobool.not, label %if.end11, label %if.then

if.then:                                          ; preds = %entry
  %tx_fifomask = getelementptr inbounds %struct.s3c24xx_uart_info, ptr %1, i32 0, i32 7
  %10 = ptrtoint ptr %tx_fifomask to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %tx_fifomask, align 4
  %and7 = and i32 %11, %5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7)
  %cmp.not = icmp eq i32 %and7, 0
  br i1 %cmp.not, label %lor.lhs.false, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  %tx_fifofull = getelementptr inbounds %struct.s3c24xx_uart_info, ptr %1, i32 0, i32 9
  %12 = ptrtoint ptr %tx_fifofull to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %tx_fifofull, align 4
  %and8 = and i32 %13, %5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8)
  %tobool9.not = icmp eq i32 %and8, 0
  %spec.select = zext i1 %tobool9.not to i32
  br label %cleanup

if.end11:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %14 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %membase, align 4
  %add.ptr.i = getelementptr i8, ptr %15, i32 16
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #12, !srcloc !300
  %17 = lshr i32 %16, 24
  %and.i = and i32 %17, 4
  br label %cleanup

cleanup:                                          ; preds = %if.end11, %lor.lhs.false, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ %and.i, %if.end11 ], [ 0, %if.then.cleanup_crit_edge ], [ %spec.select, %lor.lhs.false ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @s3c24xx_serial_set_mctrl(ptr nocapture noundef readonly %port, i32 noundef %mctrl) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %membase = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 2
  %0 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %membase, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 12
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #12, !srcloc !300
  %3 = and i32 %2, -16777217
  %4 = tail call i32 @llvm.bswap.i32(i32 %3)
  %and = lshr i32 %mctrl, 2
  %and.lobit = and i32 %and, 1
  %umcon.0 = or i32 %4, %and.lobit
  %5 = tail call i32 @llvm.bswap.i32(i32 %umcon.0)
  %6 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %membase, align 4
  %add.ptr3 = getelementptr i8, ptr %7, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3, i32 %5) #12, !srcloc !301
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @s3c24xx_serial_get_mctrl(ptr nocapture noundef readonly %port) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %iotype.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 26
  %0 = ptrtoint ptr %iotype.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %iotype.i, align 2
  %2 = zext i8 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.120)
  switch i8 %1, label %entry.rd_reg.exit_crit_edge [
    i8 2, label %sw.bb.i
    i8 3, label %sw.bb2.i
  ]

entry.rd_reg.exit_crit_edge:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %rd_reg.exit

sw.bb.i:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %membase.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 2
  %3 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %membase.i, align 4
  %add.ptr.i = getelementptr i8, ptr %4, i32 28
  %5 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i) #12, !srcloc !302
  %conv1.i = zext i8 %5 to i32
  br label %rd_reg.exit

sw.bb2.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %membase4.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 2
  %6 = ptrtoint ptr %membase4.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %membase4.i, align 4
  %add.ptr5.i = getelementptr i8, ptr %7, i32 28
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5.i) #12, !srcloc !300
  %9 = tail call i32 @llvm.bswap.i32(i32 %8) #12
  br label %rd_reg.exit

rd_reg.exit:                                      ; preds = %sw.bb2.i, %sw.bb.i, %entry.rd_reg.exit_crit_edge
  %retval.0.i = phi i32 [ %9, %sw.bb2.i ], [ %conv1.i, %sw.bb.i ], [ 0, %entry.rd_reg.exit_crit_edge ]
  %and = and i32 %retval.0.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %. = select i1 %tobool.not, i32 320, i32 352
  ret i32 %.
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @s3c24xx_serial_stop_tx(ptr noundef %port) #3 align 64 {
entry:
  %state3 = alloca %struct.dma_tx_state, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %dma1 = getelementptr i8, ptr %port, i32 368
  %0 = ptrtoint ptr %dma1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dma1, align 4
  %state = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 30
  %2 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %state, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %state3) #12
  %4 = getelementptr inbounds %struct.dma_tx_state, ptr %state3, i32 0, i32 2
  %tx_enabled = getelementptr i8, ptr %port, i32 -45
  %5 = call ptr @memset(ptr %state3, i32 255, i32 16)
  %6 = ptrtoint ptr %tx_enabled to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %tx_enabled, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not = icmp eq i8 %7, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %info = getelementptr i8, ptr %port, i32 -12
  %8 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %info, align 4
  %type = getelementptr inbounds %struct.s3c24xx_uart_info, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %type, align 4
  %12 = zext i32 %11 to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.121)
  switch i32 %11, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb4
  ]

sw.bb:                                            ; preds = %if.end
  %13 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #12, !srcloc !303
  %and.i.i = and i32 %13, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %do.body27.i.critedge

if.then.i:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @trace_hardirqs_off() #12
  %membase.i.c = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 2
  %14 = ptrtoint ptr %membase.i.c to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %membase.i.c, align 4
  %add.ptr.i55.c = getelementptr i8, ptr %15, i32 56
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i55.c) #12, !srcloc !300
  %17 = or i32 %16, 67108864
  %18 = ptrtoint ptr %membase.i.c to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %membase.i.c, align 4
  %add.ptr15.i.c = getelementptr i8, ptr %19, i32 56
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr15.i.c, i32 %17) #12, !srcloc !301
  tail call void @trace_hardirqs_on() #12
  br label %do.body27.i

do.body27.i.critedge:                             ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #14
  %membase.i.c77 = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 2
  %20 = ptrtoint ptr %membase.i.c77 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %membase.i.c77, align 4
  %add.ptr.i55.c78 = getelementptr i8, ptr %21, i32 56
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i55.c78) #12, !srcloc !300
  %23 = or i32 %22, 67108864
  %24 = ptrtoint ptr %membase.i.c77 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %membase.i.c77, align 4
  %add.ptr15.i.c80 = getelementptr i8, ptr %25, i32 56
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr15.i.c80, i32 %23) #12, !srcloc !301
  br label %do.body27.i

do.body27.i:                                      ; preds = %do.body27.i.critedge, %if.then.i
  %26 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #12, !srcloc !304
  %and.i.i.i = and i32 %26, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool35.not.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool35.not.i, label %if.then39.i, label %do.body27.i.s3c24xx_set_bit.exit_crit_edge, !prof !305

do.body27.i.s3c24xx_set_bit.exit_crit_edge:       ; preds = %do.body27.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %s3c24xx_set_bit.exit

if.then39.i:                                      ; preds = %do.body27.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @warn_bogus_irq_restore() #12
  br label %s3c24xx_set_bit.exit

s3c24xx_set_bit.exit:                             ; preds = %if.then39.i, %do.body27.i.s3c24xx_set_bit.exit_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %13) #12, !srcloc !306
  br label %sw.epilog

sw.bb4:                                           ; preds = %if.end
  %27 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #12, !srcloc !303
  %and.i.i56 = and i32 %27, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i56)
  %tobool.not.i57 = icmp eq i32 %and.i.i56, 0
  br i1 %tobool.not.i57, label %if.then.i58, label %do.body27.i66.critedge

if.then.i58:                                      ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @trace_hardirqs_off() #12
  %membase.i59.c = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 2
  %28 = ptrtoint ptr %membase.i59.c to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %membase.i59.c, align 4
  %add.ptr.i60.c = getelementptr i8, ptr %29, i32 4
  %30 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i60.c) #12, !srcloc !300
  %31 = and i32 %30, -2097153
  %32 = ptrtoint ptr %membase.i59.c to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %membase.i59.c, align 4
  %add.ptr15.i61.c = getelementptr i8, ptr %33, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr15.i61.c, i32 %31) #12, !srcloc !301
  tail call void @trace_hardirqs_on() #12
  br label %do.body27.i66

do.body27.i66.critedge:                           ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #14
  %membase.i59.c81 = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 2
  %34 = ptrtoint ptr %membase.i59.c81 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %membase.i59.c81, align 4
  %add.ptr.i60.c82 = getelementptr i8, ptr %35, i32 4
  %36 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i60.c82) #12, !srcloc !300
  %37 = and i32 %36, -2097153
  %38 = ptrtoint ptr %membase.i59.c81 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %membase.i59.c81, align 4
  %add.ptr15.i61.c84 = getelementptr i8, ptr %39, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr15.i61.c84, i32 %37) #12, !srcloc !301
  br label %do.body27.i66

do.body27.i66:                                    ; preds = %do.body27.i66.critedge, %if.then.i58
  %40 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #12, !srcloc !304
  %and.i.i.i64 = and i32 %40, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i64)
  %tobool35.not.i65 = icmp eq i32 %and.i.i.i64, 0
  br i1 %tobool35.not.i65, label %if.then39.i67, label %do.body27.i66.s3c24xx_clear_bit.exit_crit_edge, !prof !305

do.body27.i66.s3c24xx_clear_bit.exit_crit_edge:   ; preds = %do.body27.i66
  call void @__sanitizer_cov_trace_pc() #14
  br label %s3c24xx_clear_bit.exit

if.then39.i67:                                    ; preds = %do.body27.i66
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @warn_bogus_irq_restore() #12
  br label %s3c24xx_clear_bit.exit

s3c24xx_clear_bit.exit:                           ; preds = %if.then39.i67, %do.body27.i66.s3c24xx_clear_bit.exit_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %27) #12, !srcloc !306
  br label %sw.epilog

sw.default:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %tx_irq = getelementptr i8, ptr %port, i32 -28
  %41 = ptrtoint ptr %tx_irq to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %tx_irq, align 4
  tail call void @disable_irq_nosync(i32 noundef %42) #12
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %s3c24xx_clear_bit.exit, %s3c24xx_set_bit.exit
  %tobool5.not = icmp eq ptr %1, null
  br i1 %tobool5.not, label %sw.epilog.if.end18_crit_edge, label %land.lhs.true

sw.epilog.if.end18_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end18

land.lhs.true:                                    ; preds = %sw.epilog
  %tx_chan = getelementptr inbounds %struct.s3c24xx_uart_dma, ptr %1, i32 0, i32 5
  %43 = ptrtoint ptr %tx_chan to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %tx_chan, align 4
  %tobool6.not = icmp eq ptr %44, null
  br i1 %tobool6.not, label %land.lhs.true.if.end18_crit_edge, label %land.lhs.true7

land.lhs.true.if.end18_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end18

land.lhs.true7:                                   ; preds = %land.lhs.true
  %tx_in_progress = getelementptr i8, ptr %port, i32 -24
  %45 = ptrtoint ptr %tx_in_progress to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %tx_in_progress, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %46)
  %cmp = icmp eq i32 %46, 2
  br i1 %cmp, label %if.then8, label %land.lhs.true7.if.end18_crit_edge

land.lhs.true7.if.end18_crit_edge:                ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end18

if.then8:                                         ; preds = %land.lhs.true7
  %47 = ptrtoint ptr %44 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %44, align 4
  %device_pause.i = getelementptr inbounds %struct.dma_device, ptr %48, i32 0, i32 45
  %49 = ptrtoint ptr %device_pause.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %device_pause.i, align 4
  %tobool.not.i68 = icmp eq ptr %50, null
  br i1 %tobool.not.i68, label %if.then8.dmaengine_pause.exit_crit_edge, label %if.then.i69

if.then8.dmaengine_pause.exit_crit_edge:          ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #14
  br label %dmaengine_pause.exit

if.then.i69:                                      ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #14
  %call.i = tail call i32 %50(ptr noundef nonnull %44) #12
  br label %dmaengine_pause.exit

dmaengine_pause.exit:                             ; preds = %if.then.i69, %if.then8.dmaengine_pause.exit_crit_edge
  %51 = ptrtoint ptr %tx_chan to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %tx_chan, align 4
  %tx_cookie = getelementptr inbounds %struct.s3c24xx_uart_dma, ptr %1, i32 0, i32 9
  %53 = ptrtoint ptr %tx_cookie to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %tx_cookie, align 4
  %55 = ptrtoint ptr %52 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %52, align 4
  %device_tx_status.i = getelementptr inbounds %struct.dma_device, ptr %56, i32 0, i32 49
  %57 = ptrtoint ptr %device_tx_status.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %device_tx_status.i, align 4
  %call.i70 = call i32 %58(ptr noundef %52, i32 noundef %54, ptr noundef nonnull %state3) #12
  %59 = ptrtoint ptr %tx_chan to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %tx_chan, align 4
  %61 = ptrtoint ptr %60 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %60, align 4
  %device_terminate_all.i = getelementptr inbounds %struct.dma_device, ptr %62, i32 0, i32 47
  %63 = ptrtoint ptr %device_terminate_all.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %device_terminate_all.i, align 4
  %tobool.not.i71 = icmp eq ptr %64, null
  br i1 %tobool.not.i71, label %dmaengine_pause.exit.dmaengine_terminate_all.exit_crit_edge, label %if.then.i73

dmaengine_pause.exit.dmaengine_terminate_all.exit_crit_edge: ; preds = %dmaengine_pause.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %dmaengine_terminate_all.exit

if.then.i73:                                      ; preds = %dmaengine_pause.exit
  call void @__sanitizer_cov_trace_pc() #14
  %call.i72 = call i32 %64(ptr noundef %60) #12
  br label %dmaengine_terminate_all.exit

dmaengine_terminate_all.exit:                     ; preds = %if.then.i73, %dmaengine_pause.exit.dmaengine_terminate_all.exit_crit_edge
  %65 = ptrtoint ptr %tx_chan to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %tx_chan, align 4
  %67 = ptrtoint ptr %66 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %66, align 4
  %dev = getelementptr inbounds %struct.dma_device, ptr %68, i32 0, i32 15
  %69 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %dev, align 4
  %tx_transfer_addr = getelementptr inbounds %struct.s3c24xx_uart_dma, ptr %1, i32 0, i32 11
  %71 = ptrtoint ptr %tx_transfer_addr to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %tx_transfer_addr, align 4
  %tx_size = getelementptr inbounds %struct.s3c24xx_uart_dma, ptr %1, i32 0, i32 13
  %73 = ptrtoint ptr %tx_size to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %tx_size, align 4
  call void @dma_sync_single_for_cpu(ptr noundef %70, i32 noundef %72, i32 noundef %74, i32 noundef 1) #12
  %tx_desc = getelementptr inbounds %struct.s3c24xx_uart_dma, ptr %1, i32 0, i32 14
  %75 = ptrtoint ptr %tx_desc to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %tx_desc, align 4
  %flags.i = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %76, i32 0, i32 1
  %77 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %flags.i, align 4
  %or.i74 = or i32 %78, 2
  store i32 %or.i74, ptr %flags.i, align 4
  %tx_bytes_requested = getelementptr inbounds %struct.s3c24xx_uart_dma, ptr %1, i32 0, i32 16
  %79 = ptrtoint ptr %tx_bytes_requested to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %tx_bytes_requested, align 4
  %81 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %4, align 4
  %sub = sub i32 %80, %82
  %tail = getelementptr inbounds %struct.uart_state, ptr %3, i32 0, i32 2, i32 2
  %83 = ptrtoint ptr %tail to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %tail, align 4
  %add = add i32 %84, %sub
  %and = and i32 %add, 4095
  store i32 %and, ptr %tail, align 4
  %tx = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 31, i32 5
  %85 = ptrtoint ptr %tx to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %tx, align 4
  %add17 = add i32 %86, %sub
  store i32 %add17, ptr %tx, align 4
  br label %if.end18

if.end18:                                         ; preds = %dmaengine_terminate_all.exit, %land.lhs.true7.if.end18_crit_edge, %land.lhs.true.if.end18_crit_edge, %sw.epilog.if.end18_crit_edge
  %87 = ptrtoint ptr %tx_enabled to i32
  call void @__asan_store1_noabort(i32 %87)
  store i8 0, ptr %tx_enabled, align 1
  %tx_in_progress20 = getelementptr i8, ptr %port, i32 -24
  %88 = ptrtoint ptr %tx_in_progress20 to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 0, ptr %tx_in_progress20, align 4
  %flags = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 33
  %89 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %flags, align 4
  %and21 = and i32 %90, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and21)
  %tobool22.not = icmp eq i32 %and21, 0
  br i1 %tobool22.not, label %if.end18.if.end24_crit_edge, label %if.then23

if.end18.if.end24_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end24

if.then23:                                        ; preds = %if.end18
  %call3.i = call i32 @_raw_spin_lock_irqsave(ptr noundef %port) #12
  %membase.i.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 2
  br label %land.rhs.i

land.rhs.i:                                       ; preds = %while.body.i.land.rhs.i_crit_edge, %if.then23
  %dec31.i = phi i32 [ 9999, %if.then23 ], [ %dec.i, %while.body.i.land.rhs.i_crit_edge ]
  %91 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %membase.i.i, align 4
  %add.ptr.i30.i = getelementptr i8, ptr %92, i32 16
  %93 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i30.i) #12, !srcloc !300
  %94 = and i32 %93, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %94)
  %tobool7.not.i = icmp eq i32 %94, 0
  br i1 %tobool7.not.i, label %while.body.i, label %land.rhs.i.s3c24xx_serial_rx_enable.exit_crit_edge

land.rhs.i.s3c24xx_serial_rx_enable.exit_crit_edge: ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %s3c24xx_serial_rx_enable.exit

while.body.i:                                     ; preds = %land.rhs.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %95 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %95(i32 noundef 21474800) #12
  %dec.i = add nsw i32 %dec31.i, -1
  %tobool.not.i75 = icmp eq i32 %dec.i, 0
  br i1 %tobool.not.i75, label %while.body.i.s3c24xx_serial_rx_enable.exit_crit_edge, label %while.body.i.land.rhs.i_crit_edge

while.body.i.land.rhs.i_crit_edge:                ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.rhs.i

while.body.i.s3c24xx_serial_rx_enable.exit_crit_edge: ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %s3c24xx_serial_rx_enable.exit

s3c24xx_serial_rx_enable.exit:                    ; preds = %while.body.i.s3c24xx_serial_rx_enable.exit_crit_edge, %land.rhs.i.s3c24xx_serial_rx_enable.exit_crit_edge
  %96 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %membase.i.i, align 4
  %add.ptr.i76 = getelementptr i8, ptr %97, i32 8
  %98 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i76) #12, !srcloc !300
  %99 = or i32 %98, 33554432
  %100 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %membase.i.i, align 4
  %add.ptr11.i = getelementptr i8, ptr %101, i32 8
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr11.i, i32 %99) #12, !srcloc !301
  %102 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %membase.i.i, align 4
  %add.ptr14.i = getelementptr i8, ptr %103, i32 4
  %104 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr14.i) #12, !srcloc !300
  %105 = or i32 %104, 16777216
  %106 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %membase.i.i, align 4
  %add.ptr19.i = getelementptr i8, ptr %107, i32 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr19.i, i32 %105) #12, !srcloc !301
  %rx_enabled.i = getelementptr i8, ptr %port, i32 -46
  %108 = ptrtoint ptr %rx_enabled.i to i32
  call void @__asan_store1_noabort(i32 %108)
  store i8 1, ptr %rx_enabled.i, align 2
  call void @_raw_spin_unlock_irqrestore(ptr noundef %port, i32 noundef %call3.i) #12
  br label %if.end24

if.end24:                                         ; preds = %s3c24xx_serial_rx_enable.exit, %if.end18.if.end24_crit_edge
  %tx_mode = getelementptr i8, ptr %port, i32 -20
  %109 = ptrtoint ptr %tx_mode to i32
  call void @__asan_store4_noabort(i32 %109)
  store i32 0, ptr %tx_mode, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end24, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %state3) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @s3c24xx_serial_start_tx(ptr noundef %port) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %port, i32 -48
  %state = getelementptr %struct.uart_port, ptr %port, i32 0, i32 30
  %0 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %state, align 4
  %tx_enabled = getelementptr i8, ptr %port, i32 -45
  %2 = ptrtoint ptr %tx_enabled to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %tx_enabled, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end10_crit_edge

entry.if.end10_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end10

if.then:                                          ; preds = %entry
  %flags = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 33
  %4 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %flags, align 4
  %and = and i32 %5, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool2.not = icmp eq i32 %and, 0
  br i1 %tobool2.not, label %if.then.if.end_crit_edge, label %if.then3

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then3:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  %call3.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %port) #12
  %membase.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 2
  %6 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %membase.i, align 4
  %add.ptr.i35 = getelementptr i8, ptr %7, i32 4
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i35) #12, !srcloc !300
  %9 = and i32 %8, -16777217
  %10 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %membase.i, align 4
  %add.ptr9.i = getelementptr i8, ptr %11, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr9.i, i32 %9) #12, !srcloc !301
  %rx_enabled.i = getelementptr i8, ptr %port, i32 -46
  %12 = ptrtoint ptr %rx_enabled.i to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 0, ptr %rx_enabled.i, align 2
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %port, i32 noundef %call3.i) #12
  br label %if.end

if.end:                                           ; preds = %if.then3, %if.then.if.end_crit_edge
  %13 = ptrtoint ptr %tx_enabled to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 1, ptr %tx_enabled, align 1
  %dma = getelementptr i8, ptr %port, i32 368
  %14 = ptrtoint ptr %dma to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dma, align 4
  %tobool5.not = icmp eq ptr %15, null
  br i1 %tobool5.not, label %if.end.if.then8_crit_edge, label %lor.lhs.false

if.end.if.then8_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then8

lor.lhs.false:                                    ; preds = %if.end
  %tx_chan = getelementptr inbounds %struct.s3c24xx_uart_dma, ptr %15, i32 0, i32 5
  %16 = ptrtoint ptr %tx_chan to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %tx_chan, align 4
  %tobool7.not = icmp eq ptr %17, null
  br i1 %tobool7.not, label %lor.lhs.false.if.then8_crit_edge, label %lor.lhs.false.if.end10_crit_edge

lor.lhs.false.if.end10_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end10

lor.lhs.false.if.then8_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then8

if.then8:                                         ; preds = %lor.lhs.false.if.then8_crit_edge, %if.end.if.then8_crit_edge
  tail call fastcc void @s3c24xx_serial_start_tx_pio(ptr noundef %add.ptr.i)
  br label %if.end10

if.end10:                                         ; preds = %if.then8, %lor.lhs.false.if.end10_crit_edge, %entry.if.end10_crit_edge
  %dma11 = getelementptr i8, ptr %port, i32 368
  %18 = ptrtoint ptr %dma11 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dma11, align 4
  %tobool12.not = icmp eq ptr %19, null
  br i1 %tobool12.not, label %if.end10.if.end21_crit_edge, label %land.lhs.true

if.end10.if.end21_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end21

land.lhs.true:                                    ; preds = %if.end10
  %tx_chan14 = getelementptr inbounds %struct.s3c24xx_uart_dma, ptr %19, i32 0, i32 5
  %20 = ptrtoint ptr %tx_chan14 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %tx_chan14, align 4
  %tobool15.not = icmp eq ptr %21, null
  br i1 %tobool15.not, label %land.lhs.true.if.end21_crit_edge, label %if.then16

land.lhs.true.if.end21_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end21

if.then16:                                        ; preds = %land.lhs.true
  %head = getelementptr inbounds %struct.uart_state, ptr %1, i32 0, i32 2, i32 1
  %22 = ptrtoint ptr %head to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %head, align 4
  %tail = getelementptr inbounds %struct.uart_state, ptr %1, i32 0, i32 2, i32 2
  %24 = ptrtoint ptr %tail to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %tail, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %23, i32 %25)
  %cmp = icmp eq i32 %23, %25
  br i1 %cmp, label %if.then16.if.end21_crit_edge, label %land.lhs.true17

if.then16.if.end21_crit_edge:                     ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end21

land.lhs.true17:                                  ; preds = %if.then16
  %tx_in_progress = getelementptr i8, ptr %port, i32 -24
  %26 = ptrtoint ptr %tx_in_progress to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %tx_in_progress, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %tobool18.not = icmp eq i32 %27, 0
  br i1 %tobool18.not, label %if.then19, label %land.lhs.true17.if.end21_crit_edge

land.lhs.true17.if.end21_crit_edge:               ; preds = %land.lhs.true17
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end21

if.then19:                                        ; preds = %land.lhs.true17
  %28 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %state, align 4
  %tail.i = getelementptr inbounds %struct.uart_state, ptr %29, i32 0, i32 2, i32 2
  %30 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %tail.i, align 4
  %sub.i = sub i32 4096, %31
  %head.i = getelementptr inbounds %struct.uart_state, ptr %29, i32 0, i32 2, i32 1
  %32 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %head.i, align 4
  %add.i = add i32 %33, %sub.i
  %and.i = and i32 %add.i, 4095
  %34 = tail call i32 @llvm.smin.i32(i32 %and.i, i32 %sub.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %tobool.not.i = icmp eq i32 %34, 0
  br i1 %tobool.not.i, label %if.then.i, label %lor.lhs.false6.i

if.then.i:                                        ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @s3c24xx_serial_stop_tx(ptr noundef %port) #12
  br label %if.end21

lor.lhs.false6.i:                                 ; preds = %if.then19
  %min_dma_size.i = getelementptr i8, ptr %port, i32 -36
  %35 = ptrtoint ptr %min_dma_size.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %min_dma_size.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %34, i32 %36)
  %cmp7.i = icmp uge i32 %34, %36
  %and11.i = and i32 %31, 127
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11.i)
  %tobool12.not.i = icmp eq i32 %and11.i, 0
  %or.cond.i = select i1 %cmp7.i, i1 %tobool12.not.i, i1 false
  br i1 %or.cond.i, label %if.else.i, label %if.then13.i

if.then13.i:                                      ; preds = %lor.lhs.false6.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call fastcc void @s3c24xx_serial_start_tx_pio(ptr noundef %add.ptr.i) #12
  br label %if.end21

if.else.i:                                        ; preds = %lor.lhs.false6.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call fastcc void @s3c24xx_serial_start_tx_dma(ptr noundef %add.ptr.i, i32 noundef %34) #12
  br label %if.end21

if.end21:                                         ; preds = %if.else.i, %if.then13.i, %if.then.i, %land.lhs.true17.if.end21_crit_edge, %if.then16.if.end21_crit_edge, %land.lhs.true.if.end21_crit_edge, %if.end10.if.end21_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @s3c24xx_serial_stop_rx(ptr nocapture noundef %port) #3 align 64 {
entry:
  %state3 = alloca %struct.dma_tx_state, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %port, i32 -48
  %dma1 = getelementptr i8, ptr %port, i32 368
  %0 = ptrtoint ptr %dma1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dma1, align 4
  %state = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 30
  %2 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %state, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %state3) #12
  %4 = getelementptr inbounds %struct.dma_tx_state, ptr %state3, i32 0, i32 2
  %rx_enabled = getelementptr i8, ptr %port, i32 -46
  %5 = call ptr @memset(ptr %state3, i32 255, i32 16)
  %6 = ptrtoint ptr %rx_enabled to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %rx_enabled, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not = icmp eq i8 %7, 0
  br i1 %tobool.not, label %entry.if.end11_crit_edge, label %do.body

entry.if.end11_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end11

do.body:                                          ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @s3c24xx_serial_stop_rx.__UNIQUE_ID_ddebug248, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@s3c24xx_serial_stop_rx, %if.then8)) #12
          to label %do.end [label %if.then8], !srcloc !299

if.then8:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  %dev = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 45
  %8 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @s3c24xx_serial_stop_rx.__UNIQUE_ID_ddebug248, ptr noundef %9, ptr noundef nonnull @.str.32) #12
  br label %do.end

do.end:                                           ; preds = %if.then8, %do.body
  %info = getelementptr i8, ptr %port, i32 -12
  %10 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %info, align 4
  %type = getelementptr inbounds %struct.s3c24xx_uart_info, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %type, align 4
  %14 = zext i32 %13 to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values.122)
  switch i32 %13, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb9
  ]

sw.bb:                                            ; preds = %do.end
  %15 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #12, !srcloc !303
  %and.i.i = and i32 %15, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %do.body27.i.critedge

if.then.i:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @trace_hardirqs_off() #12
  %membase.i.c = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 2
  %16 = ptrtoint ptr %membase.i.c to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %membase.i.c, align 4
  %add.ptr.i41.c = getelementptr i8, ptr %17, i32 56
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i41.c) #12, !srcloc !300
  %19 = or i32 %18, 16777216
  %20 = ptrtoint ptr %membase.i.c to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %membase.i.c, align 4
  %add.ptr15.i.c = getelementptr i8, ptr %21, i32 56
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr15.i.c, i32 %19) #12, !srcloc !301
  tail call void @trace_hardirqs_on() #12
  br label %do.body27.i

do.body27.i.critedge:                             ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #14
  %membase.i.c75 = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 2
  %22 = ptrtoint ptr %membase.i.c75 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %membase.i.c75, align 4
  %add.ptr.i41.c76 = getelementptr i8, ptr %23, i32 56
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i41.c76) #12, !srcloc !300
  %25 = or i32 %24, 16777216
  %26 = ptrtoint ptr %membase.i.c75 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %membase.i.c75, align 4
  %add.ptr15.i.c78 = getelementptr i8, ptr %27, i32 56
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr15.i.c78, i32 %25) #12, !srcloc !301
  br label %do.body27.i

do.body27.i:                                      ; preds = %do.body27.i.critedge, %if.then.i
  %28 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #12, !srcloc !304
  %and.i.i.i = and i32 %28, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool35.not.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool35.not.i, label %if.then39.i, label %do.body27.i.s3c24xx_set_bit.exit_crit_edge, !prof !305

do.body27.i.s3c24xx_set_bit.exit_crit_edge:       ; preds = %do.body27.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %s3c24xx_set_bit.exit

if.then39.i:                                      ; preds = %do.body27.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @warn_bogus_irq_restore() #12
  br label %s3c24xx_set_bit.exit

s3c24xx_set_bit.exit:                             ; preds = %if.then39.i, %do.body27.i.s3c24xx_set_bit.exit_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %15) #12, !srcloc !306
  br label %sw.epilog

sw.bb9:                                           ; preds = %do.end
  %29 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #12, !srcloc !303
  %and.i.i42 = and i32 %29, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i42)
  %tobool.not.i43 = icmp eq i32 %and.i.i42, 0
  br i1 %tobool.not.i43, label %if.then.i44, label %sw.bb9.do.end11.i48_crit_edge

sw.bb9.do.end11.i48_crit_edge:                    ; preds = %sw.bb9
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end11.i48

if.then.i44:                                      ; preds = %sw.bb9
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @trace_hardirqs_off() #12
  br label %do.end11.i48

do.end11.i48:                                     ; preds = %if.then.i44, %sw.bb9.do.end11.i48_crit_edge
  %membase.i45 = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 2
  %30 = ptrtoint ptr %membase.i45 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %membase.i45, align 4
  %add.ptr.i46 = getelementptr i8, ptr %31, i32 4
  %32 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i46) #12, !srcloc !300
  %33 = and i32 %32, -1048577
  %34 = ptrtoint ptr %membase.i45 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %membase.i45, align 4
  %add.ptr15.i47 = getelementptr i8, ptr %35, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr15.i47, i32 %33) #12, !srcloc !301
  br i1 %tobool.not.i43, label %if.then25.i49, label %do.end11.i48.do.body27.i52_crit_edge

do.end11.i48.do.body27.i52_crit_edge:             ; preds = %do.end11.i48
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body27.i52

if.then25.i49:                                    ; preds = %do.end11.i48
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @trace_hardirqs_on() #12
  br label %do.body27.i52

do.body27.i52:                                    ; preds = %if.then25.i49, %do.end11.i48.do.body27.i52_crit_edge
  %36 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #12, !srcloc !304
  %and.i.i.i50 = and i32 %36, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i50)
  %tobool35.not.i51 = icmp eq i32 %and.i.i.i50, 0
  br i1 %tobool35.not.i51, label %if.then39.i53, label %do.body27.i52.s3c24xx_clear_bit.exit_crit_edge, !prof !305

do.body27.i52.s3c24xx_clear_bit.exit_crit_edge:   ; preds = %do.body27.i52
  call void @__sanitizer_cov_trace_pc() #14
  br label %s3c24xx_clear_bit.exit

if.then39.i53:                                    ; preds = %do.body27.i52
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @warn_bogus_irq_restore() #12
  br label %s3c24xx_clear_bit.exit

s3c24xx_clear_bit.exit:                           ; preds = %if.then39.i53, %do.body27.i52.s3c24xx_clear_bit.exit_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %29) #12, !srcloc !306
  %37 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #12, !srcloc !303
  %and.i.i54 = and i32 %37, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i54)
  %tobool.not.i55 = icmp eq i32 %and.i.i54, 0
  br i1 %tobool.not.i55, label %if.then.i56, label %do.body27.i65.critedge

if.then.i56:                                      ; preds = %s3c24xx_clear_bit.exit
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @trace_hardirqs_off() #12
  %38 = ptrtoint ptr %membase.i45 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %membase.i45, align 4
  %add.ptr.i58.c = getelementptr i8, ptr %39, i32 4
  %40 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i58.c) #12, !srcloc !300
  %41 = and i32 %40, -131073
  %42 = ptrtoint ptr %membase.i45 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %membase.i45, align 4
  %add.ptr15.i60.c = getelementptr i8, ptr %43, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr15.i60.c, i32 %41) #12, !srcloc !301
  tail call void @trace_hardirqs_on() #12
  br label %do.body27.i65

do.body27.i65.critedge:                           ; preds = %s3c24xx_clear_bit.exit
  call void @__sanitizer_cov_trace_pc() #14
  %44 = ptrtoint ptr %membase.i45 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %membase.i45, align 4
  %add.ptr.i58.c79 = getelementptr i8, ptr %45, i32 4
  %46 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i58.c79) #12, !srcloc !300
  %47 = and i32 %46, -131073
  %48 = ptrtoint ptr %membase.i45 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %membase.i45, align 4
  %add.ptr15.i60.c81 = getelementptr i8, ptr %49, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr15.i60.c81, i32 %47) #12, !srcloc !301
  br label %do.body27.i65

do.body27.i65:                                    ; preds = %do.body27.i65.critedge, %if.then.i56
  %50 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #12, !srcloc !304
  %and.i.i.i63 = and i32 %50, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i63)
  %tobool35.not.i64 = icmp eq i32 %and.i.i.i63, 0
  br i1 %tobool35.not.i64, label %if.then39.i66, label %do.body27.i65.s3c24xx_clear_bit.exit67_crit_edge, !prof !305

do.body27.i65.s3c24xx_clear_bit.exit67_crit_edge: ; preds = %do.body27.i65
  call void @__sanitizer_cov_trace_pc() #14
  br label %s3c24xx_clear_bit.exit67

if.then39.i66:                                    ; preds = %do.body27.i65
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @warn_bogus_irq_restore() #12
  br label %s3c24xx_clear_bit.exit67

s3c24xx_clear_bit.exit67:                         ; preds = %if.then39.i66, %do.body27.i65.s3c24xx_clear_bit.exit67_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %37) #12, !srcloc !306
  br label %sw.epilog

sw.default:                                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  %rx_irq = getelementptr i8, ptr %port, i32 -32
  %51 = ptrtoint ptr %rx_irq to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %rx_irq, align 4
  tail call void @disable_irq_nosync(i32 noundef %52) #12
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %s3c24xx_clear_bit.exit67, %s3c24xx_set_bit.exit
  %53 = ptrtoint ptr %rx_enabled to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 0, ptr %rx_enabled, align 2
  br label %if.end11

if.end11:                                         ; preds = %sw.epilog, %entry.if.end11_crit_edge
  %tobool12.not = icmp eq ptr %1, null
  br i1 %tobool12.not, label %if.end11.if.end23_crit_edge, label %land.lhs.true

if.end11.if.end23_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end23

land.lhs.true:                                    ; preds = %if.end11
  %rx_chan = getelementptr inbounds %struct.s3c24xx_uart_dma, ptr %1, i32 0, i32 4
  %54 = ptrtoint ptr %rx_chan to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %rx_chan, align 4
  %tobool13.not = icmp eq ptr %55, null
  br i1 %tobool13.not, label %land.lhs.true.if.end23_crit_edge, label %if.then14

land.lhs.true.if.end23_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end23

if.then14:                                        ; preds = %land.lhs.true
  %tx_chan = getelementptr inbounds %struct.s3c24xx_uart_dma, ptr %1, i32 0, i32 5
  %56 = ptrtoint ptr %tx_chan to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %tx_chan, align 4
  %58 = ptrtoint ptr %57 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %57, align 4
  %device_pause.i = getelementptr inbounds %struct.dma_device, ptr %59, i32 0, i32 45
  %60 = ptrtoint ptr %device_pause.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %device_pause.i, align 4
  %tobool.not.i68 = icmp eq ptr %61, null
  br i1 %tobool.not.i68, label %if.then14.dmaengine_pause.exit_crit_edge, label %if.then.i69

if.then14.dmaengine_pause.exit_crit_edge:         ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #14
  br label %dmaengine_pause.exit

if.then.i69:                                      ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #14
  %call.i = tail call i32 %61(ptr noundef %57) #12
  br label %dmaengine_pause.exit

dmaengine_pause.exit:                             ; preds = %if.then.i69, %if.then14.dmaengine_pause.exit_crit_edge
  %62 = ptrtoint ptr %rx_chan to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %rx_chan, align 4
  %rx_cookie = getelementptr inbounds %struct.s3c24xx_uart_dma, ptr %1, i32 0, i32 8
  %64 = ptrtoint ptr %rx_cookie to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %rx_cookie, align 4
  %66 = ptrtoint ptr %63 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %63, align 4
  %device_tx_status.i = getelementptr inbounds %struct.dma_device, ptr %67, i32 0, i32 49
  %68 = ptrtoint ptr %device_tx_status.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %device_tx_status.i, align 4
  %call.i70 = call i32 %69(ptr noundef %63, i32 noundef %65, ptr noundef nonnull %state3) #12
  %call17.off = add i32 %call.i70, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call17.off)
  %switch = icmp ult i32 %call17.off, 2
  br i1 %switch, label %if.then19, label %dmaengine_pause.exit.if.end23_crit_edge

dmaengine_pause.exit.if.end23_crit_edge:          ; preds = %dmaengine_pause.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end23

if.then19:                                        ; preds = %dmaengine_pause.exit
  %rx_bytes_requested = getelementptr inbounds %struct.s3c24xx_uart_dma, ptr %1, i32 0, i32 17
  %70 = ptrtoint ptr %rx_bytes_requested to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %rx_bytes_requested, align 4
  %72 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %4, align 4
  %sub = sub i32 %71, %73
  %74 = ptrtoint ptr %rx_chan to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %rx_chan, align 4
  %76 = ptrtoint ptr %75 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %75, align 4
  %device_terminate_all.i = getelementptr inbounds %struct.dma_device, ptr %77, i32 0, i32 47
  %78 = ptrtoint ptr %device_terminate_all.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %device_terminate_all.i, align 4
  %tobool.not.i71 = icmp eq ptr %79, null
  br i1 %tobool.not.i71, label %if.then19.dmaengine_terminate_all.exit_crit_edge, label %if.then.i73

if.then19.dmaengine_terminate_all.exit_crit_edge: ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #14
  br label %dmaengine_terminate_all.exit

if.then.i73:                                      ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #14
  %call.i72 = call i32 %79(ptr noundef %75) #12
  br label %dmaengine_terminate_all.exit

dmaengine_terminate_all.exit:                     ; preds = %if.then.i73, %if.then19.dmaengine_terminate_all.exit_crit_edge
  call fastcc void @s3c24xx_uart_copy_rx_to_tty(ptr noundef %add.ptr.i, ptr noundef %3, i32 noundef %sub)
  br label %if.end23

if.end23:                                         ; preds = %dmaengine_terminate_all.exit, %dmaengine_pause.exit.if.end23_crit_edge, %land.lhs.true.if.end23_crit_edge, %if.end11.if.end23_crit_edge
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %state3) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @s3c24xx_serial_break_ctl(ptr noundef %port, i32 noundef %break_state) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %port) #12
  %membase = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 2
  %0 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %membase, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 4
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #12, !srcloc !300
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %break_state)
  %tobool.not = icmp eq i32 %break_state, 0
  %3 = and i32 %2, -268435457
  %4 = tail call i32 @llvm.bswap.i32(i32 %3)
  %masksel = select i1 %tobool.not, i32 0, i32 16
  %ucon.0 = or i32 %4, %masksel
  %5 = tail call i32 @llvm.bswap.i32(i32 %ucon.0)
  %6 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %membase, align 4
  %add.ptr8 = getelementptr i8, ptr %7, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr8, i32 %5) #12, !srcloc !301
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %port, i32 noundef %call2) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @s3c24xx_serial_startup(ptr noundef %port) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %port, i32 -48
  %rx_enabled = getelementptr i8, ptr %port, i32 -46
  %0 = ptrtoint ptr %rx_enabled to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 1, ptr %rx_enabled, align 2
  %rx_irq = getelementptr i8, ptr %port, i32 -32
  %1 = ptrtoint ptr %rx_irq to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %rx_irq, align 4
  %dev.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 45
  %3 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dev.i, align 4
  %add.ptr.i43 = getelementptr i8, ptr %4, i32 -16
  %5 = ptrtoint ptr %add.ptr.i43 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %add.ptr.i43, align 8
  %call.i = tail call i32 @request_threaded_irq(i32 noundef %2, ptr noundef nonnull @s3c24xx_serial_rx_irq, ptr noundef null, i32 noundef 0, ptr noundef %6, ptr noundef %add.ptr.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.not = icmp eq i32 %call.i, 0
  br i1 %cmp.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %7 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev.i, align 4
  %9 = ptrtoint ptr %rx_irq to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %rx_irq, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %8, ptr noundef nonnull @.str.38, i32 noundef %10) #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %11 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 1, ptr %add.ptr.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @s3c24xx_serial_startup.__UNIQUE_ID_ddebug251, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@s3c24xx_serial_startup, %if.then8)) #12
          to label %do.end12 [label %if.then8], !srcloc !299

if.then8:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %12 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @s3c24xx_serial_startup.__UNIQUE_ID_ddebug251, ptr noundef %13, ptr noundef nonnull @.str.40) #12
  br label %do.end12

do.end12:                                         ; preds = %if.then8, %if.end
  %tx_enabled = getelementptr i8, ptr %port, i32 -45
  %14 = ptrtoint ptr %tx_enabled to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 1, ptr %tx_enabled, align 1
  %tx_irq = getelementptr i8, ptr %port, i32 -28
  %15 = ptrtoint ptr %tx_irq to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %tx_irq, align 4
  %17 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dev.i, align 4
  %add.ptr.i45 = getelementptr i8, ptr %18, i32 -16
  %19 = ptrtoint ptr %add.ptr.i45 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %add.ptr.i45, align 8
  %call.i46 = tail call i32 @request_threaded_irq(i32 noundef %16, ptr noundef nonnull @s3c24xx_serial_tx_irq, ptr noundef null, i32 noundef 0, ptr noundef %20, ptr noundef %add.ptr.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i46)
  %tobool15.not = icmp eq i32 %call.i46, 0
  br i1 %tobool15.not, label %if.end22, label %do.end19

do.end19:                                         ; preds = %do.end12
  %21 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dev.i, align 4
  %23 = ptrtoint ptr %tx_irq to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %tx_irq, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %22, ptr noundef nonnull @.str.38, i32 noundef %24) #15
  %tx_claimed.i = getelementptr i8, ptr %port, i32 -47
  %25 = ptrtoint ptr %tx_claimed.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %tx_claimed.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %26)
  %tobool.not.i = icmp eq i8 %26, 0
  br i1 %tobool.not.i, label %do.end19.if.end.i_crit_edge, label %if.then.i

do.end19.if.end.i_crit_edge:                      ; preds = %do.end19
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i

if.then.i:                                        ; preds = %do.end19
  call void @__sanitizer_cov_trace_pc() #14
  %27 = ptrtoint ptr %tx_irq to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %tx_irq, align 4
  %call1.i = tail call ptr @free_irq(i32 noundef %28, ptr noundef %add.ptr.i) #12
  %29 = ptrtoint ptr %tx_enabled to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 0, ptr %tx_enabled, align 1
  %30 = ptrtoint ptr %tx_claimed.i to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 0, ptr %tx_claimed.i, align 1
  %tx_mode.i = getelementptr i8, ptr %port, i32 -20
  %31 = ptrtoint ptr %tx_mode.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 0, ptr %tx_mode.i, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %do.end19.if.end.i_crit_edge
  %32 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %add.ptr.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %33)
  %tobool3.not.i = icmp eq i8 %33, 0
  br i1 %tobool3.not.i, label %if.end.i.if.end7.i_crit_edge, label %if.then4.i

if.end.i.if.end7.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end7.i

if.then4.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  %34 = ptrtoint ptr %rx_irq to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %rx_irq, align 4
  %call5.i = tail call ptr @free_irq(i32 noundef %35, ptr noundef %add.ptr.i) #12
  %36 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 0, ptr %add.ptr.i, align 4
  %37 = ptrtoint ptr %rx_enabled to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 0, ptr %rx_enabled, align 2
  br label %if.end7.i

if.end7.i:                                        ; preds = %if.then4.i, %if.end.i.if.end7.i_crit_edge
  %dma.i = getelementptr i8, ptr %port, i32 368
  %38 = ptrtoint ptr %dma.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %dma.i, align 4
  %tobool8.not.i = icmp eq ptr %39, null
  br i1 %tobool8.not.i, label %if.end7.i.s3c24xx_serial_shutdown.exit_crit_edge, label %if.then9.i

if.end7.i.s3c24xx_serial_shutdown.exit_crit_edge: ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %s3c24xx_serial_shutdown.exit

if.then9.i:                                       ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call fastcc void @s3c24xx_serial_release_dma(ptr noundef %add.ptr.i) #12
  br label %s3c24xx_serial_shutdown.exit

s3c24xx_serial_shutdown.exit:                     ; preds = %if.then9.i, %if.end7.i.s3c24xx_serial_shutdown.exit_crit_edge
  %tx_in_progress.i = getelementptr i8, ptr %port, i32 -24
  %40 = ptrtoint ptr %tx_in_progress.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 0, ptr %tx_in_progress.i, align 4
  br label %cleanup

if.end22:                                         ; preds = %do.end12
  call void @__sanitizer_cov_trace_pc() #14
  %tx_claimed = getelementptr i8, ptr %port, i32 -47
  %41 = ptrtoint ptr %tx_claimed to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 1, ptr %tx_claimed, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.end22, %s3c24xx_serial_shutdown.exit, %do.end
  %retval.0 = phi i32 [ %call.i, %do.end ], [ %call.i46, %s3c24xx_serial_shutdown.exit ], [ 0, %if.end22 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @s3c24xx_serial_shutdown(ptr noundef %port) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %port, i32 -48
  %tx_claimed = getelementptr i8, ptr %port, i32 -47
  %0 = ptrtoint ptr %tx_claimed to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %tx_claimed, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %tx_irq = getelementptr i8, ptr %port, i32 -28
  %2 = ptrtoint ptr %tx_irq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %tx_irq, align 4
  %call1 = tail call ptr @free_irq(i32 noundef %3, ptr noundef %add.ptr.i) #12
  %tx_enabled = getelementptr i8, ptr %port, i32 -45
  %4 = ptrtoint ptr %tx_enabled to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %tx_enabled, align 1
  %5 = ptrtoint ptr %tx_claimed to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 0, ptr %tx_claimed, align 1
  %tx_mode = getelementptr i8, ptr %port, i32 -20
  %6 = ptrtoint ptr %tx_mode to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %tx_mode, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %7 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %add.ptr.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool3.not = icmp eq i8 %8, 0
  br i1 %tobool3.not, label %if.end.if.end7_crit_edge, label %if.then4

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end7

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %rx_irq = getelementptr i8, ptr %port, i32 -32
  %9 = ptrtoint ptr %rx_irq to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %rx_irq, align 4
  %call5 = tail call ptr @free_irq(i32 noundef %10, ptr noundef %add.ptr.i) #12
  %11 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 0, ptr %add.ptr.i, align 4
  %rx_enabled = getelementptr i8, ptr %port, i32 -46
  %12 = ptrtoint ptr %rx_enabled to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 0, ptr %rx_enabled, align 2
  br label %if.end7

if.end7:                                          ; preds = %if.then4, %if.end.if.end7_crit_edge
  %dma = getelementptr i8, ptr %port, i32 368
  %13 = ptrtoint ptr %dma to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dma, align 4
  %tobool8.not = icmp eq ptr %14, null
  br i1 %tobool8.not, label %if.end7.if.end10_crit_edge, label %if.then9

if.end7.if.end10_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end10

if.then9:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #14
  tail call fastcc void @s3c24xx_serial_release_dma(ptr noundef %add.ptr.i)
  br label %if.end10

if.end10:                                         ; preds = %if.then9, %if.end7.if.end10_crit_edge
  %tx_in_progress = getelementptr i8, ptr %port, i32 -24
  %15 = ptrtoint ptr %tx_in_progress to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %tx_in_progress, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @s3c24xx_serial_set_termios(ptr noundef %port, ptr noundef %termios, ptr noundef %old) #3 align 64 {
entry:
  %clkname.i = alloca [15 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %dev.i = getelementptr %struct.uart_port, ptr %port, i32 0, i32 45
  %0 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev.i, align 4
  %cmp.i = icmp eq ptr %1, null
  br i1 %cmp.i, label %entry.s3c24xx_port_to_cfg.exit_crit_edge, label %if.end.i

entry.s3c24xx_port_to_cfg.exit_crit_edge:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %s3c24xx_port_to_cfg.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %cfg.i = getelementptr i8, ptr %port, i32 364
  %2 = ptrtoint ptr %cfg.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cfg.i, align 4
  br label %s3c24xx_port_to_cfg.exit

s3c24xx_port_to_cfg.exit:                         ; preds = %if.end.i, %entry.s3c24xx_port_to_cfg.exit_crit_edge
  %retval.0.i384 = phi ptr [ %3, %if.end.i ], [ null, %entry.s3c24xx_port_to_cfg.exit_crit_edge ]
  %c_cflag = getelementptr inbounds %struct.ktermios, ptr %termios, i32 0, i32 2
  %4 = ptrtoint ptr %c_cflag to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %c_cflag, align 4
  %and = and i32 %5, -1073744897
  %or = or i32 %and, 2048
  store i32 %or, ptr %c_cflag, align 4
  %call4 = tail call i32 @uart_get_baud_rate(ptr noundef %port, ptr noundef %termios, ptr noundef %old, i32 noundef 0, i32 noundef 3000000) #12
  %info1.i = getelementptr i8, ptr %port, i32 -12
  %6 = ptrtoint ptr %info1.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %info1.i, align 4
  call void @llvm.lifetime.start.p0(i64 15, ptr nonnull %clkname.i) #12
  %num_clks.i = getelementptr inbounds %struct.s3c24xx_uart_info, ptr %7, i32 0, i32 11
  %8 = call ptr @memset(ptr %clkname.i, i32 255, i32 15)
  %9 = ptrtoint ptr %num_clks.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %num_clks.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp56.not.i = icmp eq i32 %10, 0
  br i1 %cmp56.not.i, label %s3c24xx_port_to_cfg.exit.s3c24xx_serial_getclk.exit_crit_edge, label %for.body.lr.ph.i

s3c24xx_port_to_cfg.exit.s3c24xx_serial_getclk.exit_crit_edge: ; preds = %s3c24xx_port_to_cfg.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %s3c24xx_serial_getclk.exit

for.body.lr.ph.i:                                 ; preds = %s3c24xx_port_to_cfg.exit
  %cfg.i385 = getelementptr i8, ptr %port, i32 364
  %mul.i = shl i32 %call4, 3
  %mul20.i = shl i32 %call4, 4
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %clk.0 = phi ptr [ inttoptr (i32 -22 to ptr), %for.body.lr.ph.i ], [ %clk.1, %for.inc.i.for.body.i_crit_edge ]
  %clk_sel.0 = phi i32 [ 0, %for.body.lr.ph.i ], [ %clk_sel.1, %for.inc.i.for.body.i_crit_edge ]
  %deviation.062.i = phi i32 [ 1073741823, %for.body.lr.ph.i ], [ %deviation.1.i, %for.inc.i.for.body.i_crit_edge ]
  %best_quot.060.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %best_quot.1.i, %for.inc.i.for.body.i_crit_edge ]
  %cnt.057.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %11 = ptrtoint ptr %cfg.i385 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %cfg.i385, align 4
  %clk_sel.i = getelementptr inbounds %struct.s3c2410_uartcfg, ptr %12, i32 0, i32 4
  %13 = ptrtoint ptr %clk_sel.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %clk_sel.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool.not.i = icmp eq i32 %14, 0
  br i1 %tobool.not.i, label %for.body.i.if.end.i387_crit_edge, label %land.lhs.true.i

for.body.i.if.end.i387_crit_edge:                 ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i387

land.lhs.true.i:                                  ; preds = %for.body.i
  %shl.i = shl nuw i32 1, %cnt.057.i
  %and.i = and i32 %14, %shl.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool4.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool4.not.i, label %land.lhs.true.i.for.inc.i_crit_edge, label %land.lhs.true.i.if.end.i387_crit_edge

land.lhs.true.i.if.end.i387_crit_edge:            ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i387

land.lhs.true.i.for.inc.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i

if.end.i387:                                      ; preds = %land.lhs.true.i.if.end.i387_crit_edge, %for.body.i.if.end.i387_crit_edge
  %call.i = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %clkname.i, ptr noundef nonnull @.str.57, i32 noundef %cnt.057.i) #12
  %15 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dev.i, align 4
  %call6.i = call ptr @clk_get(ptr noundef %16, ptr noundef nonnull %clkname.i) #12
  %cmp.i.i = icmp ugt ptr %call6.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.end.i387.for.inc.i_crit_edge, label %if.end9.i

if.end.i387.for.inc.i_crit_edge:                  ; preds = %if.end.i387
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i

if.end9.i:                                        ; preds = %if.end.i387
  %call10.i = call i32 @clk_get_rate(ptr noundef %call6.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10.i)
  %tobool11.not.i = icmp eq i32 %call10.i, 0
  br i1 %tobool11.not.i, label %if.end9.i.for.inc.i_crit_edge, label %if.end13.i

if.end9.i.for.inc.i_crit_edge:                    ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i

if.end13.i:                                       ; preds = %if.end9.i
  %17 = ptrtoint ptr %info1.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %info1.i, align 4
  %has_divslot.i = getelementptr inbounds %struct.s3c24xx_uart_info, ptr %18, i32 0, i32 15
  %19 = ptrtoint ptr %has_divslot.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %bf.load.i = load i8, ptr %has_divslot.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i)
  %tobool15.not.i = icmp sgt i8 %bf.load.i, -1
  br i1 %tobool15.not.i, label %if.else.i, label %if.then16.i

if.then16.i:                                      ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #14
  %div17.i = udiv i32 %call10.i, %call4
  %div1855.i = lshr i32 %div17.i, 4
  br label %if.end24.i

if.else.i:                                        ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #14
  %add.i = add i32 %call10.i, %mul.i
  %div21.i = udiv i32 %add.i, %mul20.i
  %mul22.i = shl i32 %div21.i, 4
  br label %if.end24.i

if.end24.i:                                       ; preds = %if.else.i, %if.then16.i
  %div17.pn.i = phi i32 [ %div17.i, %if.then16.i ], [ %mul22.i, %if.else.i ]
  %quot.0.i = phi i32 [ %div1855.i, %if.then16.i ], [ %div21.i, %if.else.i ]
  %baud.0.i = udiv i32 %call10.i, %div17.pn.i
  %sub.i = sub i32 %call4, %baud.0.i
  %20 = call i32 @llvm.abs.i32(i32 %sub.i, i1 false) #12
  call void @__sanitizer_cov_trace_cmp4(i32 %20, i32 %deviation.062.i)
  %cmp29.i = icmp slt i32 %20, %deviation.062.i
  br i1 %cmp29.i, label %if.then30.i, label %if.end24.i.for.inc.i_crit_edge

if.end24.i.for.inc.i_crit_edge:                   ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i

if.then30.i:                                      ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #14
  %dec.i = add i32 %quot.0.i, -1
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then30.i, %if.end24.i.for.inc.i_crit_edge, %if.end9.i.for.inc.i_crit_edge, %if.end.i387.for.inc.i_crit_edge, %land.lhs.true.i.for.inc.i_crit_edge
  %clk.1 = phi ptr [ %clk.0, %if.end.i387.for.inc.i_crit_edge ], [ %clk.0, %if.end9.i.for.inc.i_crit_edge ], [ %call6.i, %if.then30.i ], [ %clk.0, %if.end24.i.for.inc.i_crit_edge ], [ %clk.0, %land.lhs.true.i.for.inc.i_crit_edge ]
  %clk_sel.1 = phi i32 [ %clk_sel.0, %if.end.i387.for.inc.i_crit_edge ], [ %clk_sel.0, %if.end9.i.for.inc.i_crit_edge ], [ %cnt.057.i, %if.then30.i ], [ %clk_sel.0, %if.end24.i.for.inc.i_crit_edge ], [ %clk_sel.0, %land.lhs.true.i.for.inc.i_crit_edge ]
  %best_quot.1.i = phi i32 [ %best_quot.060.i, %if.end.i387.for.inc.i_crit_edge ], [ %best_quot.060.i, %if.end9.i.for.inc.i_crit_edge ], [ %dec.i, %if.then30.i ], [ %best_quot.060.i, %if.end24.i.for.inc.i_crit_edge ], [ %best_quot.060.i, %land.lhs.true.i.for.inc.i_crit_edge ]
  %deviation.1.i = phi i32 [ %deviation.062.i, %if.end.i387.for.inc.i_crit_edge ], [ %deviation.062.i, %if.end9.i.for.inc.i_crit_edge ], [ %20, %if.then30.i ], [ %deviation.062.i, %if.end24.i.for.inc.i_crit_edge ], [ %deviation.062.i, %land.lhs.true.i.for.inc.i_crit_edge ]
  %inc.i = add nuw i32 %cnt.057.i, 1
  %21 = ptrtoint ptr %num_clks.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %num_clks.i, align 4
  %cmp.i388 = icmp ult i32 %inc.i, %22
  br i1 %cmp.i388, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.s3c24xx_serial_getclk.exit_crit_edge

for.inc.i.s3c24xx_serial_getclk.exit_crit_edge:   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %s3c24xx_serial_getclk.exit

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i

s3c24xx_serial_getclk.exit:                       ; preds = %for.inc.i.s3c24xx_serial_getclk.exit_crit_edge, %s3c24xx_port_to_cfg.exit.s3c24xx_serial_getclk.exit_crit_edge
  %clk.2 = phi ptr [ inttoptr (i32 -22 to ptr), %s3c24xx_port_to_cfg.exit.s3c24xx_serial_getclk.exit_crit_edge ], [ %clk.1, %for.inc.i.s3c24xx_serial_getclk.exit_crit_edge ]
  %clk_sel.2 = phi i32 [ 0, %s3c24xx_port_to_cfg.exit.s3c24xx_serial_getclk.exit_crit_edge ], [ %clk_sel.1, %for.inc.i.s3c24xx_serial_getclk.exit_crit_edge ]
  %best_quot.0.lcssa.i = phi i32 [ 0, %s3c24xx_port_to_cfg.exit.s3c24xx_serial_getclk.exit_crit_edge ], [ %best_quot.1.i, %for.inc.i.s3c24xx_serial_getclk.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 15, ptr nonnull %clkname.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 38400, i32 %call4)
  %cmp = icmp eq i32 %call4, 38400
  br i1 %cmp, label %land.lhs.true, label %s3c24xx_serial_getclk.exit.if.end_crit_edge

s3c24xx_serial_getclk.exit.if.end_crit_edge:      ; preds = %s3c24xx_serial_getclk.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

land.lhs.true:                                    ; preds = %s3c24xx_serial_getclk.exit
  %flags6 = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 33
  %23 = ptrtoint ptr %flags6 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %flags6, align 4
  %and7 = and i32 %24, 4144
  call void @__sanitizer_cov_trace_const_cmp4(i32 48, i32 %and7)
  %cmp8 = icmp eq i32 %and7, 48
  br i1 %cmp8, label %if.then, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  %custom_divisor = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 40
  %25 = ptrtoint ptr %custom_divisor to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %custom_divisor, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %s3c24xx_serial_getclk.exit.if.end_crit_edge
  %quot.0 = phi i32 [ %26, %if.then ], [ %best_quot.0.lcssa.i, %land.lhs.true.if.end_crit_edge ], [ %best_quot.0.lcssa.i, %s3c24xx_serial_getclk.exit.if.end_crit_edge ]
  %cmp.i389 = icmp ugt ptr %clk.2, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i389, label %if.end.cleanup_crit_edge, label %if.end11

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end11:                                         ; preds = %if.end
  %baudclk = getelementptr i8, ptr %port, i32 -4
  %27 = ptrtoint ptr %baudclk to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %baudclk, align 4
  %cmp12.not = icmp eq ptr %28, %clk.2
  br i1 %cmp12.not, label %if.end11.if.end24_crit_edge, label %if.then13

if.end11.if.end24_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end24

if.then13:                                        ; preds = %if.end11
  %call.i390 = call i32 @clk_prepare(ptr noundef %clk.2) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i390)
  %tobool.not.i391 = icmp eq i32 %call.i390, 0
  br i1 %tobool.not.i391, label %if.end.i392, label %if.then13.clk_prepare_enable.exit_crit_edge

if.then13.clk_prepare_enable.exit_crit_edge:      ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #14
  br label %clk_prepare_enable.exit

if.end.i392:                                      ; preds = %if.then13
  %call1.i = call i32 @clk_enable(ptr noundef %clk.2) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end.i392.clk_prepare_enable.exit_crit_edge, label %if.then3.i

if.end.i392.clk_prepare_enable.exit_crit_edge:    ; preds = %if.end.i392
  call void @__sanitizer_cov_trace_pc() #14
  br label %clk_prepare_enable.exit

if.then3.i:                                       ; preds = %if.end.i392
  call void @__sanitizer_cov_trace_pc() #14
  call void @clk_unprepare(ptr noundef %clk.2) #12
  br label %clk_prepare_enable.exit

clk_prepare_enable.exit:                          ; preds = %if.then3.i, %if.end.i392.clk_prepare_enable.exit_crit_edge, %if.then13.clk_prepare_enable.exit_crit_edge
  %29 = ptrtoint ptr %info1.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %info1.i, align 4
  %num_clks.i394 = getelementptr inbounds %struct.s3c24xx_uart_info, ptr %30, i32 0, i32 11
  %31 = ptrtoint ptr %num_clks.i394 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %num_clks.i394, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %32)
  %cmp.i395 = icmp eq i32 %32, 1
  br i1 %cmp.i395, label %clk_prepare_enable.exit.s3c24xx_serial_setsource.exit_crit_edge, label %if.end.i398

clk_prepare_enable.exit.s3c24xx_serial_setsource.exit_crit_edge: ; preds = %clk_prepare_enable.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %s3c24xx_serial_setsource.exit

if.end.i398:                                      ; preds = %clk_prepare_enable.exit
  %membase.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 2
  %33 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %membase.i, align 4
  %add.ptr.i396 = getelementptr i8, ptr %34, i32 4
  %35 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i396) #12, !srcloc !300
  %36 = call i32 @llvm.bswap.i32(i32 %35) #12
  %clksel_mask.i = getelementptr inbounds %struct.s3c24xx_uart_info, ptr %30, i32 0, i32 12
  %37 = ptrtoint ptr %clksel_mask.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %clksel_mask.i, align 4
  %and.i397 = and i32 %36, %38
  %clksel_shift.i = getelementptr inbounds %struct.s3c24xx_uart_info, ptr %30, i32 0, i32 13
  %39 = ptrtoint ptr %clksel_shift.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %clksel_shift.i, align 4
  %shr.i = lshr i32 %and.i397, %40
  call void @__sanitizer_cov_trace_cmp4(i32 %shr.i, i32 %clk_sel.2)
  %cmp2.i = icmp eq i32 %shr.i, %clk_sel.2
  br i1 %cmp2.i, label %if.end.i398.s3c24xx_serial_setsource.exit_crit_edge, label %if.end4.i

if.end.i398.s3c24xx_serial_setsource.exit_crit_edge: ; preds = %if.end.i398
  call void @__sanitizer_cov_trace_pc() #14
  br label %s3c24xx_serial_setsource.exit

if.end4.i:                                        ; preds = %if.end.i398
  call void @__sanitizer_cov_trace_pc() #14
  %neg.i = xor i32 %38, -1
  %and6.i = and i32 %36, %neg.i
  %shl.i399 = shl i32 %clk_sel.2, %40
  %or.i = or i32 %shl.i399, %and6.i
  %41 = call i32 @llvm.bswap.i32(i32 %or.i) #12
  %42 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %membase.i, align 4
  %add.ptr9.i = getelementptr i8, ptr %43, i32 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr9.i, i32 %41) #12, !srcloc !301
  br label %s3c24xx_serial_setsource.exit

s3c24xx_serial_setsource.exit:                    ; preds = %if.end4.i, %if.end.i398.s3c24xx_serial_setsource.exit_crit_edge, %clk_prepare_enable.exit.s3c24xx_serial_setsource.exit_crit_edge
  %44 = ptrtoint ptr %baudclk to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %baudclk, align 4
  %cmp.i400 = icmp ugt ptr %45, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i400, label %s3c24xx_serial_setsource.exit.if.end21_crit_edge, label %if.then17

s3c24xx_serial_setsource.exit.if.end21_crit_edge: ; preds = %s3c24xx_serial_setsource.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end21

if.then17:                                        ; preds = %s3c24xx_serial_setsource.exit
  call void @__sanitizer_cov_trace_pc() #14
  call void @clk_disable(ptr noundef %45) #12
  call void @clk_unprepare(ptr noundef %45) #12
  br label %if.end21

if.end21:                                         ; preds = %if.then17, %s3c24xx_serial_setsource.exit.if.end21_crit_edge
  %46 = ptrtoint ptr %baudclk to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %clk.2, ptr %baudclk, align 4
  %tobool.not = icmp eq ptr %clk.2, null
  br i1 %tobool.not, label %if.end21.cond.end_crit_edge, label %cond.true

if.end21.cond.end_crit_edge:                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.end

cond.true:                                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #14
  %call23 = call i32 @clk_get_rate(ptr noundef nonnull %clk.2) #12
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %if.end21.cond.end_crit_edge
  %cond = phi i32 [ %call23, %cond.true ], [ 0, %if.end21.cond.end_crit_edge ]
  %baudclk_rate = getelementptr i8, ptr %port, i32 -40
  %47 = ptrtoint ptr %baudclk_rate to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %cond, ptr %baudclk_rate, align 4
  br label %if.end24

if.end24:                                         ; preds = %cond.end, %if.end11.if.end24_crit_edge
  %48 = ptrtoint ptr %info1.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %info1.i, align 4
  %has_divslot = getelementptr inbounds %struct.s3c24xx_uart_info, ptr %49, i32 0, i32 15
  %50 = ptrtoint ptr %has_divslot to i32
  call void @__asan_load1_noabort(i32 %50)
  %bf.load = load i8, ptr %has_divslot, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool25.not = icmp sgt i8 %bf.load, -1
  br i1 %tobool25.not, label %if.end24.if.end58_crit_edge, label %if.then26

if.end24.if.end58_crit_edge:                      ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end58

if.then26:                                        ; preds = %if.end24
  %baudclk_rate27 = getelementptr i8, ptr %port, i32 -40
  %51 = ptrtoint ptr %baudclk_rate27 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %baudclk_rate27, align 4
  %div28 = udiv i32 %52, %call4
  %has_fracval = getelementptr inbounds %struct.s3c2410_uartcfg, ptr %retval.0.i384, i32 0, i32 5
  %53 = ptrtoint ptr %has_fracval to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %has_fracval, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %54)
  %tobool29.not = icmp eq i32 %54, 0
  %and38 = and i32 %div28, 15
  br i1 %tobool29.not, label %if.else, label %if.then30

if.then30:                                        ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @s3c24xx_serial_set_termios.__UNIQUE_ID_ddebug252, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@s3c24xx_serial_set_termios, %if.then36)) #12
          to label %if.end58 [label %if.then36], !srcloc !299

if.then36:                                        ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #14
  %55 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %dev.i, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @s3c24xx_serial_set_termios.__UNIQUE_ID_ddebug252, ptr noundef %56, ptr noundef nonnull @.str.49, i32 noundef %and38) #12
  br label %if.end58

if.else:                                          ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #14
  %arrayidx = getelementptr [16 x i16], ptr @udivslot_table, i32 0, i32 %and38
  %57 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %57)
  %58 = load i16, ptr %arrayidx, align 2
  %conv = zext i16 %58 to i32
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @s3c24xx_serial_set_termios.__UNIQUE_ID_ddebug253, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@s3c24xx_serial_set_termios, %if.then51)) #12
          to label %if.end58 [label %if.then51], !srcloc !299

if.then51:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  %59 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %dev.i, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @s3c24xx_serial_set_termios.__UNIQUE_ID_ddebug253, ptr noundef %60, ptr noundef nonnull @.str.50, i32 noundef %conv, i32 noundef %and38) #12
  br label %if.end58

if.end58:                                         ; preds = %if.then51, %if.else, %if.then36, %if.then30, %if.end24.if.end58_crit_edge
  %udivslot.1 = phi i32 [ 0, %if.end24.if.end58_crit_edge ], [ %and38, %if.then36 ], [ %conv, %if.then51 ], [ %and38, %if.then30 ], [ %conv, %if.else ]
  %61 = ptrtoint ptr %c_cflag to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %c_cflag, align 4
  %and60 = lshr i32 %62, 4
  %63 = and i32 %and60, 3
  %64 = zext i32 %63 to i64
  call void @__sanitizer_cov_trace_switch(i64 %64, ptr @__sancov_gen_cov_switch_values.123)
  switch i32 %63, label %if.end58.unreachabledefault [
    i32 0, label %do.body61
    i32 1, label %do.body79
    i32 2, label %do.body97
    i32 3, label %do.body115
  ]

do.body61:                                        ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @s3c24xx_serial_set_termios.__UNIQUE_ID_ddebug254, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@s3c24xx_serial_set_termios, %if.then73)) #12
          to label %sw.epilog [label %if.then73], !srcloc !299

if.then73:                                        ; preds = %do.body61
  call void @__sanitizer_cov_trace_pc() #14
  %65 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %dev.i, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @s3c24xx_serial_set_termios.__UNIQUE_ID_ddebug254, ptr noundef %66, ptr noundef nonnull @.str.51) #12
  br label %sw.epilog

do.body79:                                        ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @s3c24xx_serial_set_termios.__UNIQUE_ID_ddebug255, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@s3c24xx_serial_set_termios, %if.then91)) #12
          to label %sw.epilog [label %if.then91], !srcloc !299

if.then91:                                        ; preds = %do.body79
  call void @__sanitizer_cov_trace_pc() #14
  %67 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %dev.i, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @s3c24xx_serial_set_termios.__UNIQUE_ID_ddebug255, ptr noundef %68, ptr noundef nonnull @.str.52) #12
  br label %sw.epilog

do.body97:                                        ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @s3c24xx_serial_set_termios.__UNIQUE_ID_ddebug256, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@s3c24xx_serial_set_termios, %if.then109)) #12
          to label %sw.epilog [label %if.then109], !srcloc !299

if.then109:                                       ; preds = %do.body97
  call void @__sanitizer_cov_trace_pc() #14
  %69 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %dev.i, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @s3c24xx_serial_set_termios.__UNIQUE_ID_ddebug256, ptr noundef %70, ptr noundef nonnull @.str.53) #12
  br label %sw.epilog

if.end58.unreachabledefault:                      ; preds = %if.end58
  unreachable

do.body115:                                       ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @s3c24xx_serial_set_termios.__UNIQUE_ID_ddebug257, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@s3c24xx_serial_set_termios, %if.then127)) #12
          to label %sw.epilog [label %if.then127], !srcloc !299

if.then127:                                       ; preds = %do.body115
  call void @__sanitizer_cov_trace_pc() #14
  %71 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %dev.i, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @s3c24xx_serial_set_termios.__UNIQUE_ID_ddebug257, ptr noundef %72, ptr noundef nonnull @.str.54) #12
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then127, %do.body115, %if.then109, %do.body97, %if.then91, %do.body79, %if.then73, %do.body61
  %ulcon132 = getelementptr inbounds %struct.s3c2410_uartcfg, ptr %retval.0.i384, i32 0, i32 7
  %73 = ptrtoint ptr %ulcon132 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %ulcon132, align 4
  %and133 = and i32 %74, 64
  %or134 = or i32 %and133, %63
  %75 = ptrtoint ptr %c_cflag to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %c_cflag, align 4
  %and136 = lshr i32 %76, 4
  %77 = and i32 %and136, 4
  %78 = or i32 %or134, %77
  %and142 = and i32 %76, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and142)
  %tobool143.not = icmp eq i32 %and142, 0
  br i1 %tobool143.not, label %sw.epilog.do.body157_crit_edge, label %if.then144

sw.epilog.do.body157_crit_edge:                   ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body157

if.then144:                                       ; preds = %sw.epilog
  %and146 = and i32 %76, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and146)
  %tobool147.not = icmp eq i32 %and146, 0
  br i1 %tobool147.not, label %if.else150, label %if.then148

if.then148:                                       ; preds = %if.then144
  call void @__sanitizer_cov_trace_pc() #14
  %or149 = or i32 %78, 32
  br label %do.body157

if.else150:                                       ; preds = %if.then144
  call void @__sanitizer_cov_trace_pc() #14
  %or151 = or i32 %78, 40
  br label %do.body157

do.body157:                                       ; preds = %if.else150, %if.then148, %sw.epilog.do.body157_crit_edge
  %ulcon.2 = phi i32 [ %or149, %if.then148 ], [ %or151, %if.else150 ], [ %78, %sw.epilog.do.body157_crit_edge ]
  %call162 = call i32 @_raw_spin_lock_irqsave(ptr noundef %port) #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @s3c24xx_serial_set_termios.__UNIQUE_ID_ddebug258, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@s3c24xx_serial_set_termios, %if.then179)) #12
          to label %do.end183 [label %if.then179], !srcloc !299

if.then179:                                       ; preds = %do.body157
  call void @__sanitizer_cov_trace_pc() #14
  %79 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %dev.i, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @s3c24xx_serial_set_termios.__UNIQUE_ID_ddebug258, ptr noundef %80, ptr noundef nonnull @.str.55, i32 noundef %ulcon.2, i32 noundef %quot.0, i32 noundef %udivslot.1) #12
  br label %do.end183

do.end183:                                        ; preds = %if.then179, %do.body157
  %81 = call i32 @llvm.bswap.i32(i32 %ulcon.2)
  %membase = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 2
  %82 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %membase, align 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %83, i32 %81) #12, !srcloc !301
  %84 = call i32 @llvm.bswap.i32(i32 %quot.0)
  %85 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %membase, align 4
  %add.ptr185 = getelementptr i8, ptr %86, i32 40
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr185, i32 %84) #12, !srcloc !301
  %status = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 34
  %87 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %status, align 4
  %and186 = and i32 %88, -9
  store i32 %and186, ptr %status, align 4
  %89 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %membase, align 4
  %add.ptr188 = getelementptr i8, ptr %90, i32 12
  %91 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr188) #12, !srcloc !300
  %92 = call i32 @llvm.bswap.i32(i32 %91)
  %93 = ptrtoint ptr %c_cflag to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %c_cflag, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %94)
  %tobool193.not = icmp sgt i32 %94, -1
  br i1 %tobool193.not, label %if.else198, label %if.then194

if.then194:                                       ; preds = %do.end183
  call void @__sanitizer_cov_trace_pc() #14
  %or195 = and i32 %92, -241
  %and196 = or i32 %or195, 16
  %95 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %95)
  store i32 8, ptr %status, align 4
  br label %if.end200

if.else198:                                       ; preds = %do.end183
  call void @__sanitizer_cov_trace_pc() #14
  %and199 = and i32 %92, -17
  br label %if.end200

if.end200:                                        ; preds = %if.else198, %if.then194
  %umcon.0 = phi i32 [ %and196, %if.then194 ], [ %and199, %if.else198 ]
  %96 = call i32 @llvm.bswap.i32(i32 %umcon.0)
  %97 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %membase, align 4
  %add.ptr202 = getelementptr i8, ptr %98, i32 12
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr202, i32 %96) #12, !srcloc !301
  %99 = ptrtoint ptr %info1.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %info1.i, align 4
  %has_divslot204 = getelementptr inbounds %struct.s3c24xx_uart_info, ptr %100, i32 0, i32 15
  %101 = ptrtoint ptr %has_divslot204 to i32
  call void @__asan_load1_noabort(i32 %101)
  %bf.load205 = load i8, ptr %has_divslot204, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load205)
  %tobool208.not = icmp sgt i8 %bf.load205, -1
  br i1 %tobool208.not, label %if.end200.do.body213_crit_edge, label %if.then209

if.end200.do.body213_crit_edge:                   ; preds = %if.end200
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body213

if.then209:                                       ; preds = %if.end200
  call void @__sanitizer_cov_trace_pc() #14
  %102 = call i32 @llvm.bswap.i32(i32 %udivslot.1)
  %103 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %membase, align 4
  %add.ptr211 = getelementptr i8, ptr %104, i32 44
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr211, i32 %102) #12, !srcloc !301
  br label %do.body213

do.body213:                                       ; preds = %if.then209, %if.end200.do.body213_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @s3c24xx_serial_set_termios.__UNIQUE_ID_ddebug259, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@s3c24xx_serial_set_termios, %if.then225)) #12
          to label %do.end244 [label %if.then225], !srcloc !299

if.then225:                                       ; preds = %do.body213
  call void @__sanitizer_cov_trace_pc() #14
  %105 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %dev.i, align 4
  %107 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %membase, align 4
  %109 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %108) #12, !srcloc !300
  %110 = call i32 @llvm.bswap.i32(i32 %109)
  %111 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %membase, align 4
  %add.ptr234 = getelementptr i8, ptr %112, i32 4
  %113 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr234) #12, !srcloc !300
  %114 = call i32 @llvm.bswap.i32(i32 %113)
  %115 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %membase, align 4
  %add.ptr239 = getelementptr i8, ptr %116, i32 8
  %117 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr239) #12, !srcloc !300
  %118 = call i32 @llvm.bswap.i32(i32 %117)
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @s3c24xx_serial_set_termios.__UNIQUE_ID_ddebug259, ptr noundef %106, ptr noundef nonnull @.str.56, i32 noundef %110, i32 noundef %114, i32 noundef %118) #12
  br label %do.end244

do.end244:                                        ; preds = %if.then225, %do.body213
  %119 = ptrtoint ptr %c_cflag to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %c_cflag, align 4
  call void @uart_update_timeout(ptr noundef %port, i32 noundef %120, i32 noundef %call4) #12
  %read_status_mask = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 28
  %121 = ptrtoint ptr %read_status_mask to i32
  call void @__asan_store4_noabort(i32 %121)
  store i32 1, ptr %read_status_mask, align 4
  %122 = ptrtoint ptr %termios to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %termios, align 4
  %and246 = and i32 %123, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and246)
  %tobool247.not = icmp eq i32 %and246, 0
  %spec.store.select = select i1 %tobool247.not, i32 1, i32 4101
  %124 = ptrtoint ptr %read_status_mask to i32
  call void @__asan_store4_noabort(i32 %124)
  store i32 %spec.store.select, ptr %read_status_mask, align 4
  %ignore_status_mask = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 29
  %125 = ptrtoint ptr %ignore_status_mask to i32
  call void @__asan_store4_noabort(i32 %125)
  store i32 0, ptr %ignore_status_mask, align 4
  %126 = ptrtoint ptr %termios to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %termios, align 4
  %and253 = lshr i32 %127, 2
  %and253.lobit = and i32 %and253, 1
  store i32 %and253.lobit, ptr %ignore_status_mask, align 4
  %128 = load i32, ptr %termios, align 4
  %129 = and i32 %128, 5
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %129)
  %.not = icmp eq i32 %129, 5
  br i1 %.not, label %if.then266, label %do.end244.if.end269_crit_edge

do.end244.if.end269_crit_edge:                    ; preds = %do.end244
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end269

if.then266:                                       ; preds = %do.end244
  call void @__sanitizer_cov_trace_pc() #14
  %or268 = or i32 %and253.lobit, 4
  %130 = ptrtoint ptr %ignore_status_mask to i32
  call void @__asan_store4_noabort(i32 %130)
  store i32 %or268, ptr %ignore_status_mask, align 4
  br label %if.end269

if.end269:                                        ; preds = %if.then266, %do.end244.if.end269_crit_edge
  %131 = ptrtoint ptr %c_cflag to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load i32, ptr %c_cflag, align 4
  %and271 = and i32 %132, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and271)
  %cmp272 = icmp eq i32 %and271, 0
  br i1 %cmp272, label %if.then274, label %if.end269.if.end277_crit_edge

if.end269.if.end277_crit_edge:                    ; preds = %if.end269
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end277

if.then274:                                       ; preds = %if.end269
  call void @__sanitizer_cov_trace_pc() #14
  %133 = ptrtoint ptr %ignore_status_mask to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %ignore_status_mask, align 4
  %or276 = or i32 %134, 268435456
  store i32 %or276, ptr %ignore_status_mask, align 4
  br label %if.end277

if.end277:                                        ; preds = %if.then274, %if.end269.if.end277_crit_edge
  call void @_raw_spin_unlock_irqrestore(ptr noundef %port, i32 noundef %call162) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end277, %if.end.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @s3c24xx_serial_pm(ptr nocapture noundef %port, i32 noundef %level, i32 noundef %old) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %pm_level = getelementptr i8, ptr %port, i32 -44
  %0 = ptrtoint ptr %pm_level to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %level, ptr %pm_level, align 4
  %1 = zext i32 %level to i64
  call void @__sanitizer_cov_trace_switch(i64 %1, ptr @__sancov_gen_cov_switch_values.124)
  switch i32 %level, label %do.end [
    i32 3, label %while.cond.preheader
    i32 0, label %sw.bb5
  ]

while.cond.preheader:                             ; preds = %entry
  %membase.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 2
  br label %land.rhs

land.rhs:                                         ; preds = %while.body.land.rhs_crit_edge, %while.cond.preheader
  %dec34 = phi i32 [ 9999, %while.cond.preheader ], [ %dec, %while.body.land.rhs_crit_edge ]
  %2 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %membase.i, align 4
  %add.ptr.i24 = getelementptr i8, ptr %3, i32 16
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i24) #12, !srcloc !300
  %5 = and i32 %4, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool2.not = icmp eq i32 %5, 0
  br i1 %tobool2.not, label %while.body, label %land.rhs.while.end_crit_edge

land.rhs.while.end_crit_edge:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end

while.body:                                       ; preds = %land.rhs
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %6 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %6(i32 noundef 21474800) #12
  %dec = add nsw i32 %dec34, -1
  %tobool.not = icmp eq i32 %dec, 0
  br i1 %tobool.not, label %while.body.while.end_crit_edge, label %while.body.land.rhs_crit_edge

while.body.land.rhs_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.rhs

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end

while.end:                                        ; preds = %while.body.while.end_crit_edge, %land.rhs.while.end_crit_edge
  %baudclk = getelementptr i8, ptr %port, i32 -4
  %7 = ptrtoint ptr %baudclk to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %baudclk, align 4
  %cmp.i = icmp ugt ptr %8, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %while.end.if.end_crit_edge, label %if.then

while.end.if.end_crit_edge:                       ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @clk_disable(ptr noundef %8) #12
  tail call void @clk_unprepare(ptr noundef %8) #12
  br label %if.end

if.end:                                           ; preds = %if.then, %while.end.if.end_crit_edge
  %clk = getelementptr i8, ptr %port, i32 -8
  %9 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %clk, align 4
  tail call void @clk_disable(ptr noundef %10) #12
  tail call void @clk_unprepare(ptr noundef %10) #12
  br label %sw.epilog

sw.bb5:                                           ; preds = %entry
  %clk6 = getelementptr i8, ptr %port, i32 -8
  %11 = ptrtoint ptr %clk6 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %clk6, align 4
  %call.i = tail call i32 @clk_prepare(ptr noundef %12) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %sw.bb5.clk_prepare_enable.exit_crit_edge

sw.bb5.clk_prepare_enable.exit_crit_edge:         ; preds = %sw.bb5
  call void @__sanitizer_cov_trace_pc() #14
  br label %clk_prepare_enable.exit

if.end.i:                                         ; preds = %sw.bb5
  %call1.i = tail call i32 @clk_enable(ptr noundef %12) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end.i.clk_prepare_enable.exit_crit_edge, label %if.then3.i

if.end.i.clk_prepare_enable.exit_crit_edge:       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %clk_prepare_enable.exit

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @clk_unprepare(ptr noundef %12) #12
  br label %clk_prepare_enable.exit

clk_prepare_enable.exit:                          ; preds = %if.then3.i, %if.end.i.clk_prepare_enable.exit_crit_edge, %sw.bb5.clk_prepare_enable.exit_crit_edge
  %baudclk8 = getelementptr i8, ptr %port, i32 -4
  %13 = ptrtoint ptr %baudclk8 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %baudclk8, align 4
  %cmp.i25 = icmp ugt ptr %14, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i25, label %clk_prepare_enable.exit.sw.epilog_crit_edge, label %if.then10

clk_prepare_enable.exit.sw.epilog_crit_edge:      ; preds = %clk_prepare_enable.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

if.then10:                                        ; preds = %clk_prepare_enable.exit
  %call.i26 = tail call i32 @clk_prepare(ptr noundef %14) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i26)
  %tobool.not.i27 = icmp eq i32 %call.i26, 0
  br i1 %tobool.not.i27, label %if.end.i30, label %if.then10.sw.epilog_crit_edge

if.then10.sw.epilog_crit_edge:                    ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

if.end.i30:                                       ; preds = %if.then10
  %call1.i28 = tail call i32 @clk_enable(ptr noundef %14) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i28)
  %tobool2.not.i29 = icmp eq i32 %call1.i28, 0
  br i1 %tobool2.not.i29, label %if.end.i30.sw.epilog_crit_edge, label %if.then3.i31

if.end.i30.sw.epilog_crit_edge:                   ; preds = %if.end.i30
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

if.then3.i31:                                     ; preds = %if.end.i30
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @clk_unprepare(ptr noundef %14) #12
  br label %sw.epilog

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %dev = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 45
  %15 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %16, ptr noundef nonnull @.str.58, i32 noundef %level) #15
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end, %if.then3.i31, %if.end.i30.sw.epilog_crit_edge, %if.then10.sw.epilog_crit_edge, %clk_prepare_enable.exit.sw.epilog_crit_edge, %if.end
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal ptr @s3c24xx_serial_type(ptr nocapture noundef readonly %port) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %info = getelementptr i8, ptr %port, i32 -12
  %0 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %info, align 4
  %type = getelementptr inbounds %struct.s3c24xx_uart_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %3)
  %4 = icmp ult i32 %3, 3
  br i1 %4, label %switch.lookup, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

switch.lookup:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %switch.gep = getelementptr inbounds [3 x ptr], ptr @switch.table.s3c24xx_serial_type, i32 0, i32 %3
  %5 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %5)
  %switch.load = load ptr, ptr %switch.gep, align 4
  br label %cleanup

cleanup:                                          ; preds = %switch.lookup, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %switch.load, %switch.lookup ], [ null, %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @s3c24xx_serial_config_port(ptr nocapture noundef %port, i32 noundef %flags) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %and = and i32 %flags, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %info.i = getelementptr i8, ptr %port, i32 -12
  %0 = ptrtoint ptr %info.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %info.i, align 4
  %port_type = getelementptr inbounds %struct.s3c24xx_uart_info, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %port_type to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %port_type, align 4
  %type = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 38
  %4 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %type, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @s3c24xx_serial_verify_port(ptr nocapture noundef readonly %port, ptr nocapture noundef readonly %ser) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ser to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %ser, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp.not = icmp eq i32 %1, 0
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %info.i = getelementptr i8, ptr %port, i32 -12
  %2 = ptrtoint ptr %info.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %info.i, align 4
  %port_type = getelementptr inbounds %struct.s3c24xx_uart_info, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %port_type to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %port_type, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %5)
  %cmp2.not = icmp eq i32 %1, %5
  br i1 %cmp2.not, label %land.lhs.true.if.end_crit_edge, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %if.end, %land.lhs.true.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %land.lhs.true.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @s3c24xx_serial_put_poll_char(ptr nocapture noundef readonly %port, i8 noundef zeroext %c) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %membase = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 2
  %0 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %membase, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 8
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #12, !srcloc !300
  %3 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %membase, align 4
  %add.ptr3 = getelementptr i8, ptr %4, i32 4
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr3) #12, !srcloc !300
  %6 = and i32 %5, 251658240
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp.i.not = icmp eq i32 %6, 0
  br i1 %cmp.i.not, label %entry.cleanup_crit_edge, label %while.cond.preheader

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

while.cond.preheader:                             ; preds = %entry
  %7 = and i32 %2, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not.i = icmp eq i32 %7, 0
  %info.i.i = getelementptr i8, ptr %port, i32 -12
  br label %while.cond

while.cond:                                       ; preds = %do.end, %while.cond.preheader
  br i1 %tobool.not.i, label %if.end.i, label %if.then.i

if.then.i:                                        ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #14
  %8 = ptrtoint ptr %info.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %info.i.i, align 4
  %10 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %membase, align 4
  %add.ptr.i = getelementptr i8, ptr %11, i32 24
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #12, !srcloc !300
  %13 = tail call i32 @llvm.bswap.i32(i32 %12) #12
  %tx_fifofull.i = getelementptr inbounds %struct.s3c24xx_uart_info, ptr %9, i32 0, i32 9
  %14 = ptrtoint ptr %tx_fifofull.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %tx_fifofull.i, align 4
  %and2.i = and i32 %13, %15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i)
  %tobool3.not.i = icmp eq i32 %and2.i, 0
  %cond.i = zext i1 %tobool3.not.i to i32
  br label %s3c24xx_serial_console_txrdy.exit

if.end.i:                                         ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #14
  %16 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %membase, align 4
  %add.ptr6.i = getelementptr i8, ptr %17, i32 16
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr6.i) #12, !srcloc !300
  %19 = lshr i32 %18, 26
  %.lobit.i = and i32 %19, 1
  br label %s3c24xx_serial_console_txrdy.exit

s3c24xx_serial_console_txrdy.exit:                ; preds = %if.end.i, %if.then.i
  %retval.0.i = phi i32 [ %cond.i, %if.then.i ], [ %.lobit.i, %if.end.i ]
  %tobool.not = icmp eq i32 %retval.0.i, 0
  br i1 %tobool.not, label %do.end, label %while.end

do.end:                                           ; preds = %s3c24xx_serial_console_txrdy.exit
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !307
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #12, !srcloc !308
  br label %while.cond

while.end:                                        ; preds = %s3c24xx_serial_console_txrdy.exit
  %iotype.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 26
  %20 = ptrtoint ptr %iotype.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %iotype.i, align 2
  %22 = zext i8 %21 to i64
  call void @__sanitizer_cov_trace_switch(i64 %22, ptr @__sancov_gen_cov_switch_values.125)
  switch i8 %21, label %while.end.cleanup_crit_edge [
    i8 2, label %sw.bb.i
    i8 3, label %sw.bb2.i
  ]

while.end.cleanup_crit_edge:                      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

sw.bb.i:                                          ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #14
  %23 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %membase, align 4
  %add.ptr.i20 = getelementptr i8, ptr %24, i32 32
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i20, i8 %c) #12, !srcloc !309
  br label %cleanup

sw.bb2.i:                                         ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #14
  %conv = zext i8 %c to i32
  %25 = shl nuw i32 %conv, 24
  %26 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %membase, align 4
  %add.ptr4.i = getelementptr i8, ptr %27, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i, i32 %25) #12, !srcloc !301
  br label %cleanup

cleanup:                                          ; preds = %sw.bb2.i, %sw.bb.i, %while.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @s3c24xx_serial_get_poll_char(ptr nocapture noundef readonly %port) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %membase = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 2
  %0 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %membase, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 24
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #12, !srcloc !300
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  %info1.i = getelementptr i8, ptr %port, i32 -12
  %4 = ptrtoint ptr %info1.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %info1.i, align 4
  %rx_fifofull.i = getelementptr inbounds %struct.s3c24xx_uart_info, ptr %5, i32 0, i32 6
  %6 = ptrtoint ptr %rx_fifofull.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %rx_fifofull.i, align 4
  %and.i = and i32 %7, %3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %fifosize.i = getelementptr i8, ptr %port, i32 132
  %8 = ptrtoint ptr %fifosize.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %fifosize.i, align 4
  br label %s3c24xx_serial_rx_fifocnt.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %rx_fifomask.i = getelementptr inbounds %struct.s3c24xx_uart_info, ptr %5, i32 0, i32 4
  %10 = ptrtoint ptr %rx_fifomask.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %rx_fifomask.i, align 4
  %and2.i = and i32 %11, %3
  %rx_fifoshift.i = getelementptr inbounds %struct.s3c24xx_uart_info, ptr %5, i32 0, i32 5
  %12 = ptrtoint ptr %rx_fifoshift.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %rx_fifoshift.i, align 4
  %shr.i = lshr i32 %and2.i, %13
  br label %s3c24xx_serial_rx_fifocnt.exit

s3c24xx_serial_rx_fifocnt.exit:                   ; preds = %if.end.i, %if.then.i
  %retval.0.i = phi i32 [ %9, %if.then.i ], [ %shr.i, %if.end.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %cmp = icmp eq i32 %retval.0.i, 0
  br i1 %cmp, label %s3c24xx_serial_rx_fifocnt.exit.cleanup_crit_edge, label %if.end

s3c24xx_serial_rx_fifocnt.exit.cleanup_crit_edge: ; preds = %s3c24xx_serial_rx_fifocnt.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %s3c24xx_serial_rx_fifocnt.exit
  %iotype.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 26
  %14 = ptrtoint ptr %iotype.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %iotype.i, align 2
  %16 = zext i8 %15 to i64
  call void @__sanitizer_cov_trace_switch(i64 %16, ptr @__sancov_gen_cov_switch_values.126)
  switch i8 %15, label %if.end.cleanup_crit_edge [
    i8 2, label %sw.bb.i
    i8 3, label %sw.bb2.i
  ]

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

sw.bb.i:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %17 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %membase, align 4
  %add.ptr.i7 = getelementptr i8, ptr %18, i32 36
  %19 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i7) #12, !srcloc !302
  %conv1.i = zext i8 %19 to i32
  br label %cleanup

sw.bb2.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %20 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %membase, align 4
  %add.ptr5.i = getelementptr i8, ptr %21, i32 36
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5.i) #12, !srcloc !300
  %23 = tail call i32 @llvm.bswap.i32(i32 %22) #12
  br label %cleanup

cleanup:                                          ; preds = %sw.bb2.i, %sw.bb.i, %if.end.cleanup_crit_edge, %s3c24xx_serial_rx_fifocnt.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ 16711680, %s3c24xx_serial_rx_fifocnt.exit.cleanup_crit_edge ], [ %23, %sw.bb2.i ], [ %conv1.i, %sw.bb.i ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @disable_irq_nosync(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_sync_single_for_cpu(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_off() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_on() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_bogus_irq_restore() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @s3c24xx_serial_start_tx_pio(ptr noundef %ourport) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %tx_mode = getelementptr inbounds %struct.s3c24xx_uart_port, ptr %ourport, i32 0, i32 10
  %0 = ptrtoint ptr %tx_mode to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %tx_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp.not = icmp eq i32 %1, 1
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %entry
  %tx_in_progress.i = getelementptr inbounds %struct.s3c24xx_uart_port, ptr %ourport, i32 0, i32 9
  %2 = ptrtoint ptr %tx_in_progress.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 1, ptr %tx_in_progress.i, align 4
  %membase.i = getelementptr inbounds %struct.s3c24xx_uart_port, ptr %ourport, i32 0, i32 15, i32 2
  %3 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %membase.i, align 4
  %add.ptr.i = getelementptr i8, ptr %4, i32 8
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #12, !srcloc !300
  %6 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %membase.i, align 4
  %add.ptr3.i = getelementptr i8, ptr %7, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i, i32 %5) #12, !srcloc !301
  %8 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %membase.i, align 4
  %add.ptr6.i = getelementptr i8, ptr %9, i32 4
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr6.i) #12, !srcloc !300
  %11 = and i32 %10, -201326593
  %12 = or i32 %11, 67108864
  %13 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %membase.i, align 4
  %add.ptr10.i = getelementptr i8, ptr %14, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr10.i, i32 %12) #12, !srcloc !301
  %info.i = getelementptr inbounds %struct.s3c24xx_uart_port, ptr %ourport, i32 0, i32 12
  %15 = ptrtoint ptr %info.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %info.i, align 4
  %type.i = getelementptr inbounds %struct.s3c24xx_uart_info, ptr %16, i32 0, i32 1
  %17 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %type.i, align 4
  %19 = zext i32 %18 to i64
  call void @__sanitizer_cov_trace_switch(i64 %19, ptr @__sancov_gen_cov_switch_values.127)
  switch i32 %18, label %sw.default.i [
    i32 1, label %sw.bb.i
    i32 2, label %sw.bb11.i
  ]

sw.bb.i:                                          ; preds = %if.then
  %20 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #12, !srcloc !303
  %and.i.i.i = and i32 %20, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i.i, label %if.then.i.i, label %do.body27.i.critedge.i

if.then.i.i:                                      ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @trace_hardirqs_off() #12
  %21 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %membase.i, align 4
  %add.ptr.i.c.i = getelementptr i8, ptr %22, i32 56
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.c.i) #12, !srcloc !300
  %24 = and i32 %23, -67108865
  %25 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %membase.i, align 4
  %add.ptr15.i.c.i = getelementptr i8, ptr %26, i32 56
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr15.i.c.i, i32 %24) #12, !srcloc !301
  tail call void @trace_hardirqs_on() #12
  br label %do.body27.i.i

do.body27.i.critedge.i:                           ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #14
  %27 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %membase.i, align 4
  %add.ptr.i.c33.i = getelementptr i8, ptr %28, i32 56
  %29 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.c33.i) #12, !srcloc !300
  %30 = and i32 %29, -67108865
  %31 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %membase.i, align 4
  %add.ptr15.i.c35.i = getelementptr i8, ptr %32, i32 56
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr15.i.c35.i, i32 %30) #12, !srcloc !301
  br label %do.body27.i.i

do.body27.i.i:                                    ; preds = %do.body27.i.critedge.i, %if.then.i.i
  %33 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #12, !srcloc !304
  %and.i.i.i.i = and i32 %33, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool35.not.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool35.not.i.i, label %if.then39.i.i, label %do.body27.i.i.s3c24xx_clear_bit.exit.i_crit_edge, !prof !305

do.body27.i.i.s3c24xx_clear_bit.exit.i_crit_edge: ; preds = %do.body27.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %s3c24xx_clear_bit.exit.i

if.then39.i.i:                                    ; preds = %do.body27.i.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @warn_bogus_irq_restore() #12
  br label %s3c24xx_clear_bit.exit.i

s3c24xx_clear_bit.exit.i:                         ; preds = %if.then39.i.i, %do.body27.i.i.s3c24xx_clear_bit.exit.i_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %20) #12, !srcloc !306
  br label %sw.epilog.i

sw.bb11.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  %34 = or i32 %11, 69206016
  %35 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %membase.i, align 4
  %add.ptr14.i = getelementptr i8, ptr %36, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr14.i, i32 %34) #12, !srcloc !301
  br label %sw.epilog.i

sw.default.i:                                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  %tx_irq.i = getelementptr inbounds %struct.s3c24xx_uart_port, ptr %ourport, i32 0, i32 8
  %37 = ptrtoint ptr %tx_irq.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %tx_irq.i, align 4
  tail call void @enable_irq(i32 noundef %38) #12
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %sw.default.i, %sw.bb11.i, %s3c24xx_clear_bit.exit.i
  %39 = ptrtoint ptr %tx_mode to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 1, ptr %tx_mode, align 4
  %40 = ptrtoint ptr %info.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %info.i, align 4
  %type16.i = getelementptr inbounds %struct.s3c24xx_uart_info, ptr %41, i32 0, i32 1
  %42 = ptrtoint ptr %type16.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %type16.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %43)
  %cmp.i = icmp eq i32 %43, 2
  br i1 %cmp.i, label %if.then.i, label %sw.epilog.i.if.end_crit_edge

sw.epilog.i.if.end_crit_edge:                     ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then.i:                                        ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call fastcc void @s3c24xx_serial_tx_chars(ptr noundef %ourport) #12
  br label %if.end

if.end:                                           ; preds = %if.then.i, %sw.epilog.i.if.end_crit_edge, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @enable_irq(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @s3c24xx_serial_tx_chars(ptr noundef %ourport) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %port1 = getelementptr inbounds %struct.s3c24xx_uart_port, ptr %ourport, i32 0, i32 15
  %state = getelementptr inbounds %struct.s3c24xx_uart_port, ptr %ourport, i32 0, i32 15, i32 30
  %0 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %state, align 4
  %xmit2 = getelementptr inbounds %struct.uart_state, ptr %1, i32 0, i32 2
  %tail = getelementptr inbounds %struct.uart_state, ptr %1, i32 0, i32 2, i32 2
  %2 = ptrtoint ptr %tail to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %tail, align 4
  %sub = sub i32 4096, %3
  %head = getelementptr inbounds %struct.uart_state, ptr %1, i32 0, i32 2, i32 1
  %4 = ptrtoint ptr %head to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %head, align 4
  %add = add i32 %5, %sub
  %and = and i32 %add, 4095
  %6 = tail call i32 @llvm.smin.i32(i32 %and, i32 %sub)
  %dma = getelementptr inbounds %struct.s3c24xx_uart_port, ptr %ourport, i32 0, i32 18
  %7 = ptrtoint ptr %dma to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dma, align 4
  %tobool.not = icmp eq ptr %8, null
  br i1 %tobool.not, label %entry.if.end17_crit_edge, label %land.lhs.true

entry.if.end17_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end17

land.lhs.true:                                    ; preds = %entry
  %tx_chan = getelementptr inbounds %struct.s3c24xx_uart_dma, ptr %8, i32 0, i32 5
  %9 = ptrtoint ptr %tx_chan to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %tx_chan, align 4
  %tobool4.not = icmp eq ptr %10, null
  br i1 %tobool4.not, label %land.lhs.true.if.end17_crit_edge, label %land.lhs.true5

land.lhs.true.if.end17_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end17

land.lhs.true5:                                   ; preds = %land.lhs.true
  %min_dma_size = getelementptr inbounds %struct.s3c24xx_uart_port, ptr %ourport, i32 0, i32 6
  %11 = ptrtoint ptr %min_dma_size to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %min_dma_size, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %12)
  %cmp6.not = icmp ult i32 %6, %12
  br i1 %cmp6.not, label %land.lhs.true5.if.end17_crit_edge, label %if.then

land.lhs.true5.if.end17_crit_edge:                ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end17

if.then:                                          ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #14
  %and10 = and i32 %3, 127
  %sub11 = sub nuw nsw i32 128, %and10
  %sub12 = sub i32 %6, %sub11
  call void @__sanitizer_cov_trace_cmp4(i32 %sub12, i32 %12)
  %cmp14.not = icmp ult i32 %sub12, %12
  %spec.select = select i1 %cmp14.not, i32 0, i32 %sub12
  %spec.select131 = select i1 %cmp14.not, i32 %6, i32 %sub11
  br label %if.end17

if.end17:                                         ; preds = %if.then, %land.lhs.true5.if.end17_crit_edge, %land.lhs.true.if.end17_crit_edge, %entry.if.end17_crit_edge
  %dma_count.1 = phi i32 [ %spec.select, %if.then ], [ 0, %land.lhs.true5.if.end17_crit_edge ], [ 0, %land.lhs.true.if.end17_crit_edge ], [ 0, %entry.if.end17_crit_edge ]
  %count.1 = phi i32 [ %spec.select131, %if.then ], [ %6, %land.lhs.true5.if.end17_crit_edge ], [ %6, %land.lhs.true.if.end17_crit_edge ], [ %6, %entry.if.end17_crit_edge ]
  %x_char = getelementptr inbounds %struct.s3c24xx_uart_port, ptr %ourport, i32 0, i32 15, i32 24
  %13 = ptrtoint ptr %x_char to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %x_char, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool18.not = icmp eq i8 %14, 0
  br i1 %tobool18.not, label %if.end22, label %if.then19

if.then19:                                        ; preds = %if.end17
  %iotype.i = getelementptr inbounds %struct.s3c24xx_uart_port, ptr %ourport, i32 0, i32 15, i32 26
  %15 = ptrtoint ptr %iotype.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %iotype.i, align 2
  %17 = zext i8 %16 to i64
  call void @__sanitizer_cov_trace_switch(i64 %17, ptr @__sancov_gen_cov_switch_values.128)
  switch i8 %16, label %if.then19.wr_reg.exit_crit_edge [
    i8 2, label %sw.bb.i
    i8 3, label %sw.bb2.i
  ]

if.then19.wr_reg.exit_crit_edge:                  ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #14
  br label %wr_reg.exit

sw.bb.i:                                          ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #14
  %membase.i = getelementptr inbounds %struct.s3c24xx_uart_port, ptr %ourport, i32 0, i32 15, i32 2
  %18 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %membase.i, align 4
  %add.ptr.i = getelementptr i8, ptr %19, i32 32
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i, i8 %14) #12, !srcloc !309
  br label %wr_reg.exit

sw.bb2.i:                                         ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #14
  %conv = zext i8 %14 to i32
  %20 = shl nuw i32 %conv, 24
  %membase3.i = getelementptr inbounds %struct.s3c24xx_uart_port, ptr %ourport, i32 0, i32 15, i32 2
  %21 = ptrtoint ptr %membase3.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %membase3.i, align 4
  %add.ptr4.i = getelementptr i8, ptr %22, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i, i32 %20) #12, !srcloc !301
  br label %wr_reg.exit

wr_reg.exit:                                      ; preds = %sw.bb2.i, %sw.bb.i, %if.then19.wr_reg.exit_crit_edge
  %tx = getelementptr inbounds %struct.s3c24xx_uart_port, ptr %ourport, i32 0, i32 15, i32 31, i32 5
  %23 = ptrtoint ptr %tx to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %tx, align 4
  %inc = add i32 %24, 1
  store i32 %inc, ptr %tx, align 4
  %25 = ptrtoint ptr %x_char to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 0, ptr %x_char, align 4
  br label %cleanup

if.end22:                                         ; preds = %if.end17
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %3)
  %cmp25 = icmp eq i32 %5, %3
  br i1 %cmp25, label %if.end22.if.then29_crit_edge, label %lor.lhs.false

if.end22.if.then29_crit_edge:                     ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then29

lor.lhs.false:                                    ; preds = %if.end22
  %26 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %state, align 4
  %tty2.i = getelementptr inbounds %struct.tty_port, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %tty2.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %tty2.i, align 4
  %tobool.not.i = icmp eq ptr %29, null
  br i1 %tobool.not.i, label %lor.lhs.false.uart_tx_stopped.exit_crit_edge, label %land.lhs.true.i

lor.lhs.false.uart_tx_stopped.exit_crit_edge:     ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %uart_tx_stopped.exit

land.lhs.true.i:                                  ; preds = %lor.lhs.false
  %stopped.i = getelementptr inbounds %struct.tty_struct, ptr %29, i32 0, i32 19, i32 1
  %30 = ptrtoint ptr %stopped.i to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %stopped.i, align 4, !range !310
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %31)
  %tobool3.not.i = icmp eq i8 %31, 0
  br i1 %tobool3.not.i, label %land.lhs.true.i.uart_tx_stopped.exit_crit_edge, label %land.lhs.true.i.if.then29_crit_edge

land.lhs.true.i.if.then29_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then29

land.lhs.true.i.uart_tx_stopped.exit_crit_edge:   ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %uart_tx_stopped.exit

uart_tx_stopped.exit:                             ; preds = %land.lhs.true.i.uart_tx_stopped.exit_crit_edge, %lor.lhs.false.uart_tx_stopped.exit_crit_edge
  %hw_stopped.i = getelementptr inbounds %struct.s3c24xx_uart_port, ptr %ourport, i32 0, i32 15, i32 35
  %32 = ptrtoint ptr %hw_stopped.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %hw_stopped.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %tobool4.not.i.not = icmp eq i32 %33, 0
  br i1 %tobool4.not.i.not, label %if.end30, label %uart_tx_stopped.exit.if.then29_crit_edge

uart_tx_stopped.exit.if.then29_crit_edge:         ; preds = %uart_tx_stopped.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then29

if.then29:                                        ; preds = %uart_tx_stopped.exit.if.then29_crit_edge, %land.lhs.true.i.if.then29_crit_edge, %if.end22.if.then29_crit_edge
  tail call void @s3c24xx_serial_stop_tx(ptr noundef %port1)
  br label %cleanup

if.end30:                                         ; preds = %uart_tx_stopped.exit
  %fifosize = getelementptr inbounds %struct.s3c24xx_uart_port, ptr %ourport, i32 0, i32 15, i32 23
  %34 = ptrtoint ptr %fifosize to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %fifosize, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %count.1, i32 %35)
  %cmp31 = icmp ugt i32 %count.1, %35
  %spec.select132 = select i1 %cmp31, i32 0, i32 %dma_count.1
  %36 = tail call i32 @llvm.umin.i32(i32 %count.1, i32 %35)
  %37 = ptrtoint ptr %head to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %head, align 4
  %39 = ptrtoint ptr %tail to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %tail, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %38, i32 %40)
  %cmp38149 = icmp ne i32 %38, %40
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %cmp40150 = icmp sgt i32 %36, 0
  %or.cond151 = select i1 %cmp38149, i1 %cmp40150, i1 false
  br i1 %or.cond151, label %while.body.lr.ph, label %if.end30.while.end_crit_edge

if.end30.while.end_crit_edge:                     ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end

while.body.lr.ph:                                 ; preds = %if.end30
  %membase = getelementptr inbounds %struct.s3c24xx_uart_port, ptr %ourport, i32 0, i32 15, i32 2
  %info = getelementptr inbounds %struct.s3c24xx_uart_port, ptr %ourport, i32 0, i32 12
  %iotype.i135 = getelementptr inbounds %struct.s3c24xx_uart_port, ptr %ourport, i32 0, i32 15, i32 26
  %tx55 = getelementptr inbounds %struct.s3c24xx_uart_port, ptr %ourport, i32 0, i32 15, i32 31, i32 5
  br label %while.body

while.body:                                       ; preds = %wr_reg.exit142.while.body_crit_edge, %while.body.lr.ph
  %count.3152 = phi i32 [ %36, %while.body.lr.ph ], [ %dec, %wr_reg.exit142.while.body_crit_edge ]
  %41 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %membase, align 4
  %add.ptr = getelementptr i8, ptr %42, i32 24
  %43 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #12, !srcloc !300
  %44 = tail call i32 @llvm.bswap.i32(i32 %43)
  %45 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %info, align 4
  %tx_fifofull = getelementptr inbounds %struct.s3c24xx_uart_info, ptr %46, i32 0, i32 9
  %47 = ptrtoint ptr %tx_fifofull to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %tx_fifofull, align 4
  %and44 = and i32 %48, %44
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and44)
  %tobool45.not = icmp eq i32 %and44, 0
  br i1 %tobool45.not, label %if.end47, label %while.body.if.end62_crit_edge

while.body.if.end62_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end62

if.end47:                                         ; preds = %while.body
  %49 = ptrtoint ptr %xmit2 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %xmit2, align 4
  %51 = ptrtoint ptr %tail to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %tail, align 4
  %arrayidx = getelementptr i8, ptr %50, i32 %52
  %53 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %arrayidx, align 1
  %55 = ptrtoint ptr %iotype.i135 to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %iotype.i135, align 2
  %57 = zext i8 %56 to i64
  call void @__sanitizer_cov_trace_switch(i64 %57, ptr @__sancov_gen_cov_switch_values.129)
  switch i8 %56, label %if.end47.wr_reg.exit142_crit_edge [
    i8 2, label %sw.bb.i138
    i8 3, label %sw.bb2.i141
  ]

if.end47.wr_reg.exit142_crit_edge:                ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #14
  br label %wr_reg.exit142

sw.bb.i138:                                       ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #14
  %58 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %membase, align 4
  %add.ptr.i137 = getelementptr i8, ptr %59, i32 32
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i137, i8 %54) #12, !srcloc !309
  br label %wr_reg.exit142

sw.bb2.i141:                                      ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #14
  %conv49 = zext i8 %54 to i32
  %60 = shl nuw i32 %conv49, 24
  %61 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %membase, align 4
  %add.ptr4.i140 = getelementptr i8, ptr %62, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i140, i32 %60) #12, !srcloc !301
  br label %wr_reg.exit142

wr_reg.exit142:                                   ; preds = %sw.bb2.i141, %sw.bb.i138, %if.end47.wr_reg.exit142_crit_edge
  %63 = ptrtoint ptr %tail to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %tail, align 4
  %add51 = add i32 %64, 1
  %and52 = and i32 %add51, 4095
  store i32 %and52, ptr %tail, align 4
  %65 = ptrtoint ptr %tx55 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %tx55, align 4
  %inc56 = add i32 %66, 1
  store i32 %inc56, ptr %tx55, align 4
  %dec = add nsw i32 %count.3152, -1
  %67 = ptrtoint ptr %head to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %head, align 4
  %69 = load i32, ptr %tail, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %68, i32 %69)
  %cmp38 = icmp ne i32 %68, %69
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %count.3152)
  %cmp40 = icmp sgt i32 %count.3152, 1
  %or.cond = select i1 %cmp38, i1 %cmp40, i1 false
  br i1 %or.cond, label %wr_reg.exit142.while.body_crit_edge, label %wr_reg.exit142.while.end_crit_edge

wr_reg.exit142.while.end_crit_edge:               ; preds = %wr_reg.exit142
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end

wr_reg.exit142.while.body_crit_edge:              ; preds = %wr_reg.exit142
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body

while.end:                                        ; preds = %wr_reg.exit142.while.end_crit_edge, %if.end30.while.end_crit_edge
  %count.3.lcssa = phi i32 [ %36, %if.end30.while.end_crit_edge ], [ %dec, %wr_reg.exit142.while.end_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count.3.lcssa)
  %tobool57.not = icmp ne i32 %count.3.lcssa, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spec.select132)
  %tobool59.not = icmp eq i32 %spec.select132, 0
  %or.cond134 = select i1 %tobool57.not, i1 true, i1 %tobool59.not
  br i1 %or.cond134, label %while.end.if.end62_crit_edge, label %if.then60

while.end.if.end62_crit_edge:                     ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end62

if.then60:                                        ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #14
  tail call fastcc void @s3c24xx_serial_start_tx_dma(ptr noundef %ourport, i32 noundef %spec.select132)
  br label %cleanup

if.end62:                                         ; preds = %while.end.if.end62_crit_edge, %while.body.if.end62_crit_edge
  %70 = ptrtoint ptr %head to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %head, align 4
  %72 = ptrtoint ptr %tail to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %tail, align 4
  %sub65 = sub i32 %71, %73
  %and66 = and i32 %sub65, 3840
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and66)
  %cmp67 = icmp eq i32 %and66, 0
  br i1 %cmp67, label %if.then69, label %if.end62.if.end71_crit_edge

if.end62.if.end71_crit_edge:                      ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end71

if.then69:                                        ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @_raw_spin_unlock(ptr noundef %port1) #12
  tail call void @uart_write_wakeup(ptr noundef %port1) #12
  tail call void @_raw_spin_lock(ptr noundef %port1) #12
  br label %if.end71

if.end71:                                         ; preds = %if.then69, %if.end62.if.end71_crit_edge
  %74 = ptrtoint ptr %head to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %head, align 4
  %76 = ptrtoint ptr %tail to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %tail, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %75, i32 %77)
  %cmp74 = icmp eq i32 %75, %77
  br i1 %cmp74, label %if.then76, label %if.end71.cleanup_crit_edge

if.end71.cleanup_crit_edge:                       ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then76:                                        ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @s3c24xx_serial_stop_tx(ptr noundef %port1)
  br label %cleanup

cleanup:                                          ; preds = %if.then76, %if.end71.cleanup_crit_edge, %if.then60, %if.then29, %wr_reg.exit
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @s3c24xx_serial_start_tx_dma(ptr noundef %ourport, i32 noundef %count) unnamed_addr #3 align 64 {
entry:
  %sg.i = alloca %struct.scatterlist, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %state = getelementptr inbounds %struct.s3c24xx_uart_port, ptr %ourport, i32 0, i32 15, i32 30
  %0 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %state, align 4
  %dma3 = getelementptr inbounds %struct.s3c24xx_uart_port, ptr %ourport, i32 0, i32 18
  %2 = ptrtoint ptr %dma3 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dma3, align 4
  %tx_mode = getelementptr inbounds %struct.s3c24xx_uart_port, ptr %ourport, i32 0, i32 10
  %4 = ptrtoint ptr %tx_mode to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %tx_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %5)
  %cmp.not = icmp eq i32 %5, 2
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %entry
  %info.i = getelementptr inbounds %struct.s3c24xx_uart_port, ptr %ourport, i32 0, i32 12
  %6 = ptrtoint ptr %info.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %info.i, align 4
  %type.i = getelementptr inbounds %struct.s3c24xx_uart_info, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %type.i, align 4
  %10 = zext i32 %9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.130)
  switch i32 %9, label %sw.default.i [
    i32 1, label %sw.bb.i
    i32 2, label %do.end.i
  ]

sw.bb.i:                                          ; preds = %if.then
  %11 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #12, !srcloc !303
  %and.i.i.i = and i32 %11, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i.i, label %if.then.i.i, label %do.body27.i.critedge.i

if.then.i.i:                                      ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @trace_hardirqs_off() #12
  %membase.i.c.i = getelementptr inbounds %struct.s3c24xx_uart_port, ptr %ourport, i32 0, i32 15, i32 2
  %12 = ptrtoint ptr %membase.i.c.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %membase.i.c.i, align 4
  %add.ptr.i.c.i = getelementptr i8, ptr %13, i32 56
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.c.i) #12, !srcloc !300
  %15 = or i32 %14, 67108864
  %16 = ptrtoint ptr %membase.i.c.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %membase.i.c.i, align 4
  %add.ptr15.i.c.i = getelementptr i8, ptr %17, i32 56
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr15.i.c.i, i32 %15) #12, !srcloc !301
  tail call void @trace_hardirqs_on() #12
  br label %do.body27.i.i

do.body27.i.critedge.i:                           ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #14
  %membase.i.c31.i = getelementptr inbounds %struct.s3c24xx_uart_port, ptr %ourport, i32 0, i32 15, i32 2
  %18 = ptrtoint ptr %membase.i.c31.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %membase.i.c31.i, align 4
  %add.ptr.i.c32.i = getelementptr i8, ptr %19, i32 56
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.c32.i) #12, !srcloc !300
  %21 = or i32 %20, 67108864
  %22 = ptrtoint ptr %membase.i.c31.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %membase.i.c31.i, align 4
  %add.ptr15.i.c34.i = getelementptr i8, ptr %23, i32 56
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr15.i.c34.i, i32 %21) #12, !srcloc !301
  br label %do.body27.i.i

do.body27.i.i:                                    ; preds = %do.body27.i.critedge.i, %if.then.i.i
  %24 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #12, !srcloc !304
  %and.i.i.i.i = and i32 %24, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool35.not.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool35.not.i.i, label %if.then39.i.i, label %do.body27.i.i.s3c24xx_set_bit.exit.i_crit_edge, !prof !305

do.body27.i.i.s3c24xx_set_bit.exit.i_crit_edge:   ; preds = %do.body27.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %s3c24xx_set_bit.exit.i

if.then39.i.i:                                    ; preds = %do.body27.i.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @warn_bogus_irq_restore() #12
  br label %s3c24xx_set_bit.exit.i

s3c24xx_set_bit.exit.i:                           ; preds = %if.then39.i.i, %do.body27.i.i.s3c24xx_set_bit.exit.i_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %11) #12, !srcloc !306
  br label %enable_tx_dma.exit

do.end.i:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 370, i32 noundef 9, ptr noundef null) #12
  br label %enable_tx_dma.exit

sw.default.i:                                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  %tx_irq.i = getelementptr inbounds %struct.s3c24xx_uart_port, ptr %ourport, i32 0, i32 8
  %25 = ptrtoint ptr %tx_irq.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %tx_irq.i, align 4
  tail call void @disable_irq_nosync(i32 noundef %26) #12
  br label %enable_tx_dma.exit

enable_tx_dma.exit:                               ; preds = %sw.default.i, %do.end.i, %s3c24xx_set_bit.exit.i
  %membase.i = getelementptr inbounds %struct.s3c24xx_uart_port, ptr %ourport, i32 0, i32 15, i32 2
  %27 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %membase.i, align 4
  %add.ptr.i = getelementptr i8, ptr %28, i32 4
  %29 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #12, !srcloc !300
  %30 = and i32 %29, -201388033
  %31 = or i32 %30, 134230016
  %32 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %membase.i, align 4
  %add.ptr21.i = getelementptr i8, ptr %33, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr21.i, i32 %31) #12, !srcloc !301
  %34 = ptrtoint ptr %tx_mode to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 2, ptr %tx_mode, align 4
  br label %if.end

if.end:                                           ; preds = %enable_tx_dma.exit, %entry.if.end_crit_edge
  %and = and i32 %count, -128
  %tx_size = getelementptr inbounds %struct.s3c24xx_uart_dma, ptr %3, i32 0, i32 13
  %35 = ptrtoint ptr %tx_size to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %and, ptr %tx_size, align 4
  %tx_addr = getelementptr inbounds %struct.s3c24xx_uart_dma, ptr %3, i32 0, i32 7
  %36 = ptrtoint ptr %tx_addr to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %tx_addr, align 4
  %tail = getelementptr inbounds %struct.uart_state, ptr %1, i32 0, i32 2, i32 2
  %38 = ptrtoint ptr %tail to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %tail, align 4
  %add = add i32 %39, %37
  %tx_transfer_addr = getelementptr inbounds %struct.s3c24xx_uart_dma, ptr %3, i32 0, i32 11
  %40 = ptrtoint ptr %tx_transfer_addr to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %add, ptr %tx_transfer_addr, align 4
  %tx_chan = getelementptr inbounds %struct.s3c24xx_uart_dma, ptr %3, i32 0, i32 5
  %41 = ptrtoint ptr %tx_chan to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %tx_chan, align 4
  %43 = ptrtoint ptr %42 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %42, align 4
  %dev = getelementptr inbounds %struct.dma_device, ptr %44, i32 0, i32 15
  %45 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %dev, align 4
  tail call void @dma_sync_single_for_device(ptr noundef %46, i32 noundef %add, i32 noundef %and, i32 noundef 1) #12
  %47 = ptrtoint ptr %tx_chan to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %tx_chan, align 4
  %49 = ptrtoint ptr %tx_transfer_addr to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %tx_transfer_addr, align 4
  %51 = ptrtoint ptr %tx_size to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %tx_size, align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %sg.i) #12
  %53 = getelementptr inbounds %struct.scatterlist, ptr %sg.i, i32 0, i32 3
  %54 = getelementptr inbounds %struct.scatterlist, ptr %sg.i, i32 0, i32 4
  %55 = call ptr @memset(ptr %sg.i, i32 255, i32 20)
  call void @sg_init_table(ptr noundef nonnull %sg.i, i32 noundef 1) #12
  %56 = ptrtoint ptr %53 to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %50, ptr %53, align 4
  %57 = ptrtoint ptr %54 to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %52, ptr %54, align 4
  %tobool.not.i = icmp eq ptr %48, null
  br i1 %tobool.not.i, label %if.end.dmaengine_prep_slave_single.exit.thread_crit_edge, label %lor.lhs.false.i

if.end.dmaengine_prep_slave_single.exit.thread_crit_edge: ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %dmaengine_prep_slave_single.exit.thread

lor.lhs.false.i:                                  ; preds = %if.end
  %58 = ptrtoint ptr %48 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %48, align 4
  %tobool1.not.i = icmp eq ptr %59, null
  br i1 %tobool1.not.i, label %lor.lhs.false.i.dmaengine_prep_slave_single.exit.thread_crit_edge, label %lor.lhs.false2.i

lor.lhs.false.i.dmaengine_prep_slave_single.exit.thread_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %dmaengine_prep_slave_single.exit.thread

lor.lhs.false2.i:                                 ; preds = %lor.lhs.false.i
  %device_prep_slave_sg.i = getelementptr inbounds %struct.dma_device, ptr %59, i32 0, i32 39
  %60 = ptrtoint ptr %device_prep_slave_sg.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %device_prep_slave_sg.i, align 4
  %tobool4.not.i = icmp eq ptr %61, null
  br i1 %tobool4.not.i, label %lor.lhs.false2.i.dmaengine_prep_slave_single.exit.thread_crit_edge, label %dmaengine_prep_slave_single.exit

lor.lhs.false2.i.dmaengine_prep_slave_single.exit.thread_crit_edge: ; preds = %lor.lhs.false2.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %dmaengine_prep_slave_single.exit.thread

dmaengine_prep_slave_single.exit.thread:          ; preds = %lor.lhs.false2.i.dmaengine_prep_slave_single.exit.thread_crit_edge, %lor.lhs.false.i.dmaengine_prep_slave_single.exit.thread_crit_edge, %if.end.dmaengine_prep_slave_single.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %sg.i) #12
  %tx_desc3 = getelementptr inbounds %struct.s3c24xx_uart_dma, ptr %3, i32 0, i32 14
  %62 = ptrtoint ptr %tx_desc3 to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr null, ptr %tx_desc3, align 4
  br label %do.end

dmaengine_prep_slave_single.exit:                 ; preds = %lor.lhs.false2.i
  %call.i = call ptr %61(ptr noundef nonnull %48, ptr noundef nonnull %sg.i, i32 noundef 1, i32 noundef 1, i32 noundef 1, ptr noundef null) #12
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %sg.i) #12
  %tx_desc = getelementptr inbounds %struct.s3c24xx_uart_dma, ptr %3, i32 0, i32 14
  %63 = ptrtoint ptr %tx_desc to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr %call.i, ptr %tx_desc, align 4
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %dmaengine_prep_slave_single.exit.do.end_crit_edge, label %if.end14

dmaengine_prep_slave_single.exit.do.end_crit_edge: ; preds = %dmaengine_prep_slave_single.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end

do.end:                                           ; preds = %dmaengine_prep_slave_single.exit.do.end_crit_edge, %dmaengine_prep_slave_single.exit.thread
  %dev13 = getelementptr inbounds %struct.s3c24xx_uart_port, ptr %ourport, i32 0, i32 15, i32 45
  %64 = ptrtoint ptr %dev13 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %dev13, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %65, ptr noundef nonnull @.str.29) #15
  br label %cleanup

if.end14:                                         ; preds = %dmaengine_prep_slave_single.exit
  call void @__sanitizer_cov_trace_pc() #14
  %callback = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %call.i, i32 0, i32 6
  %66 = ptrtoint ptr %callback to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr @s3c24xx_serial_tx_dma_complete, ptr %callback, align 4
  %67 = ptrtoint ptr %tx_desc to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %tx_desc, align 4
  %callback_param = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %68, i32 0, i32 8
  %69 = ptrtoint ptr %callback_param to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr %ourport, ptr %callback_param, align 4
  %70 = ptrtoint ptr %tx_size to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %tx_size, align 4
  %tx_bytes_requested = getelementptr inbounds %struct.s3c24xx_uart_dma, ptr %3, i32 0, i32 16
  %72 = ptrtoint ptr %tx_bytes_requested to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 %71, ptr %tx_bytes_requested, align 4
  %tx_in_progress = getelementptr inbounds %struct.s3c24xx_uart_port, ptr %ourport, i32 0, i32 9
  %73 = ptrtoint ptr %tx_in_progress to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 2, ptr %tx_in_progress, align 4
  %74 = load ptr, ptr %tx_desc, align 4
  %tx_submit.i = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %74, i32 0, i32 4
  %75 = ptrtoint ptr %tx_submit.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %tx_submit.i, align 4
  %call.i1 = call i32 %76(ptr noundef %74) #12
  %tx_cookie = getelementptr inbounds %struct.s3c24xx_uart_dma, ptr %3, i32 0, i32 9
  %77 = ptrtoint ptr %tx_cookie to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 %call.i1, ptr %tx_cookie, align 4
  %78 = ptrtoint ptr %tx_chan to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %tx_chan, align 4
  %80 = ptrtoint ptr %79 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %79, align 4
  %device_issue_pending.i = getelementptr inbounds %struct.dma_device, ptr %81, i32 0, i32 50
  %82 = ptrtoint ptr %device_issue_pending.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %device_issue_pending.i, align 4
  call void %83(ptr noundef %79) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end14, %do.end
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @uart_write_wakeup(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_sync_single_for_device(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @s3c24xx_serial_tx_dma_complete(ptr noundef %args) #3 align 64 {
entry:
  %state4 = alloca %struct.dma_tx_state, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %port1 = getelementptr inbounds %struct.s3c24xx_uart_port, ptr %args, i32 0, i32 15
  %state = getelementptr inbounds %struct.s3c24xx_uart_port, ptr %args, i32 0, i32 15, i32 30
  %0 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %state, align 4
  %dma3 = getelementptr inbounds %struct.s3c24xx_uart_port, ptr %args, i32 0, i32 18
  %2 = ptrtoint ptr %dma3 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dma3, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %state4) #12
  %4 = getelementptr inbounds %struct.dma_tx_state, ptr %state4, i32 0, i32 2
  %tx_chan = getelementptr inbounds %struct.s3c24xx_uart_dma, ptr %3, i32 0, i32 5
  %5 = call ptr @memset(ptr %state4, i32 255, i32 16)
  %6 = ptrtoint ptr %tx_chan to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %tx_chan, align 4
  %tx_cookie = getelementptr inbounds %struct.s3c24xx_uart_dma, ptr %3, i32 0, i32 9
  %8 = ptrtoint ptr %tx_cookie to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %tx_cookie, align 4
  %10 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %7, align 4
  %device_tx_status.i = getelementptr inbounds %struct.dma_device, ptr %11, i32 0, i32 49
  %12 = ptrtoint ptr %device_tx_status.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %device_tx_status.i, align 4
  %call.i = call i32 %13(ptr noundef %7, i32 noundef %9, ptr noundef nonnull %state4) #12
  %tx_bytes_requested = getelementptr inbounds %struct.s3c24xx_uart_dma, ptr %3, i32 0, i32 16
  %14 = ptrtoint ptr %tx_bytes_requested to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %tx_bytes_requested, align 4
  %16 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %4, align 4
  %sub = sub i32 %15, %17
  %tx_desc = getelementptr inbounds %struct.s3c24xx_uart_dma, ptr %3, i32 0, i32 14
  %18 = ptrtoint ptr %tx_desc to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %tx_desc, align 4
  %flags.i = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %19, i32 0, i32 1
  %20 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %flags.i, align 4
  %or.i = or i32 %21, 2
  store i32 %or.i, ptr %flags.i, align 4
  %22 = ptrtoint ptr %tx_chan to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %tx_chan, align 4
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %23, align 4
  %dev = getelementptr inbounds %struct.dma_device, ptr %25, i32 0, i32 15
  %26 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %dev, align 4
  %tx_transfer_addr = getelementptr inbounds %struct.s3c24xx_uart_dma, ptr %3, i32 0, i32 11
  %28 = ptrtoint ptr %tx_transfer_addr to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %tx_transfer_addr, align 4
  %tx_size = getelementptr inbounds %struct.s3c24xx_uart_dma, ptr %3, i32 0, i32 13
  %30 = ptrtoint ptr %tx_size to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %tx_size, align 4
  call void @dma_sync_single_for_cpu(ptr noundef %27, i32 noundef %29, i32 noundef %31, i32 noundef 1) #12
  %call8 = call i32 @_raw_spin_lock_irqsave(ptr noundef %port1) #12
  %tail = getelementptr inbounds %struct.uart_state, ptr %1, i32 0, i32 2, i32 2
  %32 = ptrtoint ptr %tail to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %tail, align 4
  %add = add i32 %33, %sub
  %and = and i32 %add, 4095
  store i32 %and, ptr %tail, align 4
  %tx = getelementptr inbounds %struct.s3c24xx_uart_port, ptr %args, i32 0, i32 15, i32 31, i32 5
  %34 = ptrtoint ptr %tx to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %tx, align 4
  %add12 = add i32 %35, %sub
  store i32 %add12, ptr %tx, align 4
  %tx_in_progress = getelementptr inbounds %struct.s3c24xx_uart_port, ptr %args, i32 0, i32 9
  %36 = ptrtoint ptr %tx_in_progress to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 0, ptr %tx_in_progress, align 4
  %head = getelementptr inbounds %struct.uart_state, ptr %1, i32 0, i32 2, i32 1
  %37 = ptrtoint ptr %head to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %head, align 4
  %39 = load i32, ptr %tail, align 4
  %sub14 = sub i32 %38, %39
  %and15 = and i32 %sub14, 3840
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and15)
  %cmp16 = icmp eq i32 %and15, 0
  br i1 %cmp16, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  call void @uart_write_wakeup(ptr noundef %port1) #12
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %40 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %state, align 4
  %tail.i = getelementptr inbounds %struct.uart_state, ptr %41, i32 0, i32 2, i32 2
  %42 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %tail.i, align 4
  %sub.i = sub i32 4096, %43
  %head.i = getelementptr inbounds %struct.uart_state, ptr %41, i32 0, i32 2, i32 1
  %44 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %head.i, align 4
  %add.i = add i32 %45, %sub.i
  %and.i = and i32 %add.i, 4095
  %46 = call i32 @llvm.smin.i32(i32 %and.i, i32 %sub.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %46)
  %tobool.not.i = icmp eq i32 %46, 0
  br i1 %tobool.not.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  call void @s3c24xx_serial_stop_tx(ptr noundef %port1) #12
  br label %s3c24xx_serial_start_next_tx.exit

if.end.i:                                         ; preds = %if.end
  %47 = ptrtoint ptr %dma3 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %dma3, align 4
  %tobool3.not.i = icmp eq ptr %48, null
  br i1 %tobool3.not.i, label %if.end.i.if.then13.i_crit_edge, label %lor.lhs.false.i

if.end.i.if.then13.i_crit_edge:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then13.i

lor.lhs.false.i:                                  ; preds = %if.end.i
  %tx_chan.i = getelementptr inbounds %struct.s3c24xx_uart_dma, ptr %48, i32 0, i32 5
  %49 = ptrtoint ptr %tx_chan.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %tx_chan.i, align 4
  %tobool5.not.i = icmp eq ptr %50, null
  br i1 %tobool5.not.i, label %lor.lhs.false.i.if.then13.i_crit_edge, label %lor.lhs.false6.i

lor.lhs.false.i.if.then13.i_crit_edge:            ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then13.i

lor.lhs.false6.i:                                 ; preds = %lor.lhs.false.i
  %min_dma_size.i = getelementptr inbounds %struct.s3c24xx_uart_port, ptr %args, i32 0, i32 6
  %51 = ptrtoint ptr %min_dma_size.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %min_dma_size.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %46, i32 %52)
  %cmp7.i = icmp uge i32 %46, %52
  %and11.i = and i32 %43, 127
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11.i)
  %tobool12.not.i = icmp eq i32 %and11.i, 0
  %or.cond.i = select i1 %cmp7.i, i1 %tobool12.not.i, i1 false
  br i1 %or.cond.i, label %if.else.i, label %lor.lhs.false6.i.if.then13.i_crit_edge

lor.lhs.false6.i.if.then13.i_crit_edge:           ; preds = %lor.lhs.false6.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then13.i

if.then13.i:                                      ; preds = %lor.lhs.false6.i.if.then13.i_crit_edge, %lor.lhs.false.i.if.then13.i_crit_edge, %if.end.i.if.then13.i_crit_edge
  call fastcc void @s3c24xx_serial_start_tx_pio(ptr noundef %args) #12
  br label %s3c24xx_serial_start_next_tx.exit

if.else.i:                                        ; preds = %lor.lhs.false6.i
  call void @__sanitizer_cov_trace_pc() #14
  call fastcc void @s3c24xx_serial_start_tx_dma(ptr noundef %args, i32 noundef %46) #12
  br label %s3c24xx_serial_start_next_tx.exit

s3c24xx_serial_start_next_tx.exit:                ; preds = %if.else.i, %if.then13.i, %if.then.i
  call void @_raw_spin_unlock_irqrestore(ptr noundef %port1, i32 noundef %call8) #12
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %state4) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sg_init_table(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @s3c24xx_uart_copy_rx_to_tty(ptr nocapture noundef %ourport, ptr noundef %tty, i32 noundef %count) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %dma1 = getelementptr inbounds %struct.s3c24xx_uart_port, ptr %ourport, i32 0, i32 18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count)
  %tobool.not = icmp eq i32 %count, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = ptrtoint ptr %dma1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dma1, align 4
  %rx_chan = getelementptr inbounds %struct.s3c24xx_uart_dma, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %rx_chan to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rx_chan, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %dev = getelementptr inbounds %struct.dma_device, ptr %5, i32 0, i32 15
  %6 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev, align 4
  %rx_addr = getelementptr inbounds %struct.s3c24xx_uart_dma, ptr %1, i32 0, i32 6
  %8 = ptrtoint ptr %rx_addr to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %rx_addr, align 4
  %rx_size = getelementptr inbounds %struct.s3c24xx_uart_dma, ptr %1, i32 0, i32 12
  %10 = ptrtoint ptr %rx_size to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %rx_size, align 4
  tail call void @dma_sync_single_for_cpu(ptr noundef %7, i32 noundef %9, i32 noundef %11, i32 noundef 2) #12
  %rx = getelementptr inbounds %struct.s3c24xx_uart_port, ptr %ourport, i32 0, i32 15, i32 31, i32 4
  %12 = ptrtoint ptr %rx to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %rx, align 4
  %add = add i32 %13, %count
  store i32 %add, ptr %rx, align 4
  %tobool2.not = icmp eq ptr %tty, null
  br i1 %tobool2.not, label %if.end.cleanup.sink.split_crit_edge, label %if.end6

if.end.cleanup.sink.split_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.sink.split

if.end6:                                          ; preds = %if.end
  %14 = ptrtoint ptr %dma1 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dma1, align 4
  %rx_buf = getelementptr inbounds %struct.s3c24xx_uart_dma, ptr %15, i32 0, i32 10
  %16 = ptrtoint ptr %rx_buf to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %rx_buf, align 4
  %call.i = tail call i32 @tty_insert_flip_string_fixed_flag(ptr noundef nonnull %tty, ptr noundef %17, i8 noundef zeroext 0, i32 noundef %count) #12
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i, i32 %count)
  %cmp.not = icmp eq i32 %call.i, %count
  br i1 %cmp.not, label %if.end6.cleanup_crit_edge, label %do.end16

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

do.end16:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 532, i32 noundef 9, ptr noundef null) #12
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %do.end16, %if.end.cleanup.sink.split_crit_edge
  %.str.36.sink = phi ptr [ @.str.36, %do.end16 ], [ @.str.33, %if.end.cleanup.sink.split_crit_edge ]
  %dev33 = getelementptr inbounds %struct.s3c24xx_uart_port, ptr %ourport, i32 0, i32 15, i32 45
  %18 = ptrtoint ptr %dev33 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev33, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %19, ptr noundef nonnull %.str.36.sink) #15
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end6.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tty_insert_flip_string_fixed_flag(ptr noundef, ptr noundef, i8 noundef zeroext, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @s3c24xx_serial_rx_irq(i32 noundef %irq, ptr noundef %dev_id) #3 align 64 {
entry:
  %state7.i = alloca %struct.dma_tx_state, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %dma = getelementptr inbounds %struct.s3c24xx_uart_port, ptr %dev_id, i32 0, i32 18
  %0 = ptrtoint ptr %dma to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dma, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %rx_chan = getelementptr inbounds %struct.s3c24xx_uart_dma, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %rx_chan to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rx_chan, align 4
  %tobool2.not = icmp eq ptr %3, null
  br i1 %tobool2.not, label %land.lhs.true.if.end_crit_edge, label %if.then

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  %port1.i = getelementptr inbounds %struct.s3c24xx_uart_port, ptr %dev_id, i32 0, i32 15
  %state.i = getelementptr inbounds %struct.s3c24xx_uart_port, ptr %dev_id, i32 0, i32 15, i32 30
  %4 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %state.i, align 4
  %call.i = tail call ptr @tty_port_tty_get(ptr noundef %5) #12
  %6 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %state.i, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %state7.i) #12
  %8 = getelementptr inbounds %struct.dma_tx_state, ptr %state7.i, i32 0, i32 2
  %membase.i = getelementptr inbounds %struct.s3c24xx_uart_port, ptr %dev_id, i32 0, i32 15, i32 2
  %9 = call ptr @memset(ptr %state7.i, i32 255, i32 16)
  %10 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %membase.i, align 4
  %add.ptr.i = getelementptr i8, ptr %11, i32 16
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #12, !srcloc !300
  %13 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %membase.i, align 4
  %add.ptr11.i = getelementptr i8, ptr %14, i32 24
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr11.i) #12, !srcloc !300
  tail call void @_raw_spin_lock(ptr noundef %port1.i) #12
  %16 = and i32 %12, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool.not.i = icmp eq i32 %16, 0
  br i1 %tobool.not.i, label %if.then.i, label %if.end15.i

if.then.i:                                        ; preds = %if.then
  tail call fastcc void @s3c64xx_start_rx_dma(ptr noundef %dev_id) #12
  %rx_mode.i = getelementptr inbounds %struct.s3c24xx_uart_port, ptr %dev_id, i32 0, i32 11
  %17 = ptrtoint ptr %rx_mode.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %rx_mode.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %18)
  %cmp.i = icmp eq i32 %18, 1
  br i1 %cmp.i, label %if.then14.i, label %if.then.i.s3c24xx_serial_rx_chars_dma.exit_crit_edge

if.then.i.s3c24xx_serial_rx_chars_dma.exit_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %s3c24xx_serial_rx_chars_dma.exit

if.then14.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  %19 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %membase.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %20, i32 4
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #12, !srcloc !300
  %22 = and i32 %21, 2080633087
  %23 = or i32 %22, -2097675520
  %24 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %membase.i, align 4
  %add.ptr3.i.i = getelementptr i8, ptr %25, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i.i, i32 %23) #12, !srcloc !301
  %26 = ptrtoint ptr %rx_mode.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 2, ptr %rx_mode.i, align 4
  br label %s3c24xx_serial_rx_chars_dma.exit

if.end15.i:                                       ; preds = %if.then
  %rx_mode16.i = getelementptr inbounds %struct.s3c24xx_uart_port, ptr %dev_id, i32 0, i32 11
  %27 = ptrtoint ptr %rx_mode16.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %rx_mode16.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %28)
  %cmp17.i = icmp eq i32 %28, 2
  br i1 %cmp17.i, label %if.then18.i, label %if.end15.i.if.end24.i_crit_edge

if.end15.i.if.end24.i_crit_edge:                  ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end24.i

if.then18.i:                                      ; preds = %if.end15.i
  %29 = ptrtoint ptr %rx_chan to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %rx_chan, align 4
  %31 = ptrtoint ptr %30 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %30, align 4
  %device_pause.i.i = getelementptr inbounds %struct.dma_device, ptr %32, i32 0, i32 45
  %33 = ptrtoint ptr %device_pause.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %device_pause.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %34, null
  br i1 %tobool.not.i.i, label %if.then18.i.dmaengine_pause.exit.i_crit_edge, label %if.then.i.i

if.then18.i.dmaengine_pause.exit.i_crit_edge:     ; preds = %if.then18.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %dmaengine_pause.exit.i

if.then.i.i:                                      ; preds = %if.then18.i
  call void @__sanitizer_cov_trace_pc() #14
  %call.i.i = tail call i32 %34(ptr noundef %30) #12
  br label %dmaengine_pause.exit.i

dmaengine_pause.exit.i:                           ; preds = %if.then.i.i, %if.then18.i.dmaengine_pause.exit.i_crit_edge
  %35 = ptrtoint ptr %rx_chan to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %rx_chan, align 4
  %rx_cookie.i = getelementptr inbounds %struct.s3c24xx_uart_dma, ptr %1, i32 0, i32 8
  %37 = ptrtoint ptr %rx_cookie.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %rx_cookie.i, align 4
  %39 = ptrtoint ptr %36 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %36, align 4
  %device_tx_status.i.i = getelementptr inbounds %struct.dma_device, ptr %40, i32 0, i32 49
  %41 = ptrtoint ptr %device_tx_status.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %device_tx_status.i.i, align 4
  %call.i1.i = call i32 %42(ptr noundef %36, i32 noundef %38, ptr noundef nonnull %state7.i) #12
  %43 = ptrtoint ptr %rx_chan to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %rx_chan, align 4
  %45 = ptrtoint ptr %44 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %44, align 4
  %device_terminate_all.i.i = getelementptr inbounds %struct.dma_device, ptr %46, i32 0, i32 47
  %47 = ptrtoint ptr %device_terminate_all.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %device_terminate_all.i.i, align 4
  %tobool.not.i2.i = icmp eq ptr %48, null
  br i1 %tobool.not.i2.i, label %dmaengine_pause.exit.i.dmaengine_terminate_all.exit.i_crit_edge, label %if.then.i4.i

dmaengine_pause.exit.i.dmaengine_terminate_all.exit.i_crit_edge: ; preds = %dmaengine_pause.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %dmaengine_terminate_all.exit.i

if.then.i4.i:                                     ; preds = %dmaengine_pause.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  %call.i3.i = call i32 %48(ptr noundef %44) #12
  br label %dmaengine_terminate_all.exit.i

dmaengine_terminate_all.exit.i:                   ; preds = %if.then.i4.i, %dmaengine_pause.exit.i.dmaengine_terminate_all.exit.i_crit_edge
  %rx_bytes_requested.i = getelementptr inbounds %struct.s3c24xx_uart_dma, ptr %1, i32 0, i32 17
  %49 = ptrtoint ptr %rx_bytes_requested.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %rx_bytes_requested.i, align 4
  %51 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %8, align 4
  %sub.i = sub i32 %50, %52
  call fastcc void @s3c24xx_uart_copy_rx_to_tty(ptr noundef %dev_id, ptr noundef %7, i32 noundef %sub.i) #12
  %53 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %membase.i, align 4
  %add.ptr.i6.i = getelementptr i8, ptr %54, i32 4
  %55 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i6.i) #12, !srcloc !300
  %56 = and i32 %55, -50331649
  %57 = or i32 %56, 16777216
  %58 = call i32 @llvm.bswap.i32(i32 %57) #12
  %info.i.i = getelementptr inbounds %struct.s3c24xx_uart_port, ptr %dev_id, i32 0, i32 12
  %59 = ptrtoint ptr %info.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %info.i.i, align 4
  %type.i.i = getelementptr inbounds %struct.s3c24xx_uart_info, ptr %60, i32 0, i32 1
  %61 = ptrtoint ptr %type.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %type.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %62)
  %cmp.not.i.i = icmp eq i32 %62, 2
  %and2.i.i = and i32 %58, -64643
  %or3.i.i = or i32 %and2.i.i, 61568
  %ucon.0.i.i = select i1 %cmp.not.i.i, i32 %58, i32 %or3.i.i
  %63 = call i32 @llvm.bswap.i32(i32 %ucon.0.i.i) #12
  %64 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %membase.i, align 4
  %add.ptr5.i.i = getelementptr i8, ptr %65, i32 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5.i.i, i32 %63) #12, !srcloc !301
  %66 = ptrtoint ptr %rx_mode16.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 1, ptr %rx_mode16.i, align 4
  br label %if.end24.i

if.end24.i:                                       ; preds = %dmaengine_terminate_all.exit.i, %if.end15.i.if.end24.i_crit_edge
  call fastcc void @s3c24xx_serial_rx_drain_fifo(ptr noundef %dev_id) #12
  %tobool25.not.i = icmp eq ptr %call.i, null
  br i1 %tobool25.not.i, label %if.end24.i.if.end27.i_crit_edge, label %if.then26.i

if.end24.i.if.end27.i_crit_edge:                  ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end27.i

if.then26.i:                                      ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @tty_flip_buffer_push(ptr noundef %7) #12
  call void @tty_kref_put(ptr noundef nonnull %call.i) #12
  br label %if.end27.i

if.end27.i:                                       ; preds = %if.then26.i, %if.end24.i.if.end27.i_crit_edge
  %67 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %membase.i, align 4
  %add.ptr29.i = getelementptr i8, ptr %68, i32 16
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr29.i, i32 134217728) #12, !srcloc !301
  br label %s3c24xx_serial_rx_chars_dma.exit

s3c24xx_serial_rx_chars_dma.exit:                 ; preds = %if.end27.i, %if.then14.i, %if.then.i.s3c24xx_serial_rx_chars_dma.exit_crit_edge
  call void @_raw_spin_unlock(ptr noundef %port1.i) #12
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %state7.i) #12
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %port1.i7 = getelementptr inbounds %struct.s3c24xx_uart_port, ptr %dev_id, i32 0, i32 15
  tail call void @_raw_spin_lock(ptr noundef %port1.i7) #12
  tail call fastcc void @s3c24xx_serial_rx_drain_fifo(ptr noundef %dev_id) #12
  tail call void @_raw_spin_unlock(ptr noundef %port1.i7) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end, %s3c24xx_serial_rx_chars_dma.exit
  ret i32 1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @s3c24xx_serial_tx_irq(i32 noundef %irq, ptr noundef %id) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %port1 = getelementptr inbounds %struct.s3c24xx_uart_port, ptr %id, i32 0, i32 15
  tail call void @_raw_spin_lock(ptr noundef %port1) #12
  tail call fastcc void @s3c24xx_serial_tx_chars(ptr noundef %id)
  tail call void @_raw_spin_unlock(ptr noundef %port1) #12
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @tty_port_tty_get(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @s3c64xx_start_rx_dma(ptr noundef %ourport) unnamed_addr #3 align 64 {
entry:
  %sg.i = alloca %struct.scatterlist, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %dma1 = getelementptr inbounds %struct.s3c24xx_uart_port, ptr %ourport, i32 0, i32 18
  %0 = ptrtoint ptr %dma1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dma1, align 4
  %rx_chan = getelementptr inbounds %struct.s3c24xx_uart_dma, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %rx_chan to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rx_chan, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %dev = getelementptr inbounds %struct.dma_device, ptr %5, i32 0, i32 15
  %6 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev, align 4
  %rx_addr = getelementptr inbounds %struct.s3c24xx_uart_dma, ptr %1, i32 0, i32 6
  %8 = ptrtoint ptr %rx_addr to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %rx_addr, align 4
  %rx_size = getelementptr inbounds %struct.s3c24xx_uart_dma, ptr %1, i32 0, i32 12
  %10 = ptrtoint ptr %rx_size to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %rx_size, align 4
  tail call void @dma_sync_single_for_device(ptr noundef %7, i32 noundef %9, i32 noundef %11, i32 noundef 2) #12
  %12 = ptrtoint ptr %rx_chan to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %rx_chan, align 4
  %14 = ptrtoint ptr %rx_addr to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %rx_addr, align 4
  %16 = ptrtoint ptr %rx_size to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %rx_size, align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %sg.i) #12
  %18 = getelementptr inbounds %struct.scatterlist, ptr %sg.i, i32 0, i32 3
  %19 = getelementptr inbounds %struct.scatterlist, ptr %sg.i, i32 0, i32 4
  %20 = call ptr @memset(ptr %sg.i, i32 255, i32 20)
  call void @sg_init_table(ptr noundef nonnull %sg.i, i32 noundef 1) #12
  %21 = ptrtoint ptr %18 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %15, ptr %18, align 4
  %22 = ptrtoint ptr %19 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %17, ptr %19, align 4
  %tobool.not.i = icmp eq ptr %13, null
  br i1 %tobool.not.i, label %entry.dmaengine_prep_slave_single.exit.thread_crit_edge, label %lor.lhs.false.i

entry.dmaengine_prep_slave_single.exit.thread_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %dmaengine_prep_slave_single.exit.thread

lor.lhs.false.i:                                  ; preds = %entry
  %23 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %13, align 4
  %tobool1.not.i = icmp eq ptr %24, null
  br i1 %tobool1.not.i, label %lor.lhs.false.i.dmaengine_prep_slave_single.exit.thread_crit_edge, label %lor.lhs.false2.i

lor.lhs.false.i.dmaengine_prep_slave_single.exit.thread_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %dmaengine_prep_slave_single.exit.thread

lor.lhs.false2.i:                                 ; preds = %lor.lhs.false.i
  %device_prep_slave_sg.i = getelementptr inbounds %struct.dma_device, ptr %24, i32 0, i32 39
  %25 = ptrtoint ptr %device_prep_slave_sg.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %device_prep_slave_sg.i, align 4
  %tobool4.not.i = icmp eq ptr %26, null
  br i1 %tobool4.not.i, label %lor.lhs.false2.i.dmaengine_prep_slave_single.exit.thread_crit_edge, label %dmaengine_prep_slave_single.exit

lor.lhs.false2.i.dmaengine_prep_slave_single.exit.thread_crit_edge: ; preds = %lor.lhs.false2.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %dmaengine_prep_slave_single.exit.thread

dmaengine_prep_slave_single.exit.thread:          ; preds = %lor.lhs.false2.i.dmaengine_prep_slave_single.exit.thread_crit_edge, %lor.lhs.false.i.dmaengine_prep_slave_single.exit.thread_crit_edge, %entry.dmaengine_prep_slave_single.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %sg.i) #12
  %rx_desc31 = getelementptr inbounds %struct.s3c24xx_uart_dma, ptr %1, i32 0, i32 15
  %27 = ptrtoint ptr %rx_desc31 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr null, ptr %rx_desc31, align 4
  br label %do.end

dmaengine_prep_slave_single.exit:                 ; preds = %lor.lhs.false2.i
  %call.i = call ptr %26(ptr noundef nonnull %13, ptr noundef nonnull %sg.i, i32 noundef 1, i32 noundef 2, i32 noundef 1, ptr noundef null) #12
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %sg.i) #12
  %rx_desc = getelementptr inbounds %struct.s3c24xx_uart_dma, ptr %1, i32 0, i32 15
  %28 = ptrtoint ptr %rx_desc to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %call.i, ptr %rx_desc, align 4
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %dmaengine_prep_slave_single.exit.do.end_crit_edge, label %if.end

dmaengine_prep_slave_single.exit.do.end_crit_edge: ; preds = %dmaengine_prep_slave_single.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end

do.end:                                           ; preds = %dmaengine_prep_slave_single.exit.do.end_crit_edge, %dmaengine_prep_slave_single.exit.thread
  %dev6 = getelementptr inbounds %struct.s3c24xx_uart_port, ptr %ourport, i32 0, i32 15, i32 45
  %29 = ptrtoint ptr %dev6 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %dev6, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %30, ptr noundef nonnull @.str.43) #15
  br label %cleanup

if.end:                                           ; preds = %dmaengine_prep_slave_single.exit
  call void @__sanitizer_cov_trace_pc() #14
  %callback = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %call.i, i32 0, i32 6
  %31 = ptrtoint ptr %callback to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr @s3c24xx_serial_rx_dma_complete, ptr %callback, align 4
  %32 = ptrtoint ptr %rx_desc to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %rx_desc, align 4
  %callback_param = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %33, i32 0, i32 8
  %34 = ptrtoint ptr %callback_param to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %ourport, ptr %callback_param, align 4
  %35 = ptrtoint ptr %rx_size to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %rx_size, align 4
  %rx_bytes_requested = getelementptr inbounds %struct.s3c24xx_uart_dma, ptr %1, i32 0, i32 17
  %37 = ptrtoint ptr %rx_bytes_requested to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %36, ptr %rx_bytes_requested, align 4
  %38 = load ptr, ptr %rx_desc, align 4
  %tx_submit.i = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %38, i32 0, i32 4
  %39 = ptrtoint ptr %tx_submit.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %tx_submit.i, align 4
  %call.i29 = call i32 %40(ptr noundef %38) #12
  %rx_cookie = getelementptr inbounds %struct.s3c24xx_uart_dma, ptr %1, i32 0, i32 8
  %41 = ptrtoint ptr %rx_cookie to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %call.i29, ptr %rx_cookie, align 4
  %42 = ptrtoint ptr %rx_chan to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %rx_chan, align 4
  %44 = ptrtoint ptr %43 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %43, align 4
  %device_issue_pending.i = getelementptr inbounds %struct.dma_device, ptr %45, i32 0, i32 50
  %46 = ptrtoint ptr %device_issue_pending.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %device_issue_pending.i, align 4
  call void %47(ptr noundef %43) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end, %do.end
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @s3c24xx_serial_rx_drain_fifo(ptr noundef %ourport) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %port1 = getelementptr inbounds %struct.s3c24xx_uart_port, ptr %ourport, i32 0, i32 15
  %fifosize = getelementptr inbounds %struct.s3c24xx_uart_port, ptr %ourport, i32 0, i32 15, i32 23
  %0 = ptrtoint ptr %fifosize to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %fifosize, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp177 = icmp sgt i32 %1, 0
  br i1 %cmp177, label %while.body.lr.ph, label %entry.while.end_crit_edge

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end

while.body.lr.ph:                                 ; preds = %entry
  %membase = getelementptr inbounds %struct.s3c24xx_uart_port, ptr %ourport, i32 0, i32 15, i32 2
  %info1.i = getelementptr inbounds %struct.s3c24xx_uart_port, ptr %ourport, i32 0, i32 12
  %iotype.i = getelementptr inbounds %struct.s3c24xx_uart_port, ptr %ourport, i32 0, i32 15, i32 26
  %flags = getelementptr inbounds %struct.s3c24xx_uart_port, ptr %ourport, i32 0, i32 15, i32 33
  %rx_enabled = getelementptr inbounds %struct.s3c24xx_uart_port, ptr %ourport, i32 0, i32 2
  %rx = getelementptr inbounds %struct.s3c24xx_uart_port, ptr %ourport, i32 0, i32 15, i32 31, i32 4
  %dev = getelementptr inbounds %struct.s3c24xx_uart_port, ptr %ourport, i32 0, i32 15, i32 45
  %brk = getelementptr inbounds %struct.s3c24xx_uart_port, ptr %ourport, i32 0, i32 15, i32 31, i32 9
  %frame = getelementptr inbounds %struct.s3c24xx_uart_port, ptr %ourport, i32 0, i32 15, i32 31, i32 6
  %overrun = getelementptr inbounds %struct.s3c24xx_uart_port, ptr %ourport, i32 0, i32 15, i32 31, i32 7
  %read_status_mask = getelementptr inbounds %struct.s3c24xx_uart_port, ptr %ourport, i32 0, i32 15, i32 28
  %sysrq.i = getelementptr inbounds %struct.s3c24xx_uart_port, ptr %ourport, i32 0, i32 15, i32 46
  br label %while.body

while.body:                                       ; preds = %while.cond.backedge.while.body_crit_edge, %while.body.lr.ph
  %dec179.in = phi i32 [ %1, %while.body.lr.ph ], [ %dec179, %while.cond.backedge.while.body_crit_edge ]
  %fifocnt.0178 = phi i32 [ 0, %while.body.lr.ph ], [ %dec7, %while.cond.backedge.while.body_crit_edge ]
  %dec179 = add nsw i32 %dec179.in, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %fifocnt.0178)
  %cmp2 = icmp eq i32 %fifocnt.0178, 0
  br i1 %cmp2, label %if.then, label %while.body.if.end6_crit_edge

while.body.if.end6_crit_edge:                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end6

if.then:                                          ; preds = %while.body
  %2 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %membase, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 24
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #12, !srcloc !300
  %5 = tail call i32 @llvm.bswap.i32(i32 %4)
  %6 = ptrtoint ptr %info1.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %info1.i, align 4
  %rx_fifofull.i = getelementptr inbounds %struct.s3c24xx_uart_info, ptr %7, i32 0, i32 6
  %8 = ptrtoint ptr %rx_fifofull.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %rx_fifofull.i, align 4
  %and.i = and i32 %9, %5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then.i

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  %10 = ptrtoint ptr %fifosize to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %fifosize, align 4
  br label %s3c24xx_serial_rx_fifocnt.exit

if.end.i:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  %rx_fifomask.i = getelementptr inbounds %struct.s3c24xx_uart_info, ptr %7, i32 0, i32 4
  %12 = ptrtoint ptr %rx_fifomask.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %rx_fifomask.i, align 4
  %and2.i = and i32 %13, %5
  %rx_fifoshift.i = getelementptr inbounds %struct.s3c24xx_uart_info, ptr %7, i32 0, i32 5
  %14 = ptrtoint ptr %rx_fifoshift.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %rx_fifoshift.i, align 4
  %shr.i = lshr i32 %and2.i, %15
  br label %s3c24xx_serial_rx_fifocnt.exit

s3c24xx_serial_rx_fifocnt.exit:                   ; preds = %if.end.i, %if.then.i
  %retval.0.i161 = phi i32 [ %11, %if.then.i ], [ %shr.i, %if.end.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i161)
  %cmp4 = icmp eq i32 %retval.0.i161, 0
  br i1 %cmp4, label %s3c24xx_serial_rx_fifocnt.exit.while.end_crit_edge, label %s3c24xx_serial_rx_fifocnt.exit.if.end6_crit_edge

s3c24xx_serial_rx_fifocnt.exit.if.end6_crit_edge: ; preds = %s3c24xx_serial_rx_fifocnt.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end6

s3c24xx_serial_rx_fifocnt.exit.while.end_crit_edge: ; preds = %s3c24xx_serial_rx_fifocnt.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end

if.end6:                                          ; preds = %s3c24xx_serial_rx_fifocnt.exit.if.end6_crit_edge, %while.body.if.end6_crit_edge
  %fifocnt.1 = phi i32 [ %retval.0.i161, %s3c24xx_serial_rx_fifocnt.exit.if.end6_crit_edge ], [ %fifocnt.0178, %while.body.if.end6_crit_edge ]
  %dec7 = add i32 %fifocnt.1, -1
  %16 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %membase, align 4
  %add.ptr10 = getelementptr i8, ptr %17, i32 20
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr10) #12, !srcloc !300
  %19 = tail call i32 @llvm.bswap.i32(i32 %18)
  %20 = ptrtoint ptr %iotype.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %iotype.i, align 2
  %22 = zext i8 %21 to i64
  call void @__sanitizer_cov_trace_switch(i64 %22, ptr @__sancov_gen_cov_switch_values.131)
  switch i8 %21, label %if.end6.rd_reg.exit_crit_edge [
    i8 2, label %sw.bb.i
    i8 3, label %sw.bb2.i
  ]

if.end6.rd_reg.exit_crit_edge:                    ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #14
  br label %rd_reg.exit

sw.bb.i:                                          ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #14
  %23 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %membase, align 4
  %add.ptr.i = getelementptr i8, ptr %24, i32 36
  %25 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i) #12, !srcloc !302
  %conv1.i = zext i8 %25 to i32
  br label %rd_reg.exit

sw.bb2.i:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #14
  %26 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %membase, align 4
  %add.ptr5.i = getelementptr i8, ptr %27, i32 36
  %28 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5.i) #12, !srcloc !300
  %29 = tail call i32 @llvm.bswap.i32(i32 %28) #12
  br label %rd_reg.exit

rd_reg.exit:                                      ; preds = %sw.bb2.i, %sw.bb.i, %if.end6.rd_reg.exit_crit_edge
  %retval.0.i162 = phi i32 [ %29, %sw.bb2.i ], [ %conv1.i, %sw.bb.i ], [ 0, %if.end6.rd_reg.exit_crit_edge ]
  %30 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %flags, align 4
  %and = and i32 %31, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %rd_reg.exit.if.end34_crit_edge, label %if.then14

rd_reg.exit.if.end34_crit_edge:                   ; preds = %rd_reg.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end34

if.then14:                                        ; preds = %rd_reg.exit
  %32 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %membase, align 4
  %add.ptr.i164 = getelementptr i8, ptr %33, i32 16
  %34 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i164) #12, !srcloc !300
  %35 = ptrtoint ptr %rx_enabled to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %rx_enabled, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %36)
  %tobool16.not = icmp eq i8 %36, 0
  %37 = and i32 %34, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %tobool22.not = icmp eq i32 %37, 0
  br i1 %tobool16.not, label %if.else, label %if.then17

if.then17:                                        ; preds = %if.then14
  br i1 %tobool22.not, label %if.then19, label %if.then17.if.end34_crit_edge

if.then17.if.end34_crit_edge:                     ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end34

if.then19:                                        ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #14
  %38 = ptrtoint ptr %rx_enabled to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 0, ptr %rx_enabled, align 2
  br label %while.cond.backedge

if.else:                                          ; preds = %if.then14
  br i1 %tobool22.not, label %if.else.while.cond.backedge_crit_edge, label %cleanup.thread

if.else.while.cond.backedge_crit_edge:            ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.cond.backedge

cleanup.thread:                                   ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  %39 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %membase, align 4
  %add.ptr26 = getelementptr i8, ptr %40, i32 8
  %41 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr26) #12, !srcloc !300
  %42 = or i32 %41, 33554432
  %43 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %membase, align 4
  %add.ptr30 = getelementptr i8, ptr %44, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr30, i32 %42) #12, !srcloc !301
  %45 = ptrtoint ptr %rx_enabled to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 1, ptr %rx_enabled, align 2
  br label %cleanup111

if.end34:                                         ; preds = %if.then17.if.end34_crit_edge, %rd_reg.exit.if.end34_crit_edge
  %46 = ptrtoint ptr %rx to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %rx, align 4
  %inc = add i32 %47, 1
  store i32 %inc, ptr %rx, align 4
  %and35 = and i32 %19, 13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and35)
  %tobool36.not = icmp eq i32 %and35, 0
  br i1 %tobool36.not, label %if.end34.if.end105_crit_edge, label %do.body, !prof !311

if.end34.if.end105_crit_edge:                     ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end105

do.body:                                          ; preds = %if.end34
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @s3c24xx_serial_rx_drain_fifo.__UNIQUE_ID_ddebug249, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@s3c24xx_serial_rx_drain_fifo, %if.then49)) #12
          to label %do.end [label %if.then49], !srcloc !299

if.then49:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  %48 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @s3c24xx_serial_rx_drain_fifo.__UNIQUE_ID_ddebug249, ptr noundef %49, ptr noundef nonnull @.str.46, i32 noundef %retval.0.i162, i32 noundef %19) #12
  br label %do.end

do.end:                                           ; preds = %if.then49, %do.body
  %and51 = and i32 %19, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and51)
  %tobool52.not = icmp eq i32 %and51, 0
  br i1 %tobool52.not, label %do.end.if.end77_crit_edge, label %do.body54

do.end.if.end77_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end77

do.body54:                                        ; preds = %do.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @s3c24xx_serial_rx_drain_fifo.__UNIQUE_ID_ddebug250, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@s3c24xx_serial_rx_drain_fifo, %if.then66)) #12
          to label %do.end70 [label %if.then66], !srcloc !299

if.then66:                                        ; preds = %do.body54
  call void @__sanitizer_cov_trace_pc() #14
  %50 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @s3c24xx_serial_rx_drain_fifo.__UNIQUE_ID_ddebug250, ptr noundef %51, ptr noundef nonnull @.str.47) #12
  br label %do.end70

do.end70:                                         ; preds = %if.then66, %do.body54
  %52 = ptrtoint ptr %brk to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %brk, align 4
  %inc72 = add i32 %53, 1
  store i32 %inc72, ptr %brk, align 4
  %call73 = tail call fastcc i32 @uart_handle_break(ptr noundef %port1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call73)
  %tobool74.not = icmp eq i32 %call73, 0
  br i1 %tobool74.not, label %do.end70.if.end77_crit_edge, label %do.end70.while.cond.backedge_crit_edge

do.end70.while.cond.backedge_crit_edge:           ; preds = %do.end70
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.cond.backedge

do.end70.if.end77_crit_edge:                      ; preds = %do.end70
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end77

if.end77:                                         ; preds = %do.end70.if.end77_crit_edge, %do.end.if.end77_crit_edge
  %and78 = and i32 %19, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and78)
  %tobool79.not = icmp eq i32 %and78, 0
  br i1 %tobool79.not, label %if.end77.if.end83_crit_edge, label %if.then80

if.end77.if.end83_crit_edge:                      ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end83

if.then80:                                        ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #14
  %54 = ptrtoint ptr %frame to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %frame, align 4
  %inc82 = add i32 %55, 1
  store i32 %inc82, ptr %frame, align 4
  br label %if.end83

if.end83:                                         ; preds = %if.then80, %if.end77.if.end83_crit_edge
  %and84 = and i32 %19, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and84)
  %tobool85.not = icmp eq i32 %and84, 0
  br i1 %tobool85.not, label %if.end83.if.end89_crit_edge, label %if.then86

if.end83.if.end89_crit_edge:                      ; preds = %if.end83
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end89

if.then86:                                        ; preds = %if.end83
  call void @__sanitizer_cov_trace_pc() #14
  %56 = ptrtoint ptr %overrun to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %overrun, align 4
  %inc88 = add i32 %57, 1
  store i32 %inc88, ptr %overrun, align 4
  br label %if.end89

if.end89:                                         ; preds = %if.then86, %if.end83.if.end89_crit_edge
  %58 = ptrtoint ptr %read_status_mask to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %read_status_mask, align 4
  %and90 = and i32 %59, %19
  %and91 = and i32 %and90, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and91)
  %tobool92.not = icmp eq i32 %and91, 0
  br i1 %tobool92.not, label %if.else94, label %if.end89.if.end105_crit_edge

if.end89.if.end105_crit_edge:                     ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end105

if.else94:                                        ; preds = %if.end89
  %and95 = and i32 %and90, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and95)
  %tobool96.not = icmp eq i32 %and95, 0
  br i1 %tobool96.not, label %if.else98, label %if.else94.if.end105_crit_edge

if.else94.if.end105_crit_edge:                    ; preds = %if.else94
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end105

if.else98:                                        ; preds = %if.else94
  call void @__sanitizer_cov_trace_pc() #14
  %and99 = and i32 %and90, 5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and99)
  %tobool100.not = icmp eq i32 %and99, 0
  %spec.select = select i1 %tobool100.not, i32 0, i32 2
  br label %if.end105

if.end105:                                        ; preds = %if.else98, %if.else94.if.end105_crit_edge, %if.end89.if.end105_crit_edge, %if.end34.if.end105_crit_edge
  %uerstat.0 = phi i32 [ %19, %if.end34.if.end105_crit_edge ], [ %and90, %if.end89.if.end105_crit_edge ], [ %and90, %if.else94.if.end105_crit_edge ], [ %and90, %if.else98 ]
  %flag.0 = phi i32 [ 0, %if.end34.if.end105_crit_edge ], [ 1, %if.end89.if.end105_crit_edge ], [ 3, %if.else94.if.end105_crit_edge ], [ %spec.select, %if.else98 ]
  %60 = ptrtoint ptr %sysrq.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %sysrq.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %61)
  %tobool.not.i166 = icmp eq i32 %61, 0
  br i1 %tobool.not.i166, label %if.end105.if.end109_crit_edge, label %if.end.i167

if.end105.if.end109_crit_edge:                    ; preds = %if.end105
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end109

if.end.i167:                                      ; preds = %if.end105
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i162)
  %tobool1.not.i = icmp eq i32 %retval.0.i162, 0
  br i1 %tobool1.not.i, label %if.end.i167.uart_handle_sysrq_char.exit.thread182_crit_edge, label %land.lhs.true.i

if.end.i167.uart_handle_sysrq_char.exit.thread182_crit_edge: ; preds = %if.end.i167
  call void @__sanitizer_cov_trace_pc() #14
  br label %uart_handle_sysrq_char.exit.thread182

land.lhs.true.i:                                  ; preds = %if.end.i167
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %62 = load volatile i32, ptr @jiffies, align 128
  %sub.i = sub i32 %62, %61
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i)
  %cmp.i = icmp slt i32 %sub.i, 0
  br i1 %cmp.i, label %if.then3.i, label %land.lhs.true.i.uart_handle_sysrq_char.exit.thread182_crit_edge

land.lhs.true.i.uart_handle_sysrq_char.exit.thread182_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %uart_handle_sysrq_char.exit.thread182

if.then3.i:                                       ; preds = %land.lhs.true.i
  %call.i = tail call i32 @sysrq_mask() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool4.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool4.not.i, label %if.end7.i, label %uart_handle_sysrq_char.exit

if.end7.i:                                        ; preds = %if.then3.i
  %call8.i = tail call zeroext i1 @uart_try_toggle_sysrq(ptr noundef %port1, i32 noundef %retval.0.i162) #12
  br i1 %call8.i, label %if.end7.i.while.cond.backedge_crit_edge, label %if.end7.i.uart_handle_sysrq_char.exit.thread182_crit_edge

if.end7.i.uart_handle_sysrq_char.exit.thread182_crit_edge: ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %uart_handle_sysrq_char.exit.thread182

if.end7.i.while.cond.backedge_crit_edge:          ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.cond.backedge

uart_handle_sysrq_char.exit.thread182:            ; preds = %if.end7.i.uart_handle_sysrq_char.exit.thread182_crit_edge, %land.lhs.true.i.uart_handle_sysrq_char.exit.thread182_crit_edge, %if.end.i167.uart_handle_sysrq_char.exit.thread182_crit_edge
  %63 = ptrtoint ptr %sysrq.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 0, ptr %sysrq.i, align 4
  br label %if.end109

uart_handle_sysrq_char.exit:                      ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @handle_sysrq(i32 noundef %retval.0.i162) #12
  %64 = ptrtoint ptr %sysrq.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 0, ptr %sysrq.i, align 4
  br label %while.cond.backedge

if.end109:                                        ; preds = %uart_handle_sysrq_char.exit.thread182, %if.end105.if.end109_crit_edge
  tail call void @uart_insert_char(ptr noundef %port1, i32 noundef %uerstat.0, i32 noundef 1, i32 noundef %retval.0.i162, i32 noundef %flag.0) #12
  br label %while.cond.backedge

while.cond.backedge:                              ; preds = %if.end109, %uart_handle_sysrq_char.exit, %if.end7.i.while.cond.backedge_crit_edge, %do.end70.while.cond.backedge_crit_edge, %if.else.while.cond.backedge_crit_edge, %if.then19
  %cmp = icmp ugt i32 %dec179.in, 1
  br i1 %cmp, label %while.cond.backedge.while.body_crit_edge, label %while.cond.backedge.while.end_crit_edge

while.cond.backedge.while.end_crit_edge:          ; preds = %while.cond.backedge
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end

while.cond.backedge.while.body_crit_edge:         ; preds = %while.cond.backedge
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body

while.end:                                        ; preds = %while.cond.backedge.while.end_crit_edge, %s3c24xx_serial_rx_fifocnt.exit.while.end_crit_edge, %entry.while.end_crit_edge
  %state = getelementptr inbounds %struct.s3c24xx_uart_port, ptr %ourport, i32 0, i32 15, i32 30
  %65 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %state, align 4
  tail call void @tty_flip_buffer_push(ptr noundef %66) #12
  br label %cleanup111

cleanup111:                                       ; preds = %while.end, %cleanup.thread
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @tty_flip_buffer_push(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @tty_kref_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @s3c24xx_serial_rx_dma_complete(ptr noundef %args) #3 align 64 {
entry:
  %state7 = alloca %struct.dma_tx_state, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %port1 = getelementptr inbounds %struct.s3c24xx_uart_port, ptr %args, i32 0, i32 15
  %dma2 = getelementptr inbounds %struct.s3c24xx_uart_port, ptr %args, i32 0, i32 18
  %0 = ptrtoint ptr %dma2 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dma2, align 4
  %state = getelementptr inbounds %struct.s3c24xx_uart_port, ptr %args, i32 0, i32 15, i32 30
  %2 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %state, align 4
  %call = tail call ptr @tty_port_tty_get(ptr noundef %3) #12
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %state7) #12
  %4 = getelementptr inbounds %struct.dma_tx_state, ptr %state7, i32 0, i32 2
  %rx_chan = getelementptr inbounds %struct.s3c24xx_uart_dma, ptr %1, i32 0, i32 4
  %5 = call ptr @memset(ptr %state7, i32 255, i32 16)
  %6 = ptrtoint ptr %rx_chan to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %rx_chan, align 4
  %rx_cookie = getelementptr inbounds %struct.s3c24xx_uart_dma, ptr %1, i32 0, i32 8
  %8 = ptrtoint ptr %rx_cookie to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %rx_cookie, align 4
  %10 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %7, align 4
  %device_tx_status.i = getelementptr inbounds %struct.dma_device, ptr %11, i32 0, i32 49
  %12 = ptrtoint ptr %device_tx_status.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %device_tx_status.i, align 4
  %call.i = call i32 %13(ptr noundef %7, i32 noundef %9, ptr noundef nonnull %state7) #12
  %rx_bytes_requested = getelementptr inbounds %struct.s3c24xx_uart_dma, ptr %1, i32 0, i32 17
  %14 = ptrtoint ptr %rx_bytes_requested to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %rx_bytes_requested, align 4
  %16 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %4, align 4
  %rx_desc = getelementptr inbounds %struct.s3c24xx_uart_dma, ptr %1, i32 0, i32 15
  %18 = ptrtoint ptr %rx_desc to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %rx_desc, align 4
  %flags.i = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %19, i32 0, i32 1
  %20 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %flags.i, align 4
  %or.i = or i32 %21, 2
  store i32 %or.i, ptr %flags.i, align 4
  %call11 = call i32 @_raw_spin_lock_irqsave(ptr noundef %port1) #12
  call void @__sanitizer_cov_trace_cmp4(i32 %15, i32 %17)
  %tobool.not = icmp eq i32 %15, %17
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %sub = sub i32 %15, %17
  call fastcc void @s3c24xx_uart_copy_rx_to_tty(ptr noundef %args, ptr noundef %3, i32 noundef %sub)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %tobool14.not = icmp eq ptr %call, null
  br i1 %tobool14.not, label %if.end.if.end16_crit_edge, label %if.then15

if.end.if.end16_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end16

if.then15:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  call void @tty_flip_buffer_push(ptr noundef %3) #12
  call void @tty_kref_put(ptr noundef nonnull %call) #12
  br label %if.end16

if.end16:                                         ; preds = %if.then15, %if.end.if.end16_crit_edge
  call fastcc void @s3c64xx_start_rx_dma(ptr noundef %args)
  call void @_raw_spin_unlock_irqrestore(ptr noundef %port1, i32 noundef %call11) #12
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %state7) #12
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @uart_handle_break(ptr noundef %port) unnamed_addr #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  %state1 = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 30
  %0 = ptrtoint ptr %state1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %state1, align 4
  %handle_break = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 17
  %2 = ptrtoint ptr %handle_break to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %handle_break, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void %3(ptr noundef %port) #12
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %has_sysrq = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 48
  %4 = ptrtoint ptr %has_sysrq to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %has_sysrq, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool3.not = icmp eq i8 %5, 0
  br i1 %tobool3.not, label %if.end.if.end15_crit_edge, label %land.lhs.true

if.end.if.end15_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end15

land.lhs.true:                                    ; preds = %if.end
  %cons = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 32
  %6 = ptrtoint ptr %cons to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %cons, align 4
  %tobool4.not = icmp eq ptr %7, null
  br i1 %tobool4.not, label %land.lhs.true.if.end15_crit_edge, label %land.lhs.true5

land.lhs.true.if.end15_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end15

land.lhs.true5:                                   ; preds = %land.lhs.true
  %index = getelementptr inbounds %struct.console, ptr %7, i32 0, i32 9
  %8 = ptrtoint ptr %index to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %index, align 2
  %conv7 = sext i16 %9 to i32
  %line = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 41
  %10 = ptrtoint ptr %line to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %line, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %conv7)
  %cmp = icmp eq i32 %11, %conv7
  br i1 %cmp, label %if.then9, label %land.lhs.true5.if.end15_crit_edge

land.lhs.true5.if.end15_crit_edge:                ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end15

if.then9:                                         ; preds = %land.lhs.true5
  %sysrq = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 46
  %12 = ptrtoint ptr %sysrq to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %sysrq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool10.not = icmp eq i32 %13, 0
  br i1 %tobool10.not, label %if.then11, label %if.end13

if.then11:                                        ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %14 = load volatile i32, ptr @jiffies, align 128
  %add = add i32 %14, 500
  %15 = ptrtoint ptr %sysrq to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %add, ptr %sysrq, align 4
  br label %cleanup

if.end13:                                         ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #14
  %16 = ptrtoint ptr %sysrq to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %sysrq, align 4
  br label %if.end15

if.end15:                                         ; preds = %if.end13, %land.lhs.true5.if.end15_crit_edge, %land.lhs.true.if.end15_crit_edge, %if.end.if.end15_crit_edge
  %flags = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 33
  %17 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %flags, align 4
  %and = and i32 %18, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool16.not = icmp eq i32 %and, 0
  br i1 %tobool16.not, label %if.end15.cleanup_crit_edge, label %if.then17

if.end15.cleanup_crit_edge:                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then17:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #14
  %tty = getelementptr inbounds %struct.tty_port, ptr %1, i32 0, i32 1
  %19 = ptrtoint ptr %tty to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %tty, align 4
  tail call void @do_SAK(ptr noundef %20) #12
  br label %cleanup

cleanup:                                          ; preds = %if.then17, %if.end15.cleanup_crit_edge, %if.then11
  %retval.0 = phi i32 [ 1, %if.then11 ], [ 0, %if.then17 ], [ 0, %if.end15.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @uart_insert_char(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @do_SAK(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysrq_mask() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @handle_sysrq(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @uart_try_toggle_sysrq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @s3c24xx_serial_release_dma(ptr nocapture noundef readonly %p) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %dma1 = getelementptr inbounds %struct.s3c24xx_uart_port, ptr %p, i32 0, i32 18
  %0 = ptrtoint ptr %dma1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dma1, align 4
  %rx_chan = getelementptr inbounds %struct.s3c24xx_uart_dma, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %rx_chan to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rx_chan, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %entry
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %device_terminate_all.i = getelementptr inbounds %struct.dma_device, ptr %5, i32 0, i32 47
  %6 = ptrtoint ptr %device_terminate_all.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %device_terminate_all.i, align 4
  %tobool.not.i = icmp eq ptr %7, null
  br i1 %tobool.not.i, label %if.then.dmaengine_terminate_all.exit_crit_edge, label %if.then.i

if.then.dmaengine_terminate_all.exit_crit_edge:   ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %dmaengine_terminate_all.exit

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  %call.i = tail call i32 %7(ptr noundef nonnull %3) #12
  br label %dmaengine_terminate_all.exit

dmaengine_terminate_all.exit:                     ; preds = %if.then.i, %if.then.dmaengine_terminate_all.exit_crit_edge
  %8 = ptrtoint ptr %rx_chan to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %rx_chan, align 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %9, align 4
  %dev = getelementptr inbounds %struct.dma_device, ptr %11, i32 0, i32 15
  %12 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev, align 4
  %rx_addr = getelementptr inbounds %struct.s3c24xx_uart_dma, ptr %1, i32 0, i32 6
  %14 = ptrtoint ptr %rx_addr to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %rx_addr, align 4
  %rx_size = getelementptr inbounds %struct.s3c24xx_uart_dma, ptr %1, i32 0, i32 12
  %16 = ptrtoint ptr %rx_size to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %rx_size, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %13, i32 noundef %15, i32 noundef %17, i32 noundef 2, i32 noundef 0) #12
  %rx_buf = getelementptr inbounds %struct.s3c24xx_uart_dma, ptr %1, i32 0, i32 10
  %18 = ptrtoint ptr %rx_buf to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %rx_buf, align 4
  tail call void @kfree(ptr noundef %19) #12
  %20 = ptrtoint ptr %rx_chan to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %rx_chan, align 4
  tail call void @dma_release_channel(ptr noundef %21) #12
  %22 = ptrtoint ptr %rx_chan to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr null, ptr %rx_chan, align 4
  br label %if.end

if.end:                                           ; preds = %dmaengine_terminate_all.exit, %entry.if.end_crit_edge
  %tx_chan = getelementptr inbounds %struct.s3c24xx_uart_dma, ptr %1, i32 0, i32 5
  %23 = ptrtoint ptr %tx_chan to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %tx_chan, align 4
  %tobool6.not = icmp eq ptr %24, null
  br i1 %tobool6.not, label %if.end.if.end15_crit_edge, label %if.then7

if.end.if.end15_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end15

if.then7:                                         ; preds = %if.end
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %24, align 4
  %device_terminate_all.i30 = getelementptr inbounds %struct.dma_device, ptr %26, i32 0, i32 47
  %27 = ptrtoint ptr %device_terminate_all.i30 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %device_terminate_all.i30, align 4
  %tobool.not.i31 = icmp eq ptr %28, null
  br i1 %tobool.not.i31, label %if.then7.dmaengine_terminate_all.exit34_crit_edge, label %if.then.i33

if.then7.dmaengine_terminate_all.exit34_crit_edge: ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #14
  br label %dmaengine_terminate_all.exit34

if.then.i33:                                      ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #14
  %call.i32 = tail call i32 %28(ptr noundef nonnull %24) #12
  br label %dmaengine_terminate_all.exit34

dmaengine_terminate_all.exit34:                   ; preds = %if.then.i33, %if.then7.dmaengine_terminate_all.exit34_crit_edge
  %29 = ptrtoint ptr %tx_chan to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %tx_chan, align 4
  %31 = ptrtoint ptr %30 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %30, align 4
  %dev12 = getelementptr inbounds %struct.dma_device, ptr %32, i32 0, i32 15
  %33 = ptrtoint ptr %dev12 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %dev12, align 4
  %tx_addr = getelementptr inbounds %struct.s3c24xx_uart_dma, ptr %1, i32 0, i32 7
  %35 = ptrtoint ptr %tx_addr to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %tx_addr, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %34, i32 noundef %36, i32 noundef 4096, i32 noundef 1, i32 noundef 0) #12
  %37 = ptrtoint ptr %tx_chan to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %tx_chan, align 4
  tail call void @dma_release_channel(ptr noundef %38) #12
  %39 = ptrtoint ptr %tx_chan to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr null, ptr %tx_chan, align 4
  br label %if.end15

if.end15:                                         ; preds = %dmaengine_terminate_all.exit34, %if.end.if.end15_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_release_channel(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_unmap_page_attrs(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @uart_get_baud_rate(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @uart_update_timeout(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @s3c64xx_serial_startup(ptr noundef %port) #3 align 64 {
entry:
  %dma_caps.i = alloca %struct.dma_slave_caps, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %port, i32 -48
  %membase = getelementptr %struct.uart_port, ptr %port, i32 0, i32 2
  %0 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %membase, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 56
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 251658240) #12, !srcloc !301
  %dma = getelementptr i8, ptr %port, i32 368
  %2 = ptrtoint ptr %dma to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dma, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.if.end5_crit_edge, label %if.then

entry.if.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end5

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %dma_caps.i) #12
  %4 = call ptr @memset(ptr %dma_caps.i, i32 255, i32 36)
  %rx_conf.i = getelementptr inbounds %struct.s3c24xx_uart_dma, ptr %3, i32 0, i32 2
  %5 = ptrtoint ptr %rx_conf.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 2, ptr %rx_conf.i, align 4
  %src_addr_width.i = getelementptr inbounds %struct.s3c24xx_uart_dma, ptr %3, i32 0, i32 2, i32 3
  %6 = ptrtoint ptr %src_addr_width.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 1, ptr %src_addr_width.i, align 4
  %mapbase.i = getelementptr i8, ptr %port, i32 240
  %7 = ptrtoint ptr %mapbase.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %mapbase.i, align 4
  %add.i = add i32 %8, 36
  %src_addr.i = getelementptr inbounds %struct.s3c24xx_uart_dma, ptr %3, i32 0, i32 2, i32 1
  %9 = ptrtoint ptr %src_addr.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %add.i, ptr %src_addr.i, align 4
  %src_maxburst.i = getelementptr inbounds %struct.s3c24xx_uart_dma, ptr %3, i32 0, i32 2, i32 5
  %10 = ptrtoint ptr %src_maxburst.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 1, ptr %src_maxburst.i, align 4
  %tx_conf.i = getelementptr inbounds %struct.s3c24xx_uart_dma, ptr %3, i32 0, i32 3
  %11 = ptrtoint ptr %tx_conf.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 1, ptr %tx_conf.i, align 4
  %dst_addr_width.i = getelementptr inbounds %struct.s3c24xx_uart_dma, ptr %3, i32 0, i32 3, i32 4
  %12 = ptrtoint ptr %dst_addr_width.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 1, ptr %dst_addr_width.i, align 4
  %13 = load i32, ptr %mapbase.i, align 4
  %add9.i = add i32 %13, 32
  %dst_addr.i = getelementptr inbounds %struct.s3c24xx_uart_dma, ptr %3, i32 0, i32 3, i32 2
  %14 = ptrtoint ptr %dst_addr.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %add9.i, ptr %dst_addr.i, align 4
  %dst_maxburst.i = getelementptr inbounds %struct.s3c24xx_uart_dma, ptr %3, i32 0, i32 3, i32 6
  %15 = ptrtoint ptr %dst_maxburst.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 1, ptr %dst_maxburst.i, align 4
  %dev.i = getelementptr i8, ptr %port, i32 248
  %16 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev.i, align 4
  %call.i = tail call ptr @dma_request_chan(ptr noundef %17, ptr noundef nonnull @.str.64) #12
  %rx_chan.i = getelementptr inbounds %struct.s3c24xx_uart_dma, ptr %3, i32 0, i32 4
  %18 = ptrtoint ptr %rx_chan.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %call.i, ptr %rx_chan.i, align 4
  %cmp.i.i = icmp ugt ptr %call.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %err_warn.thread.i, label %if.end.i

err_warn.thread.i:                                ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  %19 = ptrtoint ptr %call.i to i32
  br label %s3c24xx_serial_request_dma.exit

if.end.i:                                         ; preds = %if.then
  %call18.i = call i32 @dma_get_slave_caps(ptr noundef %call.i, ptr noundef nonnull %dma_caps.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18.i)
  %cmp.i = icmp slt i32 %call18.i, 0
  br i1 %cmp.i, label %if.end.i.err_warn.thread154.i_crit_edge, label %lor.lhs.false.i

if.end.i.err_warn.thread154.i_crit_edge:          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %err_warn.thread154.i

lor.lhs.false.i:                                  ; preds = %if.end.i
  %residue_granularity.i = getelementptr inbounds %struct.dma_slave_caps, ptr %dma_caps.i, i32 0, i32 9
  %20 = ptrtoint ptr %residue_granularity.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %residue_granularity.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %21)
  %cmp19.i = icmp ult i32 %21, 2
  br i1 %cmp19.i, label %lor.lhs.false.i.err_warn.thread154.i_crit_edge, label %if.end21.i

lor.lhs.false.i.err_warn.thread154.i_crit_edge:   ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %err_warn.thread154.i

if.end21.i:                                       ; preds = %lor.lhs.false.i
  %22 = ptrtoint ptr %rx_chan.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %rx_chan.i, align 4
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %23, align 4
  %device_config.i.i = getelementptr inbounds %struct.dma_device, ptr %25, i32 0, i32 44
  %26 = ptrtoint ptr %device_config.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %device_config.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %27, null
  br i1 %tobool.not.i.i, label %if.end21.i.dmaengine_slave_config.exit.i_crit_edge, label %if.then.i.i

if.end21.i.dmaengine_slave_config.exit.i_crit_edge: ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %dmaengine_slave_config.exit.i

if.then.i.i:                                      ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #14
  %call.i.i = call i32 %27(ptr noundef %23, ptr noundef %rx_conf.i) #12
  br label %dmaengine_slave_config.exit.i

dmaengine_slave_config.exit.i:                    ; preds = %if.then.i.i, %if.end21.i.dmaengine_slave_config.exit.i_crit_edge
  %28 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %dev.i, align 4
  %call27.i = call ptr @dma_request_chan(ptr noundef %29, ptr noundef nonnull @.str.67) #12
  %tx_chan.i = getelementptr inbounds %struct.s3c24xx_uart_dma, ptr %3, i32 0, i32 5
  %30 = ptrtoint ptr %tx_chan.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %call27.i, ptr %tx_chan.i, align 4
  %cmp.i140.i = icmp ugt ptr %call27.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i140.i, label %if.then30.i, label %if.end33.i

if.then30.i:                                      ; preds = %dmaengine_slave_config.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  %31 = ptrtoint ptr %call27.i to i32
  br label %err_warn.thread154.i

if.end33.i:                                       ; preds = %dmaengine_slave_config.exit.i
  %call35.i = call i32 @dma_get_slave_caps(ptr noundef %call27.i, ptr noundef nonnull %dma_caps.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call35.i)
  %cmp36.i = icmp slt i32 %call35.i, 0
  br i1 %cmp36.i, label %if.end33.i.err_warn.i_crit_edge, label %lor.lhs.false37.i

if.end33.i.err_warn.i_crit_edge:                  ; preds = %if.end33.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %err_warn.i

lor.lhs.false37.i:                                ; preds = %if.end33.i
  %32 = ptrtoint ptr %residue_granularity.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %residue_granularity.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %33)
  %cmp39.i = icmp ult i32 %33, 2
  br i1 %cmp39.i, label %lor.lhs.false37.i.err_warn.i_crit_edge, label %if.end41.i

lor.lhs.false37.i.err_warn.i_crit_edge:           ; preds = %lor.lhs.false37.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %err_warn.i

if.end41.i:                                       ; preds = %lor.lhs.false37.i
  %34 = ptrtoint ptr %tx_chan.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %tx_chan.i, align 4
  %36 = ptrtoint ptr %35 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %35, align 4
  %device_config.i141.i = getelementptr inbounds %struct.dma_device, ptr %37, i32 0, i32 44
  %38 = ptrtoint ptr %device_config.i141.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %device_config.i141.i, align 4
  %tobool.not.i142.i = icmp eq ptr %39, null
  br i1 %tobool.not.i142.i, label %if.end41.i.dmaengine_slave_config.exit145.i_crit_edge, label %if.then.i144.i

if.end41.i.dmaengine_slave_config.exit145.i_crit_edge: ; preds = %if.end41.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %dmaengine_slave_config.exit145.i

if.then.i144.i:                                   ; preds = %if.end41.i
  call void @__sanitizer_cov_trace_pc() #14
  %call.i143.i = call i32 %39(ptr noundef %35, ptr noundef %tx_conf.i) #12
  br label %dmaengine_slave_config.exit145.i

dmaengine_slave_config.exit145.i:                 ; preds = %if.then.i144.i, %if.end41.i.dmaengine_slave_config.exit145.i_crit_edge
  %rx_size.i = getelementptr inbounds %struct.s3c24xx_uart_dma, ptr %3, i32 0, i32 12
  %40 = ptrtoint ptr %rx_size.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 4096, ptr %rx_size.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12) to i32))
  %41 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12), align 4
  %call7.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %41, i32 noundef 3264, i32 noundef 4096) #16
  %rx_buf.i = getelementptr inbounds %struct.s3c24xx_uart_dma, ptr %3, i32 0, i32 10
  %42 = ptrtoint ptr %rx_buf.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %call7.i.i, ptr %rx_buf.i, align 4
  %tobool.not.i = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not.i, label %dmaengine_slave_config.exit145.i.err_warn.i_crit_edge, label %if.end49.i

dmaengine_slave_config.exit145.i.err_warn.i_crit_edge: ; preds = %dmaengine_slave_config.exit145.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %err_warn.i

if.end49.i:                                       ; preds = %dmaengine_slave_config.exit145.i
  %43 = ptrtoint ptr %rx_chan.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %rx_chan.i, align 4
  %45 = ptrtoint ptr %44 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %44, align 4
  %dev51.i = getelementptr inbounds %struct.dma_device, ptr %46, i32 0, i32 15
  %47 = ptrtoint ptr %dev51.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %dev51.i, align 4
  %49 = ptrtoint ptr %rx_size.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %rx_size.i, align 4
  %call.i79 = call zeroext i1 @is_vmalloc_addr(ptr noundef nonnull %call7.i.i) #12
  br i1 %call.i79, label %land.rhs.i81, label %if.end39.i94

land.rhs.i81:                                     ; preds = %if.end49.i
  %.b1.i80 = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  br i1 %.b1.i80, label %land.rhs.i81.dma_map_single_attrs.exit96_crit_edge, label %if.then.i85, !prof !311

land.rhs.i81.dma_map_single_attrs.exit96_crit_edge: ; preds = %land.rhs.i81
  call void @__sanitizer_cov_trace_pc() #14
  br label %dma_map_single_attrs.exit96

if.then.i85:                                      ; preds = %land.rhs.i81
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %call16.i82 = call ptr @dev_driver_string(ptr noundef %48) #12
  %init_name.i.i83 = getelementptr inbounds %struct.device, ptr %48, i32 0, i32 3
  %51 = ptrtoint ptr %init_name.i.i83 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %init_name.i.i83, align 8
  %tobool.not.i.i84 = icmp eq ptr %52, null
  br i1 %tobool.not.i.i84, label %if.end.i.i86, label %if.then.i85.dev_name.exit.i88_crit_edge

if.then.i85.dev_name.exit.i88_crit_edge:          ; preds = %if.then.i85
  call void @__sanitizer_cov_trace_pc() #14
  br label %dev_name.exit.i88

if.end.i.i86:                                     ; preds = %if.then.i85
  call void @__sanitizer_cov_trace_pc() #14
  %53 = ptrtoint ptr %48 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %48, align 4
  br label %dev_name.exit.i88

dev_name.exit.i88:                                ; preds = %if.end.i.i86, %if.then.i85.dev_name.exit.i88_crit_edge
  %retval.0.i.i87 = phi ptr [ %54, %if.end.i.i86 ], [ %52, %if.then.i85.dev_name.exit.i88_crit_edge ]
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.74, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.75, ptr noundef %call16.i82, ptr noundef %retval.0.i.i87) #12
  br label %dma_map_single_attrs.exit96

if.end39.i94:                                     ; preds = %if.end49.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @debug_dma_map_single(ptr noundef %48, ptr noundef nonnull %call7.i.i, i32 noundef %50) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %55 = load ptr, ptr @mem_map, align 4
  %56 = ptrtoint ptr %call7.i.i to i32
  %sub.i89 = add i32 %56, 1073741824
  %shr.i90 = lshr i32 %sub.i89, 12
  %add.ptr.i91 = getelementptr %struct.page, ptr %55, i32 %shr.i90
  %and.i92 = and i32 %56, 4088
  %call41.i93 = call i32 @dma_map_page_attrs(ptr noundef %48, ptr noundef %add.ptr.i91, i32 noundef %and.i92, i32 noundef %50, i32 noundef 2, i32 noundef 0) #12
  br label %dma_map_single_attrs.exit96

dma_map_single_attrs.exit96:                      ; preds = %if.end39.i94, %dev_name.exit.i88, %land.rhs.i81.dma_map_single_attrs.exit96_crit_edge
  %retval.0.i95 = phi i32 [ %call41.i93, %if.end39.i94 ], [ -1, %dev_name.exit.i88 ], [ -1, %land.rhs.i81.dma_map_single_attrs.exit96_crit_edge ]
  %rx_addr.i = getelementptr inbounds %struct.s3c24xx_uart_dma, ptr %3, i32 0, i32 6
  %57 = ptrtoint ptr %rx_addr.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %retval.0.i95, ptr %rx_addr.i, align 4
  %58 = ptrtoint ptr %rx_chan.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %rx_chan.i, align 4
  %60 = ptrtoint ptr %59 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %59, align 4
  %dev57.i = getelementptr inbounds %struct.dma_device, ptr %61, i32 0, i32 15
  %62 = ptrtoint ptr %dev57.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %dev57.i, align 4
  call void @debug_dma_mapping_error(ptr noundef %63, i32 noundef %retval.0.i95) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %retval.0.i95)
  %cmp.i146.not.i = icmp eq i32 %retval.0.i95, -1
  br i1 %cmp.i146.not.i, label %dma_map_single_attrs.exit96.err_free_rx.i_crit_edge, label %if.end62.i

dma_map_single_attrs.exit96.err_free_rx.i_crit_edge: ; preds = %dma_map_single_attrs.exit96
  call void @__sanitizer_cov_trace_pc() #14
  br label %err_free_rx.i

if.end62.i:                                       ; preds = %dma_map_single_attrs.exit96
  %64 = ptrtoint ptr %tx_chan.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %tx_chan.i, align 4
  %66 = ptrtoint ptr %65 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %65, align 4
  %dev65.i = getelementptr inbounds %struct.dma_device, ptr %67, i32 0, i32 15
  %68 = ptrtoint ptr %dev65.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %dev65.i, align 4
  %state.i = getelementptr i8, ptr %port, i32 148
  %70 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %state.i, align 4
  %xmit.i = getelementptr inbounds %struct.uart_state, ptr %71, i32 0, i32 2
  %72 = ptrtoint ptr %xmit.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %xmit.i, align 4
  %call.i73 = call zeroext i1 @is_vmalloc_addr(ptr noundef %73) #12
  br i1 %call.i73, label %land.rhs.i, label %if.end39.i

land.rhs.i:                                       ; preds = %if.end62.i
  %.b1.i = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  br i1 %.b1.i, label %land.rhs.i.dma_map_single_attrs.exit_crit_edge, label %if.then.i75, !prof !311

land.rhs.i.dma_map_single_attrs.exit_crit_edge:   ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %dma_map_single_attrs.exit

if.then.i75:                                      ; preds = %land.rhs.i
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %call16.i = call ptr @dev_driver_string(ptr noundef %69) #12
  %init_name.i.i = getelementptr inbounds %struct.device, ptr %69, i32 0, i32 3
  %74 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i74 = icmp eq ptr %75, null
  br i1 %tobool.not.i.i74, label %if.end.i.i, label %if.then.i75.dev_name.exit.i_crit_edge

if.then.i75.dev_name.exit.i_crit_edge:            ; preds = %if.then.i75
  call void @__sanitizer_cov_trace_pc() #14
  br label %dev_name.exit.i

if.end.i.i:                                       ; preds = %if.then.i75
  call void @__sanitizer_cov_trace_pc() #14
  %76 = ptrtoint ptr %69 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %69, align 4
  br label %dev_name.exit.i

dev_name.exit.i:                                  ; preds = %if.end.i.i, %if.then.i75.dev_name.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %77, %if.end.i.i ], [ %75, %if.then.i75.dev_name.exit.i_crit_edge ]
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.74, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.75, ptr noundef %call16.i, ptr noundef %retval.0.i.i) #12
  br label %dma_map_single_attrs.exit

if.end39.i:                                       ; preds = %if.end62.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @debug_dma_map_single(ptr noundef %69, ptr noundef %73, i32 noundef 4096) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %78 = load ptr, ptr @mem_map, align 4
  %79 = ptrtoint ptr %73 to i32
  %sub.i = add i32 %79, 1073741824
  %shr.i = lshr i32 %sub.i, 12
  %add.ptr.i76 = getelementptr %struct.page, ptr %78, i32 %shr.i
  %and.i77 = and i32 %79, 4095
  %call41.i = call i32 @dma_map_page_attrs(ptr noundef %69, ptr noundef %add.ptr.i76, i32 noundef %and.i77, i32 noundef 4096, i32 noundef 1, i32 noundef 0) #12
  br label %dma_map_single_attrs.exit

dma_map_single_attrs.exit:                        ; preds = %if.end39.i, %dev_name.exit.i, %land.rhs.i.dma_map_single_attrs.exit_crit_edge
  %retval.0.i78 = phi i32 [ %call41.i, %if.end39.i ], [ -1, %dev_name.exit.i ], [ -1, %land.rhs.i.dma_map_single_attrs.exit_crit_edge ]
  %tx_addr.i = getelementptr inbounds %struct.s3c24xx_uart_dma, ptr %3, i32 0, i32 7
  %80 = ptrtoint ptr %tx_addr.i to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 %retval.0.i78, ptr %tx_addr.i, align 4
  %81 = ptrtoint ptr %tx_chan.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %tx_chan.i, align 4
  %83 = ptrtoint ptr %82 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %82, align 4
  %dev70.i = getelementptr inbounds %struct.dma_device, ptr %84, i32 0, i32 15
  %85 = ptrtoint ptr %dev70.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %dev70.i, align 4
  call void @debug_dma_mapping_error(ptr noundef %86, i32 noundef %retval.0.i78) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %retval.0.i78)
  %cmp.i147.not.i = icmp eq i32 %retval.0.i78, -1
  br i1 %cmp.i147.not.i, label %if.then74.i, label %s3c24xx_serial_request_dma.exit.thread99

s3c24xx_serial_request_dma.exit.thread99:         ; preds = %dma_map_single_attrs.exit
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %dma_caps.i) #12
  br label %if.end5

if.then74.i:                                      ; preds = %dma_map_single_attrs.exit
  call void @__sanitizer_cov_trace_pc() #14
  %87 = ptrtoint ptr %rx_chan.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %rx_chan.i, align 4
  %89 = ptrtoint ptr %88 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %88, align 4
  %dev78.i = getelementptr inbounds %struct.dma_device, ptr %90, i32 0, i32 15
  %91 = ptrtoint ptr %dev78.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %dev78.i, align 4
  %93 = ptrtoint ptr %rx_addr.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %rx_addr.i, align 4
  %95 = ptrtoint ptr %rx_size.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %rx_size.i, align 4
  call void @dma_unmap_page_attrs(ptr noundef %92, i32 noundef %94, i32 noundef %96, i32 noundef 2, i32 noundef 0) #12
  br label %err_free_rx.i

err_free_rx.i:                                    ; preds = %if.then74.i, %dma_map_single_attrs.exit96.err_free_rx.i_crit_edge
  %reason.0.i = phi ptr [ @.str.71, %if.then74.i ], [ @.str.70, %dma_map_single_attrs.exit96.err_free_rx.i_crit_edge ]
  %97 = ptrtoint ptr %rx_buf.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %rx_buf.i, align 4
  call void @kfree(ptr noundef %98) #12
  br label %err_warn.i

err_warn.thread154.i:                             ; preds = %if.then30.i, %lor.lhs.false.i.err_warn.thread154.i_crit_edge, %if.end.i.err_warn.thread154.i_crit_edge
  %reason.2.ph.i = phi ptr [ @.str.66, %if.end.i.err_warn.thread154.i_crit_edge ], [ @.str.66, %lor.lhs.false.i.err_warn.thread154.i_crit_edge ], [ @.str.68, %if.then30.i ]
  %ret.2.ph.i = phi i32 [ -95, %if.end.i.err_warn.thread154.i_crit_edge ], [ -95, %lor.lhs.false.i.err_warn.thread154.i_crit_edge ], [ %31, %if.then30.i ]
  %99 = ptrtoint ptr %rx_chan.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %rx_chan.i, align 4
  call void @dma_release_channel(ptr noundef %100) #12
  br label %s3c24xx_serial_request_dma.exit

err_warn.i:                                       ; preds = %err_free_rx.i, %dmaengine_slave_config.exit145.i.err_warn.i_crit_edge, %lor.lhs.false37.i.err_warn.i_crit_edge, %if.end33.i.err_warn.i_crit_edge
  %reason.1.i = phi ptr [ %reason.0.i, %err_free_rx.i ], [ @.str.69, %lor.lhs.false37.i.err_warn.i_crit_edge ], [ @.str.69, %if.end33.i.err_warn.i_crit_edge ], [ null, %dmaengine_slave_config.exit145.i.err_warn.i_crit_edge ]
  %101 = ptrtoint ptr %tx_chan.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %tx_chan.i, align 4
  call void @dma_release_channel(ptr noundef %102) #12
  %103 = ptrtoint ptr %rx_chan.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %rx_chan.i, align 4
  call void @dma_release_channel(ptr noundef %104) #12
  %tobool84.not.i = icmp eq ptr %reason.1.i, null
  br i1 %tobool84.not.i, label %s3c24xx_serial_request_dma.exit.thread, label %s3c24xx_serial_request_dma.exit.thread102

s3c24xx_serial_request_dma.exit.thread102:        ; preds = %err_warn.i
  call void @__sanitizer_cov_trace_pc() #14
  %105 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %dev.i, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %106, ptr noundef nonnull @.str.72, ptr noundef nonnull %reason.1.i) #15
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %dma_caps.i) #12
  br label %if.then2

s3c24xx_serial_request_dma.exit.thread:           ; preds = %err_warn.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %dma_caps.i) #12
  br label %if.then2

s3c24xx_serial_request_dma.exit:                  ; preds = %err_warn.thread154.i, %err_warn.thread.i
  %ret.3153.i = phi i32 [ %19, %err_warn.thread.i ], [ %ret.2.ph.i, %err_warn.thread154.i ]
  %reason.3152.i = phi ptr [ @.str.65, %err_warn.thread.i ], [ %reason.2.ph.i, %err_warn.thread154.i ]
  %107 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %dev.i, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %108, ptr noundef nonnull @.str.72, ptr noundef nonnull %reason.3152.i) #15
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %dma_caps.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.3153.i)
  %cmp = icmp slt i32 %ret.3153.i, 0
  br i1 %cmp, label %s3c24xx_serial_request_dma.exit.if.then2_crit_edge, label %s3c24xx_serial_request_dma.exit.if.end5_crit_edge

s3c24xx_serial_request_dma.exit.if.end5_crit_edge: ; preds = %s3c24xx_serial_request_dma.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end5

s3c24xx_serial_request_dma.exit.if.then2_crit_edge: ; preds = %s3c24xx_serial_request_dma.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then2

if.then2:                                         ; preds = %s3c24xx_serial_request_dma.exit.if.then2_crit_edge, %s3c24xx_serial_request_dma.exit.thread, %s3c24xx_serial_request_dma.exit.thread102
  %109 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %dev.i, align 4
  %111 = ptrtoint ptr %dma to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %dma, align 4
  call void @devm_kfree(ptr noundef %110, ptr noundef %112) #12
  %113 = ptrtoint ptr %dma to i32
  call void @__asan_store4_noabort(i32 %113)
  store ptr null, ptr %dma, align 4
  br label %if.end5

if.end5:                                          ; preds = %if.then2, %s3c24xx_serial_request_dma.exit.if.end5_crit_edge, %s3c24xx_serial_request_dma.exit.thread99, %entry.if.end5_crit_edge
  %irq = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 20
  %114 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %irq, align 4
  %dev.i66 = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 45
  %116 = ptrtoint ptr %dev.i66 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %dev.i66, align 4
  %add.ptr.i67 = getelementptr i8, ptr %117, i32 -16
  %118 = ptrtoint ptr %add.ptr.i67 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %add.ptr.i67, align 8
  %call.i68 = call i32 @request_threaded_irq(i32 noundef %115, ptr noundef nonnull @s3c64xx_serial_handle_irq, ptr noundef null, i32 noundef 128, ptr noundef %119, ptr noundef %add.ptr.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i68)
  %tobool8.not = icmp eq i32 %call.i68, 0
  br i1 %tobool8.not, label %if.end12, label %do.end

do.end:                                           ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #14
  %120 = ptrtoint ptr %dev.i66 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %dev.i66, align 4
  %122 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %irq, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %121, ptr noundef nonnull @.str.38, i32 noundef %123) #15
  br label %cleanup

if.end12:                                         ; preds = %if.end5
  %rx_enabled = getelementptr i8, ptr %port, i32 -46
  %124 = ptrtoint ptr %rx_enabled to i32
  call void @__asan_store1_noabort(i32 %124)
  store i8 1, ptr %rx_enabled, align 2
  %tx_enabled = getelementptr i8, ptr %port, i32 -45
  %125 = ptrtoint ptr %tx_enabled to i32
  call void @__asan_store1_noabort(i32 %125)
  store i8 0, ptr %tx_enabled, align 1
  %call17 = call i32 @_raw_spin_lock_irqsave(ptr noundef %port) #12
  %126 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %membase, align 4
  %add.ptr23 = getelementptr i8, ptr %127, i32 8
  %128 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr23) #12, !srcloc !300
  %129 = or i32 %128, 570425344
  %130 = call i32 @llvm.bswap.i32(i32 %129)
  %cons = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 32
  %131 = ptrtoint ptr %cons to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %cons, align 4
  %tobool26.not = icmp eq ptr %132, null
  br i1 %tobool26.not, label %if.end12.if.then31_crit_edge, label %land.lhs.true

if.end12.if.then31_crit_edge:                     ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then31

land.lhs.true:                                    ; preds = %if.end12
  %index = getelementptr inbounds %struct.console, ptr %132, i32 0, i32 9
  %133 = ptrtoint ptr %index to i32
  call void @__asan_load2_noabort(i32 %133)
  %134 = load i16, ptr %index, align 2
  %conv28 = sext i16 %134 to i32
  %line = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 41
  %135 = ptrtoint ptr %line to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load i32, ptr %line, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %136, i32 %conv28)
  %cmp29 = icmp eq i32 %136, %conv28
  br i1 %cmp29, label %land.lhs.true.if.end33_crit_edge, label %land.lhs.true.if.then31_crit_edge

land.lhs.true.if.then31_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then31

land.lhs.true.if.end33_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end33

if.then31:                                        ; preds = %land.lhs.true.if.then31_crit_edge, %if.end12.if.then31_crit_edge
  %or32 = or i32 %130, 4
  br label %if.end33

if.end33:                                         ; preds = %if.then31, %land.lhs.true.if.end33_crit_edge
  %ufcon.0 = phi i32 [ %130, %land.lhs.true.if.end33_crit_edge ], [ %or32, %if.then31 ]
  %137 = call i32 @llvm.bswap.i32(i32 %ufcon.0)
  %138 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %membase, align 4
  %add.ptr35 = getelementptr i8, ptr %139, i32 8
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr35, i32 %137) #12, !srcloc !301
  %140 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %membase, align 4
  %add.ptr.i69 = getelementptr i8, ptr %141, i32 4
  %142 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i69) #12, !srcloc !300
  %143 = and i32 %142, -50331649
  %144 = or i32 %143, 16777216
  %145 = call i32 @llvm.bswap.i32(i32 %144) #12
  %info.i = getelementptr i8, ptr %port, i32 -12
  %146 = ptrtoint ptr %info.i to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %info.i, align 4
  %type.i = getelementptr inbounds %struct.s3c24xx_uart_info, ptr %147, i32 0, i32 1
  %148 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load i32, ptr %type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %149)
  %cmp.not.i = icmp eq i32 %149, 2
  %and2.i = and i32 %145, -64643
  %or3.i = or i32 %and2.i, 61568
  %ucon.0.i = select i1 %cmp.not.i, i32 %145, i32 %or3.i
  %150 = call i32 @llvm.bswap.i32(i32 %ucon.0.i) #12
  %151 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %membase, align 4
  %add.ptr5.i = getelementptr i8, ptr %152, i32 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5.i, i32 %150) #12, !srcloc !301
  %rx_mode.i = getelementptr i8, ptr %port, i32 -16
  %153 = ptrtoint ptr %rx_mode.i to i32
  call void @__asan_store4_noabort(i32 %153)
  store i32 1, ptr %rx_mode.i, align 4
  call void @_raw_spin_unlock_irqrestore(ptr noundef %port, i32 noundef %call17) #12
  %154 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #12, !srcloc !303
  %and.i.i = and i32 %154, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i70 = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i70, label %if.then.i, label %do.body27.i.critedge

if.then.i:                                        ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #14
  call void @trace_hardirqs_off() #12
  %155 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %membase, align 4
  %add.ptr.i72.c = getelementptr i8, ptr %156, i32 56
  %157 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i72.c) #12, !srcloc !300
  %158 = and i32 %157, -16777217
  %159 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load ptr, ptr %membase, align 4
  %add.ptr15.i.c = getelementptr i8, ptr %160, i32 56
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr15.i.c, i32 %158) #12, !srcloc !301
  call void @trace_hardirqs_on() #12
  br label %do.body27.i

do.body27.i.critedge:                             ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #14
  %161 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load ptr, ptr %membase, align 4
  %add.ptr.i72.c106 = getelementptr i8, ptr %162, i32 56
  %163 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i72.c106) #12, !srcloc !300
  %164 = and i32 %163, -16777217
  %165 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load ptr, ptr %membase, align 4
  %add.ptr15.i.c108 = getelementptr i8, ptr %166, i32 56
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr15.i.c108, i32 %164) #12, !srcloc !301
  br label %do.body27.i

do.body27.i:                                      ; preds = %do.body27.i.critedge, %if.then.i
  %167 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #12, !srcloc !304
  %and.i.i.i = and i32 %167, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool35.not.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool35.not.i, label %if.then39.i, label %do.body27.i.s3c24xx_clear_bit.exit_crit_edge, !prof !305

do.body27.i.s3c24xx_clear_bit.exit_crit_edge:     ; preds = %do.body27.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %s3c24xx_clear_bit.exit

if.then39.i:                                      ; preds = %do.body27.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @warn_bogus_irq_restore() #12
  br label %s3c24xx_clear_bit.exit

s3c24xx_clear_bit.exit:                           ; preds = %if.then39.i, %do.body27.i.s3c24xx_clear_bit.exit_crit_edge
  call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %154) #12, !srcloc !306
  br label %cleanup

cleanup:                                          ; preds = %s3c24xx_clear_bit.exit, %do.end
  ret i32 %call.i68
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @s3c64xx_serial_shutdown(ptr noundef %port) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %port, i32 -48
  %tx_enabled = getelementptr i8, ptr %port, i32 -45
  %0 = ptrtoint ptr %tx_enabled to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 0, ptr %tx_enabled, align 1
  %tx_mode = getelementptr i8, ptr %port, i32 -20
  %1 = ptrtoint ptr %tx_mode to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %tx_mode, align 4
  %rx_enabled = getelementptr i8, ptr %port, i32 -46
  %2 = ptrtoint ptr %rx_enabled to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 0, ptr %rx_enabled, align 2
  %irq = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 20
  %3 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %irq, align 4
  %call1 = tail call ptr @free_irq(i32 noundef %4, ptr noundef %add.ptr.i) #12
  %membase = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 2
  %5 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %membase, align 4
  %add.ptr = getelementptr i8, ptr %6, i32 48
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 251658240) #12, !srcloc !301
  %7 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %membase, align 4
  %add.ptr3 = getelementptr i8, ptr %8, i32 56
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3, i32 251658240) #12, !srcloc !301
  %dma = getelementptr i8, ptr %port, i32 368
  %9 = ptrtoint ptr %dma to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dma, align 4
  %tobool.not = icmp eq ptr %10, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call fastcc void @s3c24xx_serial_release_dma(ptr noundef %add.ptr.i)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %tx_in_progress = getelementptr i8, ptr %port, i32 -24
  %11 = ptrtoint ptr %tx_in_progress to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %tx_in_progress, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @devm_kfree(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @s3c64xx_serial_handle_irq(i32 noundef %irq, ptr noundef %id) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %membase = getelementptr inbounds %struct.s3c24xx_uart_port, ptr %id, i32 0, i32 15, i32 2
  %0 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %membase, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 48
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #12, !srcloc !300
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  %and = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %call2 = tail call i32 @s3c24xx_serial_rx_irq(i32 noundef %irq, ptr noundef %id)
  %4 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %membase, align 4
  %add.ptr4 = getelementptr i8, ptr %5, i32 48
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4, i32 16777216) #12, !srcloc !301
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %and5 = and i32 %3, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5)
  %tobool6.not = icmp eq i32 %and5, 0
  br i1 %tobool6.not, label %if.end.if.end11_crit_edge, label %if.then7

if.end.if.end11_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end11

if.then7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %port1.i = getelementptr inbounds %struct.s3c24xx_uart_port, ptr %id, i32 0, i32 15
  tail call void @_raw_spin_lock(ptr noundef %port1.i) #12
  tail call fastcc void @s3c24xx_serial_tx_chars(ptr noundef %id) #12
  tail call void @_raw_spin_unlock(ptr noundef %port1.i) #12
  %6 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %membase, align 4
  %add.ptr10 = getelementptr i8, ptr %7, i32 48
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr10, i32 67108864) #12, !srcloc !301
  br label %if.end11

if.end11:                                         ; preds = %if.then7, %if.end.if.end11_crit_edge
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_request_chan(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_get_slave_caps(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #11

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @is_vmalloc_addr(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_driver_string(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @debug_dma_map_single(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_map_page_attrs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @debug_dma_mapping_error(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @apple_s5l_serial_startup(ptr noundef %port) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %port, i32 -48
  %membase = getelementptr %struct.uart_port, ptr %port, i32 0, i32 2
  %0 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %membase, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 -268238848) #12, !srcloc !301
  %irq = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 20
  %2 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %irq, align 4
  %dev.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 45
  %4 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev.i, align 4
  %add.ptr.i51 = getelementptr i8, ptr %5, i32 -16
  %6 = ptrtoint ptr %add.ptr.i51 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %add.ptr.i51, align 8
  %call.i = tail call i32 @request_threaded_irq(i32 noundef %3, ptr noundef nonnull @apple_serial_handle_irq, ptr noundef null, i32 noundef 0, ptr noundef %7, ptr noundef %add.ptr.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %8 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev.i, align 4
  %10 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %irq, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %9, ptr noundef nonnull @.str.38, i32 noundef %11) #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %rx_enabled = getelementptr i8, ptr %port, i32 -46
  %12 = ptrtoint ptr %rx_enabled to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 1, ptr %rx_enabled, align 2
  %tx_enabled = getelementptr i8, ptr %port, i32 -45
  %13 = ptrtoint ptr %tx_enabled to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 0, ptr %tx_enabled, align 1
  %call7 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %port) #12
  %14 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %membase, align 4
  %add.ptr13 = getelementptr i8, ptr %15, i32 8
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr13) #12, !srcloc !300
  %17 = or i32 %16, 570425344
  %18 = tail call i32 @llvm.bswap.i32(i32 %17)
  %cons = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 32
  %19 = ptrtoint ptr %cons to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %cons, align 4
  %tobool16.not = icmp eq ptr %20, null
  br i1 %tobool16.not, label %if.end.if.then21_crit_edge, label %land.lhs.true

if.end.if.then21_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then21

land.lhs.true:                                    ; preds = %if.end
  %index = getelementptr inbounds %struct.console, ptr %20, i32 0, i32 9
  %21 = ptrtoint ptr %index to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %index, align 2
  %conv18 = sext i16 %22 to i32
  %line = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 41
  %23 = ptrtoint ptr %line to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %line, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %24, i32 %conv18)
  %cmp19 = icmp eq i32 %24, %conv18
  br i1 %cmp19, label %land.lhs.true.if.end23_crit_edge, label %land.lhs.true.if.then21_crit_edge

land.lhs.true.if.then21_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then21

land.lhs.true.if.end23_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end23

if.then21:                                        ; preds = %land.lhs.true.if.then21_crit_edge, %if.end.if.then21_crit_edge
  %or22 = or i32 %18, 4
  br label %if.end23

if.end23:                                         ; preds = %if.then21, %land.lhs.true.if.end23_crit_edge
  %ufcon.0 = phi i32 [ %18, %land.lhs.true.if.end23_crit_edge ], [ %or22, %if.then21 ]
  %25 = tail call i32 @llvm.bswap.i32(i32 %ufcon.0)
  %26 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %membase, align 4
  %add.ptr25 = getelementptr i8, ptr %27, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr25, i32 %25) #12, !srcloc !301
  %28 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %membase, align 4
  %add.ptr.i52 = getelementptr i8, ptr %29, i32 4
  %30 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i52) #12, !srcloc !300
  %31 = and i32 %30, -50331649
  %32 = or i32 %31, 16777216
  %33 = tail call i32 @llvm.bswap.i32(i32 %32) #12
  %info.i = getelementptr i8, ptr %port, i32 -12
  %34 = ptrtoint ptr %info.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %info.i, align 4
  %type.i = getelementptr inbounds %struct.s3c24xx_uart_info, ptr %35, i32 0, i32 1
  %36 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %37)
  %cmp.not.i = icmp eq i32 %37, 2
  %and2.i = and i32 %33, -64643
  %or3.i = or i32 %and2.i, 61568
  %ucon.0.i = select i1 %cmp.not.i, i32 %33, i32 %or3.i
  %38 = tail call i32 @llvm.bswap.i32(i32 %ucon.0.i) #12
  %39 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %membase, align 4
  %add.ptr5.i = getelementptr i8, ptr %40, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5.i, i32 %38) #12, !srcloc !301
  %rx_mode.i = getelementptr i8, ptr %port, i32 -16
  %41 = ptrtoint ptr %rx_mode.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 1, ptr %rx_mode.i, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %port, i32 noundef %call7) #12
  %42 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #12, !srcloc !303
  %and.i.i = and i32 %42, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %do.body27.i.critedge

if.then.i:                                        ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @trace_hardirqs_off() #12
  %43 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %membase, align 4
  %add.ptr.i54.c = getelementptr i8, ptr %44, i32 4
  %45 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i54.c) #12, !srcloc !300
  %46 = or i32 %45, 1048576
  %47 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %membase, align 4
  %add.ptr15.i.c = getelementptr i8, ptr %48, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr15.i.c, i32 %46) #12, !srcloc !301
  tail call void @trace_hardirqs_on() #12
  br label %do.body27.i

do.body27.i.critedge:                             ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #14
  %49 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %membase, align 4
  %add.ptr.i54.c69 = getelementptr i8, ptr %50, i32 4
  %51 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i54.c69) #12, !srcloc !300
  %52 = or i32 %51, 1048576
  %53 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %membase, align 4
  %add.ptr15.i.c71 = getelementptr i8, ptr %54, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr15.i.c71, i32 %52) #12, !srcloc !301
  br label %do.body27.i

do.body27.i:                                      ; preds = %do.body27.i.critedge, %if.then.i
  %55 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #12, !srcloc !304
  %and.i.i.i = and i32 %55, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool35.not.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool35.not.i, label %if.then39.i, label %do.body27.i.s3c24xx_set_bit.exit_crit_edge, !prof !305

do.body27.i.s3c24xx_set_bit.exit_crit_edge:       ; preds = %do.body27.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %s3c24xx_set_bit.exit

if.then39.i:                                      ; preds = %do.body27.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @warn_bogus_irq_restore() #12
  br label %s3c24xx_set_bit.exit

s3c24xx_set_bit.exit:                             ; preds = %if.then39.i, %do.body27.i.s3c24xx_set_bit.exit_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %42) #12, !srcloc !306
  %56 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #12, !srcloc !303
  %and.i.i55 = and i32 %56, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i55)
  %tobool.not.i56 = icmp eq i32 %and.i.i55, 0
  br i1 %tobool.not.i56, label %if.then.i57, label %do.body27.i66.critedge

if.then.i57:                                      ; preds = %s3c24xx_set_bit.exit
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @trace_hardirqs_off() #12
  %57 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %membase, align 4
  %add.ptr.i59.c = getelementptr i8, ptr %58, i32 4
  %59 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i59.c) #12, !srcloc !300
  %60 = or i32 %59, 131072
  %61 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %membase, align 4
  %add.ptr15.i61.c = getelementptr i8, ptr %62, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr15.i61.c, i32 %60) #12, !srcloc !301
  tail call void @trace_hardirqs_on() #12
  br label %do.body27.i66

do.body27.i66.critedge:                           ; preds = %s3c24xx_set_bit.exit
  call void @__sanitizer_cov_trace_pc() #14
  %63 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %membase, align 4
  %add.ptr.i59.c72 = getelementptr i8, ptr %64, i32 4
  %65 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i59.c72) #12, !srcloc !300
  %66 = or i32 %65, 131072
  %67 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %membase, align 4
  %add.ptr15.i61.c74 = getelementptr i8, ptr %68, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr15.i61.c74, i32 %66) #12, !srcloc !301
  br label %do.body27.i66

do.body27.i66:                                    ; preds = %do.body27.i66.critedge, %if.then.i57
  %69 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #12, !srcloc !304
  %and.i.i.i64 = and i32 %69, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i64)
  %tobool35.not.i65 = icmp eq i32 %and.i.i.i64, 0
  br i1 %tobool35.not.i65, label %if.then39.i67, label %do.body27.i66.s3c24xx_set_bit.exit68_crit_edge, !prof !305

do.body27.i66.s3c24xx_set_bit.exit68_crit_edge:   ; preds = %do.body27.i66
  call void @__sanitizer_cov_trace_pc() #14
  br label %s3c24xx_set_bit.exit68

if.then39.i67:                                    ; preds = %do.body27.i66
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @warn_bogus_irq_restore() #12
  br label %s3c24xx_set_bit.exit68

s3c24xx_set_bit.exit68:                           ; preds = %if.then39.i67, %do.body27.i66.s3c24xx_set_bit.exit68_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %56) #12, !srcloc !306
  br label %cleanup

cleanup:                                          ; preds = %s3c24xx_set_bit.exit68, %do.end
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @apple_s5l_serial_shutdown(ptr noundef %port) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %port, i32 -48
  %membase = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 2
  %0 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %membase, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 4
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #12, !srcloc !300
  %3 = and i32 %2, -3276801
  %4 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %membase, align 4
  %add.ptr3 = getelementptr i8, ptr %5, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3, i32 %3) #12, !srcloc !301
  %6 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %membase, align 4
  %add.ptr5 = getelementptr i8, ptr %7, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5, i32 -268238848) #12, !srcloc !301
  %irq = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 20
  %8 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %irq, align 4
  %call6 = tail call ptr @free_irq(i32 noundef %9, ptr noundef %add.ptr.i) #12
  %tx_enabled = getelementptr i8, ptr %port, i32 -45
  %10 = ptrtoint ptr %tx_enabled to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 0, ptr %tx_enabled, align 1
  %tx_mode = getelementptr i8, ptr %port, i32 -20
  %11 = ptrtoint ptr %tx_mode to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %tx_mode, align 4
  %rx_enabled = getelementptr i8, ptr %port, i32 -46
  %12 = ptrtoint ptr %rx_enabled to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 0, ptr %rx_enabled, align 2
  %dma = getelementptr i8, ptr %port, i32 368
  %13 = ptrtoint ptr %dma to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dma, align 4
  %tobool.not = icmp eq ptr %14, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call fastcc void @s3c24xx_serial_release_dma(ptr noundef %add.ptr.i)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %tx_in_progress = getelementptr i8, ptr %port, i32 -24
  %15 = ptrtoint ptr %tx_in_progress to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %tx_in_progress, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @apple_serial_handle_irq(i32 noundef %irq, ptr noundef %id) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %membase = getelementptr inbounds %struct.s3c24xx_uart_port, ptr %id, i32 0, i32 15, i32 2
  %0 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %membase, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 16
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #12, !srcloc !300
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  %and = and i32 %3, 528
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %4 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %membase, align 4
  %add.ptr3 = getelementptr i8, ptr %5, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3, i32 268566528) #12, !srcloc !301
  %call4 = tail call i32 @s3c24xx_serial_rx_irq(i32 noundef %irq, ptr noundef %id)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %ret.0 = phi i32 [ 1, %if.then ], [ 0, %entry.if.end_crit_edge ]
  %and5 = and i32 %3, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5)
  %tobool6.not = icmp eq i32 %and5, 0
  br i1 %tobool6.not, label %if.end.if.end11_crit_edge, label %if.then7

if.end.if.end11_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end11

if.then7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %6 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %membase, align 4
  %add.ptr9 = getelementptr i8, ptr %7, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr9, i32 536870912) #12, !srcloc !301
  %port1.i = getelementptr inbounds %struct.s3c24xx_uart_port, ptr %id, i32 0, i32 15
  tail call void @_raw_spin_lock(ptr noundef %port1.i) #12
  tail call fastcc void @s3c24xx_serial_tx_chars(ptr noundef %id) #12
  tail call void @_raw_spin_unlock(ptr noundef %port1.i) #12
  br label %if.end11

if.end11:                                         ; preds = %if.then7, %if.end.if.end11_crit_edge
  %ret.1 = phi i32 [ 1, %if.then7 ], [ %ret.0, %if.end.if.end11_crit_edge ]
  ret i32 %ret.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap_resource(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @s3c24xx_serial_console_write(ptr nocapture noundef readnone %co, ptr noundef %s, i32 noundef %count) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @cons_uart, align 4
  %membase = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 2
  %1 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %membase, align 4
  %add.ptr = getelementptr i8, ptr %2, i32 4
  %3 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #12, !srcloc !300
  %4 = and i32 %3, 251658240
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp.i.not = icmp eq i32 %4, 0
  br i1 %cmp.i.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %5 = load ptr, ptr @cons_uart, align 4
  tail call void @uart_console_write(ptr noundef %5, ptr noundef %s, i32 noundef %count, ptr noundef nonnull @s3c24xx_serial_console_putchar) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @uart_console_device(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @s3c24xx_serial_console_setup(ptr noundef %co, ptr noundef %options) #3 align 64 {
entry:
  %baud = alloca i32, align 4
  %bits = alloca i32, align 4
  %parity = alloca i32, align 4
  %flow = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %baud) #12
  %0 = ptrtoint ptr %baud to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 9600, ptr %baud, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bits) #12
  %1 = ptrtoint ptr %bits to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 8, ptr %bits, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %parity) #12
  %2 = ptrtoint ptr %parity to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 110, ptr %parity, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %flow) #12
  %3 = ptrtoint ptr %flow to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 110, ptr %flow, align 4
  %index = getelementptr inbounds %struct.console, ptr %co, i32 0, i32 9
  %4 = ptrtoint ptr %index to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %index, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %5)
  %cmp = icmp eq i16 %5, -1
  call void @__sanitizer_cov_trace_const_cmp2(i16 3, i16 %5)
  %cmp4 = icmp sgt i16 %5, 3
  %or.cond = or i1 %cmp, %cmp4
  br i1 %or.cond, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %6 = ptrtoint ptr %index to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 0, ptr %index, align 2
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %7 = ptrtoint ptr %index to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %index, align 2
  %idxprom = sext i16 %8 to i32
  %port8 = getelementptr [4 x %struct.s3c24xx_uart_port], ptr @s3c24xx_serial_ports, i32 0, i32 %idxprom, i32 15
  %mapbase = getelementptr [4 x %struct.s3c24xx_uart_port], ptr @s3c24xx_serial_ports, i32 0, i32 %idxprom, i32 15, i32 43
  %9 = ptrtoint ptr %mapbase to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %mapbase, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp9 = icmp eq i32 %10, 0
  br i1 %cmp9, label %if.end.cleanup_crit_edge, label %if.end12

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end12:                                         ; preds = %if.end
  store ptr %port8, ptr @cons_uart, align 4
  %tobool.not = icmp eq ptr %options, null
  br i1 %tobool.not, label %if.else, label %if.then13

if.then13:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #14
  call void @uart_parse_options(ptr noundef nonnull %options, ptr noundef nonnull %baud, ptr noundef nonnull %parity, ptr noundef nonnull %bits, ptr noundef nonnull %flow) #12
  br label %do.body

if.else:                                          ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #14
  call fastcc void @s3c24xx_serial_get_options(ptr noundef %port8, ptr noundef nonnull %baud, ptr noundef nonnull %parity, ptr noundef nonnull %bits)
  br label %do.body

do.body:                                          ; preds = %if.else, %if.then13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @s3c24xx_serial_console_setup.__UNIQUE_ID_ddebug268, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@s3c24xx_serial_console_setup, %if.then18)) #12
          to label %do.end [label %if.then18], !srcloc !299

if.then18:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  %dev = getelementptr [4 x %struct.s3c24xx_uart_port], ptr @s3c24xx_serial_ports, i32 0, i32 %idxprom, i32 15, i32 45
  %11 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev, align 4
  %13 = ptrtoint ptr %baud to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %baud, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @s3c24xx_serial_console_setup.__UNIQUE_ID_ddebug268, ptr noundef %12, ptr noundef nonnull @.str.99, i32 noundef %14) #12
  br label %do.end

do.end:                                           ; preds = %if.then18, %do.body
  %15 = ptrtoint ptr %baud to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %baud, align 4
  %17 = ptrtoint ptr %parity to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %parity, align 4
  %19 = ptrtoint ptr %bits to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %bits, align 4
  %21 = ptrtoint ptr %flow to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %flow, align 4
  %call20 = call i32 @uart_set_options(ptr noundef %port8, ptr noundef %co, i32 noundef %16, i32 noundef %18, i32 noundef %20, i32 noundef %22) #12
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %call20, %do.end ], [ -19, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %flow) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %parity) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bits) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %baud) #12
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @uart_console_write(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @s3c24xx_serial_console_putchar(ptr nocapture noundef readonly %port, i32 noundef %ch) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %membase = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 2
  %0 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %membase, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 8
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #12, !srcloc !300
  %3 = and i32 %2, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not.i = icmp eq i32 %3, 0
  %info.i.i = getelementptr i8, ptr %port, i32 -12
  br label %while.cond

while.cond:                                       ; preds = %do.end, %entry
  br i1 %tobool.not.i, label %if.end.i, label %if.then.i

if.then.i:                                        ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #14
  %4 = ptrtoint ptr %info.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %info.i.i, align 4
  %6 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %membase, align 4
  %add.ptr.i = getelementptr i8, ptr %7, i32 24
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #12, !srcloc !300
  %9 = tail call i32 @llvm.bswap.i32(i32 %8) #12
  %tx_fifofull.i = getelementptr inbounds %struct.s3c24xx_uart_info, ptr %5, i32 0, i32 9
  %10 = ptrtoint ptr %tx_fifofull.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %tx_fifofull.i, align 4
  %and2.i = and i32 %9, %11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i)
  %tobool3.not.i = icmp eq i32 %and2.i, 0
  %cond.i = zext i1 %tobool3.not.i to i32
  br label %s3c24xx_serial_console_txrdy.exit

if.end.i:                                         ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #14
  %12 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %membase, align 4
  %add.ptr6.i = getelementptr i8, ptr %13, i32 16
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr6.i) #12, !srcloc !300
  %15 = lshr i32 %14, 26
  %.lobit.i = and i32 %15, 1
  br label %s3c24xx_serial_console_txrdy.exit

s3c24xx_serial_console_txrdy.exit:                ; preds = %if.end.i, %if.then.i
  %retval.0.i = phi i32 [ %cond.i, %if.then.i ], [ %.lobit.i, %if.end.i ]
  %tobool.not = icmp eq i32 %retval.0.i, 0
  br i1 %tobool.not, label %do.end, label %while.end

do.end:                                           ; preds = %s3c24xx_serial_console_txrdy.exit
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !312
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #12, !srcloc !313
  br label %while.cond

while.end:                                        ; preds = %s3c24xx_serial_console_txrdy.exit
  %iotype.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 26
  %16 = ptrtoint ptr %iotype.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %iotype.i, align 2
  %18 = zext i8 %17 to i64
  call void @__sanitizer_cov_trace_switch(i64 %18, ptr @__sancov_gen_cov_switch_values.132)
  switch i8 %17, label %while.end.wr_reg.exit_crit_edge [
    i8 2, label %sw.bb.i
    i8 3, label %sw.bb2.i
  ]

while.end.wr_reg.exit_crit_edge:                  ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %wr_reg.exit

sw.bb.i:                                          ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #14
  %conv1.i = trunc i32 %ch to i8
  %19 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %membase, align 4
  %add.ptr.i11 = getelementptr i8, ptr %20, i32 32
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i11, i8 %conv1.i) #12, !srcloc !309
  br label %wr_reg.exit

sw.bb2.i:                                         ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #14
  %21 = tail call i32 @llvm.bswap.i32(i32 %ch) #12
  %22 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %membase, align 4
  %add.ptr4.i = getelementptr i8, ptr %23, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i, i32 %21) #12, !srcloc !301
  br label %wr_reg.exit

wr_reg.exit:                                      ; preds = %sw.bb2.i, %sw.bb.i, %while.end.wr_reg.exit_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @uart_parse_options(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @s3c24xx_serial_get_options(ptr nocapture noundef readonly %port, ptr nocapture noundef %baud, ptr nocapture noundef writeonly %parity, ptr nocapture noundef writeonly %bits) unnamed_addr #3 align 64 {
entry:
  %clk_name = alloca [15 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 15, ptr nonnull %clk_name) #12
  %membase = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 2
  %0 = call ptr @memset(ptr %clk_name, i32 255, i32 15)
  %1 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %membase, align 4
  %3 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %2) #12, !srcloc !300
  %4 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %membase, align 4
  %add.ptr3 = getelementptr i8, ptr %5, i32 4
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr3) #12, !srcloc !300
  %7 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %membase, align 4
  %add.ptr8 = getelementptr i8, ptr %8, i32 40
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr8) #12, !srcloc !300
  %10 = tail call i32 @llvm.bswap.i32(i32 %9)
  %11 = and i32 %6, 251658240
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp.i.not = icmp eq i32 %11, 0
  br i1 %cmp.i.not, label %entry.if.end35_crit_edge, label %if.then

entry.if.end35_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end35

if.then:                                          ; preds = %entry
  %12 = tail call i32 @llvm.bswap.i32(i32 %3)
  %and = and i32 %12, 3
  %switch.offset = add nuw nsw i32 %and, 5
  %13 = ptrtoint ptr %bits to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %switch.offset, ptr %bits, align 4
  %and15 = and i32 %12, 56
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %and15)
  %switch.selectcmp = icmp eq i32 %and15, 32
  %switch.select = select i1 %switch.selectcmp, i32 111, i32 110
  call void @__sanitizer_cov_trace_const_cmp4(i32 40, i32 %and15)
  %switch.selectcmp55 = icmp eq i32 %and15, 40
  %switch.select56 = select i1 %switch.selectcmp55, i32 101, i32 %switch.select
  %14 = ptrtoint ptr %parity to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %switch.select56, ptr %parity, align 4
  %info.i.i = getelementptr i8, ptr %port, i32 -12
  %15 = ptrtoint ptr %info.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %info.i.i, align 4
  %num_clks.i = getelementptr inbounds %struct.s3c24xx_uart_info, ptr %16, i32 0, i32 11
  %17 = ptrtoint ptr %num_clks.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %num_clks.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %18)
  %cmp.i49 = icmp eq i32 %18, 1
  br i1 %cmp.i49, label %if.then.s3c24xx_serial_getsource.exit_crit_edge, label %if.end.i

if.then.s3c24xx_serial_getsource.exit_crit_edge:  ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %s3c24xx_serial_getsource.exit

if.end.i:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  %19 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %membase, align 4
  %add.ptr.i = getelementptr i8, ptr %20, i32 4
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #12, !srcloc !300
  %22 = tail call i32 @llvm.bswap.i32(i32 %21) #12
  %clksel_mask.i = getelementptr inbounds %struct.s3c24xx_uart_info, ptr %16, i32 0, i32 12
  %23 = ptrtoint ptr %clksel_mask.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %clksel_mask.i, align 4
  %and.i50 = and i32 %22, %24
  %clksel_shift.i = getelementptr inbounds %struct.s3c24xx_uart_info, ptr %16, i32 0, i32 13
  %25 = ptrtoint ptr %clksel_shift.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %clksel_shift.i, align 4
  %shr.i = lshr i32 %and.i50, %26
  br label %s3c24xx_serial_getsource.exit

s3c24xx_serial_getsource.exit:                    ; preds = %if.end.i, %if.then.s3c24xx_serial_getsource.exit_crit_edge
  %retval.0.i51 = phi i32 [ %shr.i, %if.end.i ], [ 0, %if.then.s3c24xx_serial_getsource.exit_crit_edge ]
  %call22 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %clk_name, ptr noundef nonnull @.str.57, i32 noundef %retval.0.i51)
  %dev = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 45
  %27 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %dev, align 4
  %call24 = call ptr @clk_get(ptr noundef %28, ptr noundef nonnull %clk_name) #12
  %cmp.i52 = icmp ugt ptr %call24, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i52, label %s3c24xx_serial_getsource.exit.if.end_crit_edge, label %if.then26

s3c24xx_serial_getsource.exit.if.end_crit_edge:   ; preds = %s3c24xx_serial_getsource.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then26:                                        ; preds = %s3c24xx_serial_getsource.exit
  call void @__sanitizer_cov_trace_pc() #14
  %call27 = call i32 @clk_get_rate(ptr noundef %call24) #12
  br label %if.end

if.end:                                           ; preds = %if.then26, %s3c24xx_serial_getsource.exit.if.end_crit_edge
  %rate.0 = phi i32 [ %call27, %if.then26 ], [ 1, %s3c24xx_serial_getsource.exit.if.end_crit_edge ]
  %add = shl i32 %10, 4
  %mul = add i32 %add, 16
  %div = udiv i32 %rate.0, %mul
  %29 = ptrtoint ptr %baud to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %div, ptr %baud, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @s3c24xx_serial_get_options.__UNIQUE_ID_ddebug267, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@s3c24xx_serial_get_options, %if.then32)) #12
          to label %if.end35 [label %if.then32], !srcloc !299

if.then32:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %30 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %dev, align 4
  %32 = ptrtoint ptr %baud to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %baud, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @s3c24xx_serial_get_options.__UNIQUE_ID_ddebug267, ptr noundef %31, ptr noundef nonnull @.str.101, i32 noundef %33) #12
  br label %if.end35

if.end35:                                         ; preds = %if.then32, %if.end, %entry.if.end35_crit_edge
  call void @llvm.lifetime.end.p0(i64 15, ptr nonnull %clk_name) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @uart_set_options(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @uart_remove_one_port(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @uart_unregister_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @s3c24xx_serial_suspend(ptr nocapture noundef readonly %dev) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %call1 = tail call i32 @uart_suspend_port(ptr noundef nonnull @s3c24xx_uart_drv, ptr noundef nonnull %1) #12
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @s3c24xx_serial_resume(ptr nocapture noundef readonly %dev) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end15_crit_edge, label %if.then

entry.if.end15_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end15

if.then:                                          ; preds = %entry
  %clk = getelementptr i8, ptr %1, i32 -8
  %2 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %clk, align 4
  %call.i = tail call i32 @clk_prepare(ptr noundef %3) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then.clk_prepare_enable.exit_crit_edge

if.then.clk_prepare_enable.exit_crit_edge:        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %clk_prepare_enable.exit

if.end.i:                                         ; preds = %if.then
  %call1.i = tail call i32 @clk_enable(ptr noundef %3) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end.i.clk_prepare_enable.exit_crit_edge, label %if.then3.i

if.end.i.clk_prepare_enable.exit_crit_edge:       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %clk_prepare_enable.exit

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @clk_unprepare(ptr noundef %3) #12
  br label %clk_prepare_enable.exit

clk_prepare_enable.exit:                          ; preds = %if.then3.i, %if.end.i.clk_prepare_enable.exit_crit_edge, %if.then.clk_prepare_enable.exit_crit_edge
  %baudclk = getelementptr i8, ptr %1, i32 -4
  %4 = ptrtoint ptr %baudclk to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %baudclk, align 4
  %cmp.i = icmp ugt ptr %5, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %clk_prepare_enable.exit.if.end_crit_edge, label %if.then4

clk_prepare_enable.exit.if.end_crit_edge:         ; preds = %clk_prepare_enable.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then4:                                         ; preds = %clk_prepare_enable.exit
  %call.i25 = tail call i32 @clk_prepare(ptr noundef %5) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i25)
  %tobool.not.i26 = icmp eq i32 %call.i25, 0
  br i1 %tobool.not.i26, label %if.end.i29, label %if.then4.if.end_crit_edge

if.then4.if.end_crit_edge:                        ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.end.i29:                                       ; preds = %if.then4
  %call1.i27 = tail call i32 @clk_enable(ptr noundef %5) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i27)
  %tobool2.not.i28 = icmp eq i32 %call1.i27, 0
  br i1 %tobool2.not.i28, label %if.end.i29.if.end_crit_edge, label %if.then3.i30

if.end.i29.if.end_crit_edge:                      ; preds = %if.end.i29
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then3.i30:                                     ; preds = %if.end.i29
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @clk_unprepare(ptr noundef %5) #12
  br label %if.end

if.end:                                           ; preds = %if.then3.i30, %if.end.i29.if.end_crit_edge, %if.then4.if.end_crit_edge, %clk_prepare_enable.exit.if.end_crit_edge
  %dev.i = getelementptr inbounds %struct.uart_port, ptr %1, i32 0, i32 45
  %6 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev.i, align 4
  %cmp.i33 = icmp eq ptr %7, null
  br i1 %cmp.i33, label %if.end.s3c24xx_port_to_cfg.exit_crit_edge, label %if.end.i34

if.end.s3c24xx_port_to_cfg.exit_crit_edge:        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %s3c24xx_port_to_cfg.exit

if.end.i34:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %cfg.i = getelementptr i8, ptr %1, i32 364
  %8 = ptrtoint ptr %cfg.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %cfg.i, align 4
  br label %s3c24xx_port_to_cfg.exit

s3c24xx_port_to_cfg.exit:                         ; preds = %if.end.i34, %if.end.s3c24xx_port_to_cfg.exit_crit_edge
  %retval.0.i35 = phi ptr [ %9, %if.end.i34 ], [ null, %if.end.s3c24xx_port_to_cfg.exit_crit_edge ]
  %info.i.i = getelementptr i8, ptr %1, i32 -12
  %10 = ptrtoint ptr %info.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %info.i.i, align 4
  %membase.i = getelementptr inbounds %struct.uart_port, ptr %1, i32 0, i32 2
  %12 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %membase.i, align 4
  %add.ptr.i36 = getelementptr i8, ptr %13, i32 4
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i36) #12, !srcloc !300
  %15 = tail call i32 @llvm.bswap.i32(i32 %14) #12
  %clksel_mask.i = getelementptr inbounds %struct.s3c24xx_uart_info, ptr %11, i32 0, i32 12
  %16 = ptrtoint ptr %clksel_mask.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %clksel_mask.i, align 4
  %ucon_mask.i = getelementptr inbounds %struct.s3c24xx_uart_info, ptr %11, i32 0, i32 14
  %18 = ptrtoint ptr %ucon_mask.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %ucon_mask.i, align 4
  %or.i = or i32 %19, %17
  %and.i = and i32 %or.i, %15
  %ucon2.i = getelementptr inbounds %struct.s3c2410_uartcfg, ptr %retval.0.i35, i32 0, i32 6
  %20 = ptrtoint ptr %ucon2.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %ucon2.i, align 4
  %or3.i = or i32 %and.i, %21
  %22 = tail call i32 @llvm.bswap.i32(i32 %or3.i) #12
  %23 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %membase.i, align 4
  %add.ptr5.i = getelementptr i8, ptr %24, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5.i, i32 %22) #12, !srcloc !301
  %ufcon.i = getelementptr inbounds %struct.s3c2410_uartcfg, ptr %retval.0.i35, i32 0, i32 8
  %25 = ptrtoint ptr %ufcon.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %ufcon.i, align 4
  %or6.i = or i32 %26, 6
  %27 = tail call i32 @llvm.bswap.i32(i32 %or6.i) #12
  %28 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %membase.i, align 4
  %add.ptr8.i = getelementptr i8, ptr %29, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr8.i, i32 %27) #12, !srcloc !301
  %30 = ptrtoint ptr %ufcon.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %ufcon.i, align 4
  %32 = tail call i32 @llvm.bswap.i32(i32 %31) #12
  %33 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %membase.i, align 4
  %add.ptr11.i = getelementptr i8, ptr %34, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr11.i, i32 %32) #12, !srcloc !301
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %35 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %35(i32 noundef 214748) #12
  %36 = ptrtoint ptr %baudclk to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %baudclk, align 4
  %cmp.i37 = icmp ugt ptr %37, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i37, label %s3c24xx_port_to_cfg.exit.if.end12_crit_edge, label %if.then10

s3c24xx_port_to_cfg.exit.if.end12_crit_edge:      ; preds = %s3c24xx_port_to_cfg.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end12

if.then10:                                        ; preds = %s3c24xx_port_to_cfg.exit
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @clk_disable(ptr noundef %37) #12
  tail call void @clk_unprepare(ptr noundef %37) #12
  br label %if.end12

if.end12:                                         ; preds = %if.then10, %s3c24xx_port_to_cfg.exit.if.end12_crit_edge
  %38 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %clk, align 4
  tail call void @clk_disable(ptr noundef %39) #12
  tail call void @clk_unprepare(ptr noundef %39) #12
  %call14 = tail call i32 @uart_resume_port(ptr noundef nonnull @s3c24xx_uart_drv, ptr noundef nonnull %1) #12
  br label %if.end15

if.end15:                                         ; preds = %if.end12, %entry.if.end15_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @s3c24xx_serial_resume_noirq(ptr noundef %dev) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup62_crit_edge, label %if.then

entry.cleanup62_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup62

if.then:                                          ; preds = %entry
  %info = getelementptr i8, ptr %1, i32 -12
  %2 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %info, align 4
  %type = getelementptr inbounds %struct.s3c24xx_uart_info, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %type, align 4
  %6 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.133)
  switch i32 %5, label %if.then.cleanup62_crit_edge [
    i32 1, label %sw.bb
    i32 2, label %sw.bb20
  ]

if.then.cleanup62_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup62

sw.bb:                                            ; preds = %if.then
  %tx_enabled = getelementptr i8, ptr %1, i32 -45
  %7 = ptrtoint ptr %tx_enabled to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %tx_enabled, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool2.not = icmp eq i8 %8, 0
  %spec.select = select i1 %tobool2.not, i32 251658240, i32 184549376
  %rx_enabled = getelementptr i8, ptr %1, i32 -46
  %9 = ptrtoint ptr %rx_enabled to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %rx_enabled, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool4.not = icmp eq i8 %10, 0
  %clk = getelementptr i8, ptr %1, i32 -8
  %11 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %clk, align 4
  %call.i = tail call i32 @clk_prepare(ptr noundef %12) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %sw.bb.clk_prepare_enable.exit_crit_edge

sw.bb.clk_prepare_enable.exit_crit_edge:          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #14
  br label %clk_prepare_enable.exit

if.end.i:                                         ; preds = %sw.bb
  %call1.i = tail call i32 @clk_enable(ptr noundef %12) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end.i.clk_prepare_enable.exit_crit_edge, label %if.then3.i

if.end.i.clk_prepare_enable.exit_crit_edge:       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %clk_prepare_enable.exit

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @clk_unprepare(ptr noundef %12) #12
  br label %clk_prepare_enable.exit

clk_prepare_enable.exit:                          ; preds = %if.then3.i, %if.end.i.clk_prepare_enable.exit_crit_edge, %sw.bb.clk_prepare_enable.exit_crit_edge
  %baudclk = getelementptr i8, ptr %1, i32 -4
  %13 = ptrtoint ptr %baudclk to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %baudclk, align 4
  %cmp.i = icmp ugt ptr %14, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %clk_prepare_enable.exit.if.end13_crit_edge, label %if.then10

clk_prepare_enable.exit.if.end13_crit_edge:       ; preds = %clk_prepare_enable.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end13

if.then10:                                        ; preds = %clk_prepare_enable.exit
  %call.i98 = tail call i32 @clk_prepare(ptr noundef %14) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i98)
  %tobool.not.i99 = icmp eq i32 %call.i98, 0
  br i1 %tobool.not.i99, label %if.end.i102, label %if.then10.if.end13_crit_edge

if.then10.if.end13_crit_edge:                     ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end13

if.end.i102:                                      ; preds = %if.then10
  %call1.i100 = tail call i32 @clk_enable(ptr noundef %14) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i100)
  %tobool2.not.i101 = icmp eq i32 %call1.i100, 0
  br i1 %tobool2.not.i101, label %if.end.i102.if.end13_crit_edge, label %if.then3.i103

if.end.i102.if.end13_crit_edge:                   ; preds = %if.end.i102
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end13

if.then3.i103:                                    ; preds = %if.end.i102
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @clk_unprepare(ptr noundef %14) #12
  br label %if.end13

if.end13:                                         ; preds = %if.then3.i103, %if.end.i102.if.end13_crit_edge, %if.then10.if.end13_crit_edge, %clk_prepare_enable.exit.if.end13_crit_edge
  %15 = and i32 %spec.select, 234881024
  %16 = select i1 %tobool4.not, i32 %spec.select, i32 %15
  %membase = getelementptr inbounds %struct.uart_port, ptr %1, i32 0, i32 2
  %17 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %membase, align 4
  %add.ptr = getelementptr i8, ptr %18, i32 56
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %16) #12, !srcloc !301
  %19 = ptrtoint ptr %baudclk to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %baudclk, align 4
  %cmp.i106 = icmp ugt ptr %20, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i106, label %if.end13.if.end18_crit_edge, label %if.then16

if.end13.if.end18_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end18

if.then16:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @clk_disable(ptr noundef %20) #12
  tail call void @clk_unprepare(ptr noundef %20) #12
  br label %if.end18

if.end18:                                         ; preds = %if.then16, %if.end13.if.end18_crit_edge
  %21 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %clk, align 4
  tail call void @clk_disable(ptr noundef %22) #12
  tail call void @clk_unprepare(ptr noundef %22) #12
  br label %cleanup62

sw.bb20:                                          ; preds = %if.then
  %clk21 = getelementptr i8, ptr %1, i32 -8
  %23 = ptrtoint ptr %clk21 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %clk21, align 4
  %call.i107 = tail call i32 @clk_prepare(ptr noundef %24) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i107)
  %tobool.not.i108 = icmp eq i32 %call.i107, 0
  br i1 %tobool.not.i108, label %if.end.i111, label %sw.bb20.do.end_crit_edge

sw.bb20.do.end_crit_edge:                         ; preds = %sw.bb20
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end

if.end.i111:                                      ; preds = %sw.bb20
  %call1.i109 = tail call i32 @clk_enable(ptr noundef %24) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i109)
  %tobool2.not.i110 = icmp eq i32 %call1.i109, 0
  br i1 %tobool2.not.i110, label %if.end25, label %if.then3.i112

if.then3.i112:                                    ; preds = %if.end.i111
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @clk_unprepare(ptr noundef %24) #12
  br label %do.end

do.end:                                           ; preds = %if.then3.i112, %sw.bb20.do.end_crit_edge
  %retval.0.i113.ph = phi i32 [ %call1.i109, %if.then3.i112 ], [ %call.i107, %sw.bb20.do.end_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.114, i32 noundef %retval.0.i113.ph) #15
  br label %cleanup62

if.end25:                                         ; preds = %if.end.i111
  %baudclk26 = getelementptr i8, ptr %1, i32 -4
  %25 = ptrtoint ptr %baudclk26 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %baudclk26, align 4
  %cmp.i115 = icmp ugt ptr %26, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i115, label %if.end25.if.end38_crit_edge, label %if.then28

if.end25.if.end38_crit_edge:                      ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end38

if.then28:                                        ; preds = %if.end25
  %call.i116 = tail call i32 @clk_prepare(ptr noundef %26) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i116)
  %tobool.not.i117 = icmp eq i32 %call.i116, 0
  br i1 %tobool.not.i117, label %if.end.i120, label %if.then28.do.end35_crit_edge

if.then28.do.end35_crit_edge:                     ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end35

if.end.i120:                                      ; preds = %if.then28
  %call1.i118 = tail call i32 @clk_enable(ptr noundef %26) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i118)
  %tobool2.not.i119 = icmp eq i32 %call1.i118, 0
  br i1 %tobool2.not.i119, label %if.end.i120.if.end38_crit_edge, label %if.then3.i121

if.end.i120.if.end38_crit_edge:                   ; preds = %if.end.i120
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end38

if.then3.i121:                                    ; preds = %if.end.i120
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @clk_unprepare(ptr noundef %26) #12
  br label %do.end35

do.end35:                                         ; preds = %if.then3.i121, %if.then28.do.end35_crit_edge
  %retval.0.i122.ph = phi i32 [ %call1.i118, %if.then3.i121 ], [ %call.i116, %if.then28.do.end35_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.117, i32 noundef %retval.0.i122.ph) #15
  %27 = ptrtoint ptr %clk21 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %clk21, align 4
  tail call void @clk_disable(ptr noundef %28) #12
  tail call void @clk_unprepare(ptr noundef %28) #12
  br label %cleanup62

if.end38:                                         ; preds = %if.end.i120.if.end38_crit_edge, %if.end25.if.end38_crit_edge
  %membase39 = getelementptr inbounds %struct.uart_port, ptr %1, i32 0, i32 2
  %29 = ptrtoint ptr %membase39 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %membase39, align 4
  %add.ptr40 = getelementptr i8, ptr %30, i32 4
  %31 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr40) #12, !srcloc !300
  %32 = and i32 %31, -3276801
  %33 = tail call i32 @llvm.bswap.i32(i32 %32)
  %tx_enabled43 = getelementptr i8, ptr %1, i32 -45
  %34 = ptrtoint ptr %tx_enabled43 to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %tx_enabled43, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %35)
  %tobool44.not = icmp eq i8 %35, 0
  %or = or i32 %33, 8192
  %spec.select97 = select i1 %tobool44.not, i32 %33, i32 %or
  %rx_enabled47 = getelementptr i8, ptr %1, i32 -46
  %36 = ptrtoint ptr %rx_enabled47 to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %rx_enabled47, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %37)
  %tobool48.not = icmp eq i8 %37, 0
  %or50 = or i32 %spec.select97, 4608
  %ucon.1 = select i1 %tobool48.not, i32 %spec.select97, i32 %or50
  %38 = tail call i32 @llvm.bswap.i32(i32 %ucon.1)
  %39 = ptrtoint ptr %membase39 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %membase39, align 4
  %add.ptr53 = getelementptr i8, ptr %40, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr53, i32 %38) #12, !srcloc !301
  %41 = ptrtoint ptr %baudclk26 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %baudclk26, align 4
  %cmp.i124 = icmp ugt ptr %42, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i124, label %if.end38.cleanup_crit_edge, label %if.then56

if.end38.cleanup_crit_edge:                       ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then56:                                        ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @clk_disable(ptr noundef %42) #12
  tail call void @clk_unprepare(ptr noundef %42) #12
  br label %cleanup

cleanup:                                          ; preds = %if.then56, %if.end38.cleanup_crit_edge
  %43 = ptrtoint ptr %clk21 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %clk21, align 4
  tail call void @clk_disable(ptr noundef %44) #12
  tail call void @clk_unprepare(ptr noundef %44) #12
  br label %cleanup62

cleanup62:                                        ; preds = %cleanup, %do.end35, %do.end, %if.end18, %if.then.cleanup62_crit_edge, %entry.cleanup62_crit_edge
  %retval.1 = phi i32 [ 0, %cleanup ], [ 0, %if.end18 ], [ 0, %if.then.cleanup62_crit_edge ], [ 0, %entry.cleanup62_crit_edge ], [ %retval.0.i113.ph, %do.end ], [ %retval.0.i122.ph, %do.end35 ]
  ret i32 %retval.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @uart_suspend_port(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @uart_resume_port(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @unregister_console(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @register_console(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @samsung_early_write(ptr nocapture noundef readonly %con, ptr noundef %s, i32 noundef %n) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %data = getelementptr inbounds %struct.console, ptr %con, i32 0, i32 13
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %port = getelementptr inbounds %struct.earlycon_device, ptr %1, i32 0, i32 1
  tail call void @uart_console_write(ptr noundef %port, ptr noundef %s, i32 noundef %n, ptr noundef nonnull @samsung_early_putc) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @samsung_early_putc(ptr nocapture noundef readonly %port, i32 noundef %c) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %membase = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 2
  %0 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %membase, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 8
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #12, !srcloc !300
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !314
  %3 = and i32 %2, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %entry.while.cond.i8_crit_edge, label %if.then

entry.while.cond.i8_crit_edge:                    ; preds = %entry
  br label %while.cond.i8

if.then:                                          ; preds = %entry
  %private_data.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 59
  %4 = ptrtoint ptr %private_data.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %private_data.i, align 4
  br label %while.cond.i

while.cond.i:                                     ; preds = %while.cond.i.while.cond.i_crit_edge, %if.then
  %6 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %membase, align 4
  %add.ptr.i = getelementptr i8, ptr %7, i32 24
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #12, !srcloc !300
  %9 = tail call i32 @llvm.bswap.i32(i32 %8) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !315
  %10 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %5, align 4
  %and.i = and i32 %11, %9
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %while.cond.i.if.end_crit_edge, label %while.cond.i.while.cond.i_crit_edge

while.cond.i.while.cond.i_crit_edge:              ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.cond.i

while.cond.i.if.end_crit_edge:                    ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

while.cond.i8:                                    ; preds = %while.cond.i8.while.cond.i8_crit_edge, %entry.while.cond.i8_crit_edge
  %12 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %membase, align 4
  %add.ptr.i6 = getelementptr i8, ptr %13, i32 16
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i6) #12, !srcloc !300
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !316
  %15 = and i32 %14, 33554432
  %tobool.not.i7 = icmp eq i32 %15, 0
  br i1 %tobool.not.i7, label %while.cond.i8.while.cond.i8_crit_edge, label %while.cond.i8.if.end_crit_edge

while.cond.i8.if.end_crit_edge:                   ; preds = %while.cond.i8
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

while.cond.i8.while.cond.i8_crit_edge:            ; preds = %while.cond.i8
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.cond.i8

if.end:                                           ; preds = %while.cond.i8.if.end_crit_edge, %while.cond.i.if.end_crit_edge
  %iotype.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 26
  %16 = ptrtoint ptr %iotype.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %iotype.i, align 2
  %18 = zext i8 %17 to i64
  call void @__sanitizer_cov_trace_switch(i64 %18, ptr @__sancov_gen_cov_switch_values.134)
  switch i8 %17, label %if.end.wr_reg_barrier.exit_crit_edge [
    i8 2, label %do.body.i
    i8 3, label %do.body3.i
  ]

if.end.wr_reg_barrier.exit_crit_edge:             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %wr_reg_barrier.exit

do.body.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !317
  tail call void @arm_heavy_mb() #12
  %conv1.i = trunc i32 %c to i8
  %19 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %membase, align 4
  %add.ptr.i10 = getelementptr i8, ptr %20, i32 32
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i10, i8 %conv1.i) #12, !srcloc !309
  br label %wr_reg_barrier.exit

do.body3.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !318
  tail call void @arm_heavy_mb() #12
  %21 = tail call i32 @llvm.bswap.i32(i32 %c) #12
  %22 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %membase, align 4
  %add.ptr6.i = getelementptr i8, ptr %23, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr6.i, i32 %21) #12, !srcloc !301
  br label %wr_reg_barrier.exit

wr_reg_barrier.exit:                              ; preds = %do.body3.i, %do.body.i, %if.end.wr_reg_barrier.exit_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.abs.i32(i32, i1 immarg) #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #8

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #12

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #13 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 143)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #13 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 143)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold mustprogress nofree norecurse nosync nounwind null_pointer_is_valid optsize sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #12 = { nounwind }
attributes #13 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #14 = { nomerge }
attributes #15 = { cold nounwind }
attributes #16 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !27, !29, !31, !33, !35, !36, !37, !38, !39, !40, !41, !43, !44, !45, !47, !49, !51, !52, !53, !54, !56, !57, !58, !60, !61, !62, !64, !65, !67, !68, !69, !71, !73, !75, !77, !79, !81, !83, !85, !86, !87, !88, !90, !91, !92, !94, !95, !96, !97, !99, !100, !101, !103, !104, !105, !106, !108, !109, !111, !112, !114, !115, !116, !117, !119, !120, !121, !123, !124, !126, !127, !128, !130, !131, !133, !134, !136, !137, !139, !140, !142, !143, !145, !146, !148, !149, !151, !153, !155, !156, !157, !158, !160, !162, !164, !166, !168, !169, !170, !172, !174, !176, !178, !180, !182, !184, !186, !188, !189, !190, !191, !193, !194, !195, !197, !199, !200, !201, !203, !204, !205, !207, !208, !209, !211, !212, !214, !215, !216, !218, !220, !222, !223, !224, !226, !227, !228, !230, !231, !232, !234, !235, !237, !239, !241, !243, !245, !247, !248, !249, !251, !252, !253, !255, !257, !259, !261, !263, !265, !267, !269, !271, !273, !275, !276, !277, !278, !280, !281, !282, !284, !286, !288}
!llvm.module.flags = !{!290, !291, !292, !293, !294, !295, !296, !297}
!llvm.ident = !{!298}

!0 = !{ptr @__initcall__kmod_samsung_tty__269_2930_samsung_serial_init6, !1, !"__initcall__kmod_samsung_tty__269_2930_samsung_serial_init6", i1 false, i1 false}
!1 = !{!"../drivers/tty/serial/samsung_tty.c", i32 2930, i32 1}
!2 = !{ptr @__exitcall_samsung_serial_exit, !3, !"__exitcall_samsung_serial_exit", i1 false, i1 false}
!3 = !{!"../drivers/tty/serial/samsung_tty.c", i32 2931, i32 1}
!4 = !{ptr @__UNIQUE_ID___earlycon_s3c2410270, !5, !"__UNIQUE_ID___earlycon_s3c2410270", i1 false, i1 false}
!5 = !{!"../drivers/tty/serial/samsung_tty.c", i32 3008, i32 1}
!6 = !{ptr @__UNIQUE_ID___earlycon_s3c2412271, !7, !"__UNIQUE_ID___earlycon_s3c2412271", i1 false, i1 false}
!7 = !{!"../drivers/tty/serial/samsung_tty.c", i32 3023, i32 1}
!8 = !{ptr @__UNIQUE_ID___earlycon_s3c2440272, !9, !"__UNIQUE_ID___earlycon_s3c2440272", i1 false, i1 false}
!9 = !{!"../drivers/tty/serial/samsung_tty.c", i32 3025, i32 1}
!10 = !{ptr @__UNIQUE_ID___earlycon_s3c6400273, !11, !"__UNIQUE_ID___earlycon_s3c6400273", i1 false, i1 false}
!11 = !{!"../drivers/tty/serial/samsung_tty.c", i32 3027, i32 1}
!12 = !{ptr @__UNIQUE_ID___earlycon_s5pv210274, !13, !"__UNIQUE_ID___earlycon_s5pv210274", i1 false, i1 false}
!13 = !{!"../drivers/tty/serial/samsung_tty.c", i32 3042, i32 1}
!14 = !{ptr @__UNIQUE_ID___earlycon_exynos4210275, !15, !"__UNIQUE_ID___earlycon_exynos4210275", i1 false, i1 false}
!15 = !{!"../drivers/tty/serial/samsung_tty.c", i32 3044, i32 1}
!16 = !{ptr @__UNIQUE_ID___earlycon_s5l276, !17, !"__UNIQUE_ID___earlycon_s5l276", i1 false, i1 false}
!17 = !{!"../drivers/tty/serial/samsung_tty.c", i32 3062, i32 1}
!18 = !{ptr @__UNIQUE_ID_alias277, !19, !"__UNIQUE_ID_alias277", i1 false, i1 false}
!19 = !{!"../drivers/tty/serial/samsung_tty.c", i32 3065, i32 1}
!20 = !{ptr @__UNIQUE_ID_description278, !21, !"__UNIQUE_ID_description278", i1 false, i1 false}
!21 = !{!"../drivers/tty/serial/samsung_tty.c", i32 3066, i32 1}
!22 = !{ptr @__UNIQUE_ID_author279, !23, !"__UNIQUE_ID_author279", i1 false, i1 false}
!23 = !{!"../drivers/tty/serial/samsung_tty.c", i32 3067, i32 1}
!24 = !{ptr @__UNIQUE_ID_file280, !25, !"__UNIQUE_ID_file280", i1 false, i1 false}
!25 = !{!"../drivers/tty/serial/samsung_tty.c", i32 3068, i32 1}
!26 = !{ptr @__UNIQUE_ID_license281, !25, !"__UNIQUE_ID_license281", i1 false, i1 false}
!27 = !{ptr @.str, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/tty/serial/samsung_tty.c", i32 2903, i32 11}
!29 = !{ptr @samsung_serial_driver, !30, !"samsung_serial_driver", i1 false, i1 false}
!30 = !{!"../drivers/tty/serial/samsung_tty.c", i32 2898, i32 31}
!31 = !{ptr @.str.1, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/tty/serial/samsung_tty.c", i32 2182, i32 29}
!33 = !{ptr @.str.2, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/tty/serial/samsung_tty.c", i32 2188, i32 3}
!35 = !{ptr @.str.3, !34, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @.str.4, !34, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @.str.5, !34, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @.str.6, !34, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @s3c24xx_serial_probe._entry, !34, !"_entry", i1 false, i1 false}
!40 = !{ptr @s3c24xx_serial_probe._entry_ptr, !34, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @.str.8, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/tty/serial/samsung_tty.c", i32 2195, i32 3}
!43 = !{ptr @s3c24xx_serial_probe._entry.7, !42, !"_entry", i1 false, i1 false}
!44 = !{ptr @s3c24xx_serial_probe._entry_ptr.9, !42, !"_entry_ptr", i1 false, i1 false}
!45 = !{ptr @.str.10, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/tty/serial/samsung_tty.c", i32 2219, i32 4}
!47 = !{ptr @.str.11, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/tty/serial/samsung_tty.c", i32 2221, i32 32}
!49 = !{ptr @.str.13, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/tty/serial/samsung_tty.c", i32 2230, i32 5}
!51 = !{ptr @.str.14, !50, !"<string literal>", i1 false, i1 false}
!52 = !{ptr @s3c24xx_serial_probe._entry.12, !50, !"_entry", i1 false, i1 false}
!53 = !{ptr @s3c24xx_serial_probe._entry_ptr.15, !50, !"_entry_ptr", i1 false, i1 false}
!54 = !{ptr @.str.16, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/tty/serial/samsung_tty.c", i32 2250, i32 2}
!56 = !{ptr @.str.17, !55, !"<string literal>", i1 false, i1 false}
!57 = !{ptr @s3c24xx_serial_probe.__UNIQUE_ID_ddebug265, !55, !"__UNIQUE_ID_ddebug265", i1 false, i1 false}
!58 = !{ptr @.str.19, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/tty/serial/samsung_tty.c", i32 2259, i32 4}
!60 = !{ptr @s3c24xx_serial_probe._entry.18, !59, !"_entry", i1 false, i1 false}
!61 = !{ptr @s3c24xx_serial_probe._entry_ptr.20, !59, !"_entry_ptr", i1 false, i1 false}
!62 = !{ptr @.str.21, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/tty/serial/samsung_tty.c", i32 2264, i32 2}
!64 = !{ptr @s3c24xx_serial_probe.__UNIQUE_ID_ddebug266, !63, !"__UNIQUE_ID_ddebug266", i1 false, i1 false}
!65 = !{ptr @.str.23, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/tty/serial/samsung_tty.c", i32 2279, i32 3}
!67 = !{ptr @s3c24xx_serial_probe._entry.22, !66, !"_entry", i1 false, i1 false}
!68 = !{ptr @s3c24xx_serial_probe._entry_ptr.24, !66, !"_entry_ptr", i1 false, i1 false}
!69 = !{ptr @probe_index, !70, !"probe_index", i1 false, i1 false}
!70 = !{!"../drivers/tty/serial/samsung_tty.c", i32 2157, i32 12}
!71 = !{ptr @.str.25, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/tty/serial/samsung_tty.c", i32 1821, i32 13}
!73 = !{ptr @.str.26, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/tty/serial/samsung_tty.c", i32 1832, i32 13}
!75 = !{ptr @.str.27, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/tty/serial/samsung_tty.c", i32 1844, i32 13}
!77 = !{ptr @.str.28, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/tty/serial/samsung_tty.c", i32 1857, i32 13}
!79 = !{ptr @s3c24xx_serial_ports, !80, !"s3c24xx_serial_ports", i1 false, i1 false}
!80 = !{!"../drivers/tty/serial/samsung_tty.c", i32 1818, i32 1}
!81 = !{ptr @s3c24xx_serial_ops, !82, !"s3c24xx_serial_ops", i1 false, i1 false}
!82 = !{!"../drivers/tty/serial/samsung_tty.c", i32 1742, i32 30}
!83 = !{ptr @.str.29, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/tty/serial/samsung_tty.c", i32 456, i32 3}
!85 = !{ptr @.str.30, !84, !"<string literal>", i1 false, i1 false}
!86 = !{ptr @s3c24xx_serial_start_tx_dma._entry, !84, !"_entry", i1 false, i1 false}
!87 = !{ptr @s3c24xx_serial_start_tx_dma._entry_ptr, !84, !"_entry_ptr", i1 false, i1 false}
!88 = !{ptr @.str.31, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/tty/serial/samsung_tty.c", i32 547, i32 3}
!90 = !{ptr @.str.32, !89, !"<string literal>", i1 false, i1 false}
!91 = !{ptr @s3c24xx_serial_stop_rx.__UNIQUE_ID_ddebug248, !89, !"__UNIQUE_ID_ddebug248", i1 false, i1 false}
!92 = !{ptr @.str.33, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/tty/serial/samsung_tty.c", i32 526, i32 3}
!94 = !{ptr @.str.34, !93, !"<string literal>", i1 false, i1 false}
!95 = !{ptr @s3c24xx_uart_copy_rx_to_tty._entry, !93, !"_entry", i1 false, i1 false}
!96 = !{ptr @s3c24xx_uart_copy_rx_to_tty._entry_ptr, !93, !"_entry_ptr", i1 false, i1 false}
!97 = !{ptr @.str.36, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/tty/serial/samsung_tty.c", i32 533, i32 3}
!99 = !{ptr @s3c24xx_uart_copy_rx_to_tty._entry.35, !98, !"_entry", i1 false, i1 false}
!100 = !{ptr @s3c24xx_uart_copy_rx_to_tty._entry_ptr.37, !98, !"_entry_ptr", i1 false, i1 false}
!101 = !{ptr @.str.38, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/tty/serial/samsung_tty.c", i32 1244, i32 3}
!103 = !{ptr @.str.39, !102, !"<string literal>", i1 false, i1 false}
!104 = !{ptr @s3c24xx_serial_startup._entry, !102, !"_entry", i1 false, i1 false}
!105 = !{ptr @s3c24xx_serial_startup._entry_ptr, !102, !"_entry_ptr", i1 false, i1 false}
!106 = !{ptr @.str.40, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/tty/serial/samsung_tty.c", i32 1250, i32 2}
!108 = !{ptr @s3c24xx_serial_startup.__UNIQUE_ID_ddebug251, !107, !"__UNIQUE_ID_ddebug251", i1 false, i1 false}
!109 = !{ptr @s3c24xx_serial_startup._entry.41, !110, !"_entry", i1 false, i1 false}
!110 = !{!"../drivers/tty/serial/samsung_tty.c", i32 1258, i32 3}
!111 = !{ptr @s3c24xx_serial_startup._entry_ptr.42, !110, !"_entry_ptr", i1 false, i1 false}
!112 = !{ptr @.str.43, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/tty/serial/samsung_tty.c", i32 649, i32 3}
!114 = !{ptr @.str.44, !113, !"<string literal>", i1 false, i1 false}
!115 = !{ptr @s3c64xx_start_rx_dma._entry, !113, !"_entry", i1 false, i1 false}
!116 = !{ptr @s3c64xx_start_rx_dma._entry_ptr, !113, !"_entry_ptr", i1 false, i1 false}
!117 = !{ptr @.str.45, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../drivers/tty/serial/samsung_tty.c", i32 809, i32 4}
!119 = !{ptr @.str.46, !118, !"<string literal>", i1 false, i1 false}
!120 = !{ptr @s3c24xx_serial_rx_drain_fifo.__UNIQUE_ID_ddebug249, !118, !"__UNIQUE_ID_ddebug249", i1 false, i1 false}
!121 = !{ptr @.str.47, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../drivers/tty/serial/samsung_tty.c", i32 815, i32 5}
!123 = !{ptr @s3c24xx_serial_rx_drain_fifo.__UNIQUE_ID_ddebug250, !122, !"__UNIQUE_ID_ddebug250", i1 false, i1 false}
!124 = !{ptr @.str.48, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../drivers/tty/serial/samsung_tty.c", i32 1572, i32 4}
!126 = !{ptr @.str.49, !125, !"<string literal>", i1 false, i1 false}
!127 = !{ptr @s3c24xx_serial_set_termios.__UNIQUE_ID_ddebug252, !125, !"__UNIQUE_ID_ddebug252", i1 false, i1 false}
!128 = !{ptr @.str.50, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../drivers/tty/serial/samsung_tty.c", i32 1575, i32 4}
!130 = !{ptr @s3c24xx_serial_set_termios.__UNIQUE_ID_ddebug253, !129, !"__UNIQUE_ID_ddebug253", i1 false, i1 false}
!131 = !{ptr @.str.51, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../drivers/tty/serial/samsung_tty.c", i32 1582, i32 3}
!133 = !{ptr @s3c24xx_serial_set_termios.__UNIQUE_ID_ddebug254, !132, !"__UNIQUE_ID_ddebug254", i1 false, i1 false}
!134 = !{ptr @.str.52, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../drivers/tty/serial/samsung_tty.c", i32 1586, i32 3}
!136 = !{ptr @s3c24xx_serial_set_termios.__UNIQUE_ID_ddebug255, !135, !"__UNIQUE_ID_ddebug255", i1 false, i1 false}
!137 = !{ptr @.str.53, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../drivers/tty/serial/samsung_tty.c", i32 1590, i32 3}
!139 = !{ptr @s3c24xx_serial_set_termios.__UNIQUE_ID_ddebug256, !138, !"__UNIQUE_ID_ddebug256", i1 false, i1 false}
!140 = !{ptr @.str.54, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../drivers/tty/serial/samsung_tty.c", i32 1595, i32 3}
!142 = !{ptr @s3c24xx_serial_set_termios.__UNIQUE_ID_ddebug257, !141, !"__UNIQUE_ID_ddebug257", i1 false, i1 false}
!143 = !{ptr @.str.55, !144, !"<string literal>", i1 false, i1 false}
!144 = !{!"../drivers/tty/serial/samsung_tty.c", i32 1617, i32 2}
!145 = !{ptr @s3c24xx_serial_set_termios.__UNIQUE_ID_ddebug258, !144, !"__UNIQUE_ID_ddebug258", i1 false, i1 false}
!146 = !{ptr @.str.56, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../drivers/tty/serial/samsung_tty.c", i32 1640, i32 2}
!148 = !{ptr @s3c24xx_serial_set_termios.__UNIQUE_ID_ddebug259, !147, !"__UNIQUE_ID_ddebug259", i1 false, i1 false}
!149 = !{ptr @.str.57, !150, !"<string literal>", i1 false, i1 false}
!150 = !{!"../drivers/tty/serial/samsung_tty.c", i32 1454, i32 20}
!151 = !{ptr @udivslot_table, !152, !"udivslot_table", i1 false, i1 false}
!152 = !{!"../drivers/tty/serial/samsung_tty.c", i32 1502, i32 12}
!153 = !{ptr @.str.58, !154, !"<string literal>", i1 false, i1 false}
!154 = !{!"../drivers/tty/serial/samsung_tty.c", i32 1387, i32 3}
!155 = !{ptr @.str.59, !154, !"<string literal>", i1 false, i1 false}
!156 = !{ptr @s3c24xx_serial_pm._entry, !154, !"_entry", i1 false, i1 false}
!157 = !{ptr @s3c24xx_serial_pm._entry_ptr, !154, !"_entry_ptr", i1 false, i1 false}
!158 = !{ptr @.str.60, !159, !"<string literal>", i1 false, i1 false}
!159 = !{!"../drivers/tty/serial/samsung_tty.c", i32 1682, i32 10}
!160 = !{ptr @.str.61, !161, !"<string literal>", i1 false, i1 false}
!161 = !{!"../drivers/tty/serial/samsung_tty.c", i32 1684, i32 10}
!162 = !{ptr @.str.62, !163, !"<string literal>", i1 false, i1 false}
!163 = !{!"../drivers/tty/serial/samsung_tty.c", i32 1686, i32 10}
!164 = !{ptr @s3c64xx_serial_ops, !165, !"s3c64xx_serial_ops", i1 false, i1 false}
!165 = !{!"../drivers/tty/serial/samsung_tty.c", i32 1763, i32 30}
!166 = !{ptr @.str.63, !167, !"<string literal>", i1 false, i1 false}
!167 = !{!"../drivers/tty/serial/samsung_tty.c", i32 1294, i32 3}
!168 = !{ptr @s3c64xx_serial_startup._entry, !167, !"_entry", i1 false, i1 false}
!169 = !{ptr @s3c64xx_serial_startup._entry_ptr, !167, !"_entry_ptr", i1 false, i1 false}
!170 = !{ptr @.str.64, !171, !"<string literal>", i1 false, i1 false}
!171 = !{!"../drivers/tty/serial/samsung_tty.c", i32 1064, i32 47}
!172 = !{ptr @.str.65, !173, !"<string literal>", i1 false, i1 false}
!173 = !{!"../drivers/tty/serial/samsung_tty.c", i32 1067, i32 12}
!174 = !{ptr @.str.66, !175, !"<string literal>", i1 false, i1 false}
!175 = !{!"../drivers/tty/serial/samsung_tty.c", i32 1075, i32 12}
!176 = !{ptr @.str.67, !177, !"<string literal>", i1 false, i1 false}
!177 = !{!"../drivers/tty/serial/samsung_tty.c", i32 1082, i32 47}
!178 = !{ptr @.str.68, !179, !"<string literal>", i1 false, i1 false}
!179 = !{!"../drivers/tty/serial/samsung_tty.c", i32 1084, i32 12}
!180 = !{ptr @.str.69, !181, !"<string literal>", i1 false, i1 false}
!181 = !{!"../drivers/tty/serial/samsung_tty.c", i32 1092, i32 12}
!182 = !{ptr @.str.70, !183, !"<string literal>", i1 false, i1 false}
!183 = !{!"../drivers/tty/serial/samsung_tty.c", i32 1111, i32 12}
!184 = !{ptr @.str.71, !185, !"<string literal>", i1 false, i1 false}
!185 = !{!"../drivers/tty/serial/samsung_tty.c", i32 1121, i32 12}
!186 = !{ptr @.str.72, !187, !"<string literal>", i1 false, i1 false}
!187 = !{!"../drivers/tty/serial/samsung_tty.c", i32 1139, i32 3}
!188 = !{ptr @.str.73, !187, !"<string literal>", i1 false, i1 false}
!189 = !{ptr @s3c24xx_serial_request_dma._entry, !187, !"_entry", i1 false, i1 false}
!190 = !{ptr @s3c24xx_serial_request_dma._entry_ptr, !187, !"_entry_ptr", i1 false, i1 false}
!191 = distinct !{null, !192, !"__already_done", i1 false, i1 false}
!192 = !{!"../include/linux/dma-mapping.h", i32 326, i32 6}
!193 = !{ptr @.str.74, !192, !"<string literal>", i1 false, i1 false}
!194 = !{ptr @.str.75, !192, !"<string literal>", i1 false, i1 false}
!195 = !{ptr @apple_s5l_serial_ops, !196, !"apple_s5l_serial_ops", i1 false, i1 false}
!196 = !{!"../drivers/tty/serial/samsung_tty.c", i32 1784, i32 30}
!197 = !{ptr @.str.76, !198, !"<string literal>", i1 false, i1 false}
!198 = !{!"../drivers/tty/serial/samsung_tty.c", i32 1332, i32 3}
!199 = !{ptr @apple_s5l_serial_startup._entry, !198, !"_entry", i1 false, i1 false}
!200 = !{ptr @apple_s5l_serial_startup._entry_ptr, !198, !"_entry_ptr", i1 false, i1 false}
!201 = !{ptr @.str.77, !202, !"<string literal>", i1 false, i1 false}
!202 = !{!"../drivers/tty/serial/samsung_tty.c", i32 2040, i32 3}
!203 = !{ptr @.str.78, !202, !"<string literal>", i1 false, i1 false}
!204 = !{ptr @s3c24xx_serial_init_port.__UNIQUE_ID_ddebug260, !202, !"__UNIQUE_ID_ddebug260", i1 false, i1 false}
!205 = !{ptr @.str.79, !206, !"<string literal>", i1 false, i1 false}
!206 = !{!"../drivers/tty/serial/samsung_tty.c", i32 2048, i32 3}
!207 = !{ptr @s3c24xx_serial_init_port._entry, !206, !"_entry", i1 false, i1 false}
!208 = !{ptr @s3c24xx_serial_init_port._entry_ptr, !206, !"_entry_ptr", i1 false, i1 false}
!209 = !{ptr @.str.80, !210, !"<string literal>", i1 false, i1 false}
!210 = !{!"../drivers/tty/serial/samsung_tty.c", i32 2052, i32 2}
!211 = !{ptr @s3c24xx_serial_init_port.__UNIQUE_ID_ddebug261, !210, !"__UNIQUE_ID_ddebug261", i1 false, i1 false}
!212 = !{ptr @.str.82, !213, !"<string literal>", i1 false, i1 false}
!213 = !{!"../drivers/tty/serial/samsung_tty.c", i32 2056, i32 3}
!214 = !{ptr @s3c24xx_serial_init_port._entry.81, !213, !"_entry", i1 false, i1 false}
!215 = !{ptr @s3c24xx_serial_init_port._entry_ptr.83, !213, !"_entry_ptr", i1 false, i1 false}
!216 = !{ptr @.str.84, !217, !"<string literal>", i1 false, i1 false}
!217 = !{!"../drivers/tty/serial/samsung_tty.c", i32 2085, i32 12}
!218 = !{ptr @.str.85, !219, !"<string literal>", i1 false, i1 false}
!219 = !{!"../drivers/tty/serial/samsung_tty.c", i32 2095, i32 40}
!220 = !{ptr @.str.87, !221, !"<string literal>", i1 false, i1 false}
!221 = !{!"../drivers/tty/serial/samsung_tty.c", i32 2097, i32 3}
!222 = !{ptr @s3c24xx_serial_init_port._entry.86, !221, !"_entry", i1 false, i1 false}
!223 = !{ptr @s3c24xx_serial_init_port._entry_ptr.88, !221, !"_entry_ptr", i1 false, i1 false}
!224 = !{ptr @.str.90, !225, !"<string literal>", i1 false, i1 false}
!225 = !{!"../drivers/tty/serial/samsung_tty.c", i32 2105, i32 3}
!226 = !{ptr @s3c24xx_serial_init_port._entry.89, !225, !"_entry", i1 false, i1 false}
!227 = !{ptr @s3c24xx_serial_init_port._entry_ptr.91, !225, !"_entry_ptr", i1 false, i1 false}
!228 = !{ptr @.str.93, !229, !"<string literal>", i1 false, i1 false}
!229 = !{!"../drivers/tty/serial/samsung_tty.c", i32 2112, i32 3}
!230 = !{ptr @s3c24xx_serial_init_port._entry.92, !229, !"_entry", i1 false, i1 false}
!231 = !{ptr @s3c24xx_serial_init_port._entry_ptr.94, !229, !"_entry_ptr", i1 false, i1 false}
!232 = !{ptr @.str.95, !233, !"<string literal>", i1 false, i1 false}
!233 = !{!"../drivers/tty/serial/samsung_tty.c", i32 2137, i32 2}
!234 = !{ptr @s3c24xx_serial_init_port.__UNIQUE_ID_ddebug262, !233, !"__UNIQUE_ID_ddebug262", i1 false, i1 false}
!235 = !{ptr @.str.96, !236, !"<string literal>", i1 false, i1 false}
!236 = !{!"../drivers/tty/serial/samsung_tty.c", i32 1807, i32 17}
!237 = !{ptr @.str.97, !238, !"<string literal>", i1 false, i1 false}
!238 = !{!"../drivers/tty/serial/samsung_tty.c", i32 1810, i32 14}
!239 = !{ptr @s3c24xx_uart_drv, !240, !"s3c24xx_uart_drv", i1 false, i1 false}
!240 = !{!"../drivers/tty/serial/samsung_tty.c", i32 1805, i32 27}
!241 = !{ptr @s3c24xx_serial_console, !242, !"s3c24xx_serial_console", i1 false, i1 false}
!242 = !{!"../drivers/tty/serial/samsung_tty.c", i32 2606, i32 23}
!243 = !{ptr @cons_uart, !244, !"cons_uart", i1 false, i1 false}
!244 = !{!"../drivers/tty/serial/samsung_tty.c", i32 2417, i32 26}
!245 = !{ptr @.str.98, !246, !"<string literal>", i1 false, i1 false}
!246 = !{!"../drivers/tty/serial/samsung_tty.c", i32 2601, i32 2}
!247 = !{ptr @.str.99, !246, !"<string literal>", i1 false, i1 false}
!248 = !{ptr @s3c24xx_serial_console_setup.__UNIQUE_ID_ddebug268, !246, !"__UNIQUE_ID_ddebug268", i1 false, i1 false}
!249 = !{ptr @.str.100, !250, !"<string literal>", i1 false, i1 false}
!250 = !{!"../drivers/tty/serial/samsung_tty.c", i32 2563, i32 3}
!251 = !{ptr @.str.101, !250, !"<string literal>", i1 false, i1 false}
!252 = !{ptr @s3c24xx_serial_get_options.__UNIQUE_ID_ddebug267, !250, !"__UNIQUE_ID_ddebug267", i1 false, i1 false}
!253 = !{ptr @s3c24xx_uart_dt_match, !254, !"s3c24xx_uart_dt_match", i1 false, i1 false}
!254 = !{!"../drivers/tty/serial/samsung_tty.c", i32 2874, i32 34}
!255 = !{ptr @.str.102, !256, !"<string literal>", i1 false, i1 false}
!256 = !{!"../drivers/tty/serial/samsung_tty.c", i32 2708, i32 12}
!257 = !{ptr @s3c6400_serial_drv_data, !258, !"s3c6400_serial_drv_data", i1 false, i1 false}
!258 = !{!"../drivers/tty/serial/samsung_tty.c", i32 2706, i32 39}
!259 = !{ptr @.str.104, !260, !"<string literal>", i1 false, i1 false}
!260 = !{!"../drivers/tty/serial/samsung_tty.c", i32 2737, i32 12}
!261 = !{ptr @s5pv210_serial_drv_data, !262, !"s5pv210_serial_drv_data", i1 false, i1 false}
!262 = !{!"../drivers/tty/serial/samsung_tty.c", i32 2735, i32 39}
!263 = !{ptr @.str.107, !264, !"<string literal>", i1 false, i1 false}
!264 = !{!"../drivers/tty/serial/samsung_tty.c", i32 2788, i32 2}
!265 = !{ptr @exynos4210_serial_drv_data, !266, !"exynos4210_serial_drv_data", i1 false, i1 false}
!266 = !{!"../drivers/tty/serial/samsung_tty.c", i32 2787, i32 39}
!267 = !{ptr @exynos5433_serial_drv_data, !268, !"exynos5433_serial_drv_data", i1 false, i1 false}
!268 = !{!"../drivers/tty/serial/samsung_tty.c", i32 2792, i32 39}
!269 = !{ptr @exynos850_serial_drv_data, !270, !"exynos850_serial_drv_data", i1 false, i1 false}
!270 = !{!"../drivers/tty/serial/samsung_tty.c", i32 2797, i32 39}
!271 = !{ptr @s3c24xx_serial_pm_ops, !272, !"s3c24xx_serial_pm_ops", i1 false, i1 false}
!272 = !{!"../drivers/tty/serial/samsung_tty.c", i32 2401, i32 32}
!273 = !{ptr @.str.114, !274, !"<string literal>", i1 false, i1 false}
!274 = !{!"../drivers/tty/serial/samsung_tty.c", i32 2362, i32 5}
!275 = !{ptr @.str.115, !274, !"<string literal>", i1 false, i1 false}
!276 = !{ptr @s3c24xx_serial_resume_noirq._entry, !274, !"_entry", i1 false, i1 false}
!277 = !{ptr @s3c24xx_serial_resume_noirq._entry_ptr, !274, !"_entry_ptr", i1 false, i1 false}
!278 = !{ptr @.str.117, !279, !"<string literal>", i1 false, i1 false}
!279 = !{!"../drivers/tty/serial/samsung_tty.c", i32 2368, i32 6}
!280 = !{ptr @s3c24xx_serial_resume_noirq._entry.116, !279, !"_entry", i1 false, i1 false}
!281 = !{ptr @s3c24xx_serial_resume_noirq._entry_ptr.118, !279, !"_entry_ptr", i1 false, i1 false}
!282 = !{ptr @s3c24xx_serial_driver_ids, !283, !"s3c24xx_serial_driver_ids", i1 false, i1 false}
!283 = !{!"../drivers/tty/serial/samsung_tty.c", i32 2840, i32 40}
!284 = !{ptr @s3c2410_early_console_data, !285, !"s3c2410_early_console_data", i1 false, i1 false}
!285 = !{!"../drivers/tty/serial/samsung_tty.c", i32 2997, i32 42}
!286 = !{ptr @s3c2440_early_console_data, !287, !"s3c2440_early_console_data", i1 false, i1 false}
!287 = !{!"../drivers/tty/serial/samsung_tty.c", i32 3012, i32 42}
!288 = !{ptr @s5pv210_early_console_data, !289, !"s5pv210_early_console_data", i1 false, i1 false}
!289 = !{!"../drivers/tty/serial/samsung_tty.c", i32 3031, i32 42}
!290 = !{i32 1, !"wchar_size", i32 2}
!291 = !{i32 1, !"min_enum_size", i32 4}
!292 = !{i32 8, !"branch-target-enforcement", i32 0}
!293 = !{i32 8, !"sign-return-address", i32 0}
!294 = !{i32 8, !"sign-return-address-all", i32 0}
!295 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!296 = !{i32 7, !"uwtable", i32 1}
!297 = !{i32 7, !"frame-pointer", i32 2}
!298 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!299 = !{i64 2148408682, i64 2148408687, i64 2148408700, i64 2148408744, i64 2148408778, i64 2148408799}
!300 = !{i64 6343511}
!301 = !{i64 6343093}
!302 = !{i64 6343291}
!303 = !{i64 989547, i64 989608}
!304 = !{i64 992279}
!305 = !{!"branch_weights", i32 1, i32 2000}
!306 = !{i64 992564}
!307 = !{i64 2154979814}
!308 = !{i64 2154979656}
!309 = !{i64 6342896}
!310 = !{i8 0, i8 2}
!311 = !{!"branch_weights", i32 2000, i32 1}
!312 = !{i64 2154980556}
!313 = !{i64 2154980398}
!314 = !{i64 2155001503}
!315 = !{i64 2155000990}
!316 = !{i64 2155000470}
!317 = !{i64 2154999424}
!318 = !{i64 2154999770}
