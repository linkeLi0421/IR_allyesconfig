; ModuleID = '/llk/IR_all_yes/drivers/tty/serial/fsl_lpuart.c_pt.bc'
source_filename = "../drivers/tty/serial/fsl_lpuart.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.earlycon_id = type { [15 x i8], i8, [128 x i8], ptr }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.uart_driver = type { ptr, ptr, ptr, i32, i32, i32, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.uart_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.console = type { [16 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, i16, i16, i32, i32, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.lpuart_soc_data = type { i32, i8, i8 }
%struct.earlycon_device = type { ptr, %struct.uart_port, [16 x i8], i32 }
%struct.uart_port = type { %struct.spinlock, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i8, i8, i8, i8, i32, i32, ptr, %struct.uart_icount, ptr, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, ptr, i32, i32, i8, i8, i8, i8, i8, ptr, ptr, ptr, %struct.serial_rs485, ptr, %struct.serial_iso7816, ptr }
%struct.uart_icount = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.serial_rs485 = type { i32, i32, i32, [5 x i32] }
%struct.serial_iso7816 = type { i32, i32, i32, i32, i32, [5 x i32] }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
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
%struct.lpuart_port = type { %struct.uart_port, i32, ptr, ptr, i32, i32, i8, i8, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i8, i32, %struct.timer_list, %struct.scatterlist, [2 x %struct.scatterlist], %struct.circ_buf, i32, i32, %struct.wait_queue_head, i8 }
%struct.scatterlist = type { i32, i32, i32, i32, i32 }
%struct.circ_buf = type { ptr, i32, i32 }
%struct.tty_bufhead = type { ptr, %struct.work_struct, %struct.mutex, %struct.atomic_t, %struct.tty_buffer, %struct.llist_head, %struct.atomic_t, i32, ptr }
%struct.tty_buffer = type { %union.anon.39, i32, i32, i32, i32, i32, [0 x i32] }
%union.anon.39 = type { ptr }
%struct.llist_head = type { ptr }
%struct.tty_port = type { %struct.tty_bufhead, ptr, ptr, ptr, ptr, %struct.spinlock, i32, i32, %struct.wait_queue_head, %struct.wait_queue_head, i32, i32, i8, %struct.mutex, %struct.mutex, ptr, i32, i32, i32, %struct.kref, ptr }
%struct.uart_state = type { %struct.tty_port, i32, %struct.circ_buf, %struct.atomic_t, %struct.wait_queue_head, ptr }
%struct.tty_struct = type { i32, %struct.kref, ptr, ptr, ptr, i32, %struct.ld_semaphore, ptr, %struct.mutex, %struct.mutex, %struct.mutex, %struct.rw_semaphore, %struct.mutex, %struct.ktermios, %struct.ktermios, [64 x i8], i32, i32, %struct.winsize, %struct.anon.37, %struct.anon.38, i32, i32, i32, ptr, ptr, %struct.wait_queue_head, %struct.wait_queue_head, %struct.work_struct, ptr, ptr, %struct.spinlock, %struct.list_head, i32, ptr, i32, %struct.work_struct, ptr }
%struct.ld_semaphore = type { %struct.atomic_t, %struct.raw_spinlock, i32, %struct.list_head, %struct.list_head, %struct.lockdep_map }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.ktermios = type { i32, i32, i32, i32, i8, [19 x i8], i32, i32 }
%struct.winsize = type { i16, i16, i16, i16 }
%struct.anon.37 = type { %struct.spinlock, i8, i8, [0 x i32] }
%struct.anon.38 = type { %struct.spinlock, ptr, ptr, i8, i8, [0 x i32] }
%struct.dma_device = type { %struct.kref, i32, i32, %struct.list_head, %struct.list_head, %struct.dma_filter, %struct.dma_cap_mask_t, i32, i16, i16, i32, i32, i32, i32, i32, ptr, ptr, %struct.ida, %struct.mutex, i32, i32, i32, i32, i32, i32, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dma_filter = type { ptr, i32, ptr }
%struct.dma_cap_mask_t = type { [1 x i32] }
%struct.serial_struct = type { i32, i32, i32, i32, i32, i32, i32, i32, i16, i8, [1 x i8], i32, i16, i16, ptr, i16, i32, i32 }
%struct.page = type { i32, %union.anon.2, %union.anon.69, %struct.atomic_t, i32 }
%union.anon.2 = type { %struct.anon.3 }
%struct.anon.3 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.69 = type { %struct.atomic_t }
%struct.dma_async_tx_descriptor = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, %struct.spinlock }
%struct.dma_slave_config = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, ptr, i32 }
%struct.dma_tx_state = type { i32, i32, i32, i32 }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.irq_data = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr }

@__UNIQUE_ID___earlycon_lpuart238 = internal constant %struct.earlycon_id { [15 x i8] c"lpuart\00\00\00\00\00\00\00\00\00", i8 0, [128 x i8] c"fsl,vf610-lpuart\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @lpuart_early_console_setup }, section "__earlycon_table", align 4
@__UNIQUE_ID___earlycon_lpuart32239 = internal constant %struct.earlycon_id { [15 x i8] c"lpuart32\00\00\00\00\00\00\00", i8 0, [128 x i8] c"fsl,ls1021a-lpuart\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @lpuart32_early_console_setup }, section "__earlycon_table", align 4
@__UNIQUE_ID___earlycon_lpuart32240 = internal constant %struct.earlycon_id { [15 x i8] c"lpuart32\00\00\00\00\00\00\00", i8 0, [128 x i8] c"fsl,ls1028a-lpuart\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @ls1028a_early_console_setup }, section "__earlycon_table", align 4
@__UNIQUE_ID___earlycon_lpuart32241 = internal constant %struct.earlycon_id { [15 x i8] c"lpuart32\00\00\00\00\00\00\00", i8 0, [128 x i8] c"fsl,imx7ulp-lpuart\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @lpuart32_imx_early_console_setup }, section "__earlycon_table", align 4
@__UNIQUE_ID___earlycon_lpuart32242 = internal constant %struct.earlycon_id { [15 x i8] c"lpuart32\00\00\00\00\00\00\00", i8 0, [128 x i8] c"fsl,imx8qxp-lpuart\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @lpuart32_imx_early_console_setup }, section "__earlycon_table", align 4
@__UNIQUE_ID___earlycon_lpuart32243 = internal constant %struct.earlycon_id { [15 x i8] c"lpuart32\00\00\00\00\00\00\00", i8 0, [128 x i8] c"fsl,imxrt1050-lpuart\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @lpuart32_imx_early_console_setup }, section "__earlycon_table", align 4
@__UNIQUE_ID___earlycon_lpuart244 = internal constant %struct.earlycon_id { [15 x i8] c"lpuart\00\00\00\00\00\00\00\00\00", i8 0, [128 x i8] zeroinitializer, ptr @lpuart_early_console_setup }, section "__earlycon_table", align 4
@__UNIQUE_ID___earlycon_lpuart32245 = internal constant %struct.earlycon_id { [15 x i8] c"lpuart32\00\00\00\00\00\00\00", i8 0, [128 x i8] zeroinitializer, ptr @lpuart32_early_console_setup }, section "__earlycon_table", align 4
@fsl_lpuart_ida = internal global { %struct.ida, [44 x i8] } { %struct.ida { %struct.xarray { %struct.spinlock { %union.anon.0 { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.5, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, i32 67108869, ptr null } }, [44 x i8] zeroinitializer }, align 32
@lpuart_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @lpuart_probe, ptr @lpuart_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str.6, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @lpuart_dt_ids, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @lpuart_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@lpuart_reg = internal global { %struct.uart_driver, [60 x i8] } { %struct.uart_driver { ptr null, ptr @.str.6, ptr @.str.61, i32 0, i32 0, i32 6, ptr @lpuart_console, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@__initcall__kmod_fsl_lpuart__246_2928_lpuart_serial_init6 = internal global ptr @lpuart_serial_init, section ".initcall6.init", align 4
@__exitcall_lpuart_serial_exit = internal global ptr @lpuart_serial_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description247 = internal constant [59 x i8] c"fsl_lpuart.description=Freescale lpuart serial port driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file248 = internal constant [46 x i8] c"fsl_lpuart.file=drivers/tty/serial/fsl_lpuart\00", section ".modinfo", align 1
@__UNIQUE_ID_license249 = internal constant [26 x i8] c"fsl_lpuart.license=GPL v2\00", section ".modinfo", align 1
@__lpuart32_serial_setbrg._entry = internal constant %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 2065, ptr @.str.3, ptr @.str.4 }, align 1
@.str = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"unacceptable baud rate difference of more than 3%%\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"__lpuart32_serial_setbrg\00", [39 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"drivers/tty/serial/fsl_lpuart.c\00", [32 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@__lpuart32_serial_setbrg._entry_ptr = internal global ptr @__lpuart32_serial_setbrg._entry, section ".printk_index", align 4
@.str.5 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"fsl_lpuart_ida.xa_lock\00", [41 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"fsl-lpuart\00", [21 x i8] zeroinitializer }, align 32
@lpuart_dt_ids = internal constant { [7 x %struct.of_device_id], [324 x i8] } { [7 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,vf610-lpuart\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @vf_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,ls1021a-lpuart\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @ls1021a_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,ls1028a-lpuart\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @ls1028a_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,imx7ulp-lpuart\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @imx7ulp_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,imx8qxp-lpuart\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @imx8qxp_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,imxrt1050-lpuart\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @imxrt1050_data }, %struct.of_device_id zeroinitializer], [324 x i8] zeroinitializer }, align 32
@lpuart_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @lpuart_suspend, ptr @lpuart_resume, ptr @lpuart_suspend, ptr @lpuart_resume, ptr @lpuart_suspend, ptr @lpuart_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@lpuart32_pops = internal constant { %struct.uart_ops, [56 x i8] } { %struct.uart_ops { ptr @lpuart32_tx_empty, ptr @lpuart32_set_mctrl, ptr @lpuart32_get_mctrl, ptr @lpuart32_stop_tx, ptr @lpuart32_start_tx, ptr null, ptr null, ptr null, ptr @lpuart32_stop_rx, ptr null, ptr @lpuart32_break_ctl, ptr @lpuart32_startup, ptr @lpuart32_shutdown, ptr @lpuart_flush_buffer, ptr @lpuart32_set_termios, ptr null, ptr null, ptr @lpuart_type, ptr @lpuart_release_port, ptr @lpuart_request_port, ptr @lpuart_config_port, ptr @lpuart_verify_port, ptr null, ptr @lpuart32_poll_init, ptr @lpuart32_poll_put_char, ptr @lpuart32_poll_get_char }, [56 x i8] zeroinitializer }, align 32
@lpuart_pops = internal constant { %struct.uart_ops, [56 x i8] } { %struct.uart_ops { ptr @lpuart_tx_empty, ptr @lpuart_set_mctrl, ptr @lpuart_get_mctrl, ptr @lpuart_stop_tx, ptr @lpuart_start_tx, ptr null, ptr null, ptr null, ptr @lpuart_stop_rx, ptr null, ptr @lpuart_break_ctl, ptr @lpuart_startup, ptr @lpuart_shutdown, ptr @lpuart_flush_buffer, ptr @lpuart_set_termios, ptr null, ptr null, ptr @lpuart_type, ptr @lpuart_release_port, ptr @lpuart_request_port, ptr @lpuart_config_port, ptr @lpuart_verify_port, ptr null, ptr @lpuart_poll_init, ptr @lpuart_poll_put_char, ptr @lpuart_poll_get_char }, [56 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"ipg\00", [28 x i8] zeroinitializer }, align 32
@lpuart_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.9, ptr @.str.2, i32 2697, ptr @.str.10, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"failed to get uart ipg clk: %d\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"lpuart_probe\00", [19 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@lpuart_probe._entry_ptr = internal global ptr @lpuart_probe._entry, section ".printk_index", align 4
@.str.11 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"baud\00", [27 x i8] zeroinitializer }, align 32
@lpuart_probe._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.9, ptr @.str.2, i32 2706, ptr @.str.10, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"failed to get uart baud clk: %d\0A\00", [63 x i8] zeroinitializer }, align 32
@lpuart_probe._entry_ptr.14 = internal global ptr @lpuart_probe._entry.12, section ".printk_index", align 4
@.str.15 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"serial\00", [25 x i8] zeroinitializer }, align 32
@lpuart_probe._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.9, ptr @.str.2, i32 2715, ptr @.str.10, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"port line is full, add device failed\0A\00", [58 x i8] zeroinitializer }, align 32
@lpuart_probe._entry_ptr.18 = internal global ptr @lpuart_probe._entry.16, section ".printk_index", align 4
@lpuart_probe._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.9, ptr @.str.2, i32 2721, ptr @.str.10, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"serial%d out of range\0A\00", [41 x i8] zeroinitializer }, align 32
@lpuart_probe._entry_ptr.21 = internal global ptr @lpuart_probe._entry.19, section ".printk_index", align 4
@lpuart_ports = internal global { [6 x ptr], [40 x i8] } zeroinitializer, align 32
@lpuart32_console = internal global { %struct.console, [60 x i8] } { %struct.console { [16 x i8] c"ttyLP\00\00\00\00\00\00\00\00\00\00\00", ptr @lpuart32_console_write, ptr null, ptr @uart_console_device, ptr null, ptr @lpuart_console_setup, ptr null, ptr null, i16 1, i16 -1, i32 0, i32 0, i32 0, ptr @lpuart_reg, ptr null }, [60 x i8] zeroinitializer }, align 32
@lpuart_console = internal global { %struct.console, [60 x i8] } { %struct.console { [16 x i8] c"ttyLP\00\00\00\00\00\00\00\00\00\00\00", ptr @lpuart_console_write, ptr null, ptr @uart_console_device, ptr null, ptr @lpuart_console_setup, ptr null, ptr null, i16 1, i16 -1, i32 0, i32 0, i32 0, ptr @lpuart_reg, ptr null }, [60 x i8] zeroinitializer }, align 32
@lpuart_probe._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.9, ptr @.str.2, i32 2762, ptr @.str.10, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"driver doesn't support RX during TX\0A\00", [59 x i8] zeroinitializer }, align 32
@lpuart_probe._entry_ptr.24 = internal global ptr @lpuart_probe._entry.22, section ".printk_index", align 4
@lpuart_probe._entry.25 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.9, ptr @.str.2, i32 2766, ptr @.str.10, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"driver doesn't support RTS delays\0A\00", [61 x i8] zeroinitializer }, align 32
@lpuart_probe._entry_ptr.27 = internal global ptr @lpuart_probe._entry.25, section ".printk_index", align 4
@lpuart_dma_tx._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.29, ptr @.str.2, i32 496, ptr @.str.10, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"DMA mapping error for TX.\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"lpuart_dma_tx\00", [18 x i8] zeroinitializer }, align 32
@lpuart_dma_tx._entry_ptr = internal global ptr @lpuart_dma_tx._entry, section ".printk_index", align 4
@lpuart_dma_tx._entry.30 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.29, ptr @.str.2, i32 506, ptr @.str.10, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Cannot prepare TX slave DMA!\0A\00", [34 x i8] zeroinitializer }, align 32
@lpuart_dma_tx._entry_ptr.32 = internal global ptr @lpuart_dma_tx._entry.30, section ".printk_index", align 4
@high_memory = external dso_local local_unnamed_addr global ptr, align 4
@__pv_phys_pfn_offset = external dso_local local_unnamed_addr global i32, align 4
@mem_map = external dso_local local_unnamed_addr global ptr, align 4
@.str.33 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"tx\00", [29 x i8] zeroinitializer }, align 32
@lpuart_request_dma.__print_once = internal unnamed_addr global i1 false, section ".data..read_mostly", align 1
@lpuart_request_dma.__UNIQUE_ID_ddebug236 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.34, ptr @.str.35, ptr @.str.2, ptr @.str.36, i8 1, i8 -106, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.34 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"fsl_lpuart\00", [21 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"lpuart_request_dma\00", [45 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"DMA tx channel request failed, operating without tx DMA (%ld)\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"rx\00", [29 x i8] zeroinitializer }, align 32
@lpuart_request_dma.__print_once.38 = internal unnamed_addr global i1 false, section ".data..read_mostly", align 1
@lpuart_request_dma.__UNIQUE_ID_ddebug237 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.34, ptr @.str.35, ptr @.str.2, ptr @.str.39, i8 1, i8 -104, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.39 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"DMA rx channel request failed, operating without rx DMA (%ld)\0A\00", [33 x i8] zeroinitializer }, align 32
@lpuart_start_rx_dma._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.41, ptr @.str.2, i32 1296, ptr @.str.10, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"DMA Rx mapping error\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"lpuart_start_rx_dma\00", [44 x i8] zeroinitializer }, align 32
@lpuart_start_rx_dma._entry_ptr = internal global ptr @lpuart_start_rx_dma._entry, section ".printk_index", align 4
@lpuart_start_rx_dma._entry.42 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.41, ptr @.str.2, i32 1308, ptr @.str.10, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"DMA Rx slave config failed, err = %d\0A\00", [58 x i8] zeroinitializer }, align 32
@lpuart_start_rx_dma._entry_ptr.44 = internal global ptr @lpuart_start_rx_dma._entry.42, section ".printk_index", align 4
@lpuart_start_rx_dma._entry.45 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.46, ptr @.str.41, ptr @.str.2, i32 1319, ptr @.str.10, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Cannot prepare cyclic DMA\0A\00", [37 x i8] zeroinitializer }, align 32
@lpuart_start_rx_dma._entry_ptr.47 = internal global ptr @lpuart_start_rx_dma._entry.45, section ".printk_index", align 4
@lpuart_copy_rx_to_tty._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.48, ptr @.str.49, ptr @.str.2, i32 1179, ptr @.str.10, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Rx DMA transfer failed!\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"lpuart_copy_rx_to_tty\00", [42 x i8] zeroinitializer }, align 32
@lpuart_copy_rx_to_tty._entry_ptr = internal global ptr @lpuart_copy_rx_to_tty._entry, section ".printk_index", align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@rx_dma_timer_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.50 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"(&sport->lpuart_timer)\00", [41 x i8] zeroinitializer }, align 32
@lpuart_tx_dma_startup.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.51 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"&sport->dma_wait\00", [47 x i8] zeroinitializer }, align 32
@lpuart_dma_tx_request._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.52, ptr @.str.53, ptr @.str.2, i32 587, ptr @.str.10, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"DMA slave config failed, err = %d\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"lpuart_dma_tx_request\00", [42 x i8] zeroinitializer }, align 32
@lpuart_dma_tx_request._entry_ptr = internal global ptr @lpuart_dma_tx_request._entry, section ".printk_index", align 4
@.str.54 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"FSL_LPUART\00", [21 x i8] zeroinitializer }, align 32
@oops_in_progress = external dso_local local_unnamed_addr global i32, align 4
@lpuart32_console_get_options._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.55, ptr @.str.56, ptr @.str.2, i32 2498, ptr @.str.57, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"Serial: Console lpuart rounded baud ratefrom %d to %d\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"lpuart32_console_get_options\00", [35 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@lpuart32_console_get_options._entry_ptr = internal global ptr @lpuart32_console_get_options._entry, section ".printk_index", align 4
@lpuart_console_get_options._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.55, ptr @.str.58, ptr @.str.2, i32 2452, ptr @.str.57, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"lpuart_console_get_options\00", [37 x i8] zeroinitializer }, align 32
@lpuart_console_get_options._entry_ptr = internal global ptr @lpuart_console_get_options._entry, section ".printk_index", align 4
@lpuart_global_reset._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.59, ptr @.str.60, ptr @.str.2, i32 419, ptr @.str.10, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"failed to enable uart ipg clk: %d\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"lpuart_global_reset\00", [44 x i8] zeroinitializer }, align 32
@lpuart_global_reset._entry_ptr = internal global ptr @lpuart_global_reset._entry, section ".printk_index", align 4
@vf_data = internal constant { %struct.lpuart_soc_data, [24 x i8] } { %struct.lpuart_soc_data { i32 0, i8 2, i8 0 }, [24 x i8] zeroinitializer }, align 32
@ls1021a_data = internal constant { %struct.lpuart_soc_data, [24 x i8] } { %struct.lpuart_soc_data { i32 1, i8 6, i8 0 }, [24 x i8] zeroinitializer }, align 32
@ls1028a_data = internal constant { %struct.lpuart_soc_data, [24 x i8] } { %struct.lpuart_soc_data { i32 2, i8 3, i8 0 }, [24 x i8] zeroinitializer }, align 32
@imx7ulp_data = internal global { %struct.lpuart_soc_data, [24 x i8] } { %struct.lpuart_soc_data { i32 3, i8 3, i8 16 }, [24 x i8] zeroinitializer }, align 32
@imx8qxp_data = internal global { %struct.lpuart_soc_data, [24 x i8] } { %struct.lpuart_soc_data { i32 4, i8 3, i8 16 }, [24 x i8] zeroinitializer }, align 32
@imxrt1050_data = internal global { %struct.lpuart_soc_data, [24 x i8] } { %struct.lpuart_soc_data { i32 5, i8 3, i8 16 }, [24 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"ttyLP\00", [26 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 8, i64 3, i64 6]
@__sancov_gen_cov_switch_values.62 = internal global [4 x i64] [i64 2, i64 8, i64 3, i64 6]
@__sancov_gen_cov_switch_values.63 = internal global [4 x i64] [i64 2, i64 8, i64 3, i64 6]
@__sancov_gen_cov_switch_values.64 = internal global [4 x i64] [i64 2, i64 8, i64 3, i64 6]
@__sancov_gen_cov_switch_values.65 = internal global [4 x i64] [i64 2, i64 8, i64 3, i64 6]
@__sancov_gen_cov_switch_values.66 = internal global [4 x i64] [i64 2, i64 8, i64 3, i64 6]
@__sancov_gen_cov_switch_values.67 = internal global [4 x i64] [i64 2, i64 8, i64 3, i64 6]
@__sancov_gen_cov_switch_values.68 = internal global [4 x i64] [i64 2, i64 8, i64 3, i64 6]
@__sancov_gen_cov_switch_values.69 = internal global [4 x i64] [i64 2, i64 8, i64 3, i64 6]
@__sancov_gen_cov_switch_values.70 = internal global [4 x i64] [i64 2, i64 8, i64 3, i64 6]
@__sancov_gen_cov_switch_values.71 = internal global [4 x i64] [i64 2, i64 8, i64 3, i64 6]
@__sancov_gen_cov_switch_values.72 = internal global [4 x i64] [i64 2, i64 8, i64 3, i64 6]
@__sancov_gen_cov_switch_values.73 = internal global [4 x i64] [i64 2, i64 8, i64 3, i64 6]
@__sancov_gen_cov_switch_values.74 = internal global [4 x i64] [i64 2, i64 8, i64 3, i64 6]
@__sancov_gen_cov_switch_values.75 = internal global [4 x i64] [i64 2, i64 8, i64 3, i64 6]
@__sancov_gen_cov_switch_values.76 = internal global [4 x i64] [i64 2, i64 8, i64 3, i64 6]
@__sancov_gen_cov_switch_values.77 = internal global [4 x i64] [i64 2, i64 8, i64 3, i64 6]
@__sancov_gen_cov_switch_values.78 = internal global [4 x i64] [i64 2, i64 8, i64 3, i64 6]
@__sancov_gen_cov_switch_values.79 = internal global [4 x i64] [i64 2, i64 8, i64 3, i64 6]
@__sancov_gen_cov_switch_values.80 = internal global [4 x i64] [i64 2, i64 8, i64 3, i64 6]
@__sancov_gen_cov_switch_values.81 = internal global [4 x i64] [i64 2, i64 8, i64 3, i64 6]
@__sancov_gen_cov_switch_values.82 = internal global [4 x i64] [i64 2, i64 8, i64 3, i64 6]
@__sancov_gen_cov_switch_values.83 = internal global [4 x i64] [i64 2, i64 8, i64 3, i64 6]
@__sancov_gen_cov_switch_values.84 = internal global [4 x i64] [i64 2, i64 8, i64 3, i64 6]
@__sancov_gen_cov_switch_values.85 = internal global [4 x i64] [i64 2, i64 8, i64 3, i64 6]
@__sancov_gen_cov_switch_values.86 = internal global [4 x i64] [i64 2, i64 8, i64 3, i64 6]
@__sancov_gen_cov_switch_values.87 = internal global [4 x i64] [i64 2, i64 8, i64 3, i64 6]
@__sancov_gen_cov_switch_values.88 = internal global [4 x i64] [i64 2, i64 8, i64 3, i64 6]
@__sancov_gen_cov_switch_values.89 = internal global [4 x i64] [i64 2, i64 8, i64 3, i64 6]
@__sancov_gen_cov_switch_values.90 = internal global [4 x i64] [i64 2, i64 8, i64 3, i64 6]
@__sancov_gen_cov_switch_values.91 = internal global [4 x i64] [i64 2, i64 8, i64 3, i64 6]
@__sancov_gen_cov_switch_values.92 = internal global [4 x i64] [i64 2, i64 8, i64 3, i64 6]
@__sancov_gen_cov_switch_values.93 = internal global [4 x i64] [i64 2, i64 8, i64 3, i64 6]
@__sancov_gen_cov_switch_values.94 = internal global [4 x i64] [i64 2, i64 8, i64 3, i64 6]
@__sancov_gen_cov_switch_values.95 = internal global [4 x i64] [i64 2, i64 8, i64 3, i64 6]
@__sancov_gen_cov_switch_values.96 = internal global [4 x i64] [i64 2, i64 8, i64 3, i64 6]
@__sancov_gen_cov_switch_values.97 = internal global [4 x i64] [i64 2, i64 8, i64 3, i64 6]
@__sancov_gen_cov_switch_values.98 = internal global [4 x i64] [i64 2, i64 8, i64 3, i64 6]
@__sancov_gen_cov_switch_values.99 = internal global [4 x i64] [i64 2, i64 8, i64 3, i64 6]
@__sancov_gen_cov_switch_values.100 = internal global [4 x i64] [i64 2, i64 32, i64 32, i64 48]
@__sancov_gen_cov_switch_values.101 = internal global [4 x i64] [i64 2, i64 8, i64 3, i64 6]
@__sancov_gen_cov_switch_values.102 = internal global [4 x i64] [i64 2, i64 8, i64 3, i64 6]
@__sancov_gen_cov_switch_values.103 = internal global [4 x i64] [i64 2, i64 8, i64 3, i64 6]
@__sancov_gen_cov_switch_values.104 = internal global [4 x i64] [i64 2, i64 8, i64 3, i64 6]
@__sancov_gen_cov_switch_values.105 = internal global [4 x i64] [i64 2, i64 8, i64 3, i64 6]
@__sancov_gen_cov_switch_values.106 = internal global [4 x i64] [i64 2, i64 8, i64 3, i64 6]
@__sancov_gen_cov_switch_values.107 = internal global [4 x i64] [i64 2, i64 8, i64 3, i64 6]
@__sancov_gen_cov_switch_values.108 = internal global [4 x i64] [i64 2, i64 8, i64 3, i64 6]
@__sancov_gen_cov_switch_values.109 = internal global [4 x i64] [i64 2, i64 8, i64 3, i64 6]
@__sancov_gen_cov_switch_values.110 = internal global [4 x i64] [i64 2, i64 8, i64 3, i64 6]
@__sancov_gen_cov_switch_values.111 = internal global [4 x i64] [i64 2, i64 8, i64 3, i64 6]
@__sancov_gen_cov_switch_values.112 = internal global [4 x i64] [i64 2, i64 8, i64 3, i64 6]
@__sancov_gen_cov_switch_values.113 = internal global [4 x i64] [i64 2, i64 8, i64 3, i64 6]
@__sancov_gen_cov_switch_values.114 = internal global [4 x i64] [i64 2, i64 8, i64 3, i64 6]
@__sancov_gen_cov_switch_values.115 = internal global [4 x i64] [i64 2, i64 8, i64 3, i64 6]
@__sancov_gen_cov_switch_values.116 = internal global [4 x i64] [i64 2, i64 8, i64 3, i64 6]
@__sancov_gen_cov_switch_values.117 = internal global [4 x i64] [i64 2, i64 8, i64 3, i64 6]
@__sancov_gen_cov_switch_values.118 = internal global [4 x i64] [i64 2, i64 8, i64 3, i64 6]
@__sancov_gen_cov_switch_values.119 = internal global [4 x i64] [i64 2, i64 8, i64 3, i64 6]
@__sancov_gen_cov_switch_values.120 = internal global [4 x i64] [i64 2, i64 8, i64 3, i64 6]
@__sancov_gen_cov_switch_values.121 = internal global [4 x i64] [i64 2, i64 8, i64 3, i64 6]
@__sancov_gen_cov_switch_values.122 = internal global [4 x i64] [i64 2, i64 8, i64 3, i64 6]
@__sancov_gen_cov_switch_values.123 = internal global [4 x i64] [i64 2, i64 8, i64 3, i64 6]
@__sancov_gen_cov_switch_values.124 = internal global [4 x i64] [i64 2, i64 8, i64 3, i64 6]
@__sancov_gen_cov_switch_values.125 = internal global [4 x i64] [i64 2, i64 8, i64 3, i64 6]
@__sancov_gen_cov_switch_values.126 = internal global [4 x i64] [i64 2, i64 8, i64 3, i64 6]
@__sancov_gen_cov_switch_values.127 = internal global [4 x i64] [i64 2, i64 8, i64 3, i64 6]
@__sancov_gen_cov_switch_values.128 = internal global [4 x i64] [i64 2, i64 8, i64 3, i64 6]
@__sancov_gen_cov_switch_values.129 = internal global [4 x i64] [i64 2, i64 8, i64 3, i64 6]
@__sancov_gen_cov_switch_values.130 = internal global [4 x i64] [i64 2, i64 8, i64 3, i64 6]
@__sancov_gen_cov_switch_values.131 = internal global [4 x i64] [i64 2, i64 8, i64 3, i64 6]
@__sancov_gen_cov_switch_values.132 = internal global [4 x i64] [i64 2, i64 8, i64 3, i64 6]
@__sancov_gen_cov_switch_values.133 = internal global [4 x i64] [i64 2, i64 8, i64 3, i64 6]
@__sancov_gen_cov_switch_values.134 = internal global [4 x i64] [i64 2, i64 8, i64 3, i64 6]
@__sancov_gen_cov_switch_values.135 = internal global [4 x i64] [i64 2, i64 8, i64 3, i64 6]
@__sancov_gen_cov_switch_values.136 = internal global [4 x i64] [i64 2, i64 8, i64 3, i64 6]
@__sancov_gen_cov_switch_values.137 = internal global [4 x i64] [i64 2, i64 8, i64 3, i64 6]
@__sancov_gen_cov_switch_values.138 = internal global [4 x i64] [i64 2, i64 8, i64 3, i64 6]
@__sancov_gen_cov_switch_values.139 = internal global [4 x i64] [i64 2, i64 8, i64 3, i64 6]
@__sancov_gen_cov_switch_values.140 = internal global [4 x i64] [i64 2, i64 8, i64 3, i64 6]
@__sancov_gen_cov_switch_values.141 = internal global [4 x i64] [i64 2, i64 8, i64 3, i64 6]
@__sancov_gen_cov_switch_values.142 = internal global [4 x i64] [i64 2, i64 8, i64 3, i64 6]
@__sancov_gen_cov_switch_values.143 = internal global [4 x i64] [i64 2, i64 8, i64 3, i64 6]
@__sancov_gen_cov_switch_values.144 = internal global [4 x i64] [i64 2, i64 8, i64 3, i64 6]
@__sancov_gen_cov_switch_values.145 = internal global [4 x i64] [i64 2, i64 32, i64 32, i64 48]
@__sancov_gen_cov_switch_values.146 = internal global [4 x i64] [i64 2, i64 8, i64 3, i64 6]
@__sancov_gen_cov_switch_values.147 = internal global [4 x i64] [i64 2, i64 8, i64 3, i64 6]
@__sancov_gen_cov_switch_values.148 = internal global [4 x i64] [i64 2, i64 8, i64 3, i64 6]
@__sancov_gen_cov_switch_values.149 = internal global [4 x i64] [i64 2, i64 8, i64 3, i64 6]
@__sancov_gen_cov_switch_values.150 = internal global [4 x i64] [i64 2, i64 8, i64 3, i64 6]
@__sancov_gen_cov_switch_values.151 = internal global [4 x i64] [i64 2, i64 8, i64 3, i64 6]
@__sancov_gen_cov_switch_values.152 = internal global [4 x i64] [i64 2, i64 8, i64 3, i64 6]
@__sancov_gen_cov_switch_values.153 = internal global [4 x i64] [i64 2, i64 8, i64 3, i64 6]
@__sancov_gen_cov_switch_values.154 = internal global [4 x i64] [i64 2, i64 8, i64 3, i64 6]
@__sancov_gen_cov_switch_values.155 = internal global [4 x i64] [i64 2, i64 8, i64 3, i64 6]
@__sancov_gen_cov_switch_values.156 = internal global [4 x i64] [i64 2, i64 8, i64 3, i64 6]
@__sancov_gen_cov_switch_values.157 = internal global [4 x i64] [i64 2, i64 8, i64 3, i64 6]
@__sancov_gen_cov_switch_values.158 = internal global [4 x i64] [i64 2, i64 8, i64 3, i64 6]
@__sancov_gen_cov_switch_values.159 = internal global [4 x i64] [i64 2, i64 8, i64 3, i64 6]
@__sancov_gen_cov_switch_values.160 = internal global [4 x i64] [i64 2, i64 8, i64 3, i64 6]
@___asan_gen_.161 = private unnamed_addr constant [15 x i8] c"fsl_lpuart_ida\00", align 1
@___asan_gen_.164 = private unnamed_addr constant [14 x i8] c"lpuart_driver\00", align 1
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.396, i32 2897, i32 31 }
@___asan_gen_.167 = private unnamed_addr constant [11 x i8] c"lpuart_reg\00", align 1
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.396, i32 2647, i32 27 }
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.396, i32 2064, i32 3 }
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.396, i32 242, i32 8 }
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.396, i32 2901, i32 11 }
@___asan_gen_.191 = private unnamed_addr constant [14 x i8] c"lpuart_dt_ids\00", align 1
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.396, i32 320, i32 34 }
@___asan_gen_.194 = private unnamed_addr constant [14 x i8] c"lpuart_pm_ops\00", align 1
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.396, i32 2895, i32 8 }
@___asan_gen_.197 = private unnamed_addr constant [14 x i8] c"lpuart32_pops\00", align 1
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.396, i32 2303, i32 30 }
@___asan_gen_.200 = private unnamed_addr constant [12 x i8] c"lpuart_pops\00", align 1
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.396, i32 2279, i32 30 }
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.396, i32 2694, i32 44 }
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.396, i32 2697, i32 3 }
@___asan_gen_.220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.396, i32 2703, i32 46 }
@___asan_gen_.226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.396, i32 2706, i32 4 }
@___asan_gen_.229 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.396, i32 2711, i32 28 }
@___asan_gen_.235 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.396, i32 2715, i32 4 }
@___asan_gen_.241 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.396, i32 2721, i32 3 }
@___asan_gen_.242 = private unnamed_addr constant [13 x i8] c"lpuart_ports\00", align 1
@___asan_gen_.244 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.396, i32 2327, i32 28 }
@___asan_gen_.245 = private unnamed_addr constant [17 x i8] c"lpuart32_console\00", align 1
@___asan_gen_.247 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.396, i32 2548, i32 23 }
@___asan_gen_.248 = private unnamed_addr constant [15 x i8] c"lpuart_console\00", align 1
@___asan_gen_.250 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.396, i32 2538, i32 23 }
@___asan_gen_.256 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.396, i32 2762, i32 3 }
@___asan_gen_.262 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.396, i32 2766, i32 3 }
@___asan_gen_.271 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.396, i32 496, i32 3 }
@___asan_gen_.277 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.396, i32 506, i32 3 }
@___asan_gen_.280 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.396, i32 1621, i32 57 }
@___asan_gen_.289 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.396, i32 1623, i32 3 }
@___asan_gen_.292 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.396, i32 1629, i32 57 }
@___asan_gen_.295 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.396, i32 1631, i32 3 }
@___asan_gen_.304 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.396, i32 1296, i32 3 }
@___asan_gen_.310 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.396, i32 1307, i32 3 }
@___asan_gen_.316 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.396, i32 1319, i32 3 }
@___asan_gen_.325 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.396, i32 1179, i32 3 }
@___asan_gen_.331 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.396, i32 1614, i32 2 }
@___asan_gen_.332 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.337 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.396, i32 1653, i32 2 }
@___asan_gen_.346 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.396, i32 586, i32 3 }
@___asan_gen_.349 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.396, i32 2240, i32 9 }
@___asan_gen_.361 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.396, i32 2497, i32 3 }
@___asan_gen_.367 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.396, i32 2451, i32 3 }
@___asan_gen_.368 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.376 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.396, i32 419, i32 3 }
@___asan_gen_.377 = private unnamed_addr constant [8 x i8] c"vf_data\00", align 1
@___asan_gen_.379 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.396, i32 288, i32 37 }
@___asan_gen_.380 = private unnamed_addr constant [13 x i8] c"ls1021a_data\00", align 1
@___asan_gen_.382 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.396, i32 293, i32 37 }
@___asan_gen_.383 = private unnamed_addr constant [13 x i8] c"ls1028a_data\00", align 1
@___asan_gen_.385 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.396, i32 298, i32 37 }
@___asan_gen_.386 = private unnamed_addr constant [13 x i8] c"imx7ulp_data\00", align 1
@___asan_gen_.388 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.396, i32 303, i32 31 }
@___asan_gen_.389 = private unnamed_addr constant [13 x i8] c"imx8qxp_data\00", align 1
@___asan_gen_.391 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.396, i32 309, i32 31 }
@___asan_gen_.392 = private unnamed_addr constant [15 x i8] c"imxrt1050_data\00", align 1
@___asan_gen_.394 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.396, i32 314, i32 31 }
@___asan_gen_.395 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.396 = private constant [35 x i8] c"../drivers/tty/serial/fsl_lpuart.c\00", align 1
@___asan_gen_.397 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.396, i32 2650, i32 14 }
@llvm.compiler.used = appending global [111 x ptr] [ptr @__UNIQUE_ID___earlycon_lpuart238, ptr @__UNIQUE_ID___earlycon_lpuart244, ptr @__UNIQUE_ID___earlycon_lpuart32239, ptr @__UNIQUE_ID___earlycon_lpuart32240, ptr @__UNIQUE_ID___earlycon_lpuart32241, ptr @__UNIQUE_ID___earlycon_lpuart32242, ptr @__UNIQUE_ID___earlycon_lpuart32243, ptr @__UNIQUE_ID___earlycon_lpuart32245, ptr @__UNIQUE_ID_description247, ptr @__UNIQUE_ID_file248, ptr @__UNIQUE_ID_license249, ptr @__exitcall_lpuart_serial_exit, ptr @__initcall__kmod_fsl_lpuart__246_2928_lpuart_serial_init6, ptr @__lpuart32_serial_setbrg._entry, ptr @__lpuart32_serial_setbrg._entry_ptr, ptr @lpuart32_console_get_options._entry, ptr @lpuart32_console_get_options._entry_ptr, ptr @lpuart_console_get_options._entry, ptr @lpuart_console_get_options._entry_ptr, ptr @lpuart_copy_rx_to_tty._entry, ptr @lpuart_copy_rx_to_tty._entry_ptr, ptr @lpuart_dma_tx._entry, ptr @lpuart_dma_tx._entry.30, ptr @lpuart_dma_tx._entry_ptr, ptr @lpuart_dma_tx._entry_ptr.32, ptr @lpuart_dma_tx_request._entry, ptr @lpuart_dma_tx_request._entry_ptr, ptr @lpuart_global_reset._entry, ptr @lpuart_global_reset._entry_ptr, ptr @lpuart_probe._entry, ptr @lpuart_probe._entry.12, ptr @lpuart_probe._entry.16, ptr @lpuart_probe._entry.19, ptr @lpuart_probe._entry.22, ptr @lpuart_probe._entry.25, ptr @lpuart_probe._entry_ptr, ptr @lpuart_probe._entry_ptr.14, ptr @lpuart_probe._entry_ptr.18, ptr @lpuart_probe._entry_ptr.21, ptr @lpuart_probe._entry_ptr.24, ptr @lpuart_probe._entry_ptr.27, ptr @lpuart_serial_exit, ptr @lpuart_start_rx_dma._entry, ptr @lpuart_start_rx_dma._entry.42, ptr @lpuart_start_rx_dma._entry.45, ptr @lpuart_start_rx_dma._entry_ptr, ptr @lpuart_start_rx_dma._entry_ptr.44, ptr @lpuart_start_rx_dma._entry_ptr.47, ptr @fsl_lpuart_ida, ptr @lpuart_driver, ptr @lpuart_reg, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @lpuart_dt_ids, ptr @lpuart_pm_ops, ptr @lpuart32_pops, ptr @lpuart_pops, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.13, ptr @.str.15, ptr @.str.17, ptr @.str.20, ptr @lpuart_ports, ptr @lpuart32_console, ptr @lpuart_console, ptr @.str.23, ptr @.str.26, ptr @.str.28, ptr @.str.29, ptr @.str.31, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.43, ptr @.str.46, ptr @.str.48, ptr @.str.49, ptr @rx_dma_timer_init.__key, ptr @.str.50, ptr @lpuart_tx_dma_startup.__key, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @vf_data, ptr @ls1021a_data, ptr @ls1028a_data, ptr @imx7ulp_data, ptr @imx8qxp_data, ptr @imxrt1050_data, ptr @.str.61], section "llvm.metadata"
@0 = internal global [79 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsl_lpuart_ida to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpuart_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpuart_reg to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpuart_dt_ids to i32), i32 1372, i32 1696, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpuart_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpuart32_pops to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpuart_pops to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpuart_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpuart_probe._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpuart_probe._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpuart_probe._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpuart_ports to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpuart32_console to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpuart_console to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpuart_probe._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpuart_probe._entry.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpuart_dma_tx._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpuart_dma_tx._entry.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpuart_start_rx_dma._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpuart_start_rx_dma._entry.42 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpuart_start_rx_dma._entry.45 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpuart_copy_rx_to_tty._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rx_dma_timer_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpuart_tx_dma_startup.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpuart_dma_tx_request._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpuart32_console_get_options._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpuart_console_get_options._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpuart_global_reset._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vf_data to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ls1021a_data to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ls1028a_data to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx7ulp_data to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx8qxp_data to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imxrt1050_data to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind null_pointer_is_valid optsize sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @lpuart_early_console_setup(ptr nocapture noundef readonly %device, ptr nocapture noundef readnone %opt) #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %membase = getelementptr inbounds %struct.earlycon_device, ptr %device, i32 0, i32 1, i32 2
  %0 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %membase, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %2 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %device, align 4
  %write = getelementptr inbounds %struct.console, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %write to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @lpuart_early_write, ptr %write, align 4
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -19, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind null_pointer_is_valid optsize sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @lpuart32_early_console_setup(ptr nocapture noundef %device, ptr nocapture noundef readnone %opt) #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %membase = getelementptr inbounds %struct.earlycon_device, ptr %device, i32 0, i32 1, i32 2
  %0 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %membase, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

if.end:                                           ; preds = %entry
  %iotype = getelementptr inbounds %struct.earlycon_device, ptr %device, i32 0, i32 1, i32 26
  %2 = ptrtoint ptr %iotype to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %iotype, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %3)
  %cmp.not = icmp eq i8 %3, 3
  br i1 %cmp.not, label %if.end.if.end6_crit_edge, label %if.then3

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end6

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %4 = ptrtoint ptr %iotype to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 6, ptr %iotype, align 2
  br label %if.end6

if.end6:                                          ; preds = %if.then3, %if.end.if.end6_crit_edge
  %5 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %device, align 4
  %write = getelementptr inbounds %struct.console, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %write to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @lpuart32_early_write, ptr %write, align 4
  br label %return

return:                                           ; preds = %if.end6, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %if.end6 ], [ -19, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @ls1028a_early_console_setup(ptr nocapture noundef %device, ptr nocapture noundef readnone %opt) #1 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %port = getelementptr inbounds %struct.earlycon_device, ptr %device, i32 0, i32 1
  %membase = getelementptr inbounds %struct.earlycon_device, ptr %device, i32 0, i32 1, i32 2
  %0 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %membase, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %iotype = getelementptr inbounds %struct.earlycon_device, ptr %device, i32 0, i32 1, i32 26
  %2 = ptrtoint ptr %iotype to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 3, ptr %iotype, align 2
  %3 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %device, align 4
  %write = getelementptr inbounds %struct.console, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %write to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @lpuart32_early_write, ptr %write, align 4
  %uartclk = getelementptr inbounds %struct.earlycon_device, ptr %device, i32 0, i32 1, i32 22
  %6 = ptrtoint ptr %uartclk to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %uartclk, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool3.not = icmp eq i32 %7, 0
  br i1 %tobool3.not, label %if.end.if.end8_crit_edge, label %land.lhs.true

if.end.if.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end8

land.lhs.true:                                    ; preds = %if.end
  %baud = getelementptr inbounds %struct.earlycon_device, ptr %device, i32 0, i32 3
  %8 = ptrtoint ptr %baud to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %baud, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool4.not = icmp eq i32 %9, 0
  br i1 %tobool4.not, label %land.lhs.true.if.end8_crit_edge, label %if.then5

land.lhs.true.if.end8_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end8

if.then5:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  tail call fastcc void @__lpuart32_serial_setbrg(ptr noundef %port, i32 noundef %9, i1 noundef zeroext false, i1 noundef zeroext false)
  br label %if.end8

if.end8:                                          ; preds = %if.then5, %land.lhs.true.if.end8_crit_edge, %if.end.if.end8_crit_edge
  %10 = ptrtoint ptr %iotype to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %iotype, align 2
  %12 = zext i8 %11 to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values)
  switch i8 %11, label %if.end8.lpuart32_read.exit_crit_edge [
    i8 3, label %sw.bb.i
    i8 6, label %sw.bb2.i
  ]

if.end8.lpuart32_read.exit_crit_edge:             ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #14
  br label %lpuart32_read.exit

sw.bb.i:                                          ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #14
  %13 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %membase, align 4
  %add.ptr.i = getelementptr i8, ptr %14, i32 8
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #12, !srcloc !180
  %16 = tail call i32 @llvm.bswap.i32(i32 %15) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !181
  br label %lpuart32_read.exitthread-pre-split

sw.bb2.i:                                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #14
  %17 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %membase, align 4
  %add.ptr5.i = getelementptr i8, ptr %18, i32 8
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5.i) #12, !srcloc !180
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !182
  br label %lpuart32_read.exitthread-pre-split

lpuart32_read.exitthread-pre-split:               ; preds = %sw.bb2.i, %sw.bb.i
  %retval.0.i.ph = phi i32 [ %16, %sw.bb.i ], [ %19, %sw.bb2.i ]
  %20 = ptrtoint ptr %iotype to i32
  call void @__asan_load1_noabort(i32 %20)
  %.pr = load i8, ptr %iotype, align 2
  br label %lpuart32_read.exit

lpuart32_read.exit:                               ; preds = %lpuart32_read.exitthread-pre-split, %if.end8.lpuart32_read.exit_crit_edge
  %21 = phi i8 [ %.pr, %lpuart32_read.exitthread-pre-split ], [ %11, %if.end8.lpuart32_read.exit_crit_edge ]
  %retval.0.i = phi i32 [ %retval.0.i.ph, %lpuart32_read.exitthread-pre-split ], [ 0, %if.end8.lpuart32_read.exit_crit_edge ]
  %or = or i32 %retval.0.i, 524288
  %22 = zext i8 %21 to i64
  call void @__sanitizer_cov_trace_switch(i64 %22, ptr @__sancov_gen_cov_switch_values.62)
  switch i8 %21, label %lpuart32_read.exit.cleanup_crit_edge [
    i8 3, label %do.body.i
    i8 6, label %do.body2.i
  ]

lpuart32_read.exit.cleanup_crit_edge:             ; preds = %lpuart32_read.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

do.body.i:                                        ; preds = %lpuart32_read.exit
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !183
  tail call void @arm_heavy_mb() #12
  %23 = tail call i32 @llvm.bswap.i32(i32 %or) #12
  %24 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %membase, align 4
  %add.ptr.i22 = getelementptr i8, ptr %25, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i22, i32 %23) #12, !srcloc !184
  br label %cleanup

do.body2.i:                                       ; preds = %lpuart32_read.exit
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !185
  tail call void @arm_heavy_mb() #12
  %26 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %membase, align 4
  %add.ptr5.i24 = getelementptr i8, ptr %27, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5.i24, i32 %or) #12, !srcloc !184
  br label %cleanup

cleanup:                                          ; preds = %do.body2.i, %do.body.i, %lpuart32_read.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -19, %entry.cleanup_crit_edge ], [ 0, %lpuart32_read.exit.cleanup_crit_edge ], [ 0, %do.body.i ], [ 0, %do.body2.i ]
  ret i32 %retval.0
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind null_pointer_is_valid optsize sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @lpuart32_imx_early_console_setup(ptr nocapture noundef %device, ptr nocapture noundef readnone %opt) #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %membase = getelementptr inbounds %struct.earlycon_device, ptr %device, i32 0, i32 1, i32 2
  %0 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %membase, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %iotype = getelementptr inbounds %struct.earlycon_device, ptr %device, i32 0, i32 1, i32 26
  %2 = ptrtoint ptr %iotype to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 3, ptr %iotype, align 2
  %add.ptr = getelementptr i8, ptr %1, i32 16
  %3 = ptrtoint ptr %membase to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %add.ptr, ptr %membase, align 4
  %4 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %device, align 4
  %write = getelementptr inbounds %struct.console, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %write to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @lpuart32_early_write, ptr %write, align 4
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -19, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @lpuart_serial_exit() #1 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @ida_destroy(ptr noundef nonnull @fsl_lpuart_ida) #12
  tail call void @platform_driver_unregister(ptr noundef nonnull @lpuart_driver) #12
  tail call void @uart_unregister_driver(ptr noundef nonnull @lpuart_reg) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ida_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @uart_unregister_driver(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @lpuart_serial_init() #1 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @uart_register_driver(ptr noundef nonnull @lpuart_reg) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @lpuart_driver, ptr noundef null) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %if.then3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @uart_unregister_driver(ptr noundef nonnull @lpuart_reg) #12
  br label %cleanup

cleanup:                                          ; preds = %if.then3, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ %call1, %if.then3 ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @lpuart_early_write(ptr nocapture noundef readonly %con, ptr noundef %s, i32 noundef %n) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %data = getelementptr inbounds %struct.console, ptr %con, i32 0, i32 13
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %port = getelementptr inbounds %struct.earlycon_device, ptr %1, i32 0, i32 1
  tail call void @uart_console_write(ptr noundef %port, ptr noundef %s, i32 noundef %n, ptr noundef nonnull @lpuart_console_putchar) #12
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @uart_console_write(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @lpuart_console_putchar(ptr nocapture noundef readonly %port, i32 noundef %ch) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %membase.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 2
  %0 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %membase.i, align 4
  %add.ptr2.i = getelementptr i8, ptr %1, i32 4
  %2 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr2.i) #12, !srcloc !186
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !187
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %2)
  %tobool.not4.i = icmp sgt i8 %2, -1
  br i1 %tobool.not4.i, label %entry.do.end.i_crit_edge, label %entry.lpuart_wait_bit_set.exit_crit_edge

entry.lpuart_wait_bit_set.exit_crit_edge:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %lpuart_wait_bit_set.exit

entry.do.end.i_crit_edge:                         ; preds = %entry
  br label %do.end.i

do.end.i:                                         ; preds = %do.end.i.do.end.i_crit_edge, %entry.do.end.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !188
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #12, !srcloc !189
  %3 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %membase.i, align 4
  %add.ptr.i = getelementptr i8, ptr %4, i32 4
  %5 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i) #12, !srcloc !186
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !187
  %tobool.not.i = icmp sgt i8 %5, -1
  br i1 %tobool.not.i, label %do.end.i.do.end.i_crit_edge, label %do.end.i.lpuart_wait_bit_set.exit_crit_edge

do.end.i.lpuart_wait_bit_set.exit_crit_edge:      ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %lpuart_wait_bit_set.exit

do.end.i.do.end.i_crit_edge:                      ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end.i

lpuart_wait_bit_set.exit:                         ; preds = %do.end.i.lpuart_wait_bit_set.exit_crit_edge, %entry.lpuart_wait_bit_set.exit_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !190
  tail call void @arm_heavy_mb() #12
  %conv = trunc i32 %ch to i8
  %6 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %membase.i, align 4
  %add.ptr = getelementptr i8, ptr %7, i32 7
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr, i8 %conv) #12, !srcloc !191
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @lpuart32_early_write(ptr nocapture noundef readonly %con, ptr noundef %s, i32 noundef %n) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %data = getelementptr inbounds %struct.console, ptr %con, i32 0, i32 13
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %port = getelementptr inbounds %struct.earlycon_device, ptr %1, i32 0, i32 1
  tail call void @uart_console_write(ptr noundef %port, ptr noundef %s, i32 noundef %n, ptr noundef nonnull @lpuart32_console_putchar) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @lpuart32_console_putchar(ptr nocapture noundef readonly %port, i32 noundef %ch) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %iotype.i.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 26
  %membase4.i.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 2
  br label %while.cond.i

while.cond.i:                                     ; preds = %do.end.i, %entry
  %0 = ptrtoint ptr %iotype.i.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %iotype.i.i, align 2
  %2 = zext i8 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.63)
  switch i8 %1, label %while.cond.i.do.end.i_crit_edge [
    i8 3, label %sw.bb.i.i
    i8 6, label %sw.bb2.i.i
  ]

while.cond.i.do.end.i_crit_edge:                  ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end.i

sw.bb.i.i:                                        ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #14
  %3 = ptrtoint ptr %membase4.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %membase4.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %4, i32 4
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #12, !srcloc !180
  %6 = tail call i32 @llvm.bswap.i32(i32 %5) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !181
  br label %lpuart32_read.exit.i

sw.bb2.i.i:                                       ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #14
  %7 = ptrtoint ptr %membase4.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %membase4.i.i, align 4
  %add.ptr5.i.i = getelementptr i8, ptr %8, i32 4
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5.i.i) #12, !srcloc !180
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !182
  br label %lpuart32_read.exit.i

lpuart32_read.exit.i:                             ; preds = %sw.bb2.i.i, %sw.bb.i.i
  %retval.0.i.i = phi i32 [ %9, %sw.bb2.i.i ], [ %6, %sw.bb.i.i ]
  %and.i = and i32 %retval.0.i.i, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %lpuart32_read.exit.i.do.end.i_crit_edge, label %lpuart32_wait_bit_set.exit

lpuart32_read.exit.i.do.end.i_crit_edge:          ; preds = %lpuart32_read.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end.i

do.end.i:                                         ; preds = %lpuart32_read.exit.i.do.end.i_crit_edge, %while.cond.i.do.end.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !192
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #12, !srcloc !193
  br label %while.cond.i

lpuart32_wait_bit_set.exit:                       ; preds = %lpuart32_read.exit.i
  %10 = ptrtoint ptr %iotype.i.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %iotype.i.i, align 2
  %12 = zext i8 %11 to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.64)
  switch i8 %11, label %lpuart32_wait_bit_set.exit.lpuart32_write.exit_crit_edge [
    i8 3, label %do.body.i
    i8 6, label %do.body2.i
  ]

lpuart32_wait_bit_set.exit.lpuart32_write.exit_crit_edge: ; preds = %lpuart32_wait_bit_set.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %lpuart32_write.exit

do.body.i:                                        ; preds = %lpuart32_wait_bit_set.exit
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !183
  tail call void @arm_heavy_mb() #12
  %13 = tail call i32 @llvm.bswap.i32(i32 %ch) #12
  %14 = ptrtoint ptr %membase4.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %membase4.i.i, align 4
  %add.ptr.i = getelementptr i8, ptr %15, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %13) #12, !srcloc !184
  br label %lpuart32_write.exit

do.body2.i:                                       ; preds = %lpuart32_wait_bit_set.exit
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !185
  tail call void @arm_heavy_mb() #12
  %16 = ptrtoint ptr %membase4.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %membase4.i.i, align 4
  %add.ptr5.i = getelementptr i8, ptr %17, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5.i, i32 %ch) #12, !srcloc !184
  br label %lpuart32_write.exit

lpuart32_write.exit:                              ; preds = %do.body2.i, %do.body.i, %lpuart32_wait_bit_set.exit.lpuart32_write.exit_crit_edge
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @__lpuart32_serial_setbrg(ptr nocapture noundef readonly %port, i32 noundef %baudrate, i1 noundef zeroext %use_rx_dma, i1 noundef zeroext %use_tx_dma) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %uartclk = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 22
  %0 = ptrtoint ptr %uartclk to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %uartclk, align 4
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry
  %tmp_osr.099 = phi i32 [ 4, %entry ], [ %inc20, %for.inc.for.body_crit_edge ]
  %baud_diff.098 = phi i32 [ %baudrate, %entry ], [ %baud_diff.1, %for.inc.for.body_crit_edge ]
  %osr.097 = phi i32 [ 0, %entry ], [ %osr.1, %for.inc.for.body_crit_edge ]
  %sbr.096 = phi i32 [ 0, %entry ], [ %sbr.1, %for.inc.for.body_crit_edge ]
  %mul = mul i32 %tmp_osr.099, %baudrate
  %div = udiv i32 %1, %mul
  call void @__sanitizer_cov_trace_cmp4(i32 %mul, i32 %1)
  %cmp2 = icmp ugt i32 %mul, %1
  %spec.store.select = select i1 %cmp2, i32 1, i32 %div
  %mul3 = mul i32 %spec.store.select, %tmp_osr.099
  %div4 = udiv i32 %1, %mul3
  %sub = sub i32 %div4, %baudrate
  %add = add i32 %spec.store.select, 1
  %mul5 = mul i32 %add, %tmp_osr.099
  %div6 = udiv i32 %1, %mul5
  %sub7 = sub i32 %baudrate, %div6
  call void @__sanitizer_cov_trace_cmp4(i32 %sub, i32 %sub7)
  %cmp8 = icmp ugt i32 %sub, %sub7
  %spec.select = select i1 %cmp8, i32 %add, i32 %spec.store.select
  %2 = tail call i32 @llvm.umin.i32(i32 %sub, i32 %sub7)
  call void @__sanitizer_cov_trace_const_cmp4(i32 8191, i32 %spec.select)
  %cmp12 = icmp ugt i32 %spec.select, 8191
  call void @__sanitizer_cov_trace_cmp4(i32 %2, i32 %baud_diff.098)
  %cmp15.not = icmp ugt i32 %2, %baud_diff.098
  %or.cond = select i1 %cmp12, i1 true, i1 %cmp15.not
  br i1 %or.cond, label %for.body.for.inc_crit_edge, label %if.then16

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

if.then16:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %if.then16.if.end25_crit_edge, label %if.then16.for.inc_crit_edge

if.then16.for.inc_crit_edge:                      ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

if.then16.if.end25_crit_edge:                     ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end25

for.inc:                                          ; preds = %if.then16.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %sbr.1 = phi i32 [ %sbr.096, %for.body.for.inc_crit_edge ], [ %spec.select, %if.then16.for.inc_crit_edge ]
  %osr.1 = phi i32 [ %osr.097, %for.body.for.inc_crit_edge ], [ %tmp_osr.099, %if.then16.for.inc_crit_edge ]
  %baud_diff.1 = phi i32 [ %baud_diff.098, %for.body.for.inc_crit_edge ], [ %2, %if.then16.for.inc_crit_edge ]
  %inc20 = add nuw nsw i32 %tmp_osr.099, 1
  %exitcond.not = icmp eq i32 %inc20, 33
  br i1 %exitcond.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.end:                                          ; preds = %for.inc
  %div21 = udiv i32 %baudrate, 100
  %mul22 = mul nuw nsw i32 %div21, 3
  call void @__sanitizer_cov_trace_cmp4(i32 %baud_diff.1, i32 %mul22)
  %cmp23 = icmp ugt i32 %baud_diff.1, %mul22
  br i1 %cmp23, label %do.end, label %for.end.if.end25_crit_edge

for.end.if.end25_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end25

do.end:                                           ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  %dev = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 45
  %3 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %4, ptr noundef nonnull @.str) #15
  br label %if.end25

if.end25:                                         ; preds = %do.end, %for.end.if.end25_crit_edge, %if.then16.if.end25_crit_edge
  %osr.291 = phi i32 [ %osr.1, %do.end ], [ %osr.1, %for.end.if.end25_crit_edge ], [ %tmp_osr.099, %if.then16.if.end25_crit_edge ]
  %sbr.290 = phi i32 [ %sbr.1, %do.end ], [ %sbr.1, %for.end.if.end25_crit_edge ], [ %spec.select, %if.then16.if.end25_crit_edge ]
  %iotype.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 26
  %5 = ptrtoint ptr %iotype.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %iotype.i, align 2
  %7 = zext i8 %6 to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.65)
  switch i8 %6, label %if.end25.lpuart32_read.exit_crit_edge [
    i8 3, label %sw.bb.i
    i8 6, label %sw.bb2.i
  ]

if.end25.lpuart32_read.exit_crit_edge:            ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #14
  br label %lpuart32_read.exit

sw.bb.i:                                          ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #14
  %membase.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 2
  %8 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %membase.i, align 4
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %9) #12, !srcloc !180
  %11 = tail call i32 @llvm.bswap.i32(i32 %10) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !181
  br label %lpuart32_read.exit

sw.bb2.i:                                         ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #14
  %membase4.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 2
  %12 = ptrtoint ptr %membase4.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %membase4.i, align 4
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %13) #12, !srcloc !180
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !182
  br label %lpuart32_read.exit

lpuart32_read.exit:                               ; preds = %sw.bb2.i, %sw.bb.i, %if.end25.lpuart32_read.exit_crit_edge
  %retval.0.i = phi i32 [ %14, %sw.bb2.i ], [ %11, %sw.bb.i ], [ 0, %if.end25.lpuart32_read.exit_crit_edge ]
  %15 = and i32 %osr.291, -4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %15)
  %16 = icmp eq i32 %15, 4
  %or = or i32 %retval.0.i, 131072
  %tmp.0 = select i1 %16, i32 %or, i32 %retval.0.i
  %and = and i32 %tmp.0, -520101888
  %sub30 = shl i32 %osr.291, 24
  %and31 = add i32 %sub30, 520093696
  %shl = and i32 %and31, 520093696
  %and34 = and i32 %sbr.290, 8191
  %or32 = or i32 %shl, %and34
  %or35 = or i32 %or32, %and
  %and38 = and i32 %or35, -2097153
  %tmp.1 = select i1 %use_rx_dma, i32 %or35, i32 %and38
  %and42 = and i32 %tmp.1, -8388609
  %tmp.2 = select i1 %use_tx_dma, i32 %tmp.1, i32 %and42
  %17 = ptrtoint ptr %iotype.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %iotype.i, align 2
  %19 = zext i8 %18 to i64
  call void @__sanitizer_cov_trace_switch(i64 %19, ptr @__sancov_gen_cov_switch_values.66)
  switch i8 %18, label %lpuart32_read.exit.lpuart32_write.exit_crit_edge [
    i8 3, label %do.body.i
    i8 6, label %do.body2.i
  ]

lpuart32_read.exit.lpuart32_write.exit_crit_edge: ; preds = %lpuart32_read.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %lpuart32_write.exit

do.body.i:                                        ; preds = %lpuart32_read.exit
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !183
  tail call void @arm_heavy_mb() #12
  %20 = tail call i32 @llvm.bswap.i32(i32 %tmp.2) #12
  %membase.i82 = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 2
  %21 = ptrtoint ptr %membase.i82 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %membase.i82, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %22, i32 %20) #12, !srcloc !184
  br label %lpuart32_write.exit

do.body2.i:                                       ; preds = %lpuart32_read.exit
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !185
  tail call void @arm_heavy_mb() #12
  %membase4.i83 = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 2
  %23 = ptrtoint ptr %membase4.i83 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %membase4.i83, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %24, i32 %tmp.2) #12, !srcloc !184
  br label %lpuart32_write.exit

lpuart32_write.exit:                              ; preds = %do.body2.i, %do.body.i, %lpuart32_read.exit.lpuart32_write.exit_crit_edge
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lpuart_probe(ptr noundef %pdev) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call = tail call ptr @of_device_get_match_data(ptr noundef %dev) #12
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 8
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 608, i32 noundef 3520) #12
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %call4 = tail call ptr @platform_get_resource(ptr noundef %pdev, i32 noundef 512, i32 noundef 0) #12
  %call6 = tail call ptr @devm_ioremap_resource(ptr noundef %dev, ptr noundef %call4) #12
  %membase = getelementptr inbounds %struct.uart_port, ptr %call.i, i32 0, i32 2
  %2 = ptrtoint ptr %membase to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call6, ptr %membase, align 4
  %cmp.i = icmp ugt ptr %call6, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then10, label %if.end14

if.then10:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %3 = ptrtoint ptr %call6 to i32
  br label %cleanup

if.end14:                                         ; preds = %if.end
  %reg_off = getelementptr inbounds %struct.lpuart_soc_data, ptr %call, i32 0, i32 2
  %4 = ptrtoint ptr %reg_off to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %reg_off, align 1
  %conv = zext i8 %5 to i32
  %add.ptr = getelementptr i8, ptr %call6, i32 %conv
  %6 = ptrtoint ptr %membase to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %add.ptr, ptr %membase, align 4
  %7 = ptrtoint ptr %call4 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %call4, align 4
  %9 = load i8, ptr %reg_off, align 1
  %conv18 = zext i8 %9 to i32
  %add = add i32 %8, %conv18
  %mapbase = getelementptr inbounds %struct.uart_port, ptr %call.i, i32 0, i32 43
  %10 = ptrtoint ptr %mapbase to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %add, ptr %mapbase, align 4
  %dev22 = getelementptr inbounds %struct.uart_port, ptr %call.i, i32 0, i32 45
  %11 = ptrtoint ptr %dev22 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %dev, ptr %dev22, align 4
  %type = getelementptr inbounds %struct.uart_port, ptr %call.i, i32 0, i32 38
  %12 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 103, ptr %type, align 4
  %13 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %call, align 4
  %devtype24 = getelementptr inbounds %struct.lpuart_port, ptr %call.i, i32 0, i32 1
  %15 = ptrtoint ptr %devtype24 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %devtype24, align 4
  %call25 = tail call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 0) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25)
  %cmp = icmp slt i32 %call25, 0
  br i1 %cmp, label %if.end14.cleanup_crit_edge, label %if.end28

if.end14.cleanup_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end28:                                         ; preds = %if.end14
  %irq = getelementptr inbounds %struct.uart_port, ptr %call.i, i32 0, i32 20
  %16 = ptrtoint ptr %irq to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %call25, ptr %irq, align 4
  %iotype = getelementptr inbounds %struct.lpuart_soc_data, ptr %call, i32 0, i32 1
  %17 = ptrtoint ptr %iotype to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %iotype, align 4
  %iotype31 = getelementptr inbounds %struct.uart_port, ptr %call.i, i32 0, i32 26
  %19 = ptrtoint ptr %iotype31 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %18, ptr %iotype31, align 2
  %20 = zext i8 %18 to i64
  call void @__sanitizer_cov_trace_switch(i64 %20, ptr @__sancov_gen_cov_switch_values.67)
  switch i8 %18, label %if.else [
    i8 6, label %if.end28.if.then33_crit_edge
    i8 3, label %if.end28.if.then33_crit_edge278
  ]

if.end28.if.then33_crit_edge278:                  ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then33

if.end28.if.then33_crit_edge:                     ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then33

if.then33:                                        ; preds = %if.end28.if.then33_crit_edge, %if.end28.if.then33_crit_edge278
  %ops = getelementptr inbounds %struct.uart_port, ptr %call.i, i32 0, i32 39
  %21 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr @lpuart32_pops, ptr %ops, align 4
  %22 = ptrtoint ptr %iotype31 to i32
  call void @__asan_load1_noabort(i32 %22)
  %.pr = load i8, ptr %iotype31, align 2
  br label %if.end37

if.else:                                          ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #14
  %ops36 = getelementptr inbounds %struct.uart_port, ptr %call.i, i32 0, i32 39
  %23 = ptrtoint ptr %ops36 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr @lpuart_pops, ptr %ops36, align 4
  br label %if.end37

if.end37:                                         ; preds = %if.else, %if.then33
  %24 = phi i8 [ %18, %if.else ], [ %.pr, %if.then33 ]
  %has_sysrq = getelementptr inbounds %struct.uart_port, ptr %call.i, i32 0, i32 48
  %25 = ptrtoint ptr %has_sysrq to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 1, ptr %has_sysrq, align 4
  %flags = getelementptr inbounds %struct.uart_port, ptr %call.i, i32 0, i32 33
  %26 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 268435456, ptr %flags, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %24)
  %switch.selectcmp.case1 = icmp eq i8 %24, 6
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %24)
  %switch.selectcmp.case2 = icmp eq i8 %24, 3
  %switch.selectcmp = or i1 %switch.selectcmp.case1, %switch.selectcmp.case2
  %27 = select i1 %switch.selectcmp, ptr @lpuart32_config_rs485, ptr @lpuart_config_rs485
  %rs485_config45 = getelementptr inbounds %struct.uart_port, ptr %call.i, i32 0, i32 18
  %28 = ptrtoint ptr %rs485_config45 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %27, ptr %rs485_config45, align 4
  %call48 = tail call ptr @devm_clk_get(ptr noundef %dev, ptr noundef nonnull @.str.7) #12
  %ipg_clk = getelementptr inbounds %struct.lpuart_port, ptr %call.i, i32 0, i32 2
  %29 = ptrtoint ptr %ipg_clk to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %call48, ptr %ipg_clk, align 4
  %cmp.i269 = icmp ugt ptr %call48, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i269, label %if.then51, label %if.end55

if.then51:                                        ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #14
  %30 = ptrtoint ptr %call48 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.8, i32 noundef %30) #15
  br label %cleanup

if.end55:                                         ; preds = %if.end37
  %baud_clk = getelementptr inbounds %struct.lpuart_port, ptr %call.i, i32 0, i32 3
  %31 = ptrtoint ptr %baud_clk to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr null, ptr %baud_clk, align 4
  %32 = ptrtoint ptr %devtype24 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %devtype24, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %33)
  %cmp.i270 = icmp eq i32 %33, 4
  br i1 %cmp.i270, label %if.then57, label %if.end55.if.end71_crit_edge

if.end55.if.end71_crit_edge:                      ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end71

if.then57:                                        ; preds = %if.end55
  %call59 = tail call ptr @devm_clk_get(ptr noundef %dev, ptr noundef nonnull @.str.11) #12
  %34 = ptrtoint ptr %baud_clk to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %call59, ptr %baud_clk, align 4
  %cmp.i271 = icmp ugt ptr %call59, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i271, label %if.then63, label %if.then57.if.end71_crit_edge

if.then57.if.end71_crit_edge:                     ; preds = %if.then57
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end71

if.then63:                                        ; preds = %if.then57
  call void @__sanitizer_cov_trace_pc() #14
  %35 = ptrtoint ptr %call59 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.13, i32 noundef %35) #15
  br label %cleanup

if.end71:                                         ; preds = %if.then57.if.end71_crit_edge, %if.end55.if.end71_crit_edge
  %call72 = tail call i32 @of_alias_get_id(ptr noundef %1, ptr noundef nonnull @.str.15) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call72)
  %cmp73 = icmp slt i32 %call72, 0
  br i1 %cmp73, label %if.then75, label %if.end71.if.end85_crit_edge

if.end71.if.end85_crit_edge:                      ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end85

if.then75:                                        ; preds = %if.end71
  %call76 = tail call i32 @ida_alloc_range(ptr noundef nonnull @fsl_lpuart_ida, i32 noundef 0, i32 noundef 5, i32 noundef 3264) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call76)
  %cmp77 = icmp slt i32 %call76, 0
  br i1 %cmp77, label %do.end82, label %if.end84

do.end82:                                         ; preds = %if.then75
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.17) #15
  br label %cleanup

if.end84:                                         ; preds = %if.then75
  call void @__sanitizer_cov_trace_pc() #14
  %id_allocated = getelementptr inbounds %struct.lpuart_port, ptr %call.i, i32 0, i32 25
  %36 = ptrtoint ptr %id_allocated to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 1, ptr %id_allocated, align 4
  br label %if.end85

if.end85:                                         ; preds = %if.end84, %if.end71.if.end85_crit_edge
  %ret.0 = phi i32 [ %call76, %if.end84 ], [ %call72, %if.end71.if.end85_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %ret.0)
  %cmp86 = icmp ugt i32 %ret.0, 5
  br i1 %cmp86, label %do.end91, label %if.end93

do.end91:                                         ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.20, i32 noundef %ret.0) #15
  br label %failed_out_of_range

if.end93:                                         ; preds = %if.end85
  %line = getelementptr inbounds %struct.uart_port, ptr %call.i, i32 0, i32 41
  %37 = ptrtoint ptr %line to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %ret.0, ptr %line, align 4
  %call95 = tail call fastcc i32 @__lpuart_enable_clks(ptr noundef nonnull %call.i, i1 noundef zeroext true)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call95)
  %tobool96.not = icmp eq i32 %call95, 0
  br i1 %tobool96.not, label %if.end98, label %if.end93.failed_out_of_range_crit_edge

if.end93.failed_out_of_range_crit_edge:           ; preds = %if.end93
  call void @__sanitizer_cov_trace_pc() #14
  br label %failed_out_of_range

if.end98:                                         ; preds = %if.end93
  %38 = ptrtoint ptr %devtype24 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %devtype24, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %39)
  %cmp.i.i = icmp eq i32 %39, 4
  %ipg_clk.sink.i = select i1 %cmp.i.i, ptr %baud_clk, ptr %ipg_clk
  %40 = ptrtoint ptr %ipg_clk.sink.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %ipg_clk.sink.i, align 4
  %call2.i = tail call i32 @clk_get_rate(ptr noundef %41) #12
  %uartclk = getelementptr inbounds %struct.uart_port, ptr %call.i, i32 0, i32 22
  %42 = ptrtoint ptr %uartclk to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %call2.i, ptr %uartclk, align 4
  %43 = ptrtoint ptr %line to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %line, align 4
  %arrayidx = getelementptr [6 x ptr], ptr @lpuart_ports, i32 0, i32 %44
  %45 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %call.i, ptr %arrayidx, align 4
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %46 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %47 = ptrtoint ptr %iotype31 to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %iotype31, align 2
  %49 = zext i8 %48 to i64
  call void @__sanitizer_cov_trace_switch(i64 %49, ptr @__sancov_gen_cov_switch_values.68)
  switch i8 %48, label %if.else110 [
    i8 6, label %if.end98.if.end115_crit_edge
    i8 3, label %if.end98.if.end115_crit_edge279
  ]

if.end98.if.end115_crit_edge279:                  ; preds = %if.end98
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end115

if.end98.if.end115_crit_edge:                     ; preds = %if.end98
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end115

if.else110:                                       ; preds = %if.end98
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end115

if.end115:                                        ; preds = %if.else110, %if.end98.if.end115_crit_edge, %if.end98.if.end115_crit_edge279
  %lpuart_console.sink = phi ptr [ @lpuart_console, %if.else110 ], [ @lpuart32_console, %if.end98.if.end115_crit_edge ], [ @lpuart32_console, %if.end98.if.end115_crit_edge279 ]
  %lpuart_int.sink = phi ptr [ @lpuart_int, %if.else110 ], [ @lpuart32_int, %if.end98.if.end115_crit_edge ], [ @lpuart32_int, %if.end98.if.end115_crit_edge279 ]
  store ptr %lpuart_console.sink, ptr getelementptr inbounds (%struct.uart_driver, ptr @lpuart_reg, i32 0, i32 6), align 4
  %50 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %irq, align 4
  %call.i277 = tail call i32 @devm_request_threaded_irq(ptr noundef %dev, i32 noundef %51, ptr noundef nonnull %lpuart_int.sink, ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.6, ptr noundef nonnull %call.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i277)
  %tobool116.not = icmp eq i32 %call.i277, 0
  br i1 %tobool116.not, label %if.end118, label %if.end115.failed_irq_request_crit_edge

if.end115.failed_irq_request_crit_edge:           ; preds = %if.end115
  call void @__sanitizer_cov_trace_pc() #14
  br label %failed_irq_request

if.end118:                                        ; preds = %if.end115
  %call120 = tail call i32 @uart_add_one_port(ptr noundef nonnull @lpuart_reg, ptr noundef nonnull %call.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call120)
  %tobool121.not = icmp eq i32 %call120, 0
  br i1 %tobool121.not, label %if.end123, label %if.end118.failed_irq_request_crit_edge

if.end118.failed_irq_request_crit_edge:           ; preds = %if.end118
  call void @__sanitizer_cov_trace_pc() #14
  br label %failed_irq_request

if.end123:                                        ; preds = %if.end118
  %call124 = tail call fastcc i32 @lpuart_global_reset(ptr noundef nonnull %call.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call124)
  %tobool125.not = icmp eq i32 %call124, 0
  br i1 %tobool125.not, label %if.end127, label %if.end123.failed_reset_crit_edge

if.end123.failed_reset_crit_edge:                 ; preds = %if.end123
  call void @__sanitizer_cov_trace_pc() #14
  br label %failed_reset

if.end127:                                        ; preds = %if.end123
  %call129 = tail call i32 @uart_get_rs485_mode(ptr noundef nonnull %call.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call129)
  %tobool130.not = icmp eq i32 %call129, 0
  br i1 %tobool130.not, label %if.end132, label %if.end127.failed_reset_crit_edge

if.end127.failed_reset_crit_edge:                 ; preds = %if.end127
  call void @__sanitizer_cov_trace_pc() #14
  br label %failed_reset

if.end132:                                        ; preds = %if.end127
  %rs485 = getelementptr inbounds %struct.uart_port, ptr %call.i, i32 0, i32 56
  %52 = ptrtoint ptr %rs485 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %rs485, align 4
  %and = and i32 %53, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool135.not = icmp eq i32 %and, 0
  br i1 %tobool135.not, label %if.end132.if.end141_crit_edge, label %do.end139

if.end132.if.end141_crit_edge:                    ; preds = %if.end132
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end141

do.end139:                                        ; preds = %if.end132
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.23) #15
  br label %if.end141

if.end141:                                        ; preds = %do.end139, %if.end132.if.end141_crit_edge
  %delay_rts_before_send = getelementptr inbounds %struct.uart_port, ptr %call.i, i32 0, i32 56, i32 1
  %54 = ptrtoint ptr %delay_rts_before_send to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %delay_rts_before_send, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %55)
  %tobool144.not = icmp eq i32 %55, 0
  br i1 %tobool144.not, label %lor.lhs.false, label %if.end141.do.end151_crit_edge

if.end141.do.end151_crit_edge:                    ; preds = %if.end141
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end151

lor.lhs.false:                                    ; preds = %if.end141
  %delay_rts_after_send = getelementptr inbounds %struct.uart_port, ptr %call.i, i32 0, i32 56, i32 2
  %56 = ptrtoint ptr %delay_rts_after_send to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %delay_rts_after_send, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %57)
  %tobool147.not = icmp eq i32 %57, 0
  br i1 %tobool147.not, label %lor.lhs.false.if.end153_crit_edge, label %lor.lhs.false.do.end151_crit_edge

lor.lhs.false.do.end151_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end151

lor.lhs.false.if.end153_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end153

do.end151:                                        ; preds = %lor.lhs.false.do.end151_crit_edge, %if.end141.do.end151_crit_edge
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.26) #15
  br label %if.end153

if.end153:                                        ; preds = %do.end151, %lor.lhs.false.if.end153_crit_edge
  %rs485_config155 = getelementptr inbounds %struct.uart_port, ptr %call.i, i32 0, i32 18
  %58 = ptrtoint ptr %rs485_config155 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %rs485_config155, align 4
  %call159 = tail call i32 %59(ptr noundef nonnull %call.i, ptr noundef %rs485) #12
  br label %cleanup

failed_reset:                                     ; preds = %if.end127.failed_reset_crit_edge, %if.end123.failed_reset_crit_edge
  %ret.2 = phi i32 [ %call124, %if.end123.failed_reset_crit_edge ], [ %call129, %if.end127.failed_reset_crit_edge ]
  %call161 = tail call i32 @uart_remove_one_port(ptr noundef nonnull @lpuart_reg, ptr noundef nonnull %call.i) #12
  br label %failed_irq_request

failed_irq_request:                               ; preds = %failed_reset, %if.end118.failed_irq_request_crit_edge, %if.end115.failed_irq_request_crit_edge
  %ret.3 = phi i32 [ %call.i277, %if.end115.failed_irq_request_crit_edge ], [ %call120, %if.end118.failed_irq_request_crit_edge ], [ %ret.2, %failed_reset ]
  %60 = ptrtoint ptr %baud_clk to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %baud_clk, align 4
  tail call void @clk_disable(ptr noundef %61) #12
  tail call void @clk_unprepare(ptr noundef %61) #12
  %62 = ptrtoint ptr %ipg_clk to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %ipg_clk, align 4
  tail call void @clk_disable(ptr noundef %63) #12
  tail call void @clk_unprepare(ptr noundef %63) #12
  br label %failed_out_of_range

failed_out_of_range:                              ; preds = %failed_irq_request, %if.end93.failed_out_of_range_crit_edge, %do.end91
  %ret.4 = phi i32 [ -22, %do.end91 ], [ %call95, %if.end93.failed_out_of_range_crit_edge ], [ %ret.3, %failed_irq_request ]
  %id_allocated163 = getelementptr inbounds %struct.lpuart_port, ptr %call.i, i32 0, i32 25
  %64 = ptrtoint ptr %id_allocated163 to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %id_allocated163, align 4, !range !194
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %65)
  %tobool164.not = icmp eq i8 %65, 0
  br i1 %tobool164.not, label %failed_out_of_range.cleanup_crit_edge, label %if.then165

failed_out_of_range.cleanup_crit_edge:            ; preds = %failed_out_of_range
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then165:                                       ; preds = %failed_out_of_range
  call void @__sanitizer_cov_trace_pc() #14
  %line167 = getelementptr inbounds %struct.uart_port, ptr %call.i, i32 0, i32 41
  %66 = ptrtoint ptr %line167 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %line167, align 4
  tail call void @ida_free(ptr noundef nonnull @fsl_lpuart_ida, i32 noundef %67) #12
  br label %cleanup

cleanup:                                          ; preds = %if.then165, %failed_out_of_range.cleanup_crit_edge, %if.end153, %do.end82, %if.then63, %if.then51, %if.end14.cleanup_crit_edge, %if.then10, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %3, %if.then10 ], [ %30, %if.then51 ], [ %35, %if.then63 ], [ %call76, %do.end82 ], [ 0, %if.end153 ], [ -12, %entry.cleanup_crit_edge ], [ %call25, %if.end14.cleanup_crit_edge ], [ %ret.4, %if.then165 ], [ %ret.4, %failed_out_of_range.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lpuart_remove(ptr nocapture noundef readonly %pdev) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %call1 = tail call i32 @uart_remove_one_port(ptr noundef nonnull @lpuart_reg, ptr noundef %1) #12
  %id_allocated = getelementptr inbounds %struct.lpuart_port, ptr %1, i32 0, i32 25
  %2 = ptrtoint ptr %id_allocated to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %id_allocated, align 4, !range !194
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %line = getelementptr inbounds %struct.uart_port, ptr %1, i32 0, i32 41
  %4 = ptrtoint ptr %line to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %line, align 4
  tail call void @ida_free(ptr noundef nonnull @fsl_lpuart_ida, i32 noundef %5) #12
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %baud_clk8.i = getelementptr inbounds %struct.lpuart_port, ptr %1, i32 0, i32 3
  %6 = ptrtoint ptr %baud_clk8.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %baud_clk8.i, align 4
  tail call void @clk_disable(ptr noundef %7) #12
  tail call void @clk_unprepare(ptr noundef %7) #12
  %ipg_clk9.i = getelementptr inbounds %struct.lpuart_port, ptr %1, i32 0, i32 2
  %8 = ptrtoint ptr %ipg_clk9.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ipg_clk9.i, align 4
  tail call void @clk_disable(ptr noundef %9) #12
  tail call void @clk_unprepare(ptr noundef %9) #12
  %dma_tx_chan = getelementptr inbounds %struct.lpuart_port, ptr %1, i32 0, i32 8
  %10 = ptrtoint ptr %dma_tx_chan to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dma_tx_chan, align 4
  %tobool4.not = icmp eq ptr %11, null
  br i1 %tobool4.not, label %if.end.if.end7_crit_edge, label %if.then5

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end7

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @dma_release_channel(ptr noundef nonnull %11) #12
  br label %if.end7

if.end7:                                          ; preds = %if.then5, %if.end.if.end7_crit_edge
  %dma_rx_chan = getelementptr inbounds %struct.lpuart_port, ptr %1, i32 0, i32 9
  %12 = ptrtoint ptr %dma_rx_chan to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dma_rx_chan, align 4
  %tobool8.not = icmp eq ptr %13, null
  br i1 %tobool8.not, label %if.end7.if.end11_crit_edge, label %if.then9

if.end7.if.end11_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end11

if.then9:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @dma_release_channel(ptr noundef nonnull %13) #12
  br label %if.end11

if.end11:                                         ; preds = %if.then9, %if.end7.if.end11_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap_resource(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lpuart32_config_rs485(ptr nocapture noundef %port, ptr nocapture noundef %rs485) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %iotype.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 26
  %0 = ptrtoint ptr %iotype.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %iotype.i, align 2
  %2 = zext i8 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.69)
  switch i8 %1, label %entry.lpuart32_read.exit_crit_edge [
    i8 3, label %sw.bb.i
    i8 6, label %sw.bb2.i
  ]

entry.lpuart32_read.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %lpuart32_read.exit

sw.bb.i:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %membase.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 2
  %3 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %membase.i, align 4
  %add.ptr.i = getelementptr i8, ptr %4, i32 20
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #12, !srcloc !180
  %6 = tail call i32 @llvm.bswap.i32(i32 %5) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !181
  br label %lpuart32_read.exitthread-pre-split

sw.bb2.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %membase4.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 2
  %7 = ptrtoint ptr %membase4.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %membase4.i, align 4
  %add.ptr5.i = getelementptr i8, ptr %8, i32 20
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5.i) #12, !srcloc !180
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !182
  br label %lpuart32_read.exitthread-pre-split

lpuart32_read.exitthread-pre-split:               ; preds = %sw.bb2.i, %sw.bb.i
  %retval.0.i.ph = phi i32 [ %6, %sw.bb.i ], [ %9, %sw.bb2.i ]
  %10 = ptrtoint ptr %iotype.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %.pr = load i8, ptr %iotype.i, align 2
  br label %lpuart32_read.exit

lpuart32_read.exit:                               ; preds = %lpuart32_read.exitthread-pre-split, %entry.lpuart32_read.exit_crit_edge
  %11 = phi i8 [ %.pr, %lpuart32_read.exitthread-pre-split ], [ %1, %entry.lpuart32_read.exit_crit_edge ]
  %retval.0.i = phi i32 [ %retval.0.i.ph, %lpuart32_read.exitthread-pre-split ], [ 0, %entry.lpuart32_read.exit_crit_edge ]
  %and = and i32 %retval.0.i, -7
  %12 = zext i8 %11 to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.70)
  switch i8 %11, label %lpuart32_read.exit.lpuart32_write.exit_crit_edge [
    i8 3, label %do.body.i
    i8 6, label %do.body2.i
  ]

lpuart32_read.exit.lpuart32_write.exit_crit_edge: ; preds = %lpuart32_read.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %lpuart32_write.exit

do.body.i:                                        ; preds = %lpuart32_read.exit
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !183
  tail call void @arm_heavy_mb() #12
  %13 = tail call i32 @llvm.bswap.i32(i32 %and) #12
  %membase.i58 = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 2
  %14 = ptrtoint ptr %membase.i58 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %membase.i58, align 4
  %add.ptr.i59 = getelementptr i8, ptr %15, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i59, i32 %13) #12, !srcloc !184
  br label %lpuart32_write.exit

do.body2.i:                                       ; preds = %lpuart32_read.exit
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !185
  tail call void @arm_heavy_mb() #12
  %membase4.i60 = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 2
  %16 = ptrtoint ptr %membase4.i60 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %membase4.i60, align 4
  %add.ptr5.i61 = getelementptr i8, ptr %17, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5.i61, i32 %and) #12, !srcloc !184
  br label %lpuart32_write.exit

lpuart32_write.exit:                              ; preds = %do.body2.i, %do.body.i, %lpuart32_read.exit.lpuart32_write.exit_crit_edge
  %delay_rts_before_send = getelementptr inbounds %struct.serial_rs485, ptr %rs485, i32 0, i32 1
  %18 = ptrtoint ptr %delay_rts_before_send to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 0, ptr %delay_rts_before_send, align 4
  %delay_rts_after_send = getelementptr inbounds %struct.serial_rs485, ptr %rs485, i32 0, i32 2
  %19 = ptrtoint ptr %delay_rts_after_send to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 0, ptr %delay_rts_after_send, align 4
  %20 = ptrtoint ptr %rs485 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %rs485, align 4
  %and3 = and i32 %21, -17
  store i32 %and3, ptr %rs485, align 4
  %and5 = and i32 %21, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5)
  %tobool.not = icmp eq i32 %and5, 0
  br i1 %tobool.not, label %lpuart32_write.exit.if.end34_crit_edge, label %if.then

lpuart32_write.exit.if.end34_crit_edge:           ; preds = %lpuart32_write.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end34

if.then:                                          ; preds = %lpuart32_write.exit
  %or = or i32 %and, 2
  %and7 = and i32 %21, 6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7)
  %tobool8.not = icmp eq i32 %and7, 0
  br i1 %tobool8.not, label %if.then9, label %if.then.if.end_crit_edge

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then9:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  %or11 = or i32 %and3, 2
  %22 = ptrtoint ptr %rs485 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %or11, ptr %rs485, align 4
  br label %if.end

if.end:                                           ; preds = %if.then9, %if.then.if.end_crit_edge
  %23 = ptrtoint ptr %rs485 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %rs485, align 4
  %25 = and i32 %24, 6
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %25)
  %.not = icmp eq i32 %25, 6
  br i1 %.not, label %if.then18, label %if.end.if.end21_crit_edge

if.end.if.end21_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end21

if.then18:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %and20 = and i32 %24, -5
  %26 = ptrtoint ptr %rs485 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %and20, ptr %rs485, align 4
  br label %if.end21

if.end21:                                         ; preds = %if.then18, %if.end.if.end21_crit_edge
  %27 = ptrtoint ptr %rs485 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %rs485, align 4
  %29 = and i32 %28, 6
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %29)
  %.not70 = icmp eq i32 %29, 4
  %or31 = or i32 %retval.0.i, 6
  %spec.select = select i1 %.not70, i32 %or31, i32 %or
  br label %if.end34

if.end34:                                         ; preds = %if.end21, %lpuart32_write.exit.if.end34_crit_edge
  %modem.0 = phi i32 [ %and, %lpuart32_write.exit.if.end34_crit_edge ], [ %spec.select, %if.end21 ]
  %rs48536 = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 56
  %30 = call ptr @memcpy(ptr %rs48536, ptr %rs485, i32 32)
  %31 = ptrtoint ptr %iotype.i to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %iotype.i, align 2
  %33 = zext i8 %32 to i64
  call void @__sanitizer_cov_trace_switch(i64 %33, ptr @__sancov_gen_cov_switch_values.71)
  switch i8 %32, label %if.end34.lpuart32_write.exit69_crit_edge [
    i8 3, label %do.body.i65
    i8 6, label %do.body2.i68
  ]

if.end34.lpuart32_write.exit69_crit_edge:         ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #14
  br label %lpuart32_write.exit69

do.body.i65:                                      ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !183
  tail call void @arm_heavy_mb() #12
  %34 = tail call i32 @llvm.bswap.i32(i32 %modem.0) #12
  %membase.i63 = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 2
  %35 = ptrtoint ptr %membase.i63 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %membase.i63, align 4
  %add.ptr.i64 = getelementptr i8, ptr %36, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i64, i32 %34) #12, !srcloc !184
  br label %lpuart32_write.exit69

do.body2.i68:                                     ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !185
  tail call void @arm_heavy_mb() #12
  %membase4.i66 = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 2
  %37 = ptrtoint ptr %membase4.i66 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %membase4.i66, align 4
  %add.ptr5.i67 = getelementptr i8, ptr %38, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5.i67, i32 %modem.0) #12, !srcloc !184
  br label %lpuart32_write.exit69

lpuart32_write.exit69:                            ; preds = %do.body2.i68, %do.body.i65, %if.end34.lpuart32_write.exit69_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lpuart_config_rs485(ptr nocapture noundef %port, ptr nocapture noundef %rs485) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %membase = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 2
  %0 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %membase, align 4
  %add.ptr2 = getelementptr i8, ptr %1, i32 13
  %2 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr2) #12, !srcloc !186
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !195
  %3 = and i8 %2, -7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !196
  tail call void @arm_heavy_mb() #12
  %4 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %membase, align 4
  %add.ptr8 = getelementptr i8, ptr %5, i32 13
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr8, i8 %3) #12, !srcloc !191
  %delay_rts_before_send = getelementptr inbounds %struct.serial_rs485, ptr %rs485, i32 0, i32 1
  %6 = ptrtoint ptr %delay_rts_before_send to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %delay_rts_before_send, align 4
  %delay_rts_after_send = getelementptr inbounds %struct.serial_rs485, ptr %rs485, i32 0, i32 2
  %7 = ptrtoint ptr %delay_rts_after_send to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %delay_rts_after_send, align 4
  %8 = ptrtoint ptr %rs485 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %rs485, align 4
  %and9 = and i32 %9, -17
  store i32 %and9, ptr %rs485, align 4
  %and11 = and i32 %9, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11)
  %tobool.not = icmp eq i32 %and11, 0
  br i1 %tobool.not, label %entry.if.end46_crit_edge, label %if.then

entry.if.end46_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end46

if.then:                                          ; preds = %entry
  %10 = or i8 %3, 2
  %and15 = and i32 %9, 6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and15)
  %tobool16.not = icmp eq i32 %and15, 0
  br i1 %tobool16.not, label %if.then17, label %if.then.if.end_crit_edge

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then17:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  %or19 = or i32 %and9, 2
  %11 = ptrtoint ptr %rs485 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %or19, ptr %rs485, align 4
  br label %if.end

if.end:                                           ; preds = %if.then17, %if.then.if.end_crit_edge
  %12 = ptrtoint ptr %rs485 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %rs485, align 4
  %14 = and i32 %13, 6
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %14)
  %.not = icmp eq i32 %14, 6
  br i1 %.not, label %if.then26, label %if.end.if.end29_crit_edge

if.end.if.end29_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end29

if.then26:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %and28 = and i32 %13, -5
  %15 = ptrtoint ptr %rs485 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %and28, ptr %rs485, align 4
  br label %if.end29

if.end29:                                         ; preds = %if.then26, %if.end.if.end29_crit_edge
  %16 = ptrtoint ptr %rs485 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %rs485, align 4
  %18 = and i32 %17, 6
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %18)
  %.not74 = icmp eq i32 %18, 4
  %19 = or i8 %2, 6
  %spec.select = select i1 %.not74, i8 %19, i8 %10
  br label %if.end46

if.end46:                                         ; preds = %if.end29, %entry.if.end46_crit_edge
  %modem.0 = phi i8 [ %3, %entry.if.end46_crit_edge ], [ %spec.select, %if.end29 ]
  %rs48548 = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 56
  %20 = call ptr @memcpy(ptr %rs48548, ptr %rs485, i32 32)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !197
  tail call void @arm_heavy_mb() #12
  %21 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %membase, align 4
  %add.ptr54 = getelementptr i8, ptr %22, i32 13
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr54, i8 %modem.0) #12, !srcloc !191
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_alias_get_id(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ida_alloc_range(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @__lpuart_enable_clks(ptr nocapture noundef readonly %sport, i1 noundef zeroext %is_en) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  br i1 %is_en, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %ipg_clk = getelementptr inbounds %struct.lpuart_port, ptr %sport, i32 0, i32 2
  %0 = ptrtoint ptr %ipg_clk to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ipg_clk, align 4
  %call.i = tail call i32 @clk_prepare(ptr noundef %1) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end.i:                                         ; preds = %if.then
  %call1.i = tail call i32 @clk_enable(ptr noundef %1) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end, label %if.end.i.cleanup.sink.split_crit_edge

if.end.i.cleanup.sink.split_crit_edge:            ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.sink.split

if.end:                                           ; preds = %if.end.i
  %baud_clk = getelementptr inbounds %struct.lpuart_port, ptr %sport, i32 0, i32 3
  %2 = ptrtoint ptr %baud_clk to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %baud_clk, align 4
  %call.i18 = tail call i32 @clk_prepare(ptr noundef %3) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i18)
  %tobool.not.i19 = icmp eq i32 %call.i18, 0
  br i1 %tobool.not.i19, label %if.end.i22, label %if.end.cleanup.sink.split.sink.split_crit_edge

if.end.cleanup.sink.split.sink.split_crit_edge:   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.sink.split.sink.split

if.end.i22:                                       ; preds = %if.end
  %call1.i20 = tail call i32 @clk_enable(ptr noundef %3) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i20)
  %tobool2.not.i21 = icmp eq i32 %call1.i20, 0
  br i1 %tobool2.not.i21, label %if.end.i22.cleanup_crit_edge, label %if.then3.i23

if.end.i22.cleanup_crit_edge:                     ; preds = %if.end.i22
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then3.i23:                                     ; preds = %if.end.i22
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @clk_unprepare(ptr noundef %3) #12
  br label %cleanup.sink.split.sink.split

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %baud_clk8 = getelementptr inbounds %struct.lpuart_port, ptr %sport, i32 0, i32 3
  %4 = ptrtoint ptr %baud_clk8 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %baud_clk8, align 4
  tail call void @clk_disable(ptr noundef %5) #12
  tail call void @clk_unprepare(ptr noundef %5) #12
  %ipg_clk9 = getelementptr inbounds %struct.lpuart_port, ptr %sport, i32 0, i32 2
  br label %cleanup.sink.split.sink.split

cleanup.sink.split.sink.split:                    ; preds = %if.else, %if.then3.i23, %if.end.cleanup.sink.split.sink.split_crit_edge
  %ipg_clk9.sink = phi ptr [ %ipg_clk9, %if.else ], [ %ipg_clk, %if.end.cleanup.sink.split.sink.split_crit_edge ], [ %ipg_clk, %if.then3.i23 ]
  %retval.0.ph.ph = phi i32 [ 0, %if.else ], [ %call.i18, %if.end.cleanup.sink.split.sink.split_crit_edge ], [ %call1.i20, %if.then3.i23 ]
  %6 = ptrtoint ptr %ipg_clk9.sink to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ipg_clk9.sink, align 4
  tail call void @clk_disable(ptr noundef %7) #12
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %cleanup.sink.split.sink.split, %if.end.i.cleanup.sink.split_crit_edge
  %.sink = phi ptr [ %1, %if.end.i.cleanup.sink.split_crit_edge ], [ %7, %cleanup.sink.split.sink.split ]
  %retval.0.ph = phi i32 [ %call1.i, %if.end.i.cleanup.sink.split_crit_edge ], [ %retval.0.ph.ph, %cleanup.sink.split.sink.split ]
  tail call void @clk_unprepare(ptr noundef %.sink) #12
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end.i22.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end.i22.cleanup_crit_edge ], [ %call.i, %if.then.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lpuart32_int(i32 noundef %irq, ptr noundef %dev_id) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %iotype.i = getelementptr inbounds %struct.uart_port, ptr %dev_id, i32 0, i32 26
  %0 = ptrtoint ptr %iotype.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %iotype.i, align 2
  %2 = zext i8 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.72)
  switch i8 %1, label %entry.lpuart32_read.exit_crit_edge [
    i8 3, label %sw.bb.i
    i8 6, label %sw.bb2.i
  ]

entry.lpuart32_read.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %lpuart32_read.exit

sw.bb.i:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %membase.i = getelementptr inbounds %struct.uart_port, ptr %dev_id, i32 0, i32 2
  %3 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %membase.i, align 4
  %add.ptr.i = getelementptr i8, ptr %4, i32 4
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #12, !srcloc !180
  %6 = tail call i32 @llvm.bswap.i32(i32 %5) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !181
  br label %lpuart32_read.exitthread-pre-split

sw.bb2.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %membase4.i = getelementptr inbounds %struct.uart_port, ptr %dev_id, i32 0, i32 2
  %7 = ptrtoint ptr %membase4.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %membase4.i, align 4
  %add.ptr5.i = getelementptr i8, ptr %8, i32 4
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5.i) #12, !srcloc !180
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !182
  br label %lpuart32_read.exitthread-pre-split

lpuart32_read.exitthread-pre-split:               ; preds = %sw.bb2.i, %sw.bb.i
  %retval.0.i.ph = phi i32 [ %6, %sw.bb.i ], [ %9, %sw.bb2.i ]
  %10 = ptrtoint ptr %iotype.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %.pr = load i8, ptr %iotype.i, align 2
  br label %lpuart32_read.exit

lpuart32_read.exit:                               ; preds = %lpuart32_read.exitthread-pre-split, %entry.lpuart32_read.exit_crit_edge
  %11 = phi i8 [ %.pr, %lpuart32_read.exitthread-pre-split ], [ %1, %entry.lpuart32_read.exit_crit_edge ]
  %retval.0.i = phi i32 [ %retval.0.i.ph, %lpuart32_read.exitthread-pre-split ], [ 0, %entry.lpuart32_read.exit_crit_edge ]
  %12 = zext i8 %11 to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.73)
  switch i8 %11, label %lpuart32_read.exit.lpuart32_read.exit28_crit_edge [
    i8 3, label %sw.bb.i23
    i8 6, label %sw.bb2.i26
  ]

lpuart32_read.exit.lpuart32_read.exit28_crit_edge: ; preds = %lpuart32_read.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %lpuart32_read.exit28

sw.bb.i23:                                        ; preds = %lpuart32_read.exit
  call void @__sanitizer_cov_trace_pc() #14
  %membase.i21 = getelementptr inbounds %struct.uart_port, ptr %dev_id, i32 0, i32 2
  %13 = ptrtoint ptr %membase.i21 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %membase.i21, align 4
  %add.ptr.i22 = getelementptr i8, ptr %14, i32 28
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i22) #12, !srcloc !180
  %16 = tail call i32 @llvm.bswap.i32(i32 %15) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !181
  br label %lpuart32_read.exit28

sw.bb2.i26:                                       ; preds = %lpuart32_read.exit
  call void @__sanitizer_cov_trace_pc() #14
  %membase4.i24 = getelementptr inbounds %struct.uart_port, ptr %dev_id, i32 0, i32 2
  %17 = ptrtoint ptr %membase4.i24 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %membase4.i24, align 4
  %add.ptr5.i25 = getelementptr i8, ptr %18, i32 28
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5.i25) #12, !srcloc !180
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !182
  br label %lpuart32_read.exit28

lpuart32_read.exit28:                             ; preds = %sw.bb2.i26, %sw.bb.i23, %lpuart32_read.exit.lpuart32_read.exit28_crit_edge
  %retval.0.i27 = phi i32 [ %19, %sw.bb2.i26 ], [ %16, %sw.bb.i23 ], [ 0, %lpuart32_read.exit.lpuart32_read.exit28_crit_edge ]
  %and = and i32 %retval.0.i, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 16777216, i32 %retval.0.i27)
  %cmp.not = icmp ult i32 %retval.0.i27, 16777216
  %or.cond = select i1 %tobool.not, i1 %cmp.not, i1 false
  br i1 %or.cond, label %lpuart32_read.exit28.if.end_crit_edge, label %land.lhs.true

lpuart32_read.exit28.if.end_crit_edge:            ; preds = %lpuart32_read.exit28
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

land.lhs.true:                                    ; preds = %lpuart32_read.exit28
  %lpuart_dma_rx_use = getelementptr inbounds %struct.lpuart_port, ptr %dev_id, i32 0, i32 7
  %20 = ptrtoint ptr %lpuart_dma_rx_use to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %lpuart_dma_rx_use, align 1, !range !194
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %tobool3.not = icmp eq i8 %21, 0
  br i1 %tobool3.not, label %if.then, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  %state.i = getelementptr inbounds %struct.uart_port, ptr %dev_id, i32 0, i32 30
  %22 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %state.i, align 4
  tail call void @_raw_spin_lock(ptr noundef %dev_id) #12
  %membase4.i.i = getelementptr inbounds %struct.uart_port, ptr %dev_id, i32 0, i32 2
  %rx6.i = getelementptr inbounds %struct.uart_port, ptr %dev_id, i32 0, i32 31, i32 4
  %handle_break.i.i = getelementptr inbounds %struct.uart_port, ptr %dev_id, i32 0, i32 17
  %has_sysrq.i.i = getelementptr inbounds %struct.uart_port, ptr %dev_id, i32 0, i32 48
  %cons.i.i = getelementptr inbounds %struct.uart_port, ptr %dev_id, i32 0, i32 32
  %line.i.i = getelementptr inbounds %struct.uart_port, ptr %dev_id, i32 0, i32 41
  %sysrq.i.i = getelementptr inbounds %struct.uart_port, ptr %dev_id, i32 0, i32 46
  %flags.i.i = getelementptr inbounds %struct.uart_port, ptr %dev_id, i32 0, i32 33
  %sysrq_ch.i.i = getelementptr inbounds %struct.uart_port, ptr %dev_id, i32 0, i32 47
  %parity.i = getelementptr inbounds %struct.uart_port, ptr %dev_id, i32 0, i32 31, i32 8
  %brk.i = getelementptr inbounds %struct.uart_port, ptr %dev_id, i32 0, i32 31, i32 9
  %frame.i = getelementptr inbounds %struct.uart_port, ptr %dev_id, i32 0, i32 31, i32 6
  %overrun.i = getelementptr inbounds %struct.uart_port, ptr %dev_id, i32 0, i32 31, i32 7
  %ignore_status_mask.i = getelementptr inbounds %struct.uart_port, ptr %dev_id, i32 0, i32 29
  %read_status_mask.i = getelementptr inbounds %struct.uart_port, ptr %dev_id, i32 0, i32 28
  %tail.i.i = getelementptr inbounds %struct.tty_bufhead, ptr %23, i32 0, i32 8
  br label %while.cond.outer.i

while.cond.outer.i:                               ; preds = %if.then59.i.while.cond.outer.i_crit_edge, %if.then
  %ignored.0.ph.i = phi i32 [ %inc60.i, %if.then59.i.while.cond.outer.i_crit_edge ], [ 0, %if.then ]
  br label %while.cond.i

while.cond.i:                                     ; preds = %while.cond.i.backedge, %while.cond.outer.i
  %24 = ptrtoint ptr %iotype.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %iotype.i, align 2
  %26 = zext i8 %25 to i64
  call void @__sanitizer_cov_trace_switch(i64 %26, ptr @__sancov_gen_cov_switch_values.74)
  switch i8 %25, label %while.cond.i.while.body.i_crit_edge [
    i8 3, label %sw.bb.i.i
    i8 6, label %sw.bb2.i.i
  ]

while.cond.i.while.body.i_crit_edge:              ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body.i

sw.bb.i.i:                                        ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #14
  %27 = ptrtoint ptr %membase4.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %membase4.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %28, i32 24
  %29 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #12, !srcloc !180
  %30 = tail call i32 @llvm.bswap.i32(i32 %29) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !181
  br label %lpuart32_read.exit.i

sw.bb2.i.i:                                       ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #14
  %31 = ptrtoint ptr %membase4.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %membase4.i.i, align 4
  %add.ptr5.i.i = getelementptr i8, ptr %32, i32 24
  %33 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5.i.i) #12, !srcloc !180
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !182
  br label %lpuart32_read.exit.i

lpuart32_read.exit.i:                             ; preds = %sw.bb2.i.i, %sw.bb.i.i
  %retval.0.i.i = phi i32 [ %33, %sw.bb2.i.i ], [ %30, %sw.bb.i.i ]
  %and.i = and i32 %retval.0.i.i, 4194304
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %while.bodythread-pre-split.i, label %lpuart32_read.exit.i.out.i_crit_edge

lpuart32_read.exit.i.out.i_crit_edge:             ; preds = %lpuart32_read.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %out.i

while.bodythread-pre-split.i:                     ; preds = %lpuart32_read.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  %34 = ptrtoint ptr %iotype.i to i32
  call void @__asan_load1_noabort(i32 %34)
  %.pr.i = load i8, ptr %iotype.i, align 2
  br label %while.body.i

while.body.i:                                     ; preds = %while.bodythread-pre-split.i, %while.cond.i.while.body.i_crit_edge
  %35 = phi i8 [ %.pr.i, %while.bodythread-pre-split.i ], [ %25, %while.cond.i.while.body.i_crit_edge ]
  %36 = ptrtoint ptr %rx6.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %rx6.i, align 4
  %inc.i = add i32 %37, 1
  store i32 %inc.i, ptr %rx6.i, align 4
  %38 = zext i8 %35 to i64
  call void @__sanitizer_cov_trace_switch(i64 %38, ptr @__sancov_gen_cov_switch_values.75)
  switch i8 %35, label %while.body.i.lpuart32_read.exit126.i_crit_edge [
    i8 3, label %sw.bb.i121.i
    i8 6, label %sw.bb2.i124.i
  ]

while.body.i.lpuart32_read.exit126.i_crit_edge:   ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %lpuart32_read.exit126.i

sw.bb.i121.i:                                     ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #14
  %39 = ptrtoint ptr %membase4.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %membase4.i.i, align 4
  %add.ptr.i120.i = getelementptr i8, ptr %40, i32 4
  %41 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i120.i) #12, !srcloc !180
  %42 = tail call i32 @llvm.bswap.i32(i32 %41) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !181
  br label %lpuart32_read.exit126.i

sw.bb2.i124.i:                                    ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #14
  %43 = ptrtoint ptr %membase4.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %membase4.i.i, align 4
  %add.ptr5.i123.i = getelementptr i8, ptr %44, i32 4
  %45 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5.i123.i) #12, !srcloc !180
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !182
  br label %lpuart32_read.exit126.i

lpuart32_read.exit126.i:                          ; preds = %sw.bb2.i124.i, %sw.bb.i121.i, %while.body.i.lpuart32_read.exit126.i_crit_edge
  %retval.0.i125.i = phi i32 [ %45, %sw.bb2.i124.i ], [ %42, %sw.bb.i121.i ], [ 0, %while.body.i.lpuart32_read.exit126.i_crit_edge ]
  %46 = ptrtoint ptr %iotype.i to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %iotype.i, align 2
  %48 = zext i8 %47 to i64
  call void @__sanitizer_cov_trace_switch(i64 %48, ptr @__sancov_gen_cov_switch_values.76)
  switch i8 %47, label %lpuart32_read.exit126.i.lpuart32_read.exit135.i_crit_edge [
    i8 3, label %sw.bb.i130.i
    i8 6, label %sw.bb2.i133.i
  ]

lpuart32_read.exit126.i.lpuart32_read.exit135.i_crit_edge: ; preds = %lpuart32_read.exit126.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %lpuart32_read.exit135.i

sw.bb.i130.i:                                     ; preds = %lpuart32_read.exit126.i
  call void @__sanitizer_cov_trace_pc() #14
  %49 = ptrtoint ptr %membase4.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %membase4.i.i, align 4
  %add.ptr.i129.i = getelementptr i8, ptr %50, i32 12
  %51 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i129.i) #12, !srcloc !180
  %52 = tail call i32 @llvm.bswap.i32(i32 %51) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !181
  br label %lpuart32_read.exit135.i

sw.bb2.i133.i:                                    ; preds = %lpuart32_read.exit126.i
  call void @__sanitizer_cov_trace_pc() #14
  %53 = ptrtoint ptr %membase4.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %membase4.i.i, align 4
  %add.ptr5.i132.i = getelementptr i8, ptr %54, i32 12
  %55 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5.i132.i) #12, !srcloc !180
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !182
  br label %lpuart32_read.exit135.i

lpuart32_read.exit135.i:                          ; preds = %sw.bb2.i133.i, %sw.bb.i130.i, %lpuart32_read.exit126.i.lpuart32_read.exit135.i_crit_edge
  %retval.0.i134.i = phi i32 [ %55, %sw.bb2.i133.i ], [ %52, %sw.bb.i130.i ], [ 0, %lpuart32_read.exit126.i.lpuart32_read.exit135.i_crit_edge ]
  %and11.i = and i32 %retval.0.i134.i, 1023
  %and12.i = and i32 %retval.0.i125.i, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12.i)
  %tobool13.not.i = icmp eq i32 %and12.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11.i)
  %tobool14.not.i = icmp eq i32 %and11.i, 0
  %not.tobool13.not.i = xor i1 %tobool13.not.i, true
  %spec.select.i = select i1 %not.tobool13.not.i, i1 %tobool14.not.i, i1 false
  br i1 %spec.select.i, label %land.lhs.true.i, label %lpuart32_read.exit135.i.if.end.i_crit_edge

lpuart32_read.exit135.i.if.end.i_crit_edge:       ; preds = %lpuart32_read.exit135.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i

land.lhs.true.i:                                  ; preds = %lpuart32_read.exit135.i
  %56 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %state.i, align 4
  %58 = ptrtoint ptr %handle_break.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %handle_break.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %59, null
  br i1 %tobool.not.i.i, label %land.lhs.true.i.if.end.i.i_crit_edge, label %if.then.i.i

land.lhs.true.i.if.end.i.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i.i

if.then.i.i:                                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void %59(ptr noundef %dev_id) #12
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i.i, %land.lhs.true.i.if.end.i.i_crit_edge
  %60 = ptrtoint ptr %has_sysrq.i.i to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %has_sysrq.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %61)
  %tobool3.not.i.i = icmp eq i8 %61, 0
  br i1 %tobool3.not.i.i, label %if.end.i.i.if.end15.i.i_crit_edge, label %land.lhs.true.i.i

if.end.i.i.if.end15.i.i_crit_edge:                ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end15.i.i

land.lhs.true.i.i:                                ; preds = %if.end.i.i
  %62 = ptrtoint ptr %cons.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %cons.i.i, align 4
  %tobool4.not.i.i = icmp eq ptr %63, null
  br i1 %tobool4.not.i.i, label %land.lhs.true.i.i.if.end15.i.i_crit_edge, label %land.lhs.true5.i.i

land.lhs.true.i.i.if.end15.i.i_crit_edge:         ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end15.i.i

land.lhs.true5.i.i:                               ; preds = %land.lhs.true.i.i
  %index.i.i = getelementptr inbounds %struct.console, ptr %63, i32 0, i32 9
  %64 = ptrtoint ptr %index.i.i to i32
  call void @__asan_load2_noabort(i32 %64)
  %65 = load i16, ptr %index.i.i, align 2
  %conv7.i.i = sext i16 %65 to i32
  %66 = ptrtoint ptr %line.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %line.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %67, i32 %conv7.i.i)
  %cmp.i.i = icmp eq i32 %67, %conv7.i.i
  br i1 %cmp.i.i, label %if.then9.i.i, label %land.lhs.true5.i.i.if.end15.i.i_crit_edge

land.lhs.true5.i.i.if.end15.i.i_crit_edge:        ; preds = %land.lhs.true5.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end15.i.i

if.then9.i.i:                                     ; preds = %land.lhs.true5.i.i
  %68 = ptrtoint ptr %sysrq.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %sysrq.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %69)
  %tobool10.not.i.i = icmp eq i32 %69, 0
  br i1 %tobool10.not.i.i, label %uart_handle_break.exit.i, label %if.end13.i.i

if.end13.i.i:                                     ; preds = %if.then9.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %70 = ptrtoint ptr %sysrq.i.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 0, ptr %sysrq.i.i, align 4
  br label %if.end15.i.i

if.end15.i.i:                                     ; preds = %if.end13.i.i, %land.lhs.true5.i.i.if.end15.i.i_crit_edge, %land.lhs.true.i.i.if.end15.i.i_crit_edge, %if.end.i.i.if.end15.i.i_crit_edge
  %71 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %flags.i.i, align 4
  %and.i.i = and i32 %72, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool16.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool16.not.i.i, label %if.end15.i.i.if.end.i_crit_edge, label %if.then17.i.i

if.end15.i.i.if.end.i_crit_edge:                  ; preds = %if.end15.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i

if.then17.i.i:                                    ; preds = %if.end15.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %tty.i.i = getelementptr inbounds %struct.tty_port, ptr %57, i32 0, i32 1
  %73 = ptrtoint ptr %tty.i.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %tty.i.i, align 4
  tail call void @do_SAK(ptr noundef %74) #12
  br label %if.end.i

uart_handle_break.exit.i:                         ; preds = %if.then9.i.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %75 = load volatile i32, ptr @jiffies, align 128
  %add.i.i = add i32 %75, 500
  %76 = ptrtoint ptr %sysrq.i.i to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 %add.i.i, ptr %sysrq.i.i, align 4
  br label %while.cond.i.backedge

if.end.i:                                         ; preds = %if.then17.i.i, %if.end15.i.i.if.end.i_crit_edge, %lpuart32_read.exit135.i.if.end.i_crit_edge
  %77 = ptrtoint ptr %sysrq.i.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %sysrq.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %78)
  %tobool.not.i138.i = icmp eq i32 %78, 0
  br i1 %tobool.not.i138.i, label %if.end.i.if.end24.i_crit_edge, label %if.end.i139.i

if.end.i.if.end24.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end24.i

if.end.i139.i:                                    ; preds = %if.end.i
  br i1 %tobool14.not.i, label %if.end.i139.i.uart_prepare_sysrq_char.exit.thread180.i_crit_edge, label %land.lhs.true.i141.i

if.end.i139.i.uart_prepare_sysrq_char.exit.thread180.i_crit_edge: ; preds = %if.end.i139.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %uart_prepare_sysrq_char.exit.thread180.i

land.lhs.true.i141.i:                             ; preds = %if.end.i139.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %79 = load volatile i32, ptr @jiffies, align 128
  %sub.i.i = sub i32 %79, %78
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i.i)
  %cmp.i140.i = icmp slt i32 %sub.i.i, 0
  br i1 %cmp.i140.i, label %if.then3.i.i, label %land.lhs.true.i141.i.uart_prepare_sysrq_char.exit.thread180.i_crit_edge

land.lhs.true.i141.i.uart_prepare_sysrq_char.exit.thread180.i_crit_edge: ; preds = %land.lhs.true.i141.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %uart_prepare_sysrq_char.exit.thread180.i

if.then3.i.i:                                     ; preds = %land.lhs.true.i141.i
  %call.i.i = tail call i32 @sysrq_mask() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool4.not.i142.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool4.not.i142.i, label %if.end7.i.i, label %uart_prepare_sysrq_char.exit.i

if.end7.i.i:                                      ; preds = %if.then3.i.i
  %call8.i.i = tail call zeroext i1 @uart_try_toggle_sysrq(ptr noundef %dev_id, i32 noundef %and11.i) #12
  br i1 %call8.i.i, label %if.end7.i.i.while.cond.i.backedge_crit_edge, label %if.end7.i.i.uart_prepare_sysrq_char.exit.thread180.i_crit_edge

if.end7.i.i.uart_prepare_sysrq_char.exit.thread180.i_crit_edge: ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %uart_prepare_sysrq_char.exit.thread180.i

if.end7.i.i.while.cond.i.backedge_crit_edge:      ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.cond.i.backedge

uart_prepare_sysrq_char.exit.thread180.i:         ; preds = %if.end7.i.i.uart_prepare_sysrq_char.exit.thread180.i_crit_edge, %land.lhs.true.i141.i.uart_prepare_sysrq_char.exit.thread180.i_crit_edge, %if.end.i139.i.uart_prepare_sysrq_char.exit.thread180.i_crit_edge
  %80 = ptrtoint ptr %sysrq.i.i to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 0, ptr %sysrq.i.i, align 4
  br label %if.end24.i

uart_prepare_sysrq_char.exit.i:                   ; preds = %if.then3.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %81 = ptrtoint ptr %sysrq_ch.i.i to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 %and11.i, ptr %sysrq_ch.i.i, align 4
  %82 = ptrtoint ptr %sysrq.i.i to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 0, ptr %sysrq.i.i, align 4
  br label %while.cond.i.backedge

if.end24.i:                                       ; preds = %uart_prepare_sysrq_char.exit.thread180.i, %if.end.i.if.end24.i_crit_edge
  %and25.i = and i32 %retval.0.i125.i, 720896
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and25.i)
  %tobool26.not.i = icmp eq i32 %and25.i, 0
  br i1 %tobool26.not.i, label %if.end83.thread.i, label %if.then27.i

if.end83.thread.i:                                ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #14
  %conv165.i = trunc i32 %retval.0.i134.i to i8
  %83 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %tail.i.i, align 4
  %flags.i144167.i = getelementptr inbounds %struct.tty_buffer, ptr %84, i32 0, i32 5
  %85 = ptrtoint ptr %flags.i144167.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %flags.i144167.i, align 4
  %and.i145168.i = and i32 %86, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i145168.i)
  %tobool.not.i146169.i = icmp eq i32 %and.i145168.i, 0
  br label %land.lhs.true.i148.i

if.then27.i:                                      ; preds = %if.end24.i
  %and28.i = and i32 %retval.0.i125.i, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and28.i)
  %tobool29.not.i = icmp eq i32 %and28.i, 0
  br i1 %tobool29.not.i, label %if.else40.i, label %if.then30.i

if.then30.i:                                      ; preds = %if.then27.i
  call void @__sanitizer_cov_trace_pc() #14
  %brk.parity.i = select i1 %spec.select.i, ptr %brk.i, ptr %parity.i
  br label %if.end48.sink.split.i

if.else40.i:                                      ; preds = %if.then27.i
  br i1 %tobool13.not.i, label %if.else40.i.if.end48.i_crit_edge, label %if.else40.i.if.end48.sink.split.i_crit_edge

if.else40.i.if.end48.sink.split.i_crit_edge:      ; preds = %if.else40.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end48.sink.split.i

if.else40.i.if.end48.i_crit_edge:                 ; preds = %if.else40.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end48.i

if.end48.sink.split.i:                            ; preds = %if.else40.i.if.end48.sink.split.i_crit_edge, %if.then30.i
  %frame.sink184.i = phi ptr [ %brk.parity.i, %if.then30.i ], [ %frame.i, %if.else40.i.if.end48.sink.split.i_crit_edge ]
  %87 = ptrtoint ptr %frame.sink184.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %frame.sink184.i, align 4
  %inc46.i = add i32 %88, 1
  store i32 %inc46.i, ptr %frame.sink184.i, align 4
  br label %if.end48.i

if.end48.i:                                       ; preds = %if.end48.sink.split.i, %if.else40.i.if.end48.i_crit_edge
  %and49.i = and i32 %retval.0.i125.i, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and49.i)
  %tobool50.not.i = icmp eq i32 %and49.i, 0
  br i1 %tobool50.not.i, label %if.end48.i.if.end55.i_crit_edge, label %if.then51.i

if.end48.i.if.end55.i_crit_edge:                  ; preds = %if.end48.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end55.i

if.then51.i:                                      ; preds = %if.end48.i
  call void @__sanitizer_cov_trace_pc() #14
  %89 = ptrtoint ptr %overrun.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %overrun.i, align 4
  %inc54.i = add i32 %90, 1
  store i32 %inc54.i, ptr %overrun.i, align 4
  br label %if.end55.i

if.end55.i:                                       ; preds = %if.then51.i, %if.end48.i.if.end55.i_crit_edge
  %91 = ptrtoint ptr %ignore_status_mask.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %ignore_status_mask.i, align 4
  %and57.i = and i32 %92, %retval.0.i125.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and57.i)
  %tobool58.not.i = icmp eq i32 %and57.i, 0
  br i1 %tobool58.not.i, label %if.end83.i, label %if.then59.i

if.then59.i:                                      ; preds = %if.end55.i
  %inc60.i = add nuw nsw i32 %ignored.0.ph.i, 1
  %exitcond.i = icmp eq i32 %inc60.i, 101
  br i1 %exitcond.i, label %if.then59.i.out.i_crit_edge, label %if.then59.i.while.cond.outer.i_crit_edge

if.then59.i.while.cond.outer.i_crit_edge:         ; preds = %if.then59.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.cond.outer.i

if.then59.i.out.i_crit_edge:                      ; preds = %if.then59.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %out.i

if.end83.i:                                       ; preds = %if.end55.i
  %93 = ptrtoint ptr %read_status_mask.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %read_status_mask.i, align 4
  %and65.i = and i32 %94, %retval.0.i125.i
  %and66.i = and i32 %and65.i, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and66.i)
  %tobool67.not.i = icmp eq i32 %and66.i, 0
  %..i = select i1 %spec.select.i, i8 1, i8 3
  %and74.i = lshr i32 %and65.i, 16
  %95 = trunc i32 %and74.i to i8
  %96 = and i8 %95, 2
  %flg.0.i = select i1 %tobool67.not.i, i8 %96, i8 %..i
  %and79.i = and i32 %and65.i, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and79.i)
  %tobool80.not.i = icmp eq i32 %and79.i, 0
  %spec.select117.i = select i1 %tobool80.not.i, i8 %flg.0.i, i8 4
  %conv.i = trunc i32 %retval.0.i134.i to i8
  %97 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %tail.i.i, align 4
  %flags.i144.i = getelementptr inbounds %struct.tty_buffer, ptr %98, i32 0, i32 5
  %99 = ptrtoint ptr %flags.i144.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %flags.i144.i, align 4
  %and.i145.i = and i32 %100, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i145.i)
  %tobool.not.i146.i = icmp eq i32 %and.i145.i, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %spec.select117.i)
  %cmp.i147.i = icmp eq i8 %spec.select117.i, 0
  %101 = or i1 %tobool.not.i146.i, %cmp.i147.i
  br i1 %101, label %if.end83.i.land.lhs.true.i148.i_crit_edge, label %if.end83.i.if.end12.i.i_crit_edge

if.end83.i.if.end12.i.i_crit_edge:                ; preds = %if.end83.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end12.i.i

if.end83.i.land.lhs.true.i148.i_crit_edge:        ; preds = %if.end83.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.lhs.true.i148.i

land.lhs.true.i148.i:                             ; preds = %if.end83.i.land.lhs.true.i148.i_crit_edge, %if.end83.thread.i
  %tobool.not.i146175.i = phi i1 [ %tobool.not.i146169.i, %if.end83.thread.i ], [ %tobool.not.i146.i, %if.end83.i.land.lhs.true.i148.i_crit_edge ]
  %102 = phi ptr [ %84, %if.end83.thread.i ], [ %98, %if.end83.i.land.lhs.true.i148.i_crit_edge ]
  %conv174.i = phi i8 [ %conv165.i, %if.end83.thread.i ], [ %conv.i, %if.end83.i.land.lhs.true.i148.i_crit_edge ]
  %flg.1172.i = phi i8 [ 0, %if.end83.thread.i ], [ %spec.select117.i, %if.end83.i.land.lhs.true.i148.i_crit_edge ]
  %used.i.i = getelementptr inbounds %struct.tty_buffer, ptr %102, i32 0, i32 1
  %103 = ptrtoint ptr %used.i.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %used.i.i, align 4
  %size.i.i = getelementptr inbounds %struct.tty_buffer, ptr %102, i32 0, i32 2
  %105 = ptrtoint ptr %size.i.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %size.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %104, i32 %106)
  %cmp3.i.i = icmp slt i32 %104, %106
  br i1 %cmp3.i.i, label %if.then.i149.i, label %land.lhs.true.i148.i.if.end12.i.i_crit_edge

land.lhs.true.i148.i.if.end12.i.i_crit_edge:      ; preds = %land.lhs.true.i148.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end12.i.i

if.then.i149.i:                                   ; preds = %land.lhs.true.i148.i
  br i1 %tobool.not.i146175.i, label %if.then8.i.i, label %if.then.i149.i.if.end.i150.i_crit_edge

if.then.i149.i.if.end.i150.i_crit_edge:           ; preds = %if.then.i149.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i150.i

if.then8.i.i:                                     ; preds = %if.then.i149.i
  call void @__sanitizer_cov_trace_pc() #14
  %data.i.i.i.i = getelementptr inbounds %struct.tty_buffer, ptr %102, i32 0, i32 6
  %add.ptr.i.i.i.i = getelementptr i8, ptr %data.i.i.i.i, i32 %104
  %add.ptr.i.i.i = getelementptr i8, ptr %add.ptr.i.i.i.i, i32 %106
  %107 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_store1_noabort(i32 %107)
  store i8 %flg.1172.i, ptr %add.ptr.i.i.i, align 1
  br label %if.end.i150.i

if.end.i150.i:                                    ; preds = %if.then8.i.i, %if.then.i149.i.if.end.i150.i_crit_edge
  %108 = ptrtoint ptr %used.i.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %used.i.i, align 4
  %inc.i.i = add i32 %109, 1
  store i32 %inc.i.i, ptr %used.i.i, align 4
  %data.i.i.i = getelementptr inbounds %struct.tty_buffer, ptr %102, i32 0, i32 6
  %add.ptr.i1.i.i = getelementptr i8, ptr %data.i.i.i, i32 %109
  %110 = ptrtoint ptr %add.ptr.i1.i.i to i32
  call void @__asan_store1_noabort(i32 %110)
  store i8 %conv174.i, ptr %add.ptr.i1.i.i, align 1
  br label %while.cond.i.backedge

if.end12.i.i:                                     ; preds = %land.lhs.true.i148.i.if.end12.i.i_crit_edge, %if.end83.i.if.end12.i.i_crit_edge
  %conv173.i = phi i8 [ %conv174.i, %land.lhs.true.i148.i.if.end12.i.i_crit_edge ], [ %conv.i, %if.end83.i.if.end12.i.i_crit_edge ]
  %flg.1171.i = phi i8 [ %flg.1172.i, %land.lhs.true.i148.i.if.end12.i.i_crit_edge ], [ %spec.select117.i, %if.end83.i.if.end12.i.i_crit_edge ]
  %call13.i.i = tail call i32 @__tty_insert_flip_char(ptr noundef %23, i8 noundef zeroext %conv173.i, i8 noundef zeroext %flg.1171.i) #12
  br label %while.cond.i.backedge

while.cond.i.backedge:                            ; preds = %if.end12.i.i, %if.end.i150.i, %uart_prepare_sysrq_char.exit.i, %if.end7.i.i.while.cond.i.backedge_crit_edge, %uart_handle_break.exit.i
  br label %while.cond.i

out.i:                                            ; preds = %if.then59.i.out.i_crit_edge, %lpuart32_read.exit.i.out.i_crit_edge
  %111 = ptrtoint ptr %has_sysrq.i.i to i32
  call void @__asan_load1_noabort(i32 %111)
  %112 = load i8, ptr %has_sysrq.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %112)
  %tobool.not.i152.i = icmp eq i8 %112, 0
  br i1 %tobool.not.i152.i, label %if.then.i153.i, label %if.end.i155.i

if.then.i153.i:                                   ; preds = %out.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @_raw_spin_unlock(ptr noundef %dev_id) #12
  br label %lpuart32_rxint.exit

if.end.i155.i:                                    ; preds = %out.i
  %113 = ptrtoint ptr %sysrq_ch.i.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %sysrq_ch.i.i, align 4
  store i32 0, ptr %sysrq_ch.i.i, align 4
  tail call void @_raw_spin_unlock(ptr noundef %dev_id) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %114)
  %tobool4.not.i154.i = icmp eq i32 %114, 0
  br i1 %tobool4.not.i154.i, label %if.end.i155.i.lpuart32_rxint.exit_crit_edge, label %if.then5.i156.i

if.end.i155.i.lpuart32_rxint.exit_crit_edge:      ; preds = %if.end.i155.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %lpuart32_rxint.exit

if.then5.i156.i:                                  ; preds = %if.end.i155.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @handle_sysrq(i32 noundef %114) #12
  br label %lpuart32_rxint.exit

lpuart32_rxint.exit:                              ; preds = %if.then5.i156.i, %if.end.i155.i.lpuart32_rxint.exit_crit_edge, %if.then.i153.i
  tail call void @tty_flip_buffer_push(ptr noundef %23) #12
  br label %if.end

if.end:                                           ; preds = %lpuart32_rxint.exit, %land.lhs.true.if.end_crit_edge, %lpuart32_read.exit28.if.end_crit_edge
  %and4 = and i32 %retval.0.i, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4)
  %tobool5.not = icmp eq i32 %and4, 0
  br i1 %tobool5.not, label %if.end.if.end9_crit_edge, label %land.lhs.true6

if.end.if.end9_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end9

land.lhs.true6:                                   ; preds = %if.end
  %lpuart_dma_tx_use = getelementptr inbounds %struct.lpuart_port, ptr %dev_id, i32 0, i32 6
  %115 = ptrtoint ptr %lpuart_dma_tx_use to i32
  call void @__asan_load1_noabort(i32 %115)
  %116 = load i8, ptr %lpuart_dma_tx_use, align 4, !range !194
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %116)
  %tobool7.not = icmp eq i8 %116, 0
  br i1 %tobool7.not, label %if.then8, label %land.lhs.true6.if.end9_crit_edge

land.lhs.true6.if.end9_crit_edge:                 ; preds = %land.lhs.true6
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end9

if.then8:                                         ; preds = %land.lhs.true6
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @_raw_spin_lock(ptr noundef %dev_id) #12
  tail call fastcc void @lpuart32_transmit_buffer(ptr noundef %dev_id) #12
  tail call void @_raw_spin_unlock(ptr noundef %dev_id) #12
  br label %if.end9

if.end9:                                          ; preds = %if.then8, %land.lhs.true6.if.end9_crit_edge, %if.end.if.end9_crit_edge
  %117 = ptrtoint ptr %iotype.i to i32
  call void @__asan_load1_noabort(i32 %117)
  %118 = load i8, ptr %iotype.i, align 2
  %119 = zext i8 %118 to i64
  call void @__sanitizer_cov_trace_switch(i64 %119, ptr @__sancov_gen_cov_switch_values.77)
  switch i8 %118, label %if.end9.lpuart32_write.exit_crit_edge [
    i8 3, label %do.body.i
    i8 6, label %do.body2.i
  ]

if.end9.lpuart32_write.exit_crit_edge:            ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #14
  br label %lpuart32_write.exit

do.body.i:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !183
  tail call void @arm_heavy_mb() #12
  %120 = tail call i32 @llvm.bswap.i32(i32 %retval.0.i) #12
  %membase.i30 = getelementptr inbounds %struct.uart_port, ptr %dev_id, i32 0, i32 2
  %121 = ptrtoint ptr %membase.i30 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %membase.i30, align 4
  %add.ptr.i31 = getelementptr i8, ptr %122, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i31, i32 %120) #12, !srcloc !184
  br label %lpuart32_write.exit

do.body2.i:                                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !185
  tail call void @arm_heavy_mb() #12
  %membase4.i32 = getelementptr inbounds %struct.uart_port, ptr %dev_id, i32 0, i32 2
  %123 = ptrtoint ptr %membase4.i32 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %membase4.i32, align 4
  %add.ptr5.i33 = getelementptr i8, ptr %124, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5.i33, i32 %retval.0.i) #12, !srcloc !184
  br label %lpuart32_write.exit

lpuart32_write.exit:                              ; preds = %do.body2.i, %do.body.i, %if.end9.lpuart32_write.exit_crit_edge
  ret i32 1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lpuart_int(i32 noundef %irq, ptr noundef %dev_id) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %membase = getelementptr inbounds %struct.uart_port, ptr %dev_id, i32 0, i32 2
  %0 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %membase, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 4
  %2 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr) #12, !srcloc !186
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !198
  %conv = zext i8 %2 to i32
  %and = and i32 %conv, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %lpuart_dma_rx_use = getelementptr inbounds %struct.lpuart_port, ptr %dev_id, i32 0, i32 7
  %3 = ptrtoint ptr %lpuart_dma_rx_use to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %lpuart_dma_rx_use, align 1, !range !194
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool2.not = icmp eq i8 %4, 0
  br i1 %tobool2.not, label %land.lhs.true.if.end_crit_edge, label %if.then

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  %5 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %membase, align 4
  %add.ptr8 = getelementptr i8, ptr %6, i32 7
  %7 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr8) #12, !srcloc !186
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !199
  %state1.i = getelementptr inbounds %struct.uart_port, ptr %dev_id, i32 0, i32 30
  %8 = ptrtoint ptr %state1.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %state1.i, align 4
  %handle_break.i = getelementptr inbounds %struct.uart_port, ptr %dev_id, i32 0, i32 17
  %10 = ptrtoint ptr %handle_break.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %handle_break.i, align 4
  %tobool.not.i = icmp eq ptr %11, null
  br i1 %tobool.not.i, label %if.then.if.end.i_crit_edge, label %if.then.i

if.then.if.end.i_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  tail call void %11(ptr noundef %dev_id) #12
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %if.then.if.end.i_crit_edge
  %has_sysrq.i = getelementptr inbounds %struct.uart_port, ptr %dev_id, i32 0, i32 48
  %12 = ptrtoint ptr %has_sysrq.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %has_sysrq.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool3.not.i = icmp eq i8 %13, 0
  br i1 %tobool3.not.i, label %if.end.i.if.end15.i_crit_edge, label %land.lhs.true.i

if.end.i.if.end15.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end15.i

land.lhs.true.i:                                  ; preds = %if.end.i
  %cons.i = getelementptr inbounds %struct.uart_port, ptr %dev_id, i32 0, i32 32
  %14 = ptrtoint ptr %cons.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %cons.i, align 4
  %tobool4.not.i = icmp eq ptr %15, null
  br i1 %tobool4.not.i, label %land.lhs.true.i.if.end15.i_crit_edge, label %land.lhs.true5.i

land.lhs.true.i.if.end15.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end15.i

land.lhs.true5.i:                                 ; preds = %land.lhs.true.i
  %index.i = getelementptr inbounds %struct.console, ptr %15, i32 0, i32 9
  %16 = ptrtoint ptr %index.i to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %index.i, align 2
  %conv7.i = sext i16 %17 to i32
  %line.i = getelementptr inbounds %struct.uart_port, ptr %dev_id, i32 0, i32 41
  %18 = ptrtoint ptr %line.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %line.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %19, i32 %conv7.i)
  %cmp.i = icmp eq i32 %19, %conv7.i
  br i1 %cmp.i, label %if.then9.i, label %land.lhs.true5.i.if.end15.i_crit_edge

land.lhs.true5.i.if.end15.i_crit_edge:            ; preds = %land.lhs.true5.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end15.i

if.then9.i:                                       ; preds = %land.lhs.true5.i
  %sysrq.i = getelementptr inbounds %struct.uart_port, ptr %dev_id, i32 0, i32 46
  %20 = ptrtoint ptr %sysrq.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %sysrq.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool10.not.i = icmp eq i32 %21, 0
  br i1 %tobool10.not.i, label %if.then11.i, label %if.end13.i

if.then11.i:                                      ; preds = %if.then9.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %22 = load volatile i32, ptr @jiffies, align 128
  %add.i = add i32 %22, 500
  %23 = ptrtoint ptr %sysrq.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %add.i, ptr %sysrq.i, align 4
  br label %uart_handle_break.exit

if.end13.i:                                       ; preds = %if.then9.i
  call void @__sanitizer_cov_trace_pc() #14
  %24 = ptrtoint ptr %sysrq.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 0, ptr %sysrq.i, align 4
  br label %if.end15.i

if.end15.i:                                       ; preds = %if.end13.i, %land.lhs.true5.i.if.end15.i_crit_edge, %land.lhs.true.i.if.end15.i_crit_edge, %if.end.i.if.end15.i_crit_edge
  %flags.i = getelementptr inbounds %struct.uart_port, ptr %dev_id, i32 0, i32 33
  %25 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %26, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool16.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool16.not.i, label %if.end15.i.uart_handle_break.exit_crit_edge, label %if.then17.i

if.end15.i.uart_handle_break.exit_crit_edge:      ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %uart_handle_break.exit

if.then17.i:                                      ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #14
  %tty.i = getelementptr inbounds %struct.tty_port, ptr %9, i32 0, i32 1
  %27 = ptrtoint ptr %tty.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %tty.i, align 4
  tail call void @do_SAK(ptr noundef %28) #12
  br label %uart_handle_break.exit

uart_handle_break.exit:                           ; preds = %if.then17.i, %if.end15.i.uart_handle_break.exit_crit_edge, %if.then11.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !200
  tail call void @arm_heavy_mb() #12
  %29 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %membase, align 4
  %add.ptr16 = getelementptr i8, ptr %30, i32 17
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr16, i8 64) #12, !srcloc !191
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %and18 = and i32 %conv, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and18)
  %tobool19.not = icmp eq i32 %and18, 0
  br i1 %tobool19.not, label %if.end.if.end24_crit_edge, label %land.lhs.true20

if.end.if.end24_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end24

land.lhs.true20:                                  ; preds = %if.end
  %lpuart_dma_rx_use21 = getelementptr inbounds %struct.lpuart_port, ptr %dev_id, i32 0, i32 7
  %31 = ptrtoint ptr %lpuart_dma_rx_use21 to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %lpuart_dma_rx_use21, align 1, !range !194
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %32)
  %tobool22.not = icmp eq i8 %32, 0
  br i1 %tobool22.not, label %if.then23, label %land.lhs.true20.if.end24_crit_edge

land.lhs.true20.if.end24_crit_edge:               ; preds = %land.lhs.true20
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end24

if.then23:                                        ; preds = %land.lhs.true20
  %state.i = getelementptr inbounds %struct.uart_port, ptr %dev_id, i32 0, i32 30
  %33 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %state.i, align 4
  tail call void @_raw_spin_lock(ptr noundef %dev_id) #12
  %rx7.i = getelementptr inbounds %struct.uart_port, ptr %dev_id, i32 0, i32 31, i32 4
  %sysrq.i.i = getelementptr inbounds %struct.uart_port, ptr %dev_id, i32 0, i32 46
  %sysrq_ch.i.i = getelementptr inbounds %struct.uart_port, ptr %dev_id, i32 0, i32 47
  %parity.i = getelementptr inbounds %struct.uart_port, ptr %dev_id, i32 0, i32 31, i32 8
  %frame.i = getelementptr inbounds %struct.uart_port, ptr %dev_id, i32 0, i32 31, i32 6
  %ignore_status_mask.i = getelementptr inbounds %struct.uart_port, ptr %dev_id, i32 0, i32 29
  %read_status_mask.i = getelementptr inbounds %struct.uart_port, ptr %dev_id, i32 0, i32 28
  %tail.i.i = getelementptr inbounds %struct.tty_bufhead, ptr %34, i32 0, i32 8
  br label %while.cond.outer.outer.i

while.cond.outer.outer.i:                         ; preds = %if.then58.i.while.cond.outer.outer.i_crit_edge, %if.then23
  %overrun.0.ph.ph.i = phi i32 [ 0, %if.then23 ], [ %spec.select.i, %if.then58.i.while.cond.outer.outer.i_crit_edge ]
  %ignored.0.ph.ph.i = phi i32 [ 0, %if.then23 ], [ %inc59.i, %if.then58.i.while.cond.outer.outer.i_crit_edge ]
  br label %while.cond.outer.i

while.cond.outer.i:                               ; preds = %while.cond.outer.i.backedge, %while.cond.outer.outer.i
  %overrun.0.ph.i = phi i32 [ %overrun.0.ph.ph.i, %while.cond.outer.outer.i ], [ %overrun.0.ph.i.be, %while.cond.outer.i.backedge ]
  br label %while.cond.i

while.cond.i:                                     ; preds = %uart_prepare_sysrq_char.exit.i.while.cond.i_crit_edge, %while.cond.outer.i
  %35 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %membase, align 4
  %add.ptr.i = getelementptr i8, ptr %36, i32 18
  %37 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i) #12, !srcloc !186
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !201
  %38 = and i8 %37, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %38)
  %tobool.not.i43 = icmp eq i8 %38, 0
  br i1 %tobool.not.i43, label %while.body.i, label %while.cond.i.out.i_crit_edge

while.cond.i.out.i_crit_edge:                     ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %out.i

while.body.i:                                     ; preds = %while.cond.i
  %39 = ptrtoint ptr %rx7.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %rx7.i, align 4
  %inc.i = add i32 %40, 1
  store i32 %inc.i, ptr %rx7.i, align 4
  %41 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %membase, align 4
  %add.ptr12.i = getelementptr i8, ptr %42, i32 4
  %43 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr12.i) #12, !srcloc !186
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !202
  %44 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %membase, align 4
  %add.ptr20.i = getelementptr i8, ptr %45, i32 7
  %46 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr20.i) #12, !srcloc !186
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !203
  %conv25.i = zext i8 %46 to i32
  %47 = ptrtoint ptr %sysrq.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %sysrq.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %48)
  %tobool.not.i.i = icmp eq i32 %48, 0
  br i1 %tobool.not.i.i, label %while.body.i.if.end.i44_crit_edge, label %if.end.i.i

while.body.i.if.end.i44_crit_edge:                ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i44

if.end.i.i:                                       ; preds = %while.body.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %46)
  %tobool1.not.i.i = icmp eq i8 %46, 0
  br i1 %tobool1.not.i.i, label %if.end.i.i.return.sink.split.i.i_crit_edge, label %land.lhs.true.i.i

if.end.i.i.return.sink.split.i.i_crit_edge:       ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %return.sink.split.i.i

land.lhs.true.i.i:                                ; preds = %if.end.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %49 = load volatile i32, ptr @jiffies, align 128
  %sub.i.i = sub i32 %49, %48
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i.i)
  %cmp.i.i = icmp slt i32 %sub.i.i, 0
  br i1 %cmp.i.i, label %if.then3.i.i, label %land.lhs.true.i.i.return.sink.split.i.i_crit_edge

land.lhs.true.i.i.return.sink.split.i.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %return.sink.split.i.i

if.then3.i.i:                                     ; preds = %land.lhs.true.i.i
  %call.i.i = tail call i32 @sysrq_mask() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool4.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end7.i.i, label %if.then5.i.i

if.then5.i.i:                                     ; preds = %if.then3.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %50 = ptrtoint ptr %sysrq_ch.i.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %conv25.i, ptr %sysrq_ch.i.i, align 4
  br label %return.sink.split.i.i

if.end7.i.i:                                      ; preds = %if.then3.i.i
  %call8.i.i = tail call zeroext i1 @uart_try_toggle_sysrq(ptr noundef %dev_id, i32 noundef %conv25.i) #12
  br i1 %call8.i.i, label %if.end7.i.i.uart_prepare_sysrq_char.exit.i_crit_edge, label %if.end7.i.i.return.sink.split.i.i_crit_edge

if.end7.i.i.return.sink.split.i.i_crit_edge:      ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %return.sink.split.i.i

if.end7.i.i.uart_prepare_sysrq_char.exit.i_crit_edge: ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %uart_prepare_sysrq_char.exit.i

return.sink.split.i.i:                            ; preds = %if.end7.i.i.return.sink.split.i.i_crit_edge, %if.then5.i.i, %land.lhs.true.i.i.return.sink.split.i.i_crit_edge, %if.end.i.i.return.sink.split.i.i_crit_edge
  %retval.0.ph.i.i = phi i32 [ 1, %if.then5.i.i ], [ 0, %if.end7.i.i.return.sink.split.i.i_crit_edge ], [ 0, %land.lhs.true.i.i.return.sink.split.i.i_crit_edge ], [ 0, %if.end.i.i.return.sink.split.i.i_crit_edge ]
  %51 = ptrtoint ptr %sysrq.i.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 0, ptr %sysrq.i.i, align 4
  br label %uart_prepare_sysrq_char.exit.i

uart_prepare_sysrq_char.exit.i:                   ; preds = %return.sink.split.i.i, %if.end7.i.i.uart_prepare_sysrq_char.exit.i_crit_edge
  %retval.0.i.i = phi i32 [ 1, %if.end7.i.i.uart_prepare_sysrq_char.exit.i_crit_edge ], [ %retval.0.ph.i.i, %return.sink.split.i.i ]
  %tobool27.not.i = icmp eq i32 %retval.0.i.i, 0
  br i1 %tobool27.not.i, label %uart_prepare_sysrq_char.exit.i.if.end.i44_crit_edge, label %uart_prepare_sysrq_char.exit.i.while.cond.i_crit_edge

uart_prepare_sysrq_char.exit.i.while.cond.i_crit_edge: ; preds = %uart_prepare_sysrq_char.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.cond.i

uart_prepare_sysrq_char.exit.i.if.end.i44_crit_edge: ; preds = %uart_prepare_sysrq_char.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i44

if.end.i44:                                       ; preds = %uart_prepare_sysrq_char.exit.i.if.end.i44_crit_edge, %while.body.i.if.end.i44_crit_edge
  %conv28.i = zext i8 %43 to i32
  %and29.i = and i32 %conv28.i, 11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and29.i)
  %tobool30.not.i = icmp eq i32 %and29.i, 0
  br i1 %tobool30.not.i, label %if.end85.thread.i, label %if.then31.i

if.end85.thread.i:                                ; preds = %if.end.i44
  call void @__sanitizer_cov_trace_pc() #14
  %52 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %tail.i.i, align 4
  %flags.i147.i = getelementptr inbounds %struct.tty_buffer, ptr %53, i32 0, i32 5
  %54 = ptrtoint ptr %flags.i147.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %flags.i147.i, align 4
  %and.i148.i = and i32 %55, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i148.i)
  %tobool.not.i133149.i = icmp eq i32 %and.i148.i, 0
  br label %land.lhs.true.i135.i

if.then31.i:                                      ; preds = %if.end.i44
  %and33.i = and i32 %conv28.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and33.i)
  %tobool34.not.i = icmp eq i32 %and33.i, 0
  br i1 %tobool34.not.i, label %if.else.i, label %if.then31.i.if.end47.sink.split.i_crit_edge

if.then31.i.if.end47.sink.split.i_crit_edge:      ; preds = %if.then31.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end47.sink.split.i

if.else.i:                                        ; preds = %if.then31.i
  %and40.i = and i32 %conv28.i, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and40.i)
  %tobool41.not.i = icmp eq i32 %and40.i, 0
  br i1 %tobool41.not.i, label %if.else.i.if.end47.i_crit_edge, label %if.else.i.if.end47.sink.split.i_crit_edge

if.else.i.if.end47.sink.split.i_crit_edge:        ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end47.sink.split.i

if.else.i.if.end47.i_crit_edge:                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end47.i

if.end47.sink.split.i:                            ; preds = %if.else.i.if.end47.sink.split.i_crit_edge, %if.then31.i.if.end47.sink.split.i_crit_edge
  %frame.sink168.i = phi ptr [ %parity.i, %if.then31.i.if.end47.sink.split.i_crit_edge ], [ %frame.i, %if.else.i.if.end47.sink.split.i_crit_edge ]
  %56 = ptrtoint ptr %frame.sink168.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %frame.sink168.i, align 4
  %inc45.i = add i32 %57, 1
  store i32 %inc45.i, ptr %frame.sink168.i, align 4
  br label %if.end47.i

if.end47.i:                                       ; preds = %if.end47.sink.split.i, %if.else.i.if.end47.i_crit_edge
  %and49.i = lshr i32 %conv28.i, 3
  %and49.lobit.i = and i32 %and49.i, 1
  %spec.select.i = add i32 %and49.lobit.i, %overrun.0.ph.i
  %58 = ptrtoint ptr %ignore_status_mask.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %ignore_status_mask.i, align 4
  %and56.i = and i32 %59, %conv28.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and56.i)
  %tobool57.not.i = icmp eq i32 %and56.i, 0
  br i1 %tobool57.not.i, label %if.end85.i, label %if.then58.i

if.then58.i:                                      ; preds = %if.end47.i
  %inc59.i = add nuw nsw i32 %ignored.0.ph.ph.i, 1
  %exitcond.i = icmp eq i32 %inc59.i, 101
  br i1 %exitcond.i, label %if.then58.i.out.i_crit_edge, label %if.then58.i.while.cond.outer.outer.i_crit_edge

if.then58.i.while.cond.outer.outer.i_crit_edge:   ; preds = %if.then58.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.cond.outer.outer.i

if.then58.i.out.i_crit_edge:                      ; preds = %if.then58.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %out.i

if.end85.i:                                       ; preds = %if.end47.i
  %60 = ptrtoint ptr %read_status_mask.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %read_status_mask.i, align 4
  %62 = trunc i32 %61 to i8
  %conv67.i = and i8 %43, %62
  %conv68.i = zext i8 %conv67.i to i32
  %and69.i = and i32 %conv68.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and69.i)
  %tobool70.not.i = icmp eq i32 %and69.i, 0
  %and74.i = and i8 %conv67.i, 2
  %flg.0.i = select i1 %tobool70.not.i, i8 %and74.i, i8 3
  %and80.i = and i32 %conv68.i, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and80.i)
  %tobool81.not.i = icmp eq i32 %and80.i, 0
  %spec.select132.i = select i1 %tobool81.not.i, i8 %flg.0.i, i8 4
  %63 = ptrtoint ptr %sysrq.i.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 0, ptr %sysrq.i.i, align 4
  %64 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %tail.i.i, align 4
  %flags.i.i = getelementptr inbounds %struct.tty_buffer, ptr %65, i32 0, i32 5
  %66 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %flags.i.i, align 4
  %and.i.i = and i32 %67, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i133.i = icmp eq i32 %and.i.i, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %spec.select132.i)
  %cmp.i134.i = icmp eq i8 %spec.select132.i, 0
  %68 = or i1 %tobool.not.i133.i, %cmp.i134.i
  br i1 %68, label %if.end85.i.land.lhs.true.i135.i_crit_edge, label %if.end85.i.if.end12.i.i_crit_edge

if.end85.i.if.end12.i.i_crit_edge:                ; preds = %if.end85.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end12.i.i

if.end85.i.land.lhs.true.i135.i_crit_edge:        ; preds = %if.end85.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.lhs.true.i135.i

land.lhs.true.i135.i:                             ; preds = %if.end85.i.land.lhs.true.i135.i_crit_edge, %if.end85.thread.i
  %tobool.not.i133156.i = phi i1 [ %tobool.not.i133149.i, %if.end85.thread.i ], [ %tobool.not.i133.i, %if.end85.i.land.lhs.true.i135.i_crit_edge ]
  %69 = phi ptr [ %53, %if.end85.thread.i ], [ %65, %if.end85.i.land.lhs.true.i135.i_crit_edge ]
  %flg.2155.i = phi i8 [ 0, %if.end85.thread.i ], [ %spec.select132.i, %if.end85.i.land.lhs.true.i135.i_crit_edge ]
  %overrun.2153.i = phi i32 [ %overrun.0.ph.i, %if.end85.thread.i ], [ %spec.select.i, %if.end85.i.land.lhs.true.i135.i_crit_edge ]
  %used.i.i = getelementptr inbounds %struct.tty_buffer, ptr %69, i32 0, i32 1
  %70 = ptrtoint ptr %used.i.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %used.i.i, align 4
  %size.i.i = getelementptr inbounds %struct.tty_buffer, ptr %69, i32 0, i32 2
  %72 = ptrtoint ptr %size.i.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %size.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %71, i32 %73)
  %cmp3.i.i = icmp slt i32 %71, %73
  br i1 %cmp3.i.i, label %if.then.i.i, label %land.lhs.true.i135.i.if.end12.i.i_crit_edge

land.lhs.true.i135.i.if.end12.i.i_crit_edge:      ; preds = %land.lhs.true.i135.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end12.i.i

if.then.i.i:                                      ; preds = %land.lhs.true.i135.i
  br i1 %tobool.not.i133156.i, label %if.then8.i.i, label %if.then.i.i.if.end.i136.i_crit_edge

if.then.i.i.if.end.i136.i_crit_edge:              ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i136.i

if.then8.i.i:                                     ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %data.i.i.i.i = getelementptr inbounds %struct.tty_buffer, ptr %69, i32 0, i32 6
  %add.ptr.i.i.i.i = getelementptr i8, ptr %data.i.i.i.i, i32 %71
  %add.ptr.i.i.i = getelementptr i8, ptr %add.ptr.i.i.i.i, i32 %73
  %74 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_store1_noabort(i32 %74)
  store i8 %flg.2155.i, ptr %add.ptr.i.i.i, align 1
  br label %if.end.i136.i

if.end.i136.i:                                    ; preds = %if.then8.i.i, %if.then.i.i.if.end.i136.i_crit_edge
  %75 = ptrtoint ptr %used.i.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %used.i.i, align 4
  %inc.i.i = add i32 %76, 1
  store i32 %inc.i.i, ptr %used.i.i, align 4
  %data.i.i.i = getelementptr inbounds %struct.tty_buffer, ptr %69, i32 0, i32 6
  %add.ptr.i1.i.i = getelementptr i8, ptr %data.i.i.i, i32 %76
  %77 = ptrtoint ptr %add.ptr.i1.i.i to i32
  call void @__asan_store1_noabort(i32 %77)
  store i8 %46, ptr %add.ptr.i1.i.i, align 1
  br label %while.cond.outer.i.backedge

if.end12.i.i:                                     ; preds = %land.lhs.true.i135.i.if.end12.i.i_crit_edge, %if.end85.i.if.end12.i.i_crit_edge
  %flg.2154.i = phi i8 [ %flg.2155.i, %land.lhs.true.i135.i.if.end12.i.i_crit_edge ], [ %spec.select132.i, %if.end85.i.if.end12.i.i_crit_edge ]
  %overrun.2152.i = phi i32 [ %overrun.2153.i, %land.lhs.true.i135.i.if.end12.i.i_crit_edge ], [ %spec.select.i, %if.end85.i.if.end12.i.i_crit_edge ]
  %call13.i.i = tail call i32 @__tty_insert_flip_char(ptr noundef %34, i8 noundef zeroext %46, i8 noundef zeroext %flg.2154.i) #12
  br label %while.cond.outer.i.backedge

while.cond.outer.i.backedge:                      ; preds = %if.end12.i.i, %if.end.i136.i
  %overrun.0.ph.i.be = phi i32 [ %overrun.2153.i, %if.end.i136.i ], [ %overrun.2152.i, %if.end12.i.i ]
  br label %while.cond.outer.i

out.i:                                            ; preds = %if.then58.i.out.i_crit_edge, %while.cond.i.out.i_crit_edge
  %overrun.3.i = phi i32 [ %overrun.0.ph.i, %while.cond.i.out.i_crit_edge ], [ %spec.select.i, %if.then58.i.out.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %overrun.3.i)
  %tobool88.not.i = icmp eq i32 %overrun.3.i, 0
  br i1 %tobool88.not.i, label %out.i.if.end102.i_crit_edge, label %if.then89.i

out.i.if.end102.i_crit_edge:                      ; preds = %out.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end102.i

if.then89.i:                                      ; preds = %out.i
  call void @__sanitizer_cov_trace_pc() #14
  %overrun92.i = getelementptr inbounds %struct.uart_port, ptr %dev_id, i32 0, i32 31, i32 7
  %78 = ptrtoint ptr %overrun92.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %overrun92.i, align 4
  %add.i45 = add i32 %79, %overrun.3.i
  store i32 %add.i45, ptr %overrun92.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !204
  tail call void @arm_heavy_mb() #12
  %80 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %membase, align 4
  %add.ptr95.i = getelementptr i8, ptr %81, i32 17
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr95.i, i8 64) #12, !srcloc !191
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !205
  tail call void @arm_heavy_mb() #12
  %82 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %membase, align 4
  %add.ptr101.i = getelementptr i8, ptr %83, i32 18
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr101.i, i8 4) #12, !srcloc !191
  br label %if.end102.i

if.end102.i:                                      ; preds = %if.then89.i, %out.i.if.end102.i_crit_edge
  %has_sysrq.i.i = getelementptr inbounds %struct.uart_port, ptr %dev_id, i32 0, i32 48
  %84 = ptrtoint ptr %has_sysrq.i.i to i32
  call void @__asan_load1_noabort(i32 %84)
  %85 = load i8, ptr %has_sysrq.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %85)
  %tobool.not.i137.i = icmp eq i8 %85, 0
  br i1 %tobool.not.i137.i, label %if.then.i138.i, label %if.end.i140.i

if.then.i138.i:                                   ; preds = %if.end102.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @_raw_spin_unlock(ptr noundef %dev_id) #12
  br label %lpuart_rxint.exit

if.end.i140.i:                                    ; preds = %if.end102.i
  %86 = ptrtoint ptr %sysrq_ch.i.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %sysrq_ch.i.i, align 4
  store i32 0, ptr %sysrq_ch.i.i, align 4
  tail call void @_raw_spin_unlock(ptr noundef %dev_id) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %87)
  %tobool4.not.i139.i = icmp eq i32 %87, 0
  br i1 %tobool4.not.i139.i, label %if.end.i140.i.lpuart_rxint.exit_crit_edge, label %if.then5.i141.i

if.end.i140.i.lpuart_rxint.exit_crit_edge:        ; preds = %if.end.i140.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %lpuart_rxint.exit

if.then5.i141.i:                                  ; preds = %if.end.i140.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @handle_sysrq(i32 noundef %87) #12
  br label %lpuart_rxint.exit

lpuart_rxint.exit:                                ; preds = %if.then5.i141.i, %if.end.i140.i.lpuart_rxint.exit_crit_edge, %if.then.i138.i
  tail call void @tty_flip_buffer_push(ptr noundef %34) #12
  br label %if.end24

if.end24:                                         ; preds = %lpuart_rxint.exit, %land.lhs.true20.if.end24_crit_edge, %if.end.if.end24_crit_edge
  %and26 = and i32 %conv, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and26)
  %tobool27.not = icmp eq i32 %and26, 0
  br i1 %tobool27.not, label %if.end24.cleanup_crit_edge, label %land.lhs.true28

if.end24.cleanup_crit_edge:                       ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

land.lhs.true28:                                  ; preds = %if.end24
  %lpuart_dma_tx_use = getelementptr inbounds %struct.lpuart_port, ptr %dev_id, i32 0, i32 6
  %88 = ptrtoint ptr %lpuart_dma_tx_use to i32
  call void @__asan_load1_noabort(i32 %88)
  %89 = load i8, ptr %lpuart_dma_tx_use, align 4, !range !194
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %89)
  %tobool29.not = icmp eq i8 %89, 0
  br i1 %tobool29.not, label %if.then30, label %land.lhs.true28.cleanup_crit_edge

land.lhs.true28.cleanup_crit_edge:                ; preds = %land.lhs.true28
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then30:                                        ; preds = %land.lhs.true28
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @_raw_spin_lock(ptr noundef %dev_id) #12
  tail call fastcc void @lpuart_transmit_buffer(ptr noundef %dev_id) #12
  tail call void @_raw_spin_unlock(ptr noundef %dev_id) #12
  br label %cleanup

cleanup:                                          ; preds = %if.then30, %land.lhs.true28.cleanup_crit_edge, %if.end24.cleanup_crit_edge, %uart_handle_break.exit
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @uart_add_one_port(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @lpuart_global_reset(ptr nocapture noundef readonly %sport) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %cons = getelementptr inbounds %struct.uart_port, ptr %sport, i32 0, i32 32
  %0 = ptrtoint ptr %cons to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cons, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %index = getelementptr inbounds %struct.console, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %index to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %index, align 2
  %conv = sext i16 %3 to i32
  %line = getelementptr inbounds %struct.uart_port, ptr %sport, i32 0, i32 41
  %4 = ptrtoint ptr %line to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %line, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %conv)
  %cmp = icmp eq i32 %5, %conv
  br i1 %cmp, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %ipg_clk = getelementptr inbounds %struct.lpuart_port, ptr %sport, i32 0, i32 2
  %6 = ptrtoint ptr %ipg_clk to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ipg_clk, align 4
  %call.i = tail call i32 @clk_prepare(ptr noundef %7) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end.do.end_crit_edge

if.end.do.end_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end

if.end.i:                                         ; preds = %if.end
  %call1.i = tail call i32 @clk_enable(ptr noundef %7) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end7, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @clk_unprepare(ptr noundef %7) #12
  br label %do.end

do.end:                                           ; preds = %if.then3.i, %if.end.do.end_crit_edge
  %retval.0.i.ph = phi i32 [ %call1.i, %if.then3.i ], [ %call.i, %if.end.do.end_crit_edge ]
  %dev = getelementptr inbounds %struct.uart_port, ptr %sport, i32 0, i32 45
  %8 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %9, ptr noundef nonnull @.str.59, i32 noundef %retval.0.i.ph) #15
  br label %cleanup

if.end7:                                          ; preds = %if.end.i
  %devtype.i = getelementptr inbounds %struct.lpuart_port, ptr %sport, i32 0, i32 1
  %10 = ptrtoint ptr %devtype.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %devtype.i, align 4
  %.off = add i32 %11, -3
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.off)
  %switch = icmp ult i32 %.off, 2
  br i1 %switch, label %if.then12, label %if.end7.if.end20_crit_edge

if.end7.if.end20_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end20

if.then12:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #14
  %membase = getelementptr inbounds %struct.uart_port, ptr %sport, i32 0, i32 2
  %12 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %membase, align 4
  %add.ptr13 = getelementptr i8, ptr %13, i32 -8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !206
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr13, i32 33554432) #12, !srcloc !184
  tail call void @usleep_range_state(i32 noundef 20, i32 noundef 40, i32 noundef 2) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !207
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr13, i32 0) #12, !srcloc !184
  tail call void @usleep_range_state(i32 noundef 20, i32 noundef 40, i32 noundef 2) #12
  br label %if.end20

if.end20:                                         ; preds = %if.then12, %if.end7.if.end20_crit_edge
  %14 = ptrtoint ptr %ipg_clk to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ipg_clk, align 4
  tail call void @clk_disable(ptr noundef %15) #12
  tail call void @clk_unprepare(ptr noundef %15) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end20, %do.end, %land.lhs.true.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.0.i.ph, %do.end ], [ 0, %if.end20 ], [ 0, %land.lhs.true.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @uart_get_rs485_mode(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @uart_remove_one_port(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ida_free(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lpuart32_tx_empty(ptr nocapture noundef readonly %port) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %iotype.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 26
  %0 = ptrtoint ptr %iotype.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %iotype.i, align 2
  %2 = zext i8 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.78)
  switch i8 %1, label %entry.lpuart32_read.exit_crit_edge [
    i8 3, label %sw.bb.i
    i8 6, label %sw.bb2.i
  ]

entry.lpuart32_read.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %lpuart32_read.exit

sw.bb.i:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %membase.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 2
  %3 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %membase.i, align 4
  %add.ptr.i = getelementptr i8, ptr %4, i32 4
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #12, !srcloc !180
  %6 = tail call i32 @llvm.bswap.i32(i32 %5) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !181
  br label %lpuart32_read.exitthread-pre-split

sw.bb2.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %membase4.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 2
  %7 = ptrtoint ptr %membase4.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %membase4.i, align 4
  %add.ptr5.i = getelementptr i8, ptr %8, i32 4
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5.i) #12, !srcloc !180
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !182
  br label %lpuart32_read.exitthread-pre-split

lpuart32_read.exitthread-pre-split:               ; preds = %sw.bb2.i, %sw.bb.i
  %retval.0.i.ph = phi i32 [ %6, %sw.bb.i ], [ %9, %sw.bb2.i ]
  %10 = ptrtoint ptr %iotype.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %.pr = load i8, ptr %iotype.i, align 2
  br label %lpuart32_read.exit

lpuart32_read.exit:                               ; preds = %lpuart32_read.exitthread-pre-split, %entry.lpuart32_read.exit_crit_edge
  %11 = phi i8 [ %.pr, %lpuart32_read.exitthread-pre-split ], [ %1, %entry.lpuart32_read.exit_crit_edge ]
  %retval.0.i = phi i32 [ %retval.0.i.ph, %lpuart32_read.exitthread-pre-split ], [ 0, %entry.lpuart32_read.exit_crit_edge ]
  %12 = zext i8 %11 to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.79)
  switch i8 %11, label %lpuart32_read.exit.lpuart32_read.exit19_crit_edge [
    i8 3, label %sw.bb.i14
    i8 6, label %sw.bb2.i17
  ]

lpuart32_read.exit.lpuart32_read.exit19_crit_edge: ; preds = %lpuart32_read.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %lpuart32_read.exit19

sw.bb.i14:                                        ; preds = %lpuart32_read.exit
  call void @__sanitizer_cov_trace_pc() #14
  %membase.i12 = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 2
  %13 = ptrtoint ptr %membase.i12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %membase.i12, align 4
  %add.ptr.i13 = getelementptr i8, ptr %14, i32 24
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i13) #12, !srcloc !180
  %16 = tail call i32 @llvm.bswap.i32(i32 %15) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !181
  br label %lpuart32_read.exit19

sw.bb2.i17:                                       ; preds = %lpuart32_read.exit
  call void @__sanitizer_cov_trace_pc() #14
  %membase4.i15 = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 2
  %17 = ptrtoint ptr %membase4.i15 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %membase4.i15, align 4
  %add.ptr5.i16 = getelementptr i8, ptr %18, i32 24
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5.i16) #12, !srcloc !180
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !182
  br label %lpuart32_read.exit19

lpuart32_read.exit19:                             ; preds = %sw.bb2.i17, %sw.bb.i14, %lpuart32_read.exit.lpuart32_read.exit19_crit_edge
  %retval.0.i18 = phi i32 [ %19, %sw.bb2.i17 ], [ %16, %sw.bb.i14 ], [ 0, %lpuart32_read.exit.lpuart32_read.exit19_crit_edge ]
  %dma_tx_in_progress = getelementptr inbounds %struct.lpuart_port, ptr %port, i32 0, i32 16
  %20 = ptrtoint ptr %dma_tx_in_progress to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %dma_tx_in_progress, align 4, !range !194
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %tobool.not = icmp eq i8 %21, 0
  br i1 %tobool.not, label %if.end, label %lpuart32_read.exit19.cleanup_crit_edge

lpuart32_read.exit19.cleanup_crit_edge:           ; preds = %lpuart32_read.exit19
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %lpuart32_read.exit19
  call void @__sanitizer_cov_trace_pc() #14
  %and = and i32 %retval.0.i, 4194304
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool2.not = icmp ne i32 %and, 0
  %and3 = and i32 %retval.0.i18, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3)
  %tobool4.not = icmp ne i32 %and3, 0
  %or.cond = select i1 %tobool2.not, i1 %tobool4.not, i1 false
  %spec.select = zext i1 %or.cond to i32
  br label %cleanup

cleanup:                                          ; preds = %if.end, %lpuart32_read.exit19.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %lpuart32_read.exit19.cleanup_crit_edge ], [ %spec.select, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @lpuart32_set_mctrl(ptr nocapture noundef readonly %port, i32 noundef %mctrl) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %iotype.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 26
  %0 = ptrtoint ptr %iotype.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %iotype.i, align 2
  %2 = zext i8 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.80)
  switch i8 %1, label %entry.lpuart32_read.exit_crit_edge [
    i8 3, label %sw.bb.i
    i8 6, label %sw.bb2.i
  ]

entry.lpuart32_read.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %lpuart32_read.exit

sw.bb.i:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %membase.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 2
  %3 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %membase.i, align 4
  %add.ptr.i = getelementptr i8, ptr %4, i32 8
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #12, !srcloc !180
  %6 = tail call i32 @llvm.bswap.i32(i32 %5) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !181
  br label %lpuart32_read.exitthread-pre-split

sw.bb2.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %membase4.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 2
  %7 = ptrtoint ptr %membase4.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %membase4.i, align 4
  %add.ptr5.i = getelementptr i8, ptr %8, i32 8
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5.i) #12, !srcloc !180
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !182
  br label %lpuart32_read.exitthread-pre-split

lpuart32_read.exitthread-pre-split:               ; preds = %sw.bb2.i, %sw.bb.i
  %retval.0.i.ph = phi i32 [ %6, %sw.bb.i ], [ %9, %sw.bb2.i ]
  %10 = ptrtoint ptr %iotype.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %.pr = load i8, ptr %iotype.i, align 2
  br label %lpuart32_read.exit

lpuart32_read.exit:                               ; preds = %lpuart32_read.exitthread-pre-split, %entry.lpuart32_read.exit_crit_edge
  %11 = phi i8 [ %.pr, %lpuart32_read.exitthread-pre-split ], [ %1, %entry.lpuart32_read.exit_crit_edge ]
  %retval.0.i = phi i32 [ %retval.0.i.ph, %lpuart32_read.exitthread-pre-split ], [ 0, %entry.lpuart32_read.exit_crit_edge ]
  %and = and i32 %retval.0.i, -161
  %and1 = lshr i32 %mctrl, 8
  %12 = and i32 %and1, 128
  %13 = or i32 %and, %12
  %14 = zext i8 %11 to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values.81)
  switch i8 %11, label %lpuart32_read.exit.lpuart32_write.exit_crit_edge [
    i8 3, label %do.body.i
    i8 6, label %do.body2.i
  ]

lpuart32_read.exit.lpuart32_write.exit_crit_edge: ; preds = %lpuart32_read.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %lpuart32_write.exit

do.body.i:                                        ; preds = %lpuart32_read.exit
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !183
  tail call void @arm_heavy_mb() #12
  %15 = tail call i32 @llvm.bswap.i32(i32 %13) #12
  %membase.i6 = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 2
  %16 = ptrtoint ptr %membase.i6 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %membase.i6, align 4
  %add.ptr.i7 = getelementptr i8, ptr %17, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i7, i32 %15) #12, !srcloc !184
  br label %lpuart32_write.exit

do.body2.i:                                       ; preds = %lpuart32_read.exit
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !185
  tail call void @arm_heavy_mb() #12
  %membase4.i8 = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 2
  %18 = ptrtoint ptr %membase4.i8 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %membase4.i8, align 4
  %add.ptr5.i9 = getelementptr i8, ptr %19, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5.i9, i32 %13) #12, !srcloc !184
  br label %lpuart32_write.exit

lpuart32_write.exit:                              ; preds = %do.body2.i, %do.body.i, %lpuart32_read.exit.lpuart32_write.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lpuart32_get_mctrl(ptr nocapture noundef readonly %port) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %iotype.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 26
  %0 = ptrtoint ptr %iotype.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %iotype.i, align 2
  %2 = zext i8 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.82)
  switch i8 %1, label %entry.lpuart32_read.exit_crit_edge [
    i8 3, label %sw.bb.i
    i8 6, label %sw.bb2.i
  ]

entry.lpuart32_read.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %lpuart32_read.exit

sw.bb.i:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %membase.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 2
  %3 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %membase.i, align 4
  %add.ptr.i = getelementptr i8, ptr %4, i32 8
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #12, !srcloc !180
  %6 = tail call i32 @llvm.bswap.i32(i32 %5) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !181
  br label %lpuart32_read.exit

sw.bb2.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %membase4.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 2
  %7 = ptrtoint ptr %membase4.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %membase4.i, align 4
  %add.ptr5.i = getelementptr i8, ptr %8, i32 8
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5.i) #12, !srcloc !180
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !182
  br label %lpuart32_read.exit

lpuart32_read.exit:                               ; preds = %sw.bb2.i, %sw.bb.i, %entry.lpuart32_read.exit_crit_edge
  %retval.0.i = phi i32 [ %9, %sw.bb2.i ], [ %6, %sw.bb.i ], [ 0, %entry.lpuart32_read.exit_crit_edge ]
  %and = and i32 %retval.0.i, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %spec.select = select i1 %tobool.not, i32 352, i32 33120
  ret i32 %spec.select
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @lpuart32_stop_tx(ptr nocapture noundef readonly %port) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %iotype.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 26
  %0 = ptrtoint ptr %iotype.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %iotype.i, align 2
  %2 = zext i8 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.83)
  switch i8 %1, label %entry.lpuart32_read.exit_crit_edge [
    i8 3, label %sw.bb.i
    i8 6, label %sw.bb2.i
  ]

entry.lpuart32_read.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %lpuart32_read.exit

sw.bb.i:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %membase.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 2
  %3 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %membase.i, align 4
  %add.ptr.i = getelementptr i8, ptr %4, i32 8
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #12, !srcloc !180
  %6 = tail call i32 @llvm.bswap.i32(i32 %5) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !181
  br label %lpuart32_read.exitthread-pre-split

sw.bb2.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %membase4.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 2
  %7 = ptrtoint ptr %membase4.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %membase4.i, align 4
  %add.ptr5.i = getelementptr i8, ptr %8, i32 8
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5.i) #12, !srcloc !180
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !182
  br label %lpuart32_read.exitthread-pre-split

lpuart32_read.exitthread-pre-split:               ; preds = %sw.bb2.i, %sw.bb.i
  %retval.0.i.ph = phi i32 [ %6, %sw.bb.i ], [ %9, %sw.bb2.i ]
  %10 = ptrtoint ptr %iotype.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %.pr = load i8, ptr %iotype.i, align 2
  br label %lpuart32_read.exit

lpuart32_read.exit:                               ; preds = %lpuart32_read.exitthread-pre-split, %entry.lpuart32_read.exit_crit_edge
  %11 = phi i8 [ %.pr, %lpuart32_read.exitthread-pre-split ], [ %1, %entry.lpuart32_read.exit_crit_edge ]
  %retval.0.i = phi i32 [ %retval.0.i.ph, %lpuart32_read.exitthread-pre-split ], [ 0, %entry.lpuart32_read.exit_crit_edge ]
  %and = and i32 %retval.0.i, -12582913
  %12 = zext i8 %11 to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.84)
  switch i8 %11, label %lpuart32_read.exit.lpuart32_write.exit_crit_edge [
    i8 3, label %do.body.i
    i8 6, label %do.body2.i
  ]

lpuart32_read.exit.lpuart32_write.exit_crit_edge: ; preds = %lpuart32_read.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %lpuart32_write.exit

do.body.i:                                        ; preds = %lpuart32_read.exit
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !183
  tail call void @arm_heavy_mb() #12
  %13 = tail call i32 @llvm.bswap.i32(i32 %and) #12
  %membase.i4 = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 2
  %14 = ptrtoint ptr %membase.i4 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %membase.i4, align 4
  %add.ptr.i5 = getelementptr i8, ptr %15, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i5, i32 %13) #12, !srcloc !184
  br label %lpuart32_write.exit

do.body2.i:                                       ; preds = %lpuart32_read.exit
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !185
  tail call void @arm_heavy_mb() #12
  %membase4.i6 = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 2
  %16 = ptrtoint ptr %membase4.i6 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %membase4.i6, align 4
  %add.ptr5.i7 = getelementptr i8, ptr %17, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5.i7, i32 %and) #12, !srcloc !184
  br label %lpuart32_write.exit

lpuart32_write.exit:                              ; preds = %do.body2.i, %do.body.i, %lpuart32_read.exit.lpuart32_write.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @lpuart32_start_tx(ptr noundef %port) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %lpuart_dma_tx_use = getelementptr inbounds %struct.lpuart_port, ptr %port, i32 0, i32 6
  %0 = ptrtoint ptr %lpuart_dma_tx_use to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %lpuart_dma_tx_use, align 4, !range !194
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %state.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 30
  %2 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %state.i, align 4
  %head.i = getelementptr inbounds %struct.uart_state, ptr %3, i32 0, i32 2, i32 1
  %4 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %head.i, align 4
  %tail.i = getelementptr inbounds %struct.uart_state, ptr %3, i32 0, i32 2, i32 2
  %6 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %tail.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %7)
  %cmp.i = icmp eq i32 %5, %7
  br i1 %cmp.i, label %if.then.if.end7_crit_edge, label %lor.rhs.i

if.then.if.end7_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end7

lor.rhs.i:                                        ; preds = %if.then
  %tty2.i.i = getelementptr inbounds %struct.tty_port, ptr %3, i32 0, i32 1
  %8 = ptrtoint ptr %tty2.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %tty2.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %9, null
  br i1 %tobool.not.i.i, label %lor.rhs.i.lpuart_stopped_or_empty.exit_crit_edge, label %land.lhs.true.i.i

lor.rhs.i.lpuart_stopped_or_empty.exit_crit_edge: ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %lpuart_stopped_or_empty.exit

land.lhs.true.i.i:                                ; preds = %lor.rhs.i
  %stopped.i.i = getelementptr inbounds %struct.tty_struct, ptr %9, i32 0, i32 19, i32 1
  %10 = ptrtoint ptr %stopped.i.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %stopped.i.i, align 4, !range !194
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool3.not.i.i = icmp eq i8 %11, 0
  br i1 %tobool3.not.i.i, label %land.lhs.true.i.i.lpuart_stopped_or_empty.exit_crit_edge, label %land.lhs.true.i.i.if.end7_crit_edge

land.lhs.true.i.i.if.end7_crit_edge:              ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end7

land.lhs.true.i.i.lpuart_stopped_or_empty.exit_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %lpuart_stopped_or_empty.exit

lpuart_stopped_or_empty.exit:                     ; preds = %land.lhs.true.i.i.lpuart_stopped_or_empty.exit_crit_edge, %lor.rhs.i.lpuart_stopped_or_empty.exit_crit_edge
  %hw_stopped.i.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 35
  %12 = ptrtoint ptr %hw_stopped.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %hw_stopped.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool4.not.i.i.not = icmp eq i32 %13, 0
  br i1 %tobool4.not.i.i.not, label %if.then1, label %lpuart_stopped_or_empty.exit.if.end7_crit_edge

lpuart_stopped_or_empty.exit.if.end7_crit_edge:   ; preds = %lpuart_stopped_or_empty.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end7

if.then1:                                         ; preds = %lpuart_stopped_or_empty.exit
  call void @__sanitizer_cov_trace_pc() #14
  tail call fastcc void @lpuart_dma_tx(ptr noundef %port)
  br label %if.end7

if.else:                                          ; preds = %entry
  %iotype.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 26
  %14 = ptrtoint ptr %iotype.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %iotype.i, align 2
  %16 = zext i8 %15 to i64
  call void @__sanitizer_cov_trace_switch(i64 %16, ptr @__sancov_gen_cov_switch_values.85)
  switch i8 %15, label %if.else.lpuart32_read.exit_crit_edge [
    i8 3, label %sw.bb.i
    i8 6, label %sw.bb2.i
  ]

if.else.lpuart32_read.exit_crit_edge:             ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %lpuart32_read.exit

sw.bb.i:                                          ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  %membase.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 2
  %17 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %membase.i, align 4
  %add.ptr.i = getelementptr i8, ptr %18, i32 8
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #12, !srcloc !180
  %20 = tail call i32 @llvm.bswap.i32(i32 %19) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !181
  br label %lpuart32_read.exitthread-pre-split

sw.bb2.i:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  %membase4.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 2
  %21 = ptrtoint ptr %membase4.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %membase4.i, align 4
  %add.ptr5.i = getelementptr i8, ptr %22, i32 8
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5.i) #12, !srcloc !180
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !182
  br label %lpuart32_read.exitthread-pre-split

lpuart32_read.exitthread-pre-split:               ; preds = %sw.bb2.i, %sw.bb.i
  %retval.0.i.ph = phi i32 [ %20, %sw.bb.i ], [ %23, %sw.bb2.i ]
  %24 = ptrtoint ptr %iotype.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %.pr = load i8, ptr %iotype.i, align 2
  br label %lpuart32_read.exit

lpuart32_read.exit:                               ; preds = %lpuart32_read.exitthread-pre-split, %if.else.lpuart32_read.exit_crit_edge
  %25 = phi i8 [ %.pr, %lpuart32_read.exitthread-pre-split ], [ %15, %if.else.lpuart32_read.exit_crit_edge ]
  %retval.0.i = phi i32 [ %retval.0.i.ph, %lpuart32_read.exitthread-pre-split ], [ 0, %if.else.lpuart32_read.exit_crit_edge ]
  %or = or i32 %retval.0.i, 8388608
  %26 = zext i8 %25 to i64
  call void @__sanitizer_cov_trace_switch(i64 %26, ptr @__sancov_gen_cov_switch_values.86)
  switch i8 %25, label %lpuart32_read.exit.lpuart32_write.exit_crit_edge [
    i8 3, label %do.body.i
    i8 6, label %do.body2.i
  ]

lpuart32_read.exit.lpuart32_write.exit_crit_edge: ; preds = %lpuart32_read.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %lpuart32_write.exit

do.body.i:                                        ; preds = %lpuart32_read.exit
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !183
  tail call void @arm_heavy_mb() #12
  %27 = tail call i32 @llvm.bswap.i32(i32 %or) #12
  %membase.i15 = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 2
  %28 = ptrtoint ptr %membase.i15 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %membase.i15, align 4
  %add.ptr.i16 = getelementptr i8, ptr %29, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i16, i32 %27) #12, !srcloc !184
  br label %lpuart32_write.exit

do.body2.i:                                       ; preds = %lpuart32_read.exit
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !185
  tail call void @arm_heavy_mb() #12
  %membase4.i17 = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 2
  %30 = ptrtoint ptr %membase4.i17 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %membase4.i17, align 4
  %add.ptr5.i18 = getelementptr i8, ptr %31, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5.i18, i32 %or) #12, !srcloc !184
  br label %lpuart32_write.exit

lpuart32_write.exit:                              ; preds = %do.body2.i, %do.body.i, %lpuart32_read.exit.lpuart32_write.exit_crit_edge
  %32 = ptrtoint ptr %iotype.i to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %iotype.i, align 2
  %34 = zext i8 %33 to i64
  call void @__sanitizer_cov_trace_switch(i64 %34, ptr @__sancov_gen_cov_switch_values.87)
  switch i8 %33, label %lpuart32_write.exit.if.end7_crit_edge [
    i8 3, label %sw.bb.i22
    i8 6, label %sw.bb2.i25
  ]

lpuart32_write.exit.if.end7_crit_edge:            ; preds = %lpuart32_write.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end7

sw.bb.i22:                                        ; preds = %lpuart32_write.exit
  call void @__sanitizer_cov_trace_pc() #14
  %membase.i20 = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 2
  %35 = ptrtoint ptr %membase.i20 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %membase.i20, align 4
  %add.ptr.i21 = getelementptr i8, ptr %36, i32 4
  %37 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i21) #12, !srcloc !180
  %38 = tail call i32 @llvm.bswap.i32(i32 %37) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !181
  br label %lpuart32_read.exit27

sw.bb2.i25:                                       ; preds = %lpuart32_write.exit
  call void @__sanitizer_cov_trace_pc() #14
  %membase4.i23 = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 2
  %39 = ptrtoint ptr %membase4.i23 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %membase4.i23, align 4
  %add.ptr5.i24 = getelementptr i8, ptr %40, i32 4
  %41 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5.i24) #12, !srcloc !180
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !182
  br label %lpuart32_read.exit27

lpuart32_read.exit27:                             ; preds = %sw.bb2.i25, %sw.bb.i22
  %retval.0.i26 = phi i32 [ %41, %sw.bb2.i25 ], [ %38, %sw.bb.i22 ]
  %and = and i32 %retval.0.i26, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool4.not = icmp eq i32 %and, 0
  br i1 %tobool4.not, label %lpuart32_read.exit27.if.end7_crit_edge, label %if.then5

lpuart32_read.exit27.if.end7_crit_edge:           ; preds = %lpuart32_read.exit27
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end7

if.then5:                                         ; preds = %lpuart32_read.exit27
  call void @__sanitizer_cov_trace_pc() #14
  tail call fastcc void @lpuart32_transmit_buffer(ptr noundef %port)
  br label %if.end7

if.end7:                                          ; preds = %if.then5, %lpuart32_read.exit27.if.end7_crit_edge, %lpuart32_write.exit.if.end7_crit_edge, %if.then1, %lpuart_stopped_or_empty.exit.if.end7_crit_edge, %land.lhs.true.i.i.if.end7_crit_edge, %if.then.if.end7_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @lpuart32_stop_rx(ptr nocapture noundef readonly %port) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %iotype.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 26
  %0 = ptrtoint ptr %iotype.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %iotype.i, align 2
  %2 = zext i8 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.88)
  switch i8 %1, label %entry.lpuart32_read.exit_crit_edge [
    i8 3, label %sw.bb.i
    i8 6, label %sw.bb2.i
  ]

entry.lpuart32_read.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %lpuart32_read.exit

sw.bb.i:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %membase.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 2
  %3 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %membase.i, align 4
  %add.ptr.i = getelementptr i8, ptr %4, i32 8
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #12, !srcloc !180
  %6 = tail call i32 @llvm.bswap.i32(i32 %5) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !181
  br label %lpuart32_read.exitthread-pre-split

sw.bb2.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %membase4.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 2
  %7 = ptrtoint ptr %membase4.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %membase4.i, align 4
  %add.ptr5.i = getelementptr i8, ptr %8, i32 8
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5.i) #12, !srcloc !180
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !182
  br label %lpuart32_read.exitthread-pre-split

lpuart32_read.exitthread-pre-split:               ; preds = %sw.bb2.i, %sw.bb.i
  %retval.0.i.ph = phi i32 [ %6, %sw.bb.i ], [ %9, %sw.bb2.i ]
  %10 = ptrtoint ptr %iotype.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %.pr = load i8, ptr %iotype.i, align 2
  br label %lpuart32_read.exit

lpuart32_read.exit:                               ; preds = %lpuart32_read.exitthread-pre-split, %entry.lpuart32_read.exit_crit_edge
  %11 = phi i8 [ %.pr, %lpuart32_read.exitthread-pre-split ], [ %1, %entry.lpuart32_read.exit_crit_edge ]
  %retval.0.i = phi i32 [ %retval.0.i.ph, %lpuart32_read.exitthread-pre-split ], [ 0, %entry.lpuart32_read.exit_crit_edge ]
  %and = and i32 %retval.0.i, -262145
  %12 = zext i8 %11 to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.89)
  switch i8 %11, label %lpuart32_read.exit.lpuart32_write.exit_crit_edge [
    i8 3, label %do.body.i
    i8 6, label %do.body2.i
  ]

lpuart32_read.exit.lpuart32_write.exit_crit_edge: ; preds = %lpuart32_read.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %lpuart32_write.exit

do.body.i:                                        ; preds = %lpuart32_read.exit
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !183
  tail call void @arm_heavy_mb() #12
  %13 = tail call i32 @llvm.bswap.i32(i32 %and) #12
  %membase.i3 = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 2
  %14 = ptrtoint ptr %membase.i3 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %membase.i3, align 4
  %add.ptr.i4 = getelementptr i8, ptr %15, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i4, i32 %13) #12, !srcloc !184
  br label %lpuart32_write.exit

do.body2.i:                                       ; preds = %lpuart32_read.exit
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !185
  tail call void @arm_heavy_mb() #12
  %membase4.i5 = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 2
  %16 = ptrtoint ptr %membase4.i5 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %membase4.i5, align 4
  %add.ptr5.i6 = getelementptr i8, ptr %17, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5.i6, i32 %and) #12, !srcloc !184
  br label %lpuart32_write.exit

lpuart32_write.exit:                              ; preds = %do.body2.i, %do.body.i, %lpuart32_read.exit.lpuart32_write.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @lpuart32_break_ctl(ptr nocapture noundef readonly %port, i32 noundef %break_state) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %iotype.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 26
  %0 = ptrtoint ptr %iotype.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %iotype.i, align 2
  %2 = zext i8 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.90)
  switch i8 %1, label %entry.lpuart32_read.exit_crit_edge [
    i8 3, label %sw.bb.i
    i8 6, label %sw.bb2.i
  ]

entry.lpuart32_read.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %lpuart32_read.exit

sw.bb.i:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %membase.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 2
  %3 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %membase.i, align 4
  %add.ptr.i = getelementptr i8, ptr %4, i32 8
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #12, !srcloc !180
  %6 = tail call i32 @llvm.bswap.i32(i32 %5) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !181
  br label %lpuart32_read.exitthread-pre-split

sw.bb2.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %membase4.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 2
  %7 = ptrtoint ptr %membase4.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %membase4.i, align 4
  %add.ptr5.i = getelementptr i8, ptr %8, i32 8
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5.i) #12, !srcloc !180
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !182
  br label %lpuart32_read.exitthread-pre-split

lpuart32_read.exitthread-pre-split:               ; preds = %sw.bb2.i, %sw.bb.i
  %retval.0.i.ph = phi i32 [ %6, %sw.bb.i ], [ %9, %sw.bb2.i ]
  %10 = ptrtoint ptr %iotype.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %.pr = load i8, ptr %iotype.i, align 2
  br label %lpuart32_read.exit

lpuart32_read.exit:                               ; preds = %lpuart32_read.exitthread-pre-split, %entry.lpuart32_read.exit_crit_edge
  %11 = phi i8 [ %.pr, %lpuart32_read.exitthread-pre-split ], [ %1, %entry.lpuart32_read.exit_crit_edge ]
  %retval.0.i = phi i32 [ %retval.0.i.ph, %lpuart32_read.exitthread-pre-split ], [ 0, %entry.lpuart32_read.exit_crit_edge ]
  %and = and i32 %retval.0.i, -65537
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %break_state)
  %cmp.not = icmp eq i32 %break_state, 0
  %masksel = select i1 %cmp.not, i32 0, i32 65536
  %spec.select = or i32 %and, %masksel
  %12 = zext i8 %11 to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.91)
  switch i8 %11, label %lpuart32_read.exit.lpuart32_write.exit_crit_edge [
    i8 3, label %do.body.i
    i8 6, label %do.body2.i
  ]

lpuart32_read.exit.lpuart32_write.exit_crit_edge: ; preds = %lpuart32_read.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %lpuart32_write.exit

do.body.i:                                        ; preds = %lpuart32_read.exit
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !183
  tail call void @arm_heavy_mb() #12
  %13 = tail call i32 @llvm.bswap.i32(i32 %spec.select) #12
  %membase.i4 = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 2
  %14 = ptrtoint ptr %membase.i4 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %membase.i4, align 4
  %add.ptr.i5 = getelementptr i8, ptr %15, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i5, i32 %13) #12, !srcloc !184
  br label %lpuart32_write.exit

do.body2.i:                                       ; preds = %lpuart32_read.exit
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !185
  tail call void @arm_heavy_mb() #12
  %membase4.i6 = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 2
  %16 = ptrtoint ptr %membase4.i6 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %membase4.i6, align 4
  %add.ptr5.i7 = getelementptr i8, ptr %17, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5.i7, i32 %spec.select) #12, !srcloc !184
  br label %lpuart32_write.exit

lpuart32_write.exit:                              ; preds = %do.body2.i, %do.body.i, %lpuart32_read.exit.lpuart32_write.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lpuart32_startup(ptr noundef %port) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %iotype.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 26
  %0 = ptrtoint ptr %iotype.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %iotype.i, align 2
  %2 = zext i8 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.92)
  switch i8 %1, label %entry.lpuart32_read.exit_crit_edge [
    i8 3, label %sw.bb.i
    i8 6, label %sw.bb2.i
  ]

entry.lpuart32_read.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %lpuart32_read.exit

sw.bb.i:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %membase.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 2
  %3 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %membase.i, align 4
  %add.ptr.i = getelementptr i8, ptr %4, i32 24
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #12, !srcloc !180
  %6 = tail call i32 @llvm.bswap.i32(i32 %5) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !181
  br label %lpuart32_read.exit

sw.bb2.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %membase4.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 2
  %7 = ptrtoint ptr %membase4.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %membase4.i, align 4
  %add.ptr5.i = getelementptr i8, ptr %8, i32 24
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5.i) #12, !srcloc !180
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !182
  br label %lpuart32_read.exit

lpuart32_read.exit:                               ; preds = %sw.bb2.i, %sw.bb.i, %entry.lpuart32_read.exit_crit_edge
  %retval.0.i = phi i32 [ %9, %sw.bb2.i ], [ %6, %sw.bb.i ], [ 0, %entry.lpuart32_read.exit_crit_edge ]
  %shr = lshr i32 %retval.0.i, 4
  %and = and i32 %shr, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %add.op = shl nuw nsw i32 2, %and
  %shl = select i1 %tobool.not, i32 1, i32 %add.op
  %txfifo_size = getelementptr inbounds %struct.lpuart_port, ptr %port, i32 0, i32 4
  %10 = ptrtoint ptr %txfifo_size to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %shl, ptr %txfifo_size, align 4
  %fifosize = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 23
  %11 = ptrtoint ptr %fifosize to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %shl, ptr %fifosize, align 4
  %and7 = and i32 %retval.0.i, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7)
  %tobool8.not = icmp eq i32 %and7, 0
  %add12.op = shl nuw nsw i32 2, %and7
  %shl16 = select i1 %tobool8.not, i32 1, i32 %add12.op
  %rxfifo_size = getelementptr inbounds %struct.lpuart_port, ptr %port, i32 0, i32 5
  %12 = ptrtoint ptr %rxfifo_size to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %shl16, ptr %rxfifo_size, align 4
  %devtype.i = getelementptr inbounds %struct.lpuart_port, ptr %port, i32 0, i32 1
  %13 = ptrtoint ptr %devtype.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %devtype.i, align 4
  %15 = add i32 %14, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %15)
  %16 = icmp ult i32 %15, 2
  br i1 %16, label %if.then, label %lpuart32_read.exit.if.end_crit_edge

lpuart32_read.exit.if.end_crit_edge:              ; preds = %lpuart32_read.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %lpuart32_read.exit
  call void @__sanitizer_cov_trace_pc() #14
  %17 = ptrtoint ptr %rxfifo_size to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 16, ptr %rxfifo_size, align 4
  %18 = ptrtoint ptr %txfifo_size to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 16, ptr %txfifo_size, align 4
  %19 = ptrtoint ptr %fifosize to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 16, ptr %fifosize, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %lpuart32_read.exit.if.end_crit_edge
  tail call fastcc void @lpuart_request_dma(ptr noundef %port)
  %call27 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %port) #12
  tail call fastcc void @lpuart32_setup_watermark_enable(ptr noundef %port)
  tail call fastcc void @lpuart_rx_dma_startup(ptr noundef %port)
  tail call fastcc void @lpuart_tx_dma_startup(ptr noundef %port)
  tail call fastcc void @lpuart32_configure(ptr noundef %port)
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %port, i32 noundef %call27) #12
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @lpuart32_shutdown(ptr noundef %port) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %port) #12
  %iotype.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 26
  %0 = ptrtoint ptr %iotype.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %iotype.i, align 2
  %2 = zext i8 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.93)
  switch i8 %1, label %entry.lpuart32_read.exit_crit_edge [
    i8 3, label %sw.bb.i
    i8 6, label %sw.bb2.i
  ]

entry.lpuart32_read.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %lpuart32_read.exit

sw.bb.i:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %membase.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 2
  %3 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %membase.i, align 4
  %add.ptr.i = getelementptr i8, ptr %4, i32 8
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #12, !srcloc !180
  %6 = tail call i32 @llvm.bswap.i32(i32 %5) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !181
  br label %lpuart32_read.exitthread-pre-split

sw.bb2.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %membase4.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 2
  %7 = ptrtoint ptr %membase4.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %membase4.i, align 4
  %add.ptr5.i = getelementptr i8, ptr %8, i32 8
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5.i) #12, !srcloc !180
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !182
  br label %lpuart32_read.exitthread-pre-split

lpuart32_read.exitthread-pre-split:               ; preds = %sw.bb2.i, %sw.bb.i
  %retval.0.i.ph = phi i32 [ %6, %sw.bb.i ], [ %9, %sw.bb2.i ]
  %10 = ptrtoint ptr %iotype.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %.pr = load i8, ptr %iotype.i, align 2
  br label %lpuart32_read.exit

lpuart32_read.exit:                               ; preds = %lpuart32_read.exitthread-pre-split, %entry.lpuart32_read.exit_crit_edge
  %11 = phi i8 [ %.pr, %lpuart32_read.exitthread-pre-split ], [ %1, %entry.lpuart32_read.exit_crit_edge ]
  %retval.0.i = phi i32 [ %retval.0.i.ph, %lpuart32_read.exitthread-pre-split ], [ 0, %entry.lpuart32_read.exit_crit_edge ]
  %and = and i32 %retval.0.i, -15466497
  %12 = zext i8 %11 to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.94)
  switch i8 %11, label %lpuart32_read.exit.lpuart32_write.exit_crit_edge [
    i8 3, label %do.body.i
    i8 6, label %do.body2.i
  ]

lpuart32_read.exit.lpuart32_write.exit_crit_edge: ; preds = %lpuart32_read.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %lpuart32_write.exit

do.body.i:                                        ; preds = %lpuart32_read.exit
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !183
  tail call void @arm_heavy_mb() #12
  %13 = tail call i32 @llvm.bswap.i32(i32 %and) #12
  %membase.i14 = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 2
  %14 = ptrtoint ptr %membase.i14 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %membase.i14, align 4
  %add.ptr.i15 = getelementptr i8, ptr %15, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i15, i32 %13) #12, !srcloc !184
  br label %lpuart32_write.exit

do.body2.i:                                       ; preds = %lpuart32_read.exit
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !185
  tail call void @arm_heavy_mb() #12
  %membase4.i16 = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 2
  %16 = ptrtoint ptr %membase4.i16 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %membase4.i16, align 4
  %add.ptr5.i17 = getelementptr i8, ptr %17, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5.i17, i32 %and) #12, !srcloc !184
  br label %lpuart32_write.exit

lpuart32_write.exit:                              ; preds = %do.body2.i, %do.body.i, %lpuart32_read.exit.lpuart32_write.exit_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %port, i32 noundef %call3) #12
  tail call fastcc void @lpuart_dma_shutdown(ptr noundef %port)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @lpuart_flush_buffer(ptr noundef %port) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %dma_tx_chan = getelementptr inbounds %struct.lpuart_port, ptr %port, i32 0, i32 8
  %0 = ptrtoint ptr %dma_tx_chan to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dma_tx_chan, align 4
  %lpuart_dma_tx_use = getelementptr inbounds %struct.lpuart_port, ptr %port, i32 0, i32 6
  %2 = ptrtoint ptr %lpuart_dma_tx_use to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %lpuart_dma_tx_use, align 4, !range !194
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %entry.if.end4_crit_edge, label %if.then

entry.if.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end4

if.then:                                          ; preds = %entry
  %dma_tx_in_progress = getelementptr inbounds %struct.lpuart_port, ptr %port, i32 0, i32 16
  %4 = ptrtoint ptr %dma_tx_in_progress to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %dma_tx_in_progress, align 4, !range !194
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool1.not = icmp eq i8 %5, 0
  br i1 %tobool1.not, label %if.then.if.end_crit_edge, label %if.then2

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then2:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 4
  %dev = getelementptr inbounds %struct.dma_device, ptr %7, i32 0, i32 15
  %8 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev, align 4
  %tx_sgl = getelementptr inbounds %struct.lpuart_port, ptr %port, i32 0, i32 20
  %dma_tx_nents = getelementptr inbounds %struct.lpuart_port, ptr %port, i32 0, i32 23
  %10 = ptrtoint ptr %dma_tx_nents to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %dma_tx_nents, align 4
  tail call void @dma_unmap_sg_attrs(ptr noundef %9, ptr noundef %tx_sgl, i32 noundef %11, i32 noundef 1, i32 noundef 0) #12
  %12 = ptrtoint ptr %dma_tx_in_progress to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 0, ptr %dma_tx_in_progress, align 4
  br label %if.end

if.end:                                           ; preds = %if.then2, %if.then.if.end_crit_edge
  %13 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %1, align 4
  %device_terminate_all.i = getelementptr inbounds %struct.dma_device, ptr %14, i32 0, i32 47
  %15 = ptrtoint ptr %device_terminate_all.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %device_terminate_all.i, align 4
  %tobool.not.i = icmp eq ptr %16, null
  br i1 %tobool.not.i, label %if.end.if.end4_crit_edge, label %if.then.i

if.end.if.end4_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end4

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %call.i = tail call i32 %16(ptr noundef %1) #12
  br label %if.end4

if.end4:                                          ; preds = %if.then.i, %if.end.if.end4_crit_edge, %entry.if.end4_crit_edge
  %iotype.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 26
  %17 = ptrtoint ptr %iotype.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %iotype.i, align 2
  %19 = zext i8 %18 to i64
  call void @__sanitizer_cov_trace_switch(i64 %19, ptr @__sancov_gen_cov_switch_values.95)
  switch i8 %18, label %if.else [
    i8 3, label %sw.bb.i
    i8 6, label %sw.bb2.i
  ]

sw.bb.i:                                          ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #14
  %membase.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 2
  %20 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %membase.i, align 4
  %add.ptr.i = getelementptr i8, ptr %21, i32 24
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #12, !srcloc !180
  %23 = tail call i32 @llvm.bswap.i32(i32 %22) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !181
  br label %lpuart32_read.exitthread-pre-split

sw.bb2.i:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #14
  %membase4.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 2
  %24 = ptrtoint ptr %membase4.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %membase4.i, align 4
  %add.ptr5.i = getelementptr i8, ptr %25, i32 24
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5.i) #12, !srcloc !180
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !182
  br label %lpuart32_read.exitthread-pre-split

lpuart32_read.exitthread-pre-split:               ; preds = %sw.bb2.i, %sw.bb.i
  %retval.0.i.ph = phi i32 [ %23, %sw.bb.i ], [ %26, %sw.bb2.i ]
  %27 = ptrtoint ptr %iotype.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %.pr = load i8, ptr %iotype.i, align 2
  %or = or i32 %retval.0.i.ph, 49152
  %28 = zext i8 %.pr to i64
  call void @__sanitizer_cov_trace_switch(i64 %28, ptr @__sancov_gen_cov_switch_values.96)
  switch i8 %.pr, label %lpuart32_read.exitthread-pre-split.if.end20_crit_edge [
    i8 3, label %do.body.i
    i8 6, label %do.body2.i
  ]

lpuart32_read.exitthread-pre-split.if.end20_crit_edge: ; preds = %lpuart32_read.exitthread-pre-split
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end20

do.body.i:                                        ; preds = %lpuart32_read.exitthread-pre-split
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !183
  tail call void @arm_heavy_mb() #12
  %29 = tail call i32 @llvm.bswap.i32(i32 %or) #12
  %membase.i37 = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 2
  %30 = ptrtoint ptr %membase.i37 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %membase.i37, align 4
  %add.ptr.i38 = getelementptr i8, ptr %31, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i38, i32 %29) #12, !srcloc !184
  br label %if.end20

do.body2.i:                                       ; preds = %lpuart32_read.exitthread-pre-split
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !185
  tail call void @arm_heavy_mb() #12
  %membase4.i39 = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 2
  %32 = ptrtoint ptr %membase4.i39 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %membase4.i39, align 4
  %add.ptr5.i40 = getelementptr i8, ptr %33, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5.i40, i32 %or) #12, !srcloc !184
  br label %if.end20

if.else:                                          ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #14
  %membase = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 2
  %34 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %membase, align 4
  %add.ptr11 = getelementptr i8, ptr %35, i32 17
  %36 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr11) #12, !srcloc !186
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !208
  %37 = or i8 %36, -64
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !209
  tail call void @arm_heavy_mb() #12
  %38 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %membase, align 4
  %add.ptr19 = getelementptr i8, ptr %39, i32 17
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr19, i8 %37) #12, !srcloc !191
  br label %if.end20

if.end20:                                         ; preds = %if.else, %do.body2.i, %do.body.i, %lpuart32_read.exitthread-pre-split.if.end20_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @lpuart32_set_termios(ptr noundef %port, ptr noundef %termios, ptr noundef %old) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %old, null
  br i1 %tobool.not, label %entry.cond.end_crit_edge, label %cond.true

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.end

cond.true:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %c_cflag = getelementptr inbounds %struct.ktermios, ptr %old, i32 0, i32 2
  %0 = ptrtoint ptr %c_cflag to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %c_cflag, align 4
  %and = and i32 %1, 48
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %entry.cond.end_crit_edge
  %cond = phi i32 [ %and, %cond.true ], [ 48, %entry.cond.end_crit_edge ]
  %iotype.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 26
  %2 = ptrtoint ptr %iotype.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %iotype.i, align 2
  %4 = zext i8 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.97)
  switch i8 %3, label %cond.end.lpuart32_read.exit_crit_edge [
    i8 3, label %sw.bb.i
    i8 6, label %sw.bb2.i
  ]

cond.end.lpuart32_read.exit_crit_edge:            ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %lpuart32_read.exit

sw.bb.i:                                          ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #14
  %membase.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 2
  %5 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %membase.i, align 4
  %add.ptr.i = getelementptr i8, ptr %6, i32 8
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #12, !srcloc !180
  %8 = tail call i32 @llvm.bswap.i32(i32 %7) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !181
  br label %lpuart32_read.exitthread-pre-split

sw.bb2.i:                                         ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #14
  %membase4.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 2
  %9 = ptrtoint ptr %membase4.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %membase4.i, align 4
  %add.ptr5.i = getelementptr i8, ptr %10, i32 8
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5.i) #12, !srcloc !180
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !182
  br label %lpuart32_read.exitthread-pre-split

lpuart32_read.exitthread-pre-split:               ; preds = %sw.bb2.i, %sw.bb.i
  %retval.0.i.ph = phi i32 [ %8, %sw.bb.i ], [ %11, %sw.bb2.i ]
  %12 = ptrtoint ptr %iotype.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %.pr = load i8, ptr %iotype.i, align 2
  br label %lpuart32_read.exit

lpuart32_read.exit:                               ; preds = %lpuart32_read.exitthread-pre-split, %cond.end.lpuart32_read.exit_crit_edge
  %13 = phi i8 [ %.pr, %lpuart32_read.exitthread-pre-split ], [ %3, %cond.end.lpuart32_read.exit_crit_edge ]
  %retval.0.i = phi i32 [ %retval.0.i.ph, %lpuart32_read.exitthread-pre-split ], [ 0, %cond.end.lpuart32_read.exit_crit_edge ]
  %14 = zext i8 %13 to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values.98)
  switch i8 %13, label %lpuart32_read.exit.lpuart32_read.exit256_crit_edge [
    i8 3, label %sw.bb.i252
    i8 6, label %sw.bb2.i254
  ]

lpuart32_read.exit.lpuart32_read.exit256_crit_edge: ; preds = %lpuart32_read.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %lpuart32_read.exit256

sw.bb.i252:                                       ; preds = %lpuart32_read.exit
  call void @__sanitizer_cov_trace_pc() #14
  %membase.i251 = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 2
  %15 = ptrtoint ptr %membase.i251 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %membase.i251, align 4
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %16) #12, !srcloc !180
  %18 = tail call i32 @llvm.bswap.i32(i32 %17) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !181
  br label %lpuart32_read.exit256

sw.bb2.i254:                                      ; preds = %lpuart32_read.exit
  call void @__sanitizer_cov_trace_pc() #14
  %membase4.i253 = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 2
  %19 = ptrtoint ptr %membase4.i253 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %membase4.i253, align 4
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %20) #12, !srcloc !180
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !182
  br label %lpuart32_read.exit256

lpuart32_read.exit256:                            ; preds = %sw.bb2.i254, %sw.bb.i252, %lpuart32_read.exit.lpuart32_read.exit256_crit_edge
  %retval.0.i255 = phi i32 [ %21, %sw.bb2.i254 ], [ %18, %sw.bb.i252 ], [ 0, %lpuart32_read.exit.lpuart32_read.exit256_crit_edge ]
  %22 = ptrtoint ptr %iotype.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %iotype.i, align 2
  %24 = zext i8 %23 to i64
  call void @__sanitizer_cov_trace_switch(i64 %24, ptr @__sancov_gen_cov_switch_values.99)
  switch i8 %23, label %lpuart32_read.exit256.lpuart32_read.exit265_crit_edge [
    i8 3, label %sw.bb.i260
    i8 6, label %sw.bb2.i263
  ]

lpuart32_read.exit256.lpuart32_read.exit265_crit_edge: ; preds = %lpuart32_read.exit256
  call void @__sanitizer_cov_trace_pc() #14
  br label %lpuart32_read.exit265

sw.bb.i260:                                       ; preds = %lpuart32_read.exit256
  call void @__sanitizer_cov_trace_pc() #14
  %membase.i258 = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 2
  %25 = ptrtoint ptr %membase.i258 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %membase.i258, align 4
  %add.ptr.i259 = getelementptr i8, ptr %26, i32 20
  %27 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i259) #12, !srcloc !180
  %28 = tail call i32 @llvm.bswap.i32(i32 %27) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !181
  br label %lpuart32_read.exit265

sw.bb2.i263:                                      ; preds = %lpuart32_read.exit256
  call void @__sanitizer_cov_trace_pc() #14
  %membase4.i261 = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 2
  %29 = ptrtoint ptr %membase4.i261 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %membase4.i261, align 4
  %add.ptr5.i262 = getelementptr i8, ptr %30, i32 20
  %31 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5.i262) #12, !srcloc !180
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !182
  br label %lpuart32_read.exit265

lpuart32_read.exit265:                            ; preds = %sw.bb2.i263, %sw.bb.i260, %lpuart32_read.exit256.lpuart32_read.exit265_crit_edge
  %retval.0.i264 = phi i32 [ %31, %sw.bb2.i263 ], [ %28, %sw.bb.i260 ], [ 0, %lpuart32_read.exit256.lpuart32_read.exit265_crit_edge ]
  %c_cflag6 = getelementptr inbounds %struct.ktermios, ptr %termios, i32 0, i32 2
  %32 = ptrtoint ptr %c_cflag6 to i32
  call void @__asan_load4_noabort(i32 %32)
  %c_cflag6.promoted = load i32, ptr %c_cflag6, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %lpuart32_read.exit265
  %or300 = phi i32 [ %c_cflag6.promoted, %lpuart32_read.exit265 ], [ %or, %while.body ]
  %old_csize.0 = phi i32 [ %cond, %lpuart32_read.exit265 ], [ 48, %while.body ]
  %and7 = and i32 %or300, 48
  %33 = zext i32 %and7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %33, ptr @__sancov_gen_cov_switch_values.100)
  switch i32 %and7, label %while.body [
    i32 48, label %while.cond.if.then_crit_edge
    i32 32, label %while.cond.if.then_crit_edge301
  ]

while.cond.if.then_crit_edge301:                  ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then

while.cond.if.then_crit_edge:                     ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then

while.body:                                       ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #14
  %and12 = and i32 %or300, -49
  %or = or i32 %and12, %old_csize.0
  %34 = ptrtoint ptr %c_cflag6 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %or, ptr %c_cflag6, align 4
  br label %while.cond

if.then:                                          ; preds = %while.cond.if.then_crit_edge, %while.cond.if.then_crit_edge301
  %and20 = and i32 %retval.0.i, -17
  %and22 = and i32 %or300, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and22)
  %tobool23.not = icmp eq i32 %and22, 0
  br i1 %tobool23.not, label %if.then.if.end35_crit_edge, label %if.then24

if.then.if.end35_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end35

if.then24:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_const_cmp4(i32 48, i32 %and7)
  %cmp27.not = icmp eq i32 %and7, 48
  br i1 %cmp27.not, label %if.then24.if.end33_crit_edge, label %if.then28

if.then24.if.end33_crit_edge:                     ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end33

if.then28:                                        ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #14
  %or32 = or i32 %or300, 48
  %35 = ptrtoint ptr %c_cflag6 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %or32, ptr %c_cflag6, align 4
  br label %if.end33

if.end33:                                         ; preds = %if.then28, %if.then24.if.end33_crit_edge
  %or34 = or i32 %retval.0.i, 16
  br label %if.end35

if.end35:                                         ; preds = %if.end33, %if.then.if.end35_crit_edge
  %ctrl.1 = phi i32 [ %or34, %if.end33 ], [ %and20, %if.then.if.end35_crit_edge ]
  %rs485 = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 56
  %36 = ptrtoint ptr %rs485 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %rs485, align 4
  %and38 = and i32 %37, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and38)
  %tobool39.not = icmp eq i32 %and38, 0
  %38 = ptrtoint ptr %c_cflag6 to i32
  call void @__asan_load4_noabort(i32 %38)
  %.pr293 = load i32, ptr %c_cflag6, align 4
  br i1 %tobool39.not, label %if.end43, label %if.end43.thread

if.end43.thread:                                  ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #14
  %and42 = and i32 %.pr293, 2147483647
  br label %if.else

if.end43:                                         ; preds = %if.end35
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %.pr293)
  %tobool46.not = icmp sgt i32 %.pr293, -1
  br i1 %tobool46.not, label %if.end43.if.else_crit_edge, label %if.then47

if.end43.if.else_crit_edge:                       ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else

if.then47:                                        ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #14
  %or48 = or i32 %retval.0.i264, 9
  br label %if.end52

if.else:                                          ; preds = %if.end43.if.else_crit_edge, %if.end43.thread
  %39 = phi i32 [ %and42, %if.end43.thread ], [ %.pr293, %if.end43.if.else_crit_edge ]
  %40 = ptrtoint ptr %c_cflag6 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %39, ptr %c_cflag6, align 4
  %and51 = and i32 %retval.0.i264, -10
  br label %if.end52

if.end52:                                         ; preds = %if.else, %if.then47
  %modem.0 = phi i32 [ %or48, %if.then47 ], [ %and51, %if.else ]
  %41 = ptrtoint ptr %c_cflag6 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %c_cflag6, align 4
  %and59 = and i32 %retval.0.i255, -8193
  %and54 = shl i32 %42, 7
  %43 = and i32 %and54, 8192
  %bd.0 = or i32 %43, %and59
  %and62 = and i32 %42, 48
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %and62)
  %cmp63 = icmp eq i32 %and62, 32
  br i1 %cmp63, label %if.then64, label %if.end52.if.end67_crit_edge

if.end52.if.end67_crit_edge:                      ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end67

if.then64:                                        ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #14
  %or66 = or i32 %42, 256
  %44 = ptrtoint ptr %c_cflag6 to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %or66, ptr %c_cflag6, align 4
  br label %if.end67

if.end67:                                         ; preds = %if.then64, %if.end52.if.end67_crit_edge
  %45 = ptrtoint ptr %c_cflag6 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %c_cflag6, align 4
  %and69 = and i32 %46, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and69)
  %tobool70.not = icmp eq i32 %and69, 0
  br i1 %tobool70.not, label %if.else95, label %if.then71

if.then71:                                        ; preds = %if.end67
  %and73 = and i32 %46, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and73)
  %tobool74.not = icmp eq i32 %and73, 0
  br i1 %tobool74.not, label %if.else78, label %if.then75

if.then75:                                        ; preds = %if.then71
  call void @__sanitizer_cov_trace_pc() #14
  %and76 = and i32 %ctrl.1, -19
  %or77 = or i32 %and76, 16
  br label %if.end97

if.else78:                                        ; preds = %if.then71
  %and81 = and i32 %46, 48
  call void @__sanitizer_cov_trace_const_cmp4(i32 48, i32 %and81)
  %cmp82 = icmp eq i32 %and81, 48
  %spec.select.v = select i1 %cmp82, i32 18, i32 2
  %spec.select = or i32 %spec.select.v, %ctrl.1
  %and87 = and i32 %46, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and87)
  %tobool88.not = icmp eq i32 %and87, 0
  br i1 %tobool88.not, label %if.else91, label %if.then89

if.then89:                                        ; preds = %if.else78
  call void @__sanitizer_cov_trace_pc() #14
  %or90 = or i32 %spec.select, 1
  br label %if.end97

if.else91:                                        ; preds = %if.else78
  call void @__sanitizer_cov_trace_pc() #14
  %and92 = and i32 %spec.select, -2
  br label %if.end97

if.else95:                                        ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #14
  %and96 = and i32 %ctrl.1, -3
  br label %if.end97

if.end97:                                         ; preds = %if.else95, %if.else91, %if.then89, %if.then75
  %ctrl.3 = phi i32 [ %or77, %if.then75 ], [ %or90, %if.then89 ], [ %and92, %if.else91 ], [ %and96, %if.else95 ]
  %uartclk = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 22
  %47 = ptrtoint ptr %uartclk to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %uartclk, align 4
  %div248 = lshr i32 %48, 2
  %call98 = tail call i32 @uart_get_baud_rate(ptr noundef %port, ptr noundef %termios, ptr noundef %old, i32 noundef 50, i32 noundef %div248) #12
  br i1 %tobool.not, label %if.end97.do.body105_crit_edge, label %land.lhs.true

if.end97.do.body105_crit_edge:                    ; preds = %if.end97
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body105

land.lhs.true:                                    ; preds = %if.end97
  %lpuart_dma_rx_use = getelementptr inbounds %struct.lpuart_port, ptr %port, i32 0, i32 7
  %49 = ptrtoint ptr %lpuart_dma_rx_use to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %lpuart_dma_rx_use, align 1, !range !194
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %50)
  %tobool100.not = icmp eq i8 %50, 0
  br i1 %tobool100.not, label %land.lhs.true.do.body105_crit_edge, label %if.then101

land.lhs.true.do.body105_crit_edge:               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body105

if.then101:                                       ; preds = %land.lhs.true
  %lpuart_timer = getelementptr inbounds %struct.lpuart_port, ptr %port, i32 0, i32 18
  %call102 = tail call i32 @del_timer_sync(ptr noundef %lpuart_timer) #12
  %dma_rx_chan.i = getelementptr inbounds %struct.lpuart_port, ptr %port, i32 0, i32 9
  %51 = ptrtoint ptr %dma_rx_chan.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %dma_rx_chan.i, align 4
  %53 = ptrtoint ptr %52 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %52, align 4
  %device_terminate_all.i.i = getelementptr inbounds %struct.dma_device, ptr %54, i32 0, i32 47
  %55 = ptrtoint ptr %device_terminate_all.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %device_terminate_all.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %56, null
  br i1 %tobool.not.i.i, label %if.then101.lpuart_dma_rx_free.exit_crit_edge, label %if.then.i.i

if.then101.lpuart_dma_rx_free.exit_crit_edge:     ; preds = %if.then101
  call void @__sanitizer_cov_trace_pc() #14
  br label %lpuart_dma_rx_free.exit

if.then.i.i:                                      ; preds = %if.then101
  call void @__sanitizer_cov_trace_pc() #14
  %call.i.i = tail call i32 %56(ptr noundef %52) #12
  br label %lpuart_dma_rx_free.exit

lpuart_dma_rx_free.exit:                          ; preds = %if.then.i.i, %if.then101.lpuart_dma_rx_free.exit_crit_edge
  %57 = ptrtoint ptr %52 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %52, align 4
  %dev.i = getelementptr inbounds %struct.dma_device, ptr %58, i32 0, i32 15
  %59 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %dev.i, align 4
  %rx_sgl.i = getelementptr inbounds %struct.lpuart_port, ptr %port, i32 0, i32 19
  tail call void @dma_unmap_sg_attrs(ptr noundef %60, ptr noundef %rx_sgl.i, i32 noundef 1, i32 noundef 2, i32 noundef 0) #12
  %rx_ring.i = getelementptr inbounds %struct.lpuart_port, ptr %port, i32 0, i32 21
  %61 = ptrtoint ptr %rx_ring.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %rx_ring.i, align 4
  tail call void @kfree(ptr noundef %62) #12
  %tail.i = getelementptr inbounds %struct.lpuart_port, ptr %port, i32 0, i32 21, i32 2
  %63 = ptrtoint ptr %tail.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 0, ptr %tail.i, align 4
  %head.i = getelementptr inbounds %struct.lpuart_port, ptr %port, i32 0, i32 21, i32 1
  %64 = ptrtoint ptr %head.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 0, ptr %head.i, align 4
  %dma_rx_desc.i = getelementptr inbounds %struct.lpuart_port, ptr %port, i32 0, i32 11
  %65 = ptrtoint ptr %dma_rx_desc.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr null, ptr %dma_rx_desc.i, align 4
  %dma_rx_cookie.i = getelementptr inbounds %struct.lpuart_port, ptr %port, i32 0, i32 13
  %66 = ptrtoint ptr %dma_rx_cookie.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 -22, ptr %dma_rx_cookie.i, align 4
  br label %do.body105

do.body105:                                       ; preds = %lpuart_dma_rx_free.exit, %land.lhs.true.do.body105_crit_edge, %if.end97.do.body105_crit_edge
  %call110 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %port) #12
  %read_status_mask = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 28
  %67 = ptrtoint ptr %read_status_mask to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 0, ptr %read_status_mask, align 4
  %68 = ptrtoint ptr %termios to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %termios, align 4
  %and114 = and i32 %69, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and114)
  %tobool115.not = icmp eq i32 %and114, 0
  %spec.store.select = select i1 %tobool115.not, i32 0, i32 196608
  %70 = ptrtoint ptr %read_status_mask to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 %spec.store.select, ptr %read_status_mask, align 4
  %71 = ptrtoint ptr %termios to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %termios, align 4
  %and122 = and i32 %72, 11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and122)
  %tobool123.not = icmp eq i32 %and122, 0
  br i1 %tobool123.not, label %do.body105.if.end128_crit_edge, label %if.then124

do.body105.if.end128_crit_edge:                   ; preds = %do.body105
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end128

if.then124:                                       ; preds = %do.body105
  call void @__sanitizer_cov_trace_pc() #14
  %or127 = or i32 %spec.store.select, 131072
  %73 = ptrtoint ptr %read_status_mask to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 %or127, ptr %read_status_mask, align 4
  br label %if.end128

if.end128:                                        ; preds = %if.then124, %do.body105.if.end128_crit_edge
  %ignore_status_mask = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 29
  %74 = ptrtoint ptr %ignore_status_mask to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 0, ptr %ignore_status_mask, align 4
  %75 = ptrtoint ptr %termios to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %termios, align 4
  %and131 = shl i32 %76, 14
  %77 = and i32 %and131, 65536
  store i32 %77, ptr %ignore_status_mask, align 4
  %78 = load i32, ptr %termios, align 4
  %and139 = and i32 %78, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and139)
  %tobool140.not = icmp eq i32 %and139, 0
  br i1 %tobool140.not, label %if.end128.if.end153_crit_edge, label %if.then141

if.end128.if.end153_crit_edge:                    ; preds = %if.end128
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end153

if.then141:                                       ; preds = %if.end128
  %or144 = or i32 %77, 131072
  %79 = ptrtoint ptr %ignore_status_mask to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 %or144, ptr %ignore_status_mask, align 4
  %80 = ptrtoint ptr %termios to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %termios, align 4
  %and146 = and i32 %81, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and146)
  %tobool147.not = icmp eq i32 %and146, 0
  br i1 %tobool147.not, label %if.then141.if.end153_crit_edge, label %if.then148

if.then141.if.end153_crit_edge:                   ; preds = %if.then141
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end153

if.then148:                                       ; preds = %if.then141
  call void @__sanitizer_cov_trace_pc() #14
  %or151 = or i32 %77, 655360
  %82 = ptrtoint ptr %ignore_status_mask to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 %or151, ptr %ignore_status_mask, align 4
  br label %if.end153

if.end153:                                        ; preds = %if.then148, %if.then141.if.end153_crit_edge, %if.end128.if.end153_crit_edge
  %83 = ptrtoint ptr %c_cflag6 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %c_cflag6, align 4
  tail call void @uart_update_timeout(ptr noundef %port, i32 noundef %84, i32 noundef %call98) #12
  %membase4.i.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 2
  br label %while.cond.i

while.cond.i:                                     ; preds = %do.end.i, %if.end153
  %85 = ptrtoint ptr %iotype.i to i32
  call void @__asan_load1_noabort(i32 %85)
  %86 = load i8, ptr %iotype.i, align 2
  %87 = zext i8 %86 to i64
  call void @__sanitizer_cov_trace_switch(i64 %87, ptr @__sancov_gen_cov_switch_values.101)
  switch i8 %86, label %while.cond.i.do.end.i_crit_edge [
    i8 3, label %sw.bb.i.i
    i8 6, label %sw.bb2.i.i
  ]

while.cond.i.do.end.i_crit_edge:                  ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end.i

sw.bb.i.i:                                        ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #14
  %88 = ptrtoint ptr %membase4.i.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %membase4.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %89, i32 4
  %90 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #12, !srcloc !180
  %91 = tail call i32 @llvm.bswap.i32(i32 %90) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !181
  br label %lpuart32_read.exit.i

sw.bb2.i.i:                                       ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #14
  %92 = ptrtoint ptr %membase4.i.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %membase4.i.i, align 4
  %add.ptr5.i.i = getelementptr i8, ptr %93, i32 4
  %94 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5.i.i) #12, !srcloc !180
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !182
  br label %lpuart32_read.exit.i

lpuart32_read.exit.i:                             ; preds = %sw.bb2.i.i, %sw.bb.i.i
  %retval.0.i.i = phi i32 [ %94, %sw.bb2.i.i ], [ %91, %sw.bb.i.i ]
  %and.i = and i32 %retval.0.i.i, 4194304
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %lpuart32_read.exit.i.do.end.i_crit_edge, label %lpuart32_wait_bit_set.exit

lpuart32_read.exit.i.do.end.i_crit_edge:          ; preds = %lpuart32_read.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end.i

do.end.i:                                         ; preds = %lpuart32_read.exit.i.do.end.i_crit_edge, %while.cond.i.do.end.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !192
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #12, !srcloc !193
  br label %while.cond.i

lpuart32_wait_bit_set.exit:                       ; preds = %lpuart32_read.exit.i
  %and157 = and i32 %retval.0.i, -786433
  %95 = ptrtoint ptr %iotype.i to i32
  call void @__asan_load1_noabort(i32 %95)
  %96 = load i8, ptr %iotype.i, align 2
  %97 = zext i8 %96 to i64
  call void @__sanitizer_cov_trace_switch(i64 %97, ptr @__sancov_gen_cov_switch_values.102)
  switch i8 %96, label %lpuart32_wait_bit_set.exit.lpuart32_write.exit_crit_edge [
    i8 3, label %do.body.i
    i8 6, label %do.body2.i
  ]

lpuart32_wait_bit_set.exit.lpuart32_write.exit_crit_edge: ; preds = %lpuart32_wait_bit_set.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %lpuart32_write.exit

do.body.i:                                        ; preds = %lpuart32_wait_bit_set.exit
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !183
  tail call void @arm_heavy_mb() #12
  %98 = tail call i32 @llvm.bswap.i32(i32 %and157) #12
  %99 = ptrtoint ptr %membase4.i.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %membase4.i.i, align 4
  %add.ptr.i268 = getelementptr i8, ptr %100, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i268, i32 %98) #12, !srcloc !184
  br label %lpuart32_write.exitthread-pre-split

do.body2.i:                                       ; preds = %lpuart32_wait_bit_set.exit
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !185
  tail call void @arm_heavy_mb() #12
  %101 = ptrtoint ptr %membase4.i.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %membase4.i.i, align 4
  %add.ptr5.i270 = getelementptr i8, ptr %102, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5.i270, i32 %and157) #12, !srcloc !184
  br label %lpuart32_write.exitthread-pre-split

lpuart32_write.exitthread-pre-split:              ; preds = %do.body2.i, %do.body.i
  %103 = ptrtoint ptr %iotype.i to i32
  call void @__asan_load1_noabort(i32 %103)
  %.pr298 = load i8, ptr %iotype.i, align 2
  br label %lpuart32_write.exit

lpuart32_write.exit:                              ; preds = %lpuart32_write.exitthread-pre-split, %lpuart32_wait_bit_set.exit.lpuart32_write.exit_crit_edge
  %104 = phi i8 [ %.pr298, %lpuart32_write.exitthread-pre-split ], [ %96, %lpuart32_wait_bit_set.exit.lpuart32_write.exit_crit_edge ]
  %105 = zext i8 %104 to i64
  call void @__sanitizer_cov_trace_switch(i64 %105, ptr @__sancov_gen_cov_switch_values.103)
  switch i8 %104, label %lpuart32_write.exit.lpuart32_write.exit276_crit_edge [
    i8 3, label %do.body.i273
    i8 6, label %do.body2.i275
  ]

lpuart32_write.exit.lpuart32_write.exit276_crit_edge: ; preds = %lpuart32_write.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %lpuart32_write.exit276

do.body.i273:                                     ; preds = %lpuart32_write.exit
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !183
  tail call void @arm_heavy_mb() #12
  %106 = tail call i32 @llvm.bswap.i32(i32 %bd.0) #12
  %107 = ptrtoint ptr %membase4.i.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %membase4.i.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %108, i32 %106) #12, !srcloc !184
  br label %lpuart32_write.exit276

do.body2.i275:                                    ; preds = %lpuart32_write.exit
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !185
  tail call void @arm_heavy_mb() #12
  %109 = ptrtoint ptr %membase4.i.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %membase4.i.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %110, i32 %bd.0) #12, !srcloc !184
  br label %lpuart32_write.exit276

lpuart32_write.exit276:                           ; preds = %do.body2.i275, %do.body.i273, %lpuart32_write.exit.lpuart32_write.exit276_crit_edge
  %lpuart_dma_rx_use.i = getelementptr inbounds %struct.lpuart_port, ptr %port, i32 0, i32 7
  %111 = ptrtoint ptr %lpuart_dma_rx_use.i to i32
  call void @__asan_load1_noabort(i32 %111)
  %112 = load i8, ptr %lpuart_dma_rx_use.i, align 1, !range !194
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %112)
  %tobool.i = icmp ne i8 %112, 0
  %lpuart_dma_tx_use.i = getelementptr inbounds %struct.lpuart_port, ptr %port, i32 0, i32 6
  %113 = ptrtoint ptr %lpuart_dma_tx_use.i to i32
  call void @__asan_load1_noabort(i32 %113)
  %114 = load i8, ptr %lpuart_dma_tx_use.i, align 4, !range !194
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %114)
  %tobool1.i = icmp ne i8 %114, 0
  tail call fastcc void @__lpuart32_serial_setbrg(ptr noundef %port, i32 noundef %call98, i1 noundef zeroext %tobool.i, i1 noundef zeroext %tobool1.i) #12
  %115 = ptrtoint ptr %iotype.i to i32
  call void @__asan_load1_noabort(i32 %115)
  %116 = load i8, ptr %iotype.i, align 2
  %117 = zext i8 %116 to i64
  call void @__sanitizer_cov_trace_switch(i64 %117, ptr @__sancov_gen_cov_switch_values.104)
  switch i8 %116, label %lpuart32_write.exit276.lpuart32_write.exit284_crit_edge [
    i8 3, label %do.body.i280
    i8 6, label %do.body2.i283
  ]

lpuart32_write.exit276.lpuart32_write.exit284_crit_edge: ; preds = %lpuart32_write.exit276
  call void @__sanitizer_cov_trace_pc() #14
  br label %lpuart32_write.exit284

do.body.i280:                                     ; preds = %lpuart32_write.exit276
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !183
  tail call void @arm_heavy_mb() #12
  %118 = tail call i32 @llvm.bswap.i32(i32 %modem.0) #12
  %119 = ptrtoint ptr %membase4.i.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %membase4.i.i, align 4
  %add.ptr.i279 = getelementptr i8, ptr %120, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i279, i32 %118) #12, !srcloc !184
  br label %lpuart32_write.exit284thread-pre-split

do.body2.i283:                                    ; preds = %lpuart32_write.exit276
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !185
  tail call void @arm_heavy_mb() #12
  %121 = ptrtoint ptr %membase4.i.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %membase4.i.i, align 4
  %add.ptr5.i282 = getelementptr i8, ptr %122, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5.i282, i32 %modem.0) #12, !srcloc !184
  br label %lpuart32_write.exit284thread-pre-split

lpuart32_write.exit284thread-pre-split:           ; preds = %do.body2.i283, %do.body.i280
  %123 = ptrtoint ptr %iotype.i to i32
  call void @__asan_load1_noabort(i32 %123)
  %.pr299 = load i8, ptr %iotype.i, align 2
  br label %lpuart32_write.exit284

lpuart32_write.exit284:                           ; preds = %lpuart32_write.exit284thread-pre-split, %lpuart32_write.exit276.lpuart32_write.exit284_crit_edge
  %124 = phi i8 [ %.pr299, %lpuart32_write.exit284thread-pre-split ], [ %116, %lpuart32_write.exit276.lpuart32_write.exit284_crit_edge ]
  %125 = zext i8 %124 to i64
  call void @__sanitizer_cov_trace_switch(i64 %125, ptr @__sancov_gen_cov_switch_values.105)
  switch i8 %124, label %lpuart32_write.exit284.lpuart32_write.exit292_crit_edge [
    i8 3, label %do.body.i288
    i8 6, label %do.body2.i291
  ]

lpuart32_write.exit284.lpuart32_write.exit292_crit_edge: ; preds = %lpuart32_write.exit284
  call void @__sanitizer_cov_trace_pc() #14
  br label %lpuart32_write.exit292

do.body.i288:                                     ; preds = %lpuart32_write.exit284
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !183
  tail call void @arm_heavy_mb() #12
  %126 = tail call i32 @llvm.bswap.i32(i32 %ctrl.3) #12
  %127 = ptrtoint ptr %membase4.i.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %membase4.i.i, align 4
  %add.ptr.i287 = getelementptr i8, ptr %128, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i287, i32 %126) #12, !srcloc !184
  br label %lpuart32_write.exit292

do.body2.i291:                                    ; preds = %lpuart32_write.exit284
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !185
  tail call void @arm_heavy_mb() #12
  %129 = ptrtoint ptr %membase4.i.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %membase4.i.i, align 4
  %add.ptr5.i290 = getelementptr i8, ptr %130, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5.i290, i32 %ctrl.3) #12, !srcloc !184
  br label %lpuart32_write.exit292

lpuart32_write.exit292:                           ; preds = %do.body2.i291, %do.body.i288, %lpuart32_write.exit284.lpuart32_write.exit292_crit_edge
  br i1 %tobool.not, label %lpuart32_write.exit292.if.end173_crit_edge, label %land.lhs.true162

lpuart32_write.exit292.if.end173_crit_edge:       ; preds = %lpuart32_write.exit292
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end173

land.lhs.true162:                                 ; preds = %lpuart32_write.exit292
  %131 = ptrtoint ptr %lpuart_dma_rx_use.i to i32
  call void @__asan_load1_noabort(i32 %131)
  %132 = load i8, ptr %lpuart_dma_rx_use.i, align 1, !range !194
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %132)
  %tobool164.not = icmp eq i8 %132, 0
  br i1 %tobool164.not, label %land.lhs.true162.if.end173_crit_edge, label %if.then166

land.lhs.true162.if.end173_crit_edge:             ; preds = %land.lhs.true162
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end173

if.then166:                                       ; preds = %land.lhs.true162
  %call167 = tail call fastcc i32 @lpuart_start_rx_dma(ptr noundef %port)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call167)
  %tobool168.not = icmp eq i32 %call167, 0
  br i1 %tobool168.not, label %if.then169, label %if.else170

if.then169:                                       ; preds = %if.then166
  call void @__sanitizer_cov_trace_pc() #14
  %lpuart_timer.i = getelementptr inbounds %struct.lpuart_port, ptr %port, i32 0, i32 18
  tail call void @init_timer_key(ptr noundef %lpuart_timer.i, ptr noundef nonnull @lpuart_timer_func, i32 noundef 0, ptr noundef nonnull @.str.50, ptr noundef nonnull @rx_dma_timer_init.__key) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %133 = load volatile i32, ptr @jiffies, align 128
  %dma_rx_timeout.i = getelementptr inbounds %struct.lpuart_port, ptr %port, i32 0, i32 17
  %134 = ptrtoint ptr %dma_rx_timeout.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load i32, ptr %dma_rx_timeout.i, align 4
  %add.i = add i32 %135, %133
  %expires.i = getelementptr inbounds %struct.lpuart_port, ptr %port, i32 0, i32 18, i32 1
  %136 = ptrtoint ptr %expires.i to i32
  call void @__asan_store4_noabort(i32 %136)
  store i32 %add.i, ptr %expires.i, align 4
  tail call void @add_timer(ptr noundef %lpuart_timer.i) #12
  br label %if.end173

if.else170:                                       ; preds = %if.then166
  call void @__sanitizer_cov_trace_pc() #14
  %137 = ptrtoint ptr %lpuart_dma_rx_use.i to i32
  call void @__asan_store1_noabort(i32 %137)
  store i8 0, ptr %lpuart_dma_rx_use.i, align 1
  br label %if.end173

if.end173:                                        ; preds = %if.else170, %if.then169, %land.lhs.true162.if.end173_crit_edge, %lpuart32_write.exit292.if.end173_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %port, i32 noundef %call110) #12
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal nonnull ptr @lpuart_type(ptr nocapture noundef readnone %port) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  ret ptr @.str.54
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @lpuart_release_port(ptr nocapture noundef %port) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @lpuart_request_port(ptr nocapture noundef readnone %port) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal void @lpuart_config_port(ptr nocapture noundef writeonly %port, i32 noundef %flags) #8 align 64 {
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
  %type = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 38
  %0 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 103, ptr %type, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @lpuart_verify_port(ptr nocapture noundef readonly %port, ptr nocapture noundef readonly %ser) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ser to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %ser, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %switch.selectcmp.case1 = icmp eq i32 %1, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 103, i32 %1)
  %switch.selectcmp.case2 = icmp eq i32 %1, 103
  %switch.selectcmp = or i1 %switch.selectcmp.case1, %switch.selectcmp.case2
  %irq = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 20
  %2 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %irq, align 4
  %irq3 = getelementptr inbounds %struct.serial_struct, ptr %ser, i32 0, i32 3
  %4 = ptrtoint ptr %irq3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %irq3, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %5)
  %cmp4.not = icmp eq i32 %3, %5
  %io_type = getelementptr inbounds %struct.serial_struct, ptr %ser, i32 0, i32 9
  %6 = ptrtoint ptr %io_type to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %io_type, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %7)
  %cmp7.not = icmp eq i8 %7, 2
  %uartclk = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 22
  %8 = ptrtoint ptr %uartclk to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %uartclk, align 4
  %div32 = lshr i32 %9, 4
  %baud_base = getelementptr inbounds %struct.serial_struct, ptr %ser, i32 0, i32 7
  %10 = ptrtoint ptr %baud_base to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %baud_base, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %div32, i32 %11)
  %cmp11.not = icmp eq i32 %div32, %11
  %iobase = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 1
  %12 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %iobase, align 4
  %port15 = getelementptr inbounds %struct.serial_struct, ptr %ser, i32 0, i32 2
  %14 = ptrtoint ptr %port15 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %port15, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %15)
  %cmp16.not = icmp eq i32 %13, %15
  %hub6 = getelementptr inbounds %struct.serial_struct, ptr %ser, i32 0, i32 11
  %16 = ptrtoint ptr %hub6 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %hub6, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %cmp20.not = icmp eq i32 %17, 0
  %18 = select i1 %cmp20.not, i1 %cmp16.not, i1 false
  %19 = select i1 %18, i1 %cmp11.not, i1 false
  %20 = select i1 %19, i1 %cmp7.not, i1 false
  %21 = select i1 %20, i1 %cmp4.not, i1 false
  %22 = select i1 %21, i1 %switch.selectcmp, i1 false
  %ret.5 = select i1 %22, i32 0, i32 -22
  ret i32 %ret.5
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lpuart32_poll_init(ptr noundef %port) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %fifosize = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 23
  %0 = ptrtoint ptr %fifosize to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %fifosize, align 4
  %call5 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %port) #12
  %iotype.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 26
  %1 = ptrtoint ptr %iotype.i to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %iotype.i, align 2
  %3 = zext i8 %2 to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values.106)
  switch i8 %2, label %entry.lpuart32_write.exit_crit_edge [
    i8 3, label %do.body.i
    i8 6, label %do.body2.i
  ]

entry.lpuart32_write.exit_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %lpuart32_write.exit

do.body.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !183
  tail call void @arm_heavy_mb() #12
  %membase.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 2
  %4 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %membase.i, align 4
  %add.ptr.i = getelementptr i8, ptr %5, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 0) #12, !srcloc !184
  br label %lpuart32_write.exitthread-pre-split

do.body2.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !185
  tail call void @arm_heavy_mb() #12
  %membase4.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 2
  %6 = ptrtoint ptr %membase4.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %membase4.i, align 4
  %add.ptr5.i = getelementptr i8, ptr %7, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5.i, i32 0) #12, !srcloc !184
  br label %lpuart32_write.exitthread-pre-split

lpuart32_write.exitthread-pre-split:              ; preds = %do.body2.i, %do.body.i
  %8 = ptrtoint ptr %iotype.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %.pr = load i8, ptr %iotype.i, align 2
  br label %lpuart32_write.exit

lpuart32_write.exit:                              ; preds = %lpuart32_write.exitthread-pre-split, %entry.lpuart32_write.exit_crit_edge
  %9 = phi i8 [ %.pr, %lpuart32_write.exitthread-pre-split ], [ %2, %entry.lpuart32_write.exit_crit_edge ]
  %10 = zext i8 %9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.107)
  switch i8 %9, label %lpuart32_write.exit.lpuart32_read.exit_crit_edge [
    i8 3, label %sw.bb.i
    i8 6, label %sw.bb2.i
  ]

lpuart32_write.exit.lpuart32_read.exit_crit_edge: ; preds = %lpuart32_write.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %lpuart32_read.exit

sw.bb.i:                                          ; preds = %lpuart32_write.exit
  call void @__sanitizer_cov_trace_pc() #14
  %membase.i33 = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 2
  %11 = ptrtoint ptr %membase.i33 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %membase.i33, align 4
  %add.ptr.i34 = getelementptr i8, ptr %12, i32 24
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i34) #12, !srcloc !180
  %14 = tail call i32 @llvm.bswap.i32(i32 %13) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !181
  br label %lpuart32_read.exit

sw.bb2.i:                                         ; preds = %lpuart32_write.exit
  call void @__sanitizer_cov_trace_pc() #14
  %membase4.i35 = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 2
  %15 = ptrtoint ptr %membase4.i35 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %membase4.i35, align 4
  %add.ptr5.i36 = getelementptr i8, ptr %16, i32 24
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5.i36) #12, !srcloc !180
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !182
  br label %lpuart32_read.exit

lpuart32_read.exit:                               ; preds = %sw.bb2.i, %sw.bb.i, %lpuart32_write.exit.lpuart32_read.exit_crit_edge
  %retval.0.i = phi i32 [ %17, %sw.bb2.i ], [ %14, %sw.bb.i ], [ 0, %lpuart32_write.exit.lpuart32_read.exit_crit_edge ]
  %or12 = or i32 %retval.0.i, 136
  %18 = ptrtoint ptr %iotype.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %iotype.i, align 2
  %20 = zext i8 %19 to i64
  call void @__sanitizer_cov_trace_switch(i64 %20, ptr @__sancov_gen_cov_switch_values.108)
  switch i8 %19, label %lpuart32_read.exit.lpuart32_write.exit44_crit_edge [
    i8 3, label %do.body.i40
    i8 6, label %do.body2.i43
  ]

lpuart32_read.exit.lpuart32_write.exit44_crit_edge: ; preds = %lpuart32_read.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %lpuart32_write.exit44

do.body.i40:                                      ; preds = %lpuart32_read.exit
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !183
  tail call void @arm_heavy_mb() #12
  %21 = tail call i32 @llvm.bswap.i32(i32 %or12) #12
  %membase.i38 = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 2
  %22 = ptrtoint ptr %membase.i38 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %membase.i38, align 4
  %add.ptr.i39 = getelementptr i8, ptr %23, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i39, i32 %21) #12, !srcloc !184
  br label %lpuart32_write.exit44thread-pre-split

do.body2.i43:                                     ; preds = %lpuart32_read.exit
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !185
  tail call void @arm_heavy_mb() #12
  %membase4.i41 = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 2
  %24 = ptrtoint ptr %membase4.i41 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %membase4.i41, align 4
  %add.ptr5.i42 = getelementptr i8, ptr %25, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5.i42, i32 %or12) #12, !srcloc !184
  br label %lpuart32_write.exit44thread-pre-split

lpuart32_write.exit44thread-pre-split:            ; preds = %do.body2.i43, %do.body.i40
  %26 = ptrtoint ptr %iotype.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %.pr87 = load i8, ptr %iotype.i, align 2
  br label %lpuart32_write.exit44

lpuart32_write.exit44:                            ; preds = %lpuart32_write.exit44thread-pre-split, %lpuart32_read.exit.lpuart32_write.exit44_crit_edge
  %27 = phi i8 [ %.pr87, %lpuart32_write.exit44thread-pre-split ], [ %19, %lpuart32_read.exit.lpuart32_write.exit44_crit_edge ]
  %28 = zext i8 %27 to i64
  call void @__sanitizer_cov_trace_switch(i64 %28, ptr @__sancov_gen_cov_switch_values.109)
  switch i8 %27, label %lpuart32_write.exit44.lpuart32_write.exit52_crit_edge [
    i8 3, label %do.body.i48
    i8 6, label %do.body2.i51
  ]

lpuart32_write.exit44.lpuart32_write.exit52_crit_edge: ; preds = %lpuart32_write.exit44
  call void @__sanitizer_cov_trace_pc() #14
  br label %lpuart32_write.exit52

do.body.i48:                                      ; preds = %lpuart32_write.exit44
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !183
  tail call void @arm_heavy_mb() #12
  %membase.i46 = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 2
  %29 = ptrtoint ptr %membase.i46 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %membase.i46, align 4
  %add.ptr.i47 = getelementptr i8, ptr %30, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i47, i32 12582912) #12, !srcloc !184
  br label %lpuart32_write.exit52

do.body2.i51:                                     ; preds = %lpuart32_write.exit44
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !185
  tail call void @arm_heavy_mb() #12
  %membase4.i49 = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 2
  %31 = ptrtoint ptr %membase4.i49 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %membase4.i49, align 4
  %add.ptr5.i50 = getelementptr i8, ptr %32, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5.i50, i32 49152) #12, !srcloc !184
  br label %lpuart32_write.exit52

lpuart32_write.exit52:                            ; preds = %do.body2.i51, %do.body.i48, %lpuart32_write.exit44.lpuart32_write.exit52_crit_edge
  %33 = ptrtoint ptr %iotype.i to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %iotype.i, align 2
  %35 = zext i8 %34 to i64
  call void @__sanitizer_cov_trace_switch(i64 %35, ptr @__sancov_gen_cov_switch_values.110)
  switch i8 %34, label %lpuart32_write.exit52.if.end_crit_edge [
    i8 3, label %sw.bb.i56
    i8 6, label %sw.bb2.i59
  ]

lpuart32_write.exit52.if.end_crit_edge:           ; preds = %lpuart32_write.exit52
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

sw.bb.i56:                                        ; preds = %lpuart32_write.exit52
  call void @__sanitizer_cov_trace_pc() #14
  %membase.i54 = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 2
  %36 = ptrtoint ptr %membase.i54 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %membase.i54, align 4
  %add.ptr.i55 = getelementptr i8, ptr %37, i32 4
  %38 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i55) #12, !srcloc !180
  %39 = tail call i32 @llvm.bswap.i32(i32 %38) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !181
  br label %lpuart32_read.exit61

sw.bb2.i59:                                       ; preds = %lpuart32_write.exit52
  call void @__sanitizer_cov_trace_pc() #14
  %membase4.i57 = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 2
  %40 = ptrtoint ptr %membase4.i57 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %membase4.i57, align 4
  %add.ptr5.i58 = getelementptr i8, ptr %41, i32 4
  %42 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5.i58) #12, !srcloc !180
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !182
  br label %lpuart32_read.exit61

lpuart32_read.exit61:                             ; preds = %sw.bb2.i59, %sw.bb.i56
  %retval.0.i60 = phi i32 [ %42, %sw.bb2.i59 ], [ %39, %sw.bb.i56 ]
  %and = and i32 %retval.0.i60, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %lpuart32_read.exit61.if.endthread-pre-split_crit_edge, label %if.then

lpuart32_read.exit61.if.endthread-pre-split_crit_edge: ; preds = %lpuart32_read.exit61
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.endthread-pre-split

if.then:                                          ; preds = %lpuart32_read.exit61
  %43 = ptrtoint ptr %iotype.i to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %iotype.i, align 2
  %45 = zext i8 %44 to i64
  call void @__sanitizer_cov_trace_switch(i64 %45, ptr @__sancov_gen_cov_switch_values.111)
  switch i8 %44, label %if.then.lpuart32_read.exit70_crit_edge [
    i8 3, label %sw.bb.i65
    i8 6, label %sw.bb2.i68
  ]

if.then.lpuart32_read.exit70_crit_edge:           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %lpuart32_read.exit70

sw.bb.i65:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  %membase.i63 = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 2
  %46 = ptrtoint ptr %membase.i63 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %membase.i63, align 4
  %add.ptr.i64 = getelementptr i8, ptr %47, i32 12
  %48 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i64) #12, !srcloc !180
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !181
  br label %lpuart32_read.exit70thread-pre-split

sw.bb2.i68:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  %membase4.i66 = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 2
  %49 = ptrtoint ptr %membase4.i66 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %membase4.i66, align 4
  %add.ptr5.i67 = getelementptr i8, ptr %50, i32 12
  %51 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5.i67) #12, !srcloc !180
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !182
  br label %lpuart32_read.exit70thread-pre-split

lpuart32_read.exit70thread-pre-split:             ; preds = %sw.bb2.i68, %sw.bb.i65
  %52 = ptrtoint ptr %iotype.i to i32
  call void @__asan_load1_noabort(i32 %52)
  %.pr91 = load i8, ptr %iotype.i, align 2
  br label %lpuart32_read.exit70

lpuart32_read.exit70:                             ; preds = %lpuart32_read.exit70thread-pre-split, %if.then.lpuart32_read.exit70_crit_edge
  %53 = phi i8 [ %.pr91, %lpuart32_read.exit70thread-pre-split ], [ %44, %if.then.lpuart32_read.exit70_crit_edge ]
  %54 = zext i8 %53 to i64
  call void @__sanitizer_cov_trace_switch(i64 %54, ptr @__sancov_gen_cov_switch_values.112)
  switch i8 %53, label %lpuart32_read.exit70.if.endthread-pre-split_crit_edge [
    i8 3, label %do.body.i74
    i8 6, label %do.body2.i77
  ]

lpuart32_read.exit70.if.endthread-pre-split_crit_edge: ; preds = %lpuart32_read.exit70
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.endthread-pre-split

do.body.i74:                                      ; preds = %lpuart32_read.exit70
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !183
  tail call void @arm_heavy_mb() #12
  %membase.i72 = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 2
  %55 = ptrtoint ptr %membase.i72 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %membase.i72, align 4
  %add.ptr.i73 = getelementptr i8, ptr %56, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i73, i32 256) #12, !srcloc !184
  br label %if.endthread-pre-split

do.body2.i77:                                     ; preds = %lpuart32_read.exit70
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !185
  tail call void @arm_heavy_mb() #12
  %membase4.i75 = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 2
  %57 = ptrtoint ptr %membase4.i75 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %membase4.i75, align 4
  %add.ptr5.i76 = getelementptr i8, ptr %58, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5.i76, i32 65536) #12, !srcloc !184
  br label %if.endthread-pre-split

if.endthread-pre-split:                           ; preds = %do.body2.i77, %do.body.i74, %lpuart32_read.exit70.if.endthread-pre-split_crit_edge, %lpuart32_read.exit61.if.endthread-pre-split_crit_edge
  %59 = ptrtoint ptr %iotype.i to i32
  call void @__asan_load1_noabort(i32 %59)
  %.pr92 = load i8, ptr %iotype.i, align 2
  br label %if.end

if.end:                                           ; preds = %if.endthread-pre-split, %lpuart32_write.exit52.if.end_crit_edge
  %60 = phi i8 [ %.pr92, %if.endthread-pre-split ], [ %34, %lpuart32_write.exit52.if.end_crit_edge ]
  %61 = zext i8 %60 to i64
  call void @__sanitizer_cov_trace_switch(i64 %61, ptr @__sancov_gen_cov_switch_values.113)
  switch i8 %60, label %if.end.lpuart32_write.exit86_crit_edge [
    i8 3, label %do.body.i82
    i8 6, label %do.body2.i85
  ]

if.end.lpuart32_write.exit86_crit_edge:           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %lpuart32_write.exit86

do.body.i82:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !183
  tail call void @arm_heavy_mb() #12
  %membase.i80 = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 2
  %62 = ptrtoint ptr %membase.i80 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %membase.i80, align 4
  %add.ptr.i81 = getelementptr i8, ptr %63, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i81, i32 3072) #12, !srcloc !184
  br label %lpuart32_write.exit86

do.body2.i85:                                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !185
  tail call void @arm_heavy_mb() #12
  %membase4.i83 = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 2
  %64 = ptrtoint ptr %membase4.i83 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %membase4.i83, align 4
  %add.ptr5.i84 = getelementptr i8, ptr %65, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5.i84, i32 786432) #12, !srcloc !184
  br label %lpuart32_write.exit86

lpuart32_write.exit86:                            ; preds = %do.body2.i85, %do.body.i82, %if.end.lpuart32_write.exit86_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %port, i32 noundef %call5) #12
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @lpuart32_poll_put_char(ptr nocapture noundef readonly %port, i8 noundef zeroext %c) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %iotype.i.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 26
  %membase4.i.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 2
  br label %while.cond.i

while.cond.i:                                     ; preds = %do.end.i, %entry
  %0 = ptrtoint ptr %iotype.i.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %iotype.i.i, align 2
  %2 = zext i8 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.114)
  switch i8 %1, label %while.cond.i.do.end.i_crit_edge [
    i8 3, label %sw.bb.i.i
    i8 6, label %sw.bb2.i.i
  ]

while.cond.i.do.end.i_crit_edge:                  ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end.i

sw.bb.i.i:                                        ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #14
  %3 = ptrtoint ptr %membase4.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %membase4.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %4, i32 4
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #12, !srcloc !180
  %6 = tail call i32 @llvm.bswap.i32(i32 %5) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !181
  br label %lpuart32_read.exit.i

sw.bb2.i.i:                                       ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #14
  %7 = ptrtoint ptr %membase4.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %membase4.i.i, align 4
  %add.ptr5.i.i = getelementptr i8, ptr %8, i32 4
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5.i.i) #12, !srcloc !180
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !182
  br label %lpuart32_read.exit.i

lpuart32_read.exit.i:                             ; preds = %sw.bb2.i.i, %sw.bb.i.i
  %retval.0.i.i = phi i32 [ %9, %sw.bb2.i.i ], [ %6, %sw.bb.i.i ]
  %and.i = and i32 %retval.0.i.i, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %lpuart32_read.exit.i.do.end.i_crit_edge, label %lpuart32_wait_bit_set.exit

lpuart32_read.exit.i.do.end.i_crit_edge:          ; preds = %lpuart32_read.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end.i

do.end.i:                                         ; preds = %lpuart32_read.exit.i.do.end.i_crit_edge, %while.cond.i.do.end.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !192
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #12, !srcloc !193
  br label %while.cond.i

lpuart32_wait_bit_set.exit:                       ; preds = %lpuart32_read.exit.i
  %conv = zext i8 %c to i32
  %10 = ptrtoint ptr %iotype.i.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %iotype.i.i, align 2
  %12 = zext i8 %11 to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.115)
  switch i8 %11, label %lpuart32_wait_bit_set.exit.lpuart32_write.exit_crit_edge [
    i8 3, label %do.body.i
    i8 6, label %do.body2.i
  ]

lpuart32_wait_bit_set.exit.lpuart32_write.exit_crit_edge: ; preds = %lpuart32_wait_bit_set.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %lpuart32_write.exit

do.body.i:                                        ; preds = %lpuart32_wait_bit_set.exit
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !183
  tail call void @arm_heavy_mb() #12
  %13 = shl nuw i32 %conv, 24
  %14 = ptrtoint ptr %membase4.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %membase4.i.i, align 4
  %add.ptr.i = getelementptr i8, ptr %15, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %13) #12, !srcloc !184
  br label %lpuart32_write.exit

do.body2.i:                                       ; preds = %lpuart32_wait_bit_set.exit
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !185
  tail call void @arm_heavy_mb() #12
  %16 = ptrtoint ptr %membase4.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %membase4.i.i, align 4
  %add.ptr5.i = getelementptr i8, ptr %17, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5.i, i32 %conv) #12, !srcloc !184
  br label %lpuart32_write.exit

lpuart32_write.exit:                              ; preds = %do.body2.i, %do.body.i, %lpuart32_wait_bit_set.exit.lpuart32_write.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lpuart32_poll_get_char(ptr nocapture noundef readonly %port) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %iotype.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 26
  %0 = ptrtoint ptr %iotype.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %iotype.i, align 2
  %2 = zext i8 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.116)
  switch i8 %1, label %entry.return_crit_edge [
    i8 3, label %sw.bb.i
    i8 6, label %sw.bb2.i
  ]

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

sw.bb.i:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %membase.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 2
  %3 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %membase.i, align 4
  %add.ptr.i = getelementptr i8, ptr %4, i32 28
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #12, !srcloc !180
  %6 = tail call i32 @llvm.bswap.i32(i32 %5) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !181
  br label %lpuart32_read.exit

sw.bb2.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %membase4.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 2
  %7 = ptrtoint ptr %membase4.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %membase4.i, align 4
  %add.ptr5.i = getelementptr i8, ptr %8, i32 28
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5.i) #12, !srcloc !180
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !182
  br label %lpuart32_read.exit

lpuart32_read.exit:                               ; preds = %sw.bb2.i, %sw.bb.i
  %retval.0.i = phi i32 [ %9, %sw.bb2.i ], [ %6, %sw.bb.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 16777216, i32 %retval.0.i)
  %tobool.not = icmp ult i32 %retval.0.i, 16777216
  br i1 %tobool.not, label %lpuart32_read.exit.return_crit_edge, label %if.end

lpuart32_read.exit.return_crit_edge:              ; preds = %lpuart32_read.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

if.end:                                           ; preds = %lpuart32_read.exit
  %10 = ptrtoint ptr %iotype.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %iotype.i, align 2
  %12 = zext i8 %11 to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.117)
  switch i8 %11, label %if.end.return_crit_edge [
    i8 3, label %sw.bb.i6
    i8 6, label %sw.bb2.i9
  ]

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

sw.bb.i6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %membase.i4 = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 2
  %13 = ptrtoint ptr %membase.i4 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %membase.i4, align 4
  %add.ptr.i5 = getelementptr i8, ptr %14, i32 12
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i5) #12, !srcloc !180
  %16 = tail call i32 @llvm.bswap.i32(i32 %15) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !181
  br label %return

sw.bb2.i9:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %membase4.i7 = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 2
  %17 = ptrtoint ptr %membase4.i7 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %membase4.i7, align 4
  %add.ptr5.i8 = getelementptr i8, ptr %18, i32 12
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5.i8) #12, !srcloc !180
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !182
  br label %return

return:                                           ; preds = %sw.bb2.i9, %sw.bb.i6, %if.end.return_crit_edge, %lpuart32_read.exit.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ 16711680, %lpuart32_read.exit.return_crit_edge ], [ %19, %sw.bb2.i9 ], [ %16, %sw.bb.i6 ], [ 0, %if.end.return_crit_edge ], [ 16711680, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @lpuart_dma_tx(ptr noundef %sport) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %state = getelementptr inbounds %struct.uart_port, ptr %sport, i32 0, i32 30
  %0 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %state, align 4
  %xmit1 = getelementptr inbounds %struct.uart_state, ptr %1, i32 0, i32 2
  %tx_sgl = getelementptr inbounds %struct.lpuart_port, ptr %sport, i32 0, i32 20
  %dev3 = getelementptr inbounds %struct.uart_port, ptr %sport, i32 0, i32 45
  %2 = ptrtoint ptr %dev3 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev3, align 4
  %dma_tx_chan = getelementptr inbounds %struct.lpuart_port, ptr %sport, i32 0, i32 8
  %4 = ptrtoint ptr %dma_tx_chan to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dma_tx_chan, align 4
  %dma_tx_in_progress = getelementptr inbounds %struct.lpuart_port, ptr %sport, i32 0, i32 16
  %6 = ptrtoint ptr %dma_tx_in_progress to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %dma_tx_in_progress, align 4, !range !194
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not = icmp eq i8 %7, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %head = getelementptr inbounds %struct.uart_state, ptr %1, i32 0, i32 2, i32 1
  %8 = ptrtoint ptr %head to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %head, align 4
  %tail = getelementptr inbounds %struct.uart_state, ptr %1, i32 0, i32 2, i32 2
  %10 = ptrtoint ptr %tail to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %tail, align 4
  %sub = sub i32 %9, %11
  %and = and i32 %sub, 4095
  %dma_tx_bytes = getelementptr inbounds %struct.lpuart_port, ptr %sport, i32 0, i32 14
  %12 = ptrtoint ptr %dma_tx_bytes to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %and, ptr %dma_tx_bytes, align 4
  %13 = load i32, ptr %tail, align 4
  %14 = load i32, ptr %head, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %14)
  %cmp = icmp slt i32 %13, %14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %cmp7 = icmp eq i32 %14, 0
  %or.cond = or i1 %cmp, %cmp7
  %dma_tx_nents = getelementptr inbounds %struct.lpuart_port, ptr %sport, i32 0, i32 23
  br i1 %or.cond, label %if.then8, label %if.else

if.then8:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %15 = ptrtoint ptr %dma_tx_nents to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 1, ptr %dma_tx_nents, align 4
  %16 = ptrtoint ptr %xmit1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %xmit1, align 4
  %18 = ptrtoint ptr %tail to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %tail, align 4
  %add.ptr = getelementptr i8, ptr %17, i32 %19
  tail call void @sg_init_one(ptr noundef %tx_sgl, ptr noundef %add.ptr, i32 noundef %and) #12
  br label %if.end20

if.else:                                          ; preds = %if.end
  %20 = ptrtoint ptr %dma_tx_nents to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 2, ptr %dma_tx_nents, align 4
  tail call void @sg_init_table(ptr noundef %tx_sgl, i32 noundef 2) #12
  %21 = ptrtoint ptr %xmit1 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %xmit1, align 4
  %23 = ptrtoint ptr %tail to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %tail, align 4
  %add.ptr14 = getelementptr i8, ptr %22, i32 %24
  %sub16 = sub i32 4096, %24
  %25 = ptrtoint ptr %add.ptr14 to i32
  %cmp.i = icmp ugt ptr %add.ptr14, inttoptr (i32 -1073741825 to ptr)
  br i1 %cmp.i, label %land.lhs.true.i, label %if.else.do.body5.i_crit_edge, !prof !210

if.else.do.body5.i_crit_edge:                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body5.i

land.lhs.true.i:                                  ; preds = %if.else
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @high_memory to i32))
  %26 = load ptr, ptr @high_memory, align 4
  %cmp1.i = icmp ugt ptr %26, %add.ptr14
  br i1 %cmp1.i, label %land.rhs.i, label %land.lhs.true.i.do.body5.i_crit_edge, !prof !210

land.lhs.true.i.do.body5.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body5.i

land.rhs.i:                                       ; preds = %land.lhs.true.i
  %sub.i = add i32 %25, 1073741824
  %shr.i = lshr i32 %sub.i, 12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__pv_phys_pfn_offset to i32))
  %27 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %add.i = add i32 %27, %shr.i
  %call.i = tail call i32 @pfn_valid(i32 noundef %add.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.i = icmp eq i32 %call.i, 0
  br i1 %tobool.i, label %land.rhs.i.do.body5.i_crit_edge, label %do.end8.i, !prof !211

land.rhs.i.do.body5.i_crit_edge:                  ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body5.i

do.body5.i:                                       ; preds = %land.rhs.i.do.body5.i_crit_edge, %land.lhs.true.i.do.body5.i_crit_edge, %if.else.do.body5.i_crit_edge
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 160, 0\0A.popsection", ""() #12, !srcloc !212
  unreachable

do.end8.i:                                        ; preds = %land.rhs.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %28 = load ptr, ptr @mem_map, align 4
  %add.ptr.i = getelementptr %struct.page, ptr %28, i32 %shr.i
  %29 = ptrtoint ptr %tx_sgl to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %tx_sgl, align 4
  %31 = ptrtoint ptr %add.ptr.i to i32
  %and2.i.i.i = and i32 %31, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and2.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %do.body11.i.i.i, label %do.body5.i.i.i, !prof !210

do.body5.i.i.i:                                   ; preds = %do.end8.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 112, 0\0A.popsection", ""() #12, !srcloc !213
  unreachable

do.body11.i.i.i:                                  ; preds = %do.end8.i
  %and.i.i.i.i = and i32 %30, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.i.not.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.i.not.i.i.i, label %sg_set_buf.exit, label %do.body19.i.i.i, !prof !210

do.body19.i.i.i:                                  ; preds = %do.body11.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 114, 0\0A.popsection", ""() #12, !srcloc !214
  unreachable

sg_set_buf.exit:                                  ; preds = %do.body11.i.i.i
  %and.i = and i32 %25, 4095
  %and.i.i.i = and i32 %30, 3
  %or.i.i.i = or i32 %and.i.i.i, %31
  %32 = ptrtoint ptr %tx_sgl to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %or.i.i.i, ptr %tx_sgl, align 4
  %offset1.i.i = getelementptr inbounds %struct.lpuart_port, ptr %sport, i32 0, i32 20, i32 0, i32 1
  %33 = ptrtoint ptr %offset1.i.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %and.i, ptr %offset1.i.i, align 4
  %length.i.i = getelementptr inbounds %struct.lpuart_port, ptr %sport, i32 0, i32 20, i32 0, i32 2
  %34 = ptrtoint ptr %length.i.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %sub16, ptr %length.i.i, align 4
  %add.ptr17 = getelementptr %struct.lpuart_port, ptr %sport, i32 0, i32 20, i32 1
  %35 = ptrtoint ptr %xmit1 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %xmit1, align 4
  %37 = ptrtoint ptr %head to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %head, align 4
  %39 = ptrtoint ptr %36 to i32
  %cmp.i86 = icmp ugt ptr %36, inttoptr (i32 -1073741825 to ptr)
  br i1 %cmp.i86, label %land.lhs.true.i88, label %sg_set_buf.exit.do.body5.i95_crit_edge, !prof !210

sg_set_buf.exit.do.body5.i95_crit_edge:           ; preds = %sg_set_buf.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body5.i95

land.lhs.true.i88:                                ; preds = %sg_set_buf.exit
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @high_memory to i32))
  %40 = load ptr, ptr @high_memory, align 4
  %cmp1.i87 = icmp ugt ptr %40, %36
  br i1 %cmp1.i87, label %land.rhs.i94, label %land.lhs.true.i88.do.body5.i95_crit_edge, !prof !210

land.lhs.true.i88.do.body5.i95_crit_edge:         ; preds = %land.lhs.true.i88
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body5.i95

land.rhs.i94:                                     ; preds = %land.lhs.true.i88
  %sub.i89 = add i32 %39, 1073741824
  %shr.i90 = lshr i32 %sub.i89, 12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__pv_phys_pfn_offset to i32))
  %41 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %add.i91 = add i32 %41, %shr.i90
  %call.i92 = tail call i32 @pfn_valid(i32 noundef %add.i91) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i92)
  %tobool.i93 = icmp eq i32 %call.i92, 0
  br i1 %tobool.i93, label %land.rhs.i94.do.body5.i95_crit_edge, label %do.end8.i99, !prof !211

land.rhs.i94.do.body5.i95_crit_edge:              ; preds = %land.rhs.i94
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body5.i95

do.body5.i95:                                     ; preds = %land.rhs.i94.do.body5.i95_crit_edge, %land.lhs.true.i88.do.body5.i95_crit_edge, %sg_set_buf.exit.do.body5.i95_crit_edge
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 160, 0\0A.popsection", ""() #12, !srcloc !212
  unreachable

do.end8.i99:                                      ; preds = %land.rhs.i94
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %42 = load ptr, ptr @mem_map, align 4
  %add.ptr.i96 = getelementptr %struct.page, ptr %42, i32 %shr.i90
  %43 = ptrtoint ptr %add.ptr17 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %add.ptr17, align 4
  %45 = ptrtoint ptr %add.ptr.i96 to i32
  %and2.i.i.i97 = and i32 %45, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i.i.i97)
  %tobool.not.i.i.i98 = icmp eq i32 %and2.i.i.i97, 0
  br i1 %tobool.not.i.i.i98, label %do.body11.i.i.i103, label %do.body5.i.i.i100, !prof !210

do.body5.i.i.i100:                                ; preds = %do.end8.i99
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 112, 0\0A.popsection", ""() #12, !srcloc !213
  unreachable

do.body11.i.i.i103:                               ; preds = %do.end8.i99
  %and.i.i.i.i101 = and i32 %44, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i101)
  %tobool.i.not.i.i.i102 = icmp eq i32 %and.i.i.i.i101, 0
  br i1 %tobool.i.not.i.i.i102, label %sg_set_buf.exit110, label %do.body19.i.i.i104, !prof !210

do.body19.i.i.i104:                               ; preds = %do.body11.i.i.i103
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 114, 0\0A.popsection", ""() #12, !srcloc !214
  unreachable

sg_set_buf.exit110:                               ; preds = %do.body11.i.i.i103
  call void @__sanitizer_cov_trace_pc() #14
  %and.i105 = and i32 %39, 4095
  %and.i.i.i106 = and i32 %44, 3
  %or.i.i.i107 = or i32 %and.i.i.i106, %45
  %46 = ptrtoint ptr %add.ptr17 to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %or.i.i.i107, ptr %add.ptr17, align 4
  %offset1.i.i108 = getelementptr %struct.lpuart_port, ptr %sport, i32 0, i32 20, i32 1, i32 1
  %47 = ptrtoint ptr %offset1.i.i108 to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %and.i105, ptr %offset1.i.i108, align 4
  %length.i.i109 = getelementptr %struct.lpuart_port, ptr %sport, i32 0, i32 20, i32 1, i32 2
  %48 = ptrtoint ptr %length.i.i109 to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %38, ptr %length.i.i109, align 4
  br label %if.end20

if.end20:                                         ; preds = %sg_set_buf.exit110, %if.then8
  %49 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %5, align 4
  %dev21 = getelementptr inbounds %struct.dma_device, ptr %50, i32 0, i32 15
  %51 = ptrtoint ptr %dev21 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %dev21, align 4
  %dma_tx_nents22 = getelementptr inbounds %struct.lpuart_port, ptr %sport, i32 0, i32 23
  %53 = ptrtoint ptr %dma_tx_nents22 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %dma_tx_nents22, align 4
  %call = tail call i32 @dma_map_sg_attrs(ptr noundef %52, ptr noundef %tx_sgl, i32 noundef %54, i32 noundef 1, i32 noundef 0) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool23.not = icmp eq i32 %call, 0
  br i1 %tobool23.not, label %do.end, label %if.end25

do.end:                                           ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.28) #15
  br label %cleanup

if.end25:                                         ; preds = %if.end20
  %tobool.not.i = icmp eq ptr %5, null
  br i1 %tobool.not.i, label %if.end25.dmaengine_prep_slave_sg.exit.thread_crit_edge, label %lor.lhs.false.i

if.end25.dmaengine_prep_slave_sg.exit.thread_crit_edge: ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #14
  br label %dmaengine_prep_slave_sg.exit.thread

lor.lhs.false.i:                                  ; preds = %if.end25
  %55 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %5, align 4
  %tobool1.not.i = icmp eq ptr %56, null
  br i1 %tobool1.not.i, label %lor.lhs.false.i.dmaengine_prep_slave_sg.exit.thread_crit_edge, label %lor.lhs.false2.i

lor.lhs.false.i.dmaengine_prep_slave_sg.exit.thread_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %dmaengine_prep_slave_sg.exit.thread

lor.lhs.false2.i:                                 ; preds = %lor.lhs.false.i
  %device_prep_slave_sg.i = getelementptr inbounds %struct.dma_device, ptr %56, i32 0, i32 39
  %57 = ptrtoint ptr %device_prep_slave_sg.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %device_prep_slave_sg.i, align 4
  %tobool4.not.i = icmp eq ptr %58, null
  br i1 %tobool4.not.i, label %lor.lhs.false2.i.dmaengine_prep_slave_sg.exit.thread_crit_edge, label %dmaengine_prep_slave_sg.exit

lor.lhs.false2.i.dmaengine_prep_slave_sg.exit.thread_crit_edge: ; preds = %lor.lhs.false2.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %dmaengine_prep_slave_sg.exit.thread

dmaengine_prep_slave_sg.exit.thread:              ; preds = %lor.lhs.false2.i.dmaengine_prep_slave_sg.exit.thread_crit_edge, %lor.lhs.false.i.dmaengine_prep_slave_sg.exit.thread_crit_edge, %if.end25.dmaengine_prep_slave_sg.exit.thread_crit_edge
  %dma_tx_desc114 = getelementptr inbounds %struct.lpuart_port, ptr %sport, i32 0, i32 10
  %59 = ptrtoint ptr %dma_tx_desc114 to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr null, ptr %dma_tx_desc114, align 4
  br label %if.then29

dmaengine_prep_slave_sg.exit:                     ; preds = %lor.lhs.false2.i
  %call.i111 = tail call ptr %58(ptr noundef nonnull %5, ptr noundef %tx_sgl, i32 noundef %call, i32 noundef 1, i32 noundef 1, ptr noundef null) #12
  %dma_tx_desc = getelementptr inbounds %struct.lpuart_port, ptr %sport, i32 0, i32 10
  %60 = ptrtoint ptr %dma_tx_desc to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr %call.i111, ptr %dma_tx_desc, align 4
  %tobool28.not = icmp eq ptr %call.i111, null
  br i1 %tobool28.not, label %dmaengine_prep_slave_sg.exit.if.then29_crit_edge, label %if.end36

dmaengine_prep_slave_sg.exit.if.then29_crit_edge: ; preds = %dmaengine_prep_slave_sg.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then29

if.then29:                                        ; preds = %dmaengine_prep_slave_sg.exit.if.then29_crit_edge, %dmaengine_prep_slave_sg.exit.thread
  %61 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %5, align 4
  %dev31 = getelementptr inbounds %struct.dma_device, ptr %62, i32 0, i32 15
  %63 = ptrtoint ptr %dev31 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %dev31, align 4
  %65 = ptrtoint ptr %dma_tx_nents22 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %dma_tx_nents22, align 4
  tail call void @dma_unmap_sg_attrs(ptr noundef %64, ptr noundef %tx_sgl, i32 noundef %66, i32 noundef 1, i32 noundef 0) #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.31) #15
  br label %cleanup

if.end36:                                         ; preds = %dmaengine_prep_slave_sg.exit
  call void @__sanitizer_cov_trace_pc() #14
  %callback = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %call.i111, i32 0, i32 6
  %67 = ptrtoint ptr %callback to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr @lpuart_dma_tx_complete, ptr %callback, align 4
  %68 = ptrtoint ptr %dma_tx_desc to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %dma_tx_desc, align 4
  %callback_param = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %69, i32 0, i32 8
  %70 = ptrtoint ptr %callback_param to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr %sport, ptr %callback_param, align 4
  %71 = ptrtoint ptr %dma_tx_in_progress to i32
  call void @__asan_store1_noabort(i32 %71)
  store i8 1, ptr %dma_tx_in_progress, align 4
  %72 = load ptr, ptr %dma_tx_desc, align 4
  %tx_submit.i = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %72, i32 0, i32 4
  %73 = ptrtoint ptr %tx_submit.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %tx_submit.i, align 4
  %call.i112 = tail call i32 %74(ptr noundef %72) #12
  %dma_tx_cookie = getelementptr inbounds %struct.lpuart_port, ptr %sport, i32 0, i32 12
  %75 = ptrtoint ptr %dma_tx_cookie to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 %call.i112, ptr %dma_tx_cookie, align 4
  %76 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %5, align 4
  %device_issue_pending.i = getelementptr inbounds %struct.dma_device, ptr %77, i32 0, i32 50
  %78 = ptrtoint ptr %device_issue_pending.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %device_issue_pending.i, align 4
  tail call void %79(ptr noundef nonnull %5) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end36, %if.then29, %do.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @lpuart32_transmit_buffer(ptr noundef %sport) unnamed_addr #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  %state = getelementptr inbounds %struct.uart_port, ptr %sport, i32 0, i32 30
  %0 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %state, align 4
  %xmit1 = getelementptr inbounds %struct.uart_state, ptr %1, i32 0, i32 2
  %x_char = getelementptr inbounds %struct.uart_port, ptr %sport, i32 0, i32 24
  %2 = ptrtoint ptr %x_char to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %x_char, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %conv = zext i8 %3 to i32
  %iotype.i = getelementptr inbounds %struct.uart_port, ptr %sport, i32 0, i32 26
  %4 = ptrtoint ptr %iotype.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %iotype.i, align 2
  %6 = zext i8 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.118)
  switch i8 %5, label %if.then.lpuart32_write.exit_crit_edge [
    i8 3, label %do.body.i
    i8 6, label %do.body2.i
  ]

if.then.lpuart32_write.exit_crit_edge:            ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %lpuart32_write.exit

do.body.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !183
  tail call void @arm_heavy_mb() #12
  %7 = shl nuw i32 %conv, 24
  %membase.i = getelementptr inbounds %struct.uart_port, ptr %sport, i32 0, i32 2
  %8 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %membase.i, align 4
  %add.ptr.i = getelementptr i8, ptr %9, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %7) #12, !srcloc !184
  br label %lpuart32_write.exit

do.body2.i:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !185
  tail call void @arm_heavy_mb() #12
  %membase4.i = getelementptr inbounds %struct.uart_port, ptr %sport, i32 0, i32 2
  %10 = ptrtoint ptr %membase4.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %membase4.i, align 4
  %add.ptr5.i = getelementptr i8, ptr %11, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5.i, i32 %conv) #12, !srcloc !184
  br label %lpuart32_write.exit

lpuart32_write.exit:                              ; preds = %do.body2.i, %do.body.i, %if.then.lpuart32_write.exit_crit_edge
  %tx = getelementptr inbounds %struct.uart_port, ptr %sport, i32 0, i32 31, i32 5
  %12 = ptrtoint ptr %tx to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %tx, align 4
  %inc = add i32 %13, 1
  store i32 %inc, ptr %tx, align 4
  %14 = ptrtoint ptr %x_char to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 0, ptr %x_char, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %head.i = getelementptr inbounds %struct.uart_state, ptr %1, i32 0, i32 2, i32 1
  %15 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %head.i, align 4
  %tail.i = getelementptr inbounds %struct.uart_state, ptr %1, i32 0, i32 2, i32 2
  %17 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %tail.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %16, i32 %18)
  %cmp.i = icmp eq i32 %16, %18
  br i1 %cmp.i, label %if.end.if.then10_crit_edge, label %lor.rhs.i

if.end.if.then10_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then10

lor.rhs.i:                                        ; preds = %if.end
  %tty2.i.i = getelementptr inbounds %struct.tty_port, ptr %1, i32 0, i32 1
  %19 = ptrtoint ptr %tty2.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %tty2.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %20, null
  br i1 %tobool.not.i.i, label %lor.rhs.i.lpuart_stopped_or_empty.exit_crit_edge, label %land.lhs.true.i.i

lor.rhs.i.lpuart_stopped_or_empty.exit_crit_edge: ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %lpuart_stopped_or_empty.exit

land.lhs.true.i.i:                                ; preds = %lor.rhs.i
  %stopped.i.i = getelementptr inbounds %struct.tty_struct, ptr %20, i32 0, i32 19, i32 1
  %21 = ptrtoint ptr %stopped.i.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %stopped.i.i, align 4, !range !194
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %tobool3.not.i.i = icmp eq i8 %22, 0
  br i1 %tobool3.not.i.i, label %land.lhs.true.i.i.lpuart_stopped_or_empty.exit_crit_edge, label %land.lhs.true.i.i.if.then10_crit_edge

land.lhs.true.i.i.if.then10_crit_edge:            ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then10

land.lhs.true.i.i.lpuart_stopped_or_empty.exit_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %lpuart_stopped_or_empty.exit

lpuart_stopped_or_empty.exit:                     ; preds = %land.lhs.true.i.i.lpuart_stopped_or_empty.exit_crit_edge, %lor.rhs.i.lpuart_stopped_or_empty.exit_crit_edge
  %hw_stopped.i.i = getelementptr inbounds %struct.uart_port, ptr %sport, i32 0, i32 35
  %23 = ptrtoint ptr %hw_stopped.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %hw_stopped.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool4.not.i.i.not = icmp eq i32 %24, 0
  br i1 %tobool4.not.i.i.not, label %if.end12, label %lpuart_stopped_or_empty.exit.if.then10_crit_edge

lpuart_stopped_or_empty.exit.if.then10_crit_edge: ; preds = %lpuart_stopped_or_empty.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then10

if.then10:                                        ; preds = %lpuart_stopped_or_empty.exit.if.then10_crit_edge, %land.lhs.true.i.i.if.then10_crit_edge, %if.end.if.then10_crit_edge
  %iotype.i.i = getelementptr inbounds %struct.uart_port, ptr %sport, i32 0, i32 26
  %25 = ptrtoint ptr %iotype.i.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %iotype.i.i, align 2
  %27 = zext i8 %26 to i64
  call void @__sanitizer_cov_trace_switch(i64 %27, ptr @__sancov_gen_cov_switch_values.119)
  switch i8 %26, label %if.then10.lpuart32_read.exit.i_crit_edge [
    i8 3, label %sw.bb.i.i
    i8 6, label %sw.bb2.i.i
  ]

if.then10.lpuart32_read.exit.i_crit_edge:         ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #14
  br label %lpuart32_read.exit.i

sw.bb.i.i:                                        ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #14
  %membase.i.i = getelementptr inbounds %struct.uart_port, ptr %sport, i32 0, i32 2
  %28 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %membase.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %29, i32 8
  %30 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #12, !srcloc !180
  %31 = tail call i32 @llvm.bswap.i32(i32 %30) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !181
  br label %lpuart32_read.exitthread-pre-split.i

sw.bb2.i.i:                                       ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #14
  %membase4.i.i = getelementptr inbounds %struct.uart_port, ptr %sport, i32 0, i32 2
  %32 = ptrtoint ptr %membase4.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %membase4.i.i, align 4
  %add.ptr5.i.i = getelementptr i8, ptr %33, i32 8
  %34 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5.i.i) #12, !srcloc !180
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !182
  br label %lpuart32_read.exitthread-pre-split.i

lpuart32_read.exitthread-pre-split.i:             ; preds = %sw.bb2.i.i, %sw.bb.i.i
  %retval.0.i.ph.i = phi i32 [ %31, %sw.bb.i.i ], [ %34, %sw.bb2.i.i ]
  %35 = ptrtoint ptr %iotype.i.i to i32
  call void @__asan_load1_noabort(i32 %35)
  %.pr.i = load i8, ptr %iotype.i.i, align 2
  br label %lpuart32_read.exit.i

lpuart32_read.exit.i:                             ; preds = %lpuart32_read.exitthread-pre-split.i, %if.then10.lpuart32_read.exit.i_crit_edge
  %36 = phi i8 [ %.pr.i, %lpuart32_read.exitthread-pre-split.i ], [ %26, %if.then10.lpuart32_read.exit.i_crit_edge ]
  %retval.0.i.i = phi i32 [ %retval.0.i.ph.i, %lpuart32_read.exitthread-pre-split.i ], [ 0, %if.then10.lpuart32_read.exit.i_crit_edge ]
  %and.i = and i32 %retval.0.i.i, -12582913
  %37 = zext i8 %36 to i64
  call void @__sanitizer_cov_trace_switch(i64 %37, ptr @__sancov_gen_cov_switch_values.120)
  switch i8 %36, label %lpuart32_read.exit.i.cleanup_crit_edge [
    i8 3, label %do.body.i.i
    i8 6, label %do.body2.i.i
  ]

lpuart32_read.exit.i.cleanup_crit_edge:           ; preds = %lpuart32_read.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

do.body.i.i:                                      ; preds = %lpuart32_read.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !183
  tail call void @arm_heavy_mb() #12
  %38 = tail call i32 @llvm.bswap.i32(i32 %and.i) #12
  %membase.i4.i = getelementptr inbounds %struct.uart_port, ptr %sport, i32 0, i32 2
  %39 = ptrtoint ptr %membase.i4.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %membase.i4.i, align 4
  %add.ptr.i5.i = getelementptr i8, ptr %40, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i5.i, i32 %38) #12, !srcloc !184
  br label %cleanup

do.body2.i.i:                                     ; preds = %lpuart32_read.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !185
  tail call void @arm_heavy_mb() #12
  %membase4.i6.i = getelementptr inbounds %struct.uart_port, ptr %sport, i32 0, i32 2
  %41 = ptrtoint ptr %membase4.i6.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %membase4.i6.i, align 4
  %add.ptr5.i7.i = getelementptr i8, ptr %42, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5.i7.i, i32 %and.i) #12, !srcloc !184
  br label %cleanup

if.end12:                                         ; preds = %lpuart_stopped_or_empty.exit
  %iotype.i76 = getelementptr inbounds %struct.uart_port, ptr %sport, i32 0, i32 26
  %43 = ptrtoint ptr %iotype.i76 to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %iotype.i76, align 2
  %45 = zext i8 %44 to i64
  call void @__sanitizer_cov_trace_switch(i64 %45, ptr @__sancov_gen_cov_switch_values.121)
  switch i8 %44, label %if.end12.lpuart32_read.exit_crit_edge [
    i8 3, label %sw.bb.i
    i8 6, label %sw.bb2.i
  ]

if.end12.lpuart32_read.exit_crit_edge:            ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #14
  br label %lpuart32_read.exit

sw.bb.i:                                          ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #14
  %membase.i77 = getelementptr inbounds %struct.uart_port, ptr %sport, i32 0, i32 2
  %46 = ptrtoint ptr %membase.i77 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %membase.i77, align 4
  %add.ptr.i78 = getelementptr i8, ptr %47, i32 28
  %48 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i78) #12, !srcloc !180
  %49 = tail call i32 @llvm.bswap.i32(i32 %48) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !181
  br label %lpuart32_read.exit

sw.bb2.i:                                         ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #14
  %membase4.i79 = getelementptr inbounds %struct.uart_port, ptr %sport, i32 0, i32 2
  %50 = ptrtoint ptr %membase4.i79 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %membase4.i79, align 4
  %add.ptr5.i80 = getelementptr i8, ptr %51, i32 28
  %52 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5.i80) #12, !srcloc !180
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !182
  br label %lpuart32_read.exit

lpuart32_read.exit:                               ; preds = %sw.bb2.i, %sw.bb.i, %if.end12.lpuart32_read.exit_crit_edge
  %retval.0.i = phi i32 [ %52, %sw.bb2.i ], [ %49, %sw.bb.i ], [ 0, %if.end12.lpuart32_read.exit_crit_edge ]
  %53 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %head.i, align 4
  %55 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %tail.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %54, i32 %56)
  %cmp119 = icmp eq i32 %54, %56
  br i1 %cmp119, label %lpuart32_read.exit.while.end_crit_edge, label %land.rhs.lr.ph

lpuart32_read.exit.while.end_crit_edge:           ; preds = %lpuart32_read.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end

land.rhs.lr.ph:                                   ; preds = %lpuart32_read.exit
  %txfifo_size = getelementptr inbounds %struct.lpuart_port, ptr %sport, i32 0, i32 4
  %membase4.i85 = getelementptr inbounds %struct.uart_port, ptr %sport, i32 0, i32 2
  %tx26 = getelementptr inbounds %struct.uart_port, ptr %sport, i32 0, i32 31, i32 5
  %txcnt.0.in124 = lshr i32 %retval.0.i, 8
  %txcnt.0125 = and i32 %txcnt.0.in124, 255
  %57 = ptrtoint ptr %txfifo_size to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %txfifo_size, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %txcnt.0125, i32 %58)
  %cmp16126 = icmp ult i32 %txcnt.0125, %58
  br i1 %cmp16126, label %land.rhs.lr.ph.while.body_crit_edge, label %land.rhs.lr.ph.while.end_crit_edge

land.rhs.lr.ph.while.end_crit_edge:               ; preds = %land.rhs.lr.ph
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end

land.rhs.lr.ph.while.body_crit_edge:              ; preds = %land.rhs.lr.ph
  br label %while.body

land.rhs:                                         ; preds = %lpuart32_read.exit97
  %txcnt.0.in = lshr i32 %retval.0.i96, 8
  %txcnt.0 = and i32 %txcnt.0.in, 255
  %59 = ptrtoint ptr %txfifo_size to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %txfifo_size, align 4
  %cmp16 = icmp ult i32 %txcnt.0, %60
  br i1 %cmp16, label %land.rhs.while.body_crit_edge, label %land.rhs.while.end_crit_edge

land.rhs.while.end_crit_edge:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end

land.rhs.while.body_crit_edge:                    ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body

while.body:                                       ; preds = %land.rhs.while.body_crit_edge, %land.rhs.lr.ph.while.body_crit_edge
  %61 = phi i32 [ %91, %land.rhs.while.body_crit_edge ], [ %56, %land.rhs.lr.ph.while.body_crit_edge ]
  %62 = ptrtoint ptr %xmit1 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %xmit1, align 4
  %arrayidx = getelementptr i8, ptr %63, i32 %61
  %64 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %arrayidx, align 1
  %conv20 = zext i8 %65 to i32
  %66 = ptrtoint ptr %iotype.i76 to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %iotype.i76, align 2
  %68 = zext i8 %67 to i64
  call void @__sanitizer_cov_trace_switch(i64 %68, ptr @__sancov_gen_cov_switch_values.122)
  switch i8 %67, label %while.body.lpuart32_write.exit88_crit_edge [
    i8 3, label %do.body.i84
    i8 6, label %do.body2.i87
  ]

while.body.lpuart32_write.exit88_crit_edge:       ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %lpuart32_write.exit88

do.body.i84:                                      ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !183
  tail call void @arm_heavy_mb() #12
  %69 = shl nuw i32 %conv20, 24
  %70 = ptrtoint ptr %membase4.i85 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %membase4.i85, align 4
  %add.ptr.i83 = getelementptr i8, ptr %71, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i83, i32 %69) #12, !srcloc !184
  br label %lpuart32_write.exit88

do.body2.i87:                                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !185
  tail call void @arm_heavy_mb() #12
  %72 = ptrtoint ptr %membase4.i85 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %membase4.i85, align 4
  %add.ptr5.i86 = getelementptr i8, ptr %73, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5.i86, i32 %conv20) #12, !srcloc !184
  br label %lpuart32_write.exit88

lpuart32_write.exit88:                            ; preds = %do.body2.i87, %do.body.i84, %while.body.lpuart32_write.exit88_crit_edge
  %74 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %tail.i, align 4
  %add = add i32 %75, 1
  %and22 = and i32 %add, 4095
  store i32 %and22, ptr %tail.i, align 4
  %76 = ptrtoint ptr %tx26 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %tx26, align 4
  %inc27 = add i32 %77, 1
  store i32 %inc27, ptr %tx26, align 4
  %78 = ptrtoint ptr %iotype.i76 to i32
  call void @__asan_load1_noabort(i32 %78)
  %79 = load i8, ptr %iotype.i76, align 2
  %80 = zext i8 %79 to i64
  call void @__sanitizer_cov_trace_switch(i64 %80, ptr @__sancov_gen_cov_switch_values.123)
  switch i8 %79, label %lpuart32_write.exit88.lpuart32_read.exit97_crit_edge [
    i8 3, label %sw.bb.i92
    i8 6, label %sw.bb2.i95
  ]

lpuart32_write.exit88.lpuart32_read.exit97_crit_edge: ; preds = %lpuart32_write.exit88
  call void @__sanitizer_cov_trace_pc() #14
  br label %lpuart32_read.exit97

sw.bb.i92:                                        ; preds = %lpuart32_write.exit88
  call void @__sanitizer_cov_trace_pc() #14
  %81 = ptrtoint ptr %membase4.i85 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %membase4.i85, align 4
  %add.ptr.i91 = getelementptr i8, ptr %82, i32 28
  %83 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i91) #12, !srcloc !180
  %84 = tail call i32 @llvm.bswap.i32(i32 %83) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !181
  br label %lpuart32_read.exit97

sw.bb2.i95:                                       ; preds = %lpuart32_write.exit88
  call void @__sanitizer_cov_trace_pc() #14
  %85 = ptrtoint ptr %membase4.i85 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %membase4.i85, align 4
  %add.ptr5.i94 = getelementptr i8, ptr %86, i32 28
  %87 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5.i94) #12, !srcloc !180
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !182
  br label %lpuart32_read.exit97

lpuart32_read.exit97:                             ; preds = %sw.bb2.i95, %sw.bb.i92, %lpuart32_write.exit88.lpuart32_read.exit97_crit_edge
  %retval.0.i96 = phi i32 [ %87, %sw.bb2.i95 ], [ %84, %sw.bb.i92 ], [ 0, %lpuart32_write.exit88.lpuart32_read.exit97_crit_edge ]
  %88 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %head.i, align 4
  %90 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %tail.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %89, i32 %91)
  %cmp = icmp eq i32 %89, %91
  br i1 %cmp, label %lpuart32_read.exit97.while.end_crit_edge, label %land.rhs

lpuart32_read.exit97.while.end_crit_edge:         ; preds = %lpuart32_read.exit97
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end

while.end:                                        ; preds = %lpuart32_read.exit97.while.end_crit_edge, %land.rhs.while.end_crit_edge, %land.rhs.lr.ph.while.end_crit_edge, %lpuart32_read.exit.while.end_crit_edge
  %.lcssa118 = phi i32 [ %54, %lpuart32_read.exit.while.end_crit_edge ], [ %54, %land.rhs.lr.ph.while.end_crit_edge ], [ %89, %land.rhs.while.end_crit_edge ], [ %89, %lpuart32_read.exit97.while.end_crit_edge ]
  %.lcssa = phi i32 [ %54, %lpuart32_read.exit.while.end_crit_edge ], [ %56, %land.rhs.lr.ph.while.end_crit_edge ], [ %91, %land.rhs.while.end_crit_edge ], [ %89, %lpuart32_read.exit97.while.end_crit_edge ]
  %sub = sub i32 %.lcssa118, %.lcssa
  %and34 = and i32 %sub, 3840
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and34)
  %cmp35 = icmp eq i32 %and34, 0
  br i1 %cmp35, label %if.then37, label %while.end.if.end39_crit_edge

while.end.if.end39_crit_edge:                     ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end39

if.then37:                                        ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @uart_write_wakeup(ptr noundef %sport) #12
  br label %if.end39

if.end39:                                         ; preds = %if.then37, %while.end.if.end39_crit_edge
  %92 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %head.i, align 4
  %94 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %tail.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %93, i32 %95)
  %cmp42 = icmp eq i32 %93, %95
  br i1 %cmp42, label %if.then44, label %if.end39.cleanup_crit_edge

if.end39.cleanup_crit_edge:                       ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then44:                                        ; preds = %if.end39
  %96 = ptrtoint ptr %iotype.i76 to i32
  call void @__asan_load1_noabort(i32 %96)
  %97 = load i8, ptr %iotype.i76, align 2
  %98 = zext i8 %97 to i64
  call void @__sanitizer_cov_trace_switch(i64 %98, ptr @__sancov_gen_cov_switch_values.124)
  switch i8 %97, label %if.then44.lpuart32_read.exit.i110_crit_edge [
    i8 3, label %sw.bb.i.i101
    i8 6, label %sw.bb2.i.i104
  ]

if.then44.lpuart32_read.exit.i110_crit_edge:      ; preds = %if.then44
  call void @__sanitizer_cov_trace_pc() #14
  br label %lpuart32_read.exit.i110

sw.bb.i.i101:                                     ; preds = %if.then44
  call void @__sanitizer_cov_trace_pc() #14
  %membase.i.i99 = getelementptr inbounds %struct.uart_port, ptr %sport, i32 0, i32 2
  %99 = ptrtoint ptr %membase.i.i99 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %membase.i.i99, align 4
  %add.ptr.i.i100 = getelementptr i8, ptr %100, i32 8
  %101 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i100) #12, !srcloc !180
  %102 = tail call i32 @llvm.bswap.i32(i32 %101) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !181
  br label %lpuart32_read.exitthread-pre-split.i107

sw.bb2.i.i104:                                    ; preds = %if.then44
  call void @__sanitizer_cov_trace_pc() #14
  %membase4.i.i102 = getelementptr inbounds %struct.uart_port, ptr %sport, i32 0, i32 2
  %103 = ptrtoint ptr %membase4.i.i102 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %membase4.i.i102, align 4
  %add.ptr5.i.i103 = getelementptr i8, ptr %104, i32 8
  %105 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5.i.i103) #12, !srcloc !180
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !182
  br label %lpuart32_read.exitthread-pre-split.i107

lpuart32_read.exitthread-pre-split.i107:          ; preds = %sw.bb2.i.i104, %sw.bb.i.i101
  %retval.0.i.ph.i105 = phi i32 [ %102, %sw.bb.i.i101 ], [ %105, %sw.bb2.i.i104 ]
  %106 = ptrtoint ptr %iotype.i76 to i32
  call void @__asan_load1_noabort(i32 %106)
  %.pr.i106 = load i8, ptr %iotype.i76, align 2
  br label %lpuart32_read.exit.i110

lpuart32_read.exit.i110:                          ; preds = %lpuart32_read.exitthread-pre-split.i107, %if.then44.lpuart32_read.exit.i110_crit_edge
  %107 = phi i8 [ %.pr.i106, %lpuart32_read.exitthread-pre-split.i107 ], [ %97, %if.then44.lpuart32_read.exit.i110_crit_edge ]
  %retval.0.i.i108 = phi i32 [ %retval.0.i.ph.i105, %lpuart32_read.exitthread-pre-split.i107 ], [ 0, %if.then44.lpuart32_read.exit.i110_crit_edge ]
  %and.i109 = and i32 %retval.0.i.i108, -12582913
  %108 = zext i8 %107 to i64
  call void @__sanitizer_cov_trace_switch(i64 %108, ptr @__sancov_gen_cov_switch_values.125)
  switch i8 %107, label %lpuart32_read.exit.i110.cleanup_crit_edge [
    i8 3, label %do.body.i.i113
    i8 6, label %do.body2.i.i116
  ]

lpuart32_read.exit.i110.cleanup_crit_edge:        ; preds = %lpuart32_read.exit.i110
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

do.body.i.i113:                                   ; preds = %lpuart32_read.exit.i110
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !183
  tail call void @arm_heavy_mb() #12
  %109 = tail call i32 @llvm.bswap.i32(i32 %and.i109) #12
  %membase.i4.i111 = getelementptr inbounds %struct.uart_port, ptr %sport, i32 0, i32 2
  %110 = ptrtoint ptr %membase.i4.i111 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %membase.i4.i111, align 4
  %add.ptr.i5.i112 = getelementptr i8, ptr %111, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i5.i112, i32 %109) #12, !srcloc !184
  br label %cleanup

do.body2.i.i116:                                  ; preds = %lpuart32_read.exit.i110
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !185
  tail call void @arm_heavy_mb() #12
  %membase4.i6.i114 = getelementptr inbounds %struct.uart_port, ptr %sport, i32 0, i32 2
  %112 = ptrtoint ptr %membase4.i6.i114 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %membase4.i6.i114, align 4
  %add.ptr5.i7.i115 = getelementptr i8, ptr %113, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5.i7.i115, i32 %and.i109) #12, !srcloc !184
  br label %cleanup

cleanup:                                          ; preds = %do.body2.i.i116, %do.body.i.i113, %lpuart32_read.exit.i110.cleanup_crit_edge, %if.end39.cleanup_crit_edge, %do.body2.i.i, %do.body.i.i, %lpuart32_read.exit.i.cleanup_crit_edge, %lpuart32_write.exit
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @sg_init_one(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @sg_init_table(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_map_sg_attrs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_unmap_sg_attrs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @lpuart_dma_tx_complete(ptr noundef %arg) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %state = getelementptr inbounds %struct.uart_port, ptr %arg, i32 0, i32 30
  %0 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %state, align 4
  %dma_tx_chan = getelementptr inbounds %struct.lpuart_port, ptr %arg, i32 0, i32 8
  %2 = ptrtoint ptr %dma_tx_chan to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dma_tx_chan, align 4
  %call4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %arg) #12
  %dma_tx_in_progress = getelementptr inbounds %struct.lpuart_port, ptr %arg, i32 0, i32 16
  %4 = ptrtoint ptr %dma_tx_in_progress to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %dma_tx_in_progress, align 4, !range !194
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %arg, i32 noundef %call4) #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %tx_sgl = getelementptr inbounds %struct.lpuart_port, ptr %arg, i32 0, i32 20
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %3, align 4
  %dev = getelementptr inbounds %struct.dma_device, ptr %7, i32 0, i32 15
  %8 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev, align 4
  %dma_tx_nents = getelementptr inbounds %struct.lpuart_port, ptr %arg, i32 0, i32 23
  %10 = ptrtoint ptr %dma_tx_nents to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %dma_tx_nents, align 4
  tail call void @dma_unmap_sg_attrs(ptr noundef %9, ptr noundef %tx_sgl, i32 noundef %11, i32 noundef 1, i32 noundef 0) #12
  %tail = getelementptr inbounds %struct.uart_state, ptr %1, i32 0, i32 2, i32 2
  %12 = ptrtoint ptr %tail to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %tail, align 4
  %dma_tx_bytes = getelementptr inbounds %struct.lpuart_port, ptr %arg, i32 0, i32 14
  %14 = ptrtoint ptr %dma_tx_bytes to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %dma_tx_bytes, align 4
  %add = add i32 %15, %13
  %and = and i32 %add, 4095
  store i32 %and, ptr %tail, align 4
  %16 = load i32, ptr %dma_tx_bytes, align 4
  %tx = getelementptr inbounds %struct.uart_port, ptr %arg, i32 0, i32 31, i32 5
  %17 = ptrtoint ptr %tx to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %tx, align 4
  %add12 = add i32 %18, %16
  store i32 %add12, ptr %tx, align 4
  %19 = ptrtoint ptr %dma_tx_in_progress to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 0, ptr %dma_tx_in_progress, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %arg, i32 noundef %call4) #12
  %head = getelementptr inbounds %struct.uart_state, ptr %1, i32 0, i32 2, i32 1
  %20 = ptrtoint ptr %head to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %head, align 4
  %22 = ptrtoint ptr %tail to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %tail, align 4
  %sub = sub i32 %21, %23
  %and17 = and i32 %sub, 3840
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and17)
  %cmp18 = icmp eq i32 %and17, 0
  br i1 %cmp18, label %if.then20, label %if.end.if.end22_crit_edge

if.end.if.end22_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end22

if.then20:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @uart_write_wakeup(ptr noundef %arg) #12
  br label %if.end22

if.end22:                                         ; preds = %if.then20, %if.end.if.end22_crit_edge
  %head.i = getelementptr inbounds %struct.lpuart_port, ptr %arg, i32 0, i32 24, i32 1
  %24 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load volatile ptr, ptr %head.i, align 4
  %cmp.i.i.not = icmp eq ptr %25, %head.i
  br i1 %cmp.i.i.not, label %do.body29, label %if.then25

if.then25:                                        ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #14
  %dma_wait = getelementptr inbounds %struct.lpuart_port, ptr %arg, i32 0, i32 24
  tail call void @__wake_up(ptr noundef %dma_wait, i32 noundef 3, i32 noundef 1, ptr noundef null) #12
  br label %cleanup

do.body29:                                        ; preds = %if.end22
  %call38 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %arg) #12
  %26 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %state, align 4
  %head.i76 = getelementptr inbounds %struct.uart_state, ptr %27, i32 0, i32 2, i32 1
  %28 = ptrtoint ptr %head.i76 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %head.i76, align 4
  %tail.i = getelementptr inbounds %struct.uart_state, ptr %27, i32 0, i32 2, i32 2
  %30 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %tail.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %29, i32 %31)
  %cmp.i = icmp eq i32 %29, %31
  br i1 %cmp.i, label %do.body29.if.end46_crit_edge, label %lor.rhs.i

do.body29.if.end46_crit_edge:                     ; preds = %do.body29
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end46

lor.rhs.i:                                        ; preds = %do.body29
  %tty2.i.i = getelementptr inbounds %struct.tty_port, ptr %27, i32 0, i32 1
  %32 = ptrtoint ptr %tty2.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %tty2.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %33, null
  br i1 %tobool.not.i.i, label %lor.rhs.i.lpuart_stopped_or_empty.exit_crit_edge, label %land.lhs.true.i.i

lor.rhs.i.lpuart_stopped_or_empty.exit_crit_edge: ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %lpuart_stopped_or_empty.exit

land.lhs.true.i.i:                                ; preds = %lor.rhs.i
  %stopped.i.i = getelementptr inbounds %struct.tty_struct, ptr %33, i32 0, i32 19, i32 1
  %34 = ptrtoint ptr %stopped.i.i to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %stopped.i.i, align 4, !range !194
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %35)
  %tobool3.not.i.i = icmp eq i8 %35, 0
  br i1 %tobool3.not.i.i, label %land.lhs.true.i.i.lpuart_stopped_or_empty.exit_crit_edge, label %land.lhs.true.i.i.if.end46_crit_edge

land.lhs.true.i.i.if.end46_crit_edge:             ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end46

land.lhs.true.i.i.lpuart_stopped_or_empty.exit_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %lpuart_stopped_or_empty.exit

lpuart_stopped_or_empty.exit:                     ; preds = %land.lhs.true.i.i.lpuart_stopped_or_empty.exit_crit_edge, %lor.rhs.i.lpuart_stopped_or_empty.exit_crit_edge
  %hw_stopped.i.i = getelementptr inbounds %struct.uart_port, ptr %arg, i32 0, i32 35
  %36 = ptrtoint ptr %hw_stopped.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %hw_stopped.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %tobool4.not.i.i.not = icmp eq i32 %37, 0
  br i1 %tobool4.not.i.i.not, label %if.then45, label %lpuart_stopped_or_empty.exit.if.end46_crit_edge

lpuart_stopped_or_empty.exit.if.end46_crit_edge:  ; preds = %lpuart_stopped_or_empty.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end46

if.then45:                                        ; preds = %lpuart_stopped_or_empty.exit
  call void @__sanitizer_cov_trace_pc() #14
  tail call fastcc void @lpuart_dma_tx(ptr noundef %arg)
  br label %if.end46

if.end46:                                         ; preds = %if.then45, %lpuart_stopped_or_empty.exit.if.end46_crit_edge, %land.lhs.true.i.i.if.end46_crit_edge, %do.body29.if.end46_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %arg, i32 noundef %call38) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end46, %if.then25, %if.then
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pfn_valid(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @uart_write_wakeup(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @lpuart_request_dma(ptr nocapture noundef %sport) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.uart_port, ptr %sport, i32 0, i32 45
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %call = tail call ptr @dma_request_chan(ptr noundef %1, ptr noundef nonnull @.str.33) #12
  %dma_tx_chan = getelementptr inbounds %struct.lpuart_port, ptr %sport, i32 0, i32 8
  %2 = ptrtoint ptr %dma_tx_chan to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call, ptr %dma_tx_chan, align 4
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.body, label %entry.if.end17_crit_edge

entry.if.end17_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end17

do.body:                                          ; preds = %entry
  %.b63 = load i1, ptr @lpuart_request_dma.__print_once, align 1
  br i1 %.b63, label %do.body.do.end15_crit_edge, label %if.then3

do.body.do.end15_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end15

if.then3:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @lpuart_request_dma.__print_once, align 1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @lpuart_request_dma.__UNIQUE_ID_ddebug236, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@lpuart_request_dma, %if.then9)) #12
          to label %do.end15 [label %if.then9], !srcloc !215

if.then9:                                         ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #14
  %3 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dev, align 4
  %5 = ptrtoint ptr %dma_tx_chan to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dma_tx_chan, align 4
  %7 = ptrtoint ptr %6 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @lpuart_request_dma.__UNIQUE_ID_ddebug236, ptr noundef %4, ptr noundef nonnull @.str.36, i32 noundef %7) #12
  br label %do.end15

do.end15:                                         ; preds = %if.then9, %if.then3, %do.body.do.end15_crit_edge
  %8 = ptrtoint ptr %dma_tx_chan to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %dma_tx_chan, align 4
  br label %if.end17

if.end17:                                         ; preds = %do.end15, %entry.if.end17_crit_edge
  %9 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev, align 4
  %call20 = tail call ptr @dma_request_chan(ptr noundef %10, ptr noundef nonnull @.str.37) #12
  %dma_rx_chan = getelementptr inbounds %struct.lpuart_port, ptr %sport, i32 0, i32 9
  %11 = ptrtoint ptr %dma_rx_chan to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call20, ptr %dma_rx_chan, align 4
  %cmp.i67 = icmp ugt ptr %call20, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i67, label %do.body24, label %if.end17.if.end49_crit_edge

if.end17.if.end49_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end49

do.body24:                                        ; preds = %if.end17
  %.b6162 = load i1, ptr @lpuart_request_dma.__print_once.38, align 1
  br i1 %.b6162, label %do.body24.do.end47_crit_edge, label %if.then26

do.body24.do.end47_crit_edge:                     ; preds = %do.body24
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end47

if.then26:                                        ; preds = %do.body24
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @lpuart_request_dma.__print_once.38, align 1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @lpuart_request_dma.__UNIQUE_ID_ddebug237, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@lpuart_request_dma, %if.then39)) #12
          to label %do.end47 [label %if.then39], !srcloc !215

if.then39:                                        ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #14
  %12 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev, align 4
  %14 = ptrtoint ptr %dma_rx_chan to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dma_rx_chan, align 4
  %16 = ptrtoint ptr %15 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @lpuart_request_dma.__UNIQUE_ID_ddebug237, ptr noundef %13, ptr noundef nonnull @.str.39, i32 noundef %16) #12
  br label %do.end47

do.end47:                                         ; preds = %if.then39, %if.then26, %do.body24.do.end47_crit_edge
  %17 = ptrtoint ptr %dma_rx_chan to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr null, ptr %dma_rx_chan, align 4
  br label %if.end49

if.end49:                                         ; preds = %do.end47, %if.end17.if.end49_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @lpuart32_setup_watermark_enable(ptr nocapture noundef readonly %sport) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @lpuart32_setup_watermark(ptr noundef %sport)
  %iotype.i = getelementptr inbounds %struct.uart_port, ptr %sport, i32 0, i32 26
  %0 = ptrtoint ptr %iotype.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %iotype.i, align 2
  %2 = zext i8 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.126)
  switch i8 %1, label %entry.lpuart32_read.exit_crit_edge [
    i8 3, label %sw.bb.i
    i8 6, label %sw.bb2.i
  ]

entry.lpuart32_read.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %lpuart32_read.exit

sw.bb.i:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %membase.i = getelementptr inbounds %struct.uart_port, ptr %sport, i32 0, i32 2
  %3 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %membase.i, align 4
  %add.ptr.i = getelementptr i8, ptr %4, i32 8
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #12, !srcloc !180
  %6 = tail call i32 @llvm.bswap.i32(i32 %5) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !181
  br label %lpuart32_read.exitthread-pre-split

sw.bb2.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %membase4.i = getelementptr inbounds %struct.uart_port, ptr %sport, i32 0, i32 2
  %7 = ptrtoint ptr %membase4.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %membase4.i, align 4
  %add.ptr5.i = getelementptr i8, ptr %8, i32 8
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5.i) #12, !srcloc !180
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !182
  br label %lpuart32_read.exitthread-pre-split

lpuart32_read.exitthread-pre-split:               ; preds = %sw.bb2.i, %sw.bb.i
  %retval.0.i.ph = phi i32 [ %6, %sw.bb.i ], [ %9, %sw.bb2.i ]
  %10 = ptrtoint ptr %iotype.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %.pr = load i8, ptr %iotype.i, align 2
  br label %lpuart32_read.exit

lpuart32_read.exit:                               ; preds = %lpuart32_read.exitthread-pre-split, %entry.lpuart32_read.exit_crit_edge
  %11 = phi i8 [ %.pr, %lpuart32_read.exitthread-pre-split ], [ %1, %entry.lpuart32_read.exit_crit_edge ]
  %retval.0.i = phi i32 [ %retval.0.i.ph, %lpuart32_read.exitthread-pre-split ], [ 0, %entry.lpuart32_read.exit_crit_edge ]
  %or = or i32 %retval.0.i, 1835008
  %12 = zext i8 %11 to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.127)
  switch i8 %11, label %lpuart32_read.exit.lpuart32_write.exit_crit_edge [
    i8 3, label %do.body.i
    i8 6, label %do.body2.i
  ]

lpuart32_read.exit.lpuart32_write.exit_crit_edge: ; preds = %lpuart32_read.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %lpuart32_write.exit

do.body.i:                                        ; preds = %lpuart32_read.exit
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !183
  tail call void @arm_heavy_mb() #12
  %13 = tail call i32 @llvm.bswap.i32(i32 %or) #12
  %membase.i6 = getelementptr inbounds %struct.uart_port, ptr %sport, i32 0, i32 2
  %14 = ptrtoint ptr %membase.i6 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %membase.i6, align 4
  %add.ptr.i7 = getelementptr i8, ptr %15, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i7, i32 %13) #12, !srcloc !184
  br label %lpuart32_write.exit

do.body2.i:                                       ; preds = %lpuart32_read.exit
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !185
  tail call void @arm_heavy_mb() #12
  %membase4.i8 = getelementptr inbounds %struct.uart_port, ptr %sport, i32 0, i32 2
  %16 = ptrtoint ptr %membase4.i8 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %membase4.i8, align 4
  %add.ptr5.i9 = getelementptr i8, ptr %17, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5.i9, i32 %or) #12, !srcloc !184
  br label %lpuart32_write.exit

lpuart32_write.exit:                              ; preds = %do.body2.i, %do.body.i, %lpuart32_read.exit.lpuart32_write.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @lpuart_rx_dma_startup(ptr noundef %sport) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %cons = getelementptr inbounds %struct.uart_port, ptr %sport, i32 0, i32 32
  %0 = ptrtoint ptr %cons to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cons, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %index = getelementptr inbounds %struct.console, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %index to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %index, align 2
  %conv = sext i16 %3 to i32
  %line = getelementptr inbounds %struct.uart_port, ptr %sport, i32 0, i32 41
  %4 = ptrtoint ptr %line to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %line, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %conv)
  %cmp = icmp eq i32 %5, %conv
  br i1 %cmp, label %land.lhs.true.err_crit_edge, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

land.lhs.true.err_crit_edge:                      ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %err

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %dma_rx_chan = getelementptr inbounds %struct.lpuart_port, ptr %sport, i32 0, i32 9
  %6 = ptrtoint ptr %dma_rx_chan to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dma_rx_chan, align 4
  %tobool5.not = icmp eq ptr %7, null
  br i1 %tobool5.not, label %if.end.err_crit_edge, label %if.end7

if.end.err_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %err

if.end7:                                          ; preds = %if.end
  %call = tail call fastcc i32 @lpuart_start_rx_dma(ptr noundef %sport)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool8.not = icmp eq i32 %call, 0
  br i1 %tobool8.not, label %if.end10, label %if.end7.err_crit_edge

if.end7.err_crit_edge:                            ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #14
  br label %err

if.end10:                                         ; preds = %if.end7
  %dma_rx_timeout = getelementptr inbounds %struct.lpuart_port, ptr %sport, i32 0, i32 17
  %8 = ptrtoint ptr %dma_rx_timeout to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 1, ptr %dma_rx_timeout, align 4
  %lpuart_dma_rx_use = getelementptr inbounds %struct.lpuart_port, ptr %sport, i32 0, i32 7
  %9 = ptrtoint ptr %lpuart_dma_rx_use to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 1, ptr %lpuart_dma_rx_use, align 1
  %lpuart_timer.i = getelementptr inbounds %struct.lpuart_port, ptr %sport, i32 0, i32 18
  tail call void @init_timer_key(ptr noundef %lpuart_timer.i, ptr noundef nonnull @lpuart_timer_func, i32 noundef 0, ptr noundef nonnull @.str.50, ptr noundef nonnull @rx_dma_timer_init.__key) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %10 = load volatile i32, ptr @jiffies, align 128
  %11 = ptrtoint ptr %dma_rx_timeout to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %dma_rx_timeout, align 4
  %add.i = add i32 %12, %10
  %expires.i = getelementptr inbounds %struct.lpuart_port, ptr %sport, i32 0, i32 18, i32 1
  %13 = ptrtoint ptr %expires.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %add.i, ptr %expires.i, align 4
  tail call void @add_timer(ptr noundef %lpuart_timer.i) #12
  %has_sysrq = getelementptr inbounds %struct.uart_port, ptr %sport, i32 0, i32 48
  %14 = ptrtoint ptr %has_sysrq to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %has_sysrq, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool19.not = icmp eq i8 %15, 0
  br i1 %tobool19.not, label %if.end10.cleanup_crit_edge, label %land.lhs.true20

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

land.lhs.true20:                                  ; preds = %if.end10
  %iotype.i = getelementptr inbounds %struct.uart_port, ptr %sport, i32 0, i32 26
  %16 = ptrtoint ptr %iotype.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %iotype.i, align 2
  %18 = zext i8 %17 to i64
  call void @__sanitizer_cov_trace_switch(i64 %18, ptr @__sancov_gen_cov_switch_values.128)
  switch i8 %17, label %if.then22 [
    i8 6, label %land.lhs.true20.cleanup_crit_edge
    i8 3, label %land.lhs.true20.cleanup_crit_edge49
  ]

land.lhs.true20.cleanup_crit_edge49:              ; preds = %land.lhs.true20
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

land.lhs.true20.cleanup_crit_edge:                ; preds = %land.lhs.true20
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then22:                                        ; preds = %land.lhs.true20
  call void @__sanitizer_cov_trace_pc() #14
  %membase = getelementptr inbounds %struct.uart_port, ptr %sport, i32 0, i32 2
  %19 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %membase, align 4
  %add.ptr = getelementptr i8, ptr %20, i32 6
  %21 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr) #12, !srcloc !186
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !216
  %22 = or i8 %21, 2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !217
  tail call void @arm_heavy_mb() #12
  %23 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %membase, align 4
  %add.ptr30 = getelementptr i8, ptr %24, i32 6
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr30, i8 %22) #12, !srcloc !191
  br label %cleanup

err:                                              ; preds = %if.end7.err_crit_edge, %if.end.err_crit_edge, %land.lhs.true.err_crit_edge
  %lpuart_dma_rx_use32 = getelementptr inbounds %struct.lpuart_port, ptr %sport, i32 0, i32 7
  %25 = ptrtoint ptr %lpuart_dma_rx_use32 to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 0, ptr %lpuart_dma_rx_use32, align 1
  br label %cleanup

cleanup:                                          ; preds = %err, %if.then22, %land.lhs.true20.cleanup_crit_edge, %land.lhs.true20.cleanup_crit_edge49, %if.end10.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @lpuart_tx_dma_startup(ptr noundef %sport) unnamed_addr #3 align 64 {
entry:
  %dma_tx_sconfig.i = alloca %struct.dma_slave_config, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %cons = getelementptr inbounds %struct.uart_port, ptr %sport, i32 0, i32 32
  %0 = ptrtoint ptr %cons to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cons, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %index = getelementptr inbounds %struct.console, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %index to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %index, align 2
  %conv = sext i16 %3 to i32
  %line = getelementptr inbounds %struct.uart_port, ptr %sport, i32 0, i32 41
  %4 = ptrtoint ptr %line to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %line, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %conv)
  %cmp = icmp eq i32 %5, %conv
  br i1 %cmp, label %land.lhs.true.err_crit_edge, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

land.lhs.true.err_crit_edge:                      ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %err

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %dma_tx_chan = getelementptr inbounds %struct.lpuart_port, ptr %sport, i32 0, i32 8
  %6 = ptrtoint ptr %dma_tx_chan to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dma_tx_chan, align 4
  %tobool5.not = icmp eq ptr %7, null
  br i1 %tobool5.not, label %if.end.err_crit_edge, label %if.end7

if.end.err_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %err

if.end7:                                          ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %dma_tx_sconfig.i) #12
  %8 = getelementptr inbounds i8, ptr %dma_tx_sconfig.i, i32 4
  %9 = call ptr @memset(ptr %8, i32 0, i32 44)
  %iotype.i.i = getelementptr inbounds %struct.uart_port, ptr %sport, i32 0, i32 26
  %10 = ptrtoint ptr %iotype.i.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %iotype.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %11)
  %switch.selectcmp.i.i = icmp eq i8 %11, 6
  %switch.select.i.i = select i1 %switch.selectcmp.i.i, i32 15, i32 7
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %11)
  %switch.selectcmp14.i.i = icmp eq i8 %11, 3
  %switch.select15.i.i = select i1 %switch.selectcmp14.i.i, i32 12, i32 %switch.select.i.i
  %mapbase8.i.i = getelementptr inbounds %struct.uart_port, ptr %sport, i32 0, i32 43
  %12 = ptrtoint ptr %mapbase8.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %mapbase8.i.i, align 4
  %add9.i.i = add i32 %switch.select15.i.i, %13
  %dst_addr.i = getelementptr inbounds %struct.dma_slave_config, ptr %dma_tx_sconfig.i, i32 0, i32 2
  %14 = ptrtoint ptr %dst_addr.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %add9.i.i, ptr %dst_addr.i, align 4
  %dst_addr_width.i = getelementptr inbounds %struct.dma_slave_config, ptr %dma_tx_sconfig.i, i32 0, i32 4
  %15 = ptrtoint ptr %dst_addr_width.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 1, ptr %dst_addr_width.i, align 4
  %dst_maxburst.i = getelementptr inbounds %struct.dma_slave_config, ptr %dma_tx_sconfig.i, i32 0, i32 6
  %16 = ptrtoint ptr %dst_maxburst.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 1, ptr %dst_maxburst.i, align 4
  %17 = ptrtoint ptr %dma_tx_sconfig.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 1, ptr %dma_tx_sconfig.i, align 4
  %18 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %7, align 4
  %device_config.i.i = getelementptr inbounds %struct.dma_device, ptr %19, i32 0, i32 44
  %20 = ptrtoint ptr %device_config.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %device_config.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %21, null
  br i1 %tobool.not.i.i, label %if.end7.lpuart_dma_tx_request.exit_crit_edge, label %dmaengine_slave_config.exit.i

if.end7.lpuart_dma_tx_request.exit_crit_edge:     ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #14
  br label %lpuart_dma_tx_request.exit

dmaengine_slave_config.exit.i:                    ; preds = %if.end7
  %call.i.i = call i32 %21(ptr noundef nonnull %7, ptr noundef nonnull %dma_tx_sconfig.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i, label %do.body, label %dmaengine_slave_config.exit.i.lpuart_dma_tx_request.exit_crit_edge

dmaengine_slave_config.exit.i.lpuart_dma_tx_request.exit_crit_edge: ; preds = %dmaengine_slave_config.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %lpuart_dma_tx_request.exit

lpuart_dma_tx_request.exit:                       ; preds = %dmaengine_slave_config.exit.i.lpuart_dma_tx_request.exit_crit_edge, %if.end7.lpuart_dma_tx_request.exit_crit_edge
  %retval.0.i11.i = phi i32 [ %call.i.i, %dmaengine_slave_config.exit.i.lpuart_dma_tx_request.exit_crit_edge ], [ -38, %if.end7.lpuart_dma_tx_request.exit_crit_edge ]
  %dev.i = getelementptr inbounds %struct.uart_port, ptr %sport, i32 0, i32 45
  %22 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dev.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %23, ptr noundef nonnull @.str.52, i32 noundef %retval.0.i11.i) #15
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %dma_tx_sconfig.i) #12
  br label %err

do.body:                                          ; preds = %dmaengine_slave_config.exit.i
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %dma_tx_sconfig.i) #12
  %dma_wait = getelementptr inbounds %struct.lpuart_port, ptr %sport, i32 0, i32 24
  call void @__init_waitqueue_head(ptr noundef %dma_wait, ptr noundef nonnull @.str.51, ptr noundef nonnull @lpuart_tx_dma_startup.__key) #12
  %lpuart_dma_tx_use = getelementptr inbounds %struct.lpuart_port, ptr %sport, i32 0, i32 6
  %24 = ptrtoint ptr %lpuart_dma_tx_use to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 1, ptr %lpuart_dma_tx_use, align 4
  %25 = ptrtoint ptr %iotype.i.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %iotype.i.i, align 2
  %27 = zext i8 %26 to i64
  call void @__sanitizer_cov_trace_switch(i64 %27, ptr @__sancov_gen_cov_switch_values.129)
  switch i8 %26, label %do.body17 [
    i8 3, label %sw.bb.i
    i8 6, label %sw.bb2.i
  ]

sw.bb.i:                                          ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  %membase.i = getelementptr inbounds %struct.uart_port, ptr %sport, i32 0, i32 2
  %28 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %membase.i, align 4
  %30 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %29) #12, !srcloc !180
  %31 = call i32 @llvm.bswap.i32(i32 %30) #12
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !181
  br label %lpuart32_read.exitthread-pre-split

sw.bb2.i:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  %membase4.i = getelementptr inbounds %struct.uart_port, ptr %sport, i32 0, i32 2
  %32 = ptrtoint ptr %membase4.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %membase4.i, align 4
  %34 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %33) #12, !srcloc !180
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !182
  br label %lpuart32_read.exitthread-pre-split

lpuart32_read.exitthread-pre-split:               ; preds = %sw.bb2.i, %sw.bb.i
  %retval.0.i45.ph = phi i32 [ %31, %sw.bb.i ], [ %34, %sw.bb2.i ]
  %35 = ptrtoint ptr %iotype.i.i to i32
  call void @__asan_load1_noabort(i32 %35)
  %.pr = load i8, ptr %iotype.i.i, align 2
  %or = or i32 %retval.0.i45.ph, 8388608
  %36 = zext i8 %.pr to i64
  call void @__sanitizer_cov_trace_switch(i64 %36, ptr @__sancov_gen_cov_switch_values.130)
  switch i8 %.pr, label %lpuart32_read.exitthread-pre-split.cleanup_crit_edge [
    i8 3, label %do.body.i
    i8 6, label %do.body2.i
  ]

lpuart32_read.exitthread-pre-split.cleanup_crit_edge: ; preds = %lpuart32_read.exitthread-pre-split
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

do.body.i:                                        ; preds = %lpuart32_read.exitthread-pre-split
  call void @__sanitizer_cov_trace_pc() #14
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !183
  call void @arm_heavy_mb() #12
  %37 = call i32 @llvm.bswap.i32(i32 %or) #12
  %membase.i47 = getelementptr inbounds %struct.uart_port, ptr %sport, i32 0, i32 2
  %38 = ptrtoint ptr %membase.i47 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %membase.i47, align 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %39, i32 %37) #12, !srcloc !184
  br label %cleanup

do.body2.i:                                       ; preds = %lpuart32_read.exitthread-pre-split
  call void @__sanitizer_cov_trace_pc() #14
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !185
  call void @arm_heavy_mb() #12
  %membase4.i48 = getelementptr inbounds %struct.uart_port, ptr %sport, i32 0, i32 2
  %40 = ptrtoint ptr %membase4.i48 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %membase4.i48, align 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %41, i32 %or) #12, !srcloc !184
  br label %cleanup

do.body17:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !218
  call void @arm_heavy_mb() #12
  %membase = getelementptr inbounds %struct.uart_port, ptr %sport, i32 0, i32 2
  %42 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %membase, align 4
  %add.ptr = getelementptr i8, ptr %43, i32 11
  %44 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr) #12, !srcloc !186
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !219
  %45 = or i8 %44, -128
  %46 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %membase, align 4
  %add.ptr28 = getelementptr i8, ptr %47, i32 11
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr28, i8 %45) #12, !srcloc !191
  br label %cleanup

err:                                              ; preds = %lpuart_dma_tx_request.exit, %if.end.err_crit_edge, %land.lhs.true.err_crit_edge
  %lpuart_dma_tx_use30 = getelementptr inbounds %struct.lpuart_port, ptr %sport, i32 0, i32 6
  %48 = ptrtoint ptr %lpuart_dma_tx_use30 to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 0, ptr %lpuart_dma_tx_use30, align 4
  br label %cleanup

cleanup:                                          ; preds = %err, %do.body17, %do.body2.i, %do.body.i, %lpuart32_read.exitthread-pre-split.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @lpuart32_configure(ptr nocapture noundef readonly %sport) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %lpuart_dma_rx_use = getelementptr inbounds %struct.lpuart_port, ptr %sport, i32 0, i32 7
  %0 = ptrtoint ptr %lpuart_dma_rx_use to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %lpuart_dma_rx_use, align 1, !range !194
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %entry
  %iotype.i = getelementptr inbounds %struct.uart_port, ptr %sport, i32 0, i32 26
  %2 = ptrtoint ptr %iotype.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %iotype.i, align 2
  %4 = zext i8 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.131)
  switch i8 %3, label %if.then.lpuart32_read.exit_crit_edge [
    i8 3, label %sw.bb.i
    i8 6, label %sw.bb2.i
  ]

if.then.lpuart32_read.exit_crit_edge:             ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %lpuart32_read.exit

sw.bb.i:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  %membase.i = getelementptr inbounds %struct.uart_port, ptr %sport, i32 0, i32 2
  %5 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %membase.i, align 4
  %add.ptr.i = getelementptr i8, ptr %6, i32 28
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #12, !srcloc !180
  %8 = tail call i32 @llvm.bswap.i32(i32 %7) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !181
  br label %lpuart32_read.exitthread-pre-split

sw.bb2.i:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  %membase4.i = getelementptr inbounds %struct.uart_port, ptr %sport, i32 0, i32 2
  %9 = ptrtoint ptr %membase4.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %membase4.i, align 4
  %add.ptr5.i = getelementptr i8, ptr %10, i32 28
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5.i) #12, !srcloc !180
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !182
  br label %lpuart32_read.exitthread-pre-split

lpuart32_read.exitthread-pre-split:               ; preds = %sw.bb2.i, %sw.bb.i
  %retval.0.i.ph = phi i32 [ %8, %sw.bb.i ], [ %11, %sw.bb2.i ]
  %12 = ptrtoint ptr %iotype.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %.pr = load i8, ptr %iotype.i, align 2
  br label %lpuart32_read.exit

lpuart32_read.exit:                               ; preds = %lpuart32_read.exitthread-pre-split, %if.then.lpuart32_read.exit_crit_edge
  %13 = phi i8 [ %.pr, %lpuart32_read.exitthread-pre-split ], [ %3, %if.then.lpuart32_read.exit_crit_edge ]
  %retval.0.i = phi i32 [ %retval.0.i.ph, %lpuart32_read.exitthread-pre-split ], [ 0, %if.then.lpuart32_read.exit_crit_edge ]
  %and = and i32 %retval.0.i, -16711681
  %14 = zext i8 %13 to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values.132)
  switch i8 %13, label %lpuart32_read.exit.if.end_crit_edge [
    i8 3, label %do.body.i
    i8 6, label %do.body2.i
  ]

lpuart32_read.exit.if.end_crit_edge:              ; preds = %lpuart32_read.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

do.body.i:                                        ; preds = %lpuart32_read.exit
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !183
  tail call void @arm_heavy_mb() #12
  %15 = tail call i32 @llvm.bswap.i32(i32 %and) #12
  %membase.i24 = getelementptr inbounds %struct.uart_port, ptr %sport, i32 0, i32 2
  %16 = ptrtoint ptr %membase.i24 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %membase.i24, align 4
  %add.ptr.i25 = getelementptr i8, ptr %17, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i25, i32 %15) #12, !srcloc !184
  br label %if.end

do.body2.i:                                       ; preds = %lpuart32_read.exit
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !185
  tail call void @arm_heavy_mb() #12
  %membase4.i26 = getelementptr inbounds %struct.uart_port, ptr %sport, i32 0, i32 2
  %18 = ptrtoint ptr %membase4.i26 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %membase4.i26, align 4
  %add.ptr5.i27 = getelementptr i8, ptr %19, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5.i27, i32 %and) #12, !srcloc !184
  br label %if.end

if.end:                                           ; preds = %do.body2.i, %do.body.i, %lpuart32_read.exit.if.end_crit_edge, %entry.if.end_crit_edge
  %iotype.i28 = getelementptr inbounds %struct.uart_port, ptr %sport, i32 0, i32 26
  %20 = ptrtoint ptr %iotype.i28 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %iotype.i28, align 2
  %22 = zext i8 %21 to i64
  call void @__sanitizer_cov_trace_switch(i64 %22, ptr @__sancov_gen_cov_switch_values.133)
  switch i8 %21, label %if.end.lpuart32_read.exit36_crit_edge [
    i8 3, label %sw.bb.i31
    i8 6, label %sw.bb2.i34
  ]

if.end.lpuart32_read.exit36_crit_edge:            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %lpuart32_read.exit36

sw.bb.i31:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %membase.i29 = getelementptr inbounds %struct.uart_port, ptr %sport, i32 0, i32 2
  %23 = ptrtoint ptr %membase.i29 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %membase.i29, align 4
  %add.ptr.i30 = getelementptr i8, ptr %24, i32 8
  %25 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i30) #12, !srcloc !180
  %26 = tail call i32 @llvm.bswap.i32(i32 %25) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !181
  br label %lpuart32_read.exit36

sw.bb2.i34:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %membase4.i32 = getelementptr inbounds %struct.uart_port, ptr %sport, i32 0, i32 2
  %27 = ptrtoint ptr %membase4.i32 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %membase4.i32, align 4
  %add.ptr5.i33 = getelementptr i8, ptr %28, i32 8
  %29 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5.i33) #12, !srcloc !180
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !182
  br label %lpuart32_read.exit36

lpuart32_read.exit36:                             ; preds = %sw.bb2.i34, %sw.bb.i31, %if.end.lpuart32_read.exit36_crit_edge
  %retval.0.i35 = phi i32 [ %29, %sw.bb2.i34 ], [ %26, %sw.bb.i31 ], [ 0, %if.end.lpuart32_read.exit36_crit_edge ]
  %30 = ptrtoint ptr %lpuart_dma_rx_use to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %lpuart_dma_rx_use, align 1, !range !194
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %31)
  %tobool5.not = icmp eq i8 %31, 0
  %or = or i32 %retval.0.i35, 2097152
  %spec.select = select i1 %tobool5.not, i32 %or, i32 %retval.0.i35
  %lpuart_dma_tx_use = getelementptr inbounds %struct.lpuart_port, ptr %sport, i32 0, i32 6
  %32 = ptrtoint ptr %lpuart_dma_tx_use to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %lpuart_dma_tx_use, align 4, !range !194
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %33)
  %tobool8.not = icmp eq i8 %33, 0
  %or10 = or i32 %spec.select, 8388608
  %temp.1 = select i1 %tobool8.not, i32 %or10, i32 %spec.select
  %34 = ptrtoint ptr %iotype.i28 to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %iotype.i28, align 2
  %36 = zext i8 %35 to i64
  call void @__sanitizer_cov_trace_switch(i64 %36, ptr @__sancov_gen_cov_switch_values.134)
  switch i8 %35, label %lpuart32_read.exit36.lpuart32_write.exit44_crit_edge [
    i8 3, label %do.body.i40
    i8 6, label %do.body2.i43
  ]

lpuart32_read.exit36.lpuart32_write.exit44_crit_edge: ; preds = %lpuart32_read.exit36
  call void @__sanitizer_cov_trace_pc() #14
  br label %lpuart32_write.exit44

do.body.i40:                                      ; preds = %lpuart32_read.exit36
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !183
  tail call void @arm_heavy_mb() #12
  %37 = tail call i32 @llvm.bswap.i32(i32 %temp.1) #12
  %membase.i38 = getelementptr inbounds %struct.uart_port, ptr %sport, i32 0, i32 2
  %38 = ptrtoint ptr %membase.i38 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %membase.i38, align 4
  %add.ptr.i39 = getelementptr i8, ptr %39, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i39, i32 %37) #12, !srcloc !184
  br label %lpuart32_write.exit44

do.body2.i43:                                     ; preds = %lpuart32_read.exit36
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !185
  tail call void @arm_heavy_mb() #12
  %membase4.i41 = getelementptr inbounds %struct.uart_port, ptr %sport, i32 0, i32 2
  %40 = ptrtoint ptr %membase4.i41 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %membase4.i41, align 4
  %add.ptr5.i42 = getelementptr i8, ptr %41, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5.i42, i32 %temp.1) #12, !srcloc !184
  br label %lpuart32_write.exit44

lpuart32_write.exit44:                            ; preds = %do.body2.i43, %do.body.i40, %lpuart32_read.exit36.lpuart32_write.exit44_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_request_chan(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @lpuart32_setup_watermark(ptr nocapture noundef readonly %sport) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %iotype.i = getelementptr inbounds %struct.uart_port, ptr %sport, i32 0, i32 26
  %0 = ptrtoint ptr %iotype.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %iotype.i, align 2
  %2 = zext i8 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.135)
  switch i8 %1, label %entry.lpuart32_read.exit_crit_edge [
    i8 3, label %sw.bb.i
    i8 6, label %sw.bb2.i
  ]

entry.lpuart32_read.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %lpuart32_read.exit

sw.bb.i:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %membase.i = getelementptr inbounds %struct.uart_port, ptr %sport, i32 0, i32 2
  %3 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %membase.i, align 4
  %add.ptr.i = getelementptr i8, ptr %4, i32 8
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #12, !srcloc !180
  %6 = tail call i32 @llvm.bswap.i32(i32 %5) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !181
  br label %lpuart32_read.exitthread-pre-split

sw.bb2.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %membase4.i = getelementptr inbounds %struct.uart_port, ptr %sport, i32 0, i32 2
  %7 = ptrtoint ptr %membase4.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %membase4.i, align 4
  %add.ptr5.i = getelementptr i8, ptr %8, i32 8
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5.i) #12, !srcloc !180
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !182
  br label %lpuart32_read.exitthread-pre-split

lpuart32_read.exitthread-pre-split:               ; preds = %sw.bb2.i, %sw.bb.i
  %retval.0.i.ph = phi i32 [ %6, %sw.bb.i ], [ %9, %sw.bb2.i ]
  %10 = ptrtoint ptr %iotype.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %.pr = load i8, ptr %iotype.i, align 2
  br label %lpuart32_read.exit

lpuart32_read.exit:                               ; preds = %lpuart32_read.exitthread-pre-split, %entry.lpuart32_read.exit_crit_edge
  %11 = phi i8 [ %.pr, %lpuart32_read.exitthread-pre-split ], [ %1, %entry.lpuart32_read.exit_crit_edge ]
  %retval.0.i = phi i32 [ %retval.0.i.ph, %lpuart32_read.exitthread-pre-split ], [ 0, %entry.lpuart32_read.exit_crit_edge ]
  %and = and i32 %retval.0.i, -15466497
  %12 = zext i8 %11 to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.136)
  switch i8 %11, label %lpuart32_read.exit.lpuart32_write.exit_crit_edge [
    i8 3, label %do.body.i
    i8 6, label %do.body2.i
  ]

lpuart32_read.exit.lpuart32_write.exit_crit_edge: ; preds = %lpuart32_read.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %lpuart32_write.exit

do.body.i:                                        ; preds = %lpuart32_read.exit
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !183
  tail call void @arm_heavy_mb() #12
  %13 = tail call i32 @llvm.bswap.i32(i32 %and) #12
  %membase.i19 = getelementptr inbounds %struct.uart_port, ptr %sport, i32 0, i32 2
  %14 = ptrtoint ptr %membase.i19 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %membase.i19, align 4
  %add.ptr.i20 = getelementptr i8, ptr %15, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i20, i32 %13) #12, !srcloc !184
  br label %lpuart32_write.exit

do.body2.i:                                       ; preds = %lpuart32_read.exit
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !185
  tail call void @arm_heavy_mb() #12
  %membase4.i21 = getelementptr inbounds %struct.uart_port, ptr %sport, i32 0, i32 2
  %16 = ptrtoint ptr %membase4.i21 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %membase4.i21, align 4
  %add.ptr5.i22 = getelementptr i8, ptr %17, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5.i22, i32 %and) #12, !srcloc !184
  br label %lpuart32_write.exit

lpuart32_write.exit:                              ; preds = %do.body2.i, %do.body.i, %lpuart32_read.exit.lpuart32_write.exit_crit_edge
  %18 = ptrtoint ptr %iotype.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %iotype.i, align 2
  %20 = zext i8 %19 to i64
  call void @__sanitizer_cov_trace_switch(i64 %20, ptr @__sancov_gen_cov_switch_values.137)
  switch i8 %19, label %lpuart32_write.exit.lpuart32_read.exit31_crit_edge [
    i8 3, label %sw.bb.i26
    i8 6, label %sw.bb2.i29
  ]

lpuart32_write.exit.lpuart32_read.exit31_crit_edge: ; preds = %lpuart32_write.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %lpuart32_read.exit31

sw.bb.i26:                                        ; preds = %lpuart32_write.exit
  call void @__sanitizer_cov_trace_pc() #14
  %membase.i24 = getelementptr inbounds %struct.uart_port, ptr %sport, i32 0, i32 2
  %21 = ptrtoint ptr %membase.i24 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %membase.i24, align 4
  %add.ptr.i25 = getelementptr i8, ptr %22, i32 24
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i25) #12, !srcloc !180
  %24 = tail call i32 @llvm.bswap.i32(i32 %23) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !181
  br label %lpuart32_read.exit31thread-pre-split

sw.bb2.i29:                                       ; preds = %lpuart32_write.exit
  call void @__sanitizer_cov_trace_pc() #14
  %membase4.i27 = getelementptr inbounds %struct.uart_port, ptr %sport, i32 0, i32 2
  %25 = ptrtoint ptr %membase4.i27 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %membase4.i27, align 4
  %add.ptr5.i28 = getelementptr i8, ptr %26, i32 24
  %27 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5.i28) #12, !srcloc !180
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !182
  br label %lpuart32_read.exit31thread-pre-split

lpuart32_read.exit31thread-pre-split:             ; preds = %sw.bb2.i29, %sw.bb.i26
  %retval.0.i30.ph = phi i32 [ %24, %sw.bb.i26 ], [ %27, %sw.bb2.i29 ]
  %28 = ptrtoint ptr %iotype.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %.pr56 = load i8, ptr %iotype.i, align 2
  br label %lpuart32_read.exit31

lpuart32_read.exit31:                             ; preds = %lpuart32_read.exit31thread-pre-split, %lpuart32_write.exit.lpuart32_read.exit31_crit_edge
  %29 = phi i8 [ %.pr56, %lpuart32_read.exit31thread-pre-split ], [ %19, %lpuart32_write.exit.lpuart32_read.exit31_crit_edge ]
  %retval.0.i30 = phi i32 [ %retval.0.i30.ph, %lpuart32_read.exit31thread-pre-split ], [ 0, %lpuart32_write.exit.lpuart32_read.exit31_crit_edge ]
  %or4 = or i32 %retval.0.i30, 49288
  %30 = zext i8 %29 to i64
  call void @__sanitizer_cov_trace_switch(i64 %30, ptr @__sancov_gen_cov_switch_values.138)
  switch i8 %29, label %lpuart32_read.exit31.lpuart32_write.exit39_crit_edge [
    i8 3, label %do.body.i35
    i8 6, label %do.body2.i38
  ]

lpuart32_read.exit31.lpuart32_write.exit39_crit_edge: ; preds = %lpuart32_read.exit31
  call void @__sanitizer_cov_trace_pc() #14
  br label %lpuart32_write.exit39

do.body.i35:                                      ; preds = %lpuart32_read.exit31
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !183
  tail call void @arm_heavy_mb() #12
  %31 = tail call i32 @llvm.bswap.i32(i32 %or4) #12
  %membase.i33 = getelementptr inbounds %struct.uart_port, ptr %sport, i32 0, i32 2
  %32 = ptrtoint ptr %membase.i33 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %membase.i33, align 4
  %add.ptr.i34 = getelementptr i8, ptr %33, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i34, i32 %31) #12, !srcloc !184
  br label %lpuart32_write.exit39

do.body2.i38:                                     ; preds = %lpuart32_read.exit31
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !185
  tail call void @arm_heavy_mb() #12
  %membase4.i36 = getelementptr inbounds %struct.uart_port, ptr %sport, i32 0, i32 2
  %34 = ptrtoint ptr %membase4.i36 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %membase4.i36, align 4
  %add.ptr5.i37 = getelementptr i8, ptr %35, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5.i37, i32 %or4) #12, !srcloc !184
  br label %lpuart32_write.exit39

lpuart32_write.exit39:                            ; preds = %do.body2.i38, %do.body.i35, %lpuart32_read.exit31.lpuart32_write.exit39_crit_edge
  %36 = ptrtoint ptr %iotype.i to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %iotype.i, align 2
  %38 = zext i8 %37 to i64
  call void @__sanitizer_cov_trace_switch(i64 %38, ptr @__sancov_gen_cov_switch_values.139)
  switch i8 %37, label %lpuart32_write.exit39.lpuart32_write.exit47_crit_edge [
    i8 3, label %do.body.i43
    i8 6, label %do.body2.i46
  ]

lpuart32_write.exit39.lpuart32_write.exit47_crit_edge: ; preds = %lpuart32_write.exit39
  call void @__sanitizer_cov_trace_pc() #14
  br label %lpuart32_write.exit47

do.body.i43:                                      ; preds = %lpuart32_write.exit39
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !183
  tail call void @arm_heavy_mb() #12
  %membase.i41 = getelementptr inbounds %struct.uart_port, ptr %sport, i32 0, i32 2
  %39 = ptrtoint ptr %membase.i41 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %membase.i41, align 4
  %add.ptr.i42 = getelementptr i8, ptr %40, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i42, i32 256) #12, !srcloc !184
  br label %lpuart32_write.exit47thread-pre-split

do.body2.i46:                                     ; preds = %lpuart32_write.exit39
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !185
  tail call void @arm_heavy_mb() #12
  %membase4.i44 = getelementptr inbounds %struct.uart_port, ptr %sport, i32 0, i32 2
  %41 = ptrtoint ptr %membase4.i44 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %membase4.i44, align 4
  %add.ptr5.i45 = getelementptr i8, ptr %42, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5.i45, i32 65536) #12, !srcloc !184
  br label %lpuart32_write.exit47thread-pre-split

lpuart32_write.exit47thread-pre-split:            ; preds = %do.body2.i46, %do.body.i43
  %43 = ptrtoint ptr %iotype.i to i32
  call void @__asan_load1_noabort(i32 %43)
  %.pr57 = load i8, ptr %iotype.i, align 2
  br label %lpuart32_write.exit47

lpuart32_write.exit47:                            ; preds = %lpuart32_write.exit47thread-pre-split, %lpuart32_write.exit39.lpuart32_write.exit47_crit_edge
  %44 = phi i8 [ %.pr57, %lpuart32_write.exit47thread-pre-split ], [ %37, %lpuart32_write.exit39.lpuart32_write.exit47_crit_edge ]
  %45 = zext i8 %44 to i64
  call void @__sanitizer_cov_trace_switch(i64 %45, ptr @__sancov_gen_cov_switch_values.140)
  switch i8 %44, label %lpuart32_write.exit47.lpuart32_write.exit55_crit_edge [
    i8 3, label %do.body.i51
    i8 6, label %do.body2.i54
  ]

lpuart32_write.exit47.lpuart32_write.exit55_crit_edge: ; preds = %lpuart32_write.exit47
  call void @__sanitizer_cov_trace_pc() #14
  br label %lpuart32_write.exit55

do.body.i51:                                      ; preds = %lpuart32_write.exit47
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !183
  tail call void @arm_heavy_mb() #12
  %46 = tail call i32 @llvm.bswap.i32(i32 %retval.0.i) #12
  %membase.i49 = getelementptr inbounds %struct.uart_port, ptr %sport, i32 0, i32 2
  %47 = ptrtoint ptr %membase.i49 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %membase.i49, align 4
  %add.ptr.i50 = getelementptr i8, ptr %48, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i50, i32 %46) #12, !srcloc !184
  br label %lpuart32_write.exit55

do.body2.i54:                                     ; preds = %lpuart32_write.exit47
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !185
  tail call void @arm_heavy_mb() #12
  %membase4.i52 = getelementptr inbounds %struct.uart_port, ptr %sport, i32 0, i32 2
  %49 = ptrtoint ptr %membase4.i52 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %membase4.i52, align 4
  %add.ptr5.i53 = getelementptr i8, ptr %50, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5.i53, i32 %retval.0.i) #12, !srcloc !184
  br label %lpuart32_write.exit55

lpuart32_write.exit55:                            ; preds = %do.body2.i54, %do.body.i51, %lpuart32_write.exit47.lpuart32_write.exit55_crit_edge
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @lpuart_start_rx_dma(ptr noundef %sport) unnamed_addr #10 align 64 {
entry:
  %dma_rx_sconfig = alloca %struct.dma_slave_config, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %dma_rx_sconfig) #12
  %0 = getelementptr inbounds i8, ptr %dma_rx_sconfig, i32 8
  %1 = call ptr @memset(ptr %0, i32 0, i32 40)
  %rx_ring = getelementptr inbounds %struct.lpuart_port, ptr %sport, i32 0, i32 21
  %state = getelementptr inbounds %struct.uart_port, ptr %sport, i32 0, i32 30
  %2 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %state, align 4
  %tty3 = getelementptr inbounds %struct.tty_port, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %tty3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %tty3, align 4
  %dma_rx_chan = getelementptr inbounds %struct.lpuart_port, ptr %sport, i32 0, i32 9
  %6 = ptrtoint ptr %dma_rx_chan to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dma_rx_chan, align 4
  %termios.i = getelementptr inbounds %struct.tty_struct, ptr %5, i32 0, i32 13
  %call.i = tail call i32 @tty_termios_baud_rate(ptr noundef %termios.i) #12
  %c_cflag = getelementptr inbounds %struct.tty_struct, ptr %5, i32 0, i32 13, i32 2
  %8 = ptrtoint ptr %c_cflag to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %c_cflag, align 4
  %and = and i32 %9, 48
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %and)
  %cmp = icmp eq i32 %and, 32
  %cond = select i1 %cmp, i32 9, i32 10
  %and6 = lshr i32 %9, 8
  %and6.lobit = and i32 %and6, 1
  %spec.select = add nuw nsw i32 %cond, %and6.lobit
  %mul = mul i32 %call.i, 10
  %div = sdiv i32 %mul, %spec.select
  %div7 = sdiv i32 %div, 1000
  %mul8 = shl nsw i32 %div7, 1
  %rx_dma_rng_buf_len = getelementptr inbounds %struct.lpuart_port, ptr %sport, i32 0, i32 22
  %10 = tail call i32 @llvm.ctlz.i32(i32 %mul8, i1 true) #12, !range !220
  %sub.i.op = xor i32 %10, 31
  %sub.i.op.op = shl nuw i32 1, %sub.i.op
  %11 = tail call i32 @llvm.smax.i32(i32 %sub.i.op.op, i32 16)
  %12 = ptrtoint ptr %rx_dma_rng_buf_len to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %rx_dma_rng_buf_len, align 4
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %11, i32 noundef 2848) #16
  %13 = ptrtoint ptr %rx_ring to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call9.i.i, ptr %rx_ring, align 4
  %tobool20.not = icmp eq ptr %call9.i.i, null
  br i1 %tobool20.not, label %entry.cleanup_crit_edge, label %if.end22

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end22:                                         ; preds = %entry
  %rx_sgl = getelementptr inbounds %struct.lpuart_port, ptr %sport, i32 0, i32 19
  %14 = ptrtoint ptr %rx_dma_rng_buf_len to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %rx_dma_rng_buf_len, align 4
  tail call void @sg_init_one(ptr noundef %rx_sgl, ptr noundef nonnull %call9.i.i, i32 noundef %15) #12
  %16 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %7, align 4
  %dev = getelementptr inbounds %struct.dma_device, ptr %17, i32 0, i32 15
  %18 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev, align 4
  %call26 = tail call i32 @dma_map_sg_attrs(ptr noundef %19, ptr noundef %rx_sgl, i32 noundef 1, i32 noundef 2, i32 noundef 0) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26)
  %tobool27.not = icmp eq i32 %call26, 0
  br i1 %tobool27.not, label %do.end, label %if.end31

do.end:                                           ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #14
  %dev30 = getelementptr inbounds %struct.uart_port, ptr %sport, i32 0, i32 45
  %20 = ptrtoint ptr %dev30 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dev30, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %21, ptr noundef nonnull @.str.40) #15
  br label %cleanup

if.end31:                                         ; preds = %if.end22
  %iotype.i = getelementptr inbounds %struct.uart_port, ptr %sport, i32 0, i32 26
  %22 = ptrtoint ptr %iotype.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %iotype.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %23)
  %switch.selectcmp.i = icmp eq i8 %23, 6
  %switch.select.i = select i1 %switch.selectcmp.i, i32 15, i32 7
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %23)
  %switch.selectcmp14.i = icmp eq i8 %23, 3
  %switch.select15.i = select i1 %switch.selectcmp14.i, i32 12, i32 %switch.select.i
  %mapbase8.i = getelementptr inbounds %struct.uart_port, ptr %sport, i32 0, i32 43
  %24 = ptrtoint ptr %mapbase8.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %mapbase8.i, align 4
  %add9.i = add i32 %switch.select15.i, %25
  %src_addr = getelementptr inbounds %struct.dma_slave_config, ptr %dma_rx_sconfig, i32 0, i32 1
  %26 = ptrtoint ptr %src_addr to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %add9.i, ptr %src_addr, align 4
  %src_addr_width = getelementptr inbounds %struct.dma_slave_config, ptr %dma_rx_sconfig, i32 0, i32 3
  %27 = ptrtoint ptr %src_addr_width to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 1, ptr %src_addr_width, align 4
  %src_maxburst = getelementptr inbounds %struct.dma_slave_config, ptr %dma_rx_sconfig, i32 0, i32 5
  %28 = ptrtoint ptr %src_maxburst to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 1, ptr %src_maxburst, align 4
  %29 = ptrtoint ptr %dma_rx_sconfig to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 2, ptr %dma_rx_sconfig, align 4
  %30 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %7, align 4
  %device_config.i = getelementptr inbounds %struct.dma_device, ptr %31, i32 0, i32 44
  %32 = ptrtoint ptr %device_config.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %device_config.i, align 4
  %tobool.not.i128 = icmp eq ptr %33, null
  br i1 %tobool.not.i128, label %if.end31.do.end38_crit_edge, label %dmaengine_slave_config.exit

if.end31.do.end38_crit_edge:                      ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end38

dmaengine_slave_config.exit:                      ; preds = %if.end31
  %call.i129 = call i32 %33(ptr noundef %7, ptr noundef nonnull %dma_rx_sconfig) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i129)
  %cmp34 = icmp slt i32 %call.i129, 0
  br i1 %cmp34, label %dmaengine_slave_config.exit.do.end38_crit_edge, label %if.end41

dmaengine_slave_config.exit.do.end38_crit_edge:   ; preds = %dmaengine_slave_config.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end38

do.end38:                                         ; preds = %dmaengine_slave_config.exit.do.end38_crit_edge, %if.end31.do.end38_crit_edge
  %retval.0.i142 = phi i32 [ %call.i129, %dmaengine_slave_config.exit.do.end38_crit_edge ], [ -38, %if.end31.do.end38_crit_edge ]
  %dev40 = getelementptr inbounds %struct.uart_port, ptr %sport, i32 0, i32 45
  %34 = ptrtoint ptr %dev40 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %dev40, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %35, ptr noundef nonnull @.str.43, i32 noundef %retval.0.i142) #15
  br label %cleanup

if.end41:                                         ; preds = %dmaengine_slave_config.exit
  %dma_address = getelementptr inbounds %struct.lpuart_port, ptr %sport, i32 0, i32 19, i32 3
  %36 = ptrtoint ptr %dma_address to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %dma_address, align 4
  %length = getelementptr inbounds %struct.lpuart_port, ptr %sport, i32 0, i32 19, i32 2
  %38 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %length, align 4
  %div46127 = lshr i32 %39, 1
  %tobool.not.i130 = icmp eq ptr %7, null
  br i1 %tobool.not.i130, label %if.end41.dmaengine_prep_dma_cyclic.exit.thread_crit_edge, label %lor.lhs.false.i

if.end41.dmaengine_prep_dma_cyclic.exit.thread_crit_edge: ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #14
  br label %dmaengine_prep_dma_cyclic.exit.thread

lor.lhs.false.i:                                  ; preds = %if.end41
  %40 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %7, align 4
  %tobool1.not.i = icmp eq ptr %41, null
  br i1 %tobool1.not.i, label %lor.lhs.false.i.dmaengine_prep_dma_cyclic.exit.thread_crit_edge, label %lor.lhs.false2.i

lor.lhs.false.i.dmaengine_prep_dma_cyclic.exit.thread_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %dmaengine_prep_dma_cyclic.exit.thread

lor.lhs.false2.i:                                 ; preds = %lor.lhs.false.i
  %device_prep_dma_cyclic.i = getelementptr inbounds %struct.dma_device, ptr %41, i32 0, i32 40
  %42 = ptrtoint ptr %device_prep_dma_cyclic.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %device_prep_dma_cyclic.i, align 4
  %tobool4.not.i = icmp eq ptr %43, null
  br i1 %tobool4.not.i, label %lor.lhs.false2.i.dmaengine_prep_dma_cyclic.exit.thread_crit_edge, label %dmaengine_prep_dma_cyclic.exit

lor.lhs.false2.i.dmaengine_prep_dma_cyclic.exit.thread_crit_edge: ; preds = %lor.lhs.false2.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %dmaengine_prep_dma_cyclic.exit.thread

dmaengine_prep_dma_cyclic.exit.thread:            ; preds = %lor.lhs.false2.i.dmaengine_prep_dma_cyclic.exit.thread_crit_edge, %lor.lhs.false.i.dmaengine_prep_dma_cyclic.exit.thread_crit_edge, %if.end41.dmaengine_prep_dma_cyclic.exit.thread_crit_edge
  %dma_rx_desc144 = getelementptr inbounds %struct.lpuart_port, ptr %sport, i32 0, i32 11
  %44 = ptrtoint ptr %dma_rx_desc144 to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr null, ptr %dma_rx_desc144, align 4
  br label %do.end53

dmaengine_prep_dma_cyclic.exit:                   ; preds = %lor.lhs.false2.i
  %call.i131 = call ptr %43(ptr noundef nonnull %7, i32 noundef %37, i32 noundef %39, i32 noundef %div46127, i32 noundef 2, i32 noundef 1) #12
  %dma_rx_desc = getelementptr inbounds %struct.lpuart_port, ptr %sport, i32 0, i32 11
  %45 = ptrtoint ptr %dma_rx_desc to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %call.i131, ptr %dma_rx_desc, align 4
  %tobool49.not = icmp eq ptr %call.i131, null
  br i1 %tobool49.not, label %dmaengine_prep_dma_cyclic.exit.do.end53_crit_edge, label %if.end56

dmaengine_prep_dma_cyclic.exit.do.end53_crit_edge: ; preds = %dmaengine_prep_dma_cyclic.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end53

do.end53:                                         ; preds = %dmaengine_prep_dma_cyclic.exit.do.end53_crit_edge, %dmaengine_prep_dma_cyclic.exit.thread
  %dev55 = getelementptr inbounds %struct.uart_port, ptr %sport, i32 0, i32 45
  %46 = ptrtoint ptr %dev55 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %dev55, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %47, ptr noundef nonnull @.str.46) #15
  br label %cleanup

if.end56:                                         ; preds = %dmaengine_prep_dma_cyclic.exit
  %callback = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %call.i131, i32 0, i32 6
  %48 = ptrtoint ptr %callback to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr @lpuart_dma_rx_complete, ptr %callback, align 4
  %49 = ptrtoint ptr %dma_rx_desc to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %dma_rx_desc, align 4
  %callback_param = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %50, i32 0, i32 8
  %51 = ptrtoint ptr %callback_param to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %sport, ptr %callback_param, align 4
  %52 = load ptr, ptr %dma_rx_desc, align 4
  %tx_submit.i = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %52, i32 0, i32 4
  %53 = ptrtoint ptr %tx_submit.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %tx_submit.i, align 4
  %call.i133 = call i32 %54(ptr noundef %52) #12
  %dma_rx_cookie = getelementptr inbounds %struct.lpuart_port, ptr %sport, i32 0, i32 13
  %55 = ptrtoint ptr %dma_rx_cookie to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %call.i133, ptr %dma_rx_cookie, align 4
  %56 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %7, align 4
  %device_issue_pending.i = getelementptr inbounds %struct.dma_device, ptr %57, i32 0, i32 50
  %58 = ptrtoint ptr %device_issue_pending.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %device_issue_pending.i, align 4
  call void %59(ptr noundef nonnull %7) #12
  %60 = ptrtoint ptr %iotype.i to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %iotype.i, align 2
  %62 = zext i8 %61 to i64
  call void @__sanitizer_cov_trace_switch(i64 %62, ptr @__sancov_gen_cov_switch_values.141)
  switch i8 %61, label %do.body66 [
    i8 3, label %sw.bb.i
    i8 6, label %sw.bb2.i
  ]

sw.bb.i:                                          ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #14
  %membase.i = getelementptr inbounds %struct.uart_port, ptr %sport, i32 0, i32 2
  %63 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %membase.i, align 4
  %65 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %64) #12, !srcloc !180
  %66 = call i32 @llvm.bswap.i32(i32 %65) #12
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !181
  br label %lpuart32_read.exitthread-pre-split

sw.bb2.i:                                         ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #14
  %membase4.i = getelementptr inbounds %struct.uart_port, ptr %sport, i32 0, i32 2
  %67 = ptrtoint ptr %membase4.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %membase4.i, align 4
  %69 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %68) #12, !srcloc !180
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !182
  br label %lpuart32_read.exitthread-pre-split

lpuart32_read.exitthread-pre-split:               ; preds = %sw.bb2.i, %sw.bb.i
  %retval.0.i136.ph = phi i32 [ %66, %sw.bb.i ], [ %69, %sw.bb2.i ]
  %70 = ptrtoint ptr %iotype.i to i32
  call void @__asan_load1_noabort(i32 %70)
  %.pr = load i8, ptr %iotype.i, align 2
  %or = or i32 %retval.0.i136.ph, 2097152
  %71 = zext i8 %.pr to i64
  call void @__sanitizer_cov_trace_switch(i64 %71, ptr @__sancov_gen_cov_switch_values.142)
  switch i8 %.pr, label %lpuart32_read.exitthread-pre-split.cleanup_crit_edge [
    i8 3, label %do.body.i
    i8 6, label %do.body2.i
  ]

lpuart32_read.exitthread-pre-split.cleanup_crit_edge: ; preds = %lpuart32_read.exitthread-pre-split
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

do.body.i:                                        ; preds = %lpuart32_read.exitthread-pre-split
  call void @__sanitizer_cov_trace_pc() #14
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !183
  call void @arm_heavy_mb() #12
  %72 = call i32 @llvm.bswap.i32(i32 %or) #12
  %membase.i138 = getelementptr inbounds %struct.uart_port, ptr %sport, i32 0, i32 2
  %73 = ptrtoint ptr %membase.i138 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %membase.i138, align 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %74, i32 %72) #12, !srcloc !184
  br label %cleanup

do.body2.i:                                       ; preds = %lpuart32_read.exitthread-pre-split
  call void @__sanitizer_cov_trace_pc() #14
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !185
  call void @arm_heavy_mb() #12
  %membase4.i139 = getelementptr inbounds %struct.uart_port, ptr %sport, i32 0, i32 2
  %75 = ptrtoint ptr %membase4.i139 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %membase4.i139, align 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %76, i32 %or) #12, !srcloc !184
  br label %cleanup

do.body66:                                        ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #14
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !221
  call void @arm_heavy_mb() #12
  %membase = getelementptr inbounds %struct.uart_port, ptr %sport, i32 0, i32 2
  %77 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %membase, align 4
  %add.ptr = getelementptr i8, ptr %78, i32 11
  %79 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr) #12, !srcloc !186
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !222
  %80 = or i8 %79, 32
  %81 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %membase, align 4
  %add.ptr76 = getelementptr i8, ptr %82, i32 11
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr76, i8 %80) #12, !srcloc !191
  br label %cleanup

cleanup:                                          ; preds = %do.body66, %do.body2.i, %do.body.i, %lpuart32_read.exitthread-pre-split.cleanup_crit_edge, %do.end53, %do.end38, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.0.i142, %do.end38 ], [ -14, %do.end53 ], [ -22, %do.end ], [ -12, %entry.cleanup_crit_edge ], [ 0, %do.body66 ], [ 0, %lpuart32_read.exitthread-pre-split.cleanup_crit_edge ], [ 0, %do.body.i ], [ 0, %do.body2.i ]
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %dma_rx_sconfig) #12
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @lpuart_dma_rx_complete(ptr noundef %arg) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @lpuart_copy_rx_to_tty(ptr noundef %arg)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tty_termios_baud_rate(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #5

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #11

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @lpuart_copy_rx_to_tty(ptr noundef %sport) unnamed_addr #3 align 64 {
entry:
  %state3 = alloca %struct.dma_tx_state, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %state = getelementptr inbounds %struct.uart_port, ptr %sport, i32 0, i32 30
  %0 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %state, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %state3) #12
  %2 = getelementptr inbounds %struct.dma_tx_state, ptr %state3, i32 0, i32 2
  %dma_rx_chan = getelementptr inbounds %struct.lpuart_port, ptr %sport, i32 0, i32 9
  %3 = call ptr @memset(ptr %state3, i32 255, i32 16)
  %4 = ptrtoint ptr %dma_rx_chan to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dma_rx_chan, align 4
  %rx_ring = getelementptr inbounds %struct.lpuart_port, ptr %sport, i32 0, i32 21
  %iotype.i = getelementptr inbounds %struct.uart_port, ptr %sport, i32 0, i32 26
  %6 = ptrtoint ptr %iotype.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %iotype.i, align 2
  %8 = zext i8 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.143)
  switch i8 %7, label %if.else21 [
    i8 3, label %sw.bb.i
    i8 6, label %sw.bb2.i
  ]

sw.bb.i:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %membase.i = getelementptr inbounds %struct.uart_port, ptr %sport, i32 0, i32 2
  %9 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %membase.i, align 4
  %add.ptr.i = getelementptr i8, ptr %10, i32 4
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #12, !srcloc !180
  %12 = tail call i32 @llvm.bswap.i32(i32 %11) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !181
  br label %lpuart32_read.exit

sw.bb2.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %membase4.i = getelementptr inbounds %struct.uart_port, ptr %sport, i32 0, i32 2
  %13 = ptrtoint ptr %membase4.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %membase4.i, align 4
  %add.ptr5.i = getelementptr i8, ptr %14, i32 4
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5.i) #12, !srcloc !180
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !182
  br label %lpuart32_read.exit

lpuart32_read.exit:                               ; preds = %sw.bb2.i, %sw.bb.i
  %retval.0.i = phi i32 [ %15, %sw.bb2.i ], [ %12, %sw.bb.i ]
  %and = and i32 %retval.0.i, 196608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %lpuart32_read.exit.if.end104_crit_edge, label %if.then6

lpuart32_read.exit.if.end104_crit_edge:           ; preds = %lpuart32_read.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end104

if.then6:                                         ; preds = %lpuart32_read.exit
  %16 = ptrtoint ptr %iotype.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %iotype.i, align 2
  %18 = zext i8 %17 to i64
  call void @__sanitizer_cov_trace_switch(i64 %18, ptr @__sancov_gen_cov_switch_values.144)
  switch i8 %17, label %if.then6.lpuart32_read.exit285_crit_edge [
    i8 3, label %sw.bb.i280
    i8 6, label %sw.bb2.i283
  ]

if.then6.lpuart32_read.exit285_crit_edge:         ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #14
  br label %lpuart32_read.exit285

sw.bb.i280:                                       ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #14
  %membase.i278 = getelementptr inbounds %struct.uart_port, ptr %sport, i32 0, i32 2
  %19 = ptrtoint ptr %membase.i278 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %membase.i278, align 4
  %add.ptr.i279 = getelementptr i8, ptr %20, i32 12
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i279) #12, !srcloc !180
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !181
  br label %lpuart32_read.exit285

sw.bb2.i283:                                      ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #14
  %membase4.i281 = getelementptr inbounds %struct.uart_port, ptr %sport, i32 0, i32 2
  %22 = ptrtoint ptr %membase4.i281 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %membase4.i281, align 4
  %add.ptr5.i282 = getelementptr i8, ptr %23, i32 12
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5.i282) #12, !srcloc !180
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !182
  br label %lpuart32_read.exit285

lpuart32_read.exit285:                            ; preds = %sw.bb2.i283, %sw.bb.i280, %if.then6.lpuart32_read.exit285_crit_edge
  %and9 = and i32 %retval.0.i, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9)
  %tobool10.not = icmp eq i32 %and9, 0
  br i1 %tobool10.not, label %if.else, label %if.then11

if.then11:                                        ; preds = %lpuart32_read.exit285
  call void @__sanitizer_cov_trace_pc() #14
  %parity = getelementptr inbounds %struct.uart_port, ptr %sport, i32 0, i32 31, i32 8
  %25 = ptrtoint ptr %parity to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %parity, align 4
  %inc = add i32 %26, 1
  store i32 %inc, ptr %parity, align 4
  br label %if.end104

if.else:                                          ; preds = %lpuart32_read.exit285
  %and13 = and i32 %retval.0.i, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13)
  %tobool14.not = icmp eq i32 %and13, 0
  br i1 %tobool14.not, label %if.else.if.end104_crit_edge, label %if.then15

if.else.if.end104_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end104

if.then15:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  %frame = getelementptr inbounds %struct.uart_port, ptr %sport, i32 0, i32 31, i32 6
  %27 = ptrtoint ptr %frame to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %frame, align 4
  %inc18 = add i32 %28, 1
  store i32 %inc18, ptr %frame, align 4
  br label %if.end104

if.else21:                                        ; preds = %entry
  %membase = getelementptr inbounds %struct.uart_port, ptr %sport, i32 0, i32 2
  %29 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %membase, align 4
  %add.ptr = getelementptr i8, ptr %30, i32 4
  %31 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr) #12, !srcloc !186
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !223
  %conv = zext i8 %31 to i32
  %and26 = and i32 %conv, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and26)
  %tobool27.not = icmp eq i32 %and26, 0
  br i1 %tobool27.not, label %if.else21.if.end104_crit_edge, label %if.then28

if.else21.if.end104_crit_edge:                    ; preds = %if.else21
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end104

if.then28:                                        ; preds = %if.else21
  %32 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %membase, align 4
  %add.ptr33 = getelementptr i8, ptr %33, i32 3
  %34 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr33) #12, !srcloc !186
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !224
  %35 = and i8 %34, -5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !225
  tail call void @arm_heavy_mb() #12
  %36 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %membase, align 4
  %add.ptr42 = getelementptr i8, ptr %37, i32 3
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr42, i8 %35) #12, !srcloc !191
  %38 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %membase, align 4
  %add.ptr47 = getelementptr i8, ptr %39, i32 7
  %40 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr47) #12, !srcloc !186
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !226
  %and52 = and i32 %conv, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and52)
  %tobool53.not = icmp eq i32 %and52, 0
  br i1 %tobool53.not, label %if.else59, label %if.then54

if.then54:                                        ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #14
  %parity57 = getelementptr inbounds %struct.uart_port, ptr %sport, i32 0, i32 31, i32 8
  br label %if.end69.sink.split

if.else59:                                        ; preds = %if.then28
  %and61 = and i32 %conv, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and61)
  %tobool62.not = icmp eq i32 %and61, 0
  br i1 %tobool62.not, label %if.else59.if.end69_crit_edge, label %if.then63

if.else59.if.end69_crit_edge:                     ; preds = %if.else59
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end69

if.then63:                                        ; preds = %if.else59
  call void @__sanitizer_cov_trace_pc() #14
  %frame66 = getelementptr inbounds %struct.uart_port, ptr %sport, i32 0, i32 31, i32 6
  br label %if.end69.sink.split

if.end69.sink.split:                              ; preds = %if.then63, %if.then54
  %frame66.sink298 = phi ptr [ %frame66, %if.then63 ], [ %parity57, %if.then54 ]
  %41 = ptrtoint ptr %frame66.sink298 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %frame66.sink298, align 4
  %inc67 = add i32 %42, 1
  store i32 %inc67, ptr %frame66.sink298, align 4
  br label %if.end69

if.end69:                                         ; preds = %if.end69.sink.split, %if.else59.if.end69_crit_edge
  %43 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %membase, align 4
  %add.ptr74 = getelementptr i8, ptr %44, i32 18
  %45 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr74) #12, !srcloc !186
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !227
  %46 = and i8 %45, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %46)
  %tobool80.not = icmp eq i8 %46, 0
  br i1 %tobool80.not, label %if.end69.if.end94_crit_edge, label %do.body82

if.end69.if.end94_crit_edge:                      ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end94

do.body82:                                        ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !228
  tail call void @arm_heavy_mb() #12
  %47 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %membase, align 4
  %add.ptr87 = getelementptr i8, ptr %48, i32 18
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr87, i8 1) #12, !srcloc !191
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !229
  tail call void @arm_heavy_mb() #12
  %49 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %membase, align 4
  %add.ptr93 = getelementptr i8, ptr %50, i32 17
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr93, i8 64) #12, !srcloc !191
  br label %if.end94

if.end94:                                         ; preds = %do.body82, %if.end69.if.end94_crit_edge
  %51 = or i8 %34, 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !230
  tail call void @arm_heavy_mb() #12
  %52 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %membase, align 4
  %add.ptr102 = getelementptr i8, ptr %53, i32 3
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr102, i8 %51) #12, !srcloc !191
  br label %if.end104

if.end104:                                        ; preds = %if.end94, %if.else21.if.end104_crit_edge, %if.then15, %if.else.if.end104_crit_edge, %if.then11, %lpuart32_read.exit.if.end104_crit_edge
  %dma_rx_desc = getelementptr inbounds %struct.lpuart_port, ptr %sport, i32 0, i32 11
  %54 = ptrtoint ptr %dma_rx_desc to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %dma_rx_desc, align 4
  %flags.i = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %55, i32 0, i32 1
  %56 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %flags.i, align 4
  %or.i = or i32 %57, 2
  store i32 %or.i, ptr %flags.i, align 4
  %call111 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %sport) #12
  %dma_rx_cookie = getelementptr inbounds %struct.lpuart_port, ptr %sport, i32 0, i32 13
  %58 = ptrtoint ptr %dma_rx_cookie to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %dma_rx_cookie, align 4
  %60 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %5, align 4
  %device_tx_status.i = getelementptr inbounds %struct.dma_device, ptr %61, i32 0, i32 49
  %62 = ptrtoint ptr %device_tx_status.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %device_tx_status.i, align 4
  %call.i = call i32 %63(ptr noundef %5, i32 noundef %59, ptr noundef nonnull %state3) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %call.i)
  %cmp117 = icmp eq i32 %call.i, 3
  br i1 %cmp117, label %do.end122, label %if.end126

do.end122:                                        ; preds = %if.end104
  call void @__sanitizer_cov_trace_pc() #14
  %dev = getelementptr inbounds %struct.uart_port, ptr %sport, i32 0, i32 45
  %64 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %dev, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %65, ptr noundef nonnull @.str.48) #15
  call void @_raw_spin_unlock_irqrestore(ptr noundef %sport, i32 noundef %call111) #12
  br label %cleanup

if.end126:                                        ; preds = %if.end104
  %66 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %5, align 4
  %dev127 = getelementptr inbounds %struct.dma_device, ptr %67, i32 0, i32 15
  %68 = ptrtoint ptr %dev127 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %dev127, align 4
  %rx_sgl = getelementptr inbounds %struct.lpuart_port, ptr %sport, i32 0, i32 19
  call void @dma_sync_sg_for_cpu(ptr noundef %69, ptr noundef %rx_sgl, i32 noundef 1, i32 noundef 2) #12
  %length = getelementptr inbounds %struct.lpuart_port, ptr %sport, i32 0, i32 19, i32 2
  %70 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %length, align 4
  %72 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %2, align 4
  %sub = sub i32 %71, %73
  %head = getelementptr inbounds %struct.lpuart_port, ptr %sport, i32 0, i32 21, i32 1
  %74 = ptrtoint ptr %head to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 %sub, ptr %head, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %71, i32 %73)
  %cmp133 = icmp ult i32 %71, %73
  br i1 %cmp133, label %do.body138, label %do.end146, !prof !211

do.body138:                                       ; preds = %if.end126
  call void @__sanitizer_cov_trace_pc() #14
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/tty/serial/fsl_lpuart.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1196, 0\0A.popsection", ""() #12, !srcloc !231
  unreachable

do.end146:                                        ; preds = %if.end126
  %sysrq = getelementptr inbounds %struct.uart_port, ptr %sport, i32 0, i32 46
  %75 = ptrtoint ptr %sysrq to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %sysrq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %76)
  %tobool148.not = icmp eq i32 %76, 0
  %tail = getelementptr inbounds %struct.lpuart_port, ptr %sport, i32 0, i32 21, i32 2
  %77 = ptrtoint ptr %tail to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %tail, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %sub, i32 %78)
  %cmp152 = icmp slt i32 %sub, %78
  br i1 %tobool148.not, label %if.end150, label %if.then149

if.then149:                                       ; preds = %do.end146
  br i1 %cmp152, label %if.then.i, label %if.then149.if.end.i_crit_edge

if.then149.if.end.i_crit_edge:                    ; preds = %if.then149
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i

if.then.i:                                        ; preds = %if.then149
  %sub.i = sub i32 %71, %78
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i)
  %tobool.not15.i.i = icmp eq i32 %sub.i, 0
  br i1 %tobool.not15.i.i, label %if.then.i.lpuart_handle_sysrq_chars.exit.i_crit_edge, label %while.body.lr.ph.i.i

if.then.i.lpuart_handle_sysrq_chars.exit.i_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %lpuart_handle_sysrq_chars.exit.i

while.body.lr.ph.i.i:                             ; preds = %if.then.i
  %79 = ptrtoint ptr %rx_ring to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %rx_ring, align 4
  %add.ptr.i287 = getelementptr i8, ptr %80, i32 %78
  br label %while.body.i.i

while.body.i.i:                                   ; preds = %if.end.i.i.while.body.i.i_crit_edge, %while.body.lr.ph.i.i
  %dec17.in.i.i = phi i32 [ %sub.i, %while.body.lr.ph.i.i ], [ %dec17.i.i, %if.end.i.i.while.body.i.i_crit_edge ]
  %p.addr.016.i.i = phi ptr [ %add.ptr.i287, %while.body.lr.ph.i.i ], [ %incdec.ptr.i.i, %if.end.i.i.while.body.i.i_crit_edge ]
  %dec17.i.i = add i32 %dec17.in.i.i, -1
  %81 = ptrtoint ptr %p.addr.016.i.i to i32
  call void @__asan_load1_noabort(i32 %81)
  %82 = load i8, ptr %p.addr.016.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %82)
  %tobool1.not.i.i = icmp eq i8 %82, 0
  br i1 %tobool1.not.i.i, label %while.body.i.i.if.end.i.i_crit_edge, label %land.lhs.true.i.i

while.body.i.i.if.end.i.i_crit_edge:              ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i.i

land.lhs.true.i.i:                                ; preds = %while.body.i.i
  %conv.i.i = zext i8 %82 to i32
  %83 = ptrtoint ptr %sysrq to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %sysrq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %84)
  %tobool.not.i.i.i = icmp eq i32 %84, 0
  br i1 %tobool.not.i.i.i, label %land.lhs.true.i.i.if.end.i.i_crit_edge, label %land.lhs.true.i.i.i

land.lhs.true.i.i.if.end.i.i_crit_edge:           ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i.i

land.lhs.true.i.i.i:                              ; preds = %land.lhs.true.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %85 = load volatile i32, ptr @jiffies, align 128
  %sub.i.i.i = sub i32 %85, %84
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i.i.i)
  %cmp.i.i.i = icmp slt i32 %sub.i.i.i, 0
  br i1 %cmp.i.i.i, label %if.then3.i.i.i, label %land.lhs.true.i.i.i.uart_handle_sysrq_char.exit.thread11.i.i_crit_edge

land.lhs.true.i.i.i.uart_handle_sysrq_char.exit.thread11.i.i_crit_edge: ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %uart_handle_sysrq_char.exit.thread11.i.i

if.then3.i.i.i:                                   ; preds = %land.lhs.true.i.i.i
  %call.i.i.i = call i32 @sysrq_mask() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool4.not.i.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool4.not.i.i.i, label %if.end7.i.i.i, label %uart_handle_sysrq_char.exit.i.i

if.end7.i.i.i:                                    ; preds = %if.then3.i.i.i
  %call8.i.i.i = call zeroext i1 @uart_try_toggle_sysrq(ptr noundef %sport, i32 noundef %conv.i.i) #12
  br i1 %call8.i.i.i, label %if.end7.i.i.i.lpuart_handle_sysrq_chars.exit.i_crit_edge, label %if.end7.i.i.i.uart_handle_sysrq_char.exit.thread11.i.i_crit_edge

if.end7.i.i.i.uart_handle_sysrq_char.exit.thread11.i.i_crit_edge: ; preds = %if.end7.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %uart_handle_sysrq_char.exit.thread11.i.i

if.end7.i.i.i.lpuart_handle_sysrq_chars.exit.i_crit_edge: ; preds = %if.end7.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %lpuart_handle_sysrq_chars.exit.i

uart_handle_sysrq_char.exit.thread11.i.i:         ; preds = %if.end7.i.i.i.uart_handle_sysrq_char.exit.thread11.i.i_crit_edge, %land.lhs.true.i.i.i.uart_handle_sysrq_char.exit.thread11.i.i_crit_edge
  %86 = ptrtoint ptr %sysrq to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 0, ptr %sysrq, align 4
  br label %if.end.i.i

uart_handle_sysrq_char.exit.i.i:                  ; preds = %if.then3.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %conv.i.i.le = zext i8 %82 to i32
  call void @handle_sysrq(i32 noundef %conv.i.i.le) #12
  %87 = ptrtoint ptr %sysrq to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 0, ptr %sysrq, align 4
  br label %lpuart_handle_sysrq_chars.exit.i

if.end.i.i:                                       ; preds = %uart_handle_sysrq_char.exit.thread11.i.i, %land.lhs.true.i.i.if.end.i.i_crit_edge, %while.body.i.i.if.end.i.i_crit_edge
  %incdec.ptr.i.i = getelementptr i8, ptr %p.addr.016.i.i, i32 1
  %tobool.not.i.i = icmp eq i32 %dec17.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i.lpuart_handle_sysrq_chars.exit.i_crit_edge, label %if.end.i.i.while.body.i.i_crit_edge

if.end.i.i.while.body.i.i_crit_edge:              ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body.i.i

if.end.i.i.lpuart_handle_sysrq_chars.exit.i_crit_edge: ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %lpuart_handle_sysrq_chars.exit.i

lpuart_handle_sysrq_chars.exit.i:                 ; preds = %if.end.i.i.lpuart_handle_sysrq_chars.exit.i_crit_edge, %uart_handle_sysrq_char.exit.i.i, %if.end7.i.i.i.lpuart_handle_sysrq_chars.exit.i_crit_edge, %if.then.i.lpuart_handle_sysrq_chars.exit.i_crit_edge
  %88 = ptrtoint ptr %tail to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 0, ptr %tail, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %lpuart_handle_sysrq_chars.exit.i, %if.then149.if.end.i_crit_edge
  %89 = ptrtoint ptr %head to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %head, align 4
  %91 = ptrtoint ptr %tail to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %tail, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %90, i32 %92)
  %cmp6.i = icmp sgt i32 %90, %92
  br i1 %cmp6.i, label %if.then7.i, label %if.end.i.exit_crit_edge

if.end.i.exit_crit_edge:                          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %exit

if.then7.i:                                       ; preds = %if.end.i
  %sub10.i = sub i32 %90, %92
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub10.i)
  %tobool.not15.i37.i = icmp eq i32 %sub10.i, 0
  br i1 %tobool.not15.i37.i, label %if.then7.i.lpuart_handle_sysrq_chars.exit62.i_crit_edge, label %while.body.lr.ph.i39.i

if.then7.i.lpuart_handle_sysrq_chars.exit62.i_crit_edge: ; preds = %if.then7.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %lpuart_handle_sysrq_chars.exit62.i

while.body.lr.ph.i39.i:                           ; preds = %if.then7.i
  %93 = ptrtoint ptr %rx_ring to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %rx_ring, align 4
  %add.ptr14.i = getelementptr i8, ptr %94, i32 %92
  br label %while.body.i44.i

while.body.i44.i:                                 ; preds = %if.end.i61.i.while.body.i44.i_crit_edge, %while.body.lr.ph.i39.i
  %dec17.in.i40.i = phi i32 [ %sub10.i, %while.body.lr.ph.i39.i ], [ %dec17.i42.i, %if.end.i61.i.while.body.i44.i_crit_edge ]
  %p.addr.016.i41.i = phi ptr [ %add.ptr14.i, %while.body.lr.ph.i39.i ], [ %incdec.ptr.i59.i, %if.end.i61.i.while.body.i44.i_crit_edge ]
  %dec17.i42.i = add i32 %dec17.in.i40.i, -1
  %95 = ptrtoint ptr %p.addr.016.i41.i to i32
  call void @__asan_load1_noabort(i32 %95)
  %96 = load i8, ptr %p.addr.016.i41.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %96)
  %tobool1.not.i43.i = icmp eq i8 %96, 0
  br i1 %tobool1.not.i43.i, label %while.body.i44.i.if.end.i61.i_crit_edge, label %land.lhs.true.i47.i

while.body.i44.i.if.end.i61.i_crit_edge:          ; preds = %while.body.i44.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i61.i

land.lhs.true.i47.i:                              ; preds = %while.body.i44.i
  %conv.i45.i = zext i8 %96 to i32
  %97 = ptrtoint ptr %sysrq to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %sysrq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %98)
  %tobool.not.i.i46.i = icmp eq i32 %98, 0
  br i1 %tobool.not.i.i46.i, label %land.lhs.true.i47.i.if.end.i61.i_crit_edge, label %land.lhs.true.i.i50.i

land.lhs.true.i47.i.if.end.i61.i_crit_edge:       ; preds = %land.lhs.true.i47.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i61.i

land.lhs.true.i.i50.i:                            ; preds = %land.lhs.true.i47.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %99 = load volatile i32, ptr @jiffies, align 128
  %sub.i.i48.i = sub i32 %99, %98
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i.i48.i)
  %cmp.i.i49.i = icmp slt i32 %sub.i.i48.i, 0
  br i1 %cmp.i.i49.i, label %if.then3.i.i53.i, label %land.lhs.true.i.i50.i.uart_handle_sysrq_char.exit.thread11.i56.i_crit_edge

land.lhs.true.i.i50.i.uart_handle_sysrq_char.exit.thread11.i56.i_crit_edge: ; preds = %land.lhs.true.i.i50.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %uart_handle_sysrq_char.exit.thread11.i56.i

if.then3.i.i53.i:                                 ; preds = %land.lhs.true.i.i50.i
  %call.i.i51.i = call i32 @sysrq_mask() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i51.i)
  %tobool4.not.i.i52.i = icmp eq i32 %call.i.i51.i, 0
  br i1 %tobool4.not.i.i52.i, label %if.end7.i.i55.i, label %uart_handle_sysrq_char.exit.i58.i

if.end7.i.i55.i:                                  ; preds = %if.then3.i.i53.i
  %call8.i.i54.i = call zeroext i1 @uart_try_toggle_sysrq(ptr noundef %sport, i32 noundef %conv.i45.i) #12
  br i1 %call8.i.i54.i, label %if.end7.i.i55.i.lpuart_handle_sysrq_chars.exit62.i_crit_edge, label %if.end7.i.i55.i.uart_handle_sysrq_char.exit.thread11.i56.i_crit_edge

if.end7.i.i55.i.uart_handle_sysrq_char.exit.thread11.i56.i_crit_edge: ; preds = %if.end7.i.i55.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %uart_handle_sysrq_char.exit.thread11.i56.i

if.end7.i.i55.i.lpuart_handle_sysrq_chars.exit62.i_crit_edge: ; preds = %if.end7.i.i55.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %lpuart_handle_sysrq_chars.exit62.i

uart_handle_sysrq_char.exit.thread11.i56.i:       ; preds = %if.end7.i.i55.i.uart_handle_sysrq_char.exit.thread11.i56.i_crit_edge, %land.lhs.true.i.i50.i.uart_handle_sysrq_char.exit.thread11.i56.i_crit_edge
  %100 = ptrtoint ptr %sysrq to i32
  call void @__asan_store4_noabort(i32 %100)
  store i32 0, ptr %sysrq, align 4
  br label %if.end.i61.i

uart_handle_sysrq_char.exit.i58.i:                ; preds = %if.then3.i.i53.i
  call void @__sanitizer_cov_trace_pc() #14
  %conv.i45.i.le = zext i8 %96 to i32
  call void @handle_sysrq(i32 noundef %conv.i45.i.le) #12
  %101 = ptrtoint ptr %sysrq to i32
  call void @__asan_store4_noabort(i32 %101)
  store i32 0, ptr %sysrq, align 4
  br label %lpuart_handle_sysrq_chars.exit62.i

if.end.i61.i:                                     ; preds = %uart_handle_sysrq_char.exit.thread11.i56.i, %land.lhs.true.i47.i.if.end.i61.i_crit_edge, %while.body.i44.i.if.end.i61.i_crit_edge
  %incdec.ptr.i59.i = getelementptr i8, ptr %p.addr.016.i41.i, i32 1
  %tobool.not.i60.i = icmp eq i32 %dec17.i42.i, 0
  br i1 %tobool.not.i60.i, label %if.end.i61.i.lpuart_handle_sysrq_chars.exit62.i_crit_edge, label %if.end.i61.i.while.body.i44.i_crit_edge

if.end.i61.i.while.body.i44.i_crit_edge:          ; preds = %if.end.i61.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body.i44.i

if.end.i61.i.lpuart_handle_sysrq_chars.exit62.i_crit_edge: ; preds = %if.end.i61.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %lpuart_handle_sysrq_chars.exit62.i

lpuart_handle_sysrq_chars.exit62.i:               ; preds = %if.end.i61.i.lpuart_handle_sysrq_chars.exit62.i_crit_edge, %uart_handle_sysrq_char.exit.i58.i, %if.end7.i.i55.i.lpuart_handle_sysrq_chars.exit62.i_crit_edge, %if.then7.i.lpuart_handle_sysrq_chars.exit62.i_crit_edge
  %102 = ptrtoint ptr %head to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %head, align 4
  %104 = ptrtoint ptr %tail to i32
  call void @__asan_store4_noabort(i32 %104)
  store i32 %103, ptr %tail, align 4
  br label %exit

if.end150:                                        ; preds = %do.end146
  br i1 %cmp152, label %if.then154, label %if.end150.if.end165_crit_edge

if.end150.if.end165_crit_edge:                    ; preds = %if.end150
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end165

if.then154:                                       ; preds = %if.end150
  call void @__sanitizer_cov_trace_pc() #14
  %sub158 = sub i32 %71, %78
  %105 = ptrtoint ptr %rx_ring to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %rx_ring, align 4
  %add.ptr160 = getelementptr i8, ptr %106, i32 %78
  %call.i288 = call i32 @tty_insert_flip_string_fixed_flag(ptr noundef %1, ptr noundef %add.ptr160, i8 noundef zeroext 0, i32 noundef %sub158) #12
  %107 = ptrtoint ptr %tail to i32
  call void @__asan_store4_noabort(i32 %107)
  store i32 0, ptr %tail, align 4
  %rx = getelementptr inbounds %struct.uart_port, ptr %sport, i32 0, i32 31, i32 4
  %108 = ptrtoint ptr %rx to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %rx, align 4
  %add = add i32 %109, %sub158
  store i32 %add, ptr %rx, align 4
  br label %if.end165

if.end165:                                        ; preds = %if.then154, %if.end150.if.end165_crit_edge
  %110 = ptrtoint ptr %tail to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %tail, align 4
  %112 = ptrtoint ptr %head to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %head, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %113, i32 %111)
  %cmp168 = icmp sgt i32 %113, %111
  br i1 %cmp168, label %if.then170, label %if.end165.exit_crit_edge

if.end165.exit_crit_edge:                         ; preds = %if.end165
  call void @__sanitizer_cov_trace_pc() #14
  br label %exit

if.then170:                                       ; preds = %if.end165
  %sub173 = sub i32 %113, %111
  %114 = ptrtoint ptr %rx_ring to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %rx_ring, align 4
  %add.ptr176 = getelementptr i8, ptr %115, i32 %111
  %call.i289 = call i32 @tty_insert_flip_string_fixed_flag(ptr noundef %1, ptr noundef %add.ptr176, i8 noundef zeroext 0, i32 noundef %sub173) #12
  %116 = ptrtoint ptr %head to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %head, align 4
  %118 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %length, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %117, i32 %119)
  %cmp181.not = icmp ult i32 %117, %119
  br i1 %cmp181.not, label %if.then170.if.end185_crit_edge, label %if.then183

if.then170.if.end185_crit_edge:                   ; preds = %if.then170
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end185

if.then183:                                       ; preds = %if.then170
  call void @__sanitizer_cov_trace_pc() #14
  %120 = ptrtoint ptr %head to i32
  call void @__asan_store4_noabort(i32 %120)
  store i32 0, ptr %head, align 4
  br label %if.end185

if.end185:                                        ; preds = %if.then183, %if.then170.if.end185_crit_edge
  %121 = ptrtoint ptr %head to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %head, align 4
  %123 = ptrtoint ptr %tail to i32
  call void @__asan_store4_noabort(i32 %123)
  store i32 %122, ptr %tail, align 4
  %rx190 = getelementptr inbounds %struct.uart_port, ptr %sport, i32 0, i32 31, i32 4
  %124 = ptrtoint ptr %rx190 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %rx190, align 4
  %add191 = add i32 %125, %sub173
  store i32 %add191, ptr %rx190, align 4
  br label %exit

exit:                                             ; preds = %if.end185, %if.end165.exit_crit_edge, %lpuart_handle_sysrq_chars.exit62.i, %if.end.i.exit_crit_edge
  %126 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %5, align 4
  %dev194 = getelementptr inbounds %struct.dma_device, ptr %127, i32 0, i32 15
  %128 = ptrtoint ptr %dev194 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %dev194, align 4
  call void @dma_sync_sg_for_device(ptr noundef %129, ptr noundef %rx_sgl, i32 noundef 1, i32 noundef 2) #12
  call void @_raw_spin_unlock_irqrestore(ptr noundef %sport, i32 noundef %call111) #12
  call void @tty_flip_buffer_push(ptr noundef %1) #12
  %lpuart_timer = getelementptr inbounds %struct.lpuart_port, ptr %sport, i32 0, i32 18
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %130 = load volatile i32, ptr @jiffies, align 128
  %dma_rx_timeout = getelementptr inbounds %struct.lpuart_port, ptr %sport, i32 0, i32 17
  %131 = ptrtoint ptr %dma_rx_timeout to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load i32, ptr %dma_rx_timeout, align 4
  %add198 = add i32 %132, %130
  %call199 = call i32 @mod_timer(ptr noundef %lpuart_timer, i32 noundef %add198) #12
  br label %cleanup

cleanup:                                          ; preds = %exit, %do.end122
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %state3) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_sync_sg_for_cpu(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_sync_sg_for_device(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @tty_flip_buffer_push(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mod_timer(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysrq_mask() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @handle_sysrq(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @uart_try_toggle_sysrq(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tty_insert_flip_string_fixed_flag(ptr noundef, ptr noundef, i8 noundef zeroext, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @lpuart_timer_func(ptr noundef %t) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %t, i32 -424
  tail call fastcc void @lpuart_copy_rx_to_tty(ptr noundef %add.ptr)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @add_timer(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @lpuart_dma_shutdown(ptr noundef %sport) unnamed_addr #3 align 64 {
entry:
  %__wq_entry = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %lpuart_dma_rx_use = getelementptr inbounds %struct.lpuart_port, ptr %sport, i32 0, i32 7
  %0 = ptrtoint ptr %lpuart_dma_rx_use to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %lpuart_dma_rx_use, align 1, !range !194
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %entry
  %lpuart_timer = getelementptr inbounds %struct.lpuart_port, ptr %sport, i32 0, i32 18
  %call = tail call i32 @del_timer_sync(ptr noundef %lpuart_timer) #12
  %dma_rx_chan.i = getelementptr inbounds %struct.lpuart_port, ptr %sport, i32 0, i32 9
  %2 = ptrtoint ptr %dma_rx_chan.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dma_rx_chan.i, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %device_terminate_all.i.i = getelementptr inbounds %struct.dma_device, ptr %5, i32 0, i32 47
  %6 = ptrtoint ptr %device_terminate_all.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %device_terminate_all.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %7, null
  br i1 %tobool.not.i.i, label %if.then.lpuart_dma_rx_free.exit_crit_edge, label %if.then.i.i

if.then.lpuart_dma_rx_free.exit_crit_edge:        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %lpuart_dma_rx_free.exit

if.then.i.i:                                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  %call.i.i = tail call i32 %7(ptr noundef %3) #12
  br label %lpuart_dma_rx_free.exit

lpuart_dma_rx_free.exit:                          ; preds = %if.then.i.i, %if.then.lpuart_dma_rx_free.exit_crit_edge
  %8 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %3, align 4
  %dev.i = getelementptr inbounds %struct.dma_device, ptr %9, i32 0, i32 15
  %10 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev.i, align 4
  %rx_sgl.i = getelementptr inbounds %struct.lpuart_port, ptr %sport, i32 0, i32 19
  tail call void @dma_unmap_sg_attrs(ptr noundef %11, ptr noundef %rx_sgl.i, i32 noundef 1, i32 noundef 2, i32 noundef 0) #12
  %rx_ring.i = getelementptr inbounds %struct.lpuart_port, ptr %sport, i32 0, i32 21
  %12 = ptrtoint ptr %rx_ring.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %rx_ring.i, align 4
  tail call void @kfree(ptr noundef %13) #12
  %tail.i = getelementptr inbounds %struct.lpuart_port, ptr %sport, i32 0, i32 21, i32 2
  %14 = ptrtoint ptr %tail.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %tail.i, align 4
  %head.i = getelementptr inbounds %struct.lpuart_port, ptr %sport, i32 0, i32 21, i32 1
  %15 = ptrtoint ptr %head.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %head.i, align 4
  %dma_rx_desc.i = getelementptr inbounds %struct.lpuart_port, ptr %sport, i32 0, i32 11
  %16 = ptrtoint ptr %dma_rx_desc.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr null, ptr %dma_rx_desc.i, align 4
  %dma_rx_cookie.i = getelementptr inbounds %struct.lpuart_port, ptr %sport, i32 0, i32 13
  %17 = ptrtoint ptr %dma_rx_cookie.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 -22, ptr %dma_rx_cookie.i, align 4
  br label %if.end

if.end:                                           ; preds = %lpuart_dma_rx_free.exit, %entry.if.end_crit_edge
  %lpuart_dma_tx_use = getelementptr inbounds %struct.lpuart_port, ptr %sport, i32 0, i32 6
  %18 = ptrtoint ptr %lpuart_dma_tx_use to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %lpuart_dma_tx_use, align 4, !range !194
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool1.not = icmp eq i8 %19, 0
  br i1 %tobool1.not, label %if.end.if.end52_crit_edge, label %if.then2

if.end.if.end52_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end52

if.then2:                                         ; preds = %if.end
  tail call void @__might_sleep(ptr noundef nonnull @.str.2, i32 noundef 1804) #12
  %dma_tx_in_progress = getelementptr inbounds %struct.lpuart_port, ptr %sport, i32 0, i32 16
  %20 = ptrtoint ptr %dma_tx_in_progress to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %dma_tx_in_progress, align 4, !range !194
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %tobool7.not = icmp eq i8 %21, 0
  br i1 %tobool7.not, label %if.then2.if.end52_crit_edge, label %if.then16

if.then2.if.end52_crit_edge:                      ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end52

if.then16:                                        ; preds = %if.then2
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry) #12
  %22 = call ptr @memset(ptr %__wq_entry, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry, i32 noundef 0) #12
  %dma_wait = getelementptr inbounds %struct.lpuart_port, ptr %sport, i32 0, i32 24
  %call1997 = call i32 @prepare_to_wait_event(ptr noundef %dma_wait, ptr noundef nonnull %__wq_entry, i32 noundef 1) #12
  %23 = ptrtoint ptr %dma_tx_in_progress to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %dma_tx_in_progress, align 4, !range !194
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %24)
  %tobool22.not98 = icmp eq i8 %24, 0
  br i1 %tobool22.not98, label %if.then16.for.end_crit_edge, label %if.then16.if.end39_crit_edge

if.then16.if.end39_crit_edge:                     ; preds = %if.then16
  br label %if.end39

if.then16.for.end_crit_edge:                      ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

if.end39:                                         ; preds = %cleanup.if.end39_crit_edge, %if.then16.if.end39_crit_edge
  %__ret17.1100 = phi i32 [ %__ret17.1, %cleanup.if.end39_crit_edge ], [ 30, %if.then16.if.end39_crit_edge ]
  %call1999 = phi i32 [ %call19, %cleanup.if.end39_crit_edge ], [ %call1997, %if.then16.if.end39_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1999)
  %tobool40.not = icmp eq i32 %call1999, 0
  br i1 %tobool40.not, label %cleanup, label %if.end39.if.end46_crit_edge

if.end39.if.end46_crit_edge:                      ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end46

cleanup:                                          ; preds = %if.end39
  %call43 = call i32 @schedule_timeout(i32 noundef %__ret17.1100) #12
  %call19 = call i32 @prepare_to_wait_event(ptr noundef %dma_wait, ptr noundef nonnull %__wq_entry, i32 noundef 1) #12
  %25 = ptrtoint ptr %dma_tx_in_progress to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %dma_tx_in_progress, align 4, !range !194
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %26)
  %tobool22.not = icmp eq i8 %26, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call43)
  %tobool27.not = icmp eq i32 %call43, 0
  %27 = select i1 %tobool22.not, i1 %tobool27.not, i1 false
  %__ret17.1 = select i1 %27, i32 1, i32 %call43
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret17.1)
  %tobool33.not = icmp eq i32 %__ret17.1, 0
  %28 = select i1 %tobool22.not, i1 true, i1 %tobool33.not
  br i1 %28, label %cleanup.for.end_crit_edge, label %cleanup.if.end39_crit_edge

cleanup.if.end39_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end39

cleanup.for.end_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.end:                                          ; preds = %cleanup.for.end_crit_edge, %if.then16.for.end_crit_edge
  %__ret17.1.lcssa = phi i32 [ 30, %if.then16.for.end_crit_edge ], [ %__ret17.1, %cleanup.for.end_crit_edge ]
  call void @finish_wait(ptr noundef %dma_wait, ptr noundef nonnull %__wq_entry) #12
  br label %if.end46

if.end46:                                         ; preds = %for.end, %if.end39.if.end46_crit_edge
  %__ret17.287 = phi i32 [ %__ret17.1.lcssa, %for.end ], [ %call1999, %if.end39.if.end46_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %__ret17.287)
  %cmp = icmp slt i32 %__ret17.287, 1
  br i1 %cmp, label %if.then48, label %if.end46.if.end52_crit_edge

if.end46.if.end52_crit_edge:                      ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end52

if.then48:                                        ; preds = %if.end46
  %29 = ptrtoint ptr %dma_tx_in_progress to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 0, ptr %dma_tx_in_progress, align 4
  %dma_tx_chan = getelementptr inbounds %struct.lpuart_port, ptr %sport, i32 0, i32 8
  %30 = ptrtoint ptr %dma_tx_chan to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %dma_tx_chan, align 4
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %31, align 4
  %device_terminate_all.i = getelementptr inbounds %struct.dma_device, ptr %33, i32 0, i32 47
  %34 = ptrtoint ptr %device_terminate_all.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %device_terminate_all.i, align 4
  %tobool.not.i = icmp eq ptr %35, null
  br i1 %tobool.not.i, label %if.then48.if.end52_crit_edge, label %if.then.i

if.then48.if.end52_crit_edge:                     ; preds = %if.then48
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end52

if.then.i:                                        ; preds = %if.then48
  call void @__sanitizer_cov_trace_pc() #14
  %call.i = call i32 %35(ptr noundef %31) #12
  br label %if.end52

if.end52:                                         ; preds = %if.then.i, %if.then48.if.end52_crit_edge, %if.end46.if.end52_crit_edge, %if.then2.if.end52_crit_edge, %if.end.if.end52_crit_edge
  %dma_tx_chan53 = getelementptr inbounds %struct.lpuart_port, ptr %sport, i32 0, i32 8
  %36 = ptrtoint ptr %dma_tx_chan53 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %dma_tx_chan53, align 4
  %tobool54.not = icmp eq ptr %37, null
  br i1 %tobool54.not, label %if.end52.if.end57_crit_edge, label %if.then55

if.end52.if.end57_crit_edge:                      ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end57

if.then55:                                        ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #14
  call void @dma_release_channel(ptr noundef nonnull %37) #12
  br label %if.end57

if.end57:                                         ; preds = %if.then55, %if.end52.if.end57_crit_edge
  %dma_rx_chan = getelementptr inbounds %struct.lpuart_port, ptr %sport, i32 0, i32 9
  %38 = ptrtoint ptr %dma_rx_chan to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %dma_rx_chan, align 4
  %tobool58.not = icmp eq ptr %39, null
  br i1 %tobool58.not, label %if.end57.if.end61_crit_edge, label %if.then59

if.end57.if.end61_crit_edge:                      ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end61

if.then59:                                        ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #14
  call void @dma_release_channel(ptr noundef nonnull %39) #12
  br label %if.end61

if.end61:                                         ; preds = %if.then59, %if.end57.if.end61_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer_sync(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_wait_entry(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prepare_to_wait_event(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @schedule_timeout(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_release_channel(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @uart_get_baud_rate(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @uart_update_timeout(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lpuart_tx_empty(ptr nocapture noundef readonly %port) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %membase = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 2
  %0 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %membase, align 4
  %add.ptr1 = getelementptr i8, ptr %1, i32 4
  %2 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr1) #12, !srcloc !186
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !232
  %3 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %membase, align 4
  %add.ptr7 = getelementptr i8, ptr %4, i32 18
  %5 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr7) #12, !srcloc !186
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !233
  %dma_tx_in_progress = getelementptr inbounds %struct.lpuart_port, ptr %port, i32 0, i32 16
  %6 = ptrtoint ptr %dma_tx_in_progress to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %dma_tx_in_progress, align 4, !range !194
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not = icmp eq i8 %7, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %8 = and i8 %2, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool11.not = icmp ne i8 %8, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool14.not = icmp slt i8 %5, 0
  %or.cond = select i1 %tobool11.not, i1 %tobool14.not, i1 false
  %spec.select = zext i1 %or.cond to i32
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ %spec.select, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @lpuart_set_mctrl(ptr nocapture noundef readonly %port, i32 noundef %mctrl) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %membase = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 2
  %0 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %membase, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 2
  %2 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr) #12, !srcloc !186
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !234
  %3 = and i8 %2, 95
  %and3 = lshr i32 %mctrl, 8
  %4 = trunc i32 %and3 to i8
  %5 = and i8 %4, -128
  %6 = or i8 %3, %5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !235
  tail call void @arm_heavy_mb() #12
  %7 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %membase, align 4
  %add.ptr7 = getelementptr i8, ptr %8, i32 2
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr7, i8 %6) #12, !srcloc !191
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lpuart_get_mctrl(ptr nocapture noundef readonly %port) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %membase = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 2
  %0 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %membase, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 2
  %2 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr) #12, !srcloc !186
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !236
  %3 = and i8 %2, -128
  %4 = zext i8 %3 to i32
  %5 = shl nuw nsw i32 %4, 8
  ret i32 %5
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @lpuart_stop_tx(ptr nocapture noundef readonly %port) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %membase = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 2
  %0 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %membase, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 3
  %2 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr) #12, !srcloc !186
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !237
  %3 = and i8 %2, 63
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !238
  tail call void @arm_heavy_mb() #12
  %4 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %membase, align 4
  %add.ptr4 = getelementptr i8, ptr %5, i32 3
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr4, i8 %3) #12, !srcloc !191
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @lpuart_start_tx(ptr noundef %port) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %membase = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 2
  %0 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %membase, align 4
  %add.ptr1 = getelementptr i8, ptr %1, i32 3
  %2 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr1) #12, !srcloc !186
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !239
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !240
  tail call void @arm_heavy_mb() #12
  %3 = or i8 %2, -128
  %4 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %membase, align 4
  %add.ptr6 = getelementptr i8, ptr %5, i32 3
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr6, i8 %3) #12, !srcloc !191
  %lpuart_dma_tx_use = getelementptr inbounds %struct.lpuart_port, ptr %port, i32 0, i32 6
  %6 = ptrtoint ptr %lpuart_dma_tx_use to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %lpuart_dma_tx_use, align 4, !range !194
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not = icmp eq i8 %7, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %state.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 30
  %8 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %state.i, align 4
  %head.i = getelementptr inbounds %struct.uart_state, ptr %9, i32 0, i32 2, i32 1
  %10 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %head.i, align 4
  %tail.i = getelementptr inbounds %struct.uart_state, ptr %9, i32 0, i32 2, i32 2
  %12 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %tail.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %13)
  %cmp.i = icmp eq i32 %11, %13
  br i1 %cmp.i, label %if.then.if.end20_crit_edge, label %lor.rhs.i

if.then.if.end20_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end20

lor.rhs.i:                                        ; preds = %if.then
  %tty2.i.i = getelementptr inbounds %struct.tty_port, ptr %9, i32 0, i32 1
  %14 = ptrtoint ptr %tty2.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %tty2.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %15, null
  br i1 %tobool.not.i.i, label %lor.rhs.i.lpuart_stopped_or_empty.exit_crit_edge, label %land.lhs.true.i.i

lor.rhs.i.lpuart_stopped_or_empty.exit_crit_edge: ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %lpuart_stopped_or_empty.exit

land.lhs.true.i.i:                                ; preds = %lor.rhs.i
  %stopped.i.i = getelementptr inbounds %struct.tty_struct, ptr %15, i32 0, i32 19, i32 1
  %16 = ptrtoint ptr %stopped.i.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %stopped.i.i, align 4, !range !194
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool3.not.i.i = icmp eq i8 %17, 0
  br i1 %tobool3.not.i.i, label %land.lhs.true.i.i.lpuart_stopped_or_empty.exit_crit_edge, label %land.lhs.true.i.i.if.end20_crit_edge

land.lhs.true.i.i.if.end20_crit_edge:             ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end20

land.lhs.true.i.i.lpuart_stopped_or_empty.exit_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %lpuart_stopped_or_empty.exit

lpuart_stopped_or_empty.exit:                     ; preds = %land.lhs.true.i.i.lpuart_stopped_or_empty.exit_crit_edge, %lor.rhs.i.lpuart_stopped_or_empty.exit_crit_edge
  %hw_stopped.i.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 35
  %18 = ptrtoint ptr %hw_stopped.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %hw_stopped.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool4.not.i.i.not = icmp eq i32 %19, 0
  br i1 %tobool4.not.i.i.not, label %if.then8, label %lpuart_stopped_or_empty.exit.if.end20_crit_edge

lpuart_stopped_or_empty.exit.if.end20_crit_edge:  ; preds = %lpuart_stopped_or_empty.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end20

if.then8:                                         ; preds = %lpuart_stopped_or_empty.exit
  call void @__sanitizer_cov_trace_pc() #14
  tail call fastcc void @lpuart_dma_tx(ptr noundef %port)
  br label %if.end20

if.else:                                          ; preds = %entry
  %20 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %membase, align 4
  %add.ptr12 = getelementptr i8, ptr %21, i32 4
  %22 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr12) #12, !srcloc !186
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !241
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %22)
  %tobool17.not = icmp sgt i8 %22, -1
  br i1 %tobool17.not, label %if.else.if.end20_crit_edge, label %if.then18

if.else.if.end20_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end20

if.then18:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  tail call fastcc void @lpuart_transmit_buffer(ptr noundef %port)
  br label %if.end20

if.end20:                                         ; preds = %if.then18, %if.else.if.end20_crit_edge, %if.then8, %lpuart_stopped_or_empty.exit.if.end20_crit_edge, %land.lhs.true.i.i.if.end20_crit_edge, %if.then.if.end20_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @lpuart_stop_rx(ptr nocapture noundef readonly %port) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %membase = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 2
  %0 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %membase, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 3
  %2 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr) #12, !srcloc !186
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !242
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !243
  tail call void @arm_heavy_mb() #12
  %3 = and i8 %2, -5
  %4 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %membase, align 4
  %add.ptr4 = getelementptr i8, ptr %5, i32 3
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr4, i8 %3) #12, !srcloc !191
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @lpuart_break_ctl(ptr nocapture noundef readonly %port, i32 noundef %break_state) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %membase = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 2
  %0 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %membase, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 3
  %2 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr) #12, !srcloc !186
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !244
  %3 = and i8 %2, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %break_state)
  %cmp.not = icmp ne i32 %break_state, 0
  %masksel = zext i1 %cmp.not to i8
  %spec.select = or i8 %3, %masksel
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !245
  tail call void @arm_heavy_mb() #12
  %4 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %membase, align 4
  %add.ptr7 = getelementptr i8, ptr %5, i32 3
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr7, i8 %spec.select) #12, !srcloc !191
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lpuart_startup(ptr noundef %port) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %membase = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 2
  %0 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %membase, align 4
  %add.ptr2 = getelementptr i8, ptr %1, i32 16
  %2 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr2) #12, !srcloc !186
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !246
  %conv = zext i8 %2 to i32
  %3 = lshr i32 %conv, 4
  %and = and i32 %3, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %add.op = shl nuw nsw i32 2, %and
  %shl = select i1 %tobool.not, i32 1, i32 %add.op
  %txfifo_size = getelementptr inbounds %struct.lpuart_port, ptr %port, i32 0, i32 4
  %4 = ptrtoint ptr %txfifo_size to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %shl, ptr %txfifo_size, align 4
  %fifosize = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 23
  %5 = ptrtoint ptr %fifosize to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %shl, ptr %fifosize, align 4
  %and12 = and i32 %conv, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12)
  %tobool13.not = icmp eq i32 %and12, 0
  %add18.op = shl nuw nsw i32 2, %and12
  %shl22 = select i1 %tobool13.not, i32 1, i32 %add18.op
  %rxfifo_size = getelementptr inbounds %struct.lpuart_port, ptr %port, i32 0, i32 5
  %6 = ptrtoint ptr %rxfifo_size to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %shl22, ptr %rxfifo_size, align 4
  tail call fastcc void @lpuart_request_dma(ptr noundef %port)
  %call28 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %port) #12
  tail call fastcc void @lpuart_setup_watermark(ptr noundef %port) #12
  %7 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %membase, align 4
  %add.ptr.i = getelementptr i8, ptr %8, i32 3
  %9 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i) #12, !srcloc !186
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !247
  %10 = or i8 %9, 44
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !248
  tail call void @arm_heavy_mb() #12
  %11 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %membase, align 4
  %add.ptr5.i = getelementptr i8, ptr %12, i32 3
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr5.i, i8 %10) #12, !srcloc !191
  tail call fastcc void @lpuart_rx_dma_startup(ptr noundef %port)
  tail call fastcc void @lpuart_tx_dma_startup(ptr noundef %port)
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %port, i32 noundef %call28) #12
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @lpuart_shutdown(ptr noundef %port) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %port) #12
  %membase = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 2
  %0 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %membase, align 4
  %add.ptr6 = getelementptr i8, ptr %1, i32 3
  %2 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr6) #12, !srcloc !186
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !249
  %3 = and i8 %2, 19
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !250
  tail call void @arm_heavy_mb() #12
  %4 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %membase, align 4
  %add.ptr16 = getelementptr i8, ptr %5, i32 3
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr16, i8 %3) #12, !srcloc !191
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %port, i32 noundef %call3) #12
  tail call fastcc void @lpuart_dma_shutdown(ptr noundef %port)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @lpuart_set_termios(ptr noundef %port, ptr noundef %termios, ptr noundef %old) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %old, null
  br i1 %tobool.not, label %entry.cond.end_crit_edge, label %cond.true

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.end

cond.true:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %c_cflag = getelementptr inbounds %struct.ktermios, ptr %old, i32 0, i32 2
  %0 = ptrtoint ptr %c_cflag to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %c_cflag, align 4
  %and = and i32 %1, 48
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %entry.cond.end_crit_edge
  %cond = phi i32 [ %and, %cond.true ], [ 48, %entry.cond.end_crit_edge ]
  %membase = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 2
  %2 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %membase, align 4
  %add.ptr2 = getelementptr i8, ptr %3, i32 2
  %4 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr2) #12, !srcloc !186
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !251
  %5 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %membase, align 4
  %add.ptr9 = getelementptr i8, ptr %6, i32 3
  %7 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr9) #12, !srcloc !186
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !252
  %8 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %membase, align 4
  %add.ptr17 = getelementptr i8, ptr %9, i32 6
  %10 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr17) #12, !srcloc !186
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !253
  %11 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %membase, align 4
  %add.ptr25 = getelementptr i8, ptr %12, i32 10
  %13 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr25) #12, !srcloc !186
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !254
  %14 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %membase, align 4
  %16 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %15) #12, !srcloc !186
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !255
  %17 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %membase, align 4
  %add.ptr41 = getelementptr i8, ptr %18, i32 13
  %19 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr41) #12, !srcloc !186
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !256
  %c_cflag45 = getelementptr inbounds %struct.ktermios, ptr %termios, i32 0, i32 2
  %20 = ptrtoint ptr %c_cflag45 to i32
  call void @__asan_load4_noabort(i32 %20)
  %c_cflag45.promoted = load i32, ptr %c_cflag45, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %cond.end
  %or403 = phi i32 [ %c_cflag45.promoted, %cond.end ], [ %or, %while.body ]
  %old_csize.0 = phi i32 [ %cond, %cond.end ], [ 48, %while.body ]
  %and46 = and i32 %or403, 48
  %21 = zext i32 %and46 to i64
  call void @__sanitizer_cov_trace_switch(i64 %21, ptr @__sancov_gen_cov_switch_values.145)
  switch i32 %and46, label %while.body [
    i32 48, label %while.cond.if.then_crit_edge
    i32 32, label %while.cond.if.then_crit_edge404
  ]

while.cond.if.then_crit_edge404:                  ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then

while.cond.if.then_crit_edge:                     ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then

while.body:                                       ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #14
  %and51 = and i32 %or403, -49
  %or = or i32 %and51, %old_csize.0
  %22 = ptrtoint ptr %c_cflag45 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %or, ptr %c_cflag45, align 4
  br label %while.cond

if.then:                                          ; preds = %while.cond.if.then_crit_edge, %while.cond.if.then_crit_edge404
  %23 = and i8 %4, -17
  %and62 = and i32 %or403, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and62)
  %tobool63.not = icmp eq i32 %and62, 0
  br i1 %tobool63.not, label %if.then.if.end78_crit_edge, label %if.then64

if.then.if.end78_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end78

if.then64:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_const_cmp4(i32 48, i32 %and46)
  %cmp67.not = icmp eq i32 %and46, 48
  br i1 %cmp67.not, label %if.then64.if.end74_crit_edge, label %if.then69

if.then64.if.end74_crit_edge:                     ; preds = %if.then64
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end74

if.then69:                                        ; preds = %if.then64
  call void @__sanitizer_cov_trace_pc() #14
  %or73 = or i32 %or403, 48
  %24 = ptrtoint ptr %c_cflag45 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %or73, ptr %c_cflag45, align 4
  br label %if.end74

if.end74:                                         ; preds = %if.then69, %if.then64.if.end74_crit_edge
  %25 = or i8 %4, 16
  br label %if.end78

if.end78:                                         ; preds = %if.end74, %if.then.if.end78_crit_edge
  %cr1.1 = phi i8 [ %25, %if.end74 ], [ %23, %if.then.if.end78_crit_edge ]
  %rs485 = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 56
  %26 = ptrtoint ptr %rs485 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %rs485, align 4
  %and81 = and i32 %27, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and81)
  %tobool82.not = icmp eq i32 %and81, 0
  br i1 %tobool82.not, label %if.end78.if.end86_crit_edge, label %if.then83

if.end78.if.end86_crit_edge:                      ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end86

if.then83:                                        ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #14
  %28 = ptrtoint ptr %c_cflag45 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %c_cflag45, align 4
  %and85 = and i32 %29, 2147483647
  store i32 %and85, ptr %c_cflag45, align 4
  br label %if.end86

if.end86:                                         ; preds = %if.then83, %if.end78.if.end86_crit_edge
  %30 = ptrtoint ptr %c_cflag45 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %c_cflag45, align 4
  %32 = and i8 %19, -10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %tobool89.not402 = icmp slt i32 %31, 0
  %masksel = select i1 %tobool89.not402, i8 9, i8 0
  %modem.0 = or i8 %masksel, %32
  %and99 = and i32 %31, -65
  %and101 = and i32 %31, 48
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %and101)
  %cmp102 = icmp eq i32 %and101, 32
  %or106 = or i32 %and99, 256
  %storemerge = select i1 %cmp102, i32 %or106, i32 %and99
  %33 = ptrtoint ptr %c_cflag45 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %storemerge, ptr %c_cflag45, align 4
  %and109 = and i32 %storemerge, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and109)
  %tobool110.not = icmp eq i32 %and109, 0
  br i1 %tobool110.not, label %if.else157, label %if.then111

if.then111:                                       ; preds = %if.end86
  %and113 = and i32 %storemerge, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and113)
  %tobool114.not = icmp eq i32 %and113, 0
  br i1 %tobool114.not, label %if.else131, label %if.then115

if.then115:                                       ; preds = %if.then111
  %34 = and i8 %cr1.1, -3
  %and120 = and i32 %storemerge, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and120)
  %tobool121.not = icmp eq i32 %and120, 0
  br i1 %tobool121.not, label %if.else126, label %if.then122

if.then122:                                       ; preds = %if.then115
  call void @__sanitizer_cov_trace_pc() #14
  %35 = or i8 %10, 64
  br label %if.end161

if.else126:                                       ; preds = %if.then115
  call void @__sanitizer_cov_trace_pc() #14
  %36 = and i8 %10, -65
  br label %if.end161

if.else131:                                       ; preds = %if.then111
  %and136 = and i32 %storemerge, 48
  call void @__sanitizer_cov_trace_const_cmp4(i32 48, i32 %and136)
  %cmp137 = icmp eq i32 %and136, 48
  %spec.select.v = select i1 %cmp137, i8 18, i8 2
  %spec.select = or i8 %spec.select.v, %cr1.1
  %and145 = and i32 %storemerge, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and145)
  %tobool146.not = icmp eq i32 %and145, 0
  br i1 %tobool146.not, label %if.else151, label %if.then147

if.then147:                                       ; preds = %if.else131
  call void @__sanitizer_cov_trace_pc() #14
  %37 = or i8 %spec.select, 1
  br label %if.end161

if.else151:                                       ; preds = %if.else131
  call void @__sanitizer_cov_trace_pc() #14
  %38 = and i8 %spec.select, -2
  br label %if.end161

if.else157:                                       ; preds = %if.end86
  call void @__sanitizer_cov_trace_pc() #14
  %39 = and i8 %cr1.1, -3
  br label %if.end161

if.end161:                                        ; preds = %if.else157, %if.else151, %if.then147, %if.else126, %if.then122
  %cr3.0 = phi i8 [ %35, %if.then122 ], [ %36, %if.else126 ], [ %10, %if.then147 ], [ %10, %if.else151 ], [ %10, %if.else157 ]
  %cr1.3 = phi i8 [ %34, %if.then122 ], [ %34, %if.else126 ], [ %37, %if.then147 ], [ %38, %if.else151 ], [ %39, %if.else157 ]
  %uartclk = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 22
  %40 = ptrtoint ptr %uartclk to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %uartclk, align 4
  %div400 = lshr i32 %41, 4
  %call162 = tail call i32 @uart_get_baud_rate(ptr noundef %port, ptr noundef %termios, ptr noundef %old, i32 noundef 50, i32 noundef %div400) #12
  br i1 %tobool.not, label %if.end161.do.body170_crit_edge, label %land.lhs.true

if.end161.do.body170_crit_edge:                   ; preds = %if.end161
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body170

land.lhs.true:                                    ; preds = %if.end161
  %lpuart_dma_rx_use = getelementptr inbounds %struct.lpuart_port, ptr %port, i32 0, i32 7
  %42 = ptrtoint ptr %lpuart_dma_rx_use to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %lpuart_dma_rx_use, align 1, !range !194
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %43)
  %tobool164.not = icmp eq i8 %43, 0
  br i1 %tobool164.not, label %land.lhs.true.do.body170_crit_edge, label %if.then166

land.lhs.true.do.body170_crit_edge:               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body170

if.then166:                                       ; preds = %land.lhs.true
  %lpuart_timer = getelementptr inbounds %struct.lpuart_port, ptr %port, i32 0, i32 18
  %call167 = tail call i32 @del_timer_sync(ptr noundef %lpuart_timer) #12
  %dma_rx_chan.i = getelementptr inbounds %struct.lpuart_port, ptr %port, i32 0, i32 9
  %44 = ptrtoint ptr %dma_rx_chan.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %dma_rx_chan.i, align 4
  %46 = ptrtoint ptr %45 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %45, align 4
  %device_terminate_all.i.i = getelementptr inbounds %struct.dma_device, ptr %47, i32 0, i32 47
  %48 = ptrtoint ptr %device_terminate_all.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %device_terminate_all.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %49, null
  br i1 %tobool.not.i.i, label %if.then166.lpuart_dma_rx_free.exit_crit_edge, label %if.then.i.i

if.then166.lpuart_dma_rx_free.exit_crit_edge:     ; preds = %if.then166
  call void @__sanitizer_cov_trace_pc() #14
  br label %lpuart_dma_rx_free.exit

if.then.i.i:                                      ; preds = %if.then166
  call void @__sanitizer_cov_trace_pc() #14
  %call.i.i = tail call i32 %49(ptr noundef %45) #12
  br label %lpuart_dma_rx_free.exit

lpuart_dma_rx_free.exit:                          ; preds = %if.then.i.i, %if.then166.lpuart_dma_rx_free.exit_crit_edge
  %50 = ptrtoint ptr %45 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %45, align 4
  %dev.i = getelementptr inbounds %struct.dma_device, ptr %51, i32 0, i32 15
  %52 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %dev.i, align 4
  %rx_sgl.i = getelementptr inbounds %struct.lpuart_port, ptr %port, i32 0, i32 19
  tail call void @dma_unmap_sg_attrs(ptr noundef %53, ptr noundef %rx_sgl.i, i32 noundef 1, i32 noundef 2, i32 noundef 0) #12
  %rx_ring.i = getelementptr inbounds %struct.lpuart_port, ptr %port, i32 0, i32 21
  %54 = ptrtoint ptr %rx_ring.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %rx_ring.i, align 4
  tail call void @kfree(ptr noundef %55) #12
  %tail.i = getelementptr inbounds %struct.lpuart_port, ptr %port, i32 0, i32 21, i32 2
  %56 = ptrtoint ptr %tail.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 0, ptr %tail.i, align 4
  %head.i = getelementptr inbounds %struct.lpuart_port, ptr %port, i32 0, i32 21, i32 1
  %57 = ptrtoint ptr %head.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 0, ptr %head.i, align 4
  %dma_rx_desc.i = getelementptr inbounds %struct.lpuart_port, ptr %port, i32 0, i32 11
  %58 = ptrtoint ptr %dma_rx_desc.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr null, ptr %dma_rx_desc.i, align 4
  %dma_rx_cookie.i = getelementptr inbounds %struct.lpuart_port, ptr %port, i32 0, i32 13
  %59 = ptrtoint ptr %dma_rx_cookie.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 -22, ptr %dma_rx_cookie.i, align 4
  br label %do.body170

do.body170:                                       ; preds = %lpuart_dma_rx_free.exit, %land.lhs.true.do.body170_crit_edge, %if.end161.do.body170_crit_edge
  %call176 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %port) #12
  %read_status_mask = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 28
  %60 = ptrtoint ptr %read_status_mask to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 0, ptr %read_status_mask, align 4
  %61 = ptrtoint ptr %termios to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %termios, align 4
  %and180 = and i32 %62, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and180)
  %tobool181.not = icmp eq i32 %and180, 0
  %spec.store.select = select i1 %tobool181.not, i32 0, i32 3
  %63 = ptrtoint ptr %read_status_mask to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 %spec.store.select, ptr %read_status_mask, align 4
  %64 = ptrtoint ptr %termios to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %termios, align 4
  %and188 = and i32 %65, 11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and188)
  %tobool189.not = icmp eq i32 %and188, 0
  br i1 %tobool189.not, label %do.body170.if.end194_crit_edge, label %if.then190

do.body170.if.end194_crit_edge:                   ; preds = %do.body170
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end194

if.then190:                                       ; preds = %do.body170
  call void @__sanitizer_cov_trace_pc() #14
  %or193 = or i32 %spec.store.select, 2
  %66 = ptrtoint ptr %read_status_mask to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 %or193, ptr %read_status_mask, align 4
  br label %if.end194

if.end194:                                        ; preds = %if.then190, %do.body170.if.end194_crit_edge
  %ignore_status_mask = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 29
  %67 = ptrtoint ptr %ignore_status_mask to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 0, ptr %ignore_status_mask, align 4
  %68 = ptrtoint ptr %termios to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %termios, align 4
  %and197 = lshr i32 %69, 2
  %and197.lobit = and i32 %and197, 1
  store i32 %and197.lobit, ptr %ignore_status_mask, align 4
  %70 = load i32, ptr %termios, align 4
  %and205 = and i32 %70, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and205)
  %tobool206.not = icmp eq i32 %and205, 0
  br i1 %tobool206.not, label %if.end194.if.end219_crit_edge, label %if.then207

if.end194.if.end219_crit_edge:                    ; preds = %if.end194
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end219

if.then207:                                       ; preds = %if.end194
  %or210 = or i32 %and197.lobit, 2
  %71 = ptrtoint ptr %ignore_status_mask to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 %or210, ptr %ignore_status_mask, align 4
  %72 = ptrtoint ptr %termios to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %termios, align 4
  %and212 = and i32 %73, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and212)
  %tobool213.not = icmp eq i32 %and212, 0
  br i1 %tobool213.not, label %if.then207.if.end219_crit_edge, label %if.then214

if.then207.if.end219_crit_edge:                   ; preds = %if.then207
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end219

if.then214:                                       ; preds = %if.then207
  call void @__sanitizer_cov_trace_pc() #14
  %or217 = or i32 %and197.lobit, 10
  %74 = ptrtoint ptr %ignore_status_mask to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 %or217, ptr %ignore_status_mask, align 4
  br label %if.end219

if.end219:                                        ; preds = %if.then214, %if.then207.if.end219_crit_edge, %if.end194.if.end219_crit_edge
  %75 = ptrtoint ptr %c_cflag45 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %c_cflag45, align 4
  tail call void @uart_update_timeout(ptr noundef %port, i32 noundef %76, i32 noundef %call162) #12
  %77 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %membase, align 4
  %add.ptr2.i = getelementptr i8, ptr %78, i32 4
  %79 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr2.i) #12, !srcloc !186
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !187
  %and13.i = and i8 %79, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %and13.i)
  %tobool.not4.i = icmp eq i8 %and13.i, 0
  br i1 %tobool.not4.i, label %if.end219.do.end.i_crit_edge, label %if.end219.lpuart_wait_bit_set.exit_crit_edge

if.end219.lpuart_wait_bit_set.exit_crit_edge:     ; preds = %if.end219
  call void @__sanitizer_cov_trace_pc() #14
  br label %lpuart_wait_bit_set.exit

if.end219.do.end.i_crit_edge:                     ; preds = %if.end219
  br label %do.end.i

do.end.i:                                         ; preds = %do.end.i.do.end.i_crit_edge, %if.end219.do.end.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !188
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #12, !srcloc !189
  %80 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %membase, align 4
  %add.ptr.i = getelementptr i8, ptr %81, i32 4
  %82 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i) #12, !srcloc !186
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !187
  %and1.i = and i8 %82, 64
  %tobool.not.i = icmp eq i8 %and1.i, 0
  br i1 %tobool.not.i, label %do.end.i.do.end.i_crit_edge, label %do.end.i.lpuart_wait_bit_set.exit_crit_edge

do.end.i.lpuart_wait_bit_set.exit_crit_edge:      ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %lpuart_wait_bit_set.exit

do.end.i.do.end.i_crit_edge:                      ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end.i

lpuart_wait_bit_set.exit:                         ; preds = %do.end.i.lpuart_wait_bit_set.exit_crit_edge, %if.end219.lpuart_wait_bit_set.exit_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !257
  tail call void @arm_heavy_mb() #12
  %83 = and i8 %7, -13
  %84 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %membase, align 4
  %add.ptr230 = getelementptr i8, ptr %85, i32 3
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr230, i8 %83) #12, !srcloc !191
  %86 = ptrtoint ptr %uartclk to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %uartclk, align 4
  %mul = shl i32 %call162, 4
  %div233 = udiv i32 %87, %mul
  %mul236.neg = mul i32 %call162, 2147483632
  %mul237.neg = mul i32 %mul236.neg, %div233
  %sub = add i32 %mul237.neg, %87
  %mul238 = shl i32 %sub, 1
  %div239 = udiv i32 %mul238, %call162
  %88 = and i8 %16, -32
  %shr = lshr i32 %div233, 8
  %89 = trunc i32 %shr to i8
  %90 = and i8 %89, 31
  %conv246 = or i8 %90, %88
  %91 = and i8 %13, -32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !258
  tail call void @arm_heavy_mb() #12
  %92 = trunc i32 %div239 to i8
  %93 = and i8 %92, 31
  %conv256 = or i8 %93, %91
  %94 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %membase, align 4
  %add.ptr259 = getelementptr i8, ptr %95, i32 10
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr259, i8 %conv256) #12, !srcloc !191
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !259
  tail call void @arm_heavy_mb() #12
  %96 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %membase, align 4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %97, i8 %conv246) #12, !srcloc !191
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !260
  tail call void @arm_heavy_mb() #12
  %conv270 = trunc i32 %div233 to i8
  %98 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %membase, align 4
  %add.ptr273 = getelementptr i8, ptr %99, i32 1
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr273, i8 %conv270) #12, !srcloc !191
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !261
  tail call void @arm_heavy_mb() #12
  %100 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %membase, align 4
  %add.ptr279 = getelementptr i8, ptr %101, i32 6
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr279, i8 %cr3.0) #12, !srcloc !191
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !262
  tail call void @arm_heavy_mb() #12
  %102 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %membase, align 4
  %add.ptr285 = getelementptr i8, ptr %103, i32 2
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr285, i8 %cr1.3) #12, !srcloc !191
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !263
  tail call void @arm_heavy_mb() #12
  %104 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %membase, align 4
  %add.ptr291 = getelementptr i8, ptr %105, i32 13
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr291, i8 %modem.0) #12, !srcloc !191
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !264
  tail call void @arm_heavy_mb() #12
  %106 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %membase, align 4
  %add.ptr297 = getelementptr i8, ptr %107, i32 3
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr297, i8 %7) #12, !srcloc !191
  br i1 %tobool.not, label %lpuart_wait_bit_set.exit.if.end310_crit_edge, label %land.lhs.true299

lpuart_wait_bit_set.exit.if.end310_crit_edge:     ; preds = %lpuart_wait_bit_set.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end310

land.lhs.true299:                                 ; preds = %lpuart_wait_bit_set.exit
  %lpuart_dma_rx_use300 = getelementptr inbounds %struct.lpuart_port, ptr %port, i32 0, i32 7
  %108 = ptrtoint ptr %lpuart_dma_rx_use300 to i32
  call void @__asan_load1_noabort(i32 %108)
  %109 = load i8, ptr %lpuart_dma_rx_use300, align 1, !range !194
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %109)
  %tobool301.not = icmp eq i8 %109, 0
  br i1 %tobool301.not, label %land.lhs.true299.if.end310_crit_edge, label %if.then303

land.lhs.true299.if.end310_crit_edge:             ; preds = %land.lhs.true299
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end310

if.then303:                                       ; preds = %land.lhs.true299
  %call304 = tail call fastcc i32 @lpuart_start_rx_dma(ptr noundef %port)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call304)
  %tobool305.not = icmp eq i32 %call304, 0
  br i1 %tobool305.not, label %if.then306, label %if.else307

if.then306:                                       ; preds = %if.then303
  call void @__sanitizer_cov_trace_pc() #14
  %lpuart_timer.i = getelementptr inbounds %struct.lpuart_port, ptr %port, i32 0, i32 18
  tail call void @init_timer_key(ptr noundef %lpuart_timer.i, ptr noundef nonnull @lpuart_timer_func, i32 noundef 0, ptr noundef nonnull @.str.50, ptr noundef nonnull @rx_dma_timer_init.__key) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %110 = load volatile i32, ptr @jiffies, align 128
  %dma_rx_timeout.i = getelementptr inbounds %struct.lpuart_port, ptr %port, i32 0, i32 17
  %111 = ptrtoint ptr %dma_rx_timeout.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %dma_rx_timeout.i, align 4
  %add.i = add i32 %112, %110
  %expires.i = getelementptr inbounds %struct.lpuart_port, ptr %port, i32 0, i32 18, i32 1
  %113 = ptrtoint ptr %expires.i to i32
  call void @__asan_store4_noabort(i32 %113)
  store i32 %add.i, ptr %expires.i, align 4
  tail call void @add_timer(ptr noundef %lpuart_timer.i) #12
  br label %if.end310

if.else307:                                       ; preds = %if.then303
  call void @__sanitizer_cov_trace_pc() #14
  %114 = ptrtoint ptr %lpuart_dma_rx_use300 to i32
  call void @__asan_store1_noabort(i32 %114)
  store i8 0, ptr %lpuart_dma_rx_use300, align 1
  br label %if.end310

if.end310:                                        ; preds = %if.else307, %if.then306, %land.lhs.true299.if.end310_crit_edge, %lpuart_wait_bit_set.exit.if.end310_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %port, i32 noundef %call176) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lpuart_poll_init(ptr noundef %port) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %fifosize = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 23
  %0 = ptrtoint ptr %fifosize to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %fifosize, align 4
  %call5 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %port) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !265
  tail call void @arm_heavy_mb() #12
  %membase = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 2
  %1 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %membase, align 4
  %add.ptr12 = getelementptr i8, ptr %2, i32 3
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr12, i8 0) #12, !srcloc !191
  %3 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %membase, align 4
  %add.ptr15 = getelementptr i8, ptr %4, i32 16
  %5 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr15) #12, !srcloc !186
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !266
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !267
  tail call void @arm_heavy_mb() #12
  %6 = or i8 %5, -120
  %7 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %membase, align 4
  %add.ptr27 = getelementptr i8, ptr %8, i32 16
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr27, i8 %6) #12, !srcloc !191
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !268
  tail call void @arm_heavy_mb() #12
  %9 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %membase, align 4
  %add.ptr33 = getelementptr i8, ptr %10, i32 17
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr33, i8 -64) #12, !srcloc !191
  %11 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %membase, align 4
  %add.ptr38 = getelementptr i8, ptr %12, i32 4
  %13 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr38) #12, !srcloc !186
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !269
  %14 = and i8 %13, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool.not = icmp eq i8 %14, 0
  br i1 %tobool.not, label %entry.do.body57_crit_edge, label %if.then

entry.do.body57_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body57

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %15 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %membase, align 4
  %add.ptr47 = getelementptr i8, ptr %16, i32 7
  %17 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr47) #12, !srcloc !186
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !270
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !271
  tail call void @arm_heavy_mb() #12
  %18 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %membase, align 4
  %add.ptr56 = getelementptr i8, ptr %19, i32 18
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr56, i8 1) #12, !srcloc !191
  br label %do.body57

do.body57:                                        ; preds = %if.then, %entry.do.body57_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !272
  tail call void @arm_heavy_mb() #12
  %20 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %membase, align 4
  %add.ptr62 = getelementptr i8, ptr %21, i32 19
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr62, i8 0) #12, !srcloc !191
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !273
  tail call void @arm_heavy_mb() #12
  %22 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %membase, align 4
  %add.ptr68 = getelementptr i8, ptr %23, i32 21
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr68, i8 1) #12, !srcloc !191
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !274
  tail call void @arm_heavy_mb() #12
  %24 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %membase, align 4
  %add.ptr74 = getelementptr i8, ptr %25, i32 3
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr74, i8 12) #12, !srcloc !191
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %port, i32 noundef %call5) #12
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @lpuart_poll_put_char(ptr nocapture noundef readonly %port, i8 noundef zeroext %c) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %membase.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 2
  %0 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %membase.i, align 4
  %add.ptr2.i = getelementptr i8, ptr %1, i32 4
  %2 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr2.i) #12, !srcloc !186
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !187
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %2)
  %tobool.not4.i = icmp sgt i8 %2, -1
  br i1 %tobool.not4.i, label %entry.do.end.i_crit_edge, label %entry.lpuart_wait_bit_set.exit_crit_edge

entry.lpuart_wait_bit_set.exit_crit_edge:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %lpuart_wait_bit_set.exit

entry.do.end.i_crit_edge:                         ; preds = %entry
  br label %do.end.i

do.end.i:                                         ; preds = %do.end.i.do.end.i_crit_edge, %entry.do.end.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !188
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #12, !srcloc !189
  %3 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %membase.i, align 4
  %add.ptr.i = getelementptr i8, ptr %4, i32 4
  %5 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i) #12, !srcloc !186
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !187
  %tobool.not.i = icmp sgt i8 %5, -1
  br i1 %tobool.not.i, label %do.end.i.do.end.i_crit_edge, label %do.end.i.lpuart_wait_bit_set.exit_crit_edge

do.end.i.lpuart_wait_bit_set.exit_crit_edge:      ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %lpuart_wait_bit_set.exit

do.end.i.do.end.i_crit_edge:                      ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end.i

lpuart_wait_bit_set.exit:                         ; preds = %do.end.i.lpuart_wait_bit_set.exit_crit_edge, %entry.lpuart_wait_bit_set.exit_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !275
  tail call void @arm_heavy_mb() #12
  %6 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %membase.i, align 4
  %add.ptr = getelementptr i8, ptr %7, i32 7
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr, i8 %c) #12, !srcloc !191
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lpuart_poll_get_char(ptr nocapture noundef readonly %port) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %membase = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 2
  %0 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %membase, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 4
  %2 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr) #12, !srcloc !186
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !276
  %3 = and i8 %2, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %4 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %membase, align 4
  %add.ptr5 = getelementptr i8, ptr %5, i32 7
  %6 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr5) #12, !srcloc !186
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !277
  %conv9 = zext i8 %6 to i32
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi i32 [ %conv9, %if.end ], [ 16711680, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @lpuart_transmit_buffer(ptr noundef %sport) unnamed_addr #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  %state = getelementptr inbounds %struct.uart_port, ptr %sport, i32 0, i32 30
  %0 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %state, align 4
  %xmit1 = getelementptr inbounds %struct.uart_state, ptr %1, i32 0, i32 2
  %x_char = getelementptr inbounds %struct.uart_port, ptr %sport, i32 0, i32 24
  %2 = ptrtoint ptr %x_char to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %x_char, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %if.end, label %do.body

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !278
  tail call void @arm_heavy_mb() #12
  %4 = ptrtoint ptr %x_char to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %x_char, align 4
  %membase = getelementptr inbounds %struct.uart_port, ptr %sport, i32 0, i32 2
  %6 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %membase, align 4
  %add.ptr = getelementptr i8, ptr %7, i32 7
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr, i8 %5) #12, !srcloc !191
  %tx = getelementptr inbounds %struct.uart_port, ptr %sport, i32 0, i32 31, i32 5
  %8 = ptrtoint ptr %tx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %tx, align 4
  %inc = add i32 %9, 1
  store i32 %inc, ptr %tx, align 4
  %10 = ptrtoint ptr %x_char to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 0, ptr %x_char, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %head.i = getelementptr inbounds %struct.uart_state, ptr %1, i32 0, i32 2, i32 1
  %11 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %head.i, align 4
  %tail.i = getelementptr inbounds %struct.uart_state, ptr %1, i32 0, i32 2, i32 2
  %13 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %tail.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %12, i32 %14)
  %cmp.i = icmp eq i32 %12, %14
  br i1 %cmp.i, label %if.end.if.then10_crit_edge, label %lor.rhs.i

if.end.if.then10_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then10

lor.rhs.i:                                        ; preds = %if.end
  %tty2.i.i = getelementptr inbounds %struct.tty_port, ptr %1, i32 0, i32 1
  %15 = ptrtoint ptr %tty2.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %tty2.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %16, null
  br i1 %tobool.not.i.i, label %lor.rhs.i.lpuart_stopped_or_empty.exit_crit_edge, label %land.lhs.true.i.i

lor.rhs.i.lpuart_stopped_or_empty.exit_crit_edge: ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %lpuart_stopped_or_empty.exit

land.lhs.true.i.i:                                ; preds = %lor.rhs.i
  %stopped.i.i = getelementptr inbounds %struct.tty_struct, ptr %16, i32 0, i32 19, i32 1
  %17 = ptrtoint ptr %stopped.i.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %stopped.i.i, align 4, !range !194
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %tobool3.not.i.i = icmp eq i8 %18, 0
  br i1 %tobool3.not.i.i, label %land.lhs.true.i.i.lpuart_stopped_or_empty.exit_crit_edge, label %land.lhs.true.i.i.if.then10_crit_edge

land.lhs.true.i.i.if.then10_crit_edge:            ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then10

land.lhs.true.i.i.lpuart_stopped_or_empty.exit_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %lpuart_stopped_or_empty.exit

lpuart_stopped_or_empty.exit:                     ; preds = %land.lhs.true.i.i.lpuart_stopped_or_empty.exit_crit_edge, %lor.rhs.i.lpuart_stopped_or_empty.exit_crit_edge
  %hw_stopped.i.i = getelementptr inbounds %struct.uart_port, ptr %sport, i32 0, i32 35
  %19 = ptrtoint ptr %hw_stopped.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %hw_stopped.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool4.not.i.i.not = icmp eq i32 %20, 0
  br i1 %tobool4.not.i.i.not, label %while.cond.preheader, label %lpuart_stopped_or_empty.exit.if.then10_crit_edge

lpuart_stopped_or_empty.exit.if.then10_crit_edge: ; preds = %lpuart_stopped_or_empty.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then10

while.cond.preheader:                             ; preds = %lpuart_stopped_or_empty.exit
  %membase14 = getelementptr inbounds %struct.uart_port, ptr %sport, i32 0, i32 2
  %21 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %head.i, align 4
  %23 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %tail.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %22, i32 %24)
  %cmp73 = icmp eq i32 %22, %24
  br i1 %cmp73, label %while.cond.preheader.while.end_crit_edge, label %land.rhs.lr.ph

while.cond.preheader.while.end_crit_edge:         ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end

land.rhs.lr.ph:                                   ; preds = %while.cond.preheader
  %txfifo_size = getelementptr inbounds %struct.lpuart_port, ptr %sport, i32 0, i32 4
  %tx31 = getelementptr inbounds %struct.uart_port, ptr %sport, i32 0, i32 31, i32 5
  br label %land.rhs

if.then10:                                        ; preds = %lpuart_stopped_or_empty.exit.if.then10_crit_edge, %land.lhs.true.i.i.if.then10_crit_edge, %if.end.if.then10_crit_edge
  %membase.i = getelementptr inbounds %struct.uart_port, ptr %sport, i32 0, i32 2
  %25 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %membase.i, align 4
  %add.ptr.i = getelementptr i8, ptr %26, i32 3
  %27 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i) #12, !srcloc !186
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !237
  %28 = and i8 %27, 63
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !238
  tail call void @arm_heavy_mb() #12
  %29 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %membase.i, align 4
  %add.ptr4.i = getelementptr i8, ptr %30, i32 3
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr4.i, i8 %28) #12, !srcloc !191
  br label %cleanup

land.rhs:                                         ; preds = %do.body20.land.rhs_crit_edge, %land.rhs.lr.ph
  %31 = ptrtoint ptr %membase14 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %membase14, align 4
  %add.ptr15 = getelementptr i8, ptr %32, i32 20
  %33 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr15) #12, !srcloc !186
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !279
  %conv = zext i8 %33 to i32
  %34 = ptrtoint ptr %txfifo_size to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %txfifo_size, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %35, i32 %conv)
  %cmp18 = icmp ugt i32 %35, %conv
  br i1 %cmp18, label %do.body20, label %land.rhs.while.end_crit_edge

land.rhs.while.end_crit_edge:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end

do.body20:                                        ; preds = %land.rhs
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !280
  tail call void @arm_heavy_mb() #12
  %36 = ptrtoint ptr %xmit1 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %xmit1, align 4
  %38 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %tail.i, align 4
  %arrayidx = getelementptr i8, ptr %37, i32 %39
  %40 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %arrayidx, align 1
  %42 = ptrtoint ptr %membase14 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %membase14, align 4
  %add.ptr26 = getelementptr i8, ptr %43, i32 7
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr26, i8 %41) #12, !srcloc !191
  %44 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %tail.i, align 4
  %add = add i32 %45, 1
  %and = and i32 %add, 4095
  store i32 %and, ptr %tail.i, align 4
  %46 = ptrtoint ptr %tx31 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %tx31, align 4
  %inc32 = add i32 %47, 1
  store i32 %inc32, ptr %tx31, align 4
  %48 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %head.i, align 4
  %50 = load i32, ptr %tail.i, align 4
  %cmp = icmp eq i32 %49, %50
  br i1 %cmp, label %do.body20.while.end_crit_edge, label %do.body20.land.rhs_crit_edge

do.body20.land.rhs_crit_edge:                     ; preds = %do.body20
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.rhs

do.body20.while.end_crit_edge:                    ; preds = %do.body20
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end

while.end:                                        ; preds = %do.body20.while.end_crit_edge, %land.rhs.while.end_crit_edge, %while.cond.preheader.while.end_crit_edge
  %51 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %head.i, align 4
  %53 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %tail.i, align 4
  %sub = sub i32 %52, %54
  %and35 = and i32 %sub, 3840
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and35)
  %cmp36 = icmp eq i32 %and35, 0
  br i1 %cmp36, label %if.then38, label %while.end.if.end40_crit_edge

while.end.if.end40_crit_edge:                     ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end40

if.then38:                                        ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @uart_write_wakeup(ptr noundef %sport) #12
  br label %if.end40

if.end40:                                         ; preds = %if.then38, %while.end.if.end40_crit_edge
  %55 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %head.i, align 4
  %57 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %tail.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %56, i32 %58)
  %cmp43 = icmp eq i32 %56, %58
  br i1 %cmp43, label %if.then45, label %if.end40.cleanup_crit_edge

if.end40.cleanup_crit_edge:                       ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then45:                                        ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #14
  %59 = ptrtoint ptr %membase14 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %membase14, align 4
  %add.ptr.i71 = getelementptr i8, ptr %60, i32 3
  %61 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i71) #12, !srcloc !186
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !237
  %62 = and i8 %61, 63
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !238
  tail call void @arm_heavy_mb() #12
  %63 = ptrtoint ptr %membase14 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %membase14, align 4
  %add.ptr4.i72 = getelementptr i8, ptr %64, i32 3
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr4.i72, i8 %62) #12, !srcloc !191
  br label %cleanup

cleanup:                                          ; preds = %if.then45, %if.end40.cleanup_crit_edge, %if.then10, %do.body
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @lpuart_setup_watermark(ptr nocapture noundef readonly %sport) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %membase = getelementptr inbounds %struct.uart_port, ptr %sport, i32 0, i32 2
  %0 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %membase, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 3
  %2 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr) #12, !srcloc !186
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !281
  %3 = and i8 %2, 19
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !282
  tail call void @arm_heavy_mb() #12
  %4 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %membase, align 4
  %add.ptr5 = getelementptr i8, ptr %5, i32 3
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr5, i8 %3) #12, !srcloc !191
  %6 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %membase, align 4
  %add.ptr10 = getelementptr i8, ptr %7, i32 16
  %8 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr10) #12, !srcloc !186
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !283
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !284
  tail call void @arm_heavy_mb() #12
  %9 = or i8 %8, -120
  %10 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %membase, align 4
  %add.ptr22 = getelementptr i8, ptr %11, i32 16
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr22, i8 %9) #12, !srcloc !191
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !285
  tail call void @arm_heavy_mb() #12
  %12 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %membase, align 4
  %add.ptr28 = getelementptr i8, ptr %13, i32 17
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr28, i8 -64) #12, !srcloc !191
  %14 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %membase, align 4
  %add.ptr33 = getelementptr i8, ptr %15, i32 4
  %16 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr33) #12, !srcloc !186
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !286
  %17 = and i8 %16, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool.not = icmp eq i8 %17, 0
  br i1 %tobool.not, label %entry.do.body53_crit_edge, label %if.then

entry.do.body53_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body53

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %18 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %membase, align 4
  %add.ptr43 = getelementptr i8, ptr %19, i32 7
  %20 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr43) #12, !srcloc !186
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !287
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !288
  tail call void @arm_heavy_mb() #12
  %21 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %membase, align 4
  %add.ptr52 = getelementptr i8, ptr %22, i32 18
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr52, i8 1) #12, !srcloc !191
  br label %do.body53

do.body53:                                        ; preds = %if.then, %entry.do.body53_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !289
  tail call void @arm_heavy_mb() #12
  %23 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %membase, align 4
  %add.ptr58 = getelementptr i8, ptr %24, i32 19
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr58, i8 0) #12, !srcloc !191
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !290
  tail call void @arm_heavy_mb() #12
  %25 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %membase, align 4
  %add.ptr64 = getelementptr i8, ptr %26, i32 21
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr64, i8 1) #12, !srcloc !191
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !291
  tail call void @arm_heavy_mb() #12
  %27 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %membase, align 4
  %add.ptr70 = getelementptr i8, ptr %28, i32 3
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr70, i8 %2) #12, !srcloc !191
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @lpuart32_console_write(ptr nocapture noundef readonly %co, ptr noundef %s, i32 noundef %count) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %index = getelementptr inbounds %struct.console, ptr %co, i32 0, i32 9
  %0 = ptrtoint ptr %index to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %index, align 2
  %idxprom = sext i16 %1 to i32
  %arrayidx = getelementptr [6 x ptr], ptr @lpuart_ports, i32 0, i32 %idxprom
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @oops_in_progress to i32))
  %4 = load i32, ptr @oops_in_progress, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not = icmp eq i32 %4, 0
  br i1 %tobool.not, label %do.body51, label %do.body1

do.body1:                                         ; preds = %entry
  %5 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #12, !srcloc !292
  %and.i = and i32 %5, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool10.not = icmp eq i32 %and.i, 0
  br i1 %tobool10.not, label %do.end13, label %do.end13.thread

do.end13:                                         ; preds = %do.body1
  tail call void @trace_hardirqs_off() #12
  %call16 = tail call i32 @_raw_spin_trylock(ptr noundef %3) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %if.then27, label %do.end13.if.end65_crit_edge

do.end13.if.end65_crit_edge:                      ; preds = %do.end13
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end65

do.end13.thread:                                  ; preds = %do.body1
  %call16104 = tail call i32 @_raw_spin_trylock(ptr noundef %3) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16104)
  %tobool17.not105 = icmp eq i32 %call16104, 0
  br i1 %tobool17.not105, label %do.end13.thread.do.body29_crit_edge, label %do.end13.thread.if.end65_crit_edge

do.end13.thread.if.end65_crit_edge:               ; preds = %do.end13.thread
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end65

do.end13.thread.do.body29_crit_edge:              ; preds = %do.end13.thread
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body29

if.then27:                                        ; preds = %do.end13
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @trace_hardirqs_on() #12
  br label %do.body29

do.body29:                                        ; preds = %if.then27, %do.end13.thread.do.body29_crit_edge
  %6 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #12, !srcloc !293
  %and.i.i = and i32 %6, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool37.not = icmp eq i32 %and.i.i, 0
  br i1 %tobool37.not, label %if.then41, label %do.body29.do.end44_crit_edge, !prof !211

do.body29.do.end44_crit_edge:                     ; preds = %do.body29
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end44

if.then41:                                        ; preds = %do.body29
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @warn_bogus_irq_restore() #12
  br label %do.end44

do.end44:                                         ; preds = %if.then41, %do.body29.do.end44_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %5) #12, !srcloc !294
  br label %if.end65

do.body51:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %call60 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %3) #12
  br label %if.end65

if.end65:                                         ; preds = %do.body51, %do.end44, %do.end13.thread.if.end65_crit_edge, %do.end13.if.end65_crit_edge
  %tobool72.not = phi i1 [ false, %do.end13.thread.if.end65_crit_edge ], [ true, %do.end44 ], [ false, %do.end13.if.end65_crit_edge ], [ false, %do.body51 ]
  %flags.0 = phi i32 [ %5, %do.end13.thread.if.end65_crit_edge ], [ %5, %do.end44 ], [ %5, %do.end13.if.end65_crit_edge ], [ %call60, %do.body51 ]
  %iotype.i = getelementptr inbounds %struct.uart_port, ptr %3, i32 0, i32 26
  %7 = ptrtoint ptr %iotype.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %iotype.i, align 2
  %9 = zext i8 %8 to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.146)
  switch i8 %8, label %if.end65.lpuart32_read.exit_crit_edge [
    i8 3, label %sw.bb.i
    i8 6, label %sw.bb2.i
  ]

if.end65.lpuart32_read.exit_crit_edge:            ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #14
  br label %lpuart32_read.exit

sw.bb.i:                                          ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #14
  %membase.i = getelementptr inbounds %struct.uart_port, ptr %3, i32 0, i32 2
  %10 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %membase.i, align 4
  %add.ptr.i = getelementptr i8, ptr %11, i32 8
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #12, !srcloc !180
  %13 = tail call i32 @llvm.bswap.i32(i32 %12) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !181
  br label %lpuart32_read.exitthread-pre-split

sw.bb2.i:                                         ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #14
  %membase4.i = getelementptr inbounds %struct.uart_port, ptr %3, i32 0, i32 2
  %14 = ptrtoint ptr %membase4.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %membase4.i, align 4
  %add.ptr5.i = getelementptr i8, ptr %15, i32 8
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5.i) #12, !srcloc !180
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !182
  br label %lpuart32_read.exitthread-pre-split

lpuart32_read.exitthread-pre-split:               ; preds = %sw.bb2.i, %sw.bb.i
  %retval.0.i.ph = phi i32 [ %13, %sw.bb.i ], [ %16, %sw.bb2.i ]
  %17 = ptrtoint ptr %iotype.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %.pr = load i8, ptr %iotype.i, align 2
  br label %lpuart32_read.exit

lpuart32_read.exit:                               ; preds = %lpuart32_read.exitthread-pre-split, %if.end65.lpuart32_read.exit_crit_edge
  %18 = phi i8 [ %.pr, %lpuart32_read.exitthread-pre-split ], [ %8, %if.end65.lpuart32_read.exit_crit_edge ]
  %retval.0.i = phi i32 [ %retval.0.i.ph, %lpuart32_read.exitthread-pre-split ], [ 0, %if.end65.lpuart32_read.exit_crit_edge ]
  %or = and i32 %retval.0.i, -15466497
  %and = or i32 %or, 786432
  %19 = zext i8 %18 to i64
  call void @__sanitizer_cov_trace_switch(i64 %19, ptr @__sancov_gen_cov_switch_values.147)
  switch i8 %18, label %lpuart32_read.exit.lpuart32_write.exit_crit_edge [
    i8 3, label %do.body.i
    i8 6, label %do.body2.i
  ]

lpuart32_read.exit.lpuart32_write.exit_crit_edge: ; preds = %lpuart32_read.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %lpuart32_write.exit

do.body.i:                                        ; preds = %lpuart32_read.exit
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !183
  tail call void @arm_heavy_mb() #12
  %20 = tail call i32 @llvm.bswap.i32(i32 %and) #12
  %membase.i91 = getelementptr inbounds %struct.uart_port, ptr %3, i32 0, i32 2
  %21 = ptrtoint ptr %membase.i91 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %membase.i91, align 4
  %add.ptr.i92 = getelementptr i8, ptr %22, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i92, i32 %20) #12, !srcloc !184
  br label %lpuart32_write.exit

do.body2.i:                                       ; preds = %lpuart32_read.exit
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !185
  tail call void @arm_heavy_mb() #12
  %membase4.i93 = getelementptr inbounds %struct.uart_port, ptr %3, i32 0, i32 2
  %23 = ptrtoint ptr %membase4.i93 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %membase4.i93, align 4
  %add.ptr5.i94 = getelementptr i8, ptr %24, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5.i94, i32 %and) #12, !srcloc !184
  br label %lpuart32_write.exit

lpuart32_write.exit:                              ; preds = %do.body2.i, %do.body.i, %lpuart32_read.exit.lpuart32_write.exit_crit_edge
  tail call void @uart_console_write(ptr noundef %3, ptr noundef %s, i32 noundef %count, ptr noundef nonnull @lpuart32_console_putchar) #12
  %membase4.i.i = getelementptr inbounds %struct.uart_port, ptr %3, i32 0, i32 2
  br label %while.cond.i

while.cond.i:                                     ; preds = %do.end.i, %lpuart32_write.exit
  %25 = ptrtoint ptr %iotype.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %iotype.i, align 2
  %27 = zext i8 %26 to i64
  call void @__sanitizer_cov_trace_switch(i64 %27, ptr @__sancov_gen_cov_switch_values.148)
  switch i8 %26, label %while.cond.i.do.end.i_crit_edge [
    i8 3, label %sw.bb.i.i
    i8 6, label %sw.bb2.i.i
  ]

while.cond.i.do.end.i_crit_edge:                  ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end.i

sw.bb.i.i:                                        ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #14
  %28 = ptrtoint ptr %membase4.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %membase4.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %29, i32 4
  %30 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #12, !srcloc !180
  %31 = tail call i32 @llvm.bswap.i32(i32 %30) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !181
  br label %lpuart32_read.exit.i

sw.bb2.i.i:                                       ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #14
  %32 = ptrtoint ptr %membase4.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %membase4.i.i, align 4
  %add.ptr5.i.i = getelementptr i8, ptr %33, i32 4
  %34 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5.i.i) #12, !srcloc !180
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !182
  br label %lpuart32_read.exit.i

lpuart32_read.exit.i:                             ; preds = %sw.bb2.i.i, %sw.bb.i.i
  %retval.0.i.i = phi i32 [ %34, %sw.bb2.i.i ], [ %31, %sw.bb.i.i ]
  %and.i95 = and i32 %retval.0.i.i, 4194304
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i95)
  %tobool.not.i = icmp eq i32 %and.i95, 0
  br i1 %tobool.not.i, label %lpuart32_read.exit.i.do.end.i_crit_edge, label %lpuart32_wait_bit_set.exit

lpuart32_read.exit.i.do.end.i_crit_edge:          ; preds = %lpuart32_read.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end.i

do.end.i:                                         ; preds = %lpuart32_read.exit.i.do.end.i_crit_edge, %while.cond.i.do.end.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !192
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #12, !srcloc !193
  br label %while.cond.i

lpuart32_wait_bit_set.exit:                       ; preds = %lpuart32_read.exit.i
  %35 = ptrtoint ptr %iotype.i to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %iotype.i, align 2
  %37 = zext i8 %36 to i64
  call void @__sanitizer_cov_trace_switch(i64 %37, ptr @__sancov_gen_cov_switch_values.149)
  switch i8 %36, label %lpuart32_wait_bit_set.exit.lpuart32_write.exit103_crit_edge [
    i8 3, label %do.body.i99
    i8 6, label %do.body2.i102
  ]

lpuart32_wait_bit_set.exit.lpuart32_write.exit103_crit_edge: ; preds = %lpuart32_wait_bit_set.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %lpuart32_write.exit103

do.body.i99:                                      ; preds = %lpuart32_wait_bit_set.exit
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !183
  tail call void @arm_heavy_mb() #12
  %38 = tail call i32 @llvm.bswap.i32(i32 %retval.0.i) #12
  %39 = ptrtoint ptr %membase4.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %membase4.i.i, align 4
  %add.ptr.i98 = getelementptr i8, ptr %40, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i98, i32 %38) #12, !srcloc !184
  br label %lpuart32_write.exit103

do.body2.i102:                                    ; preds = %lpuart32_wait_bit_set.exit
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !185
  tail call void @arm_heavy_mb() #12
  %41 = ptrtoint ptr %membase4.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %membase4.i.i, align 4
  %add.ptr5.i101 = getelementptr i8, ptr %42, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5.i101, i32 %retval.0.i) #12, !srcloc !184
  br label %lpuart32_write.exit103

lpuart32_write.exit103:                           ; preds = %do.body2.i102, %do.body.i99, %lpuart32_wait_bit_set.exit.lpuart32_write.exit103_crit_edge
  br i1 %tobool72.not, label %lpuart32_write.exit103.if.end76_crit_edge, label %if.then73

lpuart32_write.exit103.if.end76_crit_edge:        ; preds = %lpuart32_write.exit103
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end76

if.then73:                                        ; preds = %lpuart32_write.exit103
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %3, i32 noundef %flags.0) #12
  br label %if.end76

if.end76:                                         ; preds = %if.then73, %lpuart32_write.exit103.if.end76_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @uart_console_device(ptr noundef, ptr noundef) #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @lpuart_console_setup(ptr noundef %co, ptr noundef %options) #1 section ".init.text" align 64 {
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
  store i32 115200, ptr %baud, align 4
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
  call void @__sanitizer_cov_trace_const_cmp2(i16 5, i16 %5)
  %cmp4 = icmp ugt i16 %5, 5
  br i1 %cmp4, label %if.then, label %entry.if.end_crit_edge

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
  %arrayidx = getelementptr [6 x ptr], ptr @lpuart_ports, i32 0, i32 %idxprom
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %arrayidx, align 4
  %cmp8 = icmp eq ptr %10, null
  br i1 %cmp8, label %if.end.cleanup_crit_edge, label %if.end11

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end11:                                         ; preds = %if.end
  %tobool.not = icmp eq ptr %options, null
  br i1 %tobool.not, label %if.else, label %if.then12

if.then12:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #14
  call void @uart_parse_options(ptr noundef nonnull %options, ptr noundef nonnull %baud, ptr noundef nonnull %parity, ptr noundef nonnull %bits, ptr noundef nonnull %flow) #12
  br label %if.end16

if.else:                                          ; preds = %if.end11
  %iotype.i = getelementptr inbounds %struct.uart_port, ptr %10, i32 0, i32 26
  %11 = ptrtoint ptr %iotype.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %iotype.i, align 2
  %13 = zext i8 %12 to i64
  call void @__sanitizer_cov_trace_switch(i64 %13, ptr @__sancov_gen_cov_switch_values.150)
  switch i8 %12, label %if.else14 [
    i8 6, label %if.else.if.then13_crit_edge
    i8 3, label %if.else.if.then13_crit_edge42
  ]

if.else.if.then13_crit_edge42:                    ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then13

if.else.if.then13_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then13

if.then13:                                        ; preds = %if.else.if.then13_crit_edge, %if.else.if.then13_crit_edge42
  call fastcc void @lpuart32_console_get_options(ptr noundef nonnull %10, ptr noundef nonnull %baud, ptr noundef nonnull %parity, ptr noundef nonnull %bits) #17
  br label %if.end16

if.else14:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  call fastcc void @lpuart_console_get_options(ptr noundef nonnull %10, ptr noundef nonnull %baud, ptr noundef nonnull %parity, ptr noundef nonnull %bits) #17
  br label %if.end16

if.end16:                                         ; preds = %if.else14, %if.then13, %if.then12
  %iotype.i38 = getelementptr inbounds %struct.uart_port, ptr %10, i32 0, i32 26
  %14 = ptrtoint ptr %iotype.i38 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %iotype.i38, align 2
  %16 = zext i8 %15 to i64
  call void @__sanitizer_cov_trace_switch(i64 %16, ptr @__sancov_gen_cov_switch_values.151)
  switch i8 %15, label %if.else19 [
    i8 6, label %if.end16.if.then18_crit_edge
    i8 3, label %if.end16.if.then18_crit_edge43
  ]

if.end16.if.then18_crit_edge43:                   ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then18

if.end16.if.then18_crit_edge:                     ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then18

if.then18:                                        ; preds = %if.end16.if.then18_crit_edge, %if.end16.if.then18_crit_edge43
  call fastcc void @lpuart32_setup_watermark(ptr noundef nonnull %10)
  br label %if.end20

if.else19:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #14
  call fastcc void @lpuart_setup_watermark(ptr noundef nonnull %10)
  br label %if.end20

if.end20:                                         ; preds = %if.else19, %if.then18
  %17 = ptrtoint ptr %baud to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %baud, align 4
  %19 = ptrtoint ptr %parity to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %parity, align 4
  %21 = ptrtoint ptr %bits to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %bits, align 4
  %23 = ptrtoint ptr %flow to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %flow, align 4
  %call21 = call i32 @uart_set_options(ptr noundef nonnull %10, ptr noundef %co, i32 noundef %18, i32 noundef %20, i32 noundef %22, i32 noundef %24) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end20, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %call21, %if.end20 ], [ -19, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %flow) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %parity) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bits) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %baud) #12
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_off() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_trylock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_on() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_bogus_irq_restore() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @uart_parse_options(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc void @lpuart32_console_get_options(ptr nocapture noundef readonly %sport, ptr nocapture noundef readonly %baud, ptr nocapture noundef writeonly %parity, ptr nocapture noundef writeonly %bits) unnamed_addr #1 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %iotype.i = getelementptr inbounds %struct.uart_port, ptr %sport, i32 0, i32 26
  %0 = ptrtoint ptr %iotype.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %iotype.i, align 2
  %2 = zext i8 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.152)
  switch i8 %1, label %entry.cleanup_crit_edge [
    i8 3, label %sw.bb.i
    i8 6, label %sw.bb2.i
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

sw.bb.i:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %membase.i = getelementptr inbounds %struct.uart_port, ptr %sport, i32 0, i32 2
  %3 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %membase.i, align 4
  %add.ptr.i = getelementptr i8, ptr %4, i32 8
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #12, !srcloc !180
  %6 = tail call i32 @llvm.bswap.i32(i32 %5) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !181
  br label %lpuart32_read.exit

sw.bb2.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %membase4.i = getelementptr inbounds %struct.uart_port, ptr %sport, i32 0, i32 2
  %7 = ptrtoint ptr %membase4.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %membase4.i, align 4
  %add.ptr5.i = getelementptr i8, ptr %8, i32 8
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5.i) #12, !srcloc !180
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !182
  br label %lpuart32_read.exit

lpuart32_read.exit:                               ; preds = %sw.bb2.i, %sw.bb.i
  %retval.0.i = phi i32 [ %9, %sw.bb2.i ], [ %6, %sw.bb.i ]
  %and = and i32 %retval.0.i, 786432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %lpuart32_read.exit.cleanup_crit_edge, label %if.end

lpuart32_read.exit.cleanup_crit_edge:             ; preds = %lpuart32_read.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %lpuart32_read.exit
  %10 = ptrtoint ptr %iotype.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %iotype.i, align 2
  %12 = zext i8 %11 to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.153)
  switch i8 %11, label %if.end.if.end10.sink.split_crit_edge [
    i8 3, label %sw.bb.i48
    i8 6, label %sw.bb2.i51
  ]

if.end.if.end10.sink.split_crit_edge:             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end10.sink.split

sw.bb.i48:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %membase.i46 = getelementptr inbounds %struct.uart_port, ptr %sport, i32 0, i32 2
  %13 = ptrtoint ptr %membase.i46 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %membase.i46, align 4
  %add.ptr.i47 = getelementptr i8, ptr %14, i32 8
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i47) #12, !srcloc !180
  %16 = tail call i32 @llvm.bswap.i32(i32 %15) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !181
  br label %lpuart32_read.exit53

sw.bb2.i51:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %membase4.i49 = getelementptr inbounds %struct.uart_port, ptr %sport, i32 0, i32 2
  %17 = ptrtoint ptr %membase4.i49 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %membase4.i49, align 4
  %add.ptr5.i50 = getelementptr i8, ptr %18, i32 8
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5.i50) #12, !srcloc !180
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !182
  br label %lpuart32_read.exit53

lpuart32_read.exit53:                             ; preds = %sw.bb2.i51, %sw.bb.i48
  %retval.0.i52 = phi i32 [ %19, %sw.bb2.i51 ], [ %16, %sw.bb.i48 ]
  %20 = ptrtoint ptr %parity to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 110, ptr %parity, align 4
  %and3 = and i32 %retval.0.i52, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3)
  %tobool4.not = icmp eq i32 %and3, 0
  br i1 %tobool4.not, label %lpuart32_read.exit53.if.end10_crit_edge, label %if.then5

lpuart32_read.exit53.if.end10_crit_edge:          ; preds = %lpuart32_read.exit53
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end10

if.then5:                                         ; preds = %lpuart32_read.exit53
  call void @__sanitizer_cov_trace_pc() #14
  %and6 = and i32 %retval.0.i52, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6)
  %tobool7.not = icmp eq i32 %and6, 0
  %.71 = select i1 %tobool7.not, i32 101, i32 111
  br label %if.end10.sink.split

if.end10.sink.split:                              ; preds = %if.then5, %if.end.if.end10.sink.split_crit_edge
  %.sink = phi i32 [ 110, %if.end.if.end10.sink.split_crit_edge ], [ %.71, %if.then5 ]
  %retval.0.i5267.ph = phi i32 [ 0, %if.end.if.end10.sink.split_crit_edge ], [ %retval.0.i52, %if.then5 ]
  %21 = ptrtoint ptr %parity to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %.sink, ptr %parity, align 4
  br label %if.end10

if.end10:                                         ; preds = %if.end10.sink.split, %lpuart32_read.exit53.if.end10_crit_edge
  %retval.0.i5267 = phi i32 [ %retval.0.i52, %lpuart32_read.exit53.if.end10_crit_edge ], [ %retval.0.i5267.ph, %if.end10.sink.split ]
  %and11 = and i32 %retval.0.i5267, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11)
  %tobool12.not = icmp eq i32 %and11, 0
  %. = select i1 %tobool12.not, i32 8, i32 9
  %22 = ptrtoint ptr %bits to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %., ptr %bits, align 4
  %23 = ptrtoint ptr %iotype.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %iotype.i, align 2
  %25 = zext i8 %24 to i64
  call void @__sanitizer_cov_trace_switch(i64 %25, ptr @__sancov_gen_cov_switch_values.154)
  switch i8 %24, label %if.end10.cleanup_crit_edge [
    i8 3, label %sw.bb.i56
    i8 6, label %sw.bb2.i58
  ]

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

sw.bb.i56:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #14
  %membase.i55 = getelementptr inbounds %struct.uart_port, ptr %sport, i32 0, i32 2
  %26 = ptrtoint ptr %membase.i55 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %membase.i55, align 4
  %28 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %27) #12, !srcloc !180
  %29 = tail call i32 @llvm.bswap.i32(i32 %28) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !181
  br label %lpuart32_read.exit60

sw.bb2.i58:                                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #14
  %membase4.i57 = getelementptr inbounds %struct.uart_port, ptr %sport, i32 0, i32 2
  %30 = ptrtoint ptr %membase4.i57 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %membase4.i57, align 4
  %32 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %31) #12, !srcloc !180
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !182
  br label %lpuart32_read.exit60

lpuart32_read.exit60:                             ; preds = %sw.bb2.i58, %sw.bb.i56
  %retval.0.i59 = phi i32 [ %32, %sw.bb2.i58 ], [ %29, %sw.bb.i56 ]
  %and18 = and i32 %retval.0.i59, 8191
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and18)
  %tobool19.not = icmp eq i32 %and18, 0
  br i1 %tobool19.not, label %lpuart32_read.exit60.cleanup_crit_edge, label %if.end21

lpuart32_read.exit60.cleanup_crit_edge:           ; preds = %lpuart32_read.exit60
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end21:                                         ; preds = %lpuart32_read.exit60
  %devtype.i.i = getelementptr inbounds %struct.lpuart_port, ptr %sport, i32 0, i32 1
  %33 = ptrtoint ptr %devtype.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %devtype.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %34)
  %cmp.i.i = icmp eq i32 %34, 4
  %ipg_clk.i = getelementptr inbounds %struct.lpuart_port, ptr %sport, i32 0, i32 2
  %baud_clk.i = getelementptr inbounds %struct.lpuart_port, ptr %sport, i32 0, i32 3
  %ipg_clk.sink.i = select i1 %cmp.i.i, ptr %baud_clk.i, ptr %ipg_clk.i
  %35 = ptrtoint ptr %ipg_clk.sink.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %ipg_clk.sink.i, align 4
  %call2.i = tail call i32 @clk_get_rate(ptr noundef %36) #12
  %mul = shl nuw nsw i32 %and18, 4
  %div = udiv i32 %call2.i, %mul
  %37 = ptrtoint ptr %baud to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %baud, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %38, i32 %div)
  %cmp.not = icmp eq i32 %38, %div
  br i1 %cmp.not, label %if.end21.cleanup_crit_edge, label %do.end

if.end21.cleanup_crit_edge:                       ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

do.end:                                           ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #14
  %dev = getelementptr inbounds %struct.uart_port, ptr %sport, i32 0, i32 45
  %39 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %40, ptr noundef nonnull @.str.55, i32 noundef %div, i32 noundef %38) #15
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.end21.cleanup_crit_edge, %lpuart32_read.exit60.cleanup_crit_edge, %if.end10.cleanup_crit_edge, %lpuart32_read.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc void @lpuart_console_get_options(ptr nocapture noundef readonly %sport, ptr nocapture noundef readonly %baud, ptr nocapture noundef writeonly %parity, ptr nocapture noundef writeonly %bits) unnamed_addr #1 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %membase = getelementptr inbounds %struct.uart_port, ptr %sport, i32 0, i32 2
  %0 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %membase, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 3
  %2 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr) #12, !srcloc !186
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !295
  %3 = and i8 %2, 12
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %membase, align 4
  %add.ptr7 = getelementptr i8, ptr %5, i32 2
  %6 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr7) #12, !srcloc !186
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !296
  %conv11 = zext i8 %6 to i32
  %and12 = and i32 %conv11, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12)
  %tobool13.not = icmp eq i32 %and12, 0
  %and16 = and i32 %conv11, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16)
  %tobool17.not = icmp eq i32 %and16, 0
  %.91 = select i1 %tobool17.not, i32 101, i32 111
  %storemerge = select i1 %tobool13.not, i32 110, i32 %.91
  %7 = ptrtoint ptr %parity to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %storemerge, ptr %parity, align 4
  %and22 = and i32 %conv11, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and22)
  %tobool23.not = icmp eq i32 %and22, 0
  %. = select i1 %tobool23.not, i32 8, i32 9
  %8 = ptrtoint ptr %bits to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %., ptr %bits, align 4
  %9 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %membase, align 4
  %11 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %10) #12, !srcloc !186
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !297
  %12 = and i8 %11, 31
  %13 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %membase, align 4
  %add.ptr42 = getelementptr i8, ptr %14, i32 1
  %15 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr42) #12, !srcloc !186
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !298
  %conv46 = zext i8 %12 to i32
  %conv47 = zext i8 %15 to i32
  %16 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %membase, align 4
  %add.ptr52 = getelementptr i8, ptr %17, i32 10
  %18 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr52) #12, !srcloc !186
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !299
  %devtype.i.i = getelementptr inbounds %struct.lpuart_port, ptr %sport, i32 0, i32 1
  %19 = ptrtoint ptr %devtype.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %devtype.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %20)
  %cmp.i.i = icmp eq i32 %20, 4
  %ipg_clk.i = getelementptr inbounds %struct.lpuart_port, ptr %sport, i32 0, i32 2
  %baud_clk.i = getelementptr inbounds %struct.lpuart_port, ptr %sport, i32 0, i32 3
  %ipg_clk.sink.i = select i1 %cmp.i.i, ptr %baud_clk.i, ptr %ipg_clk.i
  %21 = ptrtoint ptr %ipg_clk.sink.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %ipg_clk.sink.i, align 4
  %call2.i = tail call i32 @clk_get_rate(ptr noundef %22) #12
  %23 = shl nuw nsw i32 %conv46, 12
  %24 = shl nuw nsw i32 %conv47, 4
  %mul = or i32 %24, %23
  %div61 = udiv i32 %call2.i, %mul
  %25 = ptrtoint ptr %baud to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %baud, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %26, i32 %div61)
  %cmp.not = icmp eq i32 %26, %div61
  br i1 %cmp.not, label %if.end.cleanup_crit_edge, label %do.end

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %dev = getelementptr inbounds %struct.uart_port, ptr %sport, i32 0, i32 45
  %27 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %28, ptr noundef nonnull @.str.55, i32 noundef %div61, i32 noundef %26) #15
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @uart_set_options(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @do_SAK(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__tty_insert_flip_char(ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @lpuart_console_write(ptr nocapture noundef readonly %co, ptr noundef %s, i32 noundef %count) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %index = getelementptr inbounds %struct.console, ptr %co, i32 0, i32 9
  %0 = ptrtoint ptr %index to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %index, align 2
  %idxprom = sext i16 %1 to i32
  %arrayidx = getelementptr [6 x ptr], ptr @lpuart_ports, i32 0, i32 %idxprom
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @oops_in_progress to i32))
  %4 = load i32, ptr @oops_in_progress, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not = icmp eq i32 %4, 0
  br i1 %tobool.not, label %do.body51, label %do.body1

do.body1:                                         ; preds = %entry
  %5 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #12, !srcloc !292
  %and.i = and i32 %5, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool10.not = icmp eq i32 %and.i, 0
  br i1 %tobool10.not, label %do.end13, label %do.end13.thread

do.end13:                                         ; preds = %do.body1
  tail call void @trace_hardirqs_off() #12
  %call16 = tail call i32 @_raw_spin_trylock(ptr noundef %3) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %if.then27, label %do.end13.if.end65_crit_edge

do.end13.if.end65_crit_edge:                      ; preds = %do.end13
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end65

do.end13.thread:                                  ; preds = %do.body1
  %call16106 = tail call i32 @_raw_spin_trylock(ptr noundef %3) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16106)
  %tobool17.not107 = icmp eq i32 %call16106, 0
  br i1 %tobool17.not107, label %do.end13.thread.do.body29_crit_edge, label %do.end13.thread.if.end65_crit_edge

do.end13.thread.if.end65_crit_edge:               ; preds = %do.end13.thread
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end65

do.end13.thread.do.body29_crit_edge:              ; preds = %do.end13.thread
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body29

if.then27:                                        ; preds = %do.end13
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @trace_hardirqs_on() #12
  br label %do.body29

do.body29:                                        ; preds = %if.then27, %do.end13.thread.do.body29_crit_edge
  %6 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #12, !srcloc !293
  %and.i.i = and i32 %6, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool37.not = icmp eq i32 %and.i.i, 0
  br i1 %tobool37.not, label %if.then41, label %do.body29.do.end44_crit_edge, !prof !211

do.body29.do.end44_crit_edge:                     ; preds = %do.body29
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end44

if.then41:                                        ; preds = %do.body29
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @warn_bogus_irq_restore() #12
  br label %do.end44

do.end44:                                         ; preds = %if.then41, %do.body29.do.end44_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %5) #12, !srcloc !294
  br label %if.end65

do.body51:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %call60 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %3) #12
  br label %if.end65

if.end65:                                         ; preds = %do.body51, %do.end44, %do.end13.thread.if.end65_crit_edge, %do.end13.if.end65_crit_edge
  %tobool88.not = phi i1 [ false, %do.end13.thread.if.end65_crit_edge ], [ true, %do.end44 ], [ false, %do.end13.if.end65_crit_edge ], [ false, %do.body51 ]
  %flags.0 = phi i32 [ %5, %do.end13.thread.if.end65_crit_edge ], [ %5, %do.end44 ], [ %5, %do.end13.if.end65_crit_edge ], [ %call60, %do.body51 ]
  %membase = getelementptr inbounds %struct.uart_port, ptr %3, i32 0, i32 2
  %7 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %membase, align 4
  %add.ptr = getelementptr i8, ptr %8, i32 3
  %9 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr) #12, !srcloc !186
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !300
  %10 = and i8 %9, 19
  %11 = or i8 %10, 12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !301
  tail call void @arm_heavy_mb() #12
  %12 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %membase, align 4
  %add.ptr79 = getelementptr i8, ptr %13, i32 3
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr79, i8 %11) #12, !srcloc !191
  tail call void @uart_console_write(ptr noundef %3, ptr noundef %s, i32 noundef %count, ptr noundef nonnull @lpuart_console_putchar) #12
  %14 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %membase, align 4
  %add.ptr2.i = getelementptr i8, ptr %15, i32 4
  %16 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr2.i) #12, !srcloc !186
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !187
  %and13.i = and i8 %16, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %and13.i)
  %tobool.not4.i = icmp eq i8 %and13.i, 0
  br i1 %tobool.not4.i, label %if.end65.do.end.i_crit_edge, label %if.end65.lpuart_wait_bit_set.exit_crit_edge

if.end65.lpuart_wait_bit_set.exit_crit_edge:      ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #14
  br label %lpuart_wait_bit_set.exit

if.end65.do.end.i_crit_edge:                      ; preds = %if.end65
  br label %do.end.i

do.end.i:                                         ; preds = %do.end.i.do.end.i_crit_edge, %if.end65.do.end.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !188
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #12, !srcloc !189
  %17 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %membase, align 4
  %add.ptr.i = getelementptr i8, ptr %18, i32 4
  %19 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i) #12, !srcloc !186
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !187
  %and1.i = and i8 %19, 64
  %tobool.not.i = icmp eq i8 %and1.i, 0
  br i1 %tobool.not.i, label %do.end.i.do.end.i_crit_edge, label %do.end.i.lpuart_wait_bit_set.exit_crit_edge

do.end.i.lpuart_wait_bit_set.exit_crit_edge:      ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %lpuart_wait_bit_set.exit

do.end.i.do.end.i_crit_edge:                      ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end.i

lpuart_wait_bit_set.exit:                         ; preds = %do.end.i.lpuart_wait_bit_set.exit_crit_edge, %if.end65.lpuart_wait_bit_set.exit_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !302
  tail call void @arm_heavy_mb() #12
  %20 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %membase, align 4
  %add.ptr87 = getelementptr i8, ptr %21, i32 3
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr87, i8 %9) #12, !srcloc !191
  br i1 %tobool88.not, label %lpuart_wait_bit_set.exit.if.end92_crit_edge, label %if.then89

lpuart_wait_bit_set.exit.if.end92_crit_edge:      ; preds = %lpuart_wait_bit_set.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end92

if.then89:                                        ; preds = %lpuart_wait_bit_set.exit
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %3, i32 noundef %flags.0) #12
  br label %if.end92

if.end92:                                         ; preds = %if.then89, %lpuart_wait_bit_set.exit.if.end92_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lpuart_suspend(ptr nocapture noundef readonly %dev) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %iotype.i = getelementptr inbounds %struct.uart_port, ptr %1, i32 0, i32 26
  %2 = ptrtoint ptr %iotype.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %iotype.i, align 2
  %4 = zext i8 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.155)
  switch i8 %3, label %if.else [
    i8 3, label %sw.bb.i
    i8 6, label %sw.bb2.i
  ]

sw.bb.i:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %membase.i = getelementptr inbounds %struct.uart_port, ptr %1, i32 0, i32 2
  %5 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %membase.i, align 4
  %add.ptr.i = getelementptr i8, ptr %6, i32 8
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #12, !srcloc !180
  %8 = tail call i32 @llvm.bswap.i32(i32 %7) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !181
  br label %lpuart32_read.exitthread-pre-split

sw.bb2.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %membase4.i = getelementptr inbounds %struct.uart_port, ptr %1, i32 0, i32 2
  %9 = ptrtoint ptr %membase4.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %membase4.i, align 4
  %add.ptr5.i = getelementptr i8, ptr %10, i32 8
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5.i) #12, !srcloc !180
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !182
  br label %lpuart32_read.exitthread-pre-split

lpuart32_read.exitthread-pre-split:               ; preds = %sw.bb2.i, %sw.bb.i
  %retval.0.i.ph = phi i32 [ %8, %sw.bb.i ], [ %11, %sw.bb2.i ]
  %12 = ptrtoint ptr %iotype.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %.pr = load i8, ptr %iotype.i, align 2
  %and = and i32 %retval.0.i.ph, -13107201
  %13 = zext i8 %.pr to i64
  call void @__sanitizer_cov_trace_switch(i64 %13, ptr @__sancov_gen_cov_switch_values.156)
  switch i8 %.pr, label %lpuart32_read.exitthread-pre-split.if.end_crit_edge [
    i8 3, label %do.body.i
    i8 6, label %do.body2.i
  ]

lpuart32_read.exitthread-pre-split.if.end_crit_edge: ; preds = %lpuart32_read.exitthread-pre-split
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

do.body.i:                                        ; preds = %lpuart32_read.exitthread-pre-split
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !183
  tail call void @arm_heavy_mb() #12
  %14 = tail call i32 @llvm.bswap.i32(i32 %and) #12
  %membase.i86 = getelementptr inbounds %struct.uart_port, ptr %1, i32 0, i32 2
  %15 = ptrtoint ptr %membase.i86 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %membase.i86, align 4
  %add.ptr.i87 = getelementptr i8, ptr %16, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i87, i32 %14) #12, !srcloc !184
  br label %if.end

do.body2.i:                                       ; preds = %lpuart32_read.exitthread-pre-split
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !185
  tail call void @arm_heavy_mb() #12
  %membase4.i88 = getelementptr inbounds %struct.uart_port, ptr %1, i32 0, i32 2
  %17 = ptrtoint ptr %membase4.i88 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %membase4.i88, align 4
  %add.ptr5.i89 = getelementptr i8, ptr %18, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5.i89, i32 %and) #12, !srcloc !184
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %membase = getelementptr inbounds %struct.uart_port, ptr %1, i32 0, i32 2
  %19 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %membase, align 4
  %add.ptr = getelementptr i8, ptr %20, i32 3
  %21 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr) #12, !srcloc !186
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !303
  %22 = and i8 %21, 55
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !304
  tail call void @arm_heavy_mb() #12
  %23 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %membase, align 4
  %add.ptr11 = getelementptr i8, ptr %24, i32 3
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr11, i8 %22) #12, !srcloc !191
  br label %if.end

if.end:                                           ; preds = %if.else, %do.body2.i, %do.body.i, %lpuart32_read.exitthread-pre-split.if.end_crit_edge
  %call13 = tail call i32 @uart_suspend_port(ptr noundef nonnull @lpuart_reg, ptr noundef %1) #12
  %irq = getelementptr inbounds %struct.uart_port, ptr %1, i32 0, i32 20
  %25 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %irq, align 4
  %call15 = tail call ptr @irq_get_irq_data(i32 noundef %26) #12
  %common.i = getelementptr inbounds %struct.irq_data, ptr %call15, i32 0, i32 3
  %27 = ptrtoint ptr %common.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %common.i, align 4
  %29 = ptrtoint ptr %28 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %28, align 4
  %and.i = and i32 %30, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i = icmp ne i32 %and.i, 0
  %lpuart_dma_rx_use = getelementptr inbounds %struct.lpuart_port, ptr %1, i32 0, i32 7
  %31 = ptrtoint ptr %lpuart_dma_rx_use to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %lpuart_dma_rx_use, align 1, !range !194
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %32)
  %tobool.not = icmp eq i8 %32, 0
  br i1 %tobool.not, label %if.end.if.end48_crit_edge, label %if.then17

if.end.if.end48_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end48

if.then17:                                        ; preds = %if.end
  br i1 %tobool.i, label %if.then19, label %if.then17.if.end22_crit_edge

if.then17.if.end22_crit_edge:                     ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end22

if.then19:                                        ; preds = %if.then17
  %lpuart_timer = getelementptr inbounds %struct.lpuart_port, ptr %1, i32 0, i32 18
  %call20 = tail call i32 @del_timer_sync(ptr noundef %lpuart_timer) #12
  %dma_rx_chan.i = getelementptr inbounds %struct.lpuart_port, ptr %1, i32 0, i32 9
  %33 = ptrtoint ptr %dma_rx_chan.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %dma_rx_chan.i, align 4
  %35 = ptrtoint ptr %34 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %34, align 4
  %device_terminate_all.i.i = getelementptr inbounds %struct.dma_device, ptr %36, i32 0, i32 47
  %37 = ptrtoint ptr %device_terminate_all.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %device_terminate_all.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %38, null
  br i1 %tobool.not.i.i, label %if.then19.lpuart_dma_rx_free.exit_crit_edge, label %if.then.i.i

if.then19.lpuart_dma_rx_free.exit_crit_edge:      ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #14
  br label %lpuart_dma_rx_free.exit

if.then.i.i:                                      ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #14
  %call.i.i = tail call i32 %38(ptr noundef %34) #12
  br label %lpuart_dma_rx_free.exit

lpuart_dma_rx_free.exit:                          ; preds = %if.then.i.i, %if.then19.lpuart_dma_rx_free.exit_crit_edge
  %39 = ptrtoint ptr %34 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %34, align 4
  %dev.i = getelementptr inbounds %struct.dma_device, ptr %40, i32 0, i32 15
  %41 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %dev.i, align 4
  %rx_sgl.i = getelementptr inbounds %struct.lpuart_port, ptr %1, i32 0, i32 19
  tail call void @dma_unmap_sg_attrs(ptr noundef %42, ptr noundef %rx_sgl.i, i32 noundef 1, i32 noundef 2, i32 noundef 0) #12
  %rx_ring.i = getelementptr inbounds %struct.lpuart_port, ptr %1, i32 0, i32 21
  %43 = ptrtoint ptr %rx_ring.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %rx_ring.i, align 4
  tail call void @kfree(ptr noundef %44) #12
  %tail.i = getelementptr inbounds %struct.lpuart_port, ptr %1, i32 0, i32 21, i32 2
  %45 = ptrtoint ptr %tail.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 0, ptr %tail.i, align 4
  %head.i = getelementptr inbounds %struct.lpuart_port, ptr %1, i32 0, i32 21, i32 1
  %46 = ptrtoint ptr %head.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 0, ptr %head.i, align 4
  %dma_rx_desc.i = getelementptr inbounds %struct.lpuart_port, ptr %1, i32 0, i32 11
  %47 = ptrtoint ptr %dma_rx_desc.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr null, ptr %dma_rx_desc.i, align 4
  %dma_rx_cookie.i = getelementptr inbounds %struct.lpuart_port, ptr %1, i32 0, i32 13
  %48 = ptrtoint ptr %dma_rx_cookie.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 -22, ptr %dma_rx_cookie.i, align 4
  br label %if.end22

if.end22:                                         ; preds = %lpuart_dma_rx_free.exit, %if.then17.if.end22_crit_edge
  %49 = ptrtoint ptr %iotype.i to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %iotype.i, align 2
  %51 = zext i8 %50 to i64
  call void @__sanitizer_cov_trace_switch(i64 %51, ptr @__sancov_gen_cov_switch_values.157)
  switch i8 %50, label %do.body30 [
    i8 3, label %sw.bb.i96
    i8 6, label %sw.bb2.i98
  ]

sw.bb.i96:                                        ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #14
  %membase.i95 = getelementptr inbounds %struct.uart_port, ptr %1, i32 0, i32 2
  %52 = ptrtoint ptr %membase.i95 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %membase.i95, align 4
  %54 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %53) #12, !srcloc !180
  %55 = tail call i32 @llvm.bswap.i32(i32 %54) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !181
  br label %lpuart32_read.exit100thread-pre-split

sw.bb2.i98:                                       ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #14
  %membase4.i97 = getelementptr inbounds %struct.uart_port, ptr %1, i32 0, i32 2
  %56 = ptrtoint ptr %membase4.i97 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %membase4.i97, align 4
  %58 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %57) #12, !srcloc !180
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !182
  br label %lpuart32_read.exit100thread-pre-split

lpuart32_read.exit100thread-pre-split:            ; preds = %sw.bb2.i98, %sw.bb.i96
  %retval.0.i99.ph = phi i32 [ %55, %sw.bb.i96 ], [ %58, %sw.bb2.i98 ]
  %59 = ptrtoint ptr %iotype.i to i32
  call void @__asan_load1_noabort(i32 %59)
  %.pr108 = load i8, ptr %iotype.i, align 2
  %and28 = and i32 %retval.0.i99.ph, -2097153
  %60 = zext i8 %.pr108 to i64
  call void @__sanitizer_cov_trace_switch(i64 %60, ptr @__sancov_gen_cov_switch_values.158)
  switch i8 %.pr108, label %lpuart32_read.exit100thread-pre-split.if.end48_crit_edge [
    i8 3, label %do.body.i103
    i8 6, label %do.body2.i105
  ]

lpuart32_read.exit100thread-pre-split.if.end48_crit_edge: ; preds = %lpuart32_read.exit100thread-pre-split
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end48

do.body.i103:                                     ; preds = %lpuart32_read.exit100thread-pre-split
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !183
  tail call void @arm_heavy_mb() #12
  %61 = tail call i32 @llvm.bswap.i32(i32 %and28) #12
  %membase.i102 = getelementptr inbounds %struct.uart_port, ptr %1, i32 0, i32 2
  %62 = ptrtoint ptr %membase.i102 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %membase.i102, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %63, i32 %61) #12, !srcloc !184
  br label %if.end48

do.body2.i105:                                    ; preds = %lpuart32_read.exit100thread-pre-split
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !185
  tail call void @arm_heavy_mb() #12
  %membase4.i104 = getelementptr inbounds %struct.uart_port, ptr %1, i32 0, i32 2
  %64 = ptrtoint ptr %membase4.i104 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %membase4.i104, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %65, i32 %and28) #12, !srcloc !184
  br label %if.end48

do.body30:                                        ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !305
  tail call void @arm_heavy_mb() #12
  %membase36 = getelementptr inbounds %struct.uart_port, ptr %1, i32 0, i32 2
  %66 = ptrtoint ptr %membase36 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %membase36, align 4
  %add.ptr37 = getelementptr i8, ptr %67, i32 11
  %68 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr37) #12, !srcloc !186
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !306
  %69 = and i8 %68, -33
  %70 = ptrtoint ptr %membase36 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %membase36, align 4
  %add.ptr46 = getelementptr i8, ptr %71, i32 11
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr46, i8 %69) #12, !srcloc !191
  br label %if.end48

if.end48:                                         ; preds = %do.body30, %do.body2.i105, %do.body.i103, %lpuart32_read.exit100thread-pre-split.if.end48_crit_edge, %if.end.if.end48_crit_edge
  %lpuart_dma_tx_use = getelementptr inbounds %struct.lpuart_port, ptr %1, i32 0, i32 6
  %72 = ptrtoint ptr %lpuart_dma_tx_use to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %lpuart_dma_tx_use, align 4, !range !194
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %73)
  %tobool49.not = icmp eq i8 %73, 0
  br i1 %tobool49.not, label %if.end48.if.end52_crit_edge, label %if.then50

if.end48.if.end52_crit_edge:                      ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end52

if.then50:                                        ; preds = %if.end48
  %dma_tx_in_progress = getelementptr inbounds %struct.lpuart_port, ptr %1, i32 0, i32 16
  %74 = ptrtoint ptr %dma_tx_in_progress to i32
  call void @__asan_store1_noabort(i32 %74)
  store i8 0, ptr %dma_tx_in_progress, align 4
  %dma_tx_chan = getelementptr inbounds %struct.lpuart_port, ptr %1, i32 0, i32 8
  %75 = ptrtoint ptr %dma_tx_chan to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %dma_tx_chan, align 4
  %77 = ptrtoint ptr %76 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %76, align 4
  %device_terminate_all.i = getelementptr inbounds %struct.dma_device, ptr %78, i32 0, i32 47
  %79 = ptrtoint ptr %device_terminate_all.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %device_terminate_all.i, align 4
  %tobool.not.i = icmp eq ptr %80, null
  br i1 %tobool.not.i, label %if.then50.if.end52_crit_edge, label %if.then.i

if.then50.if.end52_crit_edge:                     ; preds = %if.then50
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end52

if.then.i:                                        ; preds = %if.then50
  call void @__sanitizer_cov_trace_pc() #14
  %call.i = tail call i32 %80(ptr noundef %76) #12
  br label %if.end52

if.end52:                                         ; preds = %if.then.i, %if.then50.if.end52_crit_edge, %if.end48.if.end52_crit_edge
  %suspended = getelementptr inbounds %struct.uart_port, ptr %1, i32 0, i32 51
  %81 = ptrtoint ptr %suspended to i32
  call void @__asan_load1_noabort(i32 %81)
  %82 = load i8, ptr %suspended, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %82)
  %tobool55.not = icmp eq i8 %82, 0
  %brmerge = select i1 %tobool55.not, i1 true, i1 %tobool.i
  br i1 %brmerge, label %if.end52.if.end59_crit_edge, label %if.then57

if.end52.if.end59_crit_edge:                      ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end59

if.then57:                                        ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #14
  %baud_clk8.i = getelementptr inbounds %struct.lpuart_port, ptr %1, i32 0, i32 3
  %83 = ptrtoint ptr %baud_clk8.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %baud_clk8.i, align 4
  tail call void @clk_disable(ptr noundef %84) #12
  tail call void @clk_unprepare(ptr noundef %84) #12
  %ipg_clk9.i = getelementptr inbounds %struct.lpuart_port, ptr %1, i32 0, i32 2
  %85 = ptrtoint ptr %ipg_clk9.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %ipg_clk9.i, align 4
  tail call void @clk_disable(ptr noundef %86) #12
  tail call void @clk_unprepare(ptr noundef %86) #12
  br label %if.end59

if.end59:                                         ; preds = %if.then57, %if.end52.if.end59_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lpuart_resume(ptr nocapture noundef readonly %dev) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %irq = getelementptr inbounds %struct.uart_port, ptr %1, i32 0, i32 20
  %2 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %irq, align 4
  %call1 = tail call ptr @irq_get_irq_data(i32 noundef %3) #12
  %common.i = getelementptr inbounds %struct.irq_data, ptr %call1, i32 0, i32 3
  %4 = ptrtoint ptr %common.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %common.i, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %5, align 4
  %and.i = and i32 %7, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i = icmp ne i32 %and.i, 0
  %suspended = getelementptr inbounds %struct.uart_port, ptr %1, i32 0, i32 51
  %8 = ptrtoint ptr %suspended to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %suspended, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool.not = icmp eq i8 %9, 0
  %brmerge = select i1 %tobool.not, i1 true, i1 %tobool.i
  br i1 %brmerge, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %call5 = tail call fastcc i32 @__lpuart_enable_clks(ptr noundef %1, i1 noundef zeroext true)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %iotype.i = getelementptr inbounds %struct.uart_port, ptr %1, i32 0, i32 26
  %10 = ptrtoint ptr %iotype.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %iotype.i, align 2
  %12 = zext i8 %11 to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.159)
  switch i8 %11, label %if.else [
    i8 6, label %if.end.if.then7_crit_edge
    i8 3, label %if.end.if.then7_crit_edge45
  ]

if.end.if.then7_crit_edge45:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then7

if.end.if.then7_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then7

if.then7:                                         ; preds = %if.end.if.then7_crit_edge, %if.end.if.then7_crit_edge45
  tail call fastcc void @lpuart32_setup_watermark_enable(ptr noundef %1)
  br label %if.end8

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  tail call fastcc void @lpuart_setup_watermark(ptr noundef %1) #12
  %membase.i = getelementptr inbounds %struct.uart_port, ptr %1, i32 0, i32 2
  %13 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %membase.i, align 4
  %add.ptr.i = getelementptr i8, ptr %14, i32 3
  %15 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i) #12, !srcloc !186
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !247
  %16 = or i8 %15, 44
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !248
  tail call void @arm_heavy_mb() #12
  %17 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %membase.i, align 4
  %add.ptr5.i = getelementptr i8, ptr %18, i32 3
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr5.i, i8 %16) #12, !srcloc !191
  br label %if.end8

if.end8:                                          ; preds = %if.else, %if.then7
  %lpuart_dma_rx_use = getelementptr inbounds %struct.lpuart_port, ptr %1, i32 0, i32 7
  %19 = ptrtoint ptr %lpuart_dma_rx_use to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %lpuart_dma_rx_use, align 1, !range !194
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %tobool9.not = icmp eq i8 %20, 0
  %call2.not = xor i1 %tobool.i, true
  %brmerge40 = select i1 %tobool9.not, i1 true, i1 %call2.not
  br i1 %brmerge40, label %if.end8.if.end20_crit_edge, label %if.then12

if.end8.if.end20_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end20

if.then12:                                        ; preds = %if.end8
  %call13 = tail call fastcc i32 @lpuart_start_rx_dma(ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %if.then15, label %if.else16

if.then15:                                        ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #14
  %lpuart_timer.i = getelementptr inbounds %struct.lpuart_port, ptr %1, i32 0, i32 18
  tail call void @init_timer_key(ptr noundef %lpuart_timer.i, ptr noundef nonnull @lpuart_timer_func, i32 noundef 0, ptr noundef nonnull @.str.50, ptr noundef nonnull @rx_dma_timer_init.__key) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %21 = load volatile i32, ptr @jiffies, align 128
  %dma_rx_timeout.i = getelementptr inbounds %struct.lpuart_port, ptr %1, i32 0, i32 17
  %22 = ptrtoint ptr %dma_rx_timeout.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %dma_rx_timeout.i, align 4
  %add.i = add i32 %23, %21
  %expires.i = getelementptr inbounds %struct.lpuart_port, ptr %1, i32 0, i32 18, i32 1
  %24 = ptrtoint ptr %expires.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %add.i, ptr %expires.i, align 4
  tail call void @add_timer(ptr noundef %lpuart_timer.i) #12
  br label %if.end20

if.else16:                                        ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #14
  %25 = ptrtoint ptr %lpuart_dma_rx_use to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 0, ptr %lpuart_dma_rx_use, align 1
  br label %if.end20

if.end20:                                         ; preds = %if.else16, %if.then15, %if.end8.if.end20_crit_edge
  tail call fastcc void @lpuart_tx_dma_startup(ptr noundef %1)
  %26 = ptrtoint ptr %iotype.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %iotype.i, align 2
  %28 = zext i8 %27 to i64
  call void @__sanitizer_cov_trace_switch(i64 %28, ptr @__sancov_gen_cov_switch_values.160)
  switch i8 %27, label %if.end20.if.end23_crit_edge [
    i8 6, label %if.end20.if.then22_crit_edge
    i8 3, label %if.end20.if.then22_crit_edge46
  ]

if.end20.if.then22_crit_edge46:                   ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then22

if.end20.if.then22_crit_edge:                     ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then22

if.end20.if.end23_crit_edge:                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end23

if.then22:                                        ; preds = %if.end20.if.then22_crit_edge, %if.end20.if.then22_crit_edge46
  tail call fastcc void @lpuart32_configure(ptr noundef %1)
  br label %if.end23

if.end23:                                         ; preds = %if.then22, %if.end20.if.end23_crit_edge
  %call25 = tail call i32 @uart_resume_port(ptr noundef nonnull @lpuart_reg, ptr noundef %1) #12
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @uart_suspend_port(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @irq_get_irq_data(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @uart_resume_port(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @uart_register_driver(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #5

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

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #13 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 79)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #13 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 79)
  ret void
}

attributes #0 = { cold mustprogress nofree norecurse nosync nounwind null_pointer_is_valid optsize sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #11 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #12 = { nounwind }
attributes #13 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #14 = { nomerge }
attributes #15 = { cold nounwind }
attributes #16 = { nounwind allocsize(0) }
attributes #17 = { cold }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !25, !27, !28, !29, !30, !31, !32, !33, !35, !36, !38, !40, !42, !44, !45, !46, !47, !48, !50, !52, !53, !54, !56, !58, !59, !60, !62, !63, !64, !66, !67, !68, !70, !71, !72, !74, !76, !77, !78, !79, !81, !82, !83, !85, !87, !88, !89, !90, !91, !93, !95, !96, !97, !99, !100, !101, !102, !104, !105, !106, !108, !109, !110, !112, !113, !114, !115, !117, !118, !120, !121, !123, !124, !125, !126, !128, !130, !132, !134, !136, !137, !138, !139, !140, !142, !143, !144, !146, !148, !149, !150, !151, !153, !155, !157, !159, !161, !163, !165, !167, !169}
!llvm.module.flags = !{!171, !172, !173, !174, !175, !176, !177, !178}
!llvm.ident = !{!179}

!0 = !{ptr @__UNIQUE_ID___earlycon_lpuart238, !1, !"__UNIQUE_ID___earlycon_lpuart238", i1 false, i1 false}
!1 = !{!"../drivers/tty/serial/fsl_lpuart.c", i32 2631, i32 1}
!2 = !{ptr @__UNIQUE_ID___earlycon_lpuart32239, !3, !"__UNIQUE_ID___earlycon_lpuart32239", i1 false, i1 false}
!3 = !{!"../drivers/tty/serial/fsl_lpuart.c", i32 2632, i32 1}
!4 = !{ptr @__UNIQUE_ID___earlycon_lpuart32240, !5, !"__UNIQUE_ID___earlycon_lpuart32240", i1 false, i1 false}
!5 = !{!"../drivers/tty/serial/fsl_lpuart.c", i32 2633, i32 1}
!6 = !{ptr @__UNIQUE_ID___earlycon_lpuart32241, !7, !"__UNIQUE_ID___earlycon_lpuart32241", i1 false, i1 false}
!7 = !{!"../drivers/tty/serial/fsl_lpuart.c", i32 2634, i32 1}
!8 = !{ptr @__UNIQUE_ID___earlycon_lpuart32242, !9, !"__UNIQUE_ID___earlycon_lpuart32242", i1 false, i1 false}
!9 = !{!"../drivers/tty/serial/fsl_lpuart.c", i32 2635, i32 1}
!10 = !{ptr @__UNIQUE_ID___earlycon_lpuart32243, !11, !"__UNIQUE_ID___earlycon_lpuart32243", i1 false, i1 false}
!11 = !{!"../drivers/tty/serial/fsl_lpuart.c", i32 2636, i32 1}
!12 = !{ptr @__UNIQUE_ID___earlycon_lpuart244, !13, !"__UNIQUE_ID___earlycon_lpuart244", i1 false, i1 false}
!13 = !{!"../drivers/tty/serial/fsl_lpuart.c", i32 2637, i32 1}
!14 = !{ptr @__UNIQUE_ID___earlycon_lpuart32245, !15, !"__UNIQUE_ID___earlycon_lpuart32245", i1 false, i1 false}
!15 = !{!"../drivers/tty/serial/fsl_lpuart.c", i32 2638, i32 1}
!16 = !{ptr @__initcall__kmod_fsl_lpuart__246_2928_lpuart_serial_init6, !17, !"__initcall__kmod_fsl_lpuart__246_2928_lpuart_serial_init6", i1 false, i1 false}
!17 = !{!"../drivers/tty/serial/fsl_lpuart.c", i32 2928, i32 1}
!18 = !{ptr @__exitcall_lpuart_serial_exit, !19, !"__exitcall_lpuart_serial_exit", i1 false, i1 false}
!19 = !{!"../drivers/tty/serial/fsl_lpuart.c", i32 2929, i32 1}
!20 = !{ptr @__UNIQUE_ID_description247, !21, !"__UNIQUE_ID_description247", i1 false, i1 false}
!21 = !{!"../drivers/tty/serial/fsl_lpuart.c", i32 2931, i32 1}
!22 = !{ptr @__UNIQUE_ID_file248, !23, !"__UNIQUE_ID_file248", i1 false, i1 false}
!23 = !{!"../drivers/tty/serial/fsl_lpuart.c", i32 2932, i32 1}
!24 = !{ptr @__UNIQUE_ID_license249, !23, !"__UNIQUE_ID_license249", i1 false, i1 false}
!25 = !{ptr @.str, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/tty/serial/fsl_lpuart.c", i32 2064, i32 3}
!27 = !{ptr @.str.1, !26, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @.str.2, !26, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @.str.3, !26, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @.str.4, !26, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @__lpuart32_serial_setbrg._entry, !26, !"_entry", i1 false, i1 false}
!32 = !{ptr @__lpuart32_serial_setbrg._entry_ptr, !26, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @.str.5, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/tty/serial/fsl_lpuart.c", i32 242, i32 8}
!35 = !{ptr @fsl_lpuart_ida, !34, !"fsl_lpuart_ida", i1 false, i1 false}
!36 = !{ptr @.str.6, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/tty/serial/fsl_lpuart.c", i32 2901, i32 11}
!38 = !{ptr @lpuart_driver, !39, !"lpuart_driver", i1 false, i1 false}
!39 = !{!"../drivers/tty/serial/fsl_lpuart.c", i32 2897, i32 31}
!40 = !{ptr @.str.7, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/tty/serial/fsl_lpuart.c", i32 2694, i32 44}
!42 = !{ptr @.str.8, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/tty/serial/fsl_lpuart.c", i32 2697, i32 3}
!44 = !{ptr @.str.9, !43, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @.str.10, !43, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @lpuart_probe._entry, !43, !"_entry", i1 false, i1 false}
!47 = !{ptr @lpuart_probe._entry_ptr, !43, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @.str.11, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/tty/serial/fsl_lpuart.c", i32 2703, i32 46}
!50 = !{ptr @.str.13, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/tty/serial/fsl_lpuart.c", i32 2706, i32 4}
!52 = !{ptr @lpuart_probe._entry.12, !51, !"_entry", i1 false, i1 false}
!53 = !{ptr @lpuart_probe._entry_ptr.14, !51, !"_entry_ptr", i1 false, i1 false}
!54 = !{ptr @.str.15, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/tty/serial/fsl_lpuart.c", i32 2711, i32 28}
!56 = !{ptr @.str.17, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/tty/serial/fsl_lpuart.c", i32 2715, i32 4}
!58 = !{ptr @lpuart_probe._entry.16, !57, !"_entry", i1 false, i1 false}
!59 = !{ptr @lpuart_probe._entry_ptr.18, !57, !"_entry_ptr", i1 false, i1 false}
!60 = !{ptr @.str.20, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/tty/serial/fsl_lpuart.c", i32 2721, i32 3}
!62 = !{ptr @lpuart_probe._entry.19, !61, !"_entry", i1 false, i1 false}
!63 = !{ptr @lpuart_probe._entry_ptr.21, !61, !"_entry_ptr", i1 false, i1 false}
!64 = !{ptr @.str.23, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/tty/serial/fsl_lpuart.c", i32 2762, i32 3}
!66 = !{ptr @lpuart_probe._entry.22, !65, !"_entry", i1 false, i1 false}
!67 = !{ptr @lpuart_probe._entry_ptr.24, !65, !"_entry_ptr", i1 false, i1 false}
!68 = !{ptr @.str.26, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/tty/serial/fsl_lpuart.c", i32 2766, i32 3}
!70 = !{ptr @lpuart_probe._entry.25, !69, !"_entry", i1 false, i1 false}
!71 = !{ptr @lpuart_probe._entry_ptr.27, !69, !"_entry_ptr", i1 false, i1 false}
!72 = !{ptr @lpuart32_pops, !73, !"lpuart32_pops", i1 false, i1 false}
!73 = !{!"../drivers/tty/serial/fsl_lpuart.c", i32 2303, i32 30}
!74 = !{ptr @.str.28, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/tty/serial/fsl_lpuart.c", i32 496, i32 3}
!76 = !{ptr @.str.29, !75, !"<string literal>", i1 false, i1 false}
!77 = !{ptr @lpuart_dma_tx._entry, !75, !"_entry", i1 false, i1 false}
!78 = !{ptr @lpuart_dma_tx._entry_ptr, !75, !"_entry_ptr", i1 false, i1 false}
!79 = !{ptr @.str.31, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/tty/serial/fsl_lpuart.c", i32 506, i32 3}
!81 = !{ptr @lpuart_dma_tx._entry.30, !80, !"_entry", i1 false, i1 false}
!82 = !{ptr @lpuart_dma_tx._entry_ptr.32, !80, !"_entry_ptr", i1 false, i1 false}
!83 = !{ptr @.str.33, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/tty/serial/fsl_lpuart.c", i32 1621, i32 57}
!85 = distinct !{null, !86, !"__print_once", i1 false, i1 false}
!86 = !{!"../drivers/tty/serial/fsl_lpuart.c", i32 1623, i32 3}
!87 = !{ptr @.str.34, !86, !"<string literal>", i1 false, i1 false}
!88 = !{ptr @.str.35, !86, !"<string literal>", i1 false, i1 false}
!89 = !{ptr @.str.36, !86, !"<string literal>", i1 false, i1 false}
!90 = !{ptr @lpuart_request_dma.__UNIQUE_ID_ddebug236, !86, !"__UNIQUE_ID_ddebug236", i1 false, i1 false}
!91 = !{ptr @.str.37, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/tty/serial/fsl_lpuart.c", i32 1629, i32 57}
!93 = distinct !{null, !94, !"__print_once", i1 false, i1 false}
!94 = !{!"../drivers/tty/serial/fsl_lpuart.c", i32 1631, i32 3}
!95 = !{ptr @.str.39, !94, !"<string literal>", i1 false, i1 false}
!96 = !{ptr @lpuart_request_dma.__UNIQUE_ID_ddebug237, !94, !"__UNIQUE_ID_ddebug237", i1 false, i1 false}
!97 = !{ptr @.str.40, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/tty/serial/fsl_lpuart.c", i32 1296, i32 3}
!99 = !{ptr @.str.41, !98, !"<string literal>", i1 false, i1 false}
!100 = !{ptr @lpuart_start_rx_dma._entry, !98, !"_entry", i1 false, i1 false}
!101 = !{ptr @lpuart_start_rx_dma._entry_ptr, !98, !"_entry_ptr", i1 false, i1 false}
!102 = !{ptr @.str.43, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/tty/serial/fsl_lpuart.c", i32 1307, i32 3}
!104 = !{ptr @lpuart_start_rx_dma._entry.42, !103, !"_entry", i1 false, i1 false}
!105 = !{ptr @lpuart_start_rx_dma._entry_ptr.44, !103, !"_entry_ptr", i1 false, i1 false}
!106 = !{ptr @.str.46, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/tty/serial/fsl_lpuart.c", i32 1319, i32 3}
!108 = !{ptr @lpuart_start_rx_dma._entry.45, !107, !"_entry", i1 false, i1 false}
!109 = !{ptr @lpuart_start_rx_dma._entry_ptr.47, !107, !"_entry_ptr", i1 false, i1 false}
!110 = !{ptr @.str.48, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/tty/serial/fsl_lpuart.c", i32 1179, i32 3}
!112 = !{ptr @.str.49, !111, !"<string literal>", i1 false, i1 false}
!113 = !{ptr @lpuart_copy_rx_to_tty._entry, !111, !"_entry", i1 false, i1 false}
!114 = !{ptr @lpuart_copy_rx_to_tty._entry_ptr, !111, !"_entry_ptr", i1 false, i1 false}
!115 = !{ptr @rx_dma_timer_init.__key, !116, !"__key", i1 false, i1 false}
!116 = !{!"../drivers/tty/serial/fsl_lpuart.c", i32 1614, i32 2}
!117 = !{ptr @.str.50, !116, !"<string literal>", i1 false, i1 false}
!118 = !{ptr @lpuart_tx_dma_startup.__key, !119, !"__key", i1 false, i1 false}
!119 = !{!"../drivers/tty/serial/fsl_lpuart.c", i32 1653, i32 2}
!120 = !{ptr @.str.51, !119, !"<string literal>", i1 false, i1 false}
!121 = !{ptr @.str.52, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../drivers/tty/serial/fsl_lpuart.c", i32 586, i32 3}
!123 = !{ptr @.str.53, !122, !"<string literal>", i1 false, i1 false}
!124 = !{ptr @lpuart_dma_tx_request._entry, !122, !"_entry", i1 false, i1 false}
!125 = !{ptr @lpuart_dma_tx_request._entry_ptr, !122, !"_entry_ptr", i1 false, i1 false}
!126 = !{ptr @.str.54, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../drivers/tty/serial/fsl_lpuart.c", i32 2240, i32 9}
!128 = !{ptr @lpuart_pops, !129, !"lpuart_pops", i1 false, i1 false}
!129 = !{!"../drivers/tty/serial/fsl_lpuart.c", i32 2279, i32 30}
!130 = !{ptr @lpuart_ports, !131, !"lpuart_ports", i1 false, i1 false}
!131 = !{!"../drivers/tty/serial/fsl_lpuart.c", i32 2327, i32 28}
!132 = !{ptr @lpuart32_console, !133, !"lpuart32_console", i1 false, i1 false}
!133 = !{!"../drivers/tty/serial/fsl_lpuart.c", i32 2548, i32 23}
!134 = !{ptr @.str.55, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../drivers/tty/serial/fsl_lpuart.c", i32 2497, i32 3}
!136 = !{ptr @.str.56, !135, !"<string literal>", i1 false, i1 false}
!137 = !{ptr @.str.57, !135, !"<string literal>", i1 false, i1 false}
!138 = !{ptr @lpuart32_console_get_options._entry, !135, !"_entry", i1 false, i1 false}
!139 = !{ptr @lpuart32_console_get_options._entry_ptr, !135, !"_entry_ptr", i1 false, i1 false}
!140 = !{ptr @.str.58, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../drivers/tty/serial/fsl_lpuart.c", i32 2451, i32 3}
!142 = !{ptr @lpuart_console_get_options._entry, !141, !"_entry", i1 false, i1 false}
!143 = !{ptr @lpuart_console_get_options._entry_ptr, !141, !"_entry_ptr", i1 false, i1 false}
!144 = !{ptr @lpuart_console, !145, !"lpuart_console", i1 false, i1 false}
!145 = !{!"../drivers/tty/serial/fsl_lpuart.c", i32 2538, i32 23}
!146 = !{ptr @.str.59, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../drivers/tty/serial/fsl_lpuart.c", i32 419, i32 3}
!148 = !{ptr @.str.60, !147, !"<string literal>", i1 false, i1 false}
!149 = !{ptr @lpuart_global_reset._entry, !147, !"_entry", i1 false, i1 false}
!150 = !{ptr @lpuart_global_reset._entry_ptr, !147, !"_entry_ptr", i1 false, i1 false}
!151 = !{ptr @lpuart_dt_ids, !152, !"lpuart_dt_ids", i1 false, i1 false}
!152 = !{!"../drivers/tty/serial/fsl_lpuart.c", i32 320, i32 34}
!153 = !{ptr @vf_data, !154, !"vf_data", i1 false, i1 false}
!154 = !{!"../drivers/tty/serial/fsl_lpuart.c", i32 288, i32 37}
!155 = !{ptr @ls1021a_data, !156, !"ls1021a_data", i1 false, i1 false}
!156 = !{!"../drivers/tty/serial/fsl_lpuart.c", i32 293, i32 37}
!157 = !{ptr @ls1028a_data, !158, !"ls1028a_data", i1 false, i1 false}
!158 = !{!"../drivers/tty/serial/fsl_lpuart.c", i32 298, i32 37}
!159 = !{ptr @imx7ulp_data, !160, !"imx7ulp_data", i1 false, i1 false}
!160 = !{!"../drivers/tty/serial/fsl_lpuart.c", i32 303, i32 31}
!161 = !{ptr @imx8qxp_data, !162, !"imx8qxp_data", i1 false, i1 false}
!162 = !{!"../drivers/tty/serial/fsl_lpuart.c", i32 309, i32 31}
!163 = !{ptr @imxrt1050_data, !164, !"imxrt1050_data", i1 false, i1 false}
!164 = !{!"../drivers/tty/serial/fsl_lpuart.c", i32 314, i32 31}
!165 = !{ptr @lpuart_pm_ops, !166, !"lpuart_pm_ops", i1 false, i1 false}
!166 = !{!"../drivers/tty/serial/fsl_lpuart.c", i32 2895, i32 8}
!167 = !{ptr @.str.61, !168, !"<string literal>", i1 false, i1 false}
!168 = !{!"../drivers/tty/serial/fsl_lpuart.c", i32 2650, i32 14}
!169 = !{ptr @lpuart_reg, !170, !"lpuart_reg", i1 false, i1 false}
!170 = !{!"../drivers/tty/serial/fsl_lpuart.c", i32 2647, i32 27}
!171 = !{i32 1, !"wchar_size", i32 2}
!172 = !{i32 1, !"min_enum_size", i32 4}
!173 = !{i32 8, !"branch-target-enforcement", i32 0}
!174 = !{i32 8, !"sign-return-address", i32 0}
!175 = !{i32 8, !"sign-return-address-all", i32 0}
!176 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!177 = !{i32 7, !"uwtable", i32 1}
!178 = !{i32 7, !"frame-pointer", i32 2}
!179 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!180 = !{i64 6337874}
!181 = !{i64 2154714567}
!182 = !{i64 2154714893}
!183 = !{i64 2154715298}
!184 = !{i64 6337456}
!185 = !{i64 2154715740}
!186 = !{i64 6337654}
!187 = !{i64 2154729586}
!188 = !{i64 2154729861}
!189 = !{i64 2154729703}
!190 = !{i64 2154799754}
!191 = !{i64 6337259}
!192 = !{i64 2154730136}
!193 = !{i64 2154729978}
!194 = !{i8 0, i8 2}
!195 = !{i64 2154763957}
!196 = !{i64 2154764197}
!197 = !{i64 2154764596}
!198 = !{i64 2154746916}
!199 = !{i64 2154747176}
!200 = !{i64 2154747410}
!201 = !{i64 2154745347}
!202 = !{i64 2154745609}
!203 = !{i64 2154745864}
!204 = !{i64 2154746149}
!205 = !{i64 2154746446}
!206 = !{i64 2154717806}
!207 = !{i64 2154718187}
!208 = !{i64 2154729044}
!209 = !{i64 2154729282}
!210 = !{!"branch_weights", i32 2000, i32 1}
!211 = !{!"branch_weights", i32 1, i32 2000}
!212 = !{i64 2153901901, i64 2153902393, i64 2153901938, i64 2153901994, i64 2153902028, i64 2153902052, i64 2153902093, i64 2153902114, i64 2153902142, i64 2153902176}
!213 = !{i64 2153895582, i64 2153896074, i64 2153895619, i64 2153895675, i64 2153895709, i64 2153895733, i64 2153895774, i64 2153895795, i64 2153895823, i64 2153895857}
!214 = !{i64 2153897192, i64 2153897684, i64 2153897229, i64 2153897285, i64 2153897319, i64 2153897343, i64 2153897384, i64 2153897405, i64 2153897433, i64 2153897467}
!215 = !{i64 2148795990, i64 2148795995, i64 2148796008, i64 2148796052, i64 2148796086, i64 2148796107}
!216 = !{i64 2154779799}
!217 = !{i64 2154780032}
!218 = !{i64 2154779206}
!219 = !{i64 2154779389}
!220 = !{i32 0, i32 33}
!221 = !{i64 2154761030}
!222 = !{i64 2154761213}
!223 = !{i64 2154748001}
!224 = !{i64 2154748266}
!225 = !{i64 2154748499}
!226 = !{i64 2154748816}
!227 = !{i64 2154749081}
!228 = !{i64 2154749320}
!229 = !{i64 2154749617}
!230 = !{i64 2154749913}
!231 = !{i64 2154752364, i64 2154752861, i64 2154752401, i64 2154752457, i64 2154752491, i64 2154752515, i64 2154752556, i64 2154752577, i64 2154752605, i64 2154752639}
!232 = !{i64 2154743631}
!233 = !{i64 2154743874}
!234 = !{i64 2154766495}
!235 = !{i64 2154766739}
!236 = !{i64 2154766199}
!237 = !{i64 2154718599}
!238 = !{i64 2154718832}
!239 = !{i64 2154740472}
!240 = !{i64 2154740707}
!241 = !{i64 2154741014}
!242 = !{i64 2154719164}
!243 = !{i64 2154719401}
!244 = !{i64 2154767088}
!245 = !{i64 2154767321}
!246 = !{i64 2154781515}
!247 = !{i64 2154770820}
!248 = !{i64 2154771063}
!249 = !{i64 2154787562}
!250 = !{i64 2154787810}
!251 = !{i64 2154790889}
!252 = !{i64 2154791144}
!253 = !{i64 2154791399}
!254 = !{i64 2154791654}
!255 = !{i64 2154791909}
!256 = !{i64 2154792164}
!257 = !{i64 2154793202}
!258 = !{i64 2154793537}
!259 = !{i64 2154793834}
!260 = !{i64 2154794131}
!261 = !{i64 2154794428}
!262 = !{i64 2154794718}
!263 = !{i64 2154795010}
!264 = !{i64 2154795306}
!265 = !{i64 2154731894}
!266 = !{i64 2154732209}
!267 = !{i64 2154732462}
!268 = !{i64 2154732785}
!269 = !{i64 2154733110}
!270 = !{i64 2154733370}
!271 = !{i64 2154733604}
!272 = !{i64 2154733893}
!273 = !{i64 2154734179}
!274 = !{i64 2154734485}
!275 = !{i64 2154734785}
!276 = !{i64 2154735082}
!277 = !{i64 2154735341}
!278 = !{i64 2154737458}
!279 = !{i64 2154737831}
!280 = !{i64 2154738077}
!281 = !{i64 2154767665}
!282 = !{i64 2154767918}
!283 = !{i64 2154768235}
!284 = !{i64 2154768487}
!285 = !{i64 2154768809}
!286 = !{i64 2154769134}
!287 = !{i64 2154769394}
!288 = !{i64 2154769628}
!289 = !{i64 2154769917}
!290 = !{i64 2154770203}
!291 = !{i64 2154770497}
!292 = !{i64 706656, i64 706717}
!293 = !{i64 709388}
!294 = !{i64 709673}
!295 = !{i64 2154805635}
!296 = !{i64 2154805900}
!297 = !{i64 2154806170}
!298 = !{i64 2154806430}
!299 = !{i64 2154806685}
!300 = !{i64 2154802282}
!301 = !{i64 2154802535}
!302 = !{i64 2154802839}
!303 = !{i64 2154832116}
!304 = !{i64 2154832360}
!305 = !{i64 2154833122}
!306 = !{i64 2154833305}
