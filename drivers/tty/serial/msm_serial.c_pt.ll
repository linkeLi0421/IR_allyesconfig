; ModuleID = '/llk/IR_all_yes/drivers/tty/serial/msm_serial.c_pt.bc'
source_filename = "../drivers/tty/serial/msm_serial.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.earlycon_id = type { [15 x i8], i8, [128 x i8], ptr }
%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.uart_driver = type { ptr, ptr, ptr, i32, i32, i32, ptr, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.msm_port = type { %struct.uart_port, [16 x i8], ptr, ptr, i32, i32, i32, i8, %struct.msm_dma, %struct.msm_dma }
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
%struct.msm_dma = type { ptr, i32, i32, ptr, i32, i32, i32, ptr }
%struct.uart_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.msm_baud_map = type { i16, i8, i8 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.console = type { [16 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, i16, i16, i32, i32, i32, ptr, ptr }
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
%struct.dma_device = type { %struct.kref, i32, i32, %struct.list_head, %struct.list_head, %struct.dma_filter, %struct.dma_cap_mask_t, i32, i16, i16, i32, i32, i32, i32, i32, ptr, ptr, %struct.ida, %struct.mutex, i32, i32, i32, i32, i32, i32, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dma_filter = type { ptr, i32, ptr }
%struct.dma_cap_mask_t = type { [1 x i32] }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.dma_slave_config = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, ptr, i32 }
%struct.qcom_adm_peripheral_config = type { i32, i32 }
%struct.ktermios = type { i32, i32, i32, i32, i8, [19 x i8], i32, i32 }
%struct.serial_struct = type { i32, i32, i32, i32, i32, i32, i32, i32, i16, i8, [1 x i8], i32, i16, i16, ptr, i16, i32, i32 }
%struct.tty_bufhead = type { ptr, %struct.work_struct, %struct.mutex, %struct.atomic_t, %struct.tty_buffer, %struct.llist_head, %struct.atomic_t, i32, ptr }
%struct.tty_buffer = type { %union.anon.39, i32, i32, i32, i32, i32, [0 x i32] }
%union.anon.39 = type { ptr }
%struct.llist_head = type { ptr }
%struct.tty_port = type { %struct.tty_bufhead, ptr, ptr, ptr, ptr, %struct.spinlock, i32, i32, %struct.wait_queue_head, %struct.wait_queue_head, i32, i32, i8, %struct.mutex, %struct.mutex, ptr, i32, i32, i32, %struct.kref, ptr }
%struct.scatterlist = type { i32, i32, i32, i32, i32 }
%struct.uart_state = type { %struct.tty_port, i32, %struct.circ_buf, %struct.atomic_t, %struct.wait_queue_head, ptr }
%struct.circ_buf = type { ptr, i32, i32 }
%struct.tty_struct = type { i32, %struct.kref, ptr, ptr, ptr, i32, %struct.ld_semaphore, ptr, %struct.mutex, %struct.mutex, %struct.mutex, %struct.rw_semaphore, %struct.mutex, %struct.ktermios, %struct.ktermios, [64 x i8], i32, i32, %struct.winsize, %struct.anon.37, %struct.anon.38, i32, i32, i32, ptr, ptr, %struct.wait_queue_head, %struct.wait_queue_head, %struct.work_struct, ptr, ptr, %struct.spinlock, %struct.list_head, i32, ptr, i32, %struct.work_struct, ptr }
%struct.ld_semaphore = type { %struct.atomic_t, %struct.raw_spinlock, i32, %struct.list_head, %struct.list_head, %struct.lockdep_map }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.winsize = type { i16, i16, i16, i16 }
%struct.anon.37 = type { %struct.spinlock, i8, i8, [0 x i32] }
%struct.anon.38 = type { %struct.spinlock, ptr, ptr, i8, i8, [0 x i32] }
%struct.page = type { i32, %union.anon.2, %union.anon.69, %struct.atomic_t, i32 }
%union.anon.2 = type { %struct.anon.3 }
%struct.anon.3 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.69 = type { %struct.atomic_t }
%struct.dma_async_tx_descriptor = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, %struct.spinlock }
%struct.dma_tx_state = type { i32, i32, i32, i32 }

@__UNIQUE_ID___earlycon_msm_serial242 = internal constant %struct.earlycon_id { [15 x i8] c"msm_serial\00\00\00\00\00", i8 0, [128 x i8] c"qcom,msm-uart\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @msm_serial_early_console_setup }, section "__earlycon_table", align 4
@__UNIQUE_ID___earlycon_msm_serial_dm243 = internal constant %struct.earlycon_id { [15 x i8] c"msm_serial_dm\00\00", i8 0, [128 x i8] c"qcom,msm-uartdm\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @msm_serial_early_console_setup_dm }, section "__earlycon_table", align 4
@msm_platform_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @msm_serial_probe, ptr @msm_serial_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @msm_match_table, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @msm_serial_dev_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@msm_uart_driver = internal global { %struct.uart_driver, [60 x i8] } { %struct.uart_driver { ptr null, ptr @.str, ptr @.str.22, i32 0, i32 0, i32 3, ptr @msm_console, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@__initcall__kmod_msm_serial__244_1914_msm_serial_init6 = internal global ptr @msm_serial_init, section ".initcall6.init", align 4
@__exitcall_msm_serial_exit = internal global ptr @msm_serial_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author245 = internal constant [49 x i8] c"msm_serial.author=Robert Love <rlove@google.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description246 = internal constant [54 x i8] c"msm_serial.description=Driver for msm7x serial device\00", section ".modinfo", align 1
@__UNIQUE_ID_file247 = internal constant [46 x i8] c"msm_serial.file=drivers/tty/serial/msm_serial\00", section ".modinfo", align 1
@__UNIQUE_ID_license248 = internal constant [23 x i8] c"msm_serial.license=GPL\00", section ".modinfo", align 1
@oops_in_progress = external dso_local local_unnamed_addr global i32, align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@.str = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"msm_serial\00", [21 x i8] zeroinitializer }, align 32
@msm_match_table = internal constant { [3 x %struct.of_device_id], [148 x i8] } { [3 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,msm-uart\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,msm-uartdm\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [148 x i8] zeroinitializer }, align 32
@msm_serial_dev_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @msm_serial_suspend, ptr @msm_serial_resume, ptr @msm_serial_suspend, ptr @msm_serial_resume, ptr @msm_serial_suspend, ptr @msm_serial_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"serial\00", [25 x i8] zeroinitializer }, align 32
@msm_uart_next_id = internal global { %struct.atomic_t, [28 x i8] } zeroinitializer, align 32
@msm_serial_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 1802, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"msm_serial: detected port #%d\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"msm_serial_probe\00", [47 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"drivers/tty/serial/msm_serial.c\00", [32 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@msm_serial_probe._entry_ptr = internal global ptr @msm_serial_probe._entry, section ".printk_index", align 4
@msm_uartdm_table = internal constant { [5 x %struct.of_device_id], [236 x i8] } { [5 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,msm-uartdm-v1.1\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 1 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,msm-uartdm-v1.2\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 2 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,msm-uartdm-v1.3\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 3 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,msm-uartdm-v1.4\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 4 to ptr) }, %struct.of_device_id zeroinitializer], [236 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"core\00", [27 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"iface\00", [26 x i8] zeroinitializer }, align 32
@msm_serial_probe._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.3, ptr @.str.4, i32 1825, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"uartclk = %d\0A\00", [18 x i8] zeroinitializer }, align 32
@msm_serial_probe._entry_ptr.11 = internal global ptr @msm_serial_probe._entry.9, section ".printk_index", align 4
@msm_uart_ports = internal global { [3 x %struct.msm_port], [336 x i8] } { [3 x %struct.msm_port] [%struct.msm_port { %struct.uart_port { %struct.spinlock zeroinitializer, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, i32 0, i32 64, i8 0, i8 0, i8 2, i8 0, i32 0, i32 0, ptr null, %struct.uart_icount zeroinitializer, ptr null, i32 268435456, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @msm_uart_pops, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, ptr null, ptr null, ptr null, %struct.serial_rs485 zeroinitializer, ptr null, %struct.serial_iso7816 zeroinitializer, ptr null }, [16 x i8] zeroinitializer, ptr null, ptr null, i32 0, i32 0, i32 0, i8 0, %struct.msm_dma zeroinitializer, %struct.msm_dma zeroinitializer }, %struct.msm_port { %struct.uart_port { %struct.spinlock zeroinitializer, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, i32 0, i32 64, i8 0, i8 0, i8 2, i8 0, i32 0, i32 0, ptr null, %struct.uart_icount zeroinitializer, ptr null, i32 268435456, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @msm_uart_pops, i32 0, i32 1, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, ptr null, ptr null, ptr null, %struct.serial_rs485 zeroinitializer, ptr null, %struct.serial_iso7816 zeroinitializer, ptr null }, [16 x i8] zeroinitializer, ptr null, ptr null, i32 0, i32 0, i32 0, i8 0, %struct.msm_dma zeroinitializer, %struct.msm_dma zeroinitializer }, %struct.msm_port { %struct.uart_port { %struct.spinlock zeroinitializer, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, i32 0, i32 64, i8 0, i8 0, i8 2, i8 0, i32 0, i32 0, ptr null, %struct.uart_icount zeroinitializer, ptr null, i32 268435456, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @msm_uart_pops, i32 0, i32 2, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, ptr null, ptr null, ptr null, %struct.serial_rs485 zeroinitializer, ptr null, %struct.serial_iso7816 zeroinitializer, ptr null }, [16 x i8] zeroinitializer, ptr null, ptr null, i32 0, i32 0, i32 0, i8 0, %struct.msm_dma zeroinitializer, %struct.msm_dma zeroinitializer }], [336 x i8] zeroinitializer }, align 32
@msm_uart_pops = internal constant { %struct.uart_ops, [56 x i8] } { %struct.uart_ops { ptr @msm_tx_empty, ptr @msm_set_mctrl, ptr @msm_get_mctrl, ptr @msm_stop_tx, ptr @msm_start_tx, ptr null, ptr null, ptr null, ptr @msm_stop_rx, ptr @msm_enable_ms, ptr @msm_break_ctl, ptr @msm_startup, ptr @msm_shutdown, ptr null, ptr @msm_set_termios, ptr null, ptr @msm_power, ptr @msm_type, ptr @msm_release_port, ptr @msm_request_port, ptr @msm_config_port, ptr @msm_verify_port, ptr null, ptr null, ptr @msm_poll_put_char, ptr @msm_poll_get_char }, [56 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"msm_serial%d\00", [19 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"tx\00", [29 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"qcom,tx-crci\00", [19 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"rx\00", [29 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"qcom,rx-crci\00", [19 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@dma_map_single_attrs.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.17 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/dma-mapping.h\00", [36 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"%s %s: rejecting DMA map of vmalloc memory\0A\00", [52 x i8] zeroinitializer }, align 32
@mem_map = external dso_local local_unnamed_addr global ptr, align 4
@msm_find_best_baud.table = internal constant { [16 x %struct.msm_baud_map], [32 x i8] } { [16 x %struct.msm_baud_map] [%struct.msm_baud_map { i16 1, i8 -1, i8 31 }, %struct.msm_baud_map { i16 2, i8 -18, i8 16 }, %struct.msm_baud_map { i16 3, i8 -35, i8 8 }, %struct.msm_baud_map { i16 4, i8 -52, i8 6 }, %struct.msm_baud_map { i16 6, i8 -69, i8 6 }, %struct.msm_baud_map { i16 8, i8 -86, i8 6 }, %struct.msm_baud_map { i16 12, i8 -103, i8 6 }, %struct.msm_baud_map { i16 16, i8 -120, i8 1 }, %struct.msm_baud_map { i16 24, i8 119, i8 1 }, %struct.msm_baud_map { i16 32, i8 102, i8 1 }, %struct.msm_baud_map { i16 48, i8 85, i8 1 }, %struct.msm_baud_map { i16 96, i8 68, i8 1 }, %struct.msm_baud_map { i16 192, i8 51, i8 1 }, %struct.msm_baud_map { i16 384, i8 34, i8 1 }, %struct.msm_baud_map { i16 768, i8 17, i8 1 }, %struct.msm_baud_map { i16 1536, i8 0, i8 1 }], [32 x i8] zeroinitializer }, align 32
@msm_power._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.20, ptr @.str.4, i32 1431, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\013msm_serial: Unknown PM state %d\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"msm_power\00", [22 x i8] zeroinitializer }, align 32
@msm_power._entry_ptr = internal global ptr @msm_power._entry, section ".printk_index", align 4
@.str.21 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"MSM\00", [28 x i8] zeroinitializer }, align 32
@iomem_resource = external dso_local global %struct.resource, align 4
@msm_poll_get_char_dm.slop = internal global { i32, [28 x i8] } zeroinitializer, align 32
@msm_poll_get_char_dm.count = internal global { i32, [28 x i8] } zeroinitializer, align 32
@.str.22 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"ttyMSM\00", [25 x i8] zeroinitializer }, align 32
@msm_console = internal global { %struct.console, [60 x i8] } { %struct.console { [16 x i8] c"ttyMSM\00\00\00\00\00\00\00\00\00\00", ptr @msm_console_write, ptr null, ptr @uart_console_device, ptr null, ptr @msm_console_setup, ptr null, ptr null, i16 1, i16 -1, i32 0, i32 0, i32 0, ptr @msm_uart_driver, ptr null }, [60 x i8] zeroinitializer }, align 32
@msm_console_setup._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.24, ptr @.str.4, i32 1701, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\016msm_serial: console setup on port #%d\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"msm_console_setup\00", [46 x i8] zeroinitializer }, align 32
@msm_console_setup._entry_ptr = internal global ptr @msm_console_setup._entry, section ".printk_index", align 4
@msm_serial_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.26, ptr @.str.4, i32 1903, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\016msm_serial: driver initialized\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"msm_serial_init\00", [16 x i8] zeroinitializer }, align 32
@msm_serial_init._entry_ptr = internal global ptr @msm_serial_init._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.27 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 3]
@__sancov_gen_cov_switch_values.28 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 88]
@__sancov_gen_cov_switch_values.29 = internal global [4 x i64] [i64 2, i64 32, i64 4800000, i64 19200000]
@___asan_gen_.30 = private unnamed_addr constant [20 x i8] c"msm_platform_driver\00", align 1
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 1881, i32 31 }
@___asan_gen_.33 = private unnamed_addr constant [16 x i8] c"msm_uart_driver\00", align 1
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 1765, i32 27 }
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 1885, i32 11 }
@___asan_gen_.39 = private unnamed_addr constant [16 x i8] c"msm_match_table\00", align 1
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 1852, i32 34 }
@___asan_gen_.42 = private unnamed_addr constant [22 x i8] c"msm_serial_dev_pm_ops\00", align 1
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 1877, i32 32 }
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 1792, i32 45 }
@___asan_gen_.48 = private unnamed_addr constant [17 x i8] c"msm_uart_next_id\00", align 1
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 1773, i32 17 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 1802, i32 2 }
@___asan_gen_.69 = private unnamed_addr constant [17 x i8] c"msm_uartdm_table\00", align 1
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 1775, i32 34 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 1814, i32 43 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 1819, i32 45 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 1825, i32 2 }
@___asan_gen_.84 = private unnamed_addr constant [15 x i8] c"msm_uart_ports\00", align 1
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 1561, i32 24 }
@___asan_gen_.87 = private unnamed_addr constant [14 x i8] c"msm_uart_pops\00", align 1
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 1537, i32 30 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 1202, i32 4 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 302, i32 36 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 306, i32 37 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 350, i32 36 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 354, i32 37 }
@___asan_gen_.109 = private unnamed_addr constant [31 x i8] c"../include/linux/dma-mapping.h\00", align 1
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 326, i32 6 }
@___asan_gen_.111 = private unnamed_addr constant [6 x i8] c"table\00", align 1
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 1062, i32 35 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 1431, i32 3 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 1347, i32 9 }
@___asan_gen_.126 = private unnamed_addr constant [5 x i8] c"slop\00", align 1
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 1450, i32 13 }
@___asan_gen_.129 = private unnamed_addr constant [6 x i8] c"count\00", align 1
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 1451, i32 13 }
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 1768, i32 14 }
@___asan_gen_.135 = private unnamed_addr constant [12 x i8] c"msm_console\00", align 1
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 1749, i32 23 }
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 1701, i32 2 }
@___asan_gen_.147 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.153 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.154 = private constant [35 x i8] c"../drivers/tty/serial/msm_serial.c\00", align 1
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 1903, i32 2 }
@llvm.compiler.used = appending global [56 x ptr] [ptr @__UNIQUE_ID___earlycon_msm_serial242, ptr @__UNIQUE_ID___earlycon_msm_serial_dm243, ptr @__UNIQUE_ID_author245, ptr @__UNIQUE_ID_description246, ptr @__UNIQUE_ID_file247, ptr @__UNIQUE_ID_license248, ptr @__exitcall_msm_serial_exit, ptr @__initcall__kmod_msm_serial__244_1914_msm_serial_init6, ptr @msm_console_setup._entry, ptr @msm_console_setup._entry_ptr, ptr @msm_power._entry, ptr @msm_power._entry_ptr, ptr @msm_serial_exit, ptr @msm_serial_init._entry, ptr @msm_serial_init._entry_ptr, ptr @msm_serial_probe._entry, ptr @msm_serial_probe._entry.9, ptr @msm_serial_probe._entry_ptr, ptr @msm_serial_probe._entry_ptr.11, ptr @msm_platform_driver, ptr @msm_uart_driver, ptr @.str, ptr @msm_match_table, ptr @msm_serial_dev_pm_ops, ptr @.str.1, ptr @msm_uart_next_id, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @msm_uartdm_table, ptr @.str.7, ptr @.str.8, ptr @.str.10, ptr @msm_uart_ports, ptr @msm_uart_pops, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @msm_find_best_baud.table, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @msm_poll_get_char_dm.slop, ptr @msm_poll_get_char_dm.count, ptr @.str.22, ptr @msm_console, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26], section "llvm.metadata"
@0 = internal global [42 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msm_platform_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msm_uart_driver to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msm_match_table to i32), i32 588, i32 736, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msm_serial_dev_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msm_uart_next_id to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msm_serial_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msm_uartdm_table to i32), i32 980, i32 1216, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msm_serial_probe._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msm_uart_ports to i32), i32 1392, i32 1728, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msm_uart_pops to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msm_find_best_baud.table to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msm_power._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msm_poll_get_char_dm.slop to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msm_poll_get_char_dm.count to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msm_console to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msm_console_setup._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msm_serial_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind null_pointer_is_valid optsize sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @msm_serial_early_console_setup(ptr nocapture noundef readonly %device, ptr nocapture noundef readnone %opt) #0 section ".init.text" align 64 {
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
  store ptr @msm_serial_early_write, ptr %write, align 4
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -19, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind null_pointer_is_valid optsize sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @msm_serial_early_console_setup_dm(ptr nocapture noundef readonly %device, ptr nocapture noundef readnone %opt) #0 section ".init.text" align 64 {
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
  store ptr @msm_serial_early_write_dm, ptr %write, align 4
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -19, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @msm_serial_exit() #1 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @platform_driver_unregister(ptr noundef nonnull @msm_platform_driver) #12
  tail call void @uart_unregister_driver(ptr noundef nonnull @msm_uart_driver) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @uart_unregister_driver(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @msm_serial_init() #1 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @uart_register_driver(ptr noundef nonnull @msm_uart_driver) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge, !prof !101

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %call3 = tail call i32 @__platform_driver_register(ptr noundef nonnull @msm_platform_driver, ptr noundef null) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.end.do.end_crit_edge, label %if.then11, !prof !101

if.end.do.end_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end

if.then11:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @uart_unregister_driver(ptr noundef nonnull @msm_uart_driver) #12
  br label %do.end

do.end:                                           ; preds = %if.then11, %if.end.do.end_crit_edge
  %call13 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.25) #15
  br label %cleanup

cleanup:                                          ; preds = %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call3, %do.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @msm_serial_early_write(ptr nocapture noundef readonly %con, ptr nocapture noundef readonly %s, i32 noundef %n) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %data = getelementptr inbounds %struct.console, ptr %con, i32 0, i32 13
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %port = getelementptr inbounds %struct.earlycon_device, ptr %1, i32 0, i32 1
  tail call fastcc void @__msm_console_write(ptr noundef %port, ptr noundef %s, i32 noundef %n, i1 noundef zeroext false)
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @__msm_console_write(ptr noundef %port, ptr nocapture noundef readonly %s, i32 noundef %count, i1 noundef zeroext %is_uartdm) unnamed_addr #3 align 64 {
entry:
  %buf = alloca [4 x i8], align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %membase = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 2
  %0 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %membase, align 4
  %. = select i1 %is_uartdm, i32 112, i32 12
  %add.ptr2 = getelementptr i8, ptr %1, i32 %.
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count)
  %cmp100.not = icmp eq i32 %count, 0
  br i1 %cmp100.not, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %num_newlines.0102 = phi i32 [ %spec.select, %for.body.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %i.0101 = phi i32 [ %inc7, %for.body.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %arrayidx = getelementptr i8, ptr %s, i32 %i.0101
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %3)
  %cmp3 = icmp eq i8 %3, 10
  %inc = zext i1 %cmp3 to i32
  %spec.select = add i32 %num_newlines.0102, %inc
  %inc7 = add nuw i32 %i.0101, 1
  %exitcond.not = icmp eq i32 %inc7, %count
  br i1 %exitcond.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  %num_newlines.0.lcssa = phi i32 [ 0, %entry.for.end_crit_edge ], [ %spec.select, %for.body.for.end_crit_edge ]
  %add = add i32 %num_newlines.0.lcssa, %count
  %sysrq = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 46
  %4 = ptrtoint ptr %sysrq to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %sysrq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool8.not = icmp eq i32 %5, 0
  br i1 %tobool8.not, label %if.else10, label %for.end.if.end16_crit_edge

for.end.if.end16_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end16

if.else10:                                        ; preds = %for.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @oops_in_progress to i32))
  %6 = load i32, ptr @oops_in_progress, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool11.not = icmp eq i32 %6, 0
  br i1 %tobool11.not, label %if.else13, label %if.then12

if.then12:                                        ; preds = %if.else10
  call void @__sanitizer_cov_trace_pc() #14
  %call.i = tail call i32 @_raw_spin_trylock(ptr noundef %port) #12
  br label %if.end16

if.else13:                                        ; preds = %if.else10
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @_raw_spin_lock(ptr noundef %port) #12
  br label %if.end16

if.end16:                                         ; preds = %if.else13, %if.then12, %for.end.if.end16_crit_edge
  %locked.0 = phi i32 [ %call.i, %if.then12 ], [ 1, %if.else13 ], [ 0, %for.end.if.end16_crit_edge ]
  br i1 %is_uartdm, label %if.then18, label %if.end16.if.end19_crit_edge

if.end16.if.end19_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end19

if.then18:                                        ; preds = %if.end16
  %membase.i.i.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 2
  br label %while.cond.i.i

while.cond.i.i:                                   ; preds = %if.end.i.i.while.cond.i.i_crit_edge, %if.then18
  %timeout.0.i.i = phi i32 [ 500000, %if.then18 ], [ %dec.i.i, %if.end.i.i.while.cond.i.i_crit_edge ]
  %7 = ptrtoint ptr %membase.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %membase.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %8, i32 8
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i) #12, !srcloc !102
  %10 = and i32 %9, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool.not.i.i = icmp eq i32 %10, 0
  br i1 %tobool.not.i.i, label %while.body.i.i, label %while.cond.i.i.msm_reset_dm_count.exit_crit_edge

while.cond.i.i.msm_reset_dm_count.exit_crit_edge: ; preds = %while.cond.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %msm_reset_dm_count.exit

while.body.i.i:                                   ; preds = %while.cond.i.i
  %11 = ptrtoint ptr %membase.i.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %membase.i.i.i, align 4
  %add.ptr.i10.i.i = getelementptr i8, ptr %12, i32 20
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i10.i.i) #12, !srcloc !102
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %13)
  %tobool3.not.i.i = icmp sgt i32 %13, -1
  br i1 %tobool3.not.i.i, label %if.end.i.i, label %while.body.i.i.msm_reset_dm_count.exit_crit_edge

while.body.i.i.msm_reset_dm_count.exit_crit_edge: ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %msm_reset_dm_count.exit

if.end.i.i:                                       ; preds = %while.body.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %14 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %14(i32 noundef 214748) #12
  %dec.i.i = add nsw i32 %timeout.0.i.i, -1
  %tobool4.not.i.i = icmp eq i32 %timeout.0.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end.i.i.msm_reset_dm_count.exit_crit_edge, label %if.end.i.i.while.cond.i.i_crit_edge

if.end.i.i.while.cond.i.i_crit_edge:              ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.cond.i.i

if.end.i.i.msm_reset_dm_count.exit_crit_edge:     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %msm_reset_dm_count.exit

msm_reset_dm_count.exit:                          ; preds = %if.end.i.i.msm_reset_dm_count.exit_crit_edge, %while.body.i.i.msm_reset_dm_count.exit_crit_edge, %while.cond.i.i.msm_reset_dm_count.exit_crit_edge
  %15 = ptrtoint ptr %membase.i.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %membase.i.i.i, align 4
  %add.ptr.i12.i.i = getelementptr i8, ptr %16, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i12.i.i, i32 196608) #12, !srcloc !103
  %17 = tail call i32 @llvm.bswap.i32(i32 %add) #12
  %18 = ptrtoint ptr %membase.i.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %membase.i.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %19, i32 64
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %17) #12, !srcloc !103
  %20 = ptrtoint ptr %membase.i.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %membase.i.i.i, align 4
  %add.ptr.i4.i = getelementptr i8, ptr %21, i32 64
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i4.i) #12, !srcloc !102
  br label %if.end19

if.end19:                                         ; preds = %msm_reset_dm_count.exit, %if.end16.if.end19_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add)
  %cmp20111.not = icmp eq i32 %add, 0
  br i1 %cmp20111.not, label %if.end19.while.end59_crit_edge, label %while.body.lr.ph

if.end19.while.end59_crit_edge:                   ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end59

while.body.lr.ph:                                 ; preds = %if.end19
  %membase.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 2
  br label %while.body

while.body:                                       ; preds = %while.end.while.body_crit_edge, %while.body.lr.ph
  %s.addr.0114 = phi ptr [ %s, %while.body.lr.ph ], [ %s.addr.1.lcssa, %while.end.while.body_crit_edge ]
  %replaced.0.off0113 = phi i1 [ false, %while.body.lr.ph ], [ %replaced.1.off0.lcssa, %while.end.while.body_crit_edge ]
  %i.1112 = phi i32 [ 0, %while.body.lr.ph ], [ %add58, %while.end.while.body_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buf) #12
  %23 = ptrtoint ptr %buf to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 0, ptr %buf, align 4
  %sub = sub i32 %add, %i.1112
  %24 = call i32 @llvm.umin.i32(i32 %sub, i32 4)
  %num_chars.0 = select i1 %is_uartdm, i32 %24, i32 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %num_chars.0)
  %cmp29103.not = icmp eq i32 %num_chars.0, 0
  br i1 %cmp29103.not, label %while.body.while.cond48.preheader_crit_edge, label %while.body.for.body31_crit_edge

while.body.for.body31_crit_edge:                  ; preds = %while.body
  br label %for.body31

while.body.while.cond48.preheader_crit_edge:      ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.cond48.preheader

while.cond48.preheader:                           ; preds = %if.end44.while.cond48.preheader_crit_edge, %while.body.while.cond48.preheader_crit_edge
  %replaced.1.off0.lcssa = phi i1 [ %replaced.0.off0113, %while.body.while.cond48.preheader_crit_edge ], [ %replaced.3.off0, %if.end44.while.cond48.preheader_crit_edge ]
  %s.addr.1.lcssa = phi ptr [ %s.addr.0114, %while.body.while.cond48.preheader_crit_edge ], [ %s.addr.2, %if.end44.while.cond48.preheader_crit_edge ]
  %25 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %membase.i, align 4
  %add.ptr.i109 = getelementptr i8, ptr %26, i32 8
  %27 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i109) #12, !srcloc !102
  %28 = and i32 %27, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool50.not110 = icmp eq i32 %28, 0
  br i1 %tobool50.not110, label %while.cond48.preheader.do.end_crit_edge, label %while.cond48.preheader.while.end_crit_edge

while.cond48.preheader.while.end_crit_edge:       ; preds = %while.cond48.preheader
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end

while.cond48.preheader.do.end_crit_edge:          ; preds = %while.cond48.preheader
  br label %do.end

for.body31:                                       ; preds = %if.end44.for.body31_crit_edge, %while.body.for.body31_crit_edge
  %s.addr.1106 = phi ptr [ %s.addr.2, %if.end44.for.body31_crit_edge ], [ %s.addr.0114, %while.body.for.body31_crit_edge ]
  %j.0105 = phi i32 [ %inc46, %if.end44.for.body31_crit_edge ], [ 0, %while.body.for.body31_crit_edge ]
  %replaced.1.off0104 = phi i1 [ %replaced.3.off0, %if.end44.for.body31_crit_edge ], [ %replaced.0.off0113, %while.body.for.body31_crit_edge ]
  %29 = ptrtoint ptr %s.addr.1106 to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %s.addr.1106, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %30)
  %cmp33 = icmp ne i8 %30, 10
  %brmerge = select i1 %cmp33, i1 true, i1 %replaced.1.off0104
  br i1 %brmerge, label %for.body31.if.end39_crit_edge, label %if.then36

for.body31.if.end39_crit_edge:                    ; preds = %for.body31
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end39

if.then36:                                        ; preds = %for.body31
  call void @__sanitizer_cov_trace_pc() #14
  %arrayidx37 = getelementptr [4 x i8], ptr %buf, i32 0, i32 %j.0105
  %31 = ptrtoint ptr %arrayidx37 to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 13, ptr %arrayidx37, align 1
  %inc38 = add nuw i32 %j.0105, 1
  br label %if.end39

if.end39:                                         ; preds = %if.then36, %for.body31.if.end39_crit_edge
  %replaced.2.off0 = phi i1 [ true, %if.then36 ], [ %replaced.1.off0104, %for.body31.if.end39_crit_edge ]
  %j.1 = phi i32 [ %inc38, %if.then36 ], [ %j.0105, %for.body31.if.end39_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %j.1, i32 %num_chars.0)
  %cmp40 = icmp ult i32 %j.1, %num_chars.0
  br i1 %cmp40, label %if.then42, label %if.end39.if.end44_crit_edge

if.end39.if.end44_crit_edge:                      ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end44

if.then42:                                        ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #14
  %arrayidx43 = getelementptr [4 x i8], ptr %buf, i32 0, i32 %j.1
  %32 = ptrtoint ptr %arrayidx43 to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 %30, ptr %arrayidx43, align 1
  %incdec.ptr = getelementptr i8, ptr %s.addr.1106, i32 1
  br label %if.end44

if.end44:                                         ; preds = %if.then42, %if.end39.if.end44_crit_edge
  %replaced.3.off0 = phi i1 [ false, %if.then42 ], [ %replaced.2.off0, %if.end39.if.end44_crit_edge ]
  %s.addr.2 = phi ptr [ %incdec.ptr, %if.then42 ], [ %s.addr.1106, %if.end39.if.end44_crit_edge ]
  %inc46 = add i32 %j.1, 1
  %cmp29 = icmp ult i32 %inc46, %num_chars.0
  br i1 %cmp29, label %if.end44.for.body31_crit_edge, label %if.end44.while.cond48.preheader_crit_edge

if.end44.while.cond48.preheader_crit_edge:        ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.cond48.preheader

if.end44.for.body31_crit_edge:                    ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body31

do.end:                                           ; preds = %do.end.do.end_crit_edge, %while.cond48.preheader.do.end_crit_edge
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !104
  call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #12, !srcloc !105
  %33 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %membase.i, align 4
  %add.ptr.i = getelementptr i8, ptr %34, i32 8
  %35 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #12, !srcloc !102
  %36 = and i32 %35, 67108864
  %tobool50.not = icmp eq i32 %36, 0
  br i1 %tobool50.not, label %do.end.do.end_crit_edge, label %do.end.while.end_crit_edge

do.end.while.end_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end

do.end.do.end_crit_edge:                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end

while.end:                                        ; preds = %do.end.while.end_crit_edge, %while.cond48.preheader.while.end_crit_edge
  call void @__raw_writesl(ptr noundef %add.ptr2, ptr noundef nonnull %buf, i32 noundef 1) #12
  %add58 = add i32 %num_chars.0, %i.1112
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf) #12
  %cmp20 = icmp ugt i32 %add, %add58
  br i1 %cmp20, label %while.end.while.body_crit_edge, label %while.end.while.end59_crit_edge

while.end.while.end59_crit_edge:                  ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end59

while.end.while.body_crit_edge:                   ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body

while.end59:                                      ; preds = %while.end.while.end59_crit_edge, %if.end19.while.end59_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %locked.0)
  %tobool60.not = icmp eq i32 %locked.0, 0
  br i1 %tobool60.not, label %while.end59.if.end63_crit_edge, label %if.then61

while.end59.if.end63_crit_edge:                   ; preds = %while.end59
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end63

if.then61:                                        ; preds = %while.end59
  call void @__sanitizer_cov_trace_pc() #14
  call void @_raw_spin_unlock(ptr noundef %port) #12
  br label %if.end63

if.end63:                                         ; preds = %if.then61, %while.end59.if.end63_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_trylock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_writesl(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @msm_serial_early_write_dm(ptr nocapture noundef readonly %con, ptr nocapture noundef readonly %s, i32 noundef %n) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %data = getelementptr inbounds %struct.console, ptr %con, i32 0, i32 13
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %port = getelementptr inbounds %struct.earlycon_device, ptr %1, i32 0, i32 1
  tail call fastcc void @__msm_console_write(ptr noundef %port, ptr noundef %s, i32 noundef %n, i1 noundef zeroext true)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @msm_serial_probe(ptr noundef %pdev) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %call = tail call i32 @of_alias_get_id(ptr noundef nonnull %1, ptr noundef nonnull @.str.1) #12
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %id3 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 1
  %2 = ptrtoint ptr %id3 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %id3, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %line.0 = phi i32 [ %call, %if.then ], [ %3, %if.else ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %line.0)
  %cmp = icmp slt i32 %line.0, 0
  br i1 %cmp, label %if.then4, label %if.end.if.end6_crit_edge

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end6

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull @msm_uart_next_id, i32 noundef 4) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !106
  tail call void @llvm.prefetch.p0(ptr nonnull @msm_uart_next_id, i32 1, i32 3, i32 1) #12
  %4 = tail call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @msm_uart_next_id, ptr nonnull @msm_uart_next_id, i32 1, ptr nonnull elementtype(i32) @msm_uart_next_id) #12, !srcloc !107
  %asmresult.i.i.i.i = extractvalue { i32, i32 } %4, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !108
  %sub = add i32 %asmresult.i.i.i.i, -1
  br label %if.end6

if.end6:                                          ; preds = %if.then4, %if.end.if.end6_crit_edge
  %line.1 = phi i32 [ %sub, %if.then4 ], [ %line.0, %if.end.if.end6_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %line.1)
  %cmp8 = icmp ugt i32 %line.1, 2
  br i1 %cmp8, label %if.end6.cleanup_crit_edge, label %do.end, !prof !109

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

do.end:                                           ; preds = %if.end6
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.2, i32 noundef %line.1) #15
  %arrayidx.i = getelementptr [3 x %struct.msm_port], ptr @msm_uart_ports, i32 0, i32 %line.1
  %dev16 = getelementptr inbounds %struct.uart_port, ptr %arrayidx.i, i32 0, i32 45
  %5 = ptrtoint ptr %dev16 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %dev, ptr %dev16, align 4
  %call18 = tail call ptr @of_match_device(ptr noundef nonnull @msm_uartdm_table, ptr noundef %dev) #12
  %tobool19.not = icmp eq ptr %call18, null
  br i1 %tobool19.not, label %do.end.if.end23_crit_edge, label %if.then20

do.end.if.end23_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end23

if.then20:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  %data = getelementptr inbounds %struct.of_device_id, ptr %call18, i32 0, i32 3
  %6 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %data, align 4
  %8 = ptrtoint ptr %7 to i32
  br label %if.end23

if.end23:                                         ; preds = %if.then20, %do.end.if.end23_crit_edge
  %.sink = phi i32 [ %8, %if.then20 ], [ 0, %do.end.if.end23_crit_edge ]
  %9 = getelementptr [3 x %struct.msm_port], ptr @msm_uart_ports, i32 0, i32 %line.1, i32 5
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %.sink, ptr %9, align 4
  %call25 = tail call ptr @devm_clk_get(ptr noundef %dev, ptr noundef nonnull @.str.7) #12
  %clk = getelementptr [3 x %struct.msm_port], ptr @msm_uart_ports, i32 0, i32 %line.1, i32 2
  %11 = ptrtoint ptr %clk to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call25, ptr %clk, align 4
  %cmp.i = icmp ugt ptr %call25, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then28, label %if.end31

if.then28:                                        ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #14
  %12 = ptrtoint ptr %call25 to i32
  br label %cleanup

if.end31:                                         ; preds = %if.end23
  %13 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %9, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool33.not = icmp eq i32 %14, 0
  br i1 %tobool33.not, label %if.end31.if.end43_crit_edge, label %if.then34

if.end31.if.end43_crit_edge:                      ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end43

if.then34:                                        ; preds = %if.end31
  %call36 = tail call ptr @devm_clk_get(ptr noundef %dev, ptr noundef nonnull @.str.8) #12
  %pclk = getelementptr [3 x %struct.msm_port], ptr @msm_uart_ports, i32 0, i32 %line.1, i32 3
  %15 = ptrtoint ptr %pclk to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call36, ptr %pclk, align 4
  %cmp.i115 = icmp ugt ptr %call36, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i115, label %if.then39, label %if.then34.if.end43_crit_edge

if.then34.if.end43_crit_edge:                     ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end43

if.then39:                                        ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #14
  %16 = ptrtoint ptr %call36 to i32
  br label %cleanup

if.end43:                                         ; preds = %if.then34.if.end43_crit_edge, %if.end31.if.end43_crit_edge
  %17 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %clk, align 4
  %call45 = tail call i32 @clk_get_rate(ptr noundef %18) #12
  %uartclk = getelementptr inbounds %struct.uart_port, ptr %arrayidx.i, i32 0, i32 22
  %19 = ptrtoint ptr %uartclk to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %call45, ptr %uartclk, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.10, i32 noundef %call45) #15
  %call51 = tail call ptr @platform_get_resource(ptr noundef %pdev, i32 noundef 512, i32 noundef 0) #12
  %tobool52.not = icmp eq ptr %call51, null
  br i1 %tobool52.not, label %if.end43.cleanup_crit_edge, label %if.end62, !prof !109

if.end43.cleanup_crit_edge:                       ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end62:                                         ; preds = %if.end43
  %20 = ptrtoint ptr %call51 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %call51, align 4
  %mapbase = getelementptr inbounds %struct.uart_port, ptr %arrayidx.i, i32 0, i32 43
  %22 = ptrtoint ptr %mapbase to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %mapbase, align 4
  %call63 = tail call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 0) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call63)
  %cmp64 = icmp slt i32 %call63, 0
  br i1 %cmp64, label %if.end62.cleanup_crit_edge, label %if.end72, !prof !109

if.end62.cleanup_crit_edge:                       ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end72:                                         ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #14
  %irq73 = getelementptr inbounds %struct.uart_port, ptr %arrayidx.i, i32 0, i32 20
  %23 = ptrtoint ptr %irq73 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %call63, ptr %irq73, align 4
  %has_sysrq = getelementptr inbounds %struct.uart_port, ptr %arrayidx.i, i32 0, i32 48
  %24 = ptrtoint ptr %has_sysrq to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 1, ptr %has_sysrq, align 4
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %25 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %arrayidx.i, ptr %driver_data.i.i, align 4
  %call74 = tail call i32 @uart_add_one_port(ptr noundef nonnull @msm_uart_driver, ptr noundef %arrayidx.i) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end72, %if.end62.cleanup_crit_edge, %if.end43.cleanup_crit_edge, %if.then39, %if.then28, %if.end6.cleanup_crit_edge
  %retval.0 = phi i32 [ %12, %if.then28 ], [ %16, %if.then39 ], [ %call74, %if.end72 ], [ -6, %if.end6.cleanup_crit_edge ], [ -6, %if.end43.cleanup_crit_edge ], [ -6, %if.end62.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @msm_serial_remove(ptr nocapture noundef readonly %pdev) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %call1 = tail call i32 @uart_remove_one_port(ptr noundef nonnull @msm_uart_driver, ptr noundef %1) #12
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_alias_get_id(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_match_device(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @uart_add_one_port(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #7

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @msm_tx_empty(ptr nocapture noundef readonly %port) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %membase.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 2
  %0 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %membase.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 8
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #12, !srcloc !102
  %3 = lshr i32 %2, 27
  %and.lobit = and i32 %3, 1
  ret i32 %and.lobit
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @msm_set_mctrl(ptr nocapture noundef readonly %port, i32 noundef %mctrl) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %membase.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 2
  %0 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %membase.i, align 4
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1) #12, !srcloc !102
  %3 = tail call i32 @llvm.bswap.i32(i32 %2) #12
  %and = and i32 %mctrl, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %and1 = and i32 %3, -129
  %4 = tail call i32 @llvm.bswap.i32(i32 %and1) #12
  %5 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %membase.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %6, i32 %4) #12, !srcloc !103
  %7 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %membase.i, align 4
  %add.ptr.i = getelementptr i8, ptr %8, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 -536870912) #12, !srcloc !103
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %or = or i32 %3, 128
  %9 = tail call i32 @llvm.bswap.i32(i32 %or) #12
  %10 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %membase.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %11, i32 %9) #12, !srcloc !103
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @msm_get_mctrl(ptr nocapture noundef readnone %port) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 356
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @msm_stop_tx(ptr nocapture noundef %port) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %imr = getelementptr inbounds %struct.msm_port, ptr %port, i32 0, i32 4
  %0 = ptrtoint ptr %imr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %imr, align 4
  %and = and i32 %1, -2
  store i32 %and, ptr %imr, align 4
  %2 = tail call i32 @llvm.bswap.i32(i32 %and) #12
  %membase.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 2
  %3 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %membase.i, align 4
  %add.ptr.i = getelementptr i8, ptr %4, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %2) #12, !srcloc !103
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @msm_start_tx(ptr nocapture noundef %port) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %count = getelementptr inbounds %struct.msm_port, ptr %port, i32 0, i32 8, i32 6
  %0 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %imr = getelementptr inbounds %struct.msm_port, ptr %port, i32 0, i32 4
  %2 = ptrtoint ptr %imr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %imr, align 4
  %or = or i32 %3, 1
  store i32 %or, ptr %imr, align 4
  %4 = tail call i32 @llvm.bswap.i32(i32 %or) #12
  %membase.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 2
  %5 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %membase.i, align 4
  %add.ptr.i = getelementptr i8, ptr %6, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %4) #12, !srcloc !103
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @msm_stop_rx(ptr nocapture noundef %port) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %rx_dma = getelementptr inbounds %struct.msm_port, ptr %port, i32 0, i32 9
  %imr = getelementptr inbounds %struct.msm_port, ptr %port, i32 0, i32 4
  %0 = ptrtoint ptr %imr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %imr, align 4
  %and = and i32 %1, -25
  store i32 %and, ptr %imr, align 4
  %2 = tail call i32 @llvm.bswap.i32(i32 %and) #12
  %membase.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 2
  %3 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %membase.i, align 4
  %add.ptr.i = getelementptr i8, ptr %4, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %2) #12, !srcloc !103
  %5 = ptrtoint ptr %rx_dma to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %rx_dma, align 4
  %tobool.not = icmp eq ptr %6, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %entry
  %dev1.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 45
  %7 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev1.i, align 4
  %count.i = getelementptr inbounds %struct.msm_port, ptr %port, i32 0, i32 9, i32 6
  %9 = ptrtoint ptr %count.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %count.i, align 4
  store i32 0, ptr %count.i, align 4
  %11 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %6, align 4
  %device_terminate_all.i.i = getelementptr inbounds %struct.dma_device, ptr %12, i32 0, i32 47
  %13 = ptrtoint ptr %device_terminate_all.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %device_terminate_all.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %14, null
  br i1 %tobool.not.i.i, label %if.then.dmaengine_terminate_all.exit.i_crit_edge, label %if.then.i.i

if.then.dmaengine_terminate_all.exit.i_crit_edge: ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %dmaengine_terminate_all.exit.i

if.then.i.i:                                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  %call.i.i = tail call i32 %14(ptr noundef nonnull %6) #12
  br label %dmaengine_terminate_all.exit.i

dmaengine_terminate_all.exit.i:                   ; preds = %if.then.i.i, %if.then.dmaengine_terminate_all.exit.i_crit_edge
  %15 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %membase.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %16, i32 60
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #12, !srcloc !102
  %18 = tail call i32 @llvm.bswap.i32(i32 %17) #12
  %enable_bit.i = getelementptr inbounds %struct.msm_port, ptr %port, i32 0, i32 9, i32 5
  %19 = ptrtoint ptr %enable_bit.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %enable_bit.i, align 4
  %neg.i = xor i32 %20, -1
  %and.i = and i32 %18, %neg.i
  %21 = tail call i32 @llvm.bswap.i32(i32 %and.i) #12
  %22 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %membase.i, align 4
  %add.ptr.i14.i = getelementptr i8, ptr %23, i32 60
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i14.i, i32 %21) #12, !srcloc !103
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool.not.i = icmp eq i32 %10, 0
  br i1 %tobool.not.i, label %dmaengine_terminate_all.exit.i.if.end_crit_edge, label %if.then.i

dmaengine_terminate_all.exit.i.if.end_crit_edge:  ; preds = %dmaengine_terminate_all.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then.i:                                        ; preds = %dmaengine_terminate_all.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  %phys.i = getelementptr inbounds %struct.msm_port, ptr %port, i32 0, i32 9, i32 2
  %24 = ptrtoint ptr %phys.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %phys.i, align 4
  %dir.i = getelementptr inbounds %struct.msm_port, ptr %port, i32 0, i32 9, i32 1
  %26 = ptrtoint ptr %dir.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %dir.i, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %8, i32 noundef %25, i32 noundef %10, i32 noundef %27, i32 noundef 0) #12
  br label %if.end

if.end:                                           ; preds = %if.then.i, %dmaengine_terminate_all.exit.i.if.end_crit_edge, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @msm_enable_ms(ptr nocapture noundef %port) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %imr = getelementptr inbounds %struct.msm_port, ptr %port, i32 0, i32 4
  %0 = ptrtoint ptr %imr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %imr, align 4
  %or = or i32 %1, 32
  store i32 %or, ptr %imr, align 4
  %2 = tail call i32 @llvm.bswap.i32(i32 %or) #12
  %membase.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 2
  %3 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %membase.i, align 4
  %add.ptr.i = getelementptr i8, ptr %4, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %2) #12, !srcloc !103
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @msm_break_ctl(ptr nocapture noundef readonly %port, i32 noundef %break_ctl) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %break_ctl)
  %tobool.not = icmp eq i32 %break_ctl, 0
  %membase.i2 = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 2
  %0 = ptrtoint ptr %membase.i2 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %membase.i2, align 4
  %add.ptr.i3 = getelementptr i8, ptr %1, i32 16
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i3, i32 1342177280) #12, !srcloc !103
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i3, i32 1610612736) #12, !srcloc !103
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @msm_startup(ptr noundef %port) #3 align 64 {
entry:
  %conf.i67 = alloca %struct.dma_slave_config, align 4
  %periph_conf.i68 = alloca %struct.qcom_adm_peripheral_config, align 8
  %crci.i69 = alloca i32, align 4
  %conf.i = alloca %struct.dma_slave_config, align 4
  %periph_conf.i = alloca %struct.qcom_adm_peripheral_config, align 8
  %crci.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %name = getelementptr inbounds %struct.msm_port, ptr %port, i32 0, i32 1
  %line = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 41
  %0 = ptrtoint ptr %line to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %line, align 4
  %call = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %name, i32 noundef 16, ptr noundef nonnull @.str.12, i32 noundef %1)
  tail call fastcc void @msm_init_clock(ptr noundef %port)
  %fifosize = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 23
  %2 = ptrtoint ptr %fifosize to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %fifosize, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %3)
  %cmp = icmp ugt i32 %3, 12
  %sub = add i32 %3, -12
  %rfr_level.0 = select i1 %cmp, i32 %sub, i32 %3, !prof !101
  %membase.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 2
  %4 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %membase.i, align 4
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %5) #12, !srcloc !102
  %is_uartdm = getelementptr inbounds %struct.msm_port, ptr %port, i32 0, i32 5
  %7 = ptrtoint ptr %is_uartdm to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %is_uartdm, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool5.not = icmp eq i32 %8, 0
  %mask.0 = select i1 %tobool5.not, i32 261888, i32 -256
  %neg = xor i32 %mask.0, -1
  %9 = and i32 %6, -1073677057
  %10 = call i32 @llvm.bswap.i32(i32 %9)
  %and9 = and i32 %10, %neg
  %shl = shl i32 %rfr_level.0, 2
  %and10 = and i32 %mask.0, %shl
  %and11 = and i32 %rfr_level.0, 63
  %or = or i32 %and10, %and11
  %or12 = or i32 %or, %and9
  %11 = tail call i32 @llvm.bswap.i32(i32 %or12) #12
  %12 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %membase.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %13, i32 %11) #12, !srcloc !103
  %14 = ptrtoint ptr %is_uartdm to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %is_uartdm, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool14.not = icmp eq i32 %15, 0
  br i1 %tobool14.not, label %entry.if.end18_crit_edge, label %if.then15

entry.if.end18_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end18

if.then15:                                        ; preds = %entry
  %mapbase = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 43
  %16 = ptrtoint ptr %mapbase to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %mapbase, align 4
  %dev1.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 45
  %18 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev1.i, align 4
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %conf.i) #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %periph_conf.i) #12
  %20 = ptrtoint ptr %periph_conf.i to i32
  call void @__asan_store8_noabort(i32 %20)
  store i64 0, ptr %periph_conf.i, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %crci.i) #12
  %21 = ptrtoint ptr %crci.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 0, ptr %crci.i, align 4
  %tx_dma.i = getelementptr inbounds %struct.msm_port, ptr %port, i32 0, i32 8
  %call.i = tail call ptr @dma_request_chan(ptr noundef %19, ptr noundef nonnull @.str.13) #12
  %22 = ptrtoint ptr %tx_dma.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %call.i, ptr %tx_dma.i, align 4
  %cmp.i.i = icmp ugt ptr %call.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.then15.no_tx.i_crit_edge, label %if.end.i

if.then15.no_tx.i_crit_edge:                      ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #14
  br label %no_tx.i

if.end.i:                                         ; preds = %if.then15
  %of_node.i = getelementptr inbounds %struct.device, ptr %19, i32 0, i32 27
  %23 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %of_node.i, align 8
  %call.i.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef %24, ptr noundef nonnull @.str.14, ptr noundef nonnull %crci.i, i32 noundef 1, i32 noundef 0) #12
  %25 = getelementptr inbounds i8, ptr %conf.i, i32 4
  %26 = call ptr @memset(ptr %25, i32 0, i32 44)
  %27 = ptrtoint ptr %conf.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 1, ptr %conf.i, align 4
  %device_fc.i = getelementptr inbounds %struct.dma_slave_config, ptr %conf.i, i32 0, i32 9
  %28 = ptrtoint ptr %device_fc.i to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 1, ptr %device_fc.i, align 4
  %add.i = add i32 %17, 112
  %dst_addr.i = getelementptr inbounds %struct.dma_slave_config, ptr %conf.i, i32 0, i32 2
  %29 = ptrtoint ptr %dst_addr.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %add.i, ptr %dst_addr.i, align 4
  %dst_maxburst.i = getelementptr inbounds %struct.dma_slave_config, ptr %conf.i, i32 0, i32 6
  %30 = ptrtoint ptr %dst_maxburst.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 16, ptr %dst_maxburst.i, align 4
  %31 = ptrtoint ptr %crci.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %crci.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %tobool.not.i = icmp eq i32 %32, 0
  br i1 %tobool.not.i, label %if.end.i.if.end7.i_crit_edge, label %if.then5.i

if.end.i.if.end7.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end7.i

if.then5.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  %peripheral_config.i = getelementptr inbounds %struct.dma_slave_config, ptr %conf.i, i32 0, i32 10
  %33 = ptrtoint ptr %peripheral_config.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %periph_conf.i, ptr %peripheral_config.i, align 4
  %peripheral_size.i = getelementptr inbounds %struct.dma_slave_config, ptr %conf.i, i32 0, i32 11
  %34 = ptrtoint ptr %peripheral_size.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 8, ptr %peripheral_size.i, align 4
  %35 = ptrtoint ptr %periph_conf.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %32, ptr %periph_conf.i, align 8
  br label %if.end7.i

if.end7.i:                                        ; preds = %if.then5.i, %if.end.i.if.end7.i_crit_edge
  %36 = ptrtoint ptr %tx_dma.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %tx_dma.i, align 4
  %38 = ptrtoint ptr %37 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %37, align 4
  %device_config.i.i = getelementptr inbounds %struct.dma_device, ptr %39, i32 0, i32 44
  %40 = ptrtoint ptr %device_config.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %device_config.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %41, null
  br i1 %tobool.not.i.i, label %if.end7.i.rel_tx.i_crit_edge, label %dmaengine_slave_config.exit.i

if.end7.i.rel_tx.i_crit_edge:                     ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rel_tx.i

dmaengine_slave_config.exit.i:                    ; preds = %if.end7.i
  %call.i.i = call i32 %41(ptr noundef %37, ptr noundef nonnull %conf.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool10.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool10.not.i, label %if.end12.i, label %dmaengine_slave_config.exit.i.rel_tx.i_crit_edge

dmaengine_slave_config.exit.i.rel_tx.i_crit_edge: ; preds = %dmaengine_slave_config.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rel_tx.i

if.end12.i:                                       ; preds = %dmaengine_slave_config.exit.i
  %dir.i = getelementptr inbounds %struct.msm_port, ptr %port, i32 0, i32 8, i32 1
  %42 = ptrtoint ptr %dir.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 1, ptr %dir.i, align 4
  %43 = ptrtoint ptr %is_uartdm to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %is_uartdm, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %44)
  %cmp.i = icmp slt i32 %44, 4
  %enable_bit.i = getelementptr inbounds %struct.msm_port, ptr %port, i32 0, i32 8, i32 5
  br i1 %cmp.i, label %if.then13.i, label %if.else.i

if.then13.i:                                      ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #14
  %45 = ptrtoint ptr %enable_bit.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 1, ptr %enable_bit.i, align 4
  br label %msm_request_tx_dma.exit

if.else.i:                                        ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #14
  %46 = ptrtoint ptr %enable_bit.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 4, ptr %enable_bit.i, align 4
  br label %msm_request_tx_dma.exit

rel_tx.i:                                         ; preds = %dmaengine_slave_config.exit.i.rel_tx.i_crit_edge, %if.end7.i.rel_tx.i_crit_edge
  %47 = ptrtoint ptr %tx_dma.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %tx_dma.i, align 4
  call void @dma_release_channel(ptr noundef %48) #12
  br label %no_tx.i

no_tx.i:                                          ; preds = %rel_tx.i, %if.then15.no_tx.i_crit_edge
  %49 = call ptr @memset(ptr %tx_dma.i, i32 0, i32 32)
  br label %msm_request_tx_dma.exit

msm_request_tx_dma.exit:                          ; preds = %no_tx.i, %if.else.i, %if.then13.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %crci.i) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %periph_conf.i) #12
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %conf.i) #12
  %50 = ptrtoint ptr %mapbase to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %mapbase, align 4
  %52 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %dev1.i, align 4
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %conf.i67) #12
  %54 = call ptr @memset(ptr %conf.i67, i32 255, i32 48)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %periph_conf.i68) #12
  %55 = ptrtoint ptr %periph_conf.i68 to i32
  call void @__asan_store8_noabort(i32 %55)
  store i64 0, ptr %periph_conf.i68, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %crci.i69) #12
  %56 = ptrtoint ptr %crci.i69 to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 0, ptr %crci.i69, align 4
  %rx_dma.i = getelementptr inbounds %struct.msm_port, ptr %port, i32 0, i32 9
  %call.i71 = call ptr @dma_request_chan(ptr noundef %53, ptr noundef nonnull @.str.15) #12
  %57 = ptrtoint ptr %rx_dma.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr %call.i71, ptr %rx_dma.i, align 4
  %cmp.i.i72 = icmp ugt ptr %call.i71, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i72, label %msm_request_tx_dma.exit.no_rx.i_crit_edge, label %if.end.i76

msm_request_tx_dma.exit.no_rx.i_crit_edge:        ; preds = %msm_request_tx_dma.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %no_rx.i

if.end.i76:                                       ; preds = %msm_request_tx_dma.exit
  %of_node.i73 = getelementptr inbounds %struct.device, ptr %53, i32 0, i32 27
  %58 = ptrtoint ptr %of_node.i73 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %of_node.i73, align 8
  %call.i.i.i74 = call i32 @of_property_read_variable_u32_array(ptr noundef %59, ptr noundef nonnull @.str.16, ptr noundef nonnull %crci.i69, i32 noundef 1, i32 noundef 0) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10) to i32))
  %60 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %call7.i.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %60, i32 noundef 3520, i32 noundef 1024) #16
  %virt.i = getelementptr inbounds %struct.msm_port, ptr %port, i32 0, i32 9, i32 3
  %61 = ptrtoint ptr %virt.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr %call7.i.i.i, ptr %virt.i, align 4
  %tobool.not.i75 = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i75, label %if.end.i76.rel_rx.i_crit_edge, label %if.end8.i

if.end.i76.rel_rx.i_crit_edge:                    ; preds = %if.end.i76
  call void @__sanitizer_cov_trace_pc() #14
  br label %rel_rx.i

if.end8.i:                                        ; preds = %if.end.i76
  %62 = getelementptr inbounds i8, ptr %conf.i67, i32 8
  %63 = call ptr @memset(ptr %62, i32 0, i32 40)
  %64 = ptrtoint ptr %conf.i67 to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 2, ptr %conf.i67, align 4
  %device_fc.i77 = getelementptr inbounds %struct.dma_slave_config, ptr %conf.i67, i32 0, i32 9
  %65 = ptrtoint ptr %device_fc.i77 to i32
  call void @__asan_store1_noabort(i32 %65)
  store i8 1, ptr %device_fc.i77, align 4
  %add.i78 = add i32 %51, 112
  %src_addr.i = getelementptr inbounds %struct.dma_slave_config, ptr %conf.i67, i32 0, i32 1
  %66 = ptrtoint ptr %src_addr.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 %add.i78, ptr %src_addr.i, align 4
  %src_maxburst.i = getelementptr inbounds %struct.dma_slave_config, ptr %conf.i67, i32 0, i32 5
  %67 = ptrtoint ptr %src_maxburst.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 16, ptr %src_maxburst.i, align 4
  %68 = ptrtoint ptr %crci.i69 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %crci.i69, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %69)
  %tobool9.not.i = icmp eq i32 %69, 0
  br i1 %tobool9.not.i, label %if.end8.i.if.end12.i83_crit_edge, label %if.then10.i

if.end8.i.if.end12.i83_crit_edge:                 ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end12.i83

if.then10.i:                                      ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #14
  %peripheral_config.i79 = getelementptr inbounds %struct.dma_slave_config, ptr %conf.i67, i32 0, i32 10
  %70 = ptrtoint ptr %peripheral_config.i79 to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr %periph_conf.i68, ptr %peripheral_config.i79, align 4
  %peripheral_size.i80 = getelementptr inbounds %struct.dma_slave_config, ptr %conf.i67, i32 0, i32 11
  %71 = ptrtoint ptr %peripheral_size.i80 to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 8, ptr %peripheral_size.i80, align 4
  %72 = ptrtoint ptr %periph_conf.i68 to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 %69, ptr %periph_conf.i68, align 8
  br label %if.end12.i83

if.end12.i83:                                     ; preds = %if.then10.i, %if.end8.i.if.end12.i83_crit_edge
  %73 = ptrtoint ptr %rx_dma.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %rx_dma.i, align 4
  %75 = ptrtoint ptr %74 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %74, align 4
  %device_config.i.i81 = getelementptr inbounds %struct.dma_device, ptr %76, i32 0, i32 44
  %77 = ptrtoint ptr %device_config.i.i81 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %device_config.i.i81, align 4
  %tobool.not.i.i82 = icmp eq ptr %78, null
  br i1 %tobool.not.i.i82, label %if.end12.i83.err.i_crit_edge, label %dmaengine_slave_config.exit.i85

if.end12.i83.err.i_crit_edge:                     ; preds = %if.end12.i83
  call void @__sanitizer_cov_trace_pc() #14
  br label %err.i

dmaengine_slave_config.exit.i85:                  ; preds = %if.end12.i83
  %call.i.i84 = call i32 %78(ptr noundef %74, ptr noundef nonnull %conf.i67) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i84)
  %tobool15.not.i = icmp eq i32 %call.i.i84, 0
  br i1 %tobool15.not.i, label %if.end17.i, label %dmaengine_slave_config.exit.i85.err.i_crit_edge

dmaengine_slave_config.exit.i85.err.i_crit_edge:  ; preds = %dmaengine_slave_config.exit.i85
  call void @__sanitizer_cov_trace_pc() #14
  br label %err.i

if.end17.i:                                       ; preds = %dmaengine_slave_config.exit.i85
  %dir.i86 = getelementptr inbounds %struct.msm_port, ptr %port, i32 0, i32 9, i32 1
  %79 = ptrtoint ptr %dir.i86 to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 2, ptr %dir.i86, align 4
  %80 = ptrtoint ptr %is_uartdm to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %is_uartdm, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %81)
  %cmp.i88 = icmp slt i32 %81, 4
  %enable_bit.i89 = getelementptr inbounds %struct.msm_port, ptr %port, i32 0, i32 9, i32 5
  br i1 %cmp.i88, label %if.then18.i, label %if.else.i90

if.then18.i:                                      ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #14
  %82 = ptrtoint ptr %enable_bit.i89 to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 2, ptr %enable_bit.i89, align 4
  br label %msm_request_rx_dma.exit

if.else.i90:                                      ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #14
  %83 = ptrtoint ptr %enable_bit.i89 to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 8, ptr %enable_bit.i89, align 4
  br label %msm_request_rx_dma.exit

err.i:                                            ; preds = %dmaengine_slave_config.exit.i85.err.i_crit_edge, %if.end12.i83.err.i_crit_edge
  %84 = ptrtoint ptr %virt.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %virt.i, align 4
  call void @kfree(ptr noundef %85) #12
  br label %rel_rx.i

rel_rx.i:                                         ; preds = %err.i, %if.end.i76.rel_rx.i_crit_edge
  %86 = ptrtoint ptr %rx_dma.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %rx_dma.i, align 4
  call void @dma_release_channel(ptr noundef %87) #12
  br label %no_rx.i

no_rx.i:                                          ; preds = %rel_rx.i, %msm_request_tx_dma.exit.no_rx.i_crit_edge
  %88 = call ptr @memset(ptr %rx_dma.i, i32 0, i32 32)
  br label %msm_request_rx_dma.exit

msm_request_rx_dma.exit:                          ; preds = %no_rx.i, %if.else.i90, %if.then18.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %crci.i69) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %periph_conf.i68) #12
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %conf.i67) #12
  br label %if.end18

if.end18:                                         ; preds = %msm_request_rx_dma.exit, %entry.if.end18_crit_edge
  %irq = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 20
  %89 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %irq, align 4
  %call.i91 = call i32 @request_threaded_irq(i32 noundef %90, ptr noundef nonnull @msm_uart_irq, ptr noundef null, i32 noundef 4, ptr noundef %name, ptr noundef %port) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i91)
  %tobool22.not = icmp eq i32 %call.i91, 0
  br i1 %tobool22.not, label %if.end18.cleanup_crit_edge, label %err_irq, !prof !101

if.end18.cleanup_crit_edge:                       ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

err_irq:                                          ; preds = %if.end18
  %91 = ptrtoint ptr %is_uartdm to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %is_uartdm, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %92)
  %tobool32.not = icmp eq i32 %92, 0
  br i1 %tobool32.not, label %err_irq.if.end34_crit_edge, label %if.then33

err_irq.if.end34_crit_edge:                       ; preds = %err_irq
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end34

if.then33:                                        ; preds = %err_irq
  call void @__sanitizer_cov_trace_pc() #14
  call fastcc void @msm_release_dma(ptr noundef %port)
  br label %if.end34

if.end34:                                         ; preds = %if.then33, %err_irq.if.end34_crit_edge
  %pclk = getelementptr inbounds %struct.msm_port, ptr %port, i32 0, i32 3
  %93 = ptrtoint ptr %pclk to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %pclk, align 4
  call void @clk_disable(ptr noundef %94) #12
  call void @clk_unprepare(ptr noundef %94) #12
  %clk = getelementptr inbounds %struct.msm_port, ptr %port, i32 0, i32 2
  %95 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %clk, align 4
  call void @clk_disable(ptr noundef %96) #12
  call void @clk_unprepare(ptr noundef %96) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end34, %if.end18.cleanup_crit_edge
  ret i32 %call.i91
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @msm_shutdown(ptr noundef %port) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %imr = getelementptr inbounds %struct.msm_port, ptr %port, i32 0, i32 4
  %0 = ptrtoint ptr %imr to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %imr, align 4
  %membase.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 2
  %1 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %membase.i, align 4
  %add.ptr.i = getelementptr i8, ptr %2, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 0) #12, !srcloc !103
  %is_uartdm = getelementptr inbounds %struct.msm_port, ptr %port, i32 0, i32 5
  %3 = ptrtoint ptr %is_uartdm to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %is_uartdm, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not = icmp eq i32 %4, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call fastcc void @msm_release_dma(ptr noundef %port)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %clk = getelementptr inbounds %struct.msm_port, ptr %port, i32 0, i32 2
  %5 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %clk, align 4
  tail call void @clk_disable(ptr noundef %6) #12
  tail call void @clk_unprepare(ptr noundef %6) #12
  %irq = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 20
  %7 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %irq, align 4
  %call = tail call ptr @free_irq(i32 noundef %8, ptr noundef %port) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @msm_set_termios(ptr noundef %port, ptr noundef %termios, ptr noundef %old) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %rx_dma = getelementptr inbounds %struct.msm_port, ptr %port, i32 0, i32 9
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %port) #12
  %0 = ptrtoint ptr %rx_dma to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rx_dma, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %entry
  %dev1.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 45
  %2 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev1.i, align 4
  %count.i = getelementptr inbounds %struct.msm_port, ptr %port, i32 0, i32 9, i32 6
  %4 = ptrtoint ptr %count.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %count.i, align 4
  store i32 0, ptr %count.i, align 4
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 4
  %device_terminate_all.i.i = getelementptr inbounds %struct.dma_device, ptr %7, i32 0, i32 47
  %8 = ptrtoint ptr %device_terminate_all.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %device_terminate_all.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %9, null
  br i1 %tobool.not.i.i, label %if.then.dmaengine_terminate_all.exit.i_crit_edge, label %if.then.i.i

if.then.dmaengine_terminate_all.exit.i_crit_edge: ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %dmaengine_terminate_all.exit.i

if.then.i.i:                                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  %call.i.i = tail call i32 %9(ptr noundef nonnull %1) #12
  br label %dmaengine_terminate_all.exit.i

dmaengine_terminate_all.exit.i:                   ; preds = %if.then.i.i, %if.then.dmaengine_terminate_all.exit.i_crit_edge
  %membase.i.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 2
  %10 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %membase.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %11, i32 60
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #12, !srcloc !102
  %13 = tail call i32 @llvm.bswap.i32(i32 %12) #12
  %enable_bit.i = getelementptr inbounds %struct.msm_port, ptr %port, i32 0, i32 9, i32 5
  %14 = ptrtoint ptr %enable_bit.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %enable_bit.i, align 4
  %neg.i = xor i32 %15, -1
  %and.i = and i32 %13, %neg.i
  %16 = tail call i32 @llvm.bswap.i32(i32 %and.i) #12
  %17 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %membase.i.i, align 4
  %add.ptr.i14.i = getelementptr i8, ptr %18, i32 60
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i14.i, i32 %16) #12, !srcloc !103
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not.i = icmp eq i32 %5, 0
  br i1 %tobool.not.i, label %dmaengine_terminate_all.exit.i.if.end_crit_edge, label %if.then.i

dmaengine_terminate_all.exit.i.if.end_crit_edge:  ; preds = %dmaengine_terminate_all.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then.i:                                        ; preds = %dmaengine_terminate_all.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  %phys.i = getelementptr inbounds %struct.msm_port, ptr %port, i32 0, i32 9, i32 2
  %19 = ptrtoint ptr %phys.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %phys.i, align 4
  %dir.i = getelementptr inbounds %struct.msm_port, ptr %port, i32 0, i32 9, i32 1
  %21 = ptrtoint ptr %dir.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %dir.i, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %3, i32 noundef %20, i32 noundef %5, i32 noundef %22, i32 noundef 0) #12
  br label %if.end

if.end:                                           ; preds = %if.then.i, %dmaengine_terminate_all.exit.i.if.end_crit_edge, %entry.if.end_crit_edge
  %call6 = tail call i32 @uart_get_baud_rate(ptr noundef %port, ptr noundef %termios, ptr noundef %old, i32 noundef 300, i32 noundef 4000000) #12
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %port, i32 noundef %call3) #12
  %clk.i.i = getelementptr inbounds %struct.msm_port, ptr %port, i32 0, i32 2
  %23 = ptrtoint ptr %clk.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %clk.i.i, align 4
  %mul.i.i = shl i32 %call6, 4
  %call.i.i118 = tail call i32 @clk_round_rate(ptr noundef %24, i32 noundef %mul.i.i) #12
  %div68.i.i = lshr exact i32 %mul.i.i, 1
  %add.i.i = add i32 %call.i.i118, %div68.i.i
  %div4.i.i = udiv i32 %add.i.i, %mul.i.i
  br label %while.body.lr.ph.i.i

while.body.lr.ph.i.i:                             ; preds = %if.end44.i.i.while.body.lr.ph.i.i_crit_edge, %if.end
  %divisor.0.ph90.i.i = phi i32 [ %div4.i.i, %if.end ], [ %divisor.079.i.lcssa.i, %if.end44.i.i.while.body.lr.ph.i.i_crit_edge ]
  %target.0.ph89.i.i = phi i32 [ %call.i.i118, %if.end ], [ %target.078.i.lcssa.i, %if.end44.i.i.while.body.lr.ph.i.i_crit_edge ]
  %best_rate.0.ph88.i.i = phi i32 [ 0, %if.end ], [ %best_rate.1.i.i, %if.end44.i.i.while.body.lr.ph.i.i_crit_edge ]
  %best.0.ph87.i.i = phi ptr [ @msm_find_best_baud.table, %if.end ], [ %best.1.i.i, %if.end44.i.i.while.body.lr.ph.i.i_crit_edge ]
  %entry1.0.ph86.i.i = phi ptr [ @msm_find_best_baud.table, %if.end ], [ %incdec.ptr.i.i, %if.end44.i.i.while.body.lr.ph.i.i_crit_edge ]
  %best_diff.0.ph85.i.i = phi i32 [ -1, %if.end ], [ %30, %if.end44.i.i.while.body.lr.ph.i.i_crit_edge ]
  %25 = ptrtoint ptr %entry1.0.ph86.i.i to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %entry1.0.ph86.i.i, align 2
  %conv.i82.i = zext i16 %26 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %divisor.0.ph90.i.i, i32 %conv.i82.i)
  %cmp6.not.i83.i = icmp ult i32 %divisor.0.ph90.i.i, %conv.i82.i
  br i1 %cmp6.not.i83.i, label %while.body.lr.ph.i.i.if.then28.i.i_crit_edge, label %while.body.lr.ph.i.i.if.then.i.i119_crit_edge

while.body.lr.ph.i.i.if.then.i.i119_crit_edge:    ; preds = %while.body.lr.ph.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then.i.i119

while.body.lr.ph.i.i.if.then28.i.i_crit_edge:     ; preds = %while.body.lr.ph.i.i
  br label %if.then28.i.i

if.then.i.loopexit.i:                             ; preds = %if.end35.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %div42.i.i = udiv i32 %add41.i.i, %mul.i.i
  br label %if.then.i.i119

if.then.i.i119:                                   ; preds = %if.then.i.loopexit.i, %while.body.lr.ph.i.i.if.then.i.i119_crit_edge
  %.lcssa.i = phi i16 [ %26, %while.body.lr.ph.i.i.if.then.i.i119_crit_edge ], [ 1, %if.then.i.loopexit.i ]
  %divisor.079.i.lcssa.i = phi i32 [ %divisor.0.ph90.i.i, %while.body.lr.ph.i.i.if.then.i.i119_crit_edge ], [ %div42.i.i, %if.then.i.loopexit.i ]
  %target.078.i.lcssa.i = phi i32 [ %target.0.ph89.i.i, %while.body.lr.ph.i.i.if.then.i.i119_crit_edge ], [ %call31.i.i, %if.then.i.loopexit.i ]
  %entry1.077.i.lcssa.i = phi ptr [ %entry1.0.ph86.i.i, %while.body.lr.ph.i.i.if.then.i.i119_crit_edge ], [ @msm_find_best_baud.table, %if.then.i.loopexit.i ]
  %conv.i.le.i = zext i16 %.lcssa.i to i32
  %div10.i.i = udiv i32 %target.078.i.lcssa.i, %conv.i.le.i
  %div1169.i.i = lshr i32 %div10.i.i, 4
  %sub.i.i = sub i32 %div1169.i.i, %call6
  %27 = tail call i32 @llvm.abs.i32(i32 %sub.i.i, i1 false) #12
  call void @__sanitizer_cov_trace_cmp4(i32 %27, i32 %best_diff.0.ph85.i.i)
  %cmp17.i.i = icmp ult i32 %27, %best_diff.0.ph85.i.i
  %best.1.i.i = select i1 %cmp17.i.i, ptr %entry1.077.i.lcssa.i, ptr %best.0.ph87.i.i
  %best_rate.1.i.i = select i1 %cmp17.i.i, i32 %target.078.i.lcssa.i, i32 %best_rate.0.ph88.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %div1169.i.i, i32 %call6)
  %cmp20.i.i = icmp eq i32 %div1169.i.i, %call6
  br i1 %cmp20.i.i, label %if.then.i.i119.msm_find_best_baud.exit.i_crit_edge, label %if.end44.i.i

if.then.i.i119.msm_find_best_baud.exit.i_crit_edge: ; preds = %if.then.i.i119
  call void @__sanitizer_cov_trace_pc() #14
  br label %msm_find_best_baud.exit.i

if.then28.i.i:                                    ; preds = %if.end35.i.i.if.then28.i.i_crit_edge, %while.body.lr.ph.i.i.if.then28.i.i_crit_edge
  %target.078.i84.i = phi i32 [ %call31.i.i, %if.end35.i.i.if.then28.i.i_crit_edge ], [ %target.0.ph89.i.i, %while.body.lr.ph.i.i.if.then28.i.i_crit_edge ]
  %28 = ptrtoint ptr %clk.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %clk.i.i, align 4
  %add30.i.i = add i32 %target.078.i84.i, 1
  %call31.i.i = tail call i32 @clk_round_rate(ptr noundef %29, i32 noundef %add30.i.i) #12
  call void @__sanitizer_cov_trace_cmp4(i32 %call31.i.i, i32 %target.078.i84.i)
  %cmp32.i.i = icmp eq i32 %call31.i.i, %target.078.i84.i
  br i1 %cmp32.i.i, label %if.then28.i.i.msm_find_best_baud.exit.i_crit_edge, label %if.end35.i.i

if.then28.i.i.msm_find_best_baud.exit.i_crit_edge: ; preds = %if.then28.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %msm_find_best_baud.exit.i

if.end35.i.i:                                     ; preds = %if.then28.i.i
  %add41.i.i = add i32 %call31.i.i, %div68.i.i
  %cmp6.not.i.i = icmp ugt i32 %mul.i.i, %add41.i.i
  br i1 %cmp6.not.i.i, label %if.end35.i.i.if.then28.i.i_crit_edge, label %if.then.i.loopexit.i

if.end35.i.i.if.then28.i.i_crit_edge:             ; preds = %if.end35.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then28.i.i

if.end44.i.i:                                     ; preds = %if.then.i.i119
  %30 = tail call i32 @llvm.umin.i32(i32 %27, i32 %best_diff.0.ph85.i.i) #12
  %incdec.ptr.i.i = getelementptr %struct.msm_baud_map, ptr %entry1.077.i.lcssa.i, i32 1
  %cmp76.i.i = icmp ult ptr %incdec.ptr.i.i, getelementptr inbounds ([16 x %struct.msm_baud_map], ptr @msm_find_best_baud.table, i32 1, i32 0)
  br i1 %cmp76.i.i, label %if.end44.i.i.while.body.lr.ph.i.i_crit_edge, label %if.end44.i.i.msm_find_best_baud.exit.i_crit_edge

if.end44.i.i.msm_find_best_baud.exit.i_crit_edge: ; preds = %if.end44.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %msm_find_best_baud.exit.i

if.end44.i.i.while.body.lr.ph.i.i_crit_edge:      ; preds = %if.end44.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body.lr.ph.i.i

msm_find_best_baud.exit.i:                        ; preds = %if.end44.i.i.msm_find_best_baud.exit.i_crit_edge, %if.then28.i.i.msm_find_best_baud.exit.i_crit_edge, %if.then.i.i119.msm_find_best_baud.exit.i_crit_edge
  %best.3.i.i = phi ptr [ %best.0.ph87.i.i, %if.then28.i.i.msm_find_best_baud.exit.i_crit_edge ], [ %best.1.i.i, %if.then.i.i119.msm_find_best_baud.exit.i_crit_edge ], [ %best.1.i.i, %if.end44.i.i.msm_find_best_baud.exit.i_crit_edge ]
  %best_rate.3.i.i = phi i32 [ %best_rate.0.ph88.i.i, %if.then28.i.i.msm_find_best_baud.exit.i_crit_edge ], [ %best_rate.1.i.i, %if.then.i.i119.msm_find_best_baud.exit.i_crit_edge ], [ %best_rate.1.i.i, %if.end44.i.i.msm_find_best_baud.exit.i_crit_edge ]
  %31 = ptrtoint ptr %clk.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %clk.i.i, align 4
  %call2.i = tail call i32 @clk_set_rate(ptr noundef %32, i32 noundef %best_rate.3.i.i) #12
  %33 = ptrtoint ptr %best.3.i.i to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %best.3.i.i, align 2
  %call9.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %port) #12
  %uartclk.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 22
  %35 = ptrtoint ptr %uartclk.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %best_rate.3.i.i, ptr %uartclk.i, align 4
  %code.i = getelementptr inbounds %struct.msm_baud_map, ptr %best.3.i.i, i32 0, i32 1
  %36 = ptrtoint ptr %code.i to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %code.i, align 2
  %conv12.i = zext i8 %37 to i32
  %38 = shl nuw i32 %conv12.i, 24
  %membase.i.i120 = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 2
  %39 = ptrtoint ptr %membase.i.i120 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %membase.i.i120, align 4
  %add.ptr.i.i121 = getelementptr i8, ptr %40, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i121, i32 %38) #12, !srcloc !103
  %rxstale13.i = getelementptr inbounds %struct.msm_baud_map, ptr %best.3.i.i, i32 0, i32 2
  %41 = ptrtoint ptr %rxstale13.i to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %rxstale13.i, align 1
  %conv14.i = zext i8 %42 to i32
  %and.i122 = and i32 %conv14.i, 31
  %is_uartdm.i = getelementptr inbounds %struct.msm_port, ptr %port, i32 0, i32 5
  %43 = ptrtoint ptr %is_uartdm.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %is_uartdm.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %44)
  %tobool.not.i123 = icmp eq i32 %44, 0
  %or.i = or i32 %and.i122, 32
  %watermark.0.i = select i1 %tobool.not.i123, i32 %or.i, i32 %and.i122
  %shl.i = shl nuw nsw i32 %conv14.i, 2
  %and15.i = and i32 %shl.i, 896
  %or16.i = or i32 %watermark.0.i, %and15.i
  %45 = tail call i32 @llvm.bswap.i32(i32 %or16.i) #12
  %46 = ptrtoint ptr %membase.i.i120 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %membase.i.i120, align 4
  %add.ptr.i55.i = getelementptr i8, ptr %47, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i55.i, i32 %45) #12, !srcloc !103
  %fifosize.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 23
  %48 = ptrtoint ptr %fifosize.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %fifosize.i, align 4
  %mul.i = mul i32 %49, 3
  %div1753.i = lshr i32 %mul.i, 2
  %50 = tail call i32 @llvm.bswap.i32(i32 %div1753.i) #12
  %51 = ptrtoint ptr %membase.i.i120 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %membase.i.i120, align 4
  %add.ptr.i57.i = getelementptr i8, ptr %52, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i57.i, i32 %50) #12, !srcloc !103
  %53 = ptrtoint ptr %membase.i.i120 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %membase.i.i120, align 4
  %add.ptr.i59.i = getelementptr i8, ptr %54, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i59.i, i32 167772160) #12, !srcloc !103
  %55 = ptrtoint ptr %membase.i.i120 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %membase.i.i120, align 4
  %add.ptr.i61.i = getelementptr i8, ptr %56, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i61.i, i32 65536) #12, !srcloc !103
  %57 = ptrtoint ptr %membase.i.i120 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %membase.i.i120, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %58, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i, i32 268435456) #12, !srcloc !103
  %59 = ptrtoint ptr %membase.i.i120 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %membase.i.i120, align 4
  %add.ptr.i12.i.i = getelementptr i8, ptr %60, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i12.i.i, i32 536870912) #12, !srcloc !103
  %61 = ptrtoint ptr %membase.i.i120 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %membase.i.i120, align 4
  %add.ptr.i14.i.i = getelementptr i8, ptr %62, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i14.i.i, i32 805306368) #12, !srcloc !103
  %63 = ptrtoint ptr %membase.i.i120 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %membase.i.i120, align 4
  %add.ptr.i16.i.i = getelementptr i8, ptr %64, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i16.i.i, i32 1073741824) #12, !srcloc !103
  %65 = ptrtoint ptr %membase.i.i120 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %membase.i.i120, align 4
  %add.ptr.i18.i.i = getelementptr i8, ptr %66, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i18.i.i, i32 1879048192) #12, !srcloc !103
  %67 = ptrtoint ptr %membase.i.i120 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %membase.i.i120, align 4
  %add.ptr.i20.i.i = getelementptr i8, ptr %68, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i20.i.i, i32 -536870912) #12, !srcloc !103
  %69 = ptrtoint ptr %membase.i.i120 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %membase.i.i120, align 4
  %71 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %70) #12, !srcloc !102
  %72 = and i32 %71, 2147483647
  %73 = ptrtoint ptr %membase.i.i120 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %membase.i.i120, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %74, i32 %72) #12, !srcloc !103
  %75 = ptrtoint ptr %is_uartdm.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %is_uartdm.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %76)
  %tobool.not.i.i124 = icmp eq i32 %76, 0
  br i1 %tobool.not.i.i124, label %msm_find_best_baud.exit.i.msm_reset.exit.i_crit_edge, label %if.then.i62.i

msm_find_best_baud.exit.i.msm_reset.exit.i_crit_edge: ; preds = %msm_find_best_baud.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %msm_reset.exit.i

if.then.i62.i:                                    ; preds = %msm_find_best_baud.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  %77 = ptrtoint ptr %membase.i.i120 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %membase.i.i120, align 4
  %add.ptr.i24.i.i = getelementptr i8, ptr %78, i32 60
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i24.i.i, i32 0) #12, !srcloc !103
  br label %msm_reset.exit.i

msm_reset.exit.i:                                 ; preds = %if.then.i62.i, %msm_find_best_baud.exit.i.msm_reset.exit.i_crit_edge
  %79 = ptrtoint ptr %membase.i.i120 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %membase.i.i120, align 4
  %add.ptr.i64.i = getelementptr i8, ptr %80, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i64.i, i32 83886080) #12, !srcloc !103
  %imr.i = getelementptr inbounds %struct.msm_port, ptr %port, i32 0, i32 4
  %81 = ptrtoint ptr %imr.i to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 1112, ptr %imr.i, align 4
  %82 = ptrtoint ptr %membase.i.i120 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %membase.i.i120, align 4
  %add.ptr.i66.i = getelementptr i8, ptr %83, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i66.i, i32 1476657152) #12, !srcloc !103
  %84 = ptrtoint ptr %is_uartdm.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %is_uartdm.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %85)
  %tobool20.not.i = icmp eq i32 %85, 0
  br i1 %tobool20.not.i, label %msm_reset.exit.i.msm_set_baud_rate.exit_crit_edge, label %if.then21.i

msm_reset.exit.i.msm_set_baud_rate.exit_crit_edge: ; preds = %msm_reset.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %msm_set_baud_rate.exit

if.then21.i:                                      ; preds = %msm_reset.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  %86 = ptrtoint ptr %membase.i.i120 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %membase.i.i120, align 4
  %add.ptr.i68.i = getelementptr i8, ptr %87, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i68.i, i32 -2147483648) #12, !srcloc !103
  %88 = ptrtoint ptr %membase.i.i120 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %membase.i.i120, align 4
  %add.ptr.i70.i = getelementptr i8, ptr %89, i32 52
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i70.i, i32 -256) #12, !srcloc !103
  %90 = ptrtoint ptr %membase.i.i120 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %membase.i.i120, align 4
  %add.ptr.i72.i = getelementptr i8, ptr %91, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i72.i, i32 327680) #12, !srcloc !103
  br label %msm_set_baud_rate.exit

msm_set_baud_rate.exit:                           ; preds = %if.then21.i, %msm_reset.exit.i.msm_set_baud_rate.exit_crit_edge
  %div52.i = lshr i32 %best_rate.3.i.i, 4
  %conv.i = zext i16 %34 to i32
  %div3.i = udiv i32 %div52.i, %conv.i
  %call8 = tail call i32 @tty_termios_baud_rate(ptr noundef %termios) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %msm_set_baud_rate.exit.if.end11_crit_edge, label %if.then10

msm_set_baud_rate.exit.if.end11_crit_edge:        ; preds = %msm_set_baud_rate.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end11

if.then10:                                        ; preds = %msm_set_baud_rate.exit
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @tty_termios_encode_baud_rate(ptr noundef %termios, i32 noundef %div3.i, i32 noundef %div3.i) #12
  br label %if.end11

if.end11:                                         ; preds = %if.then10, %msm_set_baud_rate.exit.if.end11_crit_edge
  %92 = ptrtoint ptr %membase.i.i120 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %membase.i.i120, align 4
  %add.ptr.i = getelementptr i8, ptr %93, i32 4
  %94 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #12, !srcloc !102
  %95 = tail call i32 @llvm.bswap.i32(i32 %94) #12
  %and = and i32 %95, -4
  %c_cflag = getelementptr inbounds %struct.ktermios, ptr %termios, i32 0, i32 2
  %96 = ptrtoint ptr %c_cflag to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %c_cflag, align 4
  %and13 = and i32 %97, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13)
  %tobool14.not = icmp eq i32 %and13, 0
  br i1 %tobool14.not, label %if.end11.if.end29_crit_edge, label %if.then15

if.end11.if.end29_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end29

if.then15:                                        ; preds = %if.end11
  %and17 = and i32 %97, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and17)
  %tobool18.not = icmp eq i32 %and17, 0
  br i1 %tobool18.not, label %if.else, label %if.then19

if.then19:                                        ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #14
  %or = or i32 %and, 1
  br label %if.end29

if.else:                                          ; preds = %if.then15
  %and21 = and i32 %97, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and21)
  %tobool22.not = icmp eq i32 %and21, 0
  br i1 %tobool22.not, label %if.else25, label %if.then23

if.then23:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  %or24 = or i32 %95, 3
  br label %if.end29

if.else25:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  %or26 = or i32 %and, 2
  br label %if.end29

if.end29:                                         ; preds = %if.else25, %if.then23, %if.then19, %if.end11.if.end29_crit_edge
  %mr.0 = phi i32 [ %or, %if.then19 ], [ %or24, %if.then23 ], [ %or26, %if.else25 ], [ %and, %if.end11.if.end29_crit_edge ]
  %and30 = and i32 %mr.0, -49
  %and32 = lshr i32 %97, 4
  %98 = and i32 %and32, 3
  %99 = zext i32 %98 to i64
  call void @__sanitizer_cov_trace_switch(i64 %99, ptr @__sancov_gen_cov_switch_values)
  switch i32 %98, label %if.end29.unreachabledefault [
    i32 0, label %if.end29.sw.epilog_crit_edge
    i32 1, label %sw.bb34
    i32 2, label %sw.bb36
    i32 3, label %sw.default
  ]

if.end29.sw.epilog_crit_edge:                     ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

sw.bb34:                                          ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #14
  %or35 = or i32 %and30, 16
  br label %sw.epilog

sw.bb36:                                          ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #14
  %or37 = or i32 %and30, 32
  br label %sw.epilog

if.end29.unreachabledefault:                      ; preds = %if.end29
  unreachable

sw.default:                                       ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #14
  %or39 = or i32 %mr.0, 48
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb36, %sw.bb34, %if.end29.sw.epilog_crit_edge
  %mr.1 = phi i32 [ %or39, %sw.default ], [ %or37, %sw.bb36 ], [ %or35, %sw.bb34 ], [ %and30, %if.end29.sw.epilog_crit_edge ]
  %and42 = and i32 %97, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and42)
  %tobool43.not = icmp eq i32 %and42, 0
  %or45 = or i32 %mr.1, 12
  %and40 = and i32 %mr.1, -13
  %or47 = or i32 %and40, 4
  %mr.2 = select i1 %tobool43.not, i32 %or47, i32 %or45
  %100 = tail call i32 @llvm.bswap.i32(i32 %mr.2) #12
  %101 = ptrtoint ptr %membase.i.i120 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %membase.i.i120, align 4
  %add.ptr.i126 = getelementptr i8, ptr %102, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i126, i32 %100) #12, !srcloc !103
  %103 = ptrtoint ptr %membase.i.i120 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %membase.i.i120, align 4
  %105 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %104) #12, !srcloc !102
  %106 = and i32 %105, 1073741823
  %107 = tail call i32 @llvm.bswap.i32(i32 %106)
  %108 = ptrtoint ptr %c_cflag to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %c_cflag, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %109)
  %tobool53.not130 = icmp slt i32 %109, 0
  %masksel = select i1 %tobool53.not130, i32 192, i32 0
  %mr.3 = or i32 %masksel, %107
  %110 = tail call i32 @llvm.bswap.i32(i32 %mr.3) #12
  %111 = ptrtoint ptr %membase.i.i120 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %membase.i.i120, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %112, i32 %110) #12, !srcloc !103
  %read_status_mask = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 28
  %113 = ptrtoint ptr %read_status_mask to i32
  call void @__asan_store4_noabort(i32 %113)
  store i32 0, ptr %read_status_mask, align 4
  %114 = ptrtoint ptr %termios to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %termios, align 4
  %and58 = shl i32 %115, 1
  %116 = and i32 %and58, 32
  store i32 %116, ptr %read_status_mask, align 4
  %117 = load i32, ptr %termios, align 4
  %and65 = and i32 %117, 11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and65)
  %tobool66.not = icmp eq i32 %and65, 0
  br i1 %tobool66.not, label %sw.epilog.if.end70_crit_edge, label %if.then67

sw.epilog.if.end70_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end70

if.then67:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #14
  %or69 = or i32 %116, 64
  %118 = ptrtoint ptr %read_status_mask to i32
  call void @__asan_store4_noabort(i32 %118)
  store i32 %or69, ptr %read_status_mask, align 4
  br label %if.end70

if.end70:                                         ; preds = %if.then67, %sw.epilog.if.end70_crit_edge
  %119 = ptrtoint ptr %c_cflag to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %c_cflag, align 4
  tail call void @uart_update_timeout(ptr noundef %port, i32 noundef %120, i32 noundef %div3.i) #12
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %port, i32 noundef %call9.i) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @msm_power(ptr nocapture noundef readonly %port, i32 noundef %state, i32 noundef %oldstate) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %state to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.27)
  switch i32 %state, label %do.end [
    i32 0, label %sw.bb
    i32 3, label %sw.bb2
  ]

sw.bb:                                            ; preds = %entry
  %clk = getelementptr inbounds %struct.msm_port, ptr %port, i32 0, i32 2
  %1 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %clk, align 4
  %call.i = tail call i32 @clk_prepare(ptr noundef %2) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %sw.bb.clk_prepare_enable.exit_crit_edge

sw.bb.clk_prepare_enable.exit_crit_edge:          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #14
  br label %clk_prepare_enable.exit

if.end.i:                                         ; preds = %sw.bb
  %call1.i = tail call i32 @clk_enable(ptr noundef %2) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end.i.clk_prepare_enable.exit_crit_edge, label %if.then3.i

if.end.i.clk_prepare_enable.exit_crit_edge:       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %clk_prepare_enable.exit

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @clk_unprepare(ptr noundef %2) #12
  br label %clk_prepare_enable.exit

clk_prepare_enable.exit:                          ; preds = %if.then3.i, %if.end.i.clk_prepare_enable.exit_crit_edge, %sw.bb.clk_prepare_enable.exit_crit_edge
  %pclk = getelementptr inbounds %struct.msm_port, ptr %port, i32 0, i32 3
  %3 = ptrtoint ptr %pclk to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %pclk, align 4
  %call.i11 = tail call i32 @clk_prepare(ptr noundef %4) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i11)
  %tobool.not.i12 = icmp eq i32 %call.i11, 0
  br i1 %tobool.not.i12, label %if.end.i15, label %clk_prepare_enable.exit.sw.epilog_crit_edge

clk_prepare_enable.exit.sw.epilog_crit_edge:      ; preds = %clk_prepare_enable.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

if.end.i15:                                       ; preds = %clk_prepare_enable.exit
  %call1.i13 = tail call i32 @clk_enable(ptr noundef %4) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i13)
  %tobool2.not.i14 = icmp eq i32 %call1.i13, 0
  br i1 %tobool2.not.i14, label %if.end.i15.sw.epilog_crit_edge, label %if.then3.i16

if.end.i15.sw.epilog_crit_edge:                   ; preds = %if.end.i15
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

if.then3.i16:                                     ; preds = %if.end.i15
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @clk_unprepare(ptr noundef %4) #12
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %clk3 = getelementptr inbounds %struct.msm_port, ptr %port, i32 0, i32 2
  %5 = ptrtoint ptr %clk3 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %clk3, align 4
  tail call void @clk_disable(ptr noundef %6) #12
  tail call void @clk_unprepare(ptr noundef %6) #12
  %pclk4 = getelementptr inbounds %struct.msm_port, ptr %port, i32 0, i32 3
  %7 = ptrtoint ptr %pclk4 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %pclk4, align 4
  tail call void @clk_disable(ptr noundef %8) #12
  tail call void @clk_unprepare(ptr noundef %8) #12
  br label %sw.epilog

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %call6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, i32 noundef %state) #15
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end, %sw.bb2, %if.then3.i16, %if.end.i15.sw.epilog_crit_edge, %clk_prepare_enable.exit.sw.epilog_crit_edge
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal nonnull ptr @msm_type(ptr nocapture noundef readnone %port) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  ret ptr @.str.21
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @msm_release_port(ptr nocapture noundef %port) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 45
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 -16
  %call = tail call ptr @platform_get_resource(ptr noundef %add.ptr, i32 noundef 512, i32 noundef 0) #12
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end, !prof !109

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %end.i = getelementptr inbounds %struct.resource, ptr %call, i32 0, i32 1
  %2 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %end.i, align 4
  %4 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %call, align 4
  %sub.i = add i32 %3, 1
  %add.i = sub i32 %sub.i, %5
  %mapbase = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 43
  %6 = ptrtoint ptr %mapbase to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %mapbase, align 4
  tail call void @__release_region(ptr noundef nonnull @iomem_resource, i32 noundef %7, i32 noundef %add.i) #12
  %membase = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 2
  %8 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %membase, align 4
  tail call void @iounmap(ptr noundef %9) #12
  %10 = ptrtoint ptr %membase to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr null, ptr %membase, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @msm_request_port(ptr nocapture noundef %port) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 45
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 -16
  %call = tail call ptr @platform_get_resource(ptr noundef %add.ptr, i32 noundef 512, i32 noundef 0) #12
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end, !prof !109

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %end.i = getelementptr inbounds %struct.resource, ptr %call, i32 0, i32 1
  %2 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %end.i, align 4
  %4 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %call, align 4
  %sub.i = add i32 %3, 1
  %add.i = sub i32 %sub.i, %5
  %mapbase = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 43
  %6 = ptrtoint ptr %mapbase to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %mapbase, align 4
  %call5 = tail call ptr @__request_region(ptr noundef nonnull @iomem_resource, i32 noundef %7, i32 noundef %add.i, ptr noundef nonnull @.str, i32 noundef 0) #12
  %tobool6.not = icmp eq ptr %call5, null
  br i1 %tobool6.not, label %if.end.cleanup_crit_edge, label %if.end8

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end8:                                          ; preds = %if.end
  %8 = ptrtoint ptr %mapbase to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %mapbase, align 4
  %call10 = tail call ptr @ioremap(i32 noundef %9, i32 noundef %add.i) #12
  %membase = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 2
  %10 = ptrtoint ptr %membase to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call10, ptr %membase, align 4
  %tobool12.not = icmp eq ptr %call10, null
  br i1 %tobool12.not, label %if.then13, label %if.end8.cleanup_crit_edge

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then13:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #14
  %11 = ptrtoint ptr %mapbase to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %mapbase, align 4
  tail call void @__release_region(ptr noundef nonnull @iomem_resource, i32 noundef %12, i32 noundef %add.i) #12
  br label %cleanup

cleanup:                                          ; preds = %if.then13, %if.end8.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -16, %if.then13 ], [ -6, %entry.cleanup_crit_edge ], [ -16, %if.end.cleanup_crit_edge ], [ 0, %if.end8.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @msm_config_port(ptr nocapture noundef %port, i32 noundef %flags) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %and = and i32 %flags, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.then

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %type = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 38
  %0 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 88, ptr %type, align 4
  %call = tail call i32 @msm_request_port(ptr noundef %port)
  br label %cleanup

cleanup:                                          ; preds = %if.then, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @msm_verify_port(ptr nocapture noundef readonly %port, ptr nocapture noundef readonly %ser) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ser to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %ser, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.28)
  switch i32 %1, label %entry.return_crit_edge [
    i32 88, label %entry.if.end_crit_edge
    i32 0, label %entry.if.end_crit_edge16
  ]

entry.if.end_crit_edge16:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

if.end:                                           ; preds = %entry.if.end_crit_edge, %entry.if.end_crit_edge16
  %irq = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 20
  %3 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %irq, align 4
  %irq4 = getelementptr inbounds %struct.serial_struct, ptr %ser, i32 0, i32 3
  %5 = ptrtoint ptr %irq4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %irq4, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %6)
  %cmp5.not = icmp eq i32 %4, %6
  %. = select i1 %cmp5.not, i32 0, i32 -22, !prof !101
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi i32 [ -22, %entry.return_crit_edge ], [ %., %if.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @msm_poll_put_char(ptr nocapture noundef readonly %port, i8 noundef zeroext %c) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %membase.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 2
  %0 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %membase.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 20
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #12, !srcloc !102
  %3 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %membase.i, align 4
  %add.ptr.i36 = getelementptr i8, ptr %4, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i36, i32 0) #12, !srcloc !103
  %is_uartdm = getelementptr inbounds %struct.msm_port, ptr %port, i32 0, i32 5
  %5 = ptrtoint ptr %is_uartdm to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %is_uartdm, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not = icmp eq i32 %6, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %entry.while.cond.i.i_crit_edge

entry.while.cond.i.i_crit_edge:                   ; preds = %entry
  br label %while.cond.i.i

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

while.cond.i.i:                                   ; preds = %if.end.i.i.while.cond.i.i_crit_edge, %entry.while.cond.i.i_crit_edge
  %timeout.0.i.i = phi i32 [ %dec.i.i, %if.end.i.i.while.cond.i.i_crit_edge ], [ 500000, %entry.while.cond.i.i_crit_edge ]
  %7 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %membase.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %8, i32 8
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i) #12, !srcloc !102
  %10 = and i32 %9, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool.not.i.i = icmp eq i32 %10, 0
  br i1 %tobool.not.i.i, label %while.body.i.i, label %while.cond.i.i.msm_reset_dm_count.exit_crit_edge

while.cond.i.i.msm_reset_dm_count.exit_crit_edge: ; preds = %while.cond.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %msm_reset_dm_count.exit

while.body.i.i:                                   ; preds = %while.cond.i.i
  %11 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %membase.i, align 4
  %add.ptr.i10.i.i = getelementptr i8, ptr %12, i32 20
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i10.i.i) #12, !srcloc !102
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %13)
  %tobool3.not.i.i = icmp sgt i32 %13, -1
  br i1 %tobool3.not.i.i, label %if.end.i.i, label %while.body.i.i.msm_reset_dm_count.exit_crit_edge

while.body.i.i.msm_reset_dm_count.exit_crit_edge: ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %msm_reset_dm_count.exit

if.end.i.i:                                       ; preds = %while.body.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %14 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %14(i32 noundef 214748) #12
  %dec.i.i = add nsw i32 %timeout.0.i.i, -1
  %tobool4.not.i.i = icmp eq i32 %timeout.0.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end.i.i.msm_reset_dm_count.exit_crit_edge, label %if.end.i.i.while.cond.i.i_crit_edge

if.end.i.i.while.cond.i.i_crit_edge:              ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.cond.i.i

if.end.i.i.msm_reset_dm_count.exit_crit_edge:     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %msm_reset_dm_count.exit

msm_reset_dm_count.exit:                          ; preds = %if.end.i.i.msm_reset_dm_count.exit_crit_edge, %while.body.i.i.msm_reset_dm_count.exit_crit_edge, %while.cond.i.i.msm_reset_dm_count.exit_crit_edge
  %15 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %membase.i, align 4
  %add.ptr.i12.i.i = getelementptr i8, ptr %16, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i12.i.i, i32 196608) #12, !srcloc !103
  %17 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %membase.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %18, i32 64
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 16777216) #12, !srcloc !103
  %19 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %membase.i, align 4
  %add.ptr.i4.i = getelementptr i8, ptr %20, i32 64
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i4.i) #12, !srcloc !102
  br label %if.end

if.end:                                           ; preds = %msm_reset_dm_count.exit, %entry.if.end_crit_edge
  %22 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %membase.i, align 4
  %add.ptr.i3845 = getelementptr i8, ptr %23, i32 8
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i3845) #12, !srcloc !102
  %25 = and i32 %24, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool2.not46 = icmp eq i32 %25, 0
  br i1 %tobool2.not46, label %if.end.do.end_crit_edge, label %if.end.while.end_crit_edge

if.end.while.end_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end

if.end.do.end_crit_edge:                          ; preds = %if.end
  br label %do.end

do.end:                                           ; preds = %do.end.do.end_crit_edge, %if.end.do.end_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !110
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #12, !srcloc !111
  %26 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %membase.i, align 4
  %add.ptr.i38 = getelementptr i8, ptr %27, i32 8
  %28 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i38) #12, !srcloc !102
  %29 = and i32 %28, 67108864
  %tobool2.not = icmp eq i32 %29, 0
  br i1 %tobool2.not, label %do.end.do.end_crit_edge, label %do.end.while.end_crit_edge

do.end.while.end_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end

do.end.do.end_crit_edge:                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end

while.end:                                        ; preds = %do.end.while.end_crit_edge, %if.end.while.end_crit_edge
  %conv = zext i8 %c to i32
  %30 = ptrtoint ptr %is_uartdm to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %is_uartdm, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %tobool10.not = icmp eq i32 %31, 0
  %cond = select i1 %tobool10.not, i32 12, i32 112
  %32 = shl nuw i32 %conv, 24
  %33 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %membase.i, align 4
  %add.ptr.i40 = getelementptr i8, ptr %34, i32 %cond
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i40, i32 %32) #12, !srcloc !103
  %35 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %membase.i, align 4
  %add.ptr.i4247 = getelementptr i8, ptr %36, i32 8
  %37 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i4247) #12, !srcloc !102
  %38 = and i32 %37, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %tobool14.not48 = icmp eq i32 %38, 0
  br i1 %tobool14.not48, label %while.end.do.end21_crit_edge, label %while.end.while.end26_crit_edge

while.end.while.end26_crit_edge:                  ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end26

while.end.do.end21_crit_edge:                     ; preds = %while.end
  br label %do.end21

do.end21:                                         ; preds = %do.end21.do.end21_crit_edge, %while.end.do.end21_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !112
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #12, !srcloc !113
  %39 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %membase.i, align 4
  %add.ptr.i42 = getelementptr i8, ptr %40, i32 8
  %41 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i42) #12, !srcloc !102
  %42 = and i32 %41, 67108864
  %tobool14.not = icmp eq i32 %42, 0
  br i1 %tobool14.not, label %do.end21.do.end21_crit_edge, label %do.end21.while.end26_crit_edge

do.end21.while.end26_crit_edge:                   ; preds = %do.end21
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end26

do.end21.do.end21_crit_edge:                      ; preds = %do.end21
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end21

while.end26:                                      ; preds = %do.end21.while.end26_crit_edge, %while.end.while.end26_crit_edge
  %43 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %membase.i, align 4
  %add.ptr.i44 = getelementptr i8, ptr %44, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i44, i32 %2) #12, !srcloc !103
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @msm_poll_get_char(ptr nocapture noundef readonly %port) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %membase.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 2
  %0 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %membase.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 20
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #12, !srcloc !102
  %3 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %membase.i, align 4
  %add.ptr.i9 = getelementptr i8, ptr %4, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i9, i32 0) #12, !srcloc !103
  %is_uartdm = getelementptr inbounds %struct.msm_port, ptr %port, i32 0, i32 5
  %5 = ptrtoint ptr %is_uartdm to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %is_uartdm, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not = icmp eq i32 %6, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %7 = load i32, ptr @msm_poll_get_char_dm.count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not.i = icmp eq i32 %7, 0
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  %sub.i = sub i32 4, %7
  %arrayidx.i = getelementptr i8, ptr @msm_poll_get_char_dm.slop, i32 %sub.i
  %8 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx.i, align 1
  %conv.i = zext i8 %9 to i32
  %dec.i = add i32 %7, -1
  store i32 %dec.i, ptr @msm_poll_get_char_dm.count, align 4
  br label %if.end

if.else.i:                                        ; preds = %if.then
  %10 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %membase.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %11, i32 8
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #12, !srcloc !102
  %13 = and i32 %12, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool1.not.i = icmp eq i32 %13, 0
  %14 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %membase.i, align 4
  br i1 %tobool1.not.i, label %if.then2.i, label %if.else12.i

if.then2.i:                                       ; preds = %if.else.i
  %add.ptr.i28.i = getelementptr i8, ptr %15, i32 80
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i28.i) #12, !srcloc !102
  %17 = tail call i32 @llvm.bswap.i32(i32 %16) #12
  %18 = lshr i32 %17, 7
  %and4.i = and i32 %18, 7
  store i32 %and4.i, ptr @msm_poll_get_char_dm.count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool5.not.i, label %if.then2.i.if.end_crit_edge, label %if.then6.i

if.then2.i.if.end_crit_edge:                      ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then6.i:                                       ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #14
  %19 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %membase.i, align 4
  %add.ptr.i30.i = getelementptr i8, ptr %20, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i30.i, i32 262144) #12, !srcloc !103
  %21 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %membase.i, align 4
  %add.ptr.i32.i = getelementptr i8, ptr %22, i32 112
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i32.i) #12, !srcloc !102
  %24 = tail call i32 @llvm.bswap.i32(i32 %23) #12
  store i32 %24, ptr @msm_poll_get_char_dm.slop, align 4
  %25 = lshr i32 %24, 24
  %26 = load i32, ptr @msm_poll_get_char_dm.count, align 4
  %dec10.i = add i32 %26, -1
  store i32 %dec10.i, ptr @msm_poll_get_char_dm.count, align 4
  %27 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %membase.i, align 4
  %add.ptr.i34.i = getelementptr i8, ptr %28, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i34.i, i32 -2147483648) #12, !srcloc !103
  %29 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %membase.i, align 4
  %add.ptr.i36.i = getelementptr i8, ptr %30, i32 52
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i36.i, i32 -256) #12, !srcloc !103
  %31 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %membase.i, align 4
  %add.ptr.i38.i = getelementptr i8, ptr %32, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i38.i, i32 327680) #12, !srcloc !103
  br label %if.end

if.else12.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #14
  %add.ptr.i40.i = getelementptr i8, ptr %15, i32 112
  %33 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i40.i) #12, !srcloc !102
  %34 = tail call i32 @llvm.bswap.i32(i32 %33) #12
  store i32 %34, ptr @msm_poll_get_char_dm.slop, align 4
  %35 = lshr i32 %34, 24
  store i32 3, ptr @msm_poll_get_char_dm.count, align 4
  br label %if.end

if.else:                                          ; preds = %entry
  %36 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %membase.i, align 4
  %add.ptr.i.i11 = getelementptr i8, ptr %37, i32 8
  %38 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i11) #12, !srcloc !102
  %39 = and i32 %38, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %tobool1.not.i12 = icmp eq i32 %39, 0
  br i1 %tobool1.not.i12, label %if.else.if.end_crit_edge, label %if.end.i

if.else.if.end_crit_edge:                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.end.i:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  %40 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %membase.i, align 4
  %add.ptr.i8.i = getelementptr i8, ptr %41, i32 12
  %42 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i8.i) #12, !srcloc !102
  %43 = lshr i32 %42, 24
  br label %if.end

if.end:                                           ; preds = %if.end.i, %if.else.if.end_crit_edge, %if.else12.i, %if.then6.i, %if.then2.i.if.end_crit_edge, %if.then.i
  %c.0 = phi i32 [ %conv.i, %if.then.i ], [ %35, %if.else12.i ], [ %25, %if.then6.i ], [ 16711680, %if.then2.i.if.end_crit_edge ], [ %43, %if.end.i ], [ 16711680, %if.else.if.end_crit_edge ]
  %44 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %membase.i, align 4
  %add.ptr.i15 = getelementptr i8, ptr %45, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i15, i32 %2) #12, !srcloc !103
  ret i32 %c.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_unmap_page_attrs(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #10

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @msm_init_clock(ptr nocapture noundef %port) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %clk = getelementptr inbounds %struct.msm_port, ptr %port, i32 0, i32 2
  %0 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %clk, align 4
  %call.i = tail call i32 @clk_prepare(ptr noundef %1) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.clk_prepare_enable.exit_crit_edge

entry.clk_prepare_enable.exit_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %clk_prepare_enable.exit

if.end.i:                                         ; preds = %entry
  %call1.i = tail call i32 @clk_enable(ptr noundef %1) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end.i.clk_prepare_enable.exit_crit_edge, label %if.then3.i

if.end.i.clk_prepare_enable.exit_crit_edge:       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %clk_prepare_enable.exit

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @clk_unprepare(ptr noundef %1) #12
  br label %clk_prepare_enable.exit

clk_prepare_enable.exit:                          ; preds = %if.then3.i, %if.end.i.clk_prepare_enable.exit_crit_edge, %entry.clk_prepare_enable.exit_crit_edge
  %pclk = getelementptr inbounds %struct.msm_port, ptr %port, i32 0, i32 3
  %2 = ptrtoint ptr %pclk to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pclk, align 4
  %call.i4 = tail call i32 @clk_prepare(ptr noundef %3) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i4)
  %tobool.not.i5 = icmp eq i32 %call.i4, 0
  br i1 %tobool.not.i5, label %if.end.i8, label %clk_prepare_enable.exit.clk_prepare_enable.exit10_crit_edge

clk_prepare_enable.exit.clk_prepare_enable.exit10_crit_edge: ; preds = %clk_prepare_enable.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %clk_prepare_enable.exit10

if.end.i8:                                        ; preds = %clk_prepare_enable.exit
  %call1.i6 = tail call i32 @clk_enable(ptr noundef %3) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i6)
  %tobool2.not.i7 = icmp eq i32 %call1.i6, 0
  br i1 %tobool2.not.i7, label %if.end.i8.clk_prepare_enable.exit10_crit_edge, label %if.then3.i9

if.end.i8.clk_prepare_enable.exit10_crit_edge:    ; preds = %if.end.i8
  call void @__sanitizer_cov_trace_pc() #14
  br label %clk_prepare_enable.exit10

if.then3.i9:                                      ; preds = %if.end.i8
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @clk_unprepare(ptr noundef %3) #12
  br label %clk_prepare_enable.exit10

clk_prepare_enable.exit10:                        ; preds = %if.then3.i9, %if.end.i8.clk_prepare_enable.exit10_crit_edge, %clk_prepare_enable.exit.clk_prepare_enable.exit10_crit_edge
  %is_uartdm.i = getelementptr inbounds %struct.msm_port, ptr %port, i32 0, i32 5
  %4 = ptrtoint ptr %is_uartdm.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %is_uartdm.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not.i11 = icmp eq i32 %5, 0
  br i1 %tobool.not.i11, label %if.end.i12, label %clk_prepare_enable.exit10.msm_serial_set_mnd_regs.exit_crit_edge

clk_prepare_enable.exit10.msm_serial_set_mnd_regs.exit_crit_edge: ; preds = %clk_prepare_enable.exit10
  call void @__sanitizer_cov_trace_pc() #14
  br label %msm_serial_set_mnd_regs.exit

if.end.i12:                                       ; preds = %clk_prepare_enable.exit10
  %uartclk.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 22
  %6 = ptrtoint ptr %uartclk.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %uartclk.i, align 4
  %8 = zext i32 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.29)
  switch i32 %7, label %if.end.i12.msm_serial_set_mnd_regs.exit_crit_edge [
    i32 19200000, label %if.then1.i
    i32 4800000, label %if.then4.i
  ]

if.end.i12.msm_serial_set_mnd_regs.exit_crit_edge: ; preds = %if.end.i12
  call void @__sanitizer_cov_trace_pc() #14
  br label %msm_serial_set_mnd_regs.exit

if.then1.i:                                       ; preds = %if.end.i12
  call void @__sanitizer_cov_trace_pc() #14
  %membase.i.i.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 2
  %9 = ptrtoint ptr %membase.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %membase.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %10, i32 40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i, i32 100663296) #12, !srcloc !103
  %11 = ptrtoint ptr %membase.i.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %membase.i.i.i, align 4
  %add.ptr.i6.i.i = getelementptr i8, ptr %12, i32 44
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i6.i.i, i32 -251658240) #12, !srcloc !103
  %13 = ptrtoint ptr %membase.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %membase.i.i.i, align 4
  %add.ptr.i8.i.i = getelementptr i8, ptr %14, i32 48
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i8.i.i, i32 251658240) #12, !srcloc !103
  %15 = ptrtoint ptr %membase.i.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %membase.i.i.i, align 4
  %add.ptr.i10.i.i = getelementptr i8, ptr %16, i32 52
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i10.i.i, i32 436207616) #12, !srcloc !103
  br label %cleanup.sink.split.i

if.then4.i:                                       ; preds = %if.end.i12
  call void @__sanitizer_cov_trace_pc() #14
  %membase.i.i11.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 2
  %17 = ptrtoint ptr %membase.i.i11.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %membase.i.i11.i, align 4
  %add.ptr.i.i12.i = getelementptr i8, ptr %18, i32 40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i12.i, i32 402653184) #12, !srcloc !103
  %19 = ptrtoint ptr %membase.i.i11.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %membase.i.i11.i, align 4
  %add.ptr.i6.i13.i = getelementptr i8, ptr %20, i32 44
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i6.i13.i, i32 -167772160) #12, !srcloc !103
  %21 = ptrtoint ptr %membase.i.i11.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %membase.i.i11.i, align 4
  %add.ptr.i8.i14.i = getelementptr i8, ptr %22, i32 48
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i8.i14.i, i32 251658240) #12, !srcloc !103
  %23 = ptrtoint ptr %membase.i.i11.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %membase.i.i11.i, align 4
  %add.ptr.i10.i15.i = getelementptr i8, ptr %24, i32 52
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i10.i15.i, i32 167772160) #12, !srcloc !103
  br label %cleanup.sink.split.i

cleanup.sink.split.i:                             ; preds = %if.then4.i, %if.then1.i
  %25 = ptrtoint ptr %uartclk.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 1843200, ptr %uartclk.i, align 4
  br label %msm_serial_set_mnd_regs.exit

msm_serial_set_mnd_regs.exit:                     ; preds = %cleanup.sink.split.i, %if.end.i12.msm_serial_set_mnd_regs.exit_crit_edge, %clk_prepare_enable.exit10.msm_serial_set_mnd_regs.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @msm_uart_irq(i32 noundef %irq, ptr noundef %dev_id) #3 align 64 {
entry:
  %buf.i = alloca [4 x i8], align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %rx_dma = getelementptr inbounds %struct.msm_port, ptr %dev_id, i32 0, i32 9
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %dev_id) #12
  %membase.i = getelementptr inbounds %struct.uart_port, ptr %dev_id, i32 0, i32 2
  %0 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %membase.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 16
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #12, !srcloc !102
  %3 = tail call i32 @llvm.bswap.i32(i32 %2) #12
  %4 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %membase.i, align 4
  %add.ptr.i50 = getelementptr i8, ptr %5, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i50, i32 0) #12, !srcloc !103
  %and = and i32 %3, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %break_detected = getelementptr inbounds %struct.msm_port, ptr %dev_id, i32 0, i32 7
  %6 = ptrtoint ptr %break_detected to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 1, ptr %break_detected, align 4
  %7 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %membase.i, align 4
  %add.ptr.i52 = getelementptr i8, ptr %8, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i52, i32 537395200) #12, !srcloc !103
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %and7 = and i32 %3, 24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7)
  %tobool8.not = icmp eq i32 %and7, 0
  br i1 %tobool8.not, label %if.end.if.end18_crit_edge, label %if.then9

if.end.if.end18_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end18

if.then9:                                         ; preds = %if.end
  %count = getelementptr inbounds %struct.msm_port, ptr %dev_id, i32 0, i32 9, i32 6
  %9 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool10.not = icmp eq i32 %10, 0
  br i1 %tobool10.not, label %if.else, label %if.then11

if.then11:                                        ; preds = %if.then9
  %11 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %membase.i, align 4
  %add.ptr.i54 = getelementptr i8, ptr %12, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i54, i32 393216) #12, !srcloc !103
  %13 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %membase.i, align 4
  %add.ptr.i56 = getelementptr i8, ptr %14, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i56, i32 -2147483648) #12, !srcloc !103
  %15 = ptrtoint ptr %rx_dma to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %rx_dma, align 4
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %16, align 4
  %device_terminate_all.i = getelementptr inbounds %struct.dma_device, ptr %18, i32 0, i32 47
  %19 = ptrtoint ptr %device_terminate_all.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %device_terminate_all.i, align 4
  %tobool.not.i = icmp eq ptr %20, null
  br i1 %tobool.not.i, label %if.then11.if.end18_crit_edge, label %if.then.i

if.then11.if.end18_crit_edge:                     ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end18

if.then.i:                                        ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #14
  %call.i = tail call i32 %20(ptr noundef %16) #12
  br label %if.end18

if.else:                                          ; preds = %if.then9
  %is_uartdm = getelementptr inbounds %struct.msm_port, ptr %dev_id, i32 0, i32 5
  %21 = ptrtoint ptr %is_uartdm to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %is_uartdm, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool13.not = icmp eq i32 %22, 0
  %state.i59 = getelementptr inbounds %struct.uart_port, ptr %dev_id, i32 0, i32 30
  %23 = ptrtoint ptr %state.i59 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %state.i59, align 4
  %25 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %membase.i, align 4
  %add.ptr.i.i61 = getelementptr i8, ptr %26, i32 8
  %27 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i61) #12
  %28 = and i32 %27, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool.not.i62 = icmp eq i32 %28, 0
  br i1 %tobool13.not, label %if.else15, label %if.then14

if.then14:                                        ; preds = %if.else
  br i1 %tobool.not.i62, label %if.then14.if.end.i_crit_edge, label %if.then.i58

if.then14.if.end.i_crit_edge:                     ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i

if.then.i58:                                      ; preds = %if.then14
  %overrun.i = getelementptr inbounds %struct.uart_port, ptr %dev_id, i32 0, i32 31, i32 7
  %29 = ptrtoint ptr %overrun.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %overrun.i, align 4
  %inc.i = add i32 %30, 1
  store i32 %inc.i, ptr %overrun.i, align 4
  %tail.i.i = getelementptr inbounds %struct.tty_bufhead, ptr %24, i32 0, i32 8
  %31 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %tail.i.i, align 4
  %flags.i.i = getelementptr inbounds %struct.tty_buffer, ptr %32, i32 0, i32 5
  %33 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %flags.i.i, align 4
  %and.i.i = and i32 %34, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %land.lhs.true.i.i, label %if.then.i58.if.end12.i.i_crit_edge

if.then.i58.if.end12.i.i_crit_edge:               ; preds = %if.then.i58
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end12.i.i

land.lhs.true.i.i:                                ; preds = %if.then.i58
  %used.i.i = getelementptr inbounds %struct.tty_buffer, ptr %32, i32 0, i32 1
  %35 = ptrtoint ptr %used.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %used.i.i, align 4
  %size.i.i = getelementptr inbounds %struct.tty_buffer, ptr %32, i32 0, i32 2
  %37 = ptrtoint ptr %size.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %size.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %36, i32 %38)
  %cmp3.i.i = icmp slt i32 %36, %38
  br i1 %cmp3.i.i, label %if.end.i.i, label %land.lhs.true.i.i.if.end12.i.i_crit_edge

land.lhs.true.i.i.if.end12.i.i_crit_edge:         ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end12.i.i

if.end.i.i:                                       ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %data.i.i.i.i = getelementptr inbounds %struct.tty_buffer, ptr %32, i32 0, i32 6
  %add.ptr.i.i.i.i = getelementptr i8, ptr %data.i.i.i.i, i32 %36
  %add.ptr.i.i.i = getelementptr i8, ptr %add.ptr.i.i.i.i, i32 %38
  %39 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 4, ptr %add.ptr.i.i.i, align 1
  %40 = ptrtoint ptr %used.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %used.i.i, align 4
  %inc.i.i = add i32 %41, 1
  store i32 %inc.i.i, ptr %used.i.i, align 4
  %add.ptr.i1.i.i = getelementptr i8, ptr %data.i.i.i.i, i32 %41
  %42 = ptrtoint ptr %add.ptr.i1.i.i to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 0, ptr %add.ptr.i1.i.i, align 1
  br label %tty_insert_flip_char.exit.i

if.end12.i.i:                                     ; preds = %land.lhs.true.i.i.if.end12.i.i_crit_edge, %if.then.i58.if.end12.i.i_crit_edge
  %call13.i.i = tail call i32 @__tty_insert_flip_char(ptr noundef %24, i8 noundef zeroext 0, i8 noundef zeroext 4) #12
  br label %tty_insert_flip_char.exit.i

tty_insert_flip_char.exit.i:                      ; preds = %if.end12.i.i, %if.end.i.i
  %43 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %membase.i, align 4
  %add.ptr.i101.i = getelementptr i8, ptr %44, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i101.i, i32 805306368) #12, !srcloc !103
  br label %if.end.i

if.end.i:                                         ; preds = %tty_insert_flip_char.exit.i, %if.then14.if.end.i_crit_edge
  %and3.i = and i32 %3, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3.i)
  %tobool4.not.i = icmp eq i32 %and3.i, 0
  %45 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %membase.i, align 4
  br i1 %tobool4.not.i, label %if.else.i, label %if.then5.i

if.then5.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  %add.ptr.i103.i = getelementptr i8, ptr %46, i32 56
  %47 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i103.i) #12, !srcloc !102
  %48 = tail call i32 @llvm.bswap.i32(i32 %47) #12
  %old_snap_state.i = getelementptr inbounds %struct.msm_port, ptr %dev_id, i32 0, i32 6
  %49 = ptrtoint ptr %old_snap_state.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %old_snap_state.i, align 4
  %sub.i = sub i32 %48, %50
  store i32 0, ptr %old_snap_state.i, align 4
  br label %if.end10.i

if.else.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  %add.ptr.i105.i = getelementptr i8, ptr %46, i32 32
  %51 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i105.i) #12, !srcloc !102
  %52 = tail call i32 @llvm.bswap.i32(i32 %51) #12
  %mul.i = shl i32 %52, 2
  %old_snap_state9.i = getelementptr inbounds %struct.msm_port, ptr %dev_id, i32 0, i32 6
  %53 = ptrtoint ptr %old_snap_state9.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %old_snap_state9.i, align 4
  %add.i = add i32 %mul.i, %54
  store i32 %add.i, ptr %old_snap_state9.i, align 4
  br label %if.end10.i

if.end10.i:                                       ; preds = %if.else.i, %if.then5.i
  %count.0.i = phi i32 [ %sub.i, %if.then5.i ], [ %mul.i, %if.else.i ]
  %rx.i = getelementptr inbounds %struct.uart_port, ptr %dev_id, i32 0, i32 31, i32 4
  %55 = ptrtoint ptr %rx.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %rx.i, align 4
  %add12.i = add i32 %56, %count.0.i
  store i32 %add12.i, ptr %rx.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count.0.i)
  %cmp166.i = icmp sgt i32 %count.0.i, 0
  br i1 %cmp166.i, label %while.body.lr.ph.i, label %if.end10.i.while.end.i_crit_edge

if.end10.i.while.end.i_crit_edge:                 ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end.i

while.body.lr.ph.i:                               ; preds = %if.end10.i
  %break_detected.i = getelementptr inbounds %struct.msm_port, ptr %dev_id, i32 0, i32 7
  %brk.i = getelementptr inbounds %struct.uart_port, ptr %dev_id, i32 0, i32 31, i32 9
  %handle_break.i.i = getelementptr inbounds %struct.uart_port, ptr %dev_id, i32 0, i32 17
  %has_sysrq.i.i = getelementptr inbounds %struct.uart_port, ptr %dev_id, i32 0, i32 48
  %cons.i.i = getelementptr inbounds %struct.uart_port, ptr %dev_id, i32 0, i32 32
  %line.i.i = getelementptr inbounds %struct.uart_port, ptr %dev_id, i32 0, i32 41
  %sysrq.i.i = getelementptr inbounds %struct.uart_port, ptr %dev_id, i32 0, i32 46
  %flags.i112.i = getelementptr inbounds %struct.uart_port, ptr %dev_id, i32 0, i32 33
  %read_status_mask.i = getelementptr inbounds %struct.uart_port, ptr %dev_id, i32 0, i32 28
  %tail.i121.i = getelementptr inbounds %struct.tty_bufhead, ptr %24, i32 0, i32 8
  br label %while.body.i

while.body.i:                                     ; preds = %cleanup51.i.while.body.i_crit_edge, %while.body.lr.ph.i
  %count.1167.i = phi i32 [ %count.0.i, %while.body.lr.ph.i ], [ %sub50.i, %cleanup51.i.while.body.i_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buf.i) #12
  %57 = ptrtoint ptr %buf.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 -1, ptr %buf.i, align 4
  %58 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %membase.i, align 4
  %add.ptr.i107.i = getelementptr i8, ptr %59, i32 8
  %60 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i107.i) #12, !srcloc !102
  %61 = and i32 %60, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %61)
  %cmp15.i = icmp eq i32 %61, 0
  br i1 %cmp15.i, label %cleanup51.thread.i, label %if.end19.i

cleanup51.thread.i:                               ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #14
  %old_snap_state17.i = getelementptr inbounds %struct.msm_port, ptr %dev_id, i32 0, i32 6
  %62 = ptrtoint ptr %old_snap_state17.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %old_snap_state17.i, align 4
  %sub18.i = sub i32 %63, %count.1167.i
  store i32 %sub18.i, ptr %old_snap_state17.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i) #12
  br label %while.end.i

if.end19.i:                                       ; preds = %while.body.i
  %64 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %membase.i, align 4
  %add.ptr20.i = getelementptr i8, ptr %65, i32 112
  call void @__raw_readsl(ptr noundef %add.ptr20.i, ptr noundef nonnull %buf.i, i32 noundef 1) #12
  %66 = call i32 @llvm.umin.i32(i32 %count.1167.i, i32 4) #12
  br label %for.body.i

for.body.i:                                       ; preds = %cleanup.i.for.body.i_crit_edge, %if.end19.i
  %i.0163.i = phi i32 [ %inc49.i, %cleanup.i.for.body.i_crit_edge ], [ 0, %if.end19.i ]
  %67 = ptrtoint ptr %break_detected.i to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %break_detected.i, align 4, !range !114
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %68)
  %tobool24.not.i = icmp eq i8 %68, 0
  br i1 %tobool24.not.i, label %for.body.i.if.end35.i_crit_edge, label %land.lhs.true.i

for.body.i.if.end35.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end35.i

land.lhs.true.i:                                  ; preds = %for.body.i
  %arrayidx.i = getelementptr [4 x i8], ptr %buf.i, i32 0, i32 %i.0163.i
  %69 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %arrayidx.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %70)
  %cmp25.i = icmp eq i8 %70, 0
  br i1 %cmp25.i, label %if.then27.i, label %land.lhs.true.i.if.end35.i_crit_edge

land.lhs.true.i.if.end35.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end35.i

if.then27.i:                                      ; preds = %land.lhs.true.i
  %71 = ptrtoint ptr %brk.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %brk.i, align 4
  %inc29.i = add i32 %72, 1
  store i32 %inc29.i, ptr %brk.i, align 4
  %73 = ptrtoint ptr %break_detected.i to i32
  call void @__asan_store1_noabort(i32 %73)
  store i8 0, ptr %break_detected.i, align 4
  %74 = ptrtoint ptr %state.i59 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %state.i59, align 4
  %76 = ptrtoint ptr %handle_break.i.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %handle_break.i.i, align 4
  %tobool.not.i108.i = icmp eq ptr %77, null
  br i1 %tobool.not.i108.i, label %if.then27.i.if.end.i110.i_crit_edge, label %if.then.i109.i

if.then27.i.if.end.i110.i_crit_edge:              ; preds = %if.then27.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i110.i

if.then.i109.i:                                   ; preds = %if.then27.i
  call void @__sanitizer_cov_trace_pc() #14
  call void %77(ptr noundef %dev_id) #12
  br label %if.end.i110.i

if.end.i110.i:                                    ; preds = %if.then.i109.i, %if.then27.i.if.end.i110.i_crit_edge
  %78 = ptrtoint ptr %has_sysrq.i.i to i32
  call void @__asan_load1_noabort(i32 %78)
  %79 = load i8, ptr %has_sysrq.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %79)
  %tobool3.not.i.i = icmp eq i8 %79, 0
  br i1 %tobool3.not.i.i, label %if.end.i110.i.if.end15.i.i_crit_edge, label %land.lhs.true.i111.i

if.end.i110.i.if.end15.i.i_crit_edge:             ; preds = %if.end.i110.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end15.i.i

land.lhs.true.i111.i:                             ; preds = %if.end.i110.i
  %80 = ptrtoint ptr %cons.i.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %cons.i.i, align 4
  %tobool4.not.i.i = icmp eq ptr %81, null
  br i1 %tobool4.not.i.i, label %land.lhs.true.i111.i.if.end15.i.i_crit_edge, label %land.lhs.true5.i.i

land.lhs.true.i111.i.if.end15.i.i_crit_edge:      ; preds = %land.lhs.true.i111.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end15.i.i

land.lhs.true5.i.i:                               ; preds = %land.lhs.true.i111.i
  %index.i.i = getelementptr inbounds %struct.console, ptr %81, i32 0, i32 9
  %82 = ptrtoint ptr %index.i.i to i32
  call void @__asan_load2_noabort(i32 %82)
  %83 = load i16, ptr %index.i.i, align 2
  %conv7.i.i = sext i16 %83 to i32
  %84 = ptrtoint ptr %line.i.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %line.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %85, i32 %conv7.i.i)
  %cmp.i.i = icmp eq i32 %85, %conv7.i.i
  br i1 %cmp.i.i, label %if.then9.i.i, label %land.lhs.true5.i.i.if.end15.i.i_crit_edge

land.lhs.true5.i.i.if.end15.i.i_crit_edge:        ; preds = %land.lhs.true5.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end15.i.i

if.then9.i.i:                                     ; preds = %land.lhs.true5.i.i
  %86 = ptrtoint ptr %sysrq.i.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %sysrq.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %87)
  %tobool10.not.i.i = icmp eq i32 %87, 0
  br i1 %tobool10.not.i.i, label %uart_handle_break.exit.i, label %if.end13.i.i

if.end13.i.i:                                     ; preds = %if.then9.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %88 = ptrtoint ptr %sysrq.i.i to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 0, ptr %sysrq.i.i, align 4
  br label %if.end15.i.i

if.end15.i.i:                                     ; preds = %if.end13.i.i, %land.lhs.true5.i.i.if.end15.i.i_crit_edge, %land.lhs.true.i111.i.if.end15.i.i_crit_edge, %if.end.i110.i.if.end15.i.i_crit_edge
  %89 = ptrtoint ptr %flags.i112.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %flags.i112.i, align 4
  %and.i113.i = and i32 %90, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i113.i)
  %tobool16.not.i.i = icmp eq i32 %and.i113.i, 0
  br i1 %tobool16.not.i.i, label %if.end15.i.i.if.end35.i_crit_edge, label %if.then17.i.i

if.end15.i.i.if.end35.i_crit_edge:                ; preds = %if.end15.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end35.i

if.then17.i.i:                                    ; preds = %if.end15.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %tty.i.i = getelementptr inbounds %struct.tty_port, ptr %75, i32 0, i32 1
  %91 = ptrtoint ptr %tty.i.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %tty.i.i, align 4
  call void @do_SAK(ptr noundef %92) #12
  br label %if.end35.i

uart_handle_break.exit.i:                         ; preds = %if.then9.i.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %93 = load volatile i32, ptr @jiffies, align 128
  %add.i.i = add i32 %93, 500
  %94 = ptrtoint ptr %sysrq.i.i to i32
  call void @__asan_store4_noabort(i32 %94)
  store i32 %add.i.i, ptr %sysrq.i.i, align 4
  br label %cleanup.i

if.end35.i:                                       ; preds = %if.then17.i.i, %if.end15.i.i.if.end35.i_crit_edge, %land.lhs.true.i.if.end35.i_crit_edge, %for.body.i.if.end35.i_crit_edge
  %flag.0.i = phi i8 [ 0, %land.lhs.true.i.if.end35.i_crit_edge ], [ 0, %for.body.i.if.end35.i_crit_edge ], [ 1, %if.then17.i.i ], [ 1, %if.end15.i.i.if.end35.i_crit_edge ]
  %95 = ptrtoint ptr %read_status_mask.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %read_status_mask.i, align 4
  %and36.i = and i32 %96, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and36.i)
  %tobool37.not.i = icmp eq i32 %and36.i, 0
  %spec.select.i = select i1 %tobool37.not.i, i8 0, i8 %flag.0.i
  call void @_raw_spin_unlock(ptr noundef %dev_id) #12
  %arrayidx40.i = getelementptr [4 x i8], ptr %buf.i, i32 0, i32 %i.0163.i
  %97 = ptrtoint ptr %arrayidx40.i to i32
  call void @__asan_load1_noabort(i32 %97)
  %98 = load i8, ptr %arrayidx40.i, align 1
  %conv41.i = zext i8 %98 to i32
  %99 = ptrtoint ptr %sysrq.i.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %sysrq.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %100)
  %tobool.not.i115.i = icmp eq i32 %100, 0
  br i1 %tobool.not.i115.i, label %if.end35.i.if.then45.i_crit_edge, label %if.end.i116.i

if.end35.i.if.then45.i_crit_edge:                 ; preds = %if.end35.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then45.i

if.end.i116.i:                                    ; preds = %if.end35.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %98)
  %tobool1.not.i.i = icmp eq i8 %98, 0
  br i1 %tobool1.not.i.i, label %if.end.i116.i.uart_handle_sysrq_char.exit.thread155.i_crit_edge, label %land.lhs.true.i118.i

if.end.i116.i.uart_handle_sysrq_char.exit.thread155.i_crit_edge: ; preds = %if.end.i116.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %uart_handle_sysrq_char.exit.thread155.i

land.lhs.true.i118.i:                             ; preds = %if.end.i116.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %101 = load volatile i32, ptr @jiffies, align 128
  %sub.i.i = sub i32 %101, %100
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i.i)
  %cmp.i117.i = icmp slt i32 %sub.i.i, 0
  br i1 %cmp.i117.i, label %if.then3.i.i, label %land.lhs.true.i118.i.uart_handle_sysrq_char.exit.thread155.i_crit_edge

land.lhs.true.i118.i.uart_handle_sysrq_char.exit.thread155.i_crit_edge: ; preds = %land.lhs.true.i118.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %uart_handle_sysrq_char.exit.thread155.i

if.then3.i.i:                                     ; preds = %land.lhs.true.i118.i
  %call.i.i = call i32 @sysrq_mask() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool4.not.i119.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool4.not.i119.i, label %if.end7.i.i, label %uart_handle_sysrq_char.exit.i

if.end7.i.i:                                      ; preds = %if.then3.i.i
  %call8.i.i = call zeroext i1 @uart_try_toggle_sysrq(ptr noundef %dev_id, i32 noundef %conv41.i) #12
  br i1 %call8.i.i, label %uart_handle_sysrq_char.exit.thread152.i, label %if.end7.i.i.uart_handle_sysrq_char.exit.thread155.i_crit_edge

if.end7.i.i.uart_handle_sysrq_char.exit.thread155.i_crit_edge: ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %uart_handle_sysrq_char.exit.thread155.i

uart_handle_sysrq_char.exit.thread152.i:          ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @_raw_spin_lock(ptr noundef %dev_id) #12
  br label %cleanup.i

uart_handle_sysrq_char.exit.thread155.i:          ; preds = %if.end7.i.i.uart_handle_sysrq_char.exit.thread155.i_crit_edge, %land.lhs.true.i118.i.uart_handle_sysrq_char.exit.thread155.i_crit_edge, %if.end.i116.i.uart_handle_sysrq_char.exit.thread155.i_crit_edge
  %102 = ptrtoint ptr %sysrq.i.i to i32
  call void @__asan_store4_noabort(i32 %102)
  store i32 0, ptr %sysrq.i.i, align 4
  br label %if.then45.i

uart_handle_sysrq_char.exit.i:                    ; preds = %if.then3.i.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @handle_sysrq(i32 noundef %conv41.i) #12
  %103 = ptrtoint ptr %sysrq.i.i to i32
  call void @__asan_store4_noabort(i32 %103)
  store i32 0, ptr %sysrq.i.i, align 4
  call void @_raw_spin_lock(ptr noundef %dev_id) #12
  br label %cleanup.i

if.then45.i:                                      ; preds = %uart_handle_sysrq_char.exit.thread155.i, %if.end35.i.if.then45.i_crit_edge
  call void @_raw_spin_lock(ptr noundef %dev_id) #12
  %104 = ptrtoint ptr %arrayidx40.i to i32
  call void @__asan_load1_noabort(i32 %104)
  %105 = load i8, ptr %arrayidx40.i, align 1
  %106 = ptrtoint ptr %tail.i121.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %tail.i121.i, align 4
  %flags.i122.i = getelementptr inbounds %struct.tty_buffer, ptr %107, i32 0, i32 5
  %108 = ptrtoint ptr %flags.i122.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %flags.i122.i, align 4
  %and.i123.i = and i32 %109, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i123.i)
  %tobool.not.i124.i = icmp eq i32 %and.i123.i, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %spec.select.i)
  %cmp.i125.i = icmp eq i8 %spec.select.i, 0
  %110 = or i1 %cmp.i125.i, %tobool.not.i124.i
  br i1 %110, label %land.lhs.true.i129.i, label %if.then45.i.if.end12.i140.i_crit_edge

if.then45.i.if.end12.i140.i_crit_edge:            ; preds = %if.then45.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end12.i140.i

land.lhs.true.i129.i:                             ; preds = %if.then45.i
  %used.i126.i = getelementptr inbounds %struct.tty_buffer, ptr %107, i32 0, i32 1
  %111 = ptrtoint ptr %used.i126.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %used.i126.i, align 4
  %size.i127.i = getelementptr inbounds %struct.tty_buffer, ptr %107, i32 0, i32 2
  %113 = ptrtoint ptr %size.i127.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %size.i127.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %112, i32 %114)
  %cmp3.i128.i = icmp slt i32 %112, %114
  br i1 %cmp3.i128.i, label %if.then.i130.i, label %land.lhs.true.i129.i.if.end12.i140.i_crit_edge

land.lhs.true.i129.i.if.end12.i140.i_crit_edge:   ; preds = %land.lhs.true.i129.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end12.i140.i

if.then.i130.i:                                   ; preds = %land.lhs.true.i129.i
  br i1 %tobool.not.i124.i, label %if.then8.i134.i, label %if.then.i130.i.if.end.i138.i_crit_edge

if.then.i130.i.if.end.i138.i_crit_edge:           ; preds = %if.then.i130.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i138.i

if.then8.i134.i:                                  ; preds = %if.then.i130.i
  call void @__sanitizer_cov_trace_pc() #14
  %data.i.i.i131.i = getelementptr inbounds %struct.tty_buffer, ptr %107, i32 0, i32 6
  %add.ptr.i.i.i132.i = getelementptr i8, ptr %data.i.i.i131.i, i32 %112
  %add.ptr.i.i133.i = getelementptr i8, ptr %add.ptr.i.i.i132.i, i32 %114
  %115 = ptrtoint ptr %add.ptr.i.i133.i to i32
  call void @__asan_store1_noabort(i32 %115)
  store i8 %spec.select.i, ptr %add.ptr.i.i133.i, align 1
  br label %if.end.i138.i

if.end.i138.i:                                    ; preds = %if.then8.i134.i, %if.then.i130.i.if.end.i138.i_crit_edge
  %116 = ptrtoint ptr %used.i126.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %used.i126.i, align 4
  %inc.i135.i = add i32 %117, 1
  store i32 %inc.i135.i, ptr %used.i126.i, align 4
  %data.i.i136.i = getelementptr inbounds %struct.tty_buffer, ptr %107, i32 0, i32 6
  %add.ptr.i1.i137.i = getelementptr i8, ptr %data.i.i136.i, i32 %117
  %118 = ptrtoint ptr %add.ptr.i1.i137.i to i32
  call void @__asan_store1_noabort(i32 %118)
  store i8 %105, ptr %add.ptr.i1.i137.i, align 1
  br label %cleanup.i

if.end12.i140.i:                                  ; preds = %land.lhs.true.i129.i.if.end12.i140.i_crit_edge, %if.then45.i.if.end12.i140.i_crit_edge
  %call13.i139.i = call i32 @__tty_insert_flip_char(ptr noundef %24, i8 noundef zeroext %105, i8 noundef zeroext %spec.select.i) #12
  br label %cleanup.i

cleanup.i:                                        ; preds = %if.end12.i140.i, %if.end.i138.i, %uart_handle_sysrq_char.exit.i, %uart_handle_sysrq_char.exit.thread152.i, %uart_handle_break.exit.i
  %inc49.i = add nuw nsw i32 %i.0163.i, 1
  %exitcond.not.i = icmp eq i32 %inc49.i, %66
  br i1 %exitcond.not.i, label %cleanup51.i, label %cleanup.i.for.body.i_crit_edge

cleanup.i.for.body.i_crit_edge:                   ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i

cleanup51.i:                                      ; preds = %cleanup.i
  %sub50.i = sub i32 %count.1167.i, %66
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i) #12
  %cmp.i = icmp sgt i32 %sub50.i, 0
  br i1 %cmp.i, label %cleanup51.i.while.body.i_crit_edge, label %cleanup51.i.while.end.i_crit_edge

cleanup51.i.while.end.i_crit_edge:                ; preds = %cleanup51.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end.i

cleanup51.i.while.body.i_crit_edge:               ; preds = %cleanup51.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body.i

while.end.i:                                      ; preds = %cleanup51.i.while.end.i_crit_edge, %cleanup51.thread.i, %if.end10.i.while.end.i_crit_edge
  call void @tty_flip_buffer_push(ptr noundef %24) #12
  br i1 %tobool4.not.i, label %while.end.i.msm_handle_rx_dm.exit_crit_edge, label %if.then59.i

while.end.i.msm_handle_rx_dm.exit_crit_edge:      ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %msm_handle_rx_dm.exit

if.then59.i:                                      ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #14
  %119 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %membase.i, align 4
  %add.ptr.i143.i = getelementptr i8, ptr %120, i32 16
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i143.i, i32 -2147483648) #12, !srcloc !103
  br label %msm_handle_rx_dm.exit

msm_handle_rx_dm.exit:                            ; preds = %if.then59.i, %while.end.i.msm_handle_rx_dm.exit_crit_edge
  %121 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %membase.i, align 4
  %add.ptr.i145.i = getelementptr i8, ptr %122, i32 52
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i145.i, i32 -256) #12, !srcloc !103
  %123 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %membase.i, align 4
  %add.ptr.i147.i = getelementptr i8, ptr %124, i32 16
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i147.i, i32 327680) #12, !srcloc !103
  br label %if.end18

if.else15:                                        ; preds = %if.else
  br i1 %tobool.not.i62, label %if.else15.if.end.i83_crit_edge, label %if.then.i69

if.else15.if.end.i83_crit_edge:                   ; preds = %if.else15
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i83

if.then.i69:                                      ; preds = %if.else15
  %overrun.i63 = getelementptr inbounds %struct.uart_port, ptr %dev_id, i32 0, i32 31, i32 7
  %125 = ptrtoint ptr %overrun.i63 to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %overrun.i63, align 4
  %inc.i64 = add i32 %126, 1
  store i32 %inc.i64, ptr %overrun.i63, align 4
  %tail.i.i65 = getelementptr inbounds %struct.tty_bufhead, ptr %24, i32 0, i32 8
  %127 = ptrtoint ptr %tail.i.i65 to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %tail.i.i65, align 4
  %flags.i.i66 = getelementptr inbounds %struct.tty_buffer, ptr %128, i32 0, i32 5
  %129 = ptrtoint ptr %flags.i.i66 to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %flags.i.i66, align 4
  %and.i.i67 = and i32 %130, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i67)
  %tobool.not.i.i68 = icmp eq i32 %and.i.i67, 0
  br i1 %tobool.not.i.i68, label %land.lhs.true.i.i73, label %if.then.i69.if.end12.i.i81_crit_edge

if.then.i69.if.end12.i.i81_crit_edge:             ; preds = %if.then.i69
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end12.i.i81

land.lhs.true.i.i73:                              ; preds = %if.then.i69
  %used.i.i70 = getelementptr inbounds %struct.tty_buffer, ptr %128, i32 0, i32 1
  %131 = ptrtoint ptr %used.i.i70 to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load i32, ptr %used.i.i70, align 4
  %size.i.i71 = getelementptr inbounds %struct.tty_buffer, ptr %128, i32 0, i32 2
  %133 = ptrtoint ptr %size.i.i71 to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %size.i.i71, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %132, i32 %134)
  %cmp3.i.i72 = icmp slt i32 %132, %134
  br i1 %cmp3.i.i72, label %if.end.i.i79, label %land.lhs.true.i.i73.if.end12.i.i81_crit_edge

land.lhs.true.i.i73.if.end12.i.i81_crit_edge:     ; preds = %land.lhs.true.i.i73
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end12.i.i81

if.end.i.i79:                                     ; preds = %land.lhs.true.i.i73
  call void @__sanitizer_cov_trace_pc() #14
  %data.i.i.i.i74 = getelementptr inbounds %struct.tty_buffer, ptr %128, i32 0, i32 6
  %add.ptr.i.i.i.i75 = getelementptr i8, ptr %data.i.i.i.i74, i32 %132
  %add.ptr.i.i.i76 = getelementptr i8, ptr %add.ptr.i.i.i.i75, i32 %134
  %135 = ptrtoint ptr %add.ptr.i.i.i76 to i32
  call void @__asan_store1_noabort(i32 %135)
  store i8 4, ptr %add.ptr.i.i.i76, align 1
  %136 = ptrtoint ptr %used.i.i70 to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load i32, ptr %used.i.i70, align 4
  %inc.i.i77 = add i32 %137, 1
  store i32 %inc.i.i77, ptr %used.i.i70, align 4
  %add.ptr.i1.i.i78 = getelementptr i8, ptr %data.i.i.i.i74, i32 %137
  %138 = ptrtoint ptr %add.ptr.i1.i.i78 to i32
  call void @__asan_store1_noabort(i32 %138)
  store i8 0, ptr %add.ptr.i1.i.i78, align 1
  br label %tty_insert_flip_char.exit.i82

if.end12.i.i81:                                   ; preds = %land.lhs.true.i.i73.if.end12.i.i81_crit_edge, %if.then.i69.if.end12.i.i81_crit_edge
  %call13.i.i80 = tail call i32 @__tty_insert_flip_char(ptr noundef %24, i8 noundef zeroext 0, i8 noundef zeroext 4) #12
  br label %tty_insert_flip_char.exit.i82

tty_insert_flip_char.exit.i82:                    ; preds = %if.end12.i.i81, %if.end.i.i79
  %139 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %membase.i, align 4
  %add.ptr.i65.i = getelementptr i8, ptr %140, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i65.i, i32 805306368) #12, !srcloc !103
  br label %if.end.i83

if.end.i83:                                       ; preds = %tty_insert_flip_char.exit.i82, %if.else15.if.end.i83_crit_edge
  %141 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %membase.i, align 4
  %add.ptr.i67114.i = getelementptr i8, ptr %142, i32 8
  %143 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i67114.i) #12, !srcloc !102
  %144 = tail call i32 @llvm.bswap.i32(i32 %143) #12
  %and4115.i = and i32 %144, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4115.i)
  %tobool5.not116.i = icmp eq i32 %and4115.i, 0
  br i1 %tobool5.not116.i, label %if.end.i83.msm_handle_rx.exit_crit_edge, label %while.body.lr.ph.i92

if.end.i83.msm_handle_rx.exit_crit_edge:          ; preds = %if.end.i83
  call void @__sanitizer_cov_trace_pc() #14
  br label %msm_handle_rx.exit

while.body.lr.ph.i92:                             ; preds = %if.end.i83
  %brk.i84 = getelementptr inbounds %struct.uart_port, ptr %dev_id, i32 0, i32 31, i32 9
  %handle_break.i.i85 = getelementptr inbounds %struct.uart_port, ptr %dev_id, i32 0, i32 17
  %has_sysrq.i.i86 = getelementptr inbounds %struct.uart_port, ptr %dev_id, i32 0, i32 48
  %cons.i.i87 = getelementptr inbounds %struct.uart_port, ptr %dev_id, i32 0, i32 32
  %line.i.i88 = getelementptr inbounds %struct.uart_port, ptr %dev_id, i32 0, i32 41
  %sysrq.i.i89 = getelementptr inbounds %struct.uart_port, ptr %dev_id, i32 0, i32 46
  %flags.i74.i = getelementptr inbounds %struct.uart_port, ptr %dev_id, i32 0, i32 33
  %frame.i = getelementptr inbounds %struct.uart_port, ptr %dev_id, i32 0, i32 31, i32 6
  %rx.i90 = getelementptr inbounds %struct.uart_port, ptr %dev_id, i32 0, i32 31, i32 4
  %read_status_mask.i91 = getelementptr inbounds %struct.uart_port, ptr %dev_id, i32 0, i32 28
  %tail.i83.i = getelementptr inbounds %struct.tty_bufhead, ptr %24, i32 0, i32 8
  br label %while.body.i93

while.body.i93:                                   ; preds = %cleanup.i118.while.body.i93_crit_edge, %while.body.lr.ph.i92
  %145 = phi i32 [ %144, %while.body.lr.ph.i92 ], [ %203, %cleanup.i118.while.body.i93_crit_edge ]
  %146 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %membase.i, align 4
  %add.ptr.i69.i = getelementptr i8, ptr %147, i32 12
  %148 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i69.i) #12, !srcloc !102
  %149 = tail call i32 @llvm.bswap.i32(i32 %148) #12
  %and7.i = and i32 %145, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7.i)
  %tobool8.not.i = icmp eq i32 %and7.i, 0
  br i1 %tobool8.not.i, label %if.else.i109, label %if.then9.i

if.then9.i:                                       ; preds = %while.body.i93
  %150 = ptrtoint ptr %brk.i84 to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load i32, ptr %brk.i84, align 4
  %inc11.i = add i32 %151, 1
  store i32 %inc11.i, ptr %brk.i84, align 4
  %152 = ptrtoint ptr %state.i59 to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %state.i59, align 4
  %154 = ptrtoint ptr %handle_break.i.i85 to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %handle_break.i.i85, align 4
  %tobool.not.i70.i = icmp eq ptr %155, null
  br i1 %tobool.not.i70.i, label %if.then9.i.if.end.i72.i_crit_edge, label %if.then.i71.i

if.then9.i.if.end.i72.i_crit_edge:                ; preds = %if.then9.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i72.i

if.then.i71.i:                                    ; preds = %if.then9.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void %155(ptr noundef %dev_id) #12
  br label %if.end.i72.i

if.end.i72.i:                                     ; preds = %if.then.i71.i, %if.then9.i.if.end.i72.i_crit_edge
  %156 = ptrtoint ptr %has_sysrq.i.i86 to i32
  call void @__asan_load1_noabort(i32 %156)
  %157 = load i8, ptr %has_sysrq.i.i86, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %157)
  %tobool3.not.i.i94 = icmp eq i8 %157, 0
  br i1 %tobool3.not.i.i94, label %if.end.i72.i.if.end15.i.i104_crit_edge, label %land.lhs.true.i73.i

if.end.i72.i.if.end15.i.i104_crit_edge:           ; preds = %if.end.i72.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end15.i.i104

land.lhs.true.i73.i:                              ; preds = %if.end.i72.i
  %158 = ptrtoint ptr %cons.i.i87 to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %cons.i.i87, align 4
  %tobool4.not.i.i95 = icmp eq ptr %159, null
  br i1 %tobool4.not.i.i95, label %land.lhs.true.i73.i.if.end15.i.i104_crit_edge, label %land.lhs.true5.i.i99

land.lhs.true.i73.i.if.end15.i.i104_crit_edge:    ; preds = %land.lhs.true.i73.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end15.i.i104

land.lhs.true5.i.i99:                             ; preds = %land.lhs.true.i73.i
  %index.i.i96 = getelementptr inbounds %struct.console, ptr %159, i32 0, i32 9
  %160 = ptrtoint ptr %index.i.i96 to i32
  call void @__asan_load2_noabort(i32 %160)
  %161 = load i16, ptr %index.i.i96, align 2
  %conv7.i.i97 = sext i16 %161 to i32
  %162 = ptrtoint ptr %line.i.i88 to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load i32, ptr %line.i.i88, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %163, i32 %conv7.i.i97)
  %cmp.i.i98 = icmp eq i32 %163, %conv7.i.i97
  br i1 %cmp.i.i98, label %if.then9.i.i101, label %land.lhs.true5.i.i99.if.end15.i.i104_crit_edge

land.lhs.true5.i.i99.if.end15.i.i104_crit_edge:   ; preds = %land.lhs.true5.i.i99
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end15.i.i104

if.then9.i.i101:                                  ; preds = %land.lhs.true5.i.i99
  %164 = ptrtoint ptr %sysrq.i.i89 to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load i32, ptr %sysrq.i.i89, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %165)
  %tobool10.not.i.i100 = icmp eq i32 %165, 0
  br i1 %tobool10.not.i.i100, label %uart_handle_break.exit.i108, label %if.end13.i.i102

if.end13.i.i102:                                  ; preds = %if.then9.i.i101
  call void @__sanitizer_cov_trace_pc() #14
  %166 = ptrtoint ptr %sysrq.i.i89 to i32
  call void @__asan_store4_noabort(i32 %166)
  store i32 0, ptr %sysrq.i.i89, align 4
  br label %if.end15.i.i104

if.end15.i.i104:                                  ; preds = %if.end13.i.i102, %land.lhs.true5.i.i99.if.end15.i.i104_crit_edge, %land.lhs.true.i73.i.if.end15.i.i104_crit_edge, %if.end.i72.i.if.end15.i.i104_crit_edge
  %167 = ptrtoint ptr %flags.i74.i to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load i32, ptr %flags.i74.i, align 4
  %and.i75.i = and i32 %168, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i75.i)
  %tobool16.not.i.i103 = icmp eq i32 %and.i75.i, 0
  br i1 %tobool16.not.i.i103, label %if.end15.i.i104.if.end25.i_crit_edge, label %if.then17.i.i106

if.end15.i.i104.if.end25.i_crit_edge:             ; preds = %if.end15.i.i104
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end25.i

if.then17.i.i106:                                 ; preds = %if.end15.i.i104
  call void @__sanitizer_cov_trace_pc() #14
  %tty.i.i105 = getelementptr inbounds %struct.tty_port, ptr %153, i32 0, i32 1
  %169 = ptrtoint ptr %tty.i.i105 to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load ptr, ptr %tty.i.i105, align 4
  tail call void @do_SAK(ptr noundef %170) #12
  br label %if.end25.i

uart_handle_break.exit.i108:                      ; preds = %if.then9.i.i101
  call void @__sanitizer_cov_trace_pc() #14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %171 = load volatile i32, ptr @jiffies, align 128
  %add.i.i107 = add i32 %171, 500
  %172 = ptrtoint ptr %sysrq.i.i89 to i32
  call void @__asan_store4_noabort(i32 %172)
  store i32 %add.i.i107, ptr %sysrq.i.i89, align 4
  br label %cleanup.i118

if.else.i109:                                     ; preds = %while.body.i93
  %and16.i = and i32 %145, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16.i)
  %tobool17.not.i = icmp eq i32 %and16.i, 0
  br i1 %tobool17.not.i, label %if.else21.i, label %if.then18.i

if.then18.i:                                      ; preds = %if.else.i109
  call void @__sanitizer_cov_trace_pc() #14
  %173 = ptrtoint ptr %frame.i to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load i32, ptr %frame.i, align 4
  %inc20.i = add i32 %174, 1
  store i32 %inc20.i, ptr %frame.i, align 4
  br label %if.end25.i

if.else21.i:                                      ; preds = %if.else.i109
  call void @__sanitizer_cov_trace_pc() #14
  %175 = ptrtoint ptr %rx.i90 to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load i32, ptr %rx.i90, align 4
  %inc23.i = add i32 %176, 1
  store i32 %inc23.i, ptr %rx.i90, align 4
  br label %if.end25.i

if.end25.i:                                       ; preds = %if.else21.i, %if.then18.i, %if.then17.i.i106, %if.end15.i.i104.if.end25.i_crit_edge
  %177 = ptrtoint ptr %read_status_mask.i91 to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load i32, ptr %read_status_mask.i91, align 4
  %and26.i = and i32 %178, %145
  %and27.i = and i32 %and26.i, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and27.i)
  %tobool28.not.i = icmp eq i32 %and27.i, 0
  %179 = trunc i32 %and26.i to i8
  %180 = lshr i8 %179, 4
  %181 = and i8 %180, 2
  %flag.0.i110 = select i1 %tobool28.not.i, i8 %181, i8 1
  tail call void @_raw_spin_unlock(ptr noundef %dev_id) #12
  %182 = ptrtoint ptr %sysrq.i.i89 to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load i32, ptr %sysrq.i.i89, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %183)
  %tobool.not.i77.i = icmp eq i32 %183, 0
  br i1 %tobool.not.i77.i, label %if.end25.i.if.then39.i_crit_edge, label %if.end.i78.i

if.end25.i.if.then39.i_crit_edge:                 ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then39.i

if.end.i78.i:                                     ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %148)
  %tobool1.not.i.i111 = icmp eq i32 %148, 0
  br i1 %tobool1.not.i.i111, label %if.end.i78.i.uart_handle_sysrq_char.exit.thread111.i_crit_edge, label %land.lhs.true.i80.i

if.end.i78.i.uart_handle_sysrq_char.exit.thread111.i_crit_edge: ; preds = %if.end.i78.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %uart_handle_sysrq_char.exit.thread111.i

land.lhs.true.i80.i:                              ; preds = %if.end.i78.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %184 = load volatile i32, ptr @jiffies, align 128
  %sub.i.i112 = sub i32 %184, %183
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i.i112)
  %cmp.i79.i = icmp slt i32 %sub.i.i112, 0
  br i1 %cmp.i79.i, label %if.then3.i.i114, label %land.lhs.true.i80.i.uart_handle_sysrq_char.exit.thread111.i_crit_edge

land.lhs.true.i80.i.uart_handle_sysrq_char.exit.thread111.i_crit_edge: ; preds = %land.lhs.true.i80.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %uart_handle_sysrq_char.exit.thread111.i

if.then3.i.i114:                                  ; preds = %land.lhs.true.i80.i
  %call.i.i113 = tail call i32 @sysrq_mask() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i113)
  %tobool4.not.i81.i = icmp eq i32 %call.i.i113, 0
  br i1 %tobool4.not.i81.i, label %if.end7.i.i116, label %uart_handle_sysrq_char.exit.i117

if.end7.i.i116:                                   ; preds = %if.then3.i.i114
  %call8.i.i115 = tail call zeroext i1 @uart_try_toggle_sysrq(ptr noundef %dev_id, i32 noundef %149) #12
  br i1 %call8.i.i115, label %uart_handle_sysrq_char.exit.thread108.i, label %if.end7.i.i116.uart_handle_sysrq_char.exit.thread111.i_crit_edge

if.end7.i.i116.uart_handle_sysrq_char.exit.thread111.i_crit_edge: ; preds = %if.end7.i.i116
  call void @__sanitizer_cov_trace_pc() #14
  br label %uart_handle_sysrq_char.exit.thread111.i

uart_handle_sysrq_char.exit.thread108.i:          ; preds = %if.end7.i.i116
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @_raw_spin_lock(ptr noundef %dev_id) #12
  br label %cleanup.i118

uart_handle_sysrq_char.exit.thread111.i:          ; preds = %if.end7.i.i116.uart_handle_sysrq_char.exit.thread111.i_crit_edge, %land.lhs.true.i80.i.uart_handle_sysrq_char.exit.thread111.i_crit_edge, %if.end.i78.i.uart_handle_sysrq_char.exit.thread111.i_crit_edge
  %185 = ptrtoint ptr %sysrq.i.i89 to i32
  call void @__asan_store4_noabort(i32 %185)
  store i32 0, ptr %sysrq.i.i89, align 4
  br label %if.then39.i

uart_handle_sysrq_char.exit.i117:                 ; preds = %if.then3.i.i114
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @handle_sysrq(i32 noundef %149) #12
  %186 = ptrtoint ptr %sysrq.i.i89 to i32
  call void @__asan_store4_noabort(i32 %186)
  store i32 0, ptr %sysrq.i.i89, align 4
  tail call void @_raw_spin_lock(ptr noundef %dev_id) #12
  br label %cleanup.i118

if.then39.i:                                      ; preds = %uart_handle_sysrq_char.exit.thread111.i, %if.end25.i.if.then39.i_crit_edge
  tail call void @_raw_spin_lock(ptr noundef %dev_id) #12
  %conv.i = trunc i32 %149 to i8
  %187 = ptrtoint ptr %tail.i83.i to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load ptr, ptr %tail.i83.i, align 4
  %flags.i84.i = getelementptr inbounds %struct.tty_buffer, ptr %188, i32 0, i32 5
  %189 = ptrtoint ptr %flags.i84.i to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load i32, ptr %flags.i84.i, align 4
  %and.i85.i = and i32 %190, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i85.i)
  %tobool.not.i86.i = icmp eq i32 %and.i85.i, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %flag.0.i110)
  %cmp.i87.i = icmp eq i8 %flag.0.i110, 0
  %191 = or i1 %cmp.i87.i, %tobool.not.i86.i
  br i1 %191, label %land.lhs.true.i91.i, label %if.then39.i.if.end12.i102.i_crit_edge

if.then39.i.if.end12.i102.i_crit_edge:            ; preds = %if.then39.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end12.i102.i

land.lhs.true.i91.i:                              ; preds = %if.then39.i
  %used.i88.i = getelementptr inbounds %struct.tty_buffer, ptr %188, i32 0, i32 1
  %192 = ptrtoint ptr %used.i88.i to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load i32, ptr %used.i88.i, align 4
  %size.i89.i = getelementptr inbounds %struct.tty_buffer, ptr %188, i32 0, i32 2
  %194 = ptrtoint ptr %size.i89.i to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load i32, ptr %size.i89.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %193, i32 %195)
  %cmp3.i90.i = icmp slt i32 %193, %195
  br i1 %cmp3.i90.i, label %if.then.i92.i, label %land.lhs.true.i91.i.if.end12.i102.i_crit_edge

land.lhs.true.i91.i.if.end12.i102.i_crit_edge:    ; preds = %land.lhs.true.i91.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end12.i102.i

if.then.i92.i:                                    ; preds = %land.lhs.true.i91.i
  br i1 %tobool.not.i86.i, label %if.then8.i96.i, label %if.then.i92.i.if.end.i100.i_crit_edge

if.then.i92.i.if.end.i100.i_crit_edge:            ; preds = %if.then.i92.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i100.i

if.then8.i96.i:                                   ; preds = %if.then.i92.i
  call void @__sanitizer_cov_trace_pc() #14
  %data.i.i.i93.i = getelementptr inbounds %struct.tty_buffer, ptr %188, i32 0, i32 6
  %add.ptr.i.i.i94.i = getelementptr i8, ptr %data.i.i.i93.i, i32 %193
  %add.ptr.i.i95.i = getelementptr i8, ptr %add.ptr.i.i.i94.i, i32 %195
  %196 = ptrtoint ptr %add.ptr.i.i95.i to i32
  call void @__asan_store1_noabort(i32 %196)
  store i8 %flag.0.i110, ptr %add.ptr.i.i95.i, align 1
  br label %if.end.i100.i

if.end.i100.i:                                    ; preds = %if.then8.i96.i, %if.then.i92.i.if.end.i100.i_crit_edge
  %197 = ptrtoint ptr %used.i88.i to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load i32, ptr %used.i88.i, align 4
  %inc.i97.i = add i32 %198, 1
  store i32 %inc.i97.i, ptr %used.i88.i, align 4
  %data.i.i98.i = getelementptr inbounds %struct.tty_buffer, ptr %188, i32 0, i32 6
  %add.ptr.i1.i99.i = getelementptr i8, ptr %data.i.i98.i, i32 %198
  %199 = ptrtoint ptr %add.ptr.i1.i99.i to i32
  call void @__asan_store1_noabort(i32 %199)
  store i8 %conv.i, ptr %add.ptr.i1.i99.i, align 1
  br label %cleanup.i118

if.end12.i102.i:                                  ; preds = %land.lhs.true.i91.i.if.end12.i102.i_crit_edge, %if.then39.i.if.end12.i102.i_crit_edge
  %call13.i101.i = tail call i32 @__tty_insert_flip_char(ptr noundef %24, i8 noundef zeroext %conv.i, i8 noundef zeroext %flag.0.i110) #12
  br label %cleanup.i118

cleanup.i118:                                     ; preds = %if.end12.i102.i, %if.end.i100.i, %uart_handle_sysrq_char.exit.i117, %uart_handle_sysrq_char.exit.thread108.i, %uart_handle_break.exit.i108
  %200 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load ptr, ptr %membase.i, align 4
  %add.ptr.i67.i = getelementptr i8, ptr %201, i32 8
  %202 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i67.i) #12, !srcloc !102
  %203 = tail call i32 @llvm.bswap.i32(i32 %202) #12
  %and4.i = and i32 %203, 1
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool5.not.i, label %cleanup.i118.msm_handle_rx.exit_crit_edge, label %cleanup.i118.while.body.i93_crit_edge

cleanup.i118.while.body.i93_crit_edge:            ; preds = %cleanup.i118
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body.i93

cleanup.i118.msm_handle_rx.exit_crit_edge:        ; preds = %cleanup.i118
  call void @__sanitizer_cov_trace_pc() #14
  br label %msm_handle_rx.exit

msm_handle_rx.exit:                               ; preds = %cleanup.i118.msm_handle_rx.exit_crit_edge, %if.end.i83.msm_handle_rx.exit_crit_edge
  tail call void @tty_flip_buffer_push(ptr noundef %24) #12
  br label %if.end18

if.end18:                                         ; preds = %msm_handle_rx.exit, %msm_handle_rx_dm.exit, %if.then.i, %if.then11.if.end18_crit_edge, %if.end.if.end18_crit_edge
  %and19 = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and19)
  %tobool20.not = icmp eq i32 %and19, 0
  br i1 %tobool20.not, label %if.end18.if.end22_crit_edge, label %if.then21

if.end18.if.end22_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end22

if.then21:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #14
  call fastcc void @msm_handle_tx(ptr noundef %dev_id)
  br label %if.end22

if.end22:                                         ; preds = %if.then21, %if.end18.if.end22_crit_edge
  %and23 = and i32 %3, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and23)
  %tobool24.not = icmp eq i32 %and23, 0
  br i1 %tobool24.not, label %if.end22.if.end26_crit_edge, label %if.then25

if.end22.if.end26_crit_edge:                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end26

if.then25:                                        ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #14
  %204 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load ptr, ptr %membase.i, align 4
  %add.ptr.i.i121 = getelementptr i8, ptr %205, i32 16
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i121, i32 1879048192) #12, !srcloc !103
  %icount.i = getelementptr inbounds %struct.uart_port, ptr %dev_id, i32 0, i32 31
  %206 = ptrtoint ptr %icount.i to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load i32, ptr %icount.i, align 4
  %inc.i122 = add i32 %207, 1
  store i32 %inc.i122, ptr %icount.i, align 4
  %state.i123 = getelementptr inbounds %struct.uart_port, ptr %dev_id, i32 0, i32 30
  %208 = ptrtoint ptr %state.i123 to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load ptr, ptr %state.i123, align 4
  %delta_msr_wait.i = getelementptr inbounds %struct.tty_port, ptr %209, i32 0, i32 9
  call void @__wake_up(ptr noundef %delta_msr_wait.i, i32 noundef 1, i32 noundef 1, ptr noundef null) #12
  br label %if.end26

if.end26:                                         ; preds = %if.then25, %if.end22.if.end26_crit_edge
  %imr = getelementptr inbounds %struct.msm_port, ptr %dev_id, i32 0, i32 4
  %210 = ptrtoint ptr %imr to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load i32, ptr %imr, align 4
  %212 = call i32 @llvm.bswap.i32(i32 %211) #12
  %213 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %213)
  %214 = load ptr, ptr %membase.i, align 4
  %add.ptr.i125 = getelementptr i8, ptr %214, i32 20
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i125, i32 %212) #12, !srcloc !103
  call void @_raw_spin_unlock_irqrestore(ptr noundef %dev_id, i32 noundef %call3) #12
  ret i32 1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @msm_release_dma(ptr nocapture noundef %msm_port) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %tx_dma = getelementptr inbounds %struct.msm_port, ptr %msm_port, i32 0, i32 8
  %0 = ptrtoint ptr %tx_dma to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tx_dma, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %entry
  %dev1.i = getelementptr inbounds %struct.uart_port, ptr %msm_port, i32 0, i32 45
  %2 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev1.i, align 4
  %count.i = getelementptr inbounds %struct.msm_port, ptr %msm_port, i32 0, i32 8, i32 6
  %4 = ptrtoint ptr %count.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %count.i, align 4
  store i32 0, ptr %count.i, align 4
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 4
  %device_terminate_all.i.i = getelementptr inbounds %struct.dma_device, ptr %7, i32 0, i32 47
  %8 = ptrtoint ptr %device_terminate_all.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %device_terminate_all.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %9, null
  br i1 %tobool.not.i.i, label %if.then.dmaengine_terminate_all.exit.i_crit_edge, label %if.then.i.i

if.then.dmaengine_terminate_all.exit.i_crit_edge: ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %dmaengine_terminate_all.exit.i

if.then.i.i:                                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  %call.i.i = tail call i32 %9(ptr noundef nonnull %1) #12
  br label %dmaengine_terminate_all.exit.i

dmaengine_terminate_all.exit.i:                   ; preds = %if.then.i.i, %if.then.dmaengine_terminate_all.exit.i_crit_edge
  %membase.i.i = getelementptr inbounds %struct.uart_port, ptr %msm_port, i32 0, i32 2
  %10 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %membase.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %11, i32 60
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #12, !srcloc !102
  %13 = tail call i32 @llvm.bswap.i32(i32 %12) #12
  %enable_bit.i = getelementptr inbounds %struct.msm_port, ptr %msm_port, i32 0, i32 8, i32 5
  %14 = ptrtoint ptr %enable_bit.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %enable_bit.i, align 4
  %neg.i = xor i32 %15, -1
  %and.i = and i32 %13, %neg.i
  %16 = tail call i32 @llvm.bswap.i32(i32 %and.i) #12
  %17 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %membase.i.i, align 4
  %add.ptr.i14.i = getelementptr i8, ptr %18, i32 60
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i14.i, i32 %16) #12, !srcloc !103
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not.i = icmp eq i32 %5, 0
  br i1 %tobool.not.i, label %dmaengine_terminate_all.exit.i.msm_stop_dma.exit_crit_edge, label %if.then.i

dmaengine_terminate_all.exit.i.msm_stop_dma.exit_crit_edge: ; preds = %dmaengine_terminate_all.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %msm_stop_dma.exit

if.then.i:                                        ; preds = %dmaengine_terminate_all.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  %phys.i = getelementptr inbounds %struct.msm_port, ptr %msm_port, i32 0, i32 8, i32 2
  %19 = ptrtoint ptr %phys.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %phys.i, align 4
  %dir.i = getelementptr inbounds %struct.msm_port, ptr %msm_port, i32 0, i32 8, i32 1
  %21 = ptrtoint ptr %dir.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %dir.i, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %3, i32 noundef %20, i32 noundef %5, i32 noundef %22, i32 noundef 0) #12
  br label %msm_stop_dma.exit

msm_stop_dma.exit:                                ; preds = %if.then.i, %dmaengine_terminate_all.exit.i.msm_stop_dma.exit_crit_edge
  %23 = ptrtoint ptr %tx_dma to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %tx_dma, align 4
  tail call void @dma_release_channel(ptr noundef %24) #12
  br label %if.end

if.end:                                           ; preds = %msm_stop_dma.exit, %entry.if.end_crit_edge
  %25 = call ptr @memset(ptr %tx_dma, i32 0, i32 32)
  %rx_dma = getelementptr inbounds %struct.msm_port, ptr %msm_port, i32 0, i32 9
  %26 = ptrtoint ptr %rx_dma to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %rx_dma, align 4
  %tobool3.not = icmp eq ptr %27, null
  br i1 %tobool3.not, label %if.end.if.end7_crit_edge, label %if.then4

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end7

if.then4:                                         ; preds = %if.end
  %dev1.i19 = getelementptr inbounds %struct.uart_port, ptr %msm_port, i32 0, i32 45
  %28 = ptrtoint ptr %dev1.i19 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %dev1.i19, align 4
  %count.i20 = getelementptr inbounds %struct.msm_port, ptr %msm_port, i32 0, i32 9, i32 6
  %30 = ptrtoint ptr %count.i20 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %count.i20, align 4
  store i32 0, ptr %count.i20, align 4
  %32 = ptrtoint ptr %27 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %27, align 4
  %device_terminate_all.i.i21 = getelementptr inbounds %struct.dma_device, ptr %33, i32 0, i32 47
  %34 = ptrtoint ptr %device_terminate_all.i.i21 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %device_terminate_all.i.i21, align 4
  %tobool.not.i.i22 = icmp eq ptr %35, null
  br i1 %tobool.not.i.i22, label %if.then4.dmaengine_terminate_all.exit.i32_crit_edge, label %if.then.i.i24

if.then4.dmaengine_terminate_all.exit.i32_crit_edge: ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #14
  br label %dmaengine_terminate_all.exit.i32

if.then.i.i24:                                    ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #14
  %call.i.i23 = tail call i32 %35(ptr noundef nonnull %27) #12
  br label %dmaengine_terminate_all.exit.i32

dmaengine_terminate_all.exit.i32:                 ; preds = %if.then.i.i24, %if.then4.dmaengine_terminate_all.exit.i32_crit_edge
  %membase.i.i25 = getelementptr inbounds %struct.uart_port, ptr %msm_port, i32 0, i32 2
  %36 = ptrtoint ptr %membase.i.i25 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %membase.i.i25, align 4
  %add.ptr.i.i26 = getelementptr i8, ptr %37, i32 60
  %38 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i26) #12, !srcloc !102
  %39 = tail call i32 @llvm.bswap.i32(i32 %38) #12
  %enable_bit.i27 = getelementptr inbounds %struct.msm_port, ptr %msm_port, i32 0, i32 9, i32 5
  %40 = ptrtoint ptr %enable_bit.i27 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %enable_bit.i27, align 4
  %neg.i28 = xor i32 %41, -1
  %and.i29 = and i32 %39, %neg.i28
  %42 = tail call i32 @llvm.bswap.i32(i32 %and.i29) #12
  %43 = ptrtoint ptr %membase.i.i25 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %membase.i.i25, align 4
  %add.ptr.i14.i30 = getelementptr i8, ptr %44, i32 60
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i14.i30, i32 %42) #12, !srcloc !103
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %tobool.not.i31 = icmp eq i32 %31, 0
  br i1 %tobool.not.i31, label %dmaengine_terminate_all.exit.i32.msm_stop_dma.exit36_crit_edge, label %if.then.i35

dmaengine_terminate_all.exit.i32.msm_stop_dma.exit36_crit_edge: ; preds = %dmaengine_terminate_all.exit.i32
  call void @__sanitizer_cov_trace_pc() #14
  br label %msm_stop_dma.exit36

if.then.i35:                                      ; preds = %dmaengine_terminate_all.exit.i32
  call void @__sanitizer_cov_trace_pc() #14
  %phys.i33 = getelementptr inbounds %struct.msm_port, ptr %msm_port, i32 0, i32 9, i32 2
  %45 = ptrtoint ptr %phys.i33 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %phys.i33, align 4
  %dir.i34 = getelementptr inbounds %struct.msm_port, ptr %msm_port, i32 0, i32 9, i32 1
  %47 = ptrtoint ptr %dir.i34 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %dir.i34, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %29, i32 noundef %46, i32 noundef %31, i32 noundef %48, i32 noundef 0) #12
  br label %msm_stop_dma.exit36

msm_stop_dma.exit36:                              ; preds = %if.then.i35, %dmaengine_terminate_all.exit.i32.msm_stop_dma.exit36_crit_edge
  %49 = ptrtoint ptr %rx_dma to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %rx_dma, align 4
  tail call void @dma_release_channel(ptr noundef %50) #12
  %virt = getelementptr inbounds %struct.msm_port, ptr %msm_port, i32 0, i32 9, i32 3
  %51 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %virt, align 4
  tail call void @kfree(ptr noundef %52) #12
  br label %if.end7

if.end7:                                          ; preds = %msm_stop_dma.exit36, %if.end.if.end7_crit_edge
  %53 = call ptr @memset(ptr %rx_dma, i32 0, i32 32)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_request_chan(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_release_channel(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #11

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @msm_handle_tx(ptr noundef %port) unnamed_addr #3 align 64 {
entry:
  %sg.i.i = alloca %struct.scatterlist, align 4
  %buf = alloca [4 x i8], align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %state = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 30
  %0 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %state, align 4
  %tx_dma = getelementptr inbounds %struct.msm_port, ptr %port, i32 0, i32 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buf) #12
  %2 = ptrtoint ptr %buf to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %buf, align 4
  %x_char = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 24
  %3 = ptrtoint ptr %x_char to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %x_char, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.not = icmp eq i8 %4, 0
  br i1 %tobool.not, label %if.end13, label %if.then

if.then:                                          ; preds = %entry
  %is_uartdm = getelementptr inbounds %struct.msm_port, ptr %port, i32 0, i32 5
  %5 = ptrtoint ptr %is_uartdm to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %is_uartdm, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool2.not = icmp eq i32 %6, 0
  %membase5 = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 2
  %7 = ptrtoint ptr %membase5 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %membase5, align 4
  br i1 %tobool2.not, label %if.end.thread, label %if.then10

if.end.thread:                                    ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  %add.ptr6 = getelementptr i8, ptr %8, i32 12
  %9 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %4, ptr %buf, align 4
  br label %if.end11

if.then10:                                        ; preds = %if.then
  %add.ptr4 = getelementptr i8, ptr %8, i32 112
  %10 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %4, ptr %buf, align 4
  br label %while.cond.i.i

while.cond.i.i:                                   ; preds = %if.end.i.i.while.cond.i.i_crit_edge, %if.then10
  %timeout.0.i.i = phi i32 [ 500000, %if.then10 ], [ %dec.i.i, %if.end.i.i.while.cond.i.i_crit_edge ]
  %11 = ptrtoint ptr %membase5 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %membase5, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %12, i32 8
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i) #12, !srcloc !102
  %14 = and i32 %13, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool.not.i.i = icmp eq i32 %14, 0
  br i1 %tobool.not.i.i, label %while.body.i.i, label %while.cond.i.i.msm_reset_dm_count.exit_crit_edge

while.cond.i.i.msm_reset_dm_count.exit_crit_edge: ; preds = %while.cond.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %msm_reset_dm_count.exit

while.body.i.i:                                   ; preds = %while.cond.i.i
  %15 = ptrtoint ptr %membase5 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %membase5, align 4
  %add.ptr.i10.i.i = getelementptr i8, ptr %16, i32 20
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i10.i.i) #12, !srcloc !102
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %17)
  %tobool3.not.i.i = icmp sgt i32 %17, -1
  br i1 %tobool3.not.i.i, label %if.end.i.i, label %while.body.i.i.msm_reset_dm_count.exit_crit_edge

while.body.i.i.msm_reset_dm_count.exit_crit_edge: ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %msm_reset_dm_count.exit

if.end.i.i:                                       ; preds = %while.body.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %18 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %18(i32 noundef 214748) #12
  %dec.i.i = add nsw i32 %timeout.0.i.i, -1
  %tobool4.not.i.i = icmp eq i32 %timeout.0.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end.i.i.msm_reset_dm_count.exit_crit_edge, label %if.end.i.i.while.cond.i.i_crit_edge

if.end.i.i.while.cond.i.i_crit_edge:              ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.cond.i.i

if.end.i.i.msm_reset_dm_count.exit_crit_edge:     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %msm_reset_dm_count.exit

msm_reset_dm_count.exit:                          ; preds = %if.end.i.i.msm_reset_dm_count.exit_crit_edge, %while.body.i.i.msm_reset_dm_count.exit_crit_edge, %while.cond.i.i.msm_reset_dm_count.exit_crit_edge
  %19 = ptrtoint ptr %membase5 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %membase5, align 4
  %add.ptr.i12.i.i = getelementptr i8, ptr %20, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i12.i.i, i32 196608) #12, !srcloc !103
  %21 = ptrtoint ptr %membase5 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %membase5, align 4
  %add.ptr.i.i = getelementptr i8, ptr %22, i32 64
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 16777216) #12, !srcloc !103
  %23 = ptrtoint ptr %membase5 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %membase5, align 4
  %add.ptr.i4.i = getelementptr i8, ptr %24, i32 64
  %25 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i4.i) #12, !srcloc !102
  br label %if.end11

if.end11:                                         ; preds = %msm_reset_dm_count.exit, %if.end.thread
  %tf.0110 = phi ptr [ %add.ptr6, %if.end.thread ], [ %add.ptr4, %msm_reset_dm_count.exit ]
  call void @__raw_writesl(ptr noundef %tf.0110, ptr noundef nonnull %buf, i32 noundef 1) #12
  %tx = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 31, i32 5
  %26 = ptrtoint ptr %tx to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %tx, align 4
  %inc = add i32 %27, 1
  store i32 %inc, ptr %tx, align 4
  %28 = ptrtoint ptr %x_char to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 0, ptr %x_char, align 4
  br label %cleanup

if.end13:                                         ; preds = %entry
  %head = getelementptr inbounds %struct.uart_state, ptr %1, i32 0, i32 2, i32 1
  %29 = ptrtoint ptr %head to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %head, align 4
  %tail = getelementptr inbounds %struct.uart_state, ptr %1, i32 0, i32 2, i32 2
  %31 = ptrtoint ptr %tail to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %tail, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %30, i32 %32)
  %cmp = icmp eq i32 %30, %32
  br i1 %cmp, label %if.end13.if.then15_crit_edge, label %lor.lhs.false

if.end13.if.then15_crit_edge:                     ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then15

lor.lhs.false:                                    ; preds = %if.end13
  %tty2.i = getelementptr inbounds %struct.tty_port, ptr %1, i32 0, i32 1
  %33 = ptrtoint ptr %tty2.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %tty2.i, align 4
  %tobool.not.i = icmp eq ptr %34, null
  br i1 %tobool.not.i, label %lor.lhs.false.uart_tx_stopped.exit_crit_edge, label %land.lhs.true.i

lor.lhs.false.uart_tx_stopped.exit_crit_edge:     ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %uart_tx_stopped.exit

land.lhs.true.i:                                  ; preds = %lor.lhs.false
  %stopped.i = getelementptr inbounds %struct.tty_struct, ptr %34, i32 0, i32 19, i32 1
  %35 = ptrtoint ptr %stopped.i to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %stopped.i, align 4, !range !114
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %36)
  %tobool3.not.i = icmp eq i8 %36, 0
  br i1 %tobool3.not.i, label %land.lhs.true.i.uart_tx_stopped.exit_crit_edge, label %land.lhs.true.i.if.then15_crit_edge

land.lhs.true.i.if.then15_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then15

land.lhs.true.i.uart_tx_stopped.exit_crit_edge:   ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %uart_tx_stopped.exit

uart_tx_stopped.exit:                             ; preds = %land.lhs.true.i.uart_tx_stopped.exit_crit_edge, %lor.lhs.false.uart_tx_stopped.exit_crit_edge
  %hw_stopped.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 35
  %37 = ptrtoint ptr %hw_stopped.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %hw_stopped.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %tobool4.not.i.not = icmp eq i32 %38, 0
  br i1 %tobool4.not.i.not, label %if.end16, label %uart_tx_stopped.exit.if.then15_crit_edge

uart_tx_stopped.exit.if.then15_crit_edge:         ; preds = %uart_tx_stopped.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then15

if.then15:                                        ; preds = %uart_tx_stopped.exit.if.then15_crit_edge, %land.lhs.true.i.if.then15_crit_edge, %if.end13.if.then15_crit_edge
  %imr.i = getelementptr inbounds %struct.msm_port, ptr %port, i32 0, i32 4
  %39 = ptrtoint ptr %imr.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %imr.i, align 4
  %and.i = and i32 %40, -2
  store i32 %and.i, ptr %imr.i, align 4
  %41 = tail call i32 @llvm.bswap.i32(i32 %and.i) #12
  %membase.i.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 2
  %42 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %membase.i.i, align 4
  %add.ptr.i.i99 = getelementptr i8, ptr %43, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i99, i32 %41) #12, !srcloc !103
  br label %cleanup

if.end16:                                         ; preds = %uart_tx_stopped.exit
  %sub = sub i32 4096, %32
  %add = add i32 %sub, %30
  %and = and i32 %add, 4095
  %44 = tail call i32 @llvm.smin.i32(i32 %and, i32 %sub)
  %is_uartdm34 = getelementptr inbounds %struct.msm_port, ptr %port, i32 0, i32 5
  %45 = ptrtoint ptr %is_uartdm34 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %is_uartdm34, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %46)
  %cmp35 = icmp sgt i32 %46, 3
  %and37 = and i32 %44, -4
  %47 = tail call i32 @llvm.umin.i32(i32 %44, i32 256)
  %dma_count.0 = select i1 %cmp35, i32 %and37, i32 %47
  %dma_min.0 = select i1 %cmp35, i32 16, i32 1
  %fifosize = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 23
  %48 = ptrtoint ptr %fifosize to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %fifosize, align 4
  %50 = tail call i32 @llvm.umin.i32(i32 %44, i32 %49)
  %51 = ptrtoint ptr %tx_dma to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %tx_dma, align 4
  %tobool47.not = icmp eq ptr %52, null
  call void @__sanitizer_cov_trace_cmp4(i32 %dma_count.0, i32 %dma_min.0)
  %cmp49 = icmp ult i32 %dma_count.0, %dma_min.0
  %or.cond = select i1 %tobool47.not, i1 true, i1 %cmp49
  br i1 %or.cond, label %if.then50, label %if.else51

if.then50:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #14
  tail call fastcc void @msm_handle_tx_pio(ptr noundef %port, i32 noundef %50)
  br label %cleanup

if.else51:                                        ; preds = %if.end16
  %xmit1.i = getelementptr inbounds %struct.uart_state, ptr %1, i32 0, i32 2
  %53 = ptrtoint ptr %xmit1.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %xmit1.i, align 4
  %arrayidx.i = getelementptr i8, ptr %54, i32 %32
  %dev.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 45
  %55 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %dev.i, align 4
  %dir.i = getelementptr inbounds %struct.msm_port, ptr %port, i32 0, i32 8, i32 1
  %57 = ptrtoint ptr %dir.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %dir.i, align 4
  %call.i.i = tail call zeroext i1 @is_vmalloc_addr(ptr noundef %arrayidx.i) #12
  br i1 %call.i.i, label %land.rhs.i.i, label %if.end39.i.i

land.rhs.i.i:                                     ; preds = %if.else51
  %.b1.i.i = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  br i1 %.b1.i.i, label %land.rhs.i.i.dma_map_single_attrs.exit.i_crit_edge, label %if.then.i.i, !prof !101

land.rhs.i.i.dma_map_single_attrs.exit.i_crit_edge: ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %dma_map_single_attrs.exit.i

if.then.i.i:                                      ; preds = %land.rhs.i.i
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %call16.i.i = tail call ptr @dev_driver_string(ptr noundef %56) #12
  %init_name.i.i.i = getelementptr inbounds %struct.device, ptr %56, i32 0, i32 3
  %59 = ptrtoint ptr %init_name.i.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %init_name.i.i.i, align 8
  %tobool.not.i.i.i = icmp eq ptr %60, null
  br i1 %tobool.not.i.i.i, label %if.end.i.i.i, label %if.then.i.i.dev_name.exit.i.i_crit_edge

if.then.i.i.dev_name.exit.i.i_crit_edge:          ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %dev_name.exit.i.i

if.end.i.i.i:                                     ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %61 = ptrtoint ptr %56 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %56, align 4
  br label %dev_name.exit.i.i

dev_name.exit.i.i:                                ; preds = %if.end.i.i.i, %if.then.i.i.dev_name.exit.i.i_crit_edge
  %retval.0.i.i.i = phi ptr [ %62, %if.end.i.i.i ], [ %60, %if.then.i.i.dev_name.exit.i.i_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.17, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.18, ptr noundef %call16.i.i, ptr noundef %retval.0.i.i.i) #12
  br label %dma_map_single_attrs.exit.i

if.end39.i.i:                                     ; preds = %if.else51
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @debug_dma_map_single(ptr noundef %56, ptr noundef %arrayidx.i, i32 noundef %dma_count.0) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %63 = load ptr, ptr @mem_map, align 4
  %64 = ptrtoint ptr %arrayidx.i to i32
  %sub.i.i = add i32 %64, 1073741824
  %shr.i.i = lshr i32 %sub.i.i, 12
  %add.ptr.i.i101 = getelementptr %struct.page, ptr %63, i32 %shr.i.i
  %and.i.i = and i32 %64, 4095
  %call41.i.i = tail call i32 @dma_map_page_attrs(ptr noundef %56, ptr noundef %add.ptr.i.i101, i32 noundef %and.i.i, i32 noundef %dma_count.0, i32 noundef %58, i32 noundef 0) #12
  br label %dma_map_single_attrs.exit.i

dma_map_single_attrs.exit.i:                      ; preds = %if.end39.i.i, %dev_name.exit.i.i, %land.rhs.i.i.dma_map_single_attrs.exit.i_crit_edge
  %retval.0.i.i = phi i32 [ %call41.i.i, %if.end39.i.i ], [ -1, %dev_name.exit.i.i ], [ -1, %land.rhs.i.i.dma_map_single_attrs.exit.i_crit_edge ]
  %phys.i = getelementptr inbounds %struct.msm_port, ptr %port, i32 0, i32 8, i32 2
  %65 = ptrtoint ptr %phys.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %retval.0.i.i, ptr %phys.i, align 4
  %66 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %dev.i, align 4
  tail call void @debug_dma_mapping_error(ptr noundef %67, i32 noundef %retval.0.i.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %retval.0.i.i)
  %cmp.i.i = icmp eq i32 %retval.0.i.i, -1
  br i1 %cmp.i.i, label %dma_map_single_attrs.exit.i.if.then55_crit_edge, label %if.end.i

dma_map_single_attrs.exit.i.if.then55_crit_edge:  ; preds = %dma_map_single_attrs.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then55

if.end.i:                                         ; preds = %dma_map_single_attrs.exit.i
  %68 = ptrtoint ptr %tx_dma to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %tx_dma, align 4
  %70 = ptrtoint ptr %phys.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %phys.i, align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %sg.i.i) #12
  %72 = getelementptr inbounds %struct.scatterlist, ptr %sg.i.i, i32 0, i32 3
  %73 = getelementptr inbounds %struct.scatterlist, ptr %sg.i.i, i32 0, i32 4
  %74 = call ptr @memset(ptr %sg.i.i, i32 255, i32 20)
  call void @sg_init_table(ptr noundef nonnull %sg.i.i, i32 noundef 1) #12
  %75 = ptrtoint ptr %72 to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 %71, ptr %72, align 4
  %76 = ptrtoint ptr %73 to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 %dma_count.0, ptr %73, align 4
  %tobool.not.i.i102 = icmp eq ptr %69, null
  br i1 %tobool.not.i.i102, label %if.end.i.dmaengine_prep_slave_single.exit.thread.i_crit_edge, label %lor.lhs.false.i.i

if.end.i.dmaengine_prep_slave_single.exit.thread.i_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %dmaengine_prep_slave_single.exit.thread.i

lor.lhs.false.i.i:                                ; preds = %if.end.i
  %77 = ptrtoint ptr %69 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %69, align 4
  %tobool1.not.i.i = icmp eq ptr %78, null
  br i1 %tobool1.not.i.i, label %lor.lhs.false.i.i.dmaengine_prep_slave_single.exit.thread.i_crit_edge, label %lor.lhs.false2.i.i

lor.lhs.false.i.i.dmaengine_prep_slave_single.exit.thread.i_crit_edge: ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %dmaengine_prep_slave_single.exit.thread.i

lor.lhs.false2.i.i:                               ; preds = %lor.lhs.false.i.i
  %device_prep_slave_sg.i.i = getelementptr inbounds %struct.dma_device, ptr %78, i32 0, i32 39
  %79 = ptrtoint ptr %device_prep_slave_sg.i.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %device_prep_slave_sg.i.i, align 4
  %tobool4.not.i.i103 = icmp eq ptr %80, null
  br i1 %tobool4.not.i.i103, label %lor.lhs.false2.i.i.dmaengine_prep_slave_single.exit.thread.i_crit_edge, label %dmaengine_prep_slave_single.exit.i

lor.lhs.false2.i.i.dmaengine_prep_slave_single.exit.thread.i_crit_edge: ; preds = %lor.lhs.false2.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %dmaengine_prep_slave_single.exit.thread.i

dmaengine_prep_slave_single.exit.thread.i:        ; preds = %lor.lhs.false2.i.i.dmaengine_prep_slave_single.exit.thread.i_crit_edge, %lor.lhs.false.i.i.dmaengine_prep_slave_single.exit.thread.i_crit_edge, %if.end.i.dmaengine_prep_slave_single.exit.thread.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %sg.i.i) #12
  %desc93.i = getelementptr inbounds %struct.msm_port, ptr %port, i32 0, i32 8, i32 7
  %81 = ptrtoint ptr %desc93.i to i32
  call void @__asan_store4_noabort(i32 %81)
  store ptr null, ptr %desc93.i, align 4
  br label %msm_handle_tx_dma.exit

dmaengine_prep_slave_single.exit.i:               ; preds = %lor.lhs.false2.i.i
  %call.i79.i = call ptr %80(ptr noundef nonnull %69, ptr noundef nonnull %sg.i.i, i32 noundef 1, i32 noundef 1, i32 noundef 33, ptr noundef null) #12
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %sg.i.i) #12
  %desc.i = getelementptr inbounds %struct.msm_port, ptr %port, i32 0, i32 8, i32 7
  %82 = ptrtoint ptr %desc.i to i32
  call void @__asan_store4_noabort(i32 %82)
  store ptr %call.i79.i, ptr %desc.i, align 4
  %tobool9.not.i = icmp eq ptr %call.i79.i, null
  br i1 %tobool9.not.i, label %dmaengine_prep_slave_single.exit.i.msm_handle_tx_dma.exit_crit_edge, label %if.end11.i

dmaengine_prep_slave_single.exit.i.msm_handle_tx_dma.exit_crit_edge: ; preds = %dmaengine_prep_slave_single.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %msm_handle_tx_dma.exit

if.end11.i:                                       ; preds = %dmaengine_prep_slave_single.exit.i
  %callback.i = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %call.i79.i, i32 0, i32 6
  %83 = ptrtoint ptr %callback.i to i32
  call void @__asan_store4_noabort(i32 %83)
  store ptr @msm_complete_tx_dma, ptr %callback.i, align 4
  %84 = ptrtoint ptr %desc.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %desc.i, align 4
  %callback_param.i = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %85, i32 0, i32 8
  %86 = ptrtoint ptr %callback_param.i to i32
  call void @__asan_store4_noabort(i32 %86)
  store ptr %port, ptr %callback_param.i, align 4
  %87 = load ptr, ptr %desc.i, align 4
  %tx_submit.i.i = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %87, i32 0, i32 4
  %88 = ptrtoint ptr %tx_submit.i.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %tx_submit.i.i, align 4
  %call.i81.i = call i32 %89(ptr noundef %87) #12
  %cookie.i = getelementptr inbounds %struct.msm_port, ptr %port, i32 0, i32 8, i32 4
  %90 = ptrtoint ptr %cookie.i to i32
  call void @__asan_store4_noabort(i32 %90)
  store i32 %call.i81.i, ptr %cookie.i, align 4
  %91 = call i32 @llvm.smin.i32(i32 %call.i81.i, i32 0) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i81.i)
  %tobool18.not.i = icmp sgt i32 %call.i81.i, -1
  br i1 %tobool18.not.i, label %if.end20.i, label %if.end11.i.msm_handle_tx_dma.exit_crit_edge

if.end11.i.msm_handle_tx_dma.exit_crit_edge:      ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %msm_handle_tx_dma.exit

if.end20.i:                                       ; preds = %if.end11.i
  %imr.i104 = getelementptr inbounds %struct.msm_port, ptr %port, i32 0, i32 4
  %92 = ptrtoint ptr %imr.i104 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %imr.i104, align 4
  %and.i105 = and i32 %93, -2
  store i32 %and.i105, ptr %imr.i104, align 4
  %94 = call i32 @llvm.bswap.i32(i32 %and.i105) #12
  %membase.i.i106 = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 2
  %95 = ptrtoint ptr %membase.i.i106 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %membase.i.i106, align 4
  %add.ptr.i82.i = getelementptr i8, ptr %96, i32 20
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i82.i, i32 %94) #12, !srcloc !103
  %count22.i = getelementptr inbounds %struct.msm_port, ptr %port, i32 0, i32 8, i32 6
  %97 = ptrtoint ptr %count22.i to i32
  call void @__asan_store4_noabort(i32 %97)
  store i32 %dma_count.0, ptr %count22.i, align 4
  %98 = ptrtoint ptr %membase.i.i106 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %membase.i.i106, align 4
  %add.ptr.i84.i = getelementptr i8, ptr %99, i32 60
  %100 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i84.i) #12, !srcloc !102
  %101 = call i32 @llvm.bswap.i32(i32 %100) #12
  %enable_bit.i = getelementptr inbounds %struct.msm_port, ptr %port, i32 0, i32 8, i32 5
  %102 = ptrtoint ptr %enable_bit.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %enable_bit.i, align 4
  %or.i = or i32 %101, %103
  %104 = ptrtoint ptr %is_uartdm34 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %is_uartdm34, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %105)
  %cmp.i = icmp slt i32 %105, 4
  br i1 %cmp.i, label %if.then24.i, label %if.end20.i.while.cond.i.i.i.preheader_crit_edge

if.end20.i.while.cond.i.i.i.preheader_crit_edge:  ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.cond.i.i.i.preheader

if.then24.i:                                      ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #14
  %106 = call i32 @llvm.bswap.i32(i32 %or.i) #12
  %107 = ptrtoint ptr %membase.i.i106 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %membase.i.i106, align 4
  %add.ptr.i86.i = getelementptr i8, ptr %108, i32 60
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i86.i, i32 %106) #12, !srcloc !103
  br label %while.cond.i.i.i.preheader

while.cond.i.i.i.preheader:                       ; preds = %if.then24.i, %if.end20.i.while.cond.i.i.i.preheader_crit_edge
  br label %while.cond.i.i.i

while.cond.i.i.i:                                 ; preds = %if.end.i.i88.i.while.cond.i.i.i_crit_edge, %while.cond.i.i.i.preheader
  %timeout.0.i.i.i = phi i32 [ %dec.i.i.i, %if.end.i.i88.i.while.cond.i.i.i_crit_edge ], [ 500000, %while.cond.i.i.i.preheader ]
  %109 = ptrtoint ptr %membase.i.i106 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %membase.i.i106, align 4
  %add.ptr.i.i.i.i = getelementptr i8, ptr %110, i32 8
  %111 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i.i) #12, !srcloc !102
  %112 = and i32 %111, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %112)
  %tobool.not.i.i87.i = icmp eq i32 %112, 0
  br i1 %tobool.not.i.i87.i, label %while.body.i.i.i, label %while.cond.i.i.i.msm_reset_dm_count.exit.i_crit_edge

while.cond.i.i.i.msm_reset_dm_count.exit.i_crit_edge: ; preds = %while.cond.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %msm_reset_dm_count.exit.i

while.body.i.i.i:                                 ; preds = %while.cond.i.i.i
  %113 = ptrtoint ptr %membase.i.i106 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %membase.i.i106, align 4
  %add.ptr.i10.i.i.i = getelementptr i8, ptr %114, i32 20
  %115 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i10.i.i.i) #12, !srcloc !102
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %115)
  %tobool3.not.i.i.i = icmp sgt i32 %115, -1
  br i1 %tobool3.not.i.i.i, label %if.end.i.i88.i, label %while.body.i.i.i.msm_reset_dm_count.exit.i_crit_edge

while.body.i.i.i.msm_reset_dm_count.exit.i_crit_edge: ; preds = %while.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %msm_reset_dm_count.exit.i

if.end.i.i88.i:                                   ; preds = %while.body.i.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %116 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %116(i32 noundef 214748) #12
  %dec.i.i.i = add nsw i32 %timeout.0.i.i.i, -1
  %tobool4.not.i.i.i = icmp eq i32 %timeout.0.i.i.i, 0
  br i1 %tobool4.not.i.i.i, label %if.end.i.i88.i.msm_reset_dm_count.exit.i_crit_edge, label %if.end.i.i88.i.while.cond.i.i.i_crit_edge

if.end.i.i88.i.while.cond.i.i.i_crit_edge:        ; preds = %if.end.i.i88.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.cond.i.i.i

if.end.i.i88.i.msm_reset_dm_count.exit.i_crit_edge: ; preds = %if.end.i.i88.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %msm_reset_dm_count.exit.i

msm_reset_dm_count.exit.i:                        ; preds = %if.end.i.i88.i.msm_reset_dm_count.exit.i_crit_edge, %while.body.i.i.i.msm_reset_dm_count.exit.i_crit_edge, %while.cond.i.i.i.msm_reset_dm_count.exit.i_crit_edge
  %117 = ptrtoint ptr %membase.i.i106 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %membase.i.i106, align 4
  %add.ptr.i12.i.i.i = getelementptr i8, ptr %118, i32 16
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i12.i.i.i, i32 196608) #12, !srcloc !103
  %119 = call i32 @llvm.bswap.i32(i32 %dma_count.0) #12
  %120 = ptrtoint ptr %membase.i.i106 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %membase.i.i106, align 4
  %add.ptr.i.i.i107 = getelementptr i8, ptr %121, i32 64
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i107, i32 %119) #12, !srcloc !103
  %122 = ptrtoint ptr %membase.i.i106 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %membase.i.i106, align 4
  %add.ptr.i4.i.i = getelementptr i8, ptr %123, i32 64
  %124 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i4.i.i) #12, !srcloc !102
  %125 = ptrtoint ptr %is_uartdm34 to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %is_uartdm34, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %126)
  %cmp27.i = icmp sgt i32 %126, 3
  br i1 %cmp27.i, label %if.then28.i, label %msm_reset_dm_count.exit.i.msm_handle_tx_dma.exit.thread_crit_edge

msm_reset_dm_count.exit.i.msm_handle_tx_dma.exit.thread_crit_edge: ; preds = %msm_reset_dm_count.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %msm_handle_tx_dma.exit.thread

if.then28.i:                                      ; preds = %msm_reset_dm_count.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  %127 = call i32 @llvm.bswap.i32(i32 %or.i) #12
  %128 = ptrtoint ptr %membase.i.i106 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %membase.i.i106, align 4
  %add.ptr.i90.i = getelementptr i8, ptr %129, i32 60
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i90.i, i32 %127) #12, !srcloc !103
  br label %msm_handle_tx_dma.exit.thread

msm_handle_tx_dma.exit.thread:                    ; preds = %if.then28.i, %msm_reset_dm_count.exit.i.msm_handle_tx_dma.exit.thread_crit_edge
  %130 = ptrtoint ptr %tx_dma to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %tx_dma, align 4
  %132 = ptrtoint ptr %131 to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %131, align 4
  %device_issue_pending.i.i = getelementptr inbounds %struct.dma_device, ptr %133, i32 0, i32 50
  %134 = ptrtoint ptr %device_issue_pending.i.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %device_issue_pending.i.i, align 4
  call void %135(ptr noundef %131) #12
  br label %cleanup

msm_handle_tx_dma.exit:                           ; preds = %if.end11.i.msm_handle_tx_dma.exit_crit_edge, %dmaengine_prep_slave_single.exit.i.msm_handle_tx_dma.exit_crit_edge, %dmaengine_prep_slave_single.exit.thread.i
  %ret.0.i = phi i32 [ %91, %if.end11.i.msm_handle_tx_dma.exit_crit_edge ], [ -5, %dmaengine_prep_slave_single.exit.i.msm_handle_tx_dma.exit_crit_edge ], [ -5, %dmaengine_prep_slave_single.exit.thread.i ]
  %136 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %dev.i, align 4
  %138 = ptrtoint ptr %phys.i to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load i32, ptr %phys.i, align 4
  %140 = ptrtoint ptr %dir.i to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load i32, ptr %dir.i, align 4
  call void @dma_unmap_page_attrs(ptr noundef %137, i32 noundef %139, i32 noundef %dma_count.0, i32 noundef %141, i32 noundef 0) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0.i)
  %phi.cmp = icmp eq i32 %ret.0.i, 0
  br i1 %phi.cmp, label %msm_handle_tx_dma.exit.cleanup_crit_edge, label %msm_handle_tx_dma.exit.if.then55_crit_edge

msm_handle_tx_dma.exit.if.then55_crit_edge:       ; preds = %msm_handle_tx_dma.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then55

msm_handle_tx_dma.exit.cleanup_crit_edge:         ; preds = %msm_handle_tx_dma.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then55:                                        ; preds = %msm_handle_tx_dma.exit.if.then55_crit_edge, %dma_map_single_attrs.exit.i.if.then55_crit_edge
  call fastcc void @msm_handle_tx_pio(ptr noundef %port, i32 noundef %50)
  br label %cleanup

cleanup:                                          ; preds = %if.then55, %msm_handle_tx_dma.exit.cleanup_crit_edge, %msm_handle_tx_dma.exit.thread, %if.then50, %if.then15, %if.end11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @tty_flip_buffer_push(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__tty_insert_flip_char(ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_readsl(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @do_SAK(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysrq_mask() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @handle_sysrq(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @uart_try_toggle_sysrq(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @msm_handle_tx_pio(ptr noundef %port, i32 noundef %tx_count) unnamed_addr #3 align 64 {
entry:
  %buf = alloca [4 x i8], align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %state = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 30
  %0 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %state, align 4
  %xmit1 = getelementptr inbounds %struct.uart_state, ptr %1, i32 0, i32 2
  %is_uartdm = getelementptr inbounds %struct.msm_port, ptr %port, i32 0, i32 5
  %2 = ptrtoint ptr %is_uartdm to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %is_uartdm, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  %membase3 = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 2
  %4 = ptrtoint ptr %membase3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %membase3, align 4
  br i1 %tobool.not, label %if.end, label %if.end.thread

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %add.ptr4 = getelementptr i8, ptr %5, i32 12
  br label %if.end9

if.end.thread:                                    ; preds = %entry
  %add.ptr2 = getelementptr i8, ptr %5, i32 112
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %tx_count)
  %tobool5.not72 = icmp eq i32 %tx_count, 0
  br i1 %tobool5.not72, label %if.end.thread.while.end_crit_edge, label %if.end.thread.while.cond.i.i_crit_edge

if.end.thread.while.cond.i.i_crit_edge:           ; preds = %if.end.thread
  br label %while.cond.i.i

if.end.thread.while.end_crit_edge:                ; preds = %if.end.thread
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end

while.cond.i.i:                                   ; preds = %if.end.i.i.while.cond.i.i_crit_edge, %if.end.thread.while.cond.i.i_crit_edge
  %timeout.0.i.i = phi i32 [ %dec.i.i, %if.end.i.i.while.cond.i.i_crit_edge ], [ 500000, %if.end.thread.while.cond.i.i_crit_edge ]
  %6 = ptrtoint ptr %membase3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %membase3, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %7, i32 8
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i) #12, !srcloc !102
  %9 = and i32 %8, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.not.i.i = icmp eq i32 %9, 0
  br i1 %tobool.not.i.i, label %while.body.i.i, label %while.cond.i.i.msm_reset_dm_count.exit_crit_edge

while.cond.i.i.msm_reset_dm_count.exit_crit_edge: ; preds = %while.cond.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %msm_reset_dm_count.exit

while.body.i.i:                                   ; preds = %while.cond.i.i
  %10 = ptrtoint ptr %membase3 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %membase3, align 4
  %add.ptr.i10.i.i = getelementptr i8, ptr %11, i32 20
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i10.i.i) #12, !srcloc !102
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %12)
  %tobool3.not.i.i = icmp sgt i32 %12, -1
  br i1 %tobool3.not.i.i, label %if.end.i.i, label %while.body.i.i.msm_reset_dm_count.exit_crit_edge

while.body.i.i.msm_reset_dm_count.exit_crit_edge: ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %msm_reset_dm_count.exit

if.end.i.i:                                       ; preds = %while.body.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %13 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %13(i32 noundef 214748) #12
  %dec.i.i = add nsw i32 %timeout.0.i.i, -1
  %tobool4.not.i.i = icmp eq i32 %timeout.0.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end.i.i.msm_reset_dm_count.exit_crit_edge, label %if.end.i.i.while.cond.i.i_crit_edge

if.end.i.i.while.cond.i.i_crit_edge:              ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.cond.i.i

if.end.i.i.msm_reset_dm_count.exit_crit_edge:     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %msm_reset_dm_count.exit

msm_reset_dm_count.exit:                          ; preds = %if.end.i.i.msm_reset_dm_count.exit_crit_edge, %while.body.i.i.msm_reset_dm_count.exit_crit_edge, %while.cond.i.i.msm_reset_dm_count.exit_crit_edge
  %14 = ptrtoint ptr %membase3 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %membase3, align 4
  %add.ptr.i12.i.i = getelementptr i8, ptr %15, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i12.i.i, i32 196608) #12, !srcloc !103
  %16 = tail call i32 @llvm.bswap.i32(i32 %tx_count) #12
  %17 = ptrtoint ptr %membase3 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %membase3, align 4
  %add.ptr.i.i = getelementptr i8, ptr %18, i32 64
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %16) #12, !srcloc !103
  %19 = ptrtoint ptr %membase3 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %membase3, align 4
  %add.ptr.i4.i = getelementptr i8, ptr %20, i32 64
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i4.i) #12, !srcloc !102
  br label %if.end9

if.end9:                                          ; preds = %msm_reset_dm_count.exit, %if.end
  %tf.074 = phi ptr [ %add.ptr2, %msm_reset_dm_count.exit ], [ %add.ptr4, %if.end ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %tx_count)
  %cmp82.not = icmp eq i32 %tx_count, 0
  br i1 %cmp82.not, label %if.end9.while.end_crit_edge, label %while.body.lr.ph

if.end9.while.end_crit_edge:                      ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end

while.body.lr.ph:                                 ; preds = %if.end9
  %membase.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 2
  %tail = getelementptr inbounds %struct.uart_state, ptr %1, i32 0, i32 2, i32 2
  %tx = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 31, i32 5
  %arrayidx22.1 = getelementptr inbounds [4 x i8], ptr %buf, i32 0, i32 1
  %arrayidx22.2 = getelementptr inbounds [4 x i8], ptr %buf, i32 0, i32 2
  %arrayidx22.3 = getelementptr inbounds [4 x i8], ptr %buf, i32 0, i32 3
  %arrayidx22.4 = getelementptr inbounds [4 x i8], ptr %buf, i32 0, i32 4
  %arrayidx22.5 = getelementptr [4 x i8], ptr %buf, i32 0, i32 5
  %arrayidx22.6 = getelementptr [4 x i8], ptr %buf, i32 0, i32 6
  br label %while.body

while.body:                                       ; preds = %cleanup.while.body_crit_edge, %while.body.lr.ph
  %tf_pointer.083 = phi i32 [ 0, %while.body.lr.ph ], [ %add28, %cleanup.while.body_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buf) #12
  %22 = ptrtoint ptr %buf to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 0, ptr %buf, align 4
  %23 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %membase.i, align 4
  %add.ptr.i = getelementptr i8, ptr %24, i32 8
  %25 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #12, !srcloc !102
  %26 = and i32 %25, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %tobool10.not = icmp eq i32 %26, 0
  br i1 %tobool10.not, label %cleanup.thread, label %if.end12

cleanup.thread:                                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf) #12
  br label %while.end

if.end12:                                         ; preds = %while.body
  %27 = ptrtoint ptr %is_uartdm to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %is_uartdm, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool14.not = icmp eq i32 %28, 0
  %sub = sub i32 %tx_count, %tf_pointer.083
  %29 = call i32 @llvm.umin.i32(i32 %sub, i32 4)
  %num_chars.0 = select i1 %tobool14.not, i32 1, i32 %29
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %num_chars.0)
  %cmp2080.not = icmp eq i32 %num_chars.0, 0
  br i1 %cmp2080.not, label %if.end12.cleanup_crit_edge, label %for.body

if.end12.cleanup_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

for.body:                                         ; preds = %if.end12
  %30 = ptrtoint ptr %xmit1 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %xmit1, align 4
  %32 = ptrtoint ptr %tail to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %tail, align 4
  %arrayidx = getelementptr i8, ptr %31, i32 %33
  %34 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %arrayidx, align 1
  %36 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 %35, ptr %buf, align 4
  %37 = ptrtoint ptr %tx to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %tx, align 4
  %inc = add i32 %38, 1
  store i32 %inc, ptr %tx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %num_chars.0)
  %exitcond.not = icmp eq i32 %num_chars.0, 1
  br i1 %exitcond.not, label %for.body.cleanup_crit_edge, label %for.body.1

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

for.body.1:                                       ; preds = %for.body
  %39 = ptrtoint ptr %xmit1 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %xmit1, align 4
  %41 = ptrtoint ptr %tail to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %tail, align 4
  %add.1 = add i32 %42, 1
  %arrayidx.1 = getelementptr i8, ptr %40, i32 %add.1
  %43 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %arrayidx.1, align 1
  %45 = ptrtoint ptr %arrayidx22.1 to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 %44, ptr %arrayidx22.1, align 1
  %46 = ptrtoint ptr %tx to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %tx, align 4
  %inc.1 = add i32 %47, 1
  store i32 %inc.1, ptr %tx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %num_chars.0)
  %exitcond.not.1 = icmp eq i32 %num_chars.0, 2
  br i1 %exitcond.not.1, label %for.body.1.cleanup_crit_edge, label %for.body.2

for.body.1.cleanup_crit_edge:                     ; preds = %for.body.1
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

for.body.2:                                       ; preds = %for.body.1
  %48 = ptrtoint ptr %xmit1 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %xmit1, align 4
  %50 = ptrtoint ptr %tail to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %tail, align 4
  %add.2 = add i32 %51, 2
  %arrayidx.2 = getelementptr i8, ptr %49, i32 %add.2
  %52 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %arrayidx.2, align 1
  %54 = ptrtoint ptr %arrayidx22.2 to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 %53, ptr %arrayidx22.2, align 2
  %55 = ptrtoint ptr %tx to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %tx, align 4
  %inc.2 = add i32 %56, 1
  store i32 %inc.2, ptr %tx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %num_chars.0)
  %exitcond.not.2 = icmp eq i32 %num_chars.0, 3
  br i1 %exitcond.not.2, label %for.body.2.cleanup_crit_edge, label %for.body.3

for.body.2.cleanup_crit_edge:                     ; preds = %for.body.2
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

for.body.3:                                       ; preds = %for.body.2
  %57 = ptrtoint ptr %xmit1 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %xmit1, align 4
  %59 = ptrtoint ptr %tail to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %tail, align 4
  %add.3 = add i32 %60, 3
  %arrayidx.3 = getelementptr i8, ptr %58, i32 %add.3
  %61 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %arrayidx.3, align 1
  %63 = ptrtoint ptr %arrayidx22.3 to i32
  call void @__asan_store1_noabort(i32 %63)
  store i8 %62, ptr %arrayidx22.3, align 1
  %64 = ptrtoint ptr %tx to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %tx, align 4
  %inc.3 = add i32 %65, 1
  store i32 %inc.3, ptr %tx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %num_chars.0)
  %exitcond.not.3 = icmp eq i32 %num_chars.0, 4
  br i1 %exitcond.not.3, label %for.body.3.cleanup_crit_edge, label %for.body.4

for.body.3.cleanup_crit_edge:                     ; preds = %for.body.3
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

for.body.4:                                       ; preds = %for.body.3
  call void @__sanitizer_cov_trace_pc() #14
  %66 = ptrtoint ptr %xmit1 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %xmit1, align 4
  %68 = ptrtoint ptr %tail to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %tail, align 4
  %add.4 = add i32 %69, 4
  %arrayidx.4 = getelementptr i8, ptr %67, i32 %add.4
  %70 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %arrayidx.4, align 1
  %72 = ptrtoint ptr %arrayidx22.4 to i32
  call void @__asan_store1_noabort(i32 %72)
  store i8 %71, ptr %arrayidx22.4, align 4
  %73 = ptrtoint ptr %tx to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %tx, align 4
  %inc.4 = add i32 %74, 1
  store i32 %inc.4, ptr %tx, align 4
  %75 = load ptr, ptr %xmit1, align 4
  %76 = load i32, ptr %tail, align 4
  %add.5 = add i32 %76, 5
  %arrayidx.5 = getelementptr i8, ptr %75, i32 %add.5
  %77 = ptrtoint ptr %arrayidx.5 to i32
  call void @__asan_load1_noabort(i32 %77)
  %78 = load i8, ptr %arrayidx.5, align 1
  %79 = ptrtoint ptr %arrayidx22.5 to i32
  call void @__asan_store1_noabort(i32 %79)
  store i8 %78, ptr %arrayidx22.5, align 1
  %80 = load i32, ptr %tx, align 4
  %inc.5 = add i32 %80, 1
  store i32 %inc.5, ptr %tx, align 4
  %81 = load ptr, ptr %xmit1, align 4
  %82 = load i32, ptr %tail, align 4
  %add.6 = add i32 %82, 6
  %arrayidx.6 = getelementptr i8, ptr %81, i32 %add.6
  %83 = ptrtoint ptr %arrayidx.6 to i32
  call void @__asan_load1_noabort(i32 %83)
  %84 = load i8, ptr %arrayidx.6, align 1
  %85 = ptrtoint ptr %arrayidx22.6 to i32
  call void @__asan_store1_noabort(i32 %85)
  store i8 %84, ptr %arrayidx22.6, align 2
  %86 = load i32, ptr %tx, align 4
  %inc.6 = add i32 %86, 1
  store i32 %inc.6, ptr %tx, align 4
  br label %cleanup

cleanup:                                          ; preds = %for.body.4, %for.body.3.cleanup_crit_edge, %for.body.2.cleanup_crit_edge, %for.body.1.cleanup_crit_edge, %for.body.cleanup_crit_edge, %if.end12.cleanup_crit_edge
  call void @__raw_writesl(ptr noundef %tf.074, ptr noundef nonnull %buf, i32 noundef 1) #12
  %87 = ptrtoint ptr %tail to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %tail, align 4
  %add25 = add i32 %88, %num_chars.0
  %and26 = and i32 %add25, 4095
  store i32 %and26, ptr %tail, align 4
  %add28 = add i32 %num_chars.0, %tf_pointer.083
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf) #12
  %cmp = icmp ult i32 %add28, %tx_count
  br i1 %cmp, label %cleanup.while.body_crit_edge, label %cleanup.while.end_crit_edge

cleanup.while.end_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end

cleanup.while.body_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body

while.end:                                        ; preds = %cleanup.while.end_crit_edge, %cleanup.thread, %if.end9.while.end_crit_edge, %if.end.thread.while.end_crit_edge
  %head = getelementptr inbounds %struct.uart_state, ptr %1, i32 0, i32 2, i32 1
  %89 = ptrtoint ptr %head to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %head, align 4
  %tail30 = getelementptr inbounds %struct.uart_state, ptr %1, i32 0, i32 2, i32 2
  %91 = ptrtoint ptr %tail30 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %tail30, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %90, i32 %92)
  %cmp31 = icmp eq i32 %90, %92
  br i1 %cmp31, label %if.then32, label %while.end.if.end33_crit_edge

while.end.if.end33_crit_edge:                     ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end33

if.then32:                                        ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #14
  %imr.i = getelementptr inbounds %struct.msm_port, ptr %port, i32 0, i32 4
  %93 = ptrtoint ptr %imr.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %imr.i, align 4
  %and.i = and i32 %94, -2
  store i32 %and.i, ptr %imr.i, align 4
  %95 = call i32 @llvm.bswap.i32(i32 %and.i) #12
  %membase.i.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 2
  %96 = ptrtoint ptr %membase.i.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %membase.i.i, align 4
  %add.ptr.i.i70 = getelementptr i8, ptr %97, i32 20
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i70, i32 %95) #12, !srcloc !103
  br label %if.end33

if.end33:                                         ; preds = %if.then32, %while.end.if.end33_crit_edge
  %98 = ptrtoint ptr %head to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %head, align 4
  %100 = ptrtoint ptr %tail30 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %tail30, align 4
  %sub36 = sub i32 %99, %101
  %and37 = and i32 %sub36, 3840
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and37)
  %cmp38 = icmp eq i32 %and37, 0
  br i1 %cmp38, label %if.then39, label %if.end33.if.end40_crit_edge

if.end33.if.end40_crit_edge:                      ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end40

if.then39:                                        ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #14
  call void @uart_write_wakeup(ptr noundef %port) #12
  br label %if.end40

if.end40:                                         ; preds = %if.then39, %if.end33.if.end40_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @uart_write_wakeup(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @msm_complete_tx_dma(ptr noundef %args) #3 align 64 {
entry:
  %state2 = alloca %struct.dma_tx_state, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %state = getelementptr inbounds %struct.uart_port, ptr %args, i32 0, i32 30
  %0 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %state, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %state2) #12
  %2 = getelementptr inbounds %struct.dma_tx_state, ptr %state2, i32 0, i32 2
  %3 = call ptr @memset(ptr %state2, i32 255, i32 16)
  %call4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %args) #12
  %count7 = getelementptr inbounds %struct.msm_port, ptr %args, i32 0, i32 8, i32 6
  %4 = ptrtoint ptr %count7 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %count7, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  br i1 %tobool.not, label %entry.done_crit_edge, label %if.end

entry.done_crit_edge:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %done

if.end:                                           ; preds = %entry
  %tx_dma = getelementptr inbounds %struct.msm_port, ptr %args, i32 0, i32 8
  %6 = ptrtoint ptr %tx_dma to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %tx_dma, align 4
  %cookie = getelementptr inbounds %struct.msm_port, ptr %args, i32 0, i32 8, i32 4
  %8 = ptrtoint ptr %cookie to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %cookie, align 4
  %10 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %7, align 4
  %device_tx_status.i = getelementptr inbounds %struct.dma_device, ptr %11, i32 0, i32 49
  %12 = ptrtoint ptr %device_tx_status.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %device_tx_status.i, align 4
  %call.i = call i32 %13(ptr noundef %7, i32 noundef %9, ptr noundef nonnull %state2) #12
  %dev = getelementptr inbounds %struct.uart_port, ptr %args, i32 0, i32 45
  %14 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev, align 4
  %phys = getelementptr inbounds %struct.msm_port, ptr %args, i32 0, i32 8, i32 2
  %16 = ptrtoint ptr %phys to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %phys, align 4
  %18 = ptrtoint ptr %count7 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %count7, align 4
  %dir = getelementptr inbounds %struct.msm_port, ptr %args, i32 0, i32 8, i32 1
  %20 = ptrtoint ptr %dir to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %dir, align 4
  call void @dma_unmap_page_attrs(ptr noundef %15, i32 noundef %17, i32 noundef %19, i32 noundef %21, i32 noundef 0) #12
  %membase.i = getelementptr inbounds %struct.uart_port, ptr %args, i32 0, i32 2
  %22 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %membase.i, align 4
  %add.ptr.i = getelementptr i8, ptr %23, i32 60
  %24 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #12, !srcloc !102
  %25 = call i32 @llvm.bswap.i32(i32 %24) #12
  %enable_bit = getelementptr inbounds %struct.msm_port, ptr %args, i32 0, i32 8, i32 5
  %26 = ptrtoint ptr %enable_bit to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %enable_bit, align 4
  %neg = xor i32 %27, -1
  %and = and i32 %25, %neg
  %28 = call i32 @llvm.bswap.i32(i32 %and) #12
  %29 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %membase.i, align 4
  %add.ptr.i58 = getelementptr i8, ptr %30, i32 60
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i58, i32 %28) #12, !srcloc !103
  %is_uartdm = getelementptr inbounds %struct.msm_port, ptr %args, i32 0, i32 5
  %31 = ptrtoint ptr %is_uartdm to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %is_uartdm, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %32)
  %cmp11 = icmp sgt i32 %32, 3
  br i1 %cmp11, label %if.then13, label %if.end.if.end14_crit_edge

if.end.if.end14_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end14

if.then13:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %33 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %membase.i, align 4
  %add.ptr.i60 = getelementptr i8, ptr %34, i32 16
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i60, i32 536870912) #12, !srcloc !103
  %35 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %membase.i, align 4
  %add.ptr.i62 = getelementptr i8, ptr %36, i32 16
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i62, i32 67108864) #12, !srcloc !103
  br label %if.end14

if.end14:                                         ; preds = %if.then13, %if.end.if.end14_crit_edge
  %37 = ptrtoint ptr %count7 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %count7, align 4
  %39 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %2, align 4
  %sub = sub i32 %38, %40
  %tx = getelementptr inbounds %struct.uart_port, ptr %args, i32 0, i32 31, i32 5
  %41 = ptrtoint ptr %tx to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %tx, align 4
  %add = add i32 %42, %sub
  store i32 %add, ptr %tx, align 4
  store i32 0, ptr %count7, align 4
  %tail = getelementptr inbounds %struct.uart_state, ptr %1, i32 0, i32 2, i32 2
  %43 = ptrtoint ptr %tail to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %tail, align 4
  %add17 = add i32 %44, %sub
  %and19 = and i32 %add17, 4095
  store i32 %and19, ptr %tail, align 4
  %imr = getelementptr inbounds %struct.msm_port, ptr %args, i32 0, i32 4
  %45 = ptrtoint ptr %imr to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %imr, align 4
  %or = or i32 %46, 1
  store i32 %or, ptr %imr, align 4
  %47 = call i32 @llvm.bswap.i32(i32 %or) #12
  %48 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %membase.i, align 4
  %add.ptr.i64 = getelementptr i8, ptr %49, i32 20
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i64, i32 %47) #12, !srcloc !103
  %head = getelementptr inbounds %struct.uart_state, ptr %1, i32 0, i32 2, i32 1
  %50 = ptrtoint ptr %head to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %head, align 4
  %52 = ptrtoint ptr %tail to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %tail, align 4
  %sub22 = sub i32 %51, %53
  %and23 = and i32 %sub22, 3840
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and23)
  %cmp24 = icmp eq i32 %and23, 0
  br i1 %cmp24, label %if.then26, label %if.end14.if.end27_crit_edge

if.end14.if.end27_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end27

if.then26:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #14
  call void @uart_write_wakeup(ptr noundef %args) #12
  br label %if.end27

if.end27:                                         ; preds = %if.then26, %if.end14.if.end27_crit_edge
  call fastcc void @msm_handle_tx(ptr noundef %args)
  br label %done

done:                                             ; preds = %if.end27, %entry.done_crit_edge
  call void @_raw_spin_unlock_irqrestore(ptr noundef %args, i32 noundef %call4) #12
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %state2) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @is_vmalloc_addr(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_driver_string(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @debug_dma_map_single(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_map_page_attrs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @debug_dma_mapping_error(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @sg_init_table(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @uart_get_baud_rate(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tty_termios_baud_rate(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @tty_termios_encode_baud_rate(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @uart_update_timeout(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_set_rate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_round_rate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @__release_region(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @iounmap(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__request_region(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ioremap(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @uart_remove_one_port(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @msm_serial_suspend(ptr nocapture noundef readonly %dev) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %call1 = tail call i32 @uart_suspend_port(ptr noundef nonnull @msm_uart_driver, ptr noundef %1) #12
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @msm_serial_resume(ptr nocapture noundef readonly %dev) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %call1 = tail call i32 @uart_resume_port(ptr noundef nonnull @msm_uart_driver, ptr noundef %1) #12
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @uart_suspend_port(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @uart_resume_port(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @msm_console_write(ptr nocapture noundef readonly %co, ptr nocapture noundef readonly %s, i32 noundef %count) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %index = getelementptr inbounds %struct.console, ptr %co, i32 0, i32 9
  %0 = ptrtoint ptr %index to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %index, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %1)
  %cmp4 = icmp ugt i16 %1, 2
  br i1 %cmp4, label %do.body7, label %do.end12, !prof !109

do.body7:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/tty/serial/msm_serial.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1672, 0\0A.popsection", ""() #12, !srcloc !115
  unreachable

do.end12:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %conv1419 = zext i16 %1 to i32
  %arrayidx.i = getelementptr [3 x %struct.msm_port], ptr @msm_uart_ports, i32 0, i32 %conv1419
  %is_uartdm = getelementptr [3 x %struct.msm_port], ptr @msm_uart_ports, i32 0, i32 %conv1419, i32 5
  %2 = ptrtoint ptr %is_uartdm to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %is_uartdm, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool15 = icmp ne i32 %3, 0
  tail call fastcc void @__msm_console_write(ptr noundef %arrayidx.i, ptr noundef %s, i32 noundef %count, i1 noundef zeroext %tobool15)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @uart_console_device(ptr noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @msm_console_setup(ptr noundef %co, ptr noundef %options) #3 align 64 {
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
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %5)
  %cmp = icmp ugt i16 %5, 2
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end, !prof !109

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %conv836 = zext i16 %5 to i32
  %arrayidx.i = getelementptr [3 x %struct.msm_port], ptr @msm_uart_ports, i32 0, i32 %conv836
  %membase = getelementptr inbounds %struct.uart_port, ptr %arrayidx.i, i32 0, i32 2
  %6 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %membase, align 4
  %tobool9.not = icmp eq ptr %7, null
  br i1 %tobool9.not, label %if.end.cleanup_crit_edge, label %if.end19, !prof !109

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end19:                                         ; preds = %if.end
  tail call fastcc void @msm_init_clock(ptr noundef %arrayidx.i)
  %tobool20.not = icmp eq ptr %options, null
  br i1 %tobool20.not, label %if.end19.do.end_crit_edge, label %if.then21

if.end19.do.end_crit_edge:                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end

if.then21:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #14
  call void @uart_parse_options(ptr noundef nonnull %options, ptr noundef nonnull %baud, ptr noundef nonnull %parity, ptr noundef nonnull %bits, ptr noundef nonnull %flow) #12
  br label %do.end

do.end:                                           ; preds = %if.then21, %if.end19.do.end_crit_edge
  %line = getelementptr inbounds %struct.uart_port, ptr %arrayidx.i, i32 0, i32 41
  %8 = ptrtoint ptr %line to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %line, align 4
  %call23 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, i32 noundef %9) #15
  %10 = ptrtoint ptr %baud to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %baud, align 4
  %12 = ptrtoint ptr %parity to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %parity, align 4
  %14 = ptrtoint ptr %bits to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %bits, align 4
  %16 = ptrtoint ptr %flow to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %flow, align 4
  %call24 = call i32 @uart_set_options(ptr noundef %arrayidx.i, ptr noundef %co, i32 noundef %11, i32 noundef %13, i32 noundef %15, i32 noundef %17) #12
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call24, %do.end ], [ -6, %entry.cleanup_crit_edge ], [ -6, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %flow) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %parity) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bits) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %baud) #12
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @uart_parse_options(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @uart_set_options(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @uart_register_driver(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.abs.i32(i32, i1 immarg) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #5

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

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #13 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 42)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #13 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 42)
  ret void
}

attributes #0 = { cold mustprogress nofree norecurse nosync nounwind null_pointer_is_valid optsize sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #8 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #12 = { nounwind }
attributes #13 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #14 = { nomerge }
attributes #15 = { cold nounwind }
attributes #16 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !15, !17, !19, !21, !23, !24, !25, !26, !27, !28, !29, !31, !33, !35, !36, !37, !39, !41, !43, !45, !47, !49, !51, !53, !55, !56, !57, !59, !61, !62, !63, !64, !66, !68, !70, !72, !74, !76, !78, !80, !82, !84, !85, !86, !87, !89, !90, !91}
!llvm.module.flags = !{!92, !93, !94, !95, !96, !97, !98, !99}
!llvm.ident = !{!100}

!0 = !{ptr @__UNIQUE_ID___earlycon_msm_serial242, !1, !"__UNIQUE_ID___earlycon_msm_serial242", i1 false, i1 false}
!1 = !{!"../drivers/tty/serial/msm_serial.c", i32 1723, i32 1}
!2 = !{ptr @__UNIQUE_ID___earlycon_msm_serial_dm243, !3, !"__UNIQUE_ID___earlycon_msm_serial_dm243", i1 false, i1 false}
!3 = !{!"../drivers/tty/serial/msm_serial.c", i32 1744, i32 1}
!4 = !{ptr @__initcall__kmod_msm_serial__244_1914_msm_serial_init6, !5, !"__initcall__kmod_msm_serial__244_1914_msm_serial_init6", i1 false, i1 false}
!5 = !{!"../drivers/tty/serial/msm_serial.c", i32 1914, i32 1}
!6 = !{ptr @__exitcall_msm_serial_exit, !7, !"__exitcall_msm_serial_exit", i1 false, i1 false}
!7 = !{!"../drivers/tty/serial/msm_serial.c", i32 1915, i32 1}
!8 = !{ptr @__UNIQUE_ID_author245, !9, !"__UNIQUE_ID_author245", i1 false, i1 false}
!9 = !{!"../drivers/tty/serial/msm_serial.c", i32 1917, i32 1}
!10 = !{ptr @__UNIQUE_ID_description246, !11, !"__UNIQUE_ID_description246", i1 false, i1 false}
!11 = !{!"../drivers/tty/serial/msm_serial.c", i32 1918, i32 1}
!12 = !{ptr @__UNIQUE_ID_file247, !13, !"__UNIQUE_ID_file247", i1 false, i1 false}
!13 = !{!"../drivers/tty/serial/msm_serial.c", i32 1919, i32 1}
!14 = !{ptr @__UNIQUE_ID_license248, !13, !"__UNIQUE_ID_license248", i1 false, i1 false}
!15 = !{ptr @.str, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/tty/serial/msm_serial.c", i32 1885, i32 11}
!17 = !{ptr @msm_platform_driver, !18, !"msm_platform_driver", i1 false, i1 false}
!18 = !{!"../drivers/tty/serial/msm_serial.c", i32 1881, i32 31}
!19 = !{ptr @.str.1, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/tty/serial/msm_serial.c", i32 1792, i32 45}
!21 = !{ptr @.str.2, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/tty/serial/msm_serial.c", i32 1802, i32 2}
!23 = !{ptr @.str.3, !22, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.4, !22, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.5, !22, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @.str.6, !22, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @msm_serial_probe._entry, !22, !"_entry", i1 false, i1 false}
!28 = !{ptr @msm_serial_probe._entry_ptr, !22, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @.str.7, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/tty/serial/msm_serial.c", i32 1814, i32 43}
!31 = !{ptr @.str.8, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/tty/serial/msm_serial.c", i32 1819, i32 45}
!33 = !{ptr @.str.10, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/tty/serial/msm_serial.c", i32 1825, i32 2}
!35 = !{ptr @msm_serial_probe._entry.9, !34, !"_entry", i1 false, i1 false}
!36 = !{ptr @msm_serial_probe._entry_ptr.11, !34, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @msm_uart_next_id, !38, !"msm_uart_next_id", i1 false, i1 false}
!38 = !{!"../drivers/tty/serial/msm_serial.c", i32 1773, i32 17}
!39 = !{ptr @msm_uart_ports, !40, !"msm_uart_ports", i1 false, i1 false}
!40 = !{!"../drivers/tty/serial/msm_serial.c", i32 1561, i32 24}
!41 = !{ptr @msm_uart_pops, !42, !"msm_uart_pops", i1 false, i1 false}
!42 = !{!"../drivers/tty/serial/msm_serial.c", i32 1537, i32 30}
!43 = !{ptr @.str.12, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/tty/serial/msm_serial.c", i32 1202, i32 4}
!45 = !{ptr @.str.13, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/tty/serial/msm_serial.c", i32 302, i32 36}
!47 = !{ptr @.str.14, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/tty/serial/msm_serial.c", i32 306, i32 37}
!49 = !{ptr @.str.15, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/tty/serial/msm_serial.c", i32 350, i32 36}
!51 = !{ptr @.str.16, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/tty/serial/msm_serial.c", i32 354, i32 37}
!53 = distinct !{null, !54, !"__already_done", i1 false, i1 false}
!54 = !{!"../include/linux/dma-mapping.h", i32 326, i32 6}
!55 = !{ptr @.str.17, !54, !"<string literal>", i1 false, i1 false}
!56 = !{ptr @.str.18, !54, !"<string literal>", i1 false, i1 false}
!57 = !{ptr @msm_find_best_baud.table, !58, !"table", i1 false, i1 false}
!58 = !{!"../drivers/tty/serial/msm_serial.c", i32 1062, i32 35}
!59 = !{ptr @.str.19, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/tty/serial/msm_serial.c", i32 1431, i32 3}
!61 = !{ptr @.str.20, !60, !"<string literal>", i1 false, i1 false}
!62 = !{ptr @msm_power._entry, !60, !"_entry", i1 false, i1 false}
!63 = !{ptr @msm_power._entry_ptr, !60, !"_entry_ptr", i1 false, i1 false}
!64 = !{ptr @.str.21, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/tty/serial/msm_serial.c", i32 1347, i32 9}
!66 = !{ptr @msm_poll_get_char_dm.slop, !67, !"slop", i1 false, i1 false}
!67 = !{!"../drivers/tty/serial/msm_serial.c", i32 1450, i32 13}
!68 = !{ptr @msm_poll_get_char_dm.count, !69, !"count", i1 false, i1 false}
!69 = !{!"../drivers/tty/serial/msm_serial.c", i32 1451, i32 13}
!70 = !{ptr @msm_uartdm_table, !71, !"msm_uartdm_table", i1 false, i1 false}
!71 = !{!"../drivers/tty/serial/msm_serial.c", i32 1775, i32 34}
!72 = !{ptr @msm_match_table, !73, !"msm_match_table", i1 false, i1 false}
!73 = !{!"../drivers/tty/serial/msm_serial.c", i32 1852, i32 34}
!74 = !{ptr @msm_serial_dev_pm_ops, !75, !"msm_serial_dev_pm_ops", i1 false, i1 false}
!75 = !{!"../drivers/tty/serial/msm_serial.c", i32 1877, i32 32}
!76 = !{ptr @.str.22, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/tty/serial/msm_serial.c", i32 1768, i32 14}
!78 = !{ptr @msm_uart_driver, !79, !"msm_uart_driver", i1 false, i1 false}
!79 = !{!"../drivers/tty/serial/msm_serial.c", i32 1765, i32 27}
!80 = !{ptr @msm_console, !81, !"msm_console", i1 false, i1 false}
!81 = !{!"../drivers/tty/serial/msm_serial.c", i32 1749, i32 23}
!82 = !{ptr @.str.23, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/tty/serial/msm_serial.c", i32 1701, i32 2}
!84 = !{ptr @.str.24, !83, !"<string literal>", i1 false, i1 false}
!85 = !{ptr @msm_console_setup._entry, !83, !"_entry", i1 false, i1 false}
!86 = !{ptr @msm_console_setup._entry_ptr, !83, !"_entry_ptr", i1 false, i1 false}
!87 = !{ptr @.str.25, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/tty/serial/msm_serial.c", i32 1903, i32 2}
!89 = !{ptr @.str.26, !88, !"<string literal>", i1 false, i1 false}
!90 = !{ptr @msm_serial_init._entry, !88, !"_entry", i1 false, i1 false}
!91 = !{ptr @msm_serial_init._entry_ptr, !88, !"_entry_ptr", i1 false, i1 false}
!92 = !{i32 1, !"wchar_size", i32 2}
!93 = !{i32 1, !"min_enum_size", i32 4}
!94 = !{i32 8, !"branch-target-enforcement", i32 0}
!95 = !{i32 8, !"sign-return-address", i32 0}
!96 = !{i32 8, !"sign-return-address-all", i32 0}
!97 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!98 = !{i32 7, !"uwtable", i32 1}
!99 = !{i32 7, !"frame-pointer", i32 2}
!100 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!101 = !{!"branch_weights", i32 2000, i32 1}
!102 = !{i64 6261462}
!103 = !{i64 6261044}
!104 = !{i64 2154731216}
!105 = !{i64 2154731058}
!106 = !{i64 2148339231}
!107 = !{i64 2148254540, i64 2148254572, i64 2148254601, i64 2148254635, i64 2148254666, i64 2148254689}
!108 = !{i64 2148339460}
!109 = !{!"branch_weights", i32 1, i32 2000}
!110 = !{i64 2154728528}
!111 = !{i64 2154728370}
!112 = !{i64 2154728906}
!113 = !{i64 2154728748}
!114 = !{i8 0, i8 2}
!115 = !{i64 2154732451, i64 2154732948, i64 2154732488, i64 2154732544, i64 2154732578, i64 2154732602, i64 2154732643, i64 2154732664, i64 2154732692, i64 2154732726}
