; ModuleID = '/llk/IR_all_yes/drivers/tty/serial/8250/8250_omap.c_pt.bc'
source_filename = "../drivers/tty/serial/8250/8250_omap.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.soc_device_attribute = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.omap8250_platdata = type { ptr, i8 }
%struct.omap8250_dma_params = type { i32, i8, i8 }
%struct.uart_8250_port = type { %struct.uart_port, %struct.timer_list, %struct.list_head, i32, i16, i8, i32, i8, i8, i8, i8, i8, i8, i32, i8, i8, ptr, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.delayed_work, i32 }
%struct.uart_port = type { %struct.spinlock, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i8, i8, i8, i8, i32, i32, ptr, %struct.uart_icount, ptr, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, ptr, i32, i32, i8, i8, i8, i8, i8, ptr, ptr, ptr, %struct.serial_rs485, ptr, %struct.serial_iso7816, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
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
%struct.omap8250_priv = type { i32, i8, i8, i8, i8, i8, i8, i8, i8, i16, i8, i8, i8, i32, i32, i32, i32, %struct.pm_qos_request, %struct.work_struct, %struct.uart_8250_dma, %struct.spinlock, i8, i8 }
%struct.pm_qos_request = type { %struct.plist_node, ptr }
%struct.plist_node = type { i32, %struct.list_head, %struct.list_head }
%struct.uart_8250_dma = type { ptr, ptr, ptr, ptr, ptr, %struct.dma_slave_config, %struct.dma_slave_config, ptr, ptr, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i8, i8, i8 }
%struct.dma_slave_config = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, ptr, i32 }
%struct.ktermios = type { i32, i32, i32, i32, i8, [19 x i8], i32, i32 }
%struct.console = type { [16 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, i16, i16, i32, i32, i32, ptr, ptr }
%struct.uart_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.scatterlist = type { i32, i32, i32, i32, i32 }
%struct.uart_state = type { %struct.tty_port, i32, %struct.circ_buf, %struct.atomic_t, %struct.wait_queue_head, ptr }
%struct.tty_port = type { %struct.tty_bufhead, ptr, ptr, ptr, ptr, %struct.spinlock, i32, i32, %struct.wait_queue_head, %struct.wait_queue_head, i32, i32, i8, %struct.mutex, %struct.mutex, ptr, i32, i32, i32, %struct.kref, ptr }
%struct.tty_bufhead = type { ptr, %struct.work_struct, %struct.mutex, %struct.atomic_t, %struct.tty_buffer, %struct.llist_head, %struct.atomic_t, i32, ptr }
%struct.tty_buffer = type { %union.anon.37, i32, i32, i32, i32, i32, [0 x i32] }
%union.anon.37 = type { ptr }
%struct.llist_head = type { ptr }
%struct.circ_buf = type { ptr, i32, i32 }
%struct.tty_struct = type { i32, %struct.kref, ptr, ptr, ptr, i32, %struct.ld_semaphore, ptr, %struct.mutex, %struct.mutex, %struct.mutex, %struct.rw_semaphore, %struct.mutex, %struct.ktermios, %struct.ktermios, [64 x i8], i32, i32, %struct.winsize, %struct.anon.38, %struct.anon.39, i32, i32, i32, ptr, ptr, %struct.wait_queue_head, %struct.wait_queue_head, %struct.work_struct, ptr, ptr, %struct.spinlock, %struct.list_head, i32, ptr, i32, %struct.work_struct, ptr }
%struct.ld_semaphore = type { %struct.atomic_t, %struct.raw_spinlock, i32, %struct.list_head, %struct.list_head, %struct.lockdep_map }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.winsize = type { i16, i16, i16, i16 }
%struct.anon.38 = type { %struct.spinlock, i8, i8, [0 x i32] }
%struct.anon.39 = type { %struct.spinlock, ptr, ptr, i8, i8, [0 x i32] }
%struct.dma_device = type { %struct.kref, i32, i32, %struct.list_head, %struct.list_head, %struct.dma_filter, %struct.dma_cap_mask_t, i32, i16, i16, i32, i32, i32, i32, i32, ptr, ptr, %struct.ida, %struct.mutex, i32, i32, i32, i32, i32, i32, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dma_filter = type { ptr, i32, ptr }
%struct.dma_cap_mask_t = type { [1 x i32] }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.dma_async_tx_descriptor = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, %struct.spinlock }
%struct.dma_tx_state = type { i32, i32, i32, i32 }

@__initcall__kmod_8250_omap__237_1695_omap8250_console_fixupcon = internal global ptr @omap8250_console_fixup, section ".con_initcall.init", align 4
@__initcall__kmod_8250_omap__238_1715_omap8250_platform_driver_init6 = internal global ptr @omap8250_platform_driver_init, section ".initcall6.init", align 4
@omap8250_platform_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @omap8250_probe, ptr @omap8250_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str.12, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @omap8250_dt_ids, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @omap8250_dev_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_omap8250_platform_driver_exit = internal global ptr @omap8250_platform_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author239 = internal constant [43 x i8] c"8250_omap.author=Sebastian Andrzej Siewior\00", section ".modinfo", align 1
@__UNIQUE_ID_description240 = internal constant [39 x i8] c"8250_omap.description=OMAP 8250 Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file241 = internal constant [49 x i8] c"8250_omap.file=drivers/tty/serial/8250/8250_omap\00", section ".modinfo", align 1
@__UNIQUE_ID_license242 = internal constant [25 x i8] c"8250_omap.license=GPL v2\00", section ".modinfo", align 1
@boot_command_line = external dso_local global [0 x i8], section ".init.data", align 1
@.str = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"console=ttyS\00", [19 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"console=ttyO\00", [19 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"ttyS\00", [27 x i8] zeroinitializer }, align 32
@omap8250_console_fixup._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.5, i32 1690, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"\013WARNING: Your 'console=ttyO%d' has been replaced by 'ttyS%d'\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"omap8250_console_fixup\00", [41 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"drivers/tty/serial/8250/8250_omap.c\00", [60 x i8] zeroinitializer }, align 32
@omap8250_console_fixup._entry_ptr = internal global ptr @omap8250_console_fixup._entry, section ".printk_index", align 4
@omap8250_console_fixup._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.4, ptr @.str.5, i32 1691, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"\013This ensures that you still see kernel messages. Please\0A\00", [37 x i8] zeroinitializer }, align 32
@omap8250_console_fixup._entry_ptr.8 = internal global ptr @omap8250_console_fixup._entry.6, section ".printk_index", align 4
@omap8250_console_fixup._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.4, ptr @.str.5, i32 1692, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\013update your kernel commandline.\0A\00", [61 x i8] zeroinitializer }, align 32
@omap8250_console_fixup._entry_ptr.11 = internal global ptr @omap8250_console_fixup._entry.9, section ".printk_index", align 4
@.str.12 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"omap8250\00", [23 x i8] zeroinitializer }, align 32
@omap8250_dt_ids = internal constant { [8 x %struct.of_device_id], [384 x i8] } { [8 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,am654-uart\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @am654_platdata }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,omap2-uart\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,omap3-uart\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,omap4-uart\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @omap4_platdata }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,am3352-uart\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @am33xx_platdata }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,am4372-uart\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @am33xx_platdata }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,dra742-uart\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @omap4_platdata }, %struct.of_device_id zeroinitializer], [384 x i8] zeroinitializer }, align 32
@omap8250_dev_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr @omap8250_prepare, ptr @omap8250_complete, ptr @omap8250_suspend, ptr @omap8250_resume, ptr @omap8250_suspend, ptr @omap8250_resume, ptr @omap8250_suspend, ptr @omap8250_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @omap8250_runtime_suspend, ptr @omap8250_runtime_resume, ptr null }, [36 x i8] zeroinitializer }, align 32
@omap8250_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.14, ptr @.str.5, i32 1299, ptr @.str.15, ptr @.str.16 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"missing registers\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"omap8250_probe\00", [17 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@omap8250_probe._entry_ptr = internal global ptr @omap8250_probe._entry, section ".printk_index", align 4
@.str.17 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"serial\00", [25 x i8] zeroinitializer }, align 32
@omap8250_probe._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.14, ptr @.str.5, i32 1358, ptr @.str.15, ptr @.str.16 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"failed to get alias\0A\00", [43 x i8] zeroinitializer }, align 32
@omap8250_probe._entry_ptr.20 = internal global ptr @omap8250_probe._entry.18, section ".printk_index", align 4
@.str.21 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"clock-frequency\00", [16 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"overrun-throttle-ms\00", [44 x i8] zeroinitializer }, align 32
@omap8250_probe._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.14, ptr @.str.5, i32 1389, ptr @.str.25, ptr @.str.16 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"No clock speed specified: using default: %d\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@omap8250_probe._entry_ptr.26 = internal global ptr @omap8250_probe._entry.23, section ".printk_index", align 4
@omap8250_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.27 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"(work_completion)(&priv->qos_work)\00", [61 x i8] zeroinitializer }, align 32
@omap8250_probe.__key.28 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.29 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"&priv->rx_dma_lock\00", [45 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"dma-names\00", [22 x i8] zeroinitializer }, align 32
@omap8250_probe._entry.31 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.14, ptr @.str.5, i32 1456, ptr @.str.15, ptr @.str.16 }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"unable to register 8250 port\0A\00", [34 x i8] zeroinitializer }, align 32
@omap8250_probe._entry_ptr.33 = internal global ptr @omap8250_probe._entry.31, section ".printk_index", align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@omap_8250_mdr1_errataset._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.35, ptr @.str.5, i32 212, ptr @.str.36, ptr @.str.16 }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Errata i202: timedout %x\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"omap_8250_mdr1_errataset\00", [39 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\012\00", [29 x i8] zeroinitializer }, align 32
@omap_8250_mdr1_errataset._entry_ptr = internal global ptr @omap_8250_mdr1_errataset._entry, section ".printk_index", align 4
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@omap_8250_startup._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.37, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"_rs.lock\00", [23 x i8] zeroinitializer }, align 32
@__func__.omap_8250_startup = private unnamed_addr constant [18 x i8] c"omap_8250_startup\00", align 1
@omap_8250_startup._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @__func__.omap_8250_startup, ptr @.str.5, i32 699, ptr @.str.25, ptr @.str.16 }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"failed to request DMA\0A\00", [41 x i8] zeroinitializer }, align 32
@omap_8250_startup._entry_ptr = internal global ptr @omap_8250_startup._entry, section ".printk_index", align 4
@omap_8250_rx_dma_flush.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@__dma_rx_do_complete._entry = internal constant %struct.pi_entry { ptr @.str.39, ptr @.str.40, ptr @.str.5, i32 853, ptr @.str.15, ptr @.str.16 }, align 1
@.str.39 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"teardown incomplete\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"__dma_rx_do_complete\00", [43 x i8] zeroinitializer }, align 32
@__dma_rx_do_complete._entry_ptr = internal global ptr @__dma_rx_do_complete._entry, section ".printk_index", align 4
@omap_serial_fill_features_erratas.k3_soc_devices = internal constant { [3 x %struct.soc_device_attribute], [44 x i8] } { [3 x %struct.soc_device_attribute] [%struct.soc_device_attribute { ptr null, ptr @.str.41, ptr null, ptr null, ptr null, ptr null, ptr null }, %struct.soc_device_attribute { ptr null, ptr @.str.42, ptr @.str.43, ptr null, ptr null, ptr null, ptr null }, %struct.soc_device_attribute zeroinitializer], [44 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"AM65X\00", [26 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"J721E\00", [26 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"SR1.0\00", [26 x i8] zeroinitializer }, align 32
@omap_serial_fill_features_erratas._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @.str.45, ptr @.str.5, i32 570, ptr @.str.25, ptr @.str.16 }, [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"Unknown revision, defaulting to highest\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"omap_serial_fill_features_erratas\00", [62 x i8] zeroinitializer }, align 32
@omap_serial_fill_features_erratas._entry_ptr = internal global ptr @omap_serial_fill_features_erratas._entry, section ".printk_index", align 4
@omap8250_no_handle_irq.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.46 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"Unexpected irq handling before port startup\0A\00", [51 x i8] zeroinitializer }, align 32
@am654_platdata = internal global { %struct.omap8250_platdata, [24 x i8] } { %struct.omap8250_platdata { ptr @am654_dma, i8 112 }, [24 x i8] zeroinitializer }, align 32
@omap4_platdata = internal global { %struct.omap8250_platdata, [24 x i8] } { %struct.omap8250_platdata { ptr @am33xx_dma, i8 8 }, [24 x i8] zeroinitializer }, align 32
@am33xx_platdata = internal global { %struct.omap8250_platdata, [24 x i8] } { %struct.omap8250_platdata { ptr @am33xx_dma, i8 12 }, [24 x i8] zeroinitializer }, align 32
@am654_dma = internal global { %struct.omap8250_dma_params, [24 x i8] } { %struct.omap8250_dma_params { i32 2048, i8 1, i8 1 }, [24 x i8] zeroinitializer }, align 32
@am33xx_dma = internal global { %struct.omap8250_dma_params, [24 x i8] } { %struct.omap8250_dma_params { i32 48, i8 48, i8 1 }, [24 x i8] zeroinitializer }, align 32
@console_suspend_enabled = external dso_local local_unnamed_addr global i8, align 1
@omap8250_soft_reset._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.47, ptr @.str.48, ptr @.str.5, i32 1585, ptr @.str.15, ptr @.str.16 }, [40 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"timed out waiting for reset done\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"omap8250_soft_reset\00", [44 x i8] zeroinitializer }, align 32
@omap8250_soft_reset._entry_ptr = internal global ptr @omap8250_soft_reset._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.49 = internal global [5 x i64] [i64 3, i64 16, i64 1030, i64 1282, i64 1539]
@__sancov_gen_cov_switch_values.50 = internal global [5 x i64] [i64 3, i64 32, i64 4, i64 6, i64 12]
@___asan_gen_.51 = private unnamed_addr constant [25 x i8] c"omap8250_platform_driver\00", align 1
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 1706, i32 31 }
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 1665, i32 32 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 1669, i32 39 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 1688, i32 24 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 1689, i32 2 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 1691, i32 2 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 1692, i32 2 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 1708, i32 12 }
@___asan_gen_.90 = private unnamed_addr constant [16 x i8] c"omap8250_dt_ids\00", align 1
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 1271, i32 34 }
@___asan_gen_.93 = private unnamed_addr constant [20 x i8] c"omap8250_dev_pm_ops\00", align 1
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 1698, i32 32 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 1299, i32 3 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 1356, i32 28 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 1358, i32 3 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 1363, i32 31 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 1375, i32 31 }
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 1387, i32 3 }
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 1395, i32 2 }
@___asan_gen_.141 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 1397, i32 2 }
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 1430, i32 38 }
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 1456, i32 3 }
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 211, i32 4 }
@___asan_gen_.168 = private unnamed_addr constant [4 x i8] c"_rs\00", align 1
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 698, i32 4 }
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 853, i32 5 }
@___asan_gen_.186 = private unnamed_addr constant [15 x i8] c"k3_soc_devices\00", align 1
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 541, i32 43 }
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 542, i32 15 }
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 543, i32 15 }
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 543, i32 36 }
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 569, i32 3 }
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 1239, i32 2 }
@___asan_gen_.210 = private unnamed_addr constant [15 x i8] c"am654_platdata\00", align 1
@___asan_gen_.212 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 1255, i32 33 }
@___asan_gen_.213 = private unnamed_addr constant [15 x i8] c"omap4_platdata\00", align 1
@___asan_gen_.215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 1266, i32 33 }
@___asan_gen_.216 = private unnamed_addr constant [16 x i8] c"am33xx_platdata\00", align 1
@___asan_gen_.218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 1261, i32 33 }
@___asan_gen_.219 = private unnamed_addr constant [10 x i8] c"am654_dma\00", align 1
@___asan_gen_.221 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 1243, i32 35 }
@___asan_gen_.222 = private unnamed_addr constant [11 x i8] c"am33xx_dma\00", align 1
@___asan_gen_.224 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 1249, i32 35 }
@___asan_gen_.225 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.231 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.232 = private constant [39 x i8] c"../drivers/tty/serial/8250/8250_omap.c\00", align 1
@___asan_gen_.233 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 1585, i32 3 }
@llvm.compiler.used = appending global [82 x ptr] [ptr @__UNIQUE_ID_author239, ptr @__UNIQUE_ID_description240, ptr @__UNIQUE_ID_file241, ptr @__UNIQUE_ID_license242, ptr @__dma_rx_do_complete._entry, ptr @__dma_rx_do_complete._entry_ptr, ptr @__exitcall_omap8250_platform_driver_exit, ptr @__initcall__kmod_8250_omap__237_1695_omap8250_console_fixupcon, ptr @__initcall__kmod_8250_omap__238_1715_omap8250_platform_driver_init6, ptr @omap8250_console_fixup._entry, ptr @omap8250_console_fixup._entry.6, ptr @omap8250_console_fixup._entry.9, ptr @omap8250_console_fixup._entry_ptr, ptr @omap8250_console_fixup._entry_ptr.11, ptr @omap8250_console_fixup._entry_ptr.8, ptr @omap8250_platform_driver_exit, ptr @omap8250_probe._entry, ptr @omap8250_probe._entry.18, ptr @omap8250_probe._entry.23, ptr @omap8250_probe._entry.31, ptr @omap8250_probe._entry_ptr, ptr @omap8250_probe._entry_ptr.20, ptr @omap8250_probe._entry_ptr.26, ptr @omap8250_probe._entry_ptr.33, ptr @omap8250_soft_reset._entry, ptr @omap8250_soft_reset._entry_ptr, ptr @omap_8250_mdr1_errataset._entry, ptr @omap_8250_mdr1_errataset._entry_ptr, ptr @omap_8250_startup._entry, ptr @omap_8250_startup._entry_ptr, ptr @omap_serial_fill_features_erratas._entry, ptr @omap_serial_fill_features_erratas._entry_ptr, ptr @omap8250_platform_driver, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @.str.10, ptr @.str.12, ptr @omap8250_dt_ids, ptr @omap8250_dev_pm_ops, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.19, ptr @.str.21, ptr @.str.22, ptr @.str.24, ptr @.str.25, ptr @omap8250_probe.__key, ptr @.str.27, ptr @omap8250_probe.__key.28, ptr @.str.29, ptr @.str.30, ptr @.str.32, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @omap_8250_startup._rs, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @omap_serial_fill_features_erratas.k3_soc_devices, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @am654_platdata, ptr @omap4_platdata, ptr @am33xx_platdata, ptr @am654_dma, ptr @am33xx_dma, ptr @.str.47, ptr @.str.48], section "llvm.metadata"
@0 = internal global [61 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap8250_platform_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap8250_console_fixup._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap8250_console_fixup._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap8250_console_fixup._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap8250_dt_ids to i32), i32 1568, i32 1952, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap8250_dev_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap8250_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap8250_probe._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap8250_probe._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap8250_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap8250_probe.__key.28 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap8250_probe._entry.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap_8250_mdr1_errataset._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap_8250_startup._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap_8250_startup._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap_serial_fill_features_erratas.k3_soc_devices to i32), i32 84, i32 128, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap_serial_fill_features_erratas._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @am654_platdata to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap4_platdata to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @am33xx_platdata to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @am654_dma to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @am33xx_dma to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap8250_soft_reset._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @omap8250_console_fixup() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @strstr(ptr noundef nonnull @boot_command_line, ptr noundef nonnull @.str)
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call ptr @strstr(ptr noundef nonnull @boot_command_line, ptr noundef nonnull @.str.1)
  %tobool2.not = icmp eq ptr %call1, null
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %add.ptr = getelementptr i8, ptr %call1, i32 12
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %add.ptr, align 1
  %2 = add i8 %1, -48
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %2)
  %3 = icmp ult i8 %2, 10
  br i1 %3, label %if.then9, label %if.end4.cleanup_crit_edge

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then9:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #11
  %incdec.ptr = getelementptr i8, ptr %call1, i32 13
  %4 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %incdec.ptr, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 44, i8 %5)
  %cmp14 = icmp eq i8 %5, 44
  %incdec.ptr17 = getelementptr i8, ptr %call1, i32 14
  %options.0 = select i1 %cmp14, ptr %incdec.ptr17, ptr null
  %conv20 = zext i8 %2 to i32
  %call21 = tail call i32 @add_preferred_console(ptr noundef nonnull @.str.2, i32 noundef %conv20, ptr noundef %options.0) #9
  %call24 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, i32 noundef %conv20, i32 noundef %conv20) #12
  %call29 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7) #12
  %call34 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10) #12
  br label %cleanup

cleanup:                                          ; preds = %if.then9, %if.end4.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @omap8250_platform_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @omap8250_platform_driver, ptr noundef null) #9
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @omap8250_platform_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @platform_driver_unregister(ptr noundef nonnull @omap8250_platform_driver) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local ptr @strstr(ptr noundef, ptr nocapture noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @add_preferred_console(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @omap8250_probe(ptr noundef %pdev) #5 align 64 {
entry:
  %up = alloca %struct.uart_8250_port, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 8
  call void @llvm.lifetime.start.p0(i64 584, ptr nonnull %up) #9
  %2 = call ptr @memset(ptr %up, i32 255, i32 584)
  %call = tail call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup173_crit_edge, label %if.end

entry.cleanup173_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup173

if.end:                                           ; preds = %entry
  %call1 = tail call ptr @platform_get_resource(ptr noundef %pdev, i32 noundef 512, i32 noundef 0) #9
  %tobool.not = icmp eq ptr %call1, null
  br i1 %tobool.not, label %do.end, label %if.end4

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.13) #12
  br label %cleanup173

if.end4:                                          ; preds = %if.end
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 316, i32 noundef 3520) #9
  %tobool7.not = icmp eq ptr %call.i, null
  br i1 %tobool7.not, label %if.end4.cleanup173_crit_edge, label %if.end9

if.end4.cleanup173_crit_edge:                     ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup173

if.end9:                                          ; preds = %if.end4
  %3 = ptrtoint ptr %call1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %call1, align 4
  %end.i = getelementptr inbounds %struct.resource, ptr %call1, i32 0, i32 1
  %5 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %end.i, align 4
  %sub.i = sub i32 1, %4
  %add.i = add i32 %sub.i, %6
  %call12 = tail call ptr @devm_ioremap(ptr noundef %dev, i32 noundef %4, i32 noundef %add.i) #9
  %tobool13.not = icmp eq ptr %call12, null
  br i1 %tobool13.not, label %if.end9.cleanup173_crit_edge, label %if.end15

if.end9.cleanup173_crit_edge:                     ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup173

if.end15:                                         ; preds = %if.end9
  %7 = call ptr @memset(ptr %up, i32 0, i32 584)
  %dev17 = getelementptr inbounds %struct.uart_port, ptr %up, i32 0, i32 45
  %8 = ptrtoint ptr %dev17 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %dev, ptr %dev17, align 4
  %9 = ptrtoint ptr %call1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %call1, align 4
  %mapbase = getelementptr inbounds %struct.uart_port, ptr %up, i32 0, i32 43
  %11 = ptrtoint ptr %mapbase to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %mapbase, align 4
  %membase21 = getelementptr inbounds %struct.uart_port, ptr %up, i32 0, i32 2
  %12 = ptrtoint ptr %membase21 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call12, ptr %membase21, align 4
  %irq23 = getelementptr inbounds %struct.uart_port, ptr %up, i32 0, i32 20
  %13 = ptrtoint ptr %irq23 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %call, ptr %irq23, align 4
  %type = getelementptr inbounds %struct.uart_port, ptr %up, i32 0, i32 38
  %14 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 1, ptr %type, align 4
  %iotype = getelementptr inbounds %struct.uart_port, ptr %up, i32 0, i32 26
  %15 = ptrtoint ptr %iotype to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 2, ptr %iotype, align 2
  %flags = getelementptr inbounds %struct.uart_port, ptr %up, i32 0, i32 33
  %16 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 678428672, ptr %flags, align 4
  %private_data = getelementptr inbounds %struct.uart_port, ptr %up, i32 0, i32 59
  %17 = ptrtoint ptr %private_data to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %call.i, ptr %private_data, align 4
  %regshift = getelementptr inbounds %struct.uart_port, ptr %up, i32 0, i32 25
  %18 = ptrtoint ptr %regshift to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 2, ptr %regshift, align 1
  %fifosize = getelementptr inbounds %struct.uart_port, ptr %up, i32 0, i32 23
  %19 = ptrtoint ptr %fifosize to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 64, ptr %fifosize, align 4
  %tx_loadsz = getelementptr inbounds %struct.uart_8250_port, ptr %up, i32 0, i32 6
  %20 = ptrtoint ptr %tx_loadsz to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 64, ptr %tx_loadsz, align 4
  %capabilities = getelementptr inbounds %struct.uart_8250_port, ptr %up, i32 0, i32 3
  %21 = ptrtoint ptr %capabilities to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 33024, ptr %capabilities, align 4
  %set_termios = getelementptr inbounds %struct.uart_port, ptr %up, i32 0, i32 5
  %22 = ptrtoint ptr %set_termios to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr @omap_8250_set_termios, ptr %set_termios, align 4
  %set_mctrl = getelementptr inbounds %struct.uart_port, ptr %up, i32 0, i32 8
  %23 = ptrtoint ptr %set_mctrl to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr @omap8250_set_mctrl, ptr %set_mctrl, align 4
  %pm = getelementptr inbounds %struct.uart_port, ptr %up, i32 0, i32 16
  %24 = ptrtoint ptr %pm to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr @omap_8250_pm, ptr %pm, align 4
  %startup = getelementptr inbounds %struct.uart_port, ptr %up, i32 0, i32 11
  %25 = ptrtoint ptr %startup to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr @omap_8250_startup, ptr %startup, align 4
  %shutdown = getelementptr inbounds %struct.uart_port, ptr %up, i32 0, i32 12
  %26 = ptrtoint ptr %shutdown to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr @omap_8250_shutdown, ptr %shutdown, align 4
  %throttle = getelementptr inbounds %struct.uart_port, ptr %up, i32 0, i32 13
  %27 = ptrtoint ptr %throttle to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr @omap_8250_throttle, ptr %throttle, align 4
  %unthrottle = getelementptr inbounds %struct.uart_port, ptr %up, i32 0, i32 14
  %28 = ptrtoint ptr %unthrottle to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr @omap_8250_unthrottle, ptr %unthrottle, align 4
  %rs485_config = getelementptr inbounds %struct.uart_port, ptr %up, i32 0, i32 18
  %29 = ptrtoint ptr %rs485_config to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr @serial8250_em485_config, ptr %rs485_config, align 4
  %rs485_start_tx = getelementptr inbounds %struct.uart_8250_port, ptr %up, i32 0, i32 24
  %30 = ptrtoint ptr %rs485_start_tx to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr @serial8250_em485_start_tx, ptr %rs485_start_tx, align 4
  %rs485_stop_tx = getelementptr inbounds %struct.uart_8250_port, ptr %up, i32 0, i32 25
  %31 = ptrtoint ptr %rs485_stop_tx to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr @serial8250_em485_stop_tx, ptr %rs485_stop_tx, align 4
  %has_sysrq = getelementptr inbounds %struct.uart_port, ptr %up, i32 0, i32 48
  %32 = ptrtoint ptr %has_sysrq to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 1, ptr %has_sysrq, align 4
  %call40 = tail call i32 @of_alias_get_id(ptr noundef %1, ptr noundef nonnull @.str.17) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call40)
  %cmp41 = icmp slt i32 %call40, 0
  br i1 %cmp41, label %do.end45, label %if.end47

do.end45:                                         ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.19) #12
  br label %cleanup173

if.end47:                                         ; preds = %if.end15
  %line = getelementptr inbounds %struct.uart_port, ptr %up, i32 0, i32 41
  %33 = ptrtoint ptr %line to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %call40, ptr %line, align 4
  %uartclk = getelementptr inbounds %struct.uart_port, ptr %up, i32 0, i32 22
  %call.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef %1, ptr noundef nonnull @.str.21, ptr noundef %uartclk, i32 noundef 1, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i)
  %tobool51.not = icmp sgt i32 %call.i.i, -1
  br i1 %tobool51.not, label %if.end47.if.end65_crit_edge, label %if.then52

if.end47.if.end65_crit_edge:                      ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end65

if.then52:                                        ; preds = %if.end47
  %call54 = call ptr @devm_clk_get(ptr noundef %dev, ptr noundef null) #9
  %cmp.i = icmp ugt ptr %call54, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then56, label %if.else

if.then56:                                        ; preds = %if.then52
  %cmp58 = icmp eq ptr %call54, inttoptr (i32 -517 to ptr)
  br i1 %cmp58, label %if.then56.cleanup173_crit_edge, label %if.then56.if.end65_crit_edge

if.then56.if.end65_crit_edge:                     ; preds = %if.then56
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end65

if.then56.cleanup173_crit_edge:                   ; preds = %if.then56
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup173

if.else:                                          ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #11
  %call61 = call i32 @clk_get_rate(ptr noundef %call54) #9
  %34 = ptrtoint ptr %uartclk to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %call61, ptr %uartclk, align 4
  br label %if.end65

if.end65:                                         ; preds = %if.else, %if.then56.if.end65_crit_edge, %if.end47.if.end65_crit_edge
  %overrun_backoff_time_ms = getelementptr inbounds %struct.uart_8250_port, ptr %up, i32 0, i32 27
  %call.i.i253 = call i32 @of_property_read_variable_u32_array(ptr noundef %1, ptr noundef nonnull @.str.22, ptr noundef %overrun_backoff_time_ms, i32 noundef 1, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i253)
  %cmp67.not = icmp sgt i32 %call.i.i253, -1
  br i1 %cmp67.not, label %if.end65.if.end70_crit_edge, label %if.then68

if.end65.if.end70_crit_edge:                      ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end70

if.then68:                                        ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #11
  %35 = ptrtoint ptr %overrun_backoff_time_ms to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 0, ptr %overrun_backoff_time_ms, align 4
  br label %if.end70

if.end70:                                         ; preds = %if.then68, %if.end65.if.end70_crit_edge
  %call71 = call i32 @irq_of_parse_and_map(ptr noundef %1, i32 noundef 1) #9
  %wakeirq = getelementptr inbounds %struct.omap8250_priv, ptr %call.i, i32 0, i32 13
  %36 = ptrtoint ptr %wakeirq to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %call71, ptr %wakeirq, align 4
  %call73 = call ptr @of_device_get_match_data(ptr noundef %dev) #9
  %tobool74.not = icmp eq ptr %call73, null
  br i1 %tobool74.not, label %if.end70.if.end80_crit_edge, label %if.then75

if.end70.if.end80_crit_edge:                      ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end80

if.then75:                                        ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #11
  %habit = getelementptr inbounds %struct.omap8250_platdata, ptr %call73, i32 0, i32 1
  %37 = ptrtoint ptr %habit to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %habit, align 4
  %habit76 = getelementptr inbounds %struct.omap8250_priv, ptr %call.i, i32 0, i32 1
  %39 = ptrtoint ptr %habit76 to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %habit76, align 4
  %or78252 = or i8 %40, %38
  store i8 %or78252, ptr %habit76, align 4
  br label %if.end80

if.end80:                                         ; preds = %if.then75, %if.end70.if.end80_crit_edge
  %41 = ptrtoint ptr %uartclk to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %uartclk, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %42)
  %tobool83.not = icmp eq i32 %42, 0
  br i1 %tobool83.not, label %if.then84, label %if.end80.if.end91_crit_edge

if.end80.if.end91_crit_edge:                      ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end91

if.then84:                                        ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #11
  %43 = ptrtoint ptr %uartclk to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 48000000, ptr %uartclk, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.24, i32 noundef 48000000) #12
  br label %if.end91

if.end91:                                         ; preds = %if.then84, %if.end80.if.end91_crit_edge
  %latency = getelementptr inbounds %struct.omap8250_priv, ptr %call.i, i32 0, i32 15
  %44 = ptrtoint ptr %latency to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 2000000000, ptr %latency, align 4
  %calc_latency = getelementptr inbounds %struct.omap8250_priv, ptr %call.i, i32 0, i32 16
  %45 = ptrtoint ptr %calc_latency to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 2000000000, ptr %calc_latency, align 4
  %pm_qos_request = getelementptr inbounds %struct.omap8250_priv, ptr %call.i, i32 0, i32 17
  call void @cpu_latency_qos_add_request(ptr noundef %pm_qos_request, i32 noundef 2000000000) #9
  %qos_work = getelementptr inbounds %struct.omap8250_priv, ptr %call.i, i32 0, i32 18
  call void @__init_work(ptr noundef %qos_work, i32 noundef 0) #9
  %46 = ptrtoint ptr %qos_work to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 -64, ptr %qos_work, align 4
  %lockdep_map = getelementptr inbounds %struct.omap8250_priv, ptr %call.i, i32 0, i32 18, i32 3
  call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.27, ptr noundef nonnull @omap8250_probe.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #9
  %entry97 = getelementptr inbounds %struct.omap8250_priv, ptr %call.i, i32 0, i32 18, i32 1
  %47 = ptrtoint ptr %entry97 to i32
  call void @__asan_store4_noabort(i32 %47)
  store volatile ptr %entry97, ptr %entry97, align 4
  %prev.i = getelementptr inbounds %struct.omap8250_priv, ptr %call.i, i32 0, i32 18, i32 1, i32 1
  %48 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %entry97, ptr %prev.i, align 4
  %func = getelementptr inbounds %struct.omap8250_priv, ptr %call.i, i32 0, i32 18, i32 2
  %49 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr @omap8250_uart_qos_work, ptr %func, align 4
  %rx_dma_lock = getelementptr inbounds %struct.omap8250_priv, ptr %call.i, i32 0, i32 20
  call void @__raw_spin_lock_init(ptr noundef %rx_dma_lock, ptr noundef nonnull @.str.29, ptr noundef nonnull @omap8250_probe.__key.28, i16 noundef signext 3) #9
  %call106 = call i32 @device_init_wakeup(ptr noundef %dev, i1 noundef zeroext true) #9
  call void @pm_runtime_enable(ptr noundef %dev) #9
  call void @__pm_runtime_use_autosuspend(ptr noundef %dev, i1 noundef zeroext true) #9
  %50 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %of_node, align 8
  %call.i254 = call ptr @of_get_next_available_child(ptr noundef %51, ptr noundef null) #9
  %cmp.not5.i = icmp eq ptr %call.i254, null
  br i1 %cmp.not5.i, label %if.end91.if.then113_crit_edge, label %if.end91.for.body.i_crit_edge

if.end91.for.body.i_crit_edge:                    ; preds = %if.end91
  br label %for.body.i

if.end91.if.then113_crit_edge:                    ; preds = %if.end91
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then113

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.end91.for.body.i_crit_edge
  %num.07.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %if.end91.for.body.i_crit_edge ]
  %child.06.i = phi ptr [ %call1.i, %for.body.i.for.body.i_crit_edge ], [ %call.i254, %if.end91.for.body.i_crit_edge ]
  %inc.i = add i32 %num.07.i, 1
  %call1.i = call ptr @of_get_next_available_child(ptr noundef %51, ptr noundef nonnull %child.06.i) #9
  %cmp.not.i = icmp eq ptr %call1.i, null
  br i1 %cmp.not.i, label %of_get_available_child_count.exit, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

of_get_available_child_count.exit:                ; preds = %for.body.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %inc.i)
  %tobool112.not = icmp eq i32 %inc.i, 0
  br i1 %tobool112.not, label %of_get_available_child_count.exit.if.then113_crit_edge, label %of_get_available_child_count.exit.if.end115_crit_edge

of_get_available_child_count.exit.if.end115_crit_edge: ; preds = %of_get_available_child_count.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end115

of_get_available_child_count.exit.if.then113_crit_edge: ; preds = %of_get_available_child_count.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then113

if.then113:                                       ; preds = %of_get_available_child_count.exit.if.then113_crit_edge, %if.end91.if.then113_crit_edge
  call void @pm_runtime_set_autosuspend_delay(ptr noundef %dev, i32 noundef -1) #9
  br label %if.end115

if.end115:                                        ; preds = %if.then113, %of_get_available_child_count.exit.if.end115_crit_edge
  call void @pm_runtime_irq_safe(ptr noundef %dev) #9
  %call.i255 = call i32 @__pm_runtime_resume(ptr noundef %dev, i32 noundef 4) #9
  %52 = ptrtoint ptr %membase21 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %membase21, align 4
  %54 = ptrtoint ptr %regshift to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %regshift, align 1
  %conv.i.i = zext i8 %55 to i32
  %shl.i.i = shl i32 20, %conv.i.i
  %add.ptr.i.i = getelementptr i8, ptr %53, i32 %shl.i.i
  %56 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #9, !srcloc !134
  %57 = call i32 @llvm.bswap.i32(i32 %56) #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !135
  %shr.i = lshr i32 %57, 30
  %58 = zext i32 %shr.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %58, ptr @__sancov_gen_cov_switch_values)
  switch i32 %shr.i, label %do.end.i [
    i32 0, label %sw.bb.i
    i32 1, label %sw.bb4.i
  ]

sw.bb.i:                                          ; preds = %if.end115
  call void @__sanitizer_cov_trace_pc() #11
  %and.i = lshr i32 %57, 4
  %shr1.i = and i32 %and.i, 15
  %and2.i = and i32 %57, 15
  br label %sw.epilog.i

sw.bb4.i:                                         ; preds = %if.end115
  call void @__sanitizer_cov_trace_pc() #11
  %59 = lshr i32 %57, 8
  %conv7.i = and i32 %59, 7
  %conv9.i = and i32 %57, 63
  br label %sw.epilog.i

do.end.i:                                         ; preds = %if.end115
  call void @__sanitizer_cov_trace_pc() #11
  %60 = ptrtoint ptr %dev17 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %dev17, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %61, ptr noundef nonnull @.str.44) #12
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %do.end.i, %sw.bb4.i, %sw.bb.i
  %major.0.i = phi i32 [ 255, %do.end.i ], [ %conv7.i, %sw.bb4.i ], [ %shr1.i, %sw.bb.i ]
  %minor.0.i = phi i32 [ 255, %do.end.i ], [ %conv9.i, %sw.bb4.i ], [ %and2.i, %sw.bb.i ]
  %conv10.i = shl nuw nsw i32 %major.0.i, 8
  %conv13.i = or i32 %conv10.i, %minor.0.i
  %trunc.i = trunc i32 %conv13.i to i16
  %62 = zext i16 %trunc.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %62, ptr @__sancov_gen_cov_switch_values.49)
  switch i16 %trunc.i, label %sw.epilog.i.sw.epilog29.i_crit_edge [
    i16 1030, label %sw.epilog.i.sw.epilog29.sink.split.i_crit_edge
    i16 1282, label %sw.bb18.i
    i16 1539, label %sw.bb23.i
  ]

sw.epilog.i.sw.epilog29.sink.split.i_crit_edge:   ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog29.sink.split.i

sw.epilog.i.sw.epilog29.i_crit_edge:              ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog29.i

sw.bb18.i:                                        ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog29.sink.split.i

sw.bb23.i:                                        ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog29.sink.split.i

sw.epilog29.sink.split.i:                         ; preds = %sw.bb23.i, %sw.bb18.i, %sw.epilog.i.sw.epilog29.sink.split.i_crit_edge
  %.sink44.i = phi i8 [ 3, %sw.bb23.i ], [ 3, %sw.bb18.i ], [ 1, %sw.epilog.i.sw.epilog29.sink.split.i_crit_edge ]
  %habit.i = getelementptr inbounds %struct.omap8250_priv, ptr %call.i, i32 0, i32 1
  %63 = ptrtoint ptr %habit.i to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %habit.i, align 4
  %65 = or i8 %64, %.sink44.i
  store i8 %65, ptr %habit.i, align 4
  br label %sw.epilog29.i

sw.epilog29.i:                                    ; preds = %sw.epilog29.sink.split.i, %sw.epilog.i.sw.epilog29.i_crit_edge
  %call30.i = call ptr @soc_device_match(ptr noundef nonnull @omap_serial_fill_features_erratas.k3_soc_devices) #9
  %tobool.not.i = icmp eq ptr %call30.i, null
  br i1 %tobool.not.i, label %sw.epilog29.i.omap_serial_fill_features_erratas.exit_crit_edge, label %if.then.i

sw.epilog29.i.omap_serial_fill_features_erratas.exit_crit_edge: ; preds = %sw.epilog29.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %omap_serial_fill_features_erratas.exit

if.then.i:                                        ; preds = %sw.epilog29.i
  call void @__sanitizer_cov_trace_pc() #11
  %habit31.i = getelementptr inbounds %struct.omap8250_priv, ptr %call.i, i32 0, i32 1
  %66 = ptrtoint ptr %habit31.i to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %habit31.i, align 4
  %68 = and i8 %67, -33
  store i8 %68, ptr %habit31.i, align 4
  br label %omap_serial_fill_features_erratas.exit

omap_serial_fill_features_erratas.exit:           ; preds = %if.then.i, %sw.epilog29.i.omap_serial_fill_features_erratas.exit_crit_edge
  %handle_irq = getelementptr inbounds %struct.uart_port, ptr %up, i32 0, i32 15
  %69 = ptrtoint ptr %handle_irq to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr @omap8250_no_handle_irq, ptr %handle_irq, align 4
  %rx_trigger = getelementptr inbounds %struct.omap8250_priv, ptr %call.i, i32 0, i32 11
  %70 = ptrtoint ptr %rx_trigger to i32
  call void @__asan_store1_noabort(i32 %70)
  store i8 48, ptr %rx_trigger, align 1
  %tx_trigger = getelementptr inbounds %struct.omap8250_priv, ptr %call.i, i32 0, i32 10
  %71 = ptrtoint ptr %tx_trigger to i32
  call void @__asan_store1_noabort(i32 %71)
  store i8 1, ptr %tx_trigger, align 2
  %call.i256 = call i32 @of_property_read_string_helper(ptr noundef %1, ptr noundef nonnull @.str.30, ptr noundef null, i32 noundef 0, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i256)
  %cmp121 = icmp eq i32 %call.i256, 2
  br i1 %cmp121, label %if.then123, label %omap_serial_fill_features_erratas.exit.if.end155_crit_edge

omap_serial_fill_features_erratas.exit.if.end155_crit_edge: ; preds = %omap_serial_fill_features_erratas.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end155

if.then123:                                       ; preds = %omap_serial_fill_features_erratas.exit
  %omap8250_dma = getelementptr inbounds %struct.omap8250_priv, ptr %call.i, i32 0, i32 19
  %dma = getelementptr inbounds %struct.uart_8250_port, ptr %up, i32 0, i32 19
  %72 = ptrtoint ptr %dma to i32
  call void @__asan_store4_noabort(i32 %72)
  store ptr %omap8250_dma, ptr %dma, align 4
  %fn = getelementptr inbounds %struct.omap8250_priv, ptr %call.i, i32 0, i32 19, i32 2
  %73 = ptrtoint ptr %fn to i32
  call void @__asan_store4_noabort(i32 %73)
  store ptr @the_no_dma_filter_fn, ptr %fn, align 4
  %74 = ptrtoint ptr %omap8250_dma to i32
  call void @__asan_store4_noabort(i32 %74)
  store ptr @omap_8250_tx_dma, ptr %omap8250_dma, align 4
  %rx_dma = getelementptr inbounds %struct.omap8250_priv, ptr %call.i, i32 0, i32 19, i32 1
  %75 = ptrtoint ptr %rx_dma to i32
  call void @__asan_store4_noabort(i32 %75)
  store ptr @omap_8250_rx_dma, ptr %rx_dma, align 4
  br i1 %tobool74.not, label %if.then123.if.else145_crit_edge, label %if.end130

if.then123.if.else145_crit_edge:                  ; preds = %if.then123
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else145

if.end130:                                        ; preds = %if.then123
  %76 = ptrtoint ptr %call73 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %call73, align 4
  %tobool131.not = icmp eq ptr %77, null
  br i1 %tobool131.not, label %if.end130.if.else145_crit_edge, label %if.then132

if.end130.if.else145_crit_edge:                   ; preds = %if.end130
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else145

if.then132:                                       ; preds = %if.end130
  call void @__sanitizer_cov_trace_pc() #11
  %78 = ptrtoint ptr %77 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %77, align 4
  %rx_size134 = getelementptr inbounds %struct.omap8250_priv, ptr %call.i, i32 0, i32 19, i32 16
  %80 = ptrtoint ptr %rx_size134 to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 %79, ptr %rx_size134, align 4
  %rx_trigger135 = getelementptr inbounds %struct.omap8250_dma_params, ptr %77, i32 0, i32 1
  %81 = ptrtoint ptr %rx_trigger135 to i32
  call void @__asan_load1_noabort(i32 %81)
  %82 = load i8, ptr %rx_trigger135, align 4
  %conv136 = zext i8 %82 to i32
  %src_maxburst = getelementptr inbounds %struct.omap8250_priv, ptr %call.i, i32 0, i32 19, i32 5, i32 5
  %83 = ptrtoint ptr %src_maxburst to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 %conv136, ptr %src_maxburst, align 4
  %tx_trigger138 = getelementptr inbounds %struct.omap8250_dma_params, ptr %77, i32 0, i32 2
  %84 = ptrtoint ptr %tx_trigger138 to i32
  call void @__asan_load1_noabort(i32 %84)
  %85 = load i8, ptr %tx_trigger138, align 1
  %conv139 = zext i8 %85 to i32
  %dst_maxburst = getelementptr inbounds %struct.omap8250_priv, ptr %call.i, i32 0, i32 19, i32 6, i32 6
  %86 = ptrtoint ptr %dst_maxburst to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 %conv139, ptr %dst_maxburst, align 4
  %87 = load i8, ptr %rx_trigger135, align 4
  %88 = ptrtoint ptr %rx_trigger to i32
  call void @__asan_store1_noabort(i32 %88)
  store i8 %87, ptr %rx_trigger, align 1
  %89 = load i8, ptr %tx_trigger138, align 1
  %90 = ptrtoint ptr %tx_trigger to i32
  call void @__asan_store1_noabort(i32 %90)
  store i8 %89, ptr %tx_trigger, align 2
  br label %if.end155

if.else145:                                       ; preds = %if.end130.if.else145_crit_edge, %if.then123.if.else145_crit_edge
  %rx_size147 = getelementptr inbounds %struct.omap8250_priv, ptr %call.i, i32 0, i32 19, i32 16
  %91 = ptrtoint ptr %rx_size147 to i32
  call void @__asan_store4_noabort(i32 %91)
  store i32 48, ptr %rx_size147, align 4
  %src_maxburst150 = getelementptr inbounds %struct.omap8250_priv, ptr %call.i, i32 0, i32 19, i32 5, i32 5
  %92 = ptrtoint ptr %src_maxburst150 to i32
  call void @__asan_store4_noabort(i32 %92)
  store i32 48, ptr %src_maxburst150, align 4
  %dst_maxburst153 = getelementptr inbounds %struct.omap8250_priv, ptr %call.i, i32 0, i32 19, i32 6, i32 6
  %93 = ptrtoint ptr %dst_maxburst153 to i32
  call void @__asan_store4_noabort(i32 %93)
  store i32 1, ptr %dst_maxburst153, align 4
  br label %if.end155

if.end155:                                        ; preds = %if.else145, %if.then132, %omap_serial_fill_features_erratas.exit.if.end155_crit_edge
  %call156 = call i32 @serial8250_register_8250_port(ptr noundef nonnull %up) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call156)
  %cmp157 = icmp slt i32 %call156, 0
  br i1 %cmp157, label %do.end162, label %if.end164

do.end162:                                        ; preds = %if.end155
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.32) #12
  call void @__pm_runtime_use_autosuspend(ptr noundef %dev, i1 noundef zeroext false) #9
  %call.i257 = call i32 @__pm_runtime_idle(ptr noundef %dev, i32 noundef 4) #9
  call void @__pm_runtime_disable(ptr noundef %dev, i1 noundef zeroext true) #9
  br label %cleanup173

if.end164:                                        ; preds = %if.end155
  call void @__sanitizer_cov_trace_pc() #11
  %94 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %94)
  store i32 %call156, ptr %call.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %95 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %95)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %call.i258 = call i64 @ktime_get_mono_fast_ns() #9
  %last_busy.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 12, i32 22
  %96 = ptrtoint ptr %last_busy.i to i32
  call void @__asan_store8_noabort(i32 %96)
  store volatile i64 %call.i258, ptr %last_busy.i, align 8
  %call.i259 = call i32 @__pm_runtime_suspend(ptr noundef %dev, i32 noundef 13) #9
  br label %cleanup173

cleanup173:                                       ; preds = %if.end164, %do.end162, %if.then56.cleanup173_crit_edge, %do.end45, %if.end9.cleanup173_crit_edge, %if.end4.cleanup173_crit_edge, %do.end, %entry.cleanup173_crit_edge
  %retval.1 = phi i32 [ %call40, %do.end45 ], [ %call156, %do.end162 ], [ 0, %if.end164 ], [ -22, %do.end ], [ %call, %entry.cleanup173_crit_edge ], [ -12, %if.end4.cleanup173_crit_edge ], [ -19, %if.end9.cleanup173_crit_edge ], [ -517, %if.then56.cleanup173_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 584, ptr nonnull %up) #9
  ret i32 %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @omap8250_remove(ptr noundef %pdev) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  tail call void @__pm_runtime_use_autosuspend(ptr noundef %dev, i1 noundef zeroext false) #9
  %call.i = tail call i32 @__pm_runtime_idle(ptr noundef %dev, i32 noundef 4) #9
  tail call void @__pm_runtime_disable(ptr noundef %dev, i1 noundef zeroext true) #9
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %1, align 4
  tail call void @serial8250_unregister_port(i32 noundef %3) #9
  %pm_qos_request = getelementptr inbounds %struct.omap8250_priv, ptr %1, i32 0, i32 17
  tail call void @cpu_latency_qos_remove_request(ptr noundef %pm_qos_request) #9
  %call5 = tail call i32 @device_init_wakeup(ptr noundef %dev, i1 noundef zeroext false) #9
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @omap_8250_set_termios(ptr noundef %port, ptr noundef %termios, ptr noundef %old) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 59
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %c_cflag = getelementptr inbounds %struct.ktermios, ptr %termios, i32 0, i32 2
  %2 = ptrtoint ptr %c_cflag to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %c_cflag, align 4
  %4 = trunc i32 %3 to i8
  %5 = lshr i8 %4, 4
  %switch.idx.cast = and i8 %5, 3
  %6 = trunc i32 %3 to i8
  %7 = lshr i8 %6, 4
  %8 = and i8 %7, 4
  %and9 = lshr i32 %3, 5
  %9 = trunc i32 %and9 to i8
  %10 = and i8 %9, 8
  %11 = or i8 %10, %8
  %12 = or i8 %11, %switch.idx.cast
  %and17 = and i32 %3, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and17)
  %tobool18.not = icmp eq i32 %and17, 0
  %13 = or i8 %12, 16
  %cval.3 = select i1 %tobool18.not, i8 %13, i8 %12
  %and25 = lshr i32 %3, 25
  %14 = trunc i32 %and25 to i8
  %15 = and i8 %14, 32
  %16 = or i8 %cval.3, %15
  %uartclk = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 22
  %17 = ptrtoint ptr %uartclk to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %uartclk, align 4
  %div32 = udiv i32 %18, 1048560
  %div34 = udiv i32 %18, 13
  %call35 = tail call i32 @uart_get_baud_rate(ptr noundef %port, ptr noundef %termios, ptr noundef %old, i32 noundef %div32, i32 noundef %div34) #9
  %19 = ptrtoint ptr %uartclk to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %uartclk, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 38400, i32 %call35)
  %cmp.i = icmp eq i32 %call35, 38400
  br i1 %cmp.i, label %land.lhs.true.i, label %entry.if.end8.i_crit_edge

entry.if.end8.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end8.i

land.lhs.true.i:                                  ; preds = %entry
  %flags.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 33
  %21 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %22, 4144
  call void @__sanitizer_cov_trace_const_cmp4(i32 48, i32 %and.i)
  %cmp2.i = icmp eq i32 %and.i, 48
  br i1 %cmp2.i, label %if.then.i, label %land.lhs.true.i.if.end8.i_crit_edge

land.lhs.true.i.if.end8.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end8.i

if.then.i:                                        ; preds = %land.lhs.true.i
  %custom_divisor.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 40
  %23 = ptrtoint ptr %custom_divisor.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %custom_divisor.i, align 4
  %conv.i = trunc i32 %24 to i16
  %quot.i = getelementptr inbounds %struct.omap8250_priv, ptr %1, i32 0, i32 9
  %25 = ptrtoint ptr %quot.i to i32
  call void @__asan_store2_noabort(i32 %25)
  store i16 %conv.i, ptr %quot.i, align 4
  %26 = load i32, ptr %custom_divisor.i, align 4
  %and5.i = and i32 %26, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5.i)
  %tobool.not.i = icmp eq i32 %and5.i, 0
  %mdr17.i = getelementptr inbounds %struct.omap8250_priv, ptr %1, i32 0, i32 2
  br i1 %tobool.not.i, label %if.else.i, label %if.then6.i

if.then6.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  %27 = ptrtoint ptr %mdr17.i to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 3, ptr %mdr17.i, align 1
  br label %omap_8250_get_divisor.exit

if.else.i:                                        ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  %28 = ptrtoint ptr %mdr17.i to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 0, ptr %mdr17.i, align 1
  br label %omap_8250_get_divisor.exit

if.end8.i:                                        ; preds = %land.lhs.true.i.if.end8.i_crit_edge, %entry.if.end8.i_crit_edge
  %mul.i = mul i32 %call35, 13
  %div84.i = lshr i32 %mul.i, 1
  %add.i = add i32 %div84.i, %20
  %div9.i = udiv i32 %add.i, %mul.i
  %mul12.i = shl i32 %call35, 4
  %div1485.i = lshr exact i32 %mul12.i, 1
  %add15.i = add i32 %div1485.i, %20
  %div16.i = udiv i32 %add15.i, %mul12.i
  call void @__sanitizer_cov_trace_cmp4(i32 %mul.i, i32 %add.i)
  %tobool17.not.i = icmp ugt i32 %mul.i, %add.i
  %spec.store.select.i = select i1 %tobool17.not.i, i32 1, i32 %div9.i
  call void @__sanitizer_cov_trace_cmp4(i32 %mul12.i, i32 %add15.i)
  %tobool20.not.i = icmp ugt i32 %mul12.i, %add15.i
  %spec.store.select57.i = select i1 %tobool20.not.i, i32 1, i32 %div16.i
  %div24.i = udiv i32 %20, 13
  %div25.i = udiv i32 %div24.i, %spec.store.select.i
  %sub.i = sub i32 %call35, %div25.i
  %29 = tail call i32 @llvm.abs.i32(i32 %sub.i, i1 false) #9
  %div3186.i = lshr i32 %20, 4
  %div32.i = udiv i32 %div3186.i, %spec.store.select57.i
  %sub33.i = sub i32 %call35, %div32.i
  %30 = tail call i32 @llvm.abs.i32(i32 %sub33.i, i1 false) #9
  call void @__sanitizer_cov_trace_cmp4(i32 %29, i32 %30)
  %cmp42.not.i = icmp ult i32 %29, %30
  %mdr149.i = getelementptr inbounds %struct.omap8250_priv, ptr %1, i32 0, i32 2
  br i1 %cmp42.not.i, label %if.else48.i, label %if.then44.i

if.then44.i:                                      ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #11
  %31 = ptrtoint ptr %mdr149.i to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 0, ptr %mdr149.i, align 1
  %conv46.i = trunc i32 %spec.store.select57.i to i16
  %quot47.i = getelementptr inbounds %struct.omap8250_priv, ptr %1, i32 0, i32 9
  %32 = ptrtoint ptr %quot47.i to i32
  call void @__asan_store2_noabort(i32 %32)
  store i16 %conv46.i, ptr %quot47.i, align 4
  br label %omap_8250_get_divisor.exit

if.else48.i:                                      ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #11
  %33 = ptrtoint ptr %mdr149.i to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 3, ptr %mdr149.i, align 1
  %conv50.i = trunc i32 %spec.store.select.i to i16
  %quot51.i = getelementptr inbounds %struct.omap8250_priv, ptr %1, i32 0, i32 9
  %34 = ptrtoint ptr %quot51.i to i32
  call void @__asan_store2_noabort(i32 %34)
  store i16 %conv50.i, ptr %quot51.i, align 4
  br label %omap_8250_get_divisor.exit

omap_8250_get_divisor.exit:                       ; preds = %if.else48.i, %if.then44.i, %if.else.i, %if.then6.i
  %dev = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 45
  %35 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %dev, align 4
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %36, i32 noundef 4) #9
  tail call void @_raw_spin_lock_irq(ptr noundef %port) #9
  %37 = ptrtoint ptr %c_cflag to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %c_cflag, align 4
  tail call void @uart_update_timeout(ptr noundef %port, i32 noundef %38, i32 noundef %call35) #9
  %read_status_mask = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 28
  %39 = ptrtoint ptr %read_status_mask to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 35, ptr %read_status_mask, align 4
  %40 = ptrtoint ptr %termios to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %termios, align 4
  %and39 = and i32 %41, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and39)
  %tobool40.not = icmp eq i32 %and39, 0
  %spec.store.select261 = select i1 %tobool40.not, i32 35, i32 47
  %42 = ptrtoint ptr %read_status_mask to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %spec.store.select261, ptr %read_status_mask, align 4
  %43 = ptrtoint ptr %termios to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %termios, align 4
  %and47 = and i32 %44, 9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and47)
  %tobool48.not = icmp eq i32 %and47, 0
  br i1 %tobool48.not, label %omap_8250_get_divisor.exit.if.end53_crit_edge, label %if.then49

omap_8250_get_divisor.exit.if.end53_crit_edge:    ; preds = %omap_8250_get_divisor.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end53

if.then49:                                        ; preds = %omap_8250_get_divisor.exit
  call void @__sanitizer_cov_trace_pc() #11
  %or52 = or i32 %spec.store.select261, 16
  %45 = ptrtoint ptr %read_status_mask to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %or52, ptr %read_status_mask, align 4
  br label %if.end53

if.end53:                                         ; preds = %if.then49, %omap_8250_get_divisor.exit.if.end53_crit_edge
  %ignore_status_mask = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 29
  %46 = ptrtoint ptr %ignore_status_mask to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 0, ptr %ignore_status_mask, align 4
  %47 = ptrtoint ptr %termios to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %termios, align 4
  %and56 = and i32 %48, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and56)
  %tobool57.not = icmp eq i32 %and56, 0
  %spec.store.select = select i1 %tobool57.not, i32 0, i32 12
  %49 = ptrtoint ptr %ignore_status_mask to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %spec.store.select, ptr %ignore_status_mask, align 4
  %50 = ptrtoint ptr %termios to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %termios, align 4
  %and64 = and i32 %51, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and64)
  %tobool65.not = icmp eq i32 %and64, 0
  br i1 %tobool65.not, label %if.end53.if.end78_crit_edge, label %if.then66

if.end53.if.end78_crit_edge:                      ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end78

if.then66:                                        ; preds = %if.end53
  %or69 = or i32 %spec.store.select, 16
  %52 = ptrtoint ptr %ignore_status_mask to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %or69, ptr %ignore_status_mask, align 4
  %53 = ptrtoint ptr %termios to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %termios, align 4
  %and71 = and i32 %54, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and71)
  %tobool72.not = icmp eq i32 %and71, 0
  br i1 %tobool72.not, label %if.then66.if.end78_crit_edge, label %if.then73

if.then66.if.end78_crit_edge:                     ; preds = %if.then66
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end78

if.then73:                                        ; preds = %if.then66
  call void @__sanitizer_cov_trace_pc() #11
  %or76 = or i32 %spec.store.select, 18
  %55 = ptrtoint ptr %ignore_status_mask to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %or76, ptr %ignore_status_mask, align 4
  br label %if.end78

if.end78:                                         ; preds = %if.then73, %if.then66.if.end78_crit_edge, %if.end53.if.end78_crit_edge
  %56 = ptrtoint ptr %c_cflag to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %c_cflag, align 4
  %and80 = and i32 %57, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and80)
  %cmp = icmp eq i32 %and80, 0
  br i1 %cmp, label %if.then82, label %if.end78.if.end86_crit_edge

if.end78.if.end86_crit_edge:                      ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end86

if.then82:                                        ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #11
  %58 = ptrtoint ptr %ignore_status_mask to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %ignore_status_mask, align 4
  %or85 = or i32 %59, 1
  store i32 %or85, ptr %ignore_status_mask, align 4
  br label %if.end86

if.end86:                                         ; preds = %if.then82, %if.end78.if.end86_crit_edge
  %ier = getelementptr inbounds %struct.uart_8250_port, ptr %port, i32 0, i32 9
  %60 = ptrtoint ptr %ier to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %ier, align 2
  %62 = and i8 %61, -9
  store i8 %62, ptr %ier, align 2
  %flags = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 33
  %63 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %flags, align 4
  %and91 = and i32 %64, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and91)
  %tobool92.not = icmp eq i32 %and91, 0
  br i1 %tobool92.not, label %lor.lhs.false, label %if.end86.if.then100_crit_edge

if.end86.if.then100_crit_edge:                    ; preds = %if.end86
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then100

lor.lhs.false:                                    ; preds = %if.end86
  %65 = ptrtoint ptr %c_cflag to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %c_cflag, align 4
  %67 = and i32 %66, -2147481600
  call void @__sanitizer_cov_trace_const_cmp4(i32 2048, i32 %67)
  %.not = icmp eq i32 %67, 2048
  br i1 %.not, label %lor.lhs.false.if.end105_crit_edge, label %lor.lhs.false.if.then100_crit_edge

lor.lhs.false.if.then100_crit_edge:               ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then100

lor.lhs.false.if.end105_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end105

if.then100:                                       ; preds = %lor.lhs.false.if.then100_crit_edge, %if.end86.if.then100_crit_edge
  %68 = or i8 %61, 8
  %69 = ptrtoint ptr %ier to i32
  call void @__asan_store1_noabort(i32 %69)
  store i8 %68, ptr %ier, align 2
  br label %if.end105

if.end105:                                        ; preds = %if.then100, %lor.lhs.false.if.end105_crit_edge
  %lcr = getelementptr inbounds %struct.uart_8250_port, ptr %port, i32 0, i32 10
  %70 = ptrtoint ptr %lcr to i32
  call void @__asan_store1_noabort(i32 %70)
  store i8 %16, ptr %lcr, align 1
  %fcr = getelementptr inbounds %struct.uart_8250_port, ptr %port, i32 0, i32 8
  %71 = ptrtoint ptr %fcr to i32
  call void @__asan_store1_noabort(i32 %71)
  store i8 1, ptr %fcr, align 1
  %tx_trigger = getelementptr inbounds %struct.omap8250_priv, ptr %1, i32 0, i32 10
  %72 = ptrtoint ptr %tx_trigger to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %tx_trigger, align 2
  %74 = shl i8 %73, 4
  %75 = and i8 %74, 48
  %76 = or i8 %75, 1
  store i8 %76, ptr %fcr, align 1
  %rx_trigger = getelementptr inbounds %struct.omap8250_priv, ptr %1, i32 0, i32 11
  %77 = ptrtoint ptr %rx_trigger to i32
  call void @__asan_load1_noabort(i32 %77)
  %78 = load i8, ptr %rx_trigger, align 1
  %79 = shl i8 %78, 6
  %or117259 = or i8 %76, %79
  store i8 %or117259, ptr %fcr, align 1
  %scr = getelementptr inbounds %struct.omap8250_priv, ptr %1, i32 0, i32 4
  %80 = ptrtoint ptr %scr to i32
  call void @__asan_store1_noabort(i32 %80)
  store i8 -56, ptr %scr, align 1
  %dma = getelementptr inbounds %struct.uart_8250_port, ptr %port, i32 0, i32 19
  %81 = ptrtoint ptr %dma to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %dma, align 4
  %tobool119.not = icmp eq ptr %82, null
  %spec.store.select260 = select i1 %tobool119.not, i8 -56, i8 -53
  store i8 %spec.store.select260, ptr %scr, align 1
  %arrayidx = getelementptr %struct.ktermios, ptr %termios, i32 0, i32 5, i32 8
  %83 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %83)
  %84 = load i8, ptr %arrayidx, align 1
  %xon = getelementptr inbounds %struct.omap8250_priv, ptr %1, i32 0, i32 6
  %85 = ptrtoint ptr %xon to i32
  call void @__asan_store1_noabort(i32 %85)
  store i8 %84, ptr %xon, align 1
  %arrayidx127 = getelementptr %struct.ktermios, ptr %termios, i32 0, i32 5, i32 9
  %86 = ptrtoint ptr %arrayidx127 to i32
  call void @__asan_load1_noabort(i32 %86)
  %87 = load i8, ptr %arrayidx127, align 1
  %xoff = getelementptr inbounds %struct.omap8250_priv, ptr %1, i32 0, i32 7
  %88 = ptrtoint ptr %xoff to i32
  call void @__asan_store1_noabort(i32 %88)
  store i8 %87, ptr %xoff, align 2
  %efr = getelementptr inbounds %struct.omap8250_priv, ptr %1, i32 0, i32 3
  %89 = ptrtoint ptr %efr to i32
  call void @__asan_store1_noabort(i32 %89)
  store i8 0, ptr %efr, align 2
  %status = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 34
  %90 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %status, align 4
  %and129 = and i32 %91, -29
  store i32 %and129, ptr %status, align 4
  %92 = ptrtoint ptr %c_cflag to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %c_cflag, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %93)
  %tobool132.not = icmp sgt i32 %93, -1
  br i1 %tobool132.not, label %if.end105.if.else_crit_edge, label %land.lhs.true

if.end105.if.else_crit_edge:                      ; preds = %if.end105
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else

land.lhs.true:                                    ; preds = %if.end105
  %94 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %flags, align 4
  %and135 = and i32 %95, 3145728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and135)
  %tobool136.not = icmp eq i32 %and135, 0
  br i1 %tobool136.not, label %land.lhs.true.if.else_crit_edge, label %land.lhs.true137

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else

land.lhs.true137:                                 ; preds = %land.lhs.true
  %gpios = getelementptr inbounds %struct.uart_8250_port, ptr %port, i32 0, i32 16
  %96 = ptrtoint ptr %gpios to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %gpios, align 4
  %call138 = tail call ptr @mctrl_gpio_to_gpiod(ptr noundef %97, i32 noundef 4) #9
  %tobool139.not = icmp eq ptr %call138, null
  br i1 %tobool139.not, label %land.lhs.true140, label %land.lhs.true137.if.else_crit_edge

land.lhs.true137.if.else_crit_edge:               ; preds = %land.lhs.true137
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else

land.lhs.true140:                                 ; preds = %land.lhs.true137
  %98 = ptrtoint ptr %gpios to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %gpios, align 4
  %call142 = tail call ptr @mctrl_gpio_to_gpiod(ptr noundef %99, i32 noundef 0) #9
  %tobool143.not = icmp eq ptr %call142, null
  br i1 %tobool143.not, label %land.lhs.true140.if.end170.sink.split_crit_edge, label %land.lhs.true140.if.else_crit_edge

land.lhs.true140.if.else_crit_edge:               ; preds = %land.lhs.true140
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else

land.lhs.true140.if.end170.sink.split_crit_edge:  ; preds = %land.lhs.true140
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end170.sink.split

if.else:                                          ; preds = %land.lhs.true140.if.else_crit_edge, %land.lhs.true137.if.else_crit_edge, %land.lhs.true.if.else_crit_edge, %if.end105.if.else_crit_edge
  %100 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %flags, align 4
  %and154 = and i32 %101, 4194304
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and154)
  %tobool155.not = icmp eq i32 %and154, 0
  br i1 %tobool155.not, label %if.else.if.end170_crit_edge, label %if.then156

if.else.if.end170_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end170

if.then156:                                       ; preds = %if.else
  %102 = ptrtoint ptr %termios to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %termios, align 4
  %and158 = and i32 %103, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and158)
  %tobool159.not = icmp eq i32 %and158, 0
  br i1 %tobool159.not, label %if.then156.if.end170_crit_edge, label %if.then156.if.end170.sink.split_crit_edge

if.then156.if.end170.sink.split_crit_edge:        ; preds = %if.then156
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end170.sink.split

if.then156.if.end170_crit_edge:                   ; preds = %if.then156
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end170

if.end170.sink.split:                             ; preds = %if.then156.if.end170.sink.split_crit_edge, %land.lhs.true140.if.end170.sink.split_crit_edge
  %.sink266 = phi i32 [ 12, %land.lhs.true140.if.end170.sink.split_crit_edge ], [ 16, %if.then156.if.end170.sink.split_crit_edge ]
  %.sink265 = phi i8 [ -128, %land.lhs.true140.if.end170.sink.split_crit_edge ], [ 8, %if.then156.if.end170.sink.split_crit_edge ]
  %104 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %status, align 4
  %or163 = or i32 %105, %.sink266
  store i32 %or163, ptr %status, align 4
  %106 = ptrtoint ptr %efr to i32
  call void @__asan_load1_noabort(i32 %106)
  %107 = load i8, ptr %efr, align 2
  %108 = or i8 %107, %.sink265
  store i8 %108, ptr %efr, align 2
  br label %if.end170

if.end170:                                        ; preds = %if.end170.sink.split, %if.then156.if.end170_crit_edge, %if.else.if.end170_crit_edge
  tail call fastcc void @omap8250_restore_regs(ptr noundef %port)
  tail call void @_raw_spin_unlock_irq(ptr noundef %port) #9
  %109 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %dev, align 4
  %call.i262 = tail call i64 @ktime_get_mono_fast_ns() #9
  %last_busy.i = getelementptr inbounds %struct.device, ptr %110, i32 0, i32 12, i32 22
  %111 = ptrtoint ptr %last_busy.i to i32
  call void @__asan_store8_noabort(i32 %111)
  store volatile i64 %call.i262, ptr %last_busy.i, align 8
  %112 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %dev, align 4
  %call.i263 = tail call i32 @__pm_runtime_suspend(ptr noundef %113, i32 noundef 13) #9
  %div176 = udiv i32 512000000, %call35
  %calc_latency = getelementptr inbounds %struct.omap8250_priv, ptr %1, i32 0, i32 16
  %114 = ptrtoint ptr %calc_latency to i32
  call void @__asan_store4_noabort(i32 %114)
  store i32 %div176, ptr %calc_latency, align 4
  %latency = getelementptr inbounds %struct.omap8250_priv, ptr %1, i32 0, i32 15
  %115 = ptrtoint ptr %latency to i32
  call void @__asan_store4_noabort(i32 %115)
  store i32 %div176, ptr %latency, align 4
  %qos_work = getelementptr inbounds %struct.omap8250_priv, ptr %1, i32 0, i32 18
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %116 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %116, ptr noundef %qos_work) #9
  %call179 = tail call i32 @tty_termios_baud_rate(ptr noundef %termios) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call179)
  %tobool180.not = icmp eq i32 %call179, 0
  br i1 %tobool180.not, label %if.end170.if.end182_crit_edge, label %if.then181

if.end170.if.end182_crit_edge:                    ; preds = %if.end170
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end182

if.then181:                                       ; preds = %if.end170
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @tty_termios_encode_baud_rate(ptr noundef %termios, i32 noundef %call35, i32 noundef %call35) #9
  br label %if.end182

if.end182:                                        ; preds = %if.then181, %if.end170.if.end182_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @omap8250_set_mctrl(ptr noundef %port, i32 noundef %mctrl) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 59
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  tail call void @serial8250_do_set_mctrl(ptr noundef %port, i32 noundef %mctrl) #9
  %gpios = getelementptr inbounds %struct.uart_8250_port, ptr %port, i32 0, i32 16
  %2 = ptrtoint ptr %gpios to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %gpios, align 4
  %call2 = tail call ptr @mctrl_gpio_to_gpiod(ptr noundef %3, i32 noundef 4) #9
  %tobool.not = icmp eq ptr %call2, null
  br i1 %tobool.not, label %if.then, label %entry.if.end17_crit_edge

entry.if.end17_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end17

if.then:                                          ; preds = %entry
  %serial_in.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 3
  %4 = ptrtoint ptr %serial_in.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %serial_in.i, align 4
  %call.i = tail call i32 %5(ptr noundef %port, i32 noundef 3) #9
  %serial_out.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 4
  %6 = ptrtoint ptr %serial_out.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %serial_out.i, align 4
  tail call void %7(ptr noundef %port, i32 noundef 3, i32 noundef 191) #9
  %and = and i32 %mctrl, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool4.not = icmp eq i32 %and, 0
  br i1 %tobool4.not, label %if.then.if.else_crit_edge, label %land.lhs.true

if.then.if.else_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else

land.lhs.true:                                    ; preds = %if.then
  %status = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 34
  %8 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %status, align 4
  %and5 = and i32 %9, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5)
  %tobool6.not = icmp eq i32 %and5, 0
  br i1 %tobool6.not, label %land.lhs.true.if.else_crit_edge, label %if.then7

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else

if.then7:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  %efr = getelementptr inbounds %struct.omap8250_priv, ptr %1, i32 0, i32 3
  %10 = ptrtoint ptr %efr to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %efr, align 2
  %12 = or i8 %11, 64
  store i8 %12, ptr %efr, align 2
  br label %if.end

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %if.then.if.else_crit_edge
  %efr10 = getelementptr inbounds %struct.omap8250_priv, ptr %1, i32 0, i32 3
  %13 = ptrtoint ptr %efr10 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %efr10, align 2
  %15 = and i8 %14, -65
  store i8 %15, ptr %efr10, align 2
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then7
  %efr14 = getelementptr inbounds %struct.omap8250_priv, ptr %1, i32 0, i32 3
  %16 = ptrtoint ptr %efr14 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %efr14, align 2
  %conv15 = zext i8 %17 to i32
  %18 = ptrtoint ptr %serial_out.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %serial_out.i, align 4
  tail call void %19(ptr noundef %port, i32 noundef 2, i32 noundef %conv15) #9
  %conv16 = and i32 %call.i, 255
  %20 = ptrtoint ptr %serial_out.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %serial_out.i, align 4
  tail call void %21(ptr noundef %port, i32 noundef 3, i32 noundef %conv16) #9
  br label %if.end17

if.end17:                                         ; preds = %if.end, %entry.if.end17_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @omap_8250_pm(ptr noundef %port, i32 noundef %state, i32 noundef %oldstate) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 45
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %1, i32 noundef 4) #9
  %serial_out.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 4
  %2 = ptrtoint ptr %serial_out.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %serial_out.i, align 4
  tail call void %3(ptr noundef %port, i32 noundef 3, i32 noundef 191) #9
  %serial_in.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 3
  %4 = ptrtoint ptr %serial_in.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %serial_in.i, align 4
  %call.i20 = tail call i32 %5(ptr noundef %port, i32 noundef 2) #9
  %conv3 = and i32 %call.i20, 255
  %or = or i32 %conv3, 16
  %6 = ptrtoint ptr %serial_out.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %serial_out.i, align 4
  tail call void %7(ptr noundef %port, i32 noundef 2, i32 noundef %or) #9
  %8 = ptrtoint ptr %serial_out.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %serial_out.i, align 4
  tail call void %9(ptr noundef %port, i32 noundef 3, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %state)
  %cmp.not = icmp eq i32 %state, 0
  %cond = select i1 %cmp.not, i32 0, i32 16
  %10 = ptrtoint ptr %serial_out.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %serial_out.i, align 4
  tail call void %11(ptr noundef %port, i32 noundef 1, i32 noundef %cond) #9
  %12 = ptrtoint ptr %serial_out.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %serial_out.i, align 4
  tail call void %13(ptr noundef %port, i32 noundef 3, i32 noundef 191) #9
  %14 = ptrtoint ptr %serial_out.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %serial_out.i, align 4
  tail call void %15(ptr noundef %port, i32 noundef 2, i32 noundef %conv3) #9
  %16 = ptrtoint ptr %serial_out.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %serial_out.i, align 4
  tail call void %17(ptr noundef %port, i32 noundef 3, i32 noundef 0) #9
  %18 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev, align 4
  %call.i27 = tail call i64 @ktime_get_mono_fast_ns() #9
  %last_busy.i = getelementptr inbounds %struct.device, ptr %19, i32 0, i32 12, i32 22
  %20 = ptrtoint ptr %last_busy.i to i32
  call void @__asan_store8_noabort(i32 %20)
  store volatile i64 %call.i27, ptr %last_busy.i, align 8
  %21 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dev, align 4
  %call.i28 = tail call i32 @__pm_runtime_suspend(ptr noundef %22, i32 noundef 13) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @omap_8250_startup(ptr noundef %port) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 59
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %wakeirq = getelementptr inbounds %struct.omap8250_priv, ptr %1, i32 0, i32 13
  %2 = ptrtoint ptr %wakeirq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %wakeirq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %entry.if.end5_crit_edge, label %if.then

entry.if.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end5

if.then:                                          ; preds = %entry
  %dev = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 45
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 4
  %call2 = tail call i32 @dev_pm_set_dedicated_wake_irq(ptr noundef %5, i32 noundef %3) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.then.if.end5_crit_edge, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then.if.end5_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end5

if.end5:                                          ; preds = %if.then.if.end5_crit_edge, %entry.if.end5_crit_edge
  %dev6 = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 45
  %6 = ptrtoint ptr %dev6 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev6, align 4
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %7, i32 noundef 4) #9
  %mcr = getelementptr inbounds %struct.uart_8250_port, ptr %port, i32 0, i32 11
  %8 = ptrtoint ptr %mcr to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 0, ptr %mcr, align 4
  %serial_out.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 4
  %9 = ptrtoint ptr %serial_out.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %serial_out.i, align 4
  tail call void %10(ptr noundef %port, i32 noundef 2, i32 noundef 6) #9
  %11 = ptrtoint ptr %serial_out.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %serial_out.i, align 4
  tail call void %12(ptr noundef %port, i32 noundef 3, i32 noundef 3) #9
  %lsr_saved_flags = getelementptr inbounds %struct.uart_8250_port, ptr %port, i32 0, i32 17
  %13 = ptrtoint ptr %lsr_saved_flags to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 0, ptr %lsr_saved_flags, align 4
  %msr_saved_flags = getelementptr inbounds %struct.uart_8250_port, ptr %port, i32 0, i32 18
  %14 = ptrtoint ptr %msr_saved_flags to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 0, ptr %msr_saved_flags, align 1
  %cons = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 32
  %15 = ptrtoint ptr %cons to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %cons, align 4
  %tobool8.not = icmp eq ptr %16, null
  br i1 %tobool8.not, label %if.end5.if.end12_crit_edge, label %land.lhs.true

if.end5.if.end12_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end12

land.lhs.true:                                    ; preds = %if.end5
  %index = getelementptr inbounds %struct.console, ptr %16, i32 0, i32 9
  %17 = ptrtoint ptr %index to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %index, align 2
  %conv = sext i16 %18 to i32
  %line = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 41
  %19 = ptrtoint ptr %line to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %line, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %20, i32 %conv)
  %cmp = icmp eq i32 %20, %conv
  br i1 %cmp, label %if.then11, label %land.lhs.true.if.end12_crit_edge

land.lhs.true.if.end12_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end12

if.then11:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  %dma = getelementptr inbounds %struct.uart_8250_port, ptr %port, i32 0, i32 19
  %21 = ptrtoint ptr %dma to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr null, ptr %dma, align 4
  br label %if.end12

if.end12:                                         ; preds = %if.then11, %land.lhs.true.if.end12_crit_edge, %if.end5.if.end12_crit_edge
  %dma13 = getelementptr inbounds %struct.uart_8250_port, ptr %port, i32 0, i32 19
  %22 = ptrtoint ptr %dma13 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dma13, align 4
  %tobool14.not = icmp eq ptr %23, null
  br i1 %tobool14.not, label %if.end12.if.end29_crit_edge, label %if.then15

if.end12.if.end29_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end29

if.then15:                                        ; preds = %if.end12
  %call16 = tail call i32 @serial8250_request_dma(ptr noundef %port) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %if.then15.if.end29_crit_edge, label %do.body

if.then15.if.end29_crit_edge:                     ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end29

do.body:                                          ; preds = %if.then15
  %call19 = tail call i32 @___ratelimit(ptr noundef nonnull @omap_8250_startup._rs, ptr noundef nonnull @__func__.omap_8250_startup) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %do.body.do.end26_crit_edge, label %do.end

do.body.do.end26_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end26

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  %24 = ptrtoint ptr %dev6 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dev6, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %25, ptr noundef nonnull @.str.38) #12
  br label %do.end26

do.end26:                                         ; preds = %do.end, %do.body.do.end26_crit_edge
  %26 = ptrtoint ptr %dma13 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr null, ptr %dma13, align 4
  br label %if.end29

if.end29:                                         ; preds = %do.end26, %if.then15.if.end29_crit_edge, %if.end12.if.end29_crit_edge
  %irq = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 20
  %27 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %irq, align 4
  %29 = ptrtoint ptr %dev6 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %dev6, align 4
  %init_name.i = getelementptr inbounds %struct.device, ptr %30, i32 0, i32 3
  %31 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %32, null
  br i1 %tobool.not.i, label %if.end.i, label %if.end29.dev_name.exit_crit_edge

if.end29.dev_name.exit_crit_edge:                 ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #11
  br label %dev_name.exit

if.end.i:                                         ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #11
  %33 = ptrtoint ptr %30 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %30, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %if.end29.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %34, %if.end.i ], [ %32, %if.end29.dev_name.exit_crit_edge ]
  %call.i113 = tail call i32 @request_threaded_irq(i32 noundef %28, ptr noundef nonnull @omap8250_irq, ptr noundef null, i32 noundef 128, ptr noundef %retval.0.i, ptr noundef %port) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i113)
  %cmp33 = icmp slt i32 %call.i113, 0
  br i1 %cmp33, label %err, label %if.end36

if.end36:                                         ; preds = %dev_name.exit
  %ier = getelementptr inbounds %struct.uart_8250_port, ptr %port, i32 0, i32 9
  %35 = ptrtoint ptr %ier to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 5, ptr %ier, align 2
  %36 = ptrtoint ptr %serial_out.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %serial_out.i, align 4
  tail call void %37(ptr noundef %port, i32 noundef 1, i32 noundef 5) #9
  %capabilities = getelementptr inbounds %struct.uart_8250_port, ptr %port, i32 0, i32 3
  %38 = ptrtoint ptr %capabilities to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %capabilities, align 4
  %or = or i32 %39, 32768
  store i32 %or, ptr %capabilities, align 4
  %wer = getelementptr inbounds %struct.omap8250_priv, ptr %1, i32 0, i32 5
  %habit = getelementptr inbounds %struct.omap8250_priv, ptr %1, i32 0, i32 1
  %40 = ptrtoint ptr %habit to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %habit, align 4
  %42 = and i8 %41, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %42)
  %tobool40.not = icmp eq i8 %42, 0
  %spec.store.select = select i1 %tobool40.not, i8 127, i8 -1
  %43 = ptrtoint ptr %wer to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 %spec.store.select, ptr %wer, align 4
  %conv48 = zext i8 %spec.store.select to i32
  %44 = ptrtoint ptr %serial_out.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %serial_out.i, align 4
  tail call void %45(ptr noundef %port, i32 noundef 23, i32 noundef %conv48) #9
  %46 = ptrtoint ptr %dma13 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %dma13, align 4
  %tobool50.not = icmp eq ptr %47, null
  br i1 %tobool50.not, label %if.end36.if.end59_crit_edge, label %land.lhs.true51

if.end36.if.end59_crit_edge:                      ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end59

land.lhs.true51:                                  ; preds = %if.end36
  %48 = ptrtoint ptr %habit to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %habit, align 4
  %50 = and i8 %49, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %50)
  %tobool55.not = icmp eq i8 %50, 0
  br i1 %tobool55.not, label %if.then56, label %land.lhs.true51.if.end59_crit_edge

land.lhs.true51.if.end59_crit_edge:               ; preds = %land.lhs.true51
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end59

if.then56:                                        ; preds = %land.lhs.true51
  call void @__sanitizer_cov_trace_pc() #11
  %rx_dma = getelementptr inbounds %struct.uart_8250_dma, ptr %47, i32 0, i32 1
  %51 = ptrtoint ptr %rx_dma to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %rx_dma, align 4
  %call58 = tail call i32 %52(ptr noundef %port) #9
  br label %if.end59

if.end59:                                         ; preds = %if.then56, %land.lhs.true51.if.end59_crit_edge, %if.end36.if.end59_crit_edge
  %53 = ptrtoint ptr %dev6 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %dev6, align 4
  %call.i116 = tail call i64 @ktime_get_mono_fast_ns() #9
  %last_busy.i = getelementptr inbounds %struct.device, ptr %54, i32 0, i32 12, i32 22
  %55 = ptrtoint ptr %last_busy.i to i32
  call void @__asan_store8_noabort(i32 %55)
  store volatile i64 %call.i116, ptr %last_busy.i, align 8
  %56 = ptrtoint ptr %dev6 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %dev6, align 4
  %call.i117 = tail call i32 @__pm_runtime_suspend(ptr noundef %57, i32 noundef 13) #9
  br label %cleanup

err:                                              ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #11
  %58 = ptrtoint ptr %dev6 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %dev6, align 4
  %call.i118 = tail call i64 @ktime_get_mono_fast_ns() #9
  %last_busy.i119 = getelementptr inbounds %struct.device, ptr %59, i32 0, i32 12, i32 22
  %60 = ptrtoint ptr %last_busy.i119 to i32
  call void @__asan_store8_noabort(i32 %60)
  store volatile i64 %call.i118, ptr %last_busy.i119, align 8
  %61 = ptrtoint ptr %dev6 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %dev6, align 4
  %call.i120 = tail call i32 @__pm_runtime_suspend(ptr noundef %62, i32 noundef 13) #9
  %63 = ptrtoint ptr %dev6 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %dev6, align 4
  tail call void @dev_pm_clear_wake_irq(ptr noundef %64) #9
  br label %cleanup

cleanup:                                          ; preds = %err, %if.end59, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i113, %err ], [ 0, %if.end59 ], [ %call2, %if.then.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @omap_8250_shutdown(ptr noundef %port) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 59
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %qos_work = getelementptr inbounds %struct.omap8250_priv, ptr %1, i32 0, i32 18
  %call1 = tail call zeroext i1 @flush_work(ptr noundef %qos_work) #9
  %dma = getelementptr inbounds %struct.uart_8250_port, ptr %port, i32 0, i32 19
  %2 = ptrtoint ptr %dma to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dma, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @omap_8250_rx_dma_flush(ptr noundef %port)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %dev = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 45
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 4
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %5, i32 noundef 4) #9
  %serial_out.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 4
  %6 = ptrtoint ptr %serial_out.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %serial_out.i, align 4
  tail call void %7(ptr noundef %port, i32 noundef 23, i32 noundef 0) #9
  %habit = getelementptr inbounds %struct.omap8250_priv, ptr %1, i32 0, i32 1
  %8 = ptrtoint ptr %habit to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %habit, align 4
  %10 = and i8 %9, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool3.not = icmp eq i8 %10, 0
  br i1 %tobool3.not, label %if.end.if.end5_crit_edge, label %if.then4

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end5

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %11 = ptrtoint ptr %serial_out.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %serial_out.i, align 4
  tail call void %12(ptr noundef %port, i32 noundef 35, i32 noundef 0) #9
  br label %if.end5

if.end5:                                          ; preds = %if.then4, %if.end.if.end5_crit_edge
  %ier = getelementptr inbounds %struct.uart_8250_port, ptr %port, i32 0, i32 9
  %13 = ptrtoint ptr %ier to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 0, ptr %ier, align 2
  %14 = ptrtoint ptr %serial_out.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %serial_out.i, align 4
  tail call void %15(ptr noundef %port, i32 noundef 1, i32 noundef 0) #9
  %16 = ptrtoint ptr %dma to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dma, align 4
  %tobool7.not = icmp eq ptr %17, null
  br i1 %tobool7.not, label %if.end5.if.end9_crit_edge, label %if.then8

if.end5.if.end9_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end9

if.then8:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @serial8250_release_dma(ptr noundef %port) #9
  br label %if.end9

if.end9:                                          ; preds = %if.then8, %if.end5.if.end9_crit_edge
  %lcr = getelementptr inbounds %struct.uart_8250_port, ptr %port, i32 0, i32 10
  %18 = ptrtoint ptr %lcr to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %lcr, align 1
  %conv10 = zext i8 %19 to i32
  %and11 = and i32 %conv10, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11)
  %tobool12.not = icmp eq i32 %and11, 0
  br i1 %tobool12.not, label %if.end9.if.end17_crit_edge, label %if.then13

if.end9.if.end17_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end17

if.then13:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #11
  %and16 = and i32 %conv10, 191
  %20 = ptrtoint ptr %serial_out.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %serial_out.i, align 4
  tail call void %21(ptr noundef %port, i32 noundef 3, i32 noundef %and16) #9
  br label %if.end17

if.end17:                                         ; preds = %if.then13, %if.end9.if.end17_crit_edge
  %22 = ptrtoint ptr %serial_out.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %serial_out.i, align 4
  tail call void %23(ptr noundef %port, i32 noundef 2, i32 noundef 6) #9
  %24 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dev, align 4
  %call.i46 = tail call i64 @ktime_get_mono_fast_ns() #9
  %last_busy.i = getelementptr inbounds %struct.device, ptr %25, i32 0, i32 12, i32 22
  %26 = ptrtoint ptr %last_busy.i to i32
  call void @__asan_store8_noabort(i32 %26)
  store volatile i64 %call.i46, ptr %last_busy.i, align 8
  %27 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %dev, align 4
  %call.i47 = tail call i32 @__pm_runtime_suspend(ptr noundef %28, i32 noundef 13) #9
  %irq = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 20
  %29 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %irq, align 4
  %call21 = tail call ptr @free_irq(i32 noundef %30, ptr noundef %port) #9
  %31 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %dev, align 4
  tail call void @dev_pm_clear_wake_irq(ptr noundef %32) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @omap_8250_throttle(ptr noundef %port) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 59
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %dev = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 45
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %3, i32 noundef 4) #9
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %port) #9
  %ops = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 39
  %4 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ops, align 4
  %stop_rx = getelementptr inbounds %struct.uart_ops, ptr %5, i32 0, i32 8
  %6 = ptrtoint ptr %stop_rx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %stop_rx, align 4
  tail call void %7(ptr noundef %port) #9
  %throttled = getelementptr inbounds %struct.omap8250_priv, ptr %1, i32 0, i32 22
  %8 = ptrtoint ptr %throttled to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 1, ptr %throttled, align 1
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %port, i32 noundef %call3) #9
  %9 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev, align 4
  %call.i17 = tail call i64 @ktime_get_mono_fast_ns() #9
  %last_busy.i = getelementptr inbounds %struct.device, ptr %10, i32 0, i32 12, i32 22
  %11 = ptrtoint ptr %last_busy.i to i32
  call void @__asan_store8_noabort(i32 %11)
  store volatile i64 %call.i17, ptr %last_busy.i, align 8
  %12 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev, align 4
  %call.i18 = tail call i32 @__pm_runtime_suspend(ptr noundef %13, i32 noundef 13) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @omap_8250_unthrottle(ptr noundef %port) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 59
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %dev = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 45
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %3, i32 noundef 4) #9
  %call4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %port) #9
  %throttled = getelementptr inbounds %struct.omap8250_priv, ptr %1, i32 0, i32 22
  %4 = ptrtoint ptr %throttled to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %throttled, align 1
  %dma = getelementptr inbounds %struct.uart_8250_port, ptr %port, i32 0, i32 19
  %5 = ptrtoint ptr %dma to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dma, align 4
  %tobool.not = icmp eq ptr %6, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %rx_dma = getelementptr inbounds %struct.uart_8250_dma, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %rx_dma to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %rx_dma, align 4
  %call8 = tail call i32 %8(ptr noundef %port) #9
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %ier = getelementptr inbounds %struct.uart_8250_port, ptr %port, i32 0, i32 9
  %9 = ptrtoint ptr %ier to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %ier, align 2
  %11 = or i8 %10, 5
  store i8 %11, ptr %ier, align 2
  %read_status_mask = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 28
  %12 = ptrtoint ptr %read_status_mask to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %read_status_mask, align 4
  %or11 = or i32 %13, 1
  store i32 %or11, ptr %read_status_mask, align 4
  %conv13 = zext i8 %11 to i32
  %serial_out.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 4
  %14 = ptrtoint ptr %serial_out.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %serial_out.i, align 4
  tail call void %15(ptr noundef %port, i32 noundef 1, i32 noundef %conv13) #9
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %port, i32 noundef %call4) #9
  %16 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev, align 4
  %call.i30 = tail call i64 @ktime_get_mono_fast_ns() #9
  %last_busy.i = getelementptr inbounds %struct.device, ptr %17, i32 0, i32 12, i32 22
  %18 = ptrtoint ptr %last_busy.i to i32
  call void @__asan_store8_noabort(i32 %18)
  store volatile i64 %call.i30, ptr %last_busy.i, align 8
  %19 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dev, align 4
  %call.i31 = tail call i32 @__pm_runtime_suspend(ptr noundef %20, i32 noundef 13) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @serial8250_em485_config(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @serial8250_em485_start_tx(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @serial8250_em485_stop_tx(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_alias_get_id(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_of_parse_and_map(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @cpu_latency_qos_add_request(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @omap8250_uart_qos_work(ptr noundef %work) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %pm_qos_request = getelementptr i8, ptr %work, i32 -24
  %latency = getelementptr i8, ptr %work, i32 -32
  %0 = ptrtoint ptr %latency to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %latency, align 4
  tail call void @cpu_latency_qos_update_request(ptr noundef %pm_qos_request, i32 noundef %1) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_init_wakeup(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_set_autosuspend_delay(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_irq_safe(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @omap8250_no_handle_irq(ptr nocapture noundef readnone %port) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %.b35 = load i1, ptr @omap8250_no_handle_irq.__already_done, align 1
  br i1 %.b35, label %entry.if.end25_crit_edge, label %if.then, !prof !136

entry.if.end25_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end25

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @omap8250_no_handle_irq.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 1239, i32 noundef 9, ptr noundef nonnull @.str.46) #9
  br label %if.end25

if.end25:                                         ; preds = %if.then, %entry.if.end25_crit_edge
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @the_no_dma_filter_fn(ptr nocapture noundef readnone %chan, ptr nocapture noundef readnone %param) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  ret i1 false
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @omap_8250_tx_dma(ptr noundef %p) #5 align 64 {
entry:
  %sg.i = alloca %struct.scatterlist, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dma1 = getelementptr inbounds %struct.uart_8250_port, ptr %p, i32 0, i32 19
  %0 = ptrtoint ptr %dma1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dma1, align 4
  %private_data = getelementptr inbounds %struct.uart_port, ptr %p, i32 0, i32 59
  %2 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data, align 4
  %state = getelementptr inbounds %struct.uart_port, ptr %p, i32 0, i32 30
  %4 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %state, align 4
  %xmit3 = getelementptr inbounds %struct.uart_state, ptr %5, i32 0, i32 2
  %tx_running = getelementptr inbounds %struct.uart_8250_dma, ptr %1, i32 0, i32 18
  %6 = ptrtoint ptr %tx_running to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %tx_running, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not = icmp eq i8 %7, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup62_crit_edge

entry.cleanup62_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup62

if.end:                                           ; preds = %entry
  %tty2.i = getelementptr inbounds %struct.tty_port, ptr %5, i32 0, i32 1
  %8 = ptrtoint ptr %tty2.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %tty2.i, align 4
  %tobool.not.i = icmp eq ptr %9, null
  br i1 %tobool.not.i, label %if.end.uart_tx_stopped.exit_crit_edge, label %land.lhs.true.i

if.end.uart_tx_stopped.exit_crit_edge:            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %uart_tx_stopped.exit

land.lhs.true.i:                                  ; preds = %if.end
  %stopped.i = getelementptr inbounds %struct.tty_struct, ptr %9, i32 0, i32 19, i32 1
  %10 = ptrtoint ptr %stopped.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %stopped.i, align 4, !range !137
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool3.not.i = icmp eq i8 %11, 0
  br i1 %tobool3.not.i, label %land.lhs.true.i.uart_tx_stopped.exit_crit_edge, label %land.lhs.true.i.if.then6_crit_edge

land.lhs.true.i.if.then6_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then6

land.lhs.true.i.uart_tx_stopped.exit_crit_edge:   ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %uart_tx_stopped.exit

uart_tx_stopped.exit:                             ; preds = %land.lhs.true.i.uart_tx_stopped.exit_crit_edge, %if.end.uart_tx_stopped.exit_crit_edge
  %hw_stopped.i = getelementptr inbounds %struct.uart_port, ptr %p, i32 0, i32 35
  %12 = ptrtoint ptr %hw_stopped.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %hw_stopped.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool4.not.i.not = icmp eq i32 %13, 0
  br i1 %tobool4.not.i.not, label %lor.lhs.false, label %uart_tx_stopped.exit.if.then6_crit_edge

uart_tx_stopped.exit.if.then6_crit_edge:          ; preds = %uart_tx_stopped.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then6

lor.lhs.false:                                    ; preds = %uart_tx_stopped.exit
  %head = getelementptr inbounds %struct.uart_state, ptr %5, i32 0, i32 2, i32 1
  %14 = ptrtoint ptr %head to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %head, align 4
  %tail = getelementptr inbounds %struct.uart_state, ptr %5, i32 0, i32 2, i32 2
  %16 = ptrtoint ptr %tail to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %tail, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %15, i32 %17)
  %cmp = icmp eq i32 %15, %17
  br i1 %cmp, label %lor.lhs.false.if.then6_crit_edge, label %if.end13

lor.lhs.false.if.then6_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then6

if.then6:                                         ; preds = %lor.lhs.false.if.then6_crit_edge, %uart_tx_stopped.exit.if.then6_crit_edge, %land.lhs.true.i.if.then6_crit_edge
  %tx_err = getelementptr inbounds %struct.uart_8250_dma, ptr %1, i32 0, i32 19
  %18 = ptrtoint ptr %tx_err to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %tx_err, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool7.not = icmp eq i8 %19, 0
  br i1 %tobool7.not, label %lor.lhs.false8, label %if.then6.err_crit_edge

if.then6.err_crit_edge:                           ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #11
  br label %err

lor.lhs.false8:                                   ; preds = %if.then6
  %capabilities = getelementptr inbounds %struct.uart_8250_port, ptr %p, i32 0, i32 3
  %20 = ptrtoint ptr %capabilities to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %capabilities, align 4
  %and = and i32 %21, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool9.not = icmp eq i32 %and, 0
  br i1 %tobool9.not, label %if.end11, label %lor.lhs.false8.err_crit_edge

lor.lhs.false8.err_crit_edge:                     ; preds = %lor.lhs.false8
  call void @__sanitizer_cov_trace_pc() #11
  br label %err

if.end11:                                         ; preds = %lor.lhs.false8
  %ier.i = getelementptr inbounds %struct.uart_8250_port, ptr %p, i32 0, i32 9
  %22 = ptrtoint ptr %ier.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %ier.i, align 2
  %24 = and i8 %23, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %24)
  %tobool.not.i110 = icmp eq i8 %24, 0
  br i1 %tobool.not.i110, label %if.end11.cleanup62_crit_edge, label %if.end.i

if.end11.cleanup62_crit_edge:                     ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup62

if.end.i:                                         ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #11
  %and3.i = and i8 %23, -3
  %25 = ptrtoint ptr %ier.i to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %and3.i, ptr %ier.i, align 2
  %conv6.i = zext i8 %and3.i to i32
  %serial_out.i.i = getelementptr inbounds %struct.uart_port, ptr %p, i32 0, i32 4
  %26 = ptrtoint ptr %serial_out.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %serial_out.i.i, align 4
  tail call void %27(ptr noundef %p, i32 noundef 1, i32 noundef %conv6.i) #9
  br label %cleanup62

if.end13:                                         ; preds = %lor.lhs.false
  %sub = sub i32 4096, %17
  %add = add i32 %sub, %15
  %and16 = and i32 %add, 4095
  %28 = tail call i32 @llvm.smin.i32(i32 %and16, i32 %sub)
  %tx_size = getelementptr inbounds %struct.uart_8250_dma, ptr %1, i32 0, i32 17
  %29 = ptrtoint ptr %tx_size to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %tx_size, align 4
  %habit = getelementptr inbounds %struct.omap8250_priv, ptr %3, i32 0, i32 1
  %30 = ptrtoint ptr %habit to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %habit, align 4
  %32 = and i8 %31, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %32)
  %tobool21.not = icmp eq i8 %32, 0
  br i1 %tobool21.not, label %if.end13.if.end35_crit_edge, label %if.then22

if.end13.if.end35_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end35

if.then22:                                        ; preds = %if.end13
  %serial_in.i = getelementptr inbounds %struct.uart_port, ptr %p, i32 0, i32 3
  %33 = ptrtoint ptr %serial_in.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %serial_in.i, align 4
  %call.i = tail call i32 %34(ptr noundef %p, i32 noundef 26) #9
  %conv25 = and i32 %call.i, 255
  %tx_loadsz = getelementptr inbounds %struct.uart_8250_port, ptr %p, i32 0, i32 6
  %35 = ptrtoint ptr %tx_loadsz to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %tx_loadsz, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %conv25, i32 %36)
  %cmp26 = icmp eq i32 %conv25, %36
  br i1 %cmp26, label %if.then22.err_crit_edge, label %if.end29

if.then22.err_crit_edge:                          ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #11
  br label %err

if.end29:                                         ; preds = %if.then22
  %37 = ptrtoint ptr %tx_size to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %tx_size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %38)
  %cmp31 = icmp ult i32 %38, 4
  br i1 %cmp31, label %if.end29.err_crit_edge, label %if.end29.if.end35_crit_edge

if.end29.if.end35_crit_edge:                      ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end35

if.end29.err_crit_edge:                           ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #11
  br label %err

if.end35:                                         ; preds = %if.end29.if.end35_crit_edge, %if.end13.if.end35_crit_edge
  %skip_byte.1 = phi i32 [ 0, %if.end13.if.end35_crit_edge ], [ 1, %if.end29.if.end35_crit_edge ]
  %txchan = getelementptr inbounds %struct.uart_8250_dma, ptr %1, i32 0, i32 8
  %39 = ptrtoint ptr %txchan to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %txchan, align 4
  %tx_addr = getelementptr inbounds %struct.uart_8250_dma, ptr %1, i32 0, i32 12
  %41 = ptrtoint ptr %tx_addr to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %tx_addr, align 4
  %43 = ptrtoint ptr %tail to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %tail, align 4
  %add37 = add i32 %42, %skip_byte.1
  %add38 = add i32 %add37, %44
  %45 = ptrtoint ptr %tx_size to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %tx_size, align 4
  %sub40 = sub i32 %46, %skip_byte.1
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %sg.i) #9
  %47 = getelementptr inbounds %struct.scatterlist, ptr %sg.i, i32 0, i32 3
  %48 = getelementptr inbounds %struct.scatterlist, ptr %sg.i, i32 0, i32 4
  %49 = call ptr @memset(ptr %sg.i, i32 255, i32 20)
  call void @sg_init_table(ptr noundef nonnull %sg.i, i32 noundef 1) #9
  %50 = ptrtoint ptr %47 to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %add38, ptr %47, align 4
  %51 = ptrtoint ptr %48 to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %sub40, ptr %48, align 4
  %tobool.not.i111 = icmp eq ptr %40, null
  br i1 %tobool.not.i111, label %if.end35.dmaengine_prep_slave_single.exit.thread_crit_edge, label %lor.lhs.false.i112

if.end35.dmaengine_prep_slave_single.exit.thread_crit_edge: ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #11
  br label %dmaengine_prep_slave_single.exit.thread

lor.lhs.false.i112:                               ; preds = %if.end35
  %52 = ptrtoint ptr %40 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %40, align 4
  %tobool1.not.i = icmp eq ptr %53, null
  br i1 %tobool1.not.i, label %lor.lhs.false.i112.dmaengine_prep_slave_single.exit.thread_crit_edge, label %lor.lhs.false2.i

lor.lhs.false.i112.dmaengine_prep_slave_single.exit.thread_crit_edge: ; preds = %lor.lhs.false.i112
  call void @__sanitizer_cov_trace_pc() #11
  br label %dmaengine_prep_slave_single.exit.thread

lor.lhs.false2.i:                                 ; preds = %lor.lhs.false.i112
  %device_prep_slave_sg.i = getelementptr inbounds %struct.dma_device, ptr %53, i32 0, i32 39
  %54 = ptrtoint ptr %device_prep_slave_sg.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %device_prep_slave_sg.i, align 4
  %tobool4.not.i113 = icmp eq ptr %55, null
  br i1 %tobool4.not.i113, label %lor.lhs.false2.i.dmaengine_prep_slave_single.exit.thread_crit_edge, label %dmaengine_prep_slave_single.exit

lor.lhs.false2.i.dmaengine_prep_slave_single.exit.thread_crit_edge: ; preds = %lor.lhs.false2.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %dmaengine_prep_slave_single.exit.thread

dmaengine_prep_slave_single.exit.thread:          ; preds = %lor.lhs.false2.i.dmaengine_prep_slave_single.exit.thread_crit_edge, %lor.lhs.false.i112.dmaengine_prep_slave_single.exit.thread_crit_edge, %if.end35.dmaengine_prep_slave_single.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %sg.i) #9
  br label %err

dmaengine_prep_slave_single.exit:                 ; preds = %lor.lhs.false2.i
  %call.i114 = call ptr %55(ptr noundef nonnull %40, ptr noundef nonnull %sg.i, i32 noundef 1, i32 noundef 1, i32 noundef 3, ptr noundef null) #9
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %sg.i) #9
  %tobool42.not = icmp eq ptr %call.i114, null
  br i1 %tobool42.not, label %dmaengine_prep_slave_single.exit.err_crit_edge, label %if.end44

dmaengine_prep_slave_single.exit.err_crit_edge:   ; preds = %dmaengine_prep_slave_single.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %err

if.end44:                                         ; preds = %dmaengine_prep_slave_single.exit
  %56 = ptrtoint ptr %tx_running to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 1, ptr %tx_running, align 4
  %callback = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %call.i114, i32 0, i32 6
  %57 = ptrtoint ptr %callback to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr @omap_8250_dma_tx_complete, ptr %callback, align 4
  %callback_param = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %call.i114, i32 0, i32 8
  %58 = ptrtoint ptr %callback_param to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr %p, ptr %callback_param, align 4
  %tx_submit.i = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %call.i114, i32 0, i32 4
  %59 = ptrtoint ptr %tx_submit.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %tx_submit.i, align 4
  %call.i117 = call i32 %60(ptr noundef nonnull %call.i114) #9
  %tx_cookie = getelementptr inbounds %struct.uart_8250_dma, ptr %1, i32 0, i32 14
  %61 = ptrtoint ptr %tx_cookie to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %call.i117, ptr %tx_cookie, align 4
  %62 = ptrtoint ptr %txchan to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %txchan, align 4
  %64 = ptrtoint ptr %63 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %63, align 4
  %dev = getelementptr inbounds %struct.dma_device, ptr %65, i32 0, i32 15
  %66 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %dev, align 4
  %68 = ptrtoint ptr %tx_addr to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %tx_addr, align 4
  call void @dma_sync_single_for_device(ptr noundef %67, i32 noundef %69, i32 noundef 4096, i32 noundef 1) #9
  %70 = ptrtoint ptr %txchan to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %txchan, align 4
  %72 = ptrtoint ptr %71 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %71, align 4
  %device_issue_pending.i = getelementptr inbounds %struct.dma_device, ptr %73, i32 0, i32 50
  %74 = ptrtoint ptr %device_issue_pending.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %device_issue_pending.i, align 4
  call void %75(ptr noundef %71) #9
  %tx_err50 = getelementptr inbounds %struct.uart_8250_dma, ptr %1, i32 0, i32 19
  %76 = ptrtoint ptr %tx_err50 to i32
  call void @__asan_load1_noabort(i32 %76)
  %77 = load i8, ptr %tx_err50, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %77)
  %tobool51.not = icmp eq i8 %77, 0
  br i1 %tobool51.not, label %if.end44.if.end54_crit_edge, label %if.then52

if.end44.if.end54_crit_edge:                      ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end54

if.then52:                                        ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #11
  %78 = ptrtoint ptr %tx_err50 to i32
  call void @__asan_store1_noabort(i32 %78)
  store i8 0, ptr %tx_err50, align 1
  br label %if.end54

if.end54:                                         ; preds = %if.then52, %if.end44.if.end54_crit_edge
  %ier.i118 = getelementptr inbounds %struct.uart_8250_port, ptr %p, i32 0, i32 9
  %79 = ptrtoint ptr %ier.i118 to i32
  call void @__asan_load1_noabort(i32 %79)
  %80 = load i8, ptr %ier.i118, align 2
  %81 = and i8 %80, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %81)
  %tobool.not.i119 = icmp eq i8 %81, 0
  br i1 %tobool.not.i119, label %if.end54.serial8250_clear_THRI.exit124_crit_edge, label %if.end.i123

if.end54.serial8250_clear_THRI.exit124_crit_edge: ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #11
  br label %serial8250_clear_THRI.exit124

if.end.i123:                                      ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #11
  %and3.i120 = and i8 %80, -3
  %82 = ptrtoint ptr %ier.i118 to i32
  call void @__asan_store1_noabort(i32 %82)
  store i8 %and3.i120, ptr %ier.i118, align 2
  %conv6.i121 = zext i8 %and3.i120 to i32
  %serial_out.i.i122 = getelementptr inbounds %struct.uart_port, ptr %p, i32 0, i32 4
  %83 = ptrtoint ptr %serial_out.i.i122 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %serial_out.i.i122, align 4
  call void %84(ptr noundef %p, i32 noundef 1, i32 noundef %conv6.i121) #9
  br label %serial8250_clear_THRI.exit124

serial8250_clear_THRI.exit124:                    ; preds = %if.end.i123, %if.end54.serial8250_clear_THRI.exit124_crit_edge
  br i1 %tobool21.not, label %serial8250_clear_THRI.exit124.cleanup62_crit_edge, label %if.then57

serial8250_clear_THRI.exit124.cleanup62_crit_edge: ; preds = %serial8250_clear_THRI.exit124
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup62

if.then57:                                        ; preds = %serial8250_clear_THRI.exit124
  call void @__sanitizer_cov_trace_pc() #11
  %85 = ptrtoint ptr %xmit3 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %xmit3, align 4
  %87 = ptrtoint ptr %tail to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %tail, align 4
  %arrayidx = getelementptr i8, ptr %86, i32 %88
  %89 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %89)
  %90 = load i8, ptr %arrayidx, align 1
  %conv59 = zext i8 %90 to i32
  %serial_out.i = getelementptr inbounds %struct.uart_port, ptr %p, i32 0, i32 4
  %91 = ptrtoint ptr %serial_out.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %serial_out.i, align 4
  call void %92(ptr noundef %p, i32 noundef 0, i32 noundef %conv59) #9
  br label %cleanup62

err:                                              ; preds = %dmaengine_prep_slave_single.exit.err_crit_edge, %dmaengine_prep_slave_single.exit.thread, %if.end29.err_crit_edge, %if.then22.err_crit_edge, %lor.lhs.false8.err_crit_edge, %if.then6.err_crit_edge
  %ret.1 = phi i32 [ -16, %lor.lhs.false8.err_crit_edge ], [ -16, %if.then6.err_crit_edge ], [ -16, %dmaengine_prep_slave_single.exit.err_crit_edge ], [ -16, %dmaengine_prep_slave_single.exit.thread ], [ -16, %if.then22.err_crit_edge ], [ -22, %if.end29.err_crit_edge ]
  %tx_err61 = getelementptr inbounds %struct.uart_8250_dma, ptr %1, i32 0, i32 19
  %93 = ptrtoint ptr %tx_err61 to i32
  call void @__asan_store1_noabort(i32 %93)
  store i8 1, ptr %tx_err61, align 1
  br label %cleanup62

cleanup62:                                        ; preds = %err, %if.then57, %serial8250_clear_THRI.exit124.cleanup62_crit_edge, %if.end.i, %if.end11.cleanup62_crit_edge, %entry.cleanup62_crit_edge
  %retval.0 = phi i32 [ %ret.1, %err ], [ 0, %entry.cleanup62_crit_edge ], [ 0, %if.then57 ], [ 0, %serial8250_clear_THRI.exit124.cleanup62_crit_edge ], [ 0, %if.end11.cleanup62_crit_edge ], [ 0, %if.end.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @omap_8250_rx_dma(ptr noundef %p) #5 align 64 {
entry:
  %sg.i = alloca %struct.scatterlist, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.uart_port, ptr %p, i32 0, i32 59
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %dma1 = getelementptr inbounds %struct.uart_8250_port, ptr %p, i32 0, i32 19
  %2 = ptrtoint ptr %dma1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dma1, align 4
  %rx_dma_broken = getelementptr inbounds %struct.omap8250_priv, ptr %1, i32 0, i32 21
  %4 = ptrtoint ptr %rx_dma_broken to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %rx_dma_broken, align 4, !range !137
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  br i1 %tobool.not, label %do.body2, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.body2:                                         ; preds = %entry
  %rx_dma_lock = getelementptr inbounds %struct.omap8250_priv, ptr %1, i32 0, i32 20
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %rx_dma_lock) #9
  %rx_running = getelementptr inbounds %struct.uart_8250_dma, ptr %3, i32 0, i32 20
  %6 = ptrtoint ptr %rx_running to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %rx_running, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool6.not = icmp eq i8 %7, 0
  %rxchan18 = getelementptr inbounds %struct.uart_8250_dma, ptr %3, i32 0, i32 7
  %8 = ptrtoint ptr %rxchan18 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %rxchan18, align 4
  br i1 %tobool6.not, label %if.end17, label %if.then7

if.then7:                                         ; preds = %do.body2
  %rx_cookie = getelementptr inbounds %struct.uart_8250_dma, ptr %3, i32 0, i32 13
  %10 = ptrtoint ptr %rx_cookie to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %rx_cookie, align 4
  %12 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %9, align 4
  %device_tx_status.i = getelementptr inbounds %struct.dma_device, ptr %13, i32 0, i32 49
  %14 = ptrtoint ptr %device_tx_status.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %device_tx_status.i, align 4
  %call.i = tail call i32 %15(ptr noundef %9, i32 noundef %11, ptr noundef null) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp9 = icmp eq i32 %call.i, 0
  br i1 %cmp9, label %if.then11, label %if.then7.out_crit_edge

if.then7.out_crit_edge:                           ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.then11:                                        ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #11
  %ier = getelementptr inbounds %struct.uart_8250_port, ptr %p, i32 0, i32 9
  %16 = ptrtoint ptr %ier to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %ier, align 2
  %18 = and i8 %17, -6
  store i8 %18, ptr %ier, align 2
  %conv15 = zext i8 %18 to i32
  %serial_out.i = getelementptr inbounds %struct.uart_port, ptr %p, i32 0, i32 4
  %19 = ptrtoint ptr %serial_out.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %serial_out.i, align 4
  tail call void %20(ptr noundef %p, i32 noundef 1, i32 noundef %conv15) #9
  br label %out

if.end17:                                         ; preds = %do.body2
  %rx_addr = getelementptr inbounds %struct.uart_8250_dma, ptr %3, i32 0, i32 11
  %21 = ptrtoint ptr %rx_addr to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %rx_addr, align 4
  %rx_size = getelementptr inbounds %struct.uart_8250_dma, ptr %3, i32 0, i32 16
  %23 = ptrtoint ptr %rx_size to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %rx_size, align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %sg.i) #9
  %25 = getelementptr inbounds %struct.scatterlist, ptr %sg.i, i32 0, i32 3
  %26 = getelementptr inbounds %struct.scatterlist, ptr %sg.i, i32 0, i32 4
  %27 = call ptr @memset(ptr %sg.i, i32 255, i32 20)
  call void @sg_init_table(ptr noundef nonnull %sg.i, i32 noundef 1) #9
  %28 = ptrtoint ptr %25 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %22, ptr %25, align 4
  %29 = ptrtoint ptr %26 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %24, ptr %26, align 4
  %tobool.not.i = icmp eq ptr %9, null
  br i1 %tobool.not.i, label %if.end17.dmaengine_prep_slave_single.exit.thread_crit_edge, label %lor.lhs.false.i

if.end17.dmaengine_prep_slave_single.exit.thread_crit_edge: ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #11
  br label %dmaengine_prep_slave_single.exit.thread

lor.lhs.false.i:                                  ; preds = %if.end17
  %30 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %9, align 4
  %tobool1.not.i = icmp eq ptr %31, null
  br i1 %tobool1.not.i, label %lor.lhs.false.i.dmaengine_prep_slave_single.exit.thread_crit_edge, label %lor.lhs.false2.i

lor.lhs.false.i.dmaengine_prep_slave_single.exit.thread_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %dmaengine_prep_slave_single.exit.thread

lor.lhs.false2.i:                                 ; preds = %lor.lhs.false.i
  %device_prep_slave_sg.i = getelementptr inbounds %struct.dma_device, ptr %31, i32 0, i32 39
  %32 = ptrtoint ptr %device_prep_slave_sg.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %device_prep_slave_sg.i, align 4
  %tobool4.not.i = icmp eq ptr %33, null
  br i1 %tobool4.not.i, label %lor.lhs.false2.i.dmaengine_prep_slave_single.exit.thread_crit_edge, label %dmaengine_prep_slave_single.exit

lor.lhs.false2.i.dmaengine_prep_slave_single.exit.thread_crit_edge: ; preds = %lor.lhs.false2.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %dmaengine_prep_slave_single.exit.thread

dmaengine_prep_slave_single.exit.thread:          ; preds = %lor.lhs.false2.i.dmaengine_prep_slave_single.exit.thread_crit_edge, %lor.lhs.false.i.dmaengine_prep_slave_single.exit.thread_crit_edge, %if.end17.dmaengine_prep_slave_single.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %sg.i) #9
  br label %out

dmaengine_prep_slave_single.exit:                 ; preds = %lor.lhs.false2.i
  %call.i60 = call ptr %33(ptr noundef nonnull %9, ptr noundef nonnull %sg.i, i32 noundef 1, i32 noundef 2, i32 noundef 3, ptr noundef null) #9
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %sg.i) #9
  %tobool20.not = icmp eq ptr %call.i60, null
  br i1 %tobool20.not, label %dmaengine_prep_slave_single.exit.out_crit_edge, label %if.end22

dmaengine_prep_slave_single.exit.out_crit_edge:   ; preds = %dmaengine_prep_slave_single.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.end22:                                         ; preds = %dmaengine_prep_slave_single.exit
  %34 = ptrtoint ptr %rx_running to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 1, ptr %rx_running, align 2
  %callback = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %call.i60, i32 0, i32 6
  %35 = ptrtoint ptr %callback to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr @__dma_rx_complete, ptr %callback, align 4
  %callback_param = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %call.i60, i32 0, i32 8
  %36 = ptrtoint ptr %callback_param to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %p, ptr %callback_param, align 4
  %tx_submit.i = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %call.i60, i32 0, i32 4
  %37 = ptrtoint ptr %tx_submit.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %tx_submit.i, align 4
  %call.i61 = call i32 %38(ptr noundef nonnull %call.i60) #9
  %rx_cookie25 = getelementptr inbounds %struct.uart_8250_dma, ptr %3, i32 0, i32 13
  %39 = ptrtoint ptr %rx_cookie25 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %call.i61, ptr %rx_cookie25, align 4
  %habit = getelementptr inbounds %struct.omap8250_priv, ptr %1, i32 0, i32 1
  %40 = ptrtoint ptr %habit to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %habit, align 4
  %42 = and i8 %41, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %42)
  %tobool28.not = icmp eq i8 %42, 0
  br i1 %tobool28.not, label %if.end22.if.end31_crit_edge, label %if.then29

if.end22.if.end31_crit_edge:                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end31

if.then29:                                        ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #11
  %serial_in.i = getelementptr inbounds %struct.uart_port, ptr %p, i32 0, i32 3
  %43 = ptrtoint ptr %serial_in.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %serial_in.i, align 4
  %call.i62 = call i32 %44(ptr noundef %p, i32 noundef 27) #9
  %serial_out.i63 = getelementptr inbounds %struct.uart_port, ptr %p, i32 0, i32 4
  %45 = ptrtoint ptr %serial_out.i63 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %serial_out.i63, align 4
  call void %46(ptr noundef %p, i32 noundef 27, i32 noundef 4) #9
  br label %if.end31

if.end31:                                         ; preds = %if.then29, %if.end22.if.end31_crit_edge
  %47 = ptrtoint ptr %rxchan18 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %rxchan18, align 4
  %49 = ptrtoint ptr %48 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %48, align 4
  %device_issue_pending.i = getelementptr inbounds %struct.dma_device, ptr %50, i32 0, i32 50
  %51 = ptrtoint ptr %device_issue_pending.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %device_issue_pending.i, align 4
  call void %52(ptr noundef %48) #9
  br label %out

out:                                              ; preds = %if.end31, %dmaengine_prep_slave_single.exit.out_crit_edge, %dmaengine_prep_slave_single.exit.thread, %if.then11, %if.then7.out_crit_edge
  %err.0 = phi i32 [ 0, %if.end31 ], [ 0, %if.then11 ], [ 0, %if.then7.out_crit_edge ], [ -16, %dmaengine_prep_slave_single.exit.out_crit_edge ], [ -16, %dmaengine_prep_slave_single.exit.thread ]
  call void @_raw_spin_unlock_irqrestore(ptr noundef %rx_dma_lock, i32 noundef %call3) #9
  br label %cleanup

cleanup:                                          ; preds = %out, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.0, %out ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @serial8250_register_8250_port(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @uart_get_baud_rate(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @uart_update_timeout(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mctrl_gpio_to_gpiod(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @omap8250_restore_regs(ptr noundef %up) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.uart_port, ptr %up, i32 0, i32 59
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %dma1 = getelementptr inbounds %struct.uart_8250_port, ptr %up, i32 0, i32 19
  %2 = ptrtoint ptr %dma1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dma1, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %tx_running = getelementptr inbounds %struct.uart_8250_dma, ptr %3, i32 0, i32 18
  %4 = ptrtoint ptr %tx_running to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %tx_running, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool2.not = icmp eq i8 %5, 0
  br i1 %tobool2.not, label %land.lhs.true.if.end_crit_edge, label %if.then

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  %delayed_restore = getelementptr inbounds %struct.omap8250_priv, ptr %1, i32 0, i32 8
  %6 = ptrtoint ptr %delayed_restore to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 1, ptr %delayed_restore, align 1
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %serial_out.i = getelementptr inbounds %struct.uart_port, ptr %up, i32 0, i32 4
  %7 = ptrtoint ptr %serial_out.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %serial_out.i, align 4
  tail call void %8(ptr noundef %up, i32 noundef 3, i32 noundef 191) #9
  %9 = ptrtoint ptr %serial_out.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %serial_out.i, align 4
  tail call void %10(ptr noundef %up, i32 noundef 2, i32 noundef 16) #9
  %11 = ptrtoint ptr %serial_out.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %serial_out.i, align 4
  tail call void %12(ptr noundef %up, i32 noundef 3, i32 noundef 128) #9
  %13 = ptrtoint ptr %serial_out.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %serial_out.i, align 4
  tail call void %14(ptr noundef %up, i32 noundef 4, i32 noundef 64) #9
  %gpios.i = getelementptr inbounds %struct.uart_8250_port, ptr %up, i32 0, i32 16
  %15 = ptrtoint ptr %gpios.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %gpios.i, align 4
  %tobool.not.i = icmp eq ptr %16, null
  br i1 %tobool.not.i, label %if.end.serial8250_out_MCR.exit_crit_edge, label %if.then.i

if.end.serial8250_out_MCR.exit_crit_edge:         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %serial8250_out_MCR.exit

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @mctrl_gpio_set(ptr noundef nonnull %16, i32 noundef 0) #9
  br label %serial8250_out_MCR.exit

serial8250_out_MCR.exit:                          ; preds = %if.then.i, %if.end.serial8250_out_MCR.exit_crit_edge
  %fcr = getelementptr inbounds %struct.uart_8250_port, ptr %up, i32 0, i32 8
  %17 = ptrtoint ptr %fcr to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %fcr, align 1
  %conv3 = zext i8 %18 to i32
  %19 = ptrtoint ptr %serial_out.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %serial_out.i, align 4
  tail call void %20(ptr noundef %up, i32 noundef 2, i32 noundef %conv3) #9
  %serial_in.i.i = getelementptr inbounds %struct.uart_port, ptr %up, i32 0, i32 3
  %21 = ptrtoint ptr %serial_in.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %serial_in.i.i, align 4
  %call.i.i = tail call i32 %22(ptr noundef %up, i32 noundef 16) #9
  %conv1.i = and i32 %call.i.i, 255
  %scr.i = getelementptr inbounds %struct.omap8250_priv, ptr %1, i32 0, i32 4
  %23 = ptrtoint ptr %scr.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %scr.i, align 1
  %conv2.i = zext i8 %24 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv1.i, i32 %conv2.i)
  %cmp.i = icmp eq i32 %conv1.i, %conv2.i
  br i1 %cmp.i, label %serial8250_out_MCR.exit.omap8250_update_scr.exit_crit_edge, label %if.end.i

serial8250_out_MCR.exit.omap8250_update_scr.exit_crit_edge: ; preds = %serial8250_out_MCR.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %omap8250_update_scr.exit

if.end.i:                                         ; preds = %serial8250_out_MCR.exit
  %and.i = and i32 %conv2.i, 6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i61 = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i61, label %if.end.i.if.end10.i_crit_edge, label %if.then6.i

if.end.i.if.end10.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end10.i

if.then6.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %and9.i = and i32 %conv2.i, 249
  %25 = ptrtoint ptr %serial_out.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %serial_out.i, align 4
  tail call void %26(ptr noundef %up, i32 noundef 16, i32 noundef %and9.i) #9
  br label %if.end10.i

if.end10.i:                                       ; preds = %if.then6.i, %if.end.i.if.end10.i_crit_edge
  %27 = ptrtoint ptr %scr.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %scr.i, align 1
  %conv12.i = zext i8 %28 to i32
  %29 = ptrtoint ptr %serial_out.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %serial_out.i, align 4
  tail call void %30(ptr noundef %up, i32 noundef 16, i32 noundef %conv12.i) #9
  br label %omap8250_update_scr.exit

omap8250_update_scr.exit:                         ; preds = %if.end10.i, %serial8250_out_MCR.exit.omap8250_update_scr.exit_crit_edge
  %31 = ptrtoint ptr %serial_out.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %serial_out.i, align 4
  tail call void %32(ptr noundef %up, i32 noundef 3, i32 noundef 191) #9
  %33 = ptrtoint ptr %serial_out.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %serial_out.i, align 4
  tail call void %34(ptr noundef %up, i32 noundef 6, i32 noundef 77) #9
  %tx_trigger = getelementptr inbounds %struct.omap8250_priv, ptr %1, i32 0, i32 10
  %35 = ptrtoint ptr %tx_trigger to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %tx_trigger, align 2
  %37 = lshr i8 %36, 2
  %38 = and i8 %37, 15
  %rx_trigger = getelementptr inbounds %struct.omap8250_priv, ptr %1, i32 0, i32 11
  %39 = ptrtoint ptr %rx_trigger to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %rx_trigger, align 1
  %41 = shl i8 %40, 2
  %42 = and i8 %41, -16
  %or57 = or i8 %42, %38
  %or = zext i8 %or57 to i32
  %43 = ptrtoint ptr %serial_out.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %serial_out.i, align 4
  tail call void %44(ptr noundef %up, i32 noundef 7, i32 noundef %or) #9
  %45 = ptrtoint ptr %serial_out.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %serial_out.i, align 4
  tail call void %46(ptr noundef %up, i32 noundef 3, i32 noundef 0) #9
  %mcr = getelementptr inbounds %struct.uart_8250_port, ptr %up, i32 0, i32 11
  %47 = ptrtoint ptr %mcr to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %mcr, align 4
  %conv9 = zext i8 %48 to i32
  %49 = ptrtoint ptr %serial_out.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %serial_out.i, align 4
  tail call void %50(ptr noundef %up, i32 noundef 4, i32 noundef %conv9) #9
  %51 = ptrtoint ptr %gpios.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %gpios.i, align 4
  %tobool.not.i69 = icmp eq ptr %52, null
  br i1 %tobool.not.i69, label %omap8250_update_scr.exit.serial8250_out_MCR.exit72_crit_edge, label %if.then.i70

omap8250_update_scr.exit.serial8250_out_MCR.exit72_crit_edge: ; preds = %omap8250_update_scr.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %serial8250_out_MCR.exit72

if.then.i70:                                      ; preds = %omap8250_update_scr.exit
  call void @__sanitizer_cov_trace_pc() #11
  %and.i.i = shl nuw nsw i32 %conv9, 1
  %53 = and i32 %and.i.i, 6
  %and6.i.i = shl nuw nsw i32 %conv9, 11
  %54 = and i32 %and6.i.i, 8192
  %55 = or i32 %53, %54
  %56 = and i32 %and6.i.i, 16384
  %57 = or i32 %55, %56
  %58 = and i32 %and6.i.i, 32768
  %59 = or i32 %57, %58
  tail call void @mctrl_gpio_set(ptr noundef nonnull %52, i32 noundef %59) #9
  br label %serial8250_out_MCR.exit72

serial8250_out_MCR.exit72:                        ; preds = %if.then.i70, %omap8250_update_scr.exit.serial8250_out_MCR.exit72_crit_edge
  %ier = getelementptr inbounds %struct.uart_8250_port, ptr %up, i32 0, i32 9
  %60 = ptrtoint ptr %ier to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %ier, align 2
  %conv10 = zext i8 %61 to i32
  %62 = ptrtoint ptr %serial_out.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %serial_out.i, align 4
  tail call void %63(ptr noundef %up, i32 noundef 1, i32 noundef %conv10) #9
  %64 = ptrtoint ptr %serial_out.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %serial_out.i, align 4
  tail call void %65(ptr noundef %up, i32 noundef 3, i32 noundef 191) #9
  %quot = getelementptr inbounds %struct.omap8250_priv, ptr %1, i32 0, i32 9
  %66 = ptrtoint ptr %quot to i32
  call void @__asan_load2_noabort(i32 %66)
  %67 = load i16, ptr %quot, align 4
  %conv11 = zext i16 %67 to i32
  %dl_write.i = getelementptr inbounds %struct.uart_8250_port, ptr %up, i32 0, i32 22
  %68 = ptrtoint ptr %dl_write.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %dl_write.i, align 4
  tail call void %69(ptr noundef %up, i32 noundef %conv11) #9
  %efr = getelementptr inbounds %struct.omap8250_priv, ptr %1, i32 0, i32 3
  %70 = ptrtoint ptr %efr to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %efr, align 2
  %conv12 = zext i8 %71 to i32
  %72 = ptrtoint ptr %serial_out.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %serial_out.i, align 4
  tail call void %73(ptr noundef %up, i32 noundef 2, i32 noundef %conv12) #9
  %74 = ptrtoint ptr %serial_out.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %serial_out.i, align 4
  tail call void %75(ptr noundef %up, i32 noundef 3, i32 noundef 191) #9
  %xon = getelementptr inbounds %struct.omap8250_priv, ptr %1, i32 0, i32 6
  %76 = ptrtoint ptr %xon to i32
  call void @__asan_load1_noabort(i32 %76)
  %77 = load i8, ptr %xon, align 1
  %conv13 = zext i8 %77 to i32
  %78 = ptrtoint ptr %serial_out.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %serial_out.i, align 4
  tail call void %79(ptr noundef %up, i32 noundef 4, i32 noundef %conv13) #9
  %xoff = getelementptr inbounds %struct.omap8250_priv, ptr %1, i32 0, i32 7
  %80 = ptrtoint ptr %xoff to i32
  call void @__asan_load1_noabort(i32 %80)
  %81 = load i8, ptr %xoff, align 2
  %conv14 = zext i8 %81 to i32
  %82 = ptrtoint ptr %serial_out.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %serial_out.i, align 4
  tail call void %83(ptr noundef %up, i32 noundef 6, i32 noundef %conv14) #9
  %lcr = getelementptr inbounds %struct.uart_8250_port, ptr %up, i32 0, i32 10
  %84 = ptrtoint ptr %lcr to i32
  call void @__asan_load1_noabort(i32 %84)
  %85 = load i8, ptr %lcr, align 1
  %conv15 = zext i8 %85 to i32
  %86 = ptrtoint ptr %serial_out.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %serial_out.i, align 4
  tail call void %87(ptr noundef %up, i32 noundef 3, i32 noundef %conv15) #9
  tail call fastcc void @omap8250_update_mdr1(ptr noundef %up, ptr noundef %1)
  %ops = getelementptr inbounds %struct.uart_port, ptr %up, i32 0, i32 39
  %88 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %ops, align 4
  %set_mctrl = getelementptr inbounds %struct.uart_ops, ptr %89, i32 0, i32 1
  %90 = ptrtoint ptr %set_mctrl to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %set_mctrl, align 4
  %mctrl = getelementptr inbounds %struct.uart_port, ptr %up, i32 0, i32 36
  %92 = ptrtoint ptr %mctrl to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %mctrl, align 4
  tail call void %91(ptr noundef %up, i32 noundef %93) #9
  br label %cleanup

cleanup:                                          ; preds = %serial8250_out_MCR.exit72, %if.then
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tty_termios_baud_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @tty_termios_encode_baud_rate(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @omap8250_update_mdr1(ptr noundef %up, ptr nocapture noundef readonly %priv) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %habit = getelementptr inbounds %struct.omap8250_priv, ptr %priv, i32 0, i32 1
  %0 = ptrtoint ptr %habit to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %habit, align 4
  %2 = and i8 %1, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool.not = icmp eq i8 %2, 0
  %mdr1 = getelementptr inbounds %struct.omap8250_priv, ptr %priv, i32 0, i32 2
  %3 = ptrtoint ptr %mdr1 to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %mdr1, align 1
  %conv1 = zext i8 %4 to i32
  %serial_out.i = getelementptr inbounds %struct.uart_port, ptr %up, i32 0, i32 4
  %5 = ptrtoint ptr %serial_out.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %serial_out.i, align 4
  tail call void %6(ptr noundef %up, i32 noundef 8, i32 noundef %conv1) #9
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %7 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %7(i32 noundef 429496) #9
  %fcr.i = getelementptr inbounds %struct.uart_8250_port, ptr %up, i32 0, i32 8
  %8 = ptrtoint ptr %fcr.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %fcr.i, align 1
  %10 = or i8 %9, 6
  %or2.i = zext i8 %10 to i32
  %11 = ptrtoint ptr %serial_out.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %serial_out.i, align 4
  tail call void %12(ptr noundef %up, i32 noundef 2, i32 noundef %or2.i) #9
  %serial_in.i.i = getelementptr inbounds %struct.uart_port, ptr %up, i32 0, i32 3
  %13 = ptrtoint ptr %serial_in.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %serial_in.i.i, align 4
  %call.i15.i = tail call i32 %14(ptr noundef %up, i32 noundef 5) #9
  %and16.i = and i32 %call.i15.i, 33
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %and16.i)
  %cmp.not17.i = icmp eq i32 %and16.i, 32
  br i1 %cmp.not17.i, label %if.then.if.end_crit_edge, label %if.then.while.body.i_crit_edge

if.then.while.body.i_crit_edge:                   ; preds = %if.then
  br label %while.body.i

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

while.body.i:                                     ; preds = %if.end.i.while.body.i_crit_edge, %if.then.while.body.i_crit_edge
  %timeout.018.i = phi i8 [ %dec.i, %if.end.i.while.body.i_crit_edge ], [ -1, %if.then.while.body.i_crit_edge ]
  %dec.i = add i8 %timeout.018.i, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %dec.i)
  %tobool.not.i = icmp eq i8 %dec.i, 0
  br i1 %tobool.not.i, label %do.end.i, label %if.end.i

do.end.i:                                         ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #11
  %dev.i = getelementptr inbounds %struct.uart_port, ptr %up, i32 0, i32 45
  %15 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dev.i, align 4
  %17 = ptrtoint ptr %serial_in.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %serial_in.i.i, align 4
  %call.i13.i = tail call i32 %18(ptr noundef %up, i32 noundef 5) #9
  tail call void (ptr, ptr, ...) @_dev_crit(ptr noundef %16, ptr noundef nonnull @.str.34, i32 noundef %call.i13.i) #12
  br label %if.end

if.end.i:                                         ; preds = %while.body.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %19 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %19(i32 noundef 214748) #9
  %20 = ptrtoint ptr %serial_in.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %serial_in.i.i, align 4
  %call.i.i = tail call i32 %21(ptr noundef %up, i32 noundef 5) #9
  %and.i = and i32 %call.i.i, 33
  %cmp.not.i = icmp eq i32 %and.i, 32
  br i1 %cmp.not.i, label %if.end.i.if.end_crit_edge, label %if.end.i.while.body.i_crit_edge

if.end.i.while.body.i_crit_edge:                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body.i

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.end:                                           ; preds = %if.end.i.if.end_crit_edge, %do.end.i, %if.then.if.end_crit_edge, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mctrl_gpio_set(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_crit(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irq(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @serial8250_do_set_mctrl(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_pm_set_dedicated_wake_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @serial8250_request_dma(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___ratelimit(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @omap8250_irq(i32 noundef %irq, ptr noundef %dev_id) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.uart_port, ptr %dev_id, i32 0, i32 59
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %dma = getelementptr inbounds %struct.uart_8250_port, ptr %dev_id, i32 0, i32 19
  %2 = ptrtoint ptr %dma to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dma, align 4
  %tobool.not = icmp eq ptr %3, null
  tail call void @serial8250_rpm_get(ptr noundef %dev_id) #9
  %serial_in.i = getelementptr inbounds %struct.uart_port, ptr %dev_id, i32 0, i32 3
  %4 = ptrtoint ptr %serial_in.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %serial_in.i, align 4
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call.i.i = tail call i32 %5(ptr noundef %dev_id, i32 noundef 2) #9
  %and.i = and i32 %call.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end.i64, label %if.then.omap_8250_dma_handle_irq.exit_crit_edge

if.then.omap_8250_dma_handle_irq.exit_crit_edge:  ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %omap_8250_dma_handle_irq.exit

if.end.i64:                                       ; preds = %if.then
  tail call void @_raw_spin_lock(ptr noundef %dev_id) #9
  %6 = ptrtoint ptr %serial_in.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %serial_in.i, align 4
  %call.i2.i = tail call i32 %7(ptr noundef %dev_id, i32 noundef 5) #9
  %conv5.i = trunc i32 %call.i2.i to i8
  %habit.i = getelementptr inbounds %struct.omap8250_priv, ptr %1, i32 0, i32 1
  %8 = ptrtoint ptr %habit.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %habit.i, align 4
  %10 = and i8 %9, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool8.not.i = icmp eq i8 %10, 0
  %11 = and i8 %conv5.i, 17
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool.not.i4.i = icmp eq i8 %11, 0
  br i1 %tobool8.not.i, label %if.else.i65, label %if.then9.i

if.then9.i:                                       ; preds = %if.end.i64
  br i1 %tobool.not.i4.i, label %if.then9.i.if.else.i.i_crit_edge, label %land.lhs.true.i.i

if.then9.i.if.else.i.i_crit_edge:                 ; preds = %if.then9.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else.i.i

land.lhs.true.i.i:                                ; preds = %if.then9.i
  %ier.i.i = getelementptr inbounds %struct.uart_8250_port, ptr %dev_id, i32 0, i32 9
  %12 = ptrtoint ptr %ier.i.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %ier.i.i, align 2
  %14 = and i8 %13, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool3.not.i.i = icmp eq i8 %14, 0
  br i1 %tobool3.not.i.i, label %land.lhs.true.i.i.if.else.i.i_crit_edge, label %if.then.i.i

land.lhs.true.i.i.if.else.i.i_crit_edge:          ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else.i.i

if.then.i.i:                                      ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %call.i3.i = tail call i32 @omap_8250_rx_dma(ptr noundef %dev_id) #9
  %serial_out.i.i.i = getelementptr inbounds %struct.uart_port, ptr %dev_id, i32 0, i32 4
  %15 = ptrtoint ptr %serial_out.i.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %serial_out.i.i.i, align 4
  tail call void %16(ptr noundef %dev_id, i32 noundef 35, i32 noundef 64) #9
  br label %if.end11.i

if.else.i.i:                                      ; preds = %land.lhs.true.i.i.if.else.i.i_crit_edge, %if.then9.i.if.else.i.i_crit_edge
  %17 = and i32 %call.i.i, 63
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %17)
  %cmp.i.i = icmp eq i32 %17, 12
  br i1 %cmp.i.i, label %if.then7.i.i, label %if.else.i.i.if.end11.i_crit_edge

if.else.i.i.if.end11.i_crit_edge:                 ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end11.i

if.then7.i.i:                                     ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %ier8.i.i = getelementptr inbounds %struct.uart_8250_port, ptr %dev_id, i32 0, i32 9
  %18 = ptrtoint ptr %ier8.i.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %ier8.i.i, align 2
  %20 = and i8 %19, -6
  store i8 %20, ptr %ier8.i.i, align 2
  %conv13.i.i = zext i8 %20 to i32
  %serial_out.i32.i.i = getelementptr inbounds %struct.uart_port, ptr %dev_id, i32 0, i32 4
  %21 = ptrtoint ptr %serial_out.i32.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %serial_out.i32.i.i, align 4
  tail call void %22(ptr noundef %dev_id, i32 noundef 1, i32 noundef %conv13.i.i) #9
  tail call fastcc void @omap_8250_rx_dma_flush(ptr noundef %dev_id) #9
  %23 = ptrtoint ptr %serial_in.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %serial_in.i, align 4
  %call.i.i.i = tail call i32 %24(ptr noundef %dev_id, i32 noundef 2) #9
  %25 = ptrtoint ptr %serial_out.i32.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %serial_out.i32.i.i, align 4
  tail call void %26(ptr noundef %dev_id, i32 noundef 35, i32 noundef 0) #9
  %27 = ptrtoint ptr %ier8.i.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %ier8.i.i, align 2
  %29 = or i8 %28, 5
  store i8 %29, ptr %ier8.i.i, align 2
  %conv19.i.i = zext i8 %29 to i32
  %30 = ptrtoint ptr %serial_out.i32.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %serial_out.i32.i.i, align 4
  tail call void %31(ptr noundef %dev_id, i32 noundef 1, i32 noundef %conv19.i.i) #9
  br label %if.end11.i

if.else.i65:                                      ; preds = %if.end.i64
  %and2.i.i = and i32 %call.i.i, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i.i)
  %tobool3.not.i5.i = icmp eq i32 %and2.i.i, 0
  %or.cond.i = select i1 %tobool.not.i4.i, i1 true, i1 %tobool3.not.i5.i
  br i1 %or.cond.i, label %if.else.i65.if.end11.i_crit_edge, label %if.then.i7.i

if.else.i65.if.end11.i_crit_edge:                 ; preds = %if.else.i65
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end11.i

if.then.i7.i:                                     ; preds = %if.else.i65
  %and.i.i.i = and i32 %call.i.i, 63
  %32 = zext i32 %and.i.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %32, ptr @__sancov_gen_cov_switch_values.50)
  switch i32 %and.i.i.i, label %handle_rx_dma.exit.i.i [
    i32 6, label %if.then.i7.i.handle_rx_dma.exit.thread.i.i_crit_edge
    i32 12, label %if.then.i7.i.handle_rx_dma.exit.thread.i.i_crit_edge74
    i32 4, label %if.then.i7.i.handle_rx_dma.exit.thread.i.i_crit_edge75
  ]

if.then.i7.i.handle_rx_dma.exit.thread.i.i_crit_edge75: ; preds = %if.then.i7.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %handle_rx_dma.exit.thread.i.i

if.then.i7.i.handle_rx_dma.exit.thread.i.i_crit_edge74: ; preds = %if.then.i7.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %handle_rx_dma.exit.thread.i.i

if.then.i7.i.handle_rx_dma.exit.thread.i.i_crit_edge: ; preds = %if.then.i7.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %handle_rx_dma.exit.thread.i.i

handle_rx_dma.exit.thread.i.i:                    ; preds = %if.then.i7.i.handle_rx_dma.exit.thread.i.i_crit_edge, %if.then.i7.i.handle_rx_dma.exit.thread.i.i_crit_edge74, %if.then.i7.i.handle_rx_dma.exit.thread.i.i_crit_edge75
  tail call fastcc void @omap_8250_rx_dma_flush(ptr noundef %dev_id) #9
  br label %if.then5.i.i

handle_rx_dma.exit.i.i:                           ; preds = %if.then.i7.i
  %call.i.i8.i = tail call i32 @omap_8250_rx_dma(ptr noundef %dev_id) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i8.i)
  %tobool.i.not.i.i = icmp eq i32 %call.i.i8.i, 0
  br i1 %tobool.i.not.i.i, label %handle_rx_dma.exit.i.i.if.end11.i_crit_edge, label %handle_rx_dma.exit.i.i.if.then5.i.i_crit_edge

handle_rx_dma.exit.i.i.if.then5.i.i_crit_edge:    ; preds = %handle_rx_dma.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then5.i.i

handle_rx_dma.exit.i.i.if.end11.i_crit_edge:      ; preds = %handle_rx_dma.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end11.i

if.then5.i.i:                                     ; preds = %handle_rx_dma.exit.i.i.if.then5.i.i_crit_edge, %handle_rx_dma.exit.thread.i.i
  %call6.i.i = tail call zeroext i8 @serial8250_rx_chars(ptr noundef %dev_id, i8 noundef zeroext %conv5.i) #9
  %call7.i.i = tail call i32 @omap_8250_rx_dma(ptr noundef %dev_id) #9
  br label %if.end11.i

if.end11.i:                                       ; preds = %if.then5.i.i, %handle_rx_dma.exit.i.i.if.end11.i_crit_edge, %if.else.i65.if.end11.i_crit_edge, %if.then7.i.i, %if.else.i.i.if.end11.i_crit_edge, %if.then.i.i
  %status.0.i = phi i8 [ %conv5.i, %if.then.i.i ], [ %conv5.i, %if.else.i.i.if.end11.i_crit_edge ], [ %conv5.i, %if.then7.i.i ], [ %call6.i.i, %if.then5.i.i ], [ %conv5.i, %handle_rx_dma.exit.i.i.if.end11.i_crit_edge ], [ %conv5.i, %if.else.i65.if.end11.i_crit_edge ]
  %call12.i = tail call i32 @serial8250_modem_status(ptr noundef %dev_id) #9
  %33 = and i8 %status.0.i, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %33)
  %tobool15.not.i = icmp eq i8 %33, 0
  br i1 %tobool15.not.i, label %if.end11.i.if.end36.i_crit_edge, label %land.lhs.true.i

if.end11.i.if.end36.i_crit_edge:                  ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end36.i

land.lhs.true.i:                                  ; preds = %if.end11.i
  %34 = ptrtoint ptr %dma to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %dma, align 4
  %tx_err.i = getelementptr inbounds %struct.uart_8250_dma, ptr %35, i32 0, i32 19
  %36 = ptrtoint ptr %tx_err.i to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %tx_err.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %37)
  %tobool17.not.i = icmp eq i8 %37, 0
  br i1 %tobool17.not.i, label %land.lhs.true.i.if.end36.i_crit_edge, label %if.then18.i

land.lhs.true.i.if.end36.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end36.i

if.then18.i:                                      ; preds = %land.lhs.true.i
  %state.i.i = getelementptr inbounds %struct.uart_port, ptr %dev_id, i32 0, i32 30
  %38 = ptrtoint ptr %state.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %state.i.i, align 4
  %tty2.i.i = getelementptr inbounds %struct.tty_port, ptr %39, i32 0, i32 1
  %40 = ptrtoint ptr %tty2.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %tty2.i.i, align 4
  %tobool.not.i9.i = icmp eq ptr %41, null
  br i1 %tobool.not.i9.i, label %if.then18.i.uart_tx_stopped.exit.i_crit_edge, label %land.lhs.true.i11.i

if.then18.i.uart_tx_stopped.exit.i_crit_edge:     ; preds = %if.then18.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %uart_tx_stopped.exit.i

land.lhs.true.i11.i:                              ; preds = %if.then18.i
  %stopped.i.i = getelementptr inbounds %struct.tty_struct, ptr %41, i32 0, i32 19, i32 1
  %42 = ptrtoint ptr %stopped.i.i to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %stopped.i.i, align 4, !range !137
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %43)
  %tobool3.not.i10.i = icmp eq i8 %43, 0
  br i1 %tobool3.not.i10.i, label %land.lhs.true.i11.i.uart_tx_stopped.exit.i_crit_edge, label %land.lhs.true.i11.i.if.then27.i_crit_edge

land.lhs.true.i11.i.if.then27.i_crit_edge:        ; preds = %land.lhs.true.i11.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then27.i

land.lhs.true.i11.i.uart_tx_stopped.exit.i_crit_edge: ; preds = %land.lhs.true.i11.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %uart_tx_stopped.exit.i

uart_tx_stopped.exit.i:                           ; preds = %land.lhs.true.i11.i.uart_tx_stopped.exit.i_crit_edge, %if.then18.i.uart_tx_stopped.exit.i_crit_edge
  %hw_stopped.i.i = getelementptr inbounds %struct.uart_port, ptr %dev_id, i32 0, i32 35
  %44 = ptrtoint ptr %hw_stopped.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %hw_stopped.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %45)
  %tobool4.not.i.not.i = icmp eq i32 %45, 0
  br i1 %tobool4.not.i.not.i, label %lor.lhs.false.i, label %uart_tx_stopped.exit.i.if.then27.i_crit_edge

uart_tx_stopped.exit.i.if.then27.i_crit_edge:     ; preds = %uart_tx_stopped.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then27.i

lor.lhs.false.i:                                  ; preds = %uart_tx_stopped.exit.i
  %head.i = getelementptr inbounds %struct.uart_state, ptr %39, i32 0, i32 2, i32 1
  %46 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %head.i, align 4
  %tail.i = getelementptr inbounds %struct.uart_state, ptr %39, i32 0, i32 2, i32 2
  %48 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %tail.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %47, i32 %49)
  %cmp.i66 = icmp eq i32 %47, %49
  br i1 %cmp.i66, label %lor.lhs.false.i.if.then27.i_crit_edge, label %if.else30.i

lor.lhs.false.i.if.then27.i_crit_edge:            ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then27.i

if.then27.i:                                      ; preds = %lor.lhs.false.i.if.then27.i_crit_edge, %uart_tx_stopped.exit.i.if.then27.i_crit_edge, %land.lhs.true.i11.i.if.then27.i_crit_edge
  %50 = ptrtoint ptr %tx_err.i to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 0, ptr %tx_err.i, align 1
  br label %if.end36.sink.split.i

if.else30.i:                                      ; preds = %lor.lhs.false.i
  %call31.i = tail call i32 @omap_8250_tx_dma(ptr noundef %dev_id) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31.i)
  %tobool32.not.i = icmp eq i32 %call31.i, 0
  br i1 %tobool32.not.i, label %if.else30.i.if.end36.i_crit_edge, label %if.else30.i.if.end36.sink.split.i_crit_edge

if.else30.i.if.end36.sink.split.i_crit_edge:      ; preds = %if.else30.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end36.sink.split.i

if.else30.i.if.end36.i_crit_edge:                 ; preds = %if.else30.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end36.i

if.end36.sink.split.i:                            ; preds = %if.else30.i.if.end36.sink.split.i_crit_edge, %if.then27.i
  tail call void @serial8250_tx_chars(ptr noundef %dev_id) #9
  br label %if.end36.i

if.end36.i:                                       ; preds = %if.end36.sink.split.i, %if.else30.i.if.end36.i_crit_edge, %land.lhs.true.i.if.end36.i_crit_edge, %if.end11.i.if.end36.i_crit_edge
  %has_sysrq.i.i = getelementptr inbounds %struct.uart_port, ptr %dev_id, i32 0, i32 48
  %51 = ptrtoint ptr %has_sysrq.i.i to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %has_sysrq.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %52)
  %tobool.not.i12.i = icmp eq i8 %52, 0
  br i1 %tobool.not.i12.i, label %if.then.i13.i, label %if.end.i.i

if.then.i13.i:                                    ; preds = %if.end36.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @_raw_spin_unlock(ptr noundef %dev_id) #9
  br label %omap_8250_dma_handle_irq.exit

if.end.i.i:                                       ; preds = %if.end36.i
  %sysrq_ch1.i.i = getelementptr inbounds %struct.uart_port, ptr %dev_id, i32 0, i32 47
  %53 = ptrtoint ptr %sysrq_ch1.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %sysrq_ch1.i.i, align 4
  store i32 0, ptr %sysrq_ch1.i.i, align 4
  tail call void @_raw_spin_unlock(ptr noundef %dev_id) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %54)
  %tobool4.not.i14.i = icmp eq i32 %54, 0
  br i1 %tobool4.not.i14.i, label %if.end.i.i.omap_8250_dma_handle_irq.exit_crit_edge, label %if.then5.i15.i

if.end.i.i.omap_8250_dma_handle_irq.exit_crit_edge: ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %omap_8250_dma_handle_irq.exit

if.then5.i15.i:                                   ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @handle_sysrq(i32 noundef %54) #9
  br label %omap_8250_dma_handle_irq.exit

omap_8250_dma_handle_irq.exit:                    ; preds = %if.then5.i15.i, %if.end.i.i.omap_8250_dma_handle_irq.exit_crit_edge, %if.then.i13.i, %if.then.omap_8250_dma_handle_irq.exit_crit_edge
  tail call void @serial8250_rpm_put(ptr noundef %dev_id) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i = tail call i32 %5(ptr noundef %dev_id, i32 noundef 5) #9
  %55 = ptrtoint ptr %serial_in.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %serial_in.i, align 4
  %call.i68 = tail call i32 %56(ptr noundef %dev_id, i32 noundef 2) #9
  %call5 = tail call i32 @serial8250_handle_irq(ptr noundef %dev_id, i32 noundef %call.i68) #9
  %habit = getelementptr inbounds %struct.omap8250_priv, ptr %1, i32 0, i32 1
  %57 = ptrtoint ptr %habit to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %habit, align 4
  %59 = and i8 %58, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %59)
  %tobool6.not = icmp ne i8 %59, 0
  %and7 = and i32 %call.i68, 12
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %and7)
  %cmp = icmp eq i32 %and7, 12
  %or.cond = and i1 %cmp, %tobool6.not
  br i1 %or.cond, label %land.lhs.true9, label %if.end.if.end15_crit_edge

if.end.if.end15_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15

land.lhs.true9:                                   ; preds = %if.end
  %60 = ptrtoint ptr %serial_in.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %serial_in.i, align 4
  %call.i70 = tail call i32 %61(ptr noundef %dev_id, i32 noundef 25) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i70)
  %cmp11 = icmp eq i32 %call.i70, 0
  br i1 %cmp11, label %if.then13, label %land.lhs.true9.if.end15_crit_edge

land.lhs.true9.if.end15_crit_edge:                ; preds = %land.lhs.true9
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15

if.then13:                                        ; preds = %land.lhs.true9
  call void @__sanitizer_cov_trace_pc() #11
  %62 = ptrtoint ptr %serial_in.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %serial_in.i, align 4
  %call.i72 = tail call i32 %63(ptr noundef %dev_id, i32 noundef 0) #9
  br label %if.end15

if.end15:                                         ; preds = %if.then13, %land.lhs.true9.if.end15_crit_edge, %if.end.if.end15_crit_edge
  %and16 = and i32 %call.i, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16)
  %tobool17.not = icmp eq i32 %and16, 0
  br i1 %tobool17.not, label %if.end15.if.end35_crit_edge, label %land.lhs.true18

if.end15.if.end35_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end35

land.lhs.true18:                                  ; preds = %if.end15
  %overrun_backoff_time_ms = getelementptr inbounds %struct.uart_8250_port, ptr %dev_id, i32 0, i32 27
  %64 = ptrtoint ptr %overrun_backoff_time_ms to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %overrun_backoff_time_ms, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %65)
  %cmp19.not = icmp eq i32 %65, 0
  br i1 %cmp19.not, label %land.lhs.true18.if.end35_crit_edge, label %if.then21

land.lhs.true18.if.end35_crit_edge:               ; preds = %land.lhs.true18
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end35

if.then21:                                        ; preds = %land.lhs.true18
  %66 = ptrtoint ptr %serial_in.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %serial_in.i, align 4
  %call22 = tail call i32 %67(ptr noundef %dev_id, i32 noundef 1) #9
  %conv23 = trunc i32 %call22 to i8
  %ier = getelementptr inbounds %struct.uart_8250_port, ptr %dev_id, i32 0, i32 9
  %68 = ptrtoint ptr %ier to i32
  call void @__asan_store1_noabort(i32 %68)
  store i8 %conv23, ptr %ier, align 2
  %and26 = and i32 %call22, 5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and26)
  %tobool27.not = icmp eq i32 %and26, 0
  br i1 %tobool27.not, label %if.else, label %if.then28

if.then28:                                        ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #11
  %ops = getelementptr inbounds %struct.uart_port, ptr %dev_id, i32 0, i32 39
  %69 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %ops, align 4
  %stop_rx = getelementptr inbounds %struct.uart_ops, ptr %70, i32 0, i32 8
  %71 = ptrtoint ptr %stop_rx to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %stop_rx, align 4
  tail call void %72(ptr noundef %dev_id) #9
  br label %if.else.i

if.else:                                          ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #11
  %overrun_backoff = getelementptr inbounds %struct.uart_8250_port, ptr %dev_id, i32 0, i32 26
  %call29 = tail call zeroext i1 @cancel_delayed_work(ptr noundef %overrun_backoff) #9
  br label %if.else.i

if.else.i:                                        ; preds = %if.else, %if.then28
  %73 = ptrtoint ptr %overrun_backoff_time_ms to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %overrun_backoff_time_ms, align 4
  %call2.i = tail call i32 @__msecs_to_jiffies(i32 noundef %74) #9
  %overrun_backoff33 = getelementptr inbounds %struct.uart_8250_port, ptr %dev_id, i32 0, i32 26
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %75 = load ptr, ptr @system_wq, align 4
  %call.i.i73 = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %75, ptr noundef %overrun_backoff33, i32 noundef %call2.i) #9
  br label %if.end35

if.end35:                                         ; preds = %if.else.i, %land.lhs.true18.if.end35_crit_edge, %if.end15.if.end35_crit_edge
  tail call void @serial8250_rpm_put(ptr noundef %dev_id) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool36.not = icmp ne i32 %call5, 0
  %cond37 = zext i1 %tobool36.not to i32
  br label %cleanup

cleanup:                                          ; preds = %if.end35, %omap_8250_dma_handle_irq.exit
  %retval.0 = phi i32 [ 1, %omap_8250_dma_handle_irq.exit ], [ %cond37, %if.end35 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_pm_clear_wake_irq(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @serial8250_rpm_get(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @serial8250_handle_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_delayed_work(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @serial8250_rpm_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @serial8250_modem_status(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @serial8250_tx_chars(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @omap_8250_rx_dma_flush(ptr noundef %p) unnamed_addr #5 align 64 {
entry:
  %state = alloca %struct.dma_tx_state, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.uart_port, ptr %p, i32 0, i32 59
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %dma1 = getelementptr inbounds %struct.uart_8250_port, ptr %p, i32 0, i32 19
  %2 = ptrtoint ptr %dma1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dma1, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %state) #9
  %rx_dma_lock = getelementptr inbounds %struct.omap8250_priv, ptr %1, i32 0, i32 20
  %4 = call ptr @memset(ptr %state, i32 255, i32 16)
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %rx_dma_lock) #9
  %rx_running = getelementptr inbounds %struct.uart_8250_dma, ptr %3, i32 0, i32 20
  %5 = ptrtoint ptr %rx_running to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %rx_running, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool.not = icmp eq i8 %6, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %rx_dma_lock, i32 noundef %call3) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %rxchan = getelementptr inbounds %struct.uart_8250_dma, ptr %3, i32 0, i32 7
  %7 = ptrtoint ptr %rxchan to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %rxchan, align 4
  %rx_cookie = getelementptr inbounds %struct.uart_8250_dma, ptr %3, i32 0, i32 13
  %9 = ptrtoint ptr %rx_cookie to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %rx_cookie, align 4
  %11 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %8, align 4
  %device_tx_status.i = getelementptr inbounds %struct.dma_device, ptr %12, i32 0, i32 49
  %13 = ptrtoint ptr %device_tx_status.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %device_tx_status.i, align 4
  %call.i = call i32 %14(ptr noundef %8, i32 noundef %10, ptr noundef nonnull %state) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i)
  %cmp8 = icmp eq i32 %call.i, 1
  br i1 %cmp8, label %if.then10, label %if.end.if.end59_crit_edge

if.end.if.end59_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end59

if.then10:                                        ; preds = %if.end
  %15 = ptrtoint ptr %rxchan to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %rxchan, align 4
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %16, align 4
  %device_pause.i = getelementptr inbounds %struct.dma_device, ptr %18, i32 0, i32 45
  %19 = ptrtoint ptr %device_pause.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %device_pause.i, align 4
  %tobool.not.i = icmp eq ptr %20, null
  br i1 %tobool.not.i, label %if.then10.land.rhs_crit_edge, label %dmaengine_pause.exit

if.then10.land.rhs_crit_edge:                     ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.rhs

dmaengine_pause.exit:                             ; preds = %if.then10
  %call.i79 = call i32 %20(ptr noundef %16) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i79)
  %tobool13.not = icmp eq i32 %call.i79, 0
  br i1 %tobool13.not, label %dmaengine_pause.exit.if.end59_crit_edge, label %dmaengine_pause.exit.land.rhs_crit_edge

dmaengine_pause.exit.land.rhs_crit_edge:          ; preds = %dmaengine_pause.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.rhs

dmaengine_pause.exit.if.end59_crit_edge:          ; preds = %dmaengine_pause.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end59

land.rhs:                                         ; preds = %dmaengine_pause.exit.land.rhs_crit_edge, %if.then10.land.rhs_crit_edge
  %.b77 = load i1, ptr @omap_8250_rx_dma_flush.__already_done, align 1
  br i1 %.b77, label %land.rhs.if.then57_crit_edge, label %if.then22, !prof !136

land.rhs.if.then57_crit_edge:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then57

if.then22:                                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @omap_8250_rx_dma_flush.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 916, i32 noundef 9, ptr noundef null) #9
  br label %if.then57

if.then57:                                        ; preds = %if.then22, %land.rhs.if.then57_crit_edge
  %rx_dma_broken = getelementptr inbounds %struct.omap8250_priv, ptr %1, i32 0, i32 21
  %21 = ptrtoint ptr %rx_dma_broken to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 1, ptr %rx_dma_broken, align 4
  br label %if.end59

if.end59:                                         ; preds = %if.then57, %dmaengine_pause.exit.if.end59_crit_edge, %if.end.if.end59_crit_edge
  call fastcc void @__dma_rx_do_complete(ptr noundef %p)
  call void @_raw_spin_unlock_irqrestore(ptr noundef %rx_dma_lock, i32 noundef %call3) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end59, %if.then
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %state) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @__dma_rx_do_complete(ptr noundef %p) unnamed_addr #5 align 64 {
entry:
  %state5 = alloca %struct.dma_tx_state, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dma1 = getelementptr inbounds %struct.uart_8250_port, ptr %p, i32 0, i32 19
  %0 = ptrtoint ptr %dma1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dma1, align 4
  %state = getelementptr inbounds %struct.uart_port, ptr %p, i32 0, i32 30
  %2 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %state, align 4
  %private_data = getelementptr inbounds %struct.uart_port, ptr %p, i32 0, i32 59
  %4 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %private_data, align 4
  %rxchan4 = getelementptr inbounds %struct.uart_8250_dma, ptr %1, i32 0, i32 7
  %6 = ptrtoint ptr %rxchan4 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %rxchan4, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %state5) #9
  %8 = getelementptr inbounds %struct.dma_tx_state, ptr %state5, i32 0, i32 2
  %9 = getelementptr inbounds %struct.dma_tx_state, ptr %state5, i32 0, i32 3
  %rx_running = getelementptr inbounds %struct.uart_8250_dma, ptr %1, i32 0, i32 20
  %10 = call ptr @memset(ptr %state5, i32 255, i32 16)
  %11 = ptrtoint ptr %rx_running to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %rx_running, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool.not = icmp eq i8 %12, 0
  br i1 %tobool.not, label %entry.out_crit_edge, label %if.end

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.end:                                           ; preds = %entry
  %rx_cookie = getelementptr inbounds %struct.uart_8250_dma, ptr %1, i32 0, i32 13
  %13 = ptrtoint ptr %rx_cookie to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %rx_cookie, align 4
  %15 = ptrtoint ptr %rx_running to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 0, ptr %rx_running, align 2
  %habit = getelementptr inbounds %struct.omap8250_priv, ptr %5, i32 0, i32 1
  %16 = ptrtoint ptr %habit to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %habit, align 4
  %18 = and i8 %17, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %tobool7.not = icmp eq i8 %18, 0
  br i1 %tobool7.not, label %if.end.if.end10_crit_edge, label %if.then8

if.end.if.end10_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end10

if.then8:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %serial_in.i = getelementptr inbounds %struct.uart_port, ptr %p, i32 0, i32 3
  %19 = ptrtoint ptr %serial_in.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %serial_in.i, align 4
  %call.i = tail call i32 %20(ptr noundef %p, i32 noundef 27) #9
  %serial_out.i = getelementptr inbounds %struct.uart_port, ptr %p, i32 0, i32 4
  %21 = ptrtoint ptr %serial_out.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %serial_out.i, align 4
  tail call void %22(ptr noundef %p, i32 noundef 27, i32 noundef 4) #9
  br label %if.end10

if.end10:                                         ; preds = %if.then8, %if.end.if.end10_crit_edge
  %23 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %7, align 4
  %device_tx_status.i = getelementptr inbounds %struct.dma_device, ptr %24, i32 0, i32 49
  %25 = ptrtoint ptr %device_tx_status.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %device_tx_status.i, align 4
  %call.i70 = call i32 %26(ptr noundef %7, i32 noundef %14, ptr noundef nonnull %state5) #9
  %rx_size = getelementptr inbounds %struct.uart_8250_dma, ptr %1, i32 0, i32 16
  %27 = ptrtoint ptr %rx_size to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %rx_size, align 4
  %29 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %8, align 4
  %sub = sub i32 %28, %30
  %31 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %9, align 4
  %add = add i32 %sub, %32
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %28)
  %cmp = icmp ult i32 %add, %28
  br i1 %cmp, label %if.then14, label %if.end10.if.end37_crit_edge

if.end10.if.end37_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end37

if.then14:                                        ; preds = %if.end10
  %33 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %7, align 4
  %device_terminate_all.i = getelementptr inbounds %struct.dma_device, ptr %34, i32 0, i32 47
  %35 = ptrtoint ptr %device_terminate_all.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %device_terminate_all.i, align 4
  %tobool.not.i = icmp eq ptr %36, null
  br i1 %tobool.not.i, label %if.then14.dmaengine_terminate_async.exit_crit_edge, label %if.then.i

if.then14.dmaengine_terminate_async.exit_crit_edge: ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #11
  br label %dmaengine_terminate_async.exit

if.then.i:                                        ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #11
  %call.i71 = call i32 %36(ptr noundef %7) #9
  br label %dmaengine_terminate_async.exit

dmaengine_terminate_async.exit:                   ; preds = %if.then.i, %if.then14.dmaengine_terminate_async.exit_crit_edge
  %37 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %9, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %tobool17.not = icmp eq i32 %38, 0
  br i1 %tobool17.not, label %dmaengine_terminate_async.exit.if.end37_crit_edge, label %while.cond.preheader

dmaengine_terminate_async.exit.if.end37_crit_edge: ; preds = %dmaengine_terminate_async.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end37

while.cond.preheader:                             ; preds = %dmaengine_terminate_async.exit
  %39 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %7, align 4
  %device_tx_status.i7277 = getelementptr inbounds %struct.dma_device, ptr %40, i32 0, i32 49
  %41 = ptrtoint ptr %device_tx_status.i7277 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %device_tx_status.i7277, align 4
  %call.i7378 = call i32 %42(ptr noundef %7, i32 noundef %14, ptr noundef null) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i7378)
  %tobool20.not79 = icmp eq i32 %call.i7378, 0
  br i1 %tobool20.not79, label %while.cond.preheader.if.end37_crit_edge, label %while.cond.preheader.land.rhs_crit_edge

while.cond.preheader.land.rhs_crit_edge:          ; preds = %while.cond.preheader
  br label %land.rhs

while.cond.preheader.if.end37_crit_edge:          ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end37

land.rhs:                                         ; preds = %do.end.land.rhs_crit_edge, %while.cond.preheader.land.rhs_crit_edge
  %poll_count.080 = phi i32 [ %dec, %do.end.land.rhs_crit_edge ], [ 25, %while.cond.preheader.land.rhs_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %poll_count.080)
  %tobool21.not = icmp eq i32 %poll_count.080, 0
  br i1 %tobool21.not, label %do.end33, label %do.end

do.end:                                           ; preds = %land.rhs
  %dec = add nsw i32 %poll_count.080, -1
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !138
  call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #9, !srcloc !139
  %43 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %7, align 4
  %device_tx_status.i72 = getelementptr inbounds %struct.dma_device, ptr %44, i32 0, i32 49
  %45 = ptrtoint ptr %device_tx_status.i72 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %device_tx_status.i72, align 4
  %call.i73 = call i32 %46(ptr noundef %7, i32 noundef %14, ptr noundef null) #9
  %tobool20.not = icmp eq i32 %call.i73, 0
  br i1 %tobool20.not, label %do.end.if.end37_crit_edge, label %do.end.land.rhs_crit_edge

do.end.land.rhs_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.rhs

do.end.if.end37_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end37

do.end33:                                         ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #11
  %dev = getelementptr inbounds %struct.uart_port, ptr %p, i32 0, i32 45
  %47 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %dev, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %48, ptr noundef nonnull @.str.39) #12
  br label %if.end37

if.end37:                                         ; preds = %do.end33, %do.end.if.end37_crit_edge, %while.cond.preheader.if.end37_crit_edge, %dmaengine_terminate_async.exit.if.end37_crit_edge, %if.end10.if.end37_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add)
  %tobool38.not = icmp eq i32 %add, 0
  br i1 %tobool38.not, label %if.end37.out_crit_edge, label %if.end40

if.end37.out_crit_edge:                           ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.end40:                                         ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #11
  %rx_buf = getelementptr inbounds %struct.uart_8250_dma, ptr %1, i32 0, i32 15
  %49 = ptrtoint ptr %rx_buf to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %rx_buf, align 4
  %call.i74 = call i32 @tty_insert_flip_string_fixed_flag(ptr noundef %3, ptr noundef %50, i8 noundef zeroext 0, i32 noundef %add) #9
  %rx = getelementptr inbounds %struct.uart_port, ptr %p, i32 0, i32 31, i32 4
  %51 = ptrtoint ptr %rx to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %rx, align 4
  %add43 = add i32 %52, %call.i74
  store i32 %add43, ptr %rx, align 4
  %sub44 = sub i32 %add, %call.i74
  %buf_overrun = getelementptr inbounds %struct.uart_port, ptr %p, i32 0, i32 31, i32 10
  %53 = ptrtoint ptr %buf_overrun to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %buf_overrun, align 4
  %add47 = add i32 %sub44, %54
  store i32 %add47, ptr %buf_overrun, align 4
  br label %out

out:                                              ; preds = %if.end40, %if.end37.out_crit_edge, %entry.out_crit_edge
  call void @tty_flip_buffer_push(ptr noundef %3) #9
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %state5) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @tty_flip_buffer_push(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tty_insert_flip_string_fixed_flag(ptr noundef, ptr noundef, i8 noundef zeroext, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @serial8250_rx_chars(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @handle_sysrq(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__msecs_to_jiffies(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @flush_work(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @serial8250_release_dma(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @cpu_latency_qos_update_request(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_use_autosuspend(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_next_available_child(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @soc_device_match(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_string_helper(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @omap_8250_dma_tx_complete(ptr noundef %param) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dma1 = getelementptr inbounds %struct.uart_8250_port, ptr %param, i32 0, i32 19
  %0 = ptrtoint ptr %dma1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dma1, align 4
  %state = getelementptr inbounds %struct.uart_port, ptr %param, i32 0, i32 30
  %2 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %state, align 4
  %private_data = getelementptr inbounds %struct.uart_port, ptr %param, i32 0, i32 59
  %4 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %private_data, align 4
  %txchan = getelementptr inbounds %struct.uart_8250_dma, ptr %1, i32 0, i32 8
  %6 = ptrtoint ptr %txchan to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %txchan, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 4
  %dev = getelementptr inbounds %struct.dma_device, ptr %9, i32 0, i32 15
  %10 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev, align 4
  %tx_addr = getelementptr inbounds %struct.uart_8250_dma, ptr %1, i32 0, i32 12
  %12 = ptrtoint ptr %tx_addr to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %tx_addr, align 4
  tail call void @dma_sync_single_for_cpu(ptr noundef %11, i32 noundef %13, i32 noundef 4096, i32 noundef 1) #9
  %call6 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %param) #9
  %tx_running = getelementptr inbounds %struct.uart_8250_dma, ptr %1, i32 0, i32 18
  %14 = ptrtoint ptr %tx_running to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 0, ptr %tx_running, align 4
  %tx_size = getelementptr inbounds %struct.uart_8250_dma, ptr %1, i32 0, i32 17
  %15 = ptrtoint ptr %tx_size to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %tx_size, align 4
  %tail = getelementptr inbounds %struct.uart_state, ptr %3, i32 0, i32 2, i32 2
  %17 = ptrtoint ptr %tail to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %tail, align 4
  %add = add i32 %18, %16
  %and = and i32 %add, 4095
  store i32 %and, ptr %tail, align 4
  %19 = load i32, ptr %tx_size, align 4
  %tx = getelementptr inbounds %struct.uart_port, ptr %param, i32 0, i32 31, i32 5
  %20 = ptrtoint ptr %tx to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %tx, align 4
  %add12 = add i32 %21, %19
  store i32 %add12, ptr %tx, align 4
  %delayed_restore = getelementptr inbounds %struct.omap8250_priv, ptr %5, i32 0, i32 8
  %22 = ptrtoint ptr %delayed_restore to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %delayed_restore, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %tobool.not = icmp eq i8 %23, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %24 = ptrtoint ptr %delayed_restore to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 0, ptr %delayed_restore, align 1
  tail call fastcc void @omap8250_restore_regs(ptr noundef %param)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %head = getelementptr inbounds %struct.uart_state, ptr %3, i32 0, i32 2, i32 1
  %25 = ptrtoint ptr %head to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %head, align 4
  %27 = ptrtoint ptr %tail to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %tail, align 4
  %sub = sub i32 %26, %28
  %and15 = and i32 %sub, 3840
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and15)
  %cmp16 = icmp eq i32 %and15, 0
  br i1 %cmp16, label %if.then18, label %if.end.if.end20_crit_edge

if.end.if.end20_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end20

if.then18:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @uart_write_wakeup(ptr noundef %param) #9
  br label %if.end20

if.end20:                                         ; preds = %if.then18, %if.end.if.end20_crit_edge
  %29 = ptrtoint ptr %head to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %head, align 4
  %31 = ptrtoint ptr %tail to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %tail, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %30, i32 %32)
  %cmp23 = icmp eq i32 %30, %32
  br i1 %cmp23, label %if.end20.if.end37_crit_edge, label %land.lhs.true

if.end20.if.end37_crit_edge:                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end37

land.lhs.true:                                    ; preds = %if.end20
  %33 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %state, align 4
  %tty2.i = getelementptr inbounds %struct.tty_port, ptr %34, i32 0, i32 1
  %35 = ptrtoint ptr %tty2.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %tty2.i, align 4
  %tobool.not.i = icmp eq ptr %36, null
  br i1 %tobool.not.i, label %land.lhs.true.uart_tx_stopped.exit_crit_edge, label %land.lhs.true.i

land.lhs.true.uart_tx_stopped.exit_crit_edge:     ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %uart_tx_stopped.exit

land.lhs.true.i:                                  ; preds = %land.lhs.true
  %stopped.i = getelementptr inbounds %struct.tty_struct, ptr %36, i32 0, i32 19, i32 1
  %37 = ptrtoint ptr %stopped.i to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %stopped.i, align 4, !range !137
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %38)
  %tobool3.not.i = icmp eq i8 %38, 0
  br i1 %tobool3.not.i, label %land.lhs.true.i.uart_tx_stopped.exit_crit_edge, label %land.lhs.true.i.if.end37_crit_edge

land.lhs.true.i.if.end37_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end37

land.lhs.true.i.uart_tx_stopped.exit_crit_edge:   ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %uart_tx_stopped.exit

uart_tx_stopped.exit:                             ; preds = %land.lhs.true.i.uart_tx_stopped.exit_crit_edge, %land.lhs.true.uart_tx_stopped.exit_crit_edge
  %hw_stopped.i = getelementptr inbounds %struct.uart_port, ptr %param, i32 0, i32 35
  %39 = ptrtoint ptr %hw_stopped.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %hw_stopped.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %tobool4.not.i.not = icmp eq i32 %40, 0
  br i1 %tobool4.not.i.not, label %if.then28, label %uart_tx_stopped.exit.if.end37_crit_edge

uart_tx_stopped.exit.if.end37_crit_edge:          ; preds = %uart_tx_stopped.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end37

if.then28:                                        ; preds = %uart_tx_stopped.exit
  %call29 = tail call i32 @omap_8250_tx_dma(ptr noundef %param)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29)
  %tobool30.not.not = icmp eq i32 %call29, 0
  br i1 %tobool30.not.not, label %if.then28.if.end41_crit_edge, label %if.then28.if.then39_crit_edge

if.then28.if.then39_crit_edge:                    ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then39

if.then28.if.end41_crit_edge:                     ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end41

if.end37:                                         ; preds = %uart_tx_stopped.exit.if.end37_crit_edge, %land.lhs.true.i.if.end37_crit_edge, %if.end20.if.end37_crit_edge
  %capabilities = getelementptr inbounds %struct.uart_8250_port, ptr %param, i32 0, i32 3
  %41 = ptrtoint ptr %capabilities to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %capabilities, align 4
  %and33 = and i32 %42, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and33)
  %tobool34.not.not = icmp eq i32 %and33, 0
  br i1 %tobool34.not.not, label %if.end37.if.end41_crit_edge, label %if.end37.if.then39_crit_edge

if.end37.if.then39_crit_edge:                     ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then39

if.end37.if.end41_crit_edge:                      ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end41

if.then39:                                        ; preds = %if.end37.if.then39_crit_edge, %if.then28.if.then39_crit_edge
  %tx_err = getelementptr inbounds %struct.uart_8250_dma, ptr %1, i32 0, i32 19
  %43 = ptrtoint ptr %tx_err to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 1, ptr %tx_err, align 1
  %ier.i = getelementptr inbounds %struct.uart_8250_port, ptr %param, i32 0, i32 9
  %44 = ptrtoint ptr %ier.i to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %ier.i, align 2
  %46 = and i8 %45, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %46)
  %tobool.not.i66 = icmp eq i8 %46, 0
  br i1 %tobool.not.i66, label %if.end.i, label %if.then39.if.end41_crit_edge

if.then39.if.end41_crit_edge:                     ; preds = %if.then39
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end41

if.end.i:                                         ; preds = %if.then39
  call void @__sanitizer_cov_trace_pc() #11
  %or.i = or i8 %45, 2
  %47 = ptrtoint ptr %ier.i to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 %or.i, ptr %ier.i, align 2
  %conv5.i = zext i8 %or.i to i32
  %serial_out.i.i = getelementptr inbounds %struct.uart_port, ptr %param, i32 0, i32 4
  %48 = ptrtoint ptr %serial_out.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %serial_out.i.i, align 4
  tail call void %49(ptr noundef %param, i32 noundef 1, i32 noundef %conv5.i) #9
  br label %if.end41

if.end41:                                         ; preds = %if.end.i, %if.then39.if.end41_crit_edge, %if.end37.if.end41_crit_edge, %if.then28.if.end41_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %param, i32 noundef %call6) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_sync_single_for_device(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sg_init_table(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_sync_single_for_cpu(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @uart_write_wakeup(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @__dma_rx_complete(ptr noundef %param) #5 align 64 {
entry:
  %state = alloca %struct.dma_tx_state, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.uart_port, ptr %param, i32 0, i32 59
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %dma1 = getelementptr inbounds %struct.uart_8250_port, ptr %param, i32 0, i32 19
  %2 = ptrtoint ptr %dma1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dma1, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %state) #9
  %4 = call ptr @memset(ptr %state, i32 255, i32 16)
  %call4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %param) #9
  %rxchan = getelementptr inbounds %struct.uart_8250_dma, ptr %3, i32 0, i32 7
  %5 = ptrtoint ptr %rxchan to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %rxchan, align 4
  %rx_cookie = getelementptr inbounds %struct.uart_8250_dma, ptr %3, i32 0, i32 13
  %7 = ptrtoint ptr %rx_cookie to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %rx_cookie, align 4
  %9 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %6, align 4
  %device_tx_status.i = getelementptr inbounds %struct.dma_device, ptr %10, i32 0, i32 49
  %11 = ptrtoint ptr %device_tx_status.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %device_tx_status.i, align 4
  %call.i = call i32 %12(ptr noundef %6, i32 noundef %8, ptr noundef nonnull %state) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp8.not = icmp eq i32 %call.i, 0
  br i1 %cmp8.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call fastcc void @__dma_rx_do_complete(ptr noundef %param)
  %throttled = getelementptr inbounds %struct.omap8250_priv, ptr %1, i32 0, i32 22
  %13 = ptrtoint ptr %throttled to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %throttled, align 1, !range !137
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool.not = icmp eq i8 %14, 0
  br i1 %tobool.not, label %if.then12, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then12:                                        ; preds = %if.end
  %ier = getelementptr inbounds %struct.uart_8250_port, ptr %param, i32 0, i32 9
  %15 = ptrtoint ptr %ier to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %ier, align 2
  %17 = or i8 %16, 5
  store i8 %17, ptr %ier, align 2
  %conv16 = zext i8 %17 to i32
  %serial_out.i = getelementptr inbounds %struct.uart_port, ptr %param, i32 0, i32 4
  %18 = ptrtoint ptr %serial_out.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %serial_out.i, align 4
  call void %19(ptr noundef %param, i32 noundef 1, i32 noundef %conv16) #9
  %habit = getelementptr inbounds %struct.omap8250_priv, ptr %1, i32 0, i32 1
  %20 = ptrtoint ptr %habit to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %habit, align 4
  %22 = and i8 %21, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %tobool18.not = icmp eq i8 %22, 0
  br i1 %tobool18.not, label %if.then19, label %if.then12.cleanup_crit_edge

if.then12.cleanup_crit_edge:                      ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then19:                                        ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #11
  %call20 = call i32 @omap_8250_rx_dma(ptr noundef %param)
  br label %cleanup

cleanup:                                          ; preds = %if.then19, %if.then12.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  call void @_raw_spin_unlock_irqrestore(ptr noundef %param, i32 noundef %call4) #9
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %state) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get_mono_fast_ns() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_suspend(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_idle(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @serial8250_unregister_port(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @cpu_latency_qos_remove_request(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @omap8250_prepare(ptr nocapture noundef readonly %dev) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %is_suspending = getelementptr inbounds %struct.omap8250_priv, ptr %1, i32 0, i32 12
  %2 = ptrtoint ptr %is_suspending to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 1, ptr %is_suspending, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @omap8250_complete(ptr nocapture noundef readonly %dev) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %is_suspending = getelementptr inbounds %struct.omap8250_priv, ptr %1, i32 0, i32 12
  %2 = ptrtoint ptr %is_suspending to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 0, ptr %is_suspending, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @omap8250_suspend(ptr noundef %dev) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %1, align 4
  %call1 = tail call ptr @serial8250_get_port(i32 noundef %3) #9
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %1, align 4
  tail call void @serial8250_suspend_port(i32 noundef %5) #9
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %dev, i32 noundef 4) #9
  %can_wakeup.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 1
  %6 = ptrtoint ptr %can_wakeup.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %bf.load.i = load i16, ptr %can_wakeup.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %bf.load.i)
  %tobool.not.i = icmp sgt i16 %bf.load.i, -1
  br i1 %tobool.not.i, label %entry.if.then_crit_edge, label %device_may_wakeup.exit

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

device_may_wakeup.exit:                           ; preds = %entry
  %wakeup.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 6
  %7 = ptrtoint ptr %wakeup.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %wakeup.i, align 8
  %tobool2.i.not = icmp eq ptr %8, null
  br i1 %tobool2.i.not, label %device_may_wakeup.exit.if.then_crit_edge, label %device_may_wakeup.exit.if.end_crit_edge

device_may_wakeup.exit.if.end_crit_edge:          ; preds = %device_may_wakeup.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

device_may_wakeup.exit.if.then_crit_edge:         ; preds = %device_may_wakeup.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

if.then:                                          ; preds = %device_may_wakeup.exit.if.then_crit_edge, %entry.if.then_crit_edge
  %wer = getelementptr inbounds %struct.omap8250_priv, ptr %1, i32 0, i32 5
  %9 = ptrtoint ptr %wer to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 0, ptr %wer, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %device_may_wakeup.exit.if.end_crit_edge
  %wer5 = getelementptr inbounds %struct.omap8250_priv, ptr %1, i32 0, i32 5
  %10 = ptrtoint ptr %wer5 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %wer5, align 4
  %conv = zext i8 %11 to i32
  %serial_out.i = getelementptr inbounds %struct.uart_port, ptr %call1, i32 0, i32 4
  %12 = ptrtoint ptr %serial_out.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %serial_out.i, align 4
  tail call void %13(ptr noundef %call1, i32 noundef 23, i32 noundef %conv) #9
  %call.i16 = tail call i64 @ktime_get_mono_fast_ns() #9
  %last_busy.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 22
  %14 = ptrtoint ptr %last_busy.i to i32
  call void @__asan_store8_noabort(i32 %14)
  store volatile i64 %call.i16, ptr %last_busy.i, align 8
  %call.i17 = tail call i32 @__pm_runtime_suspend(ptr noundef %dev, i32 noundef 13) #9
  %qos_work = getelementptr inbounds %struct.omap8250_priv, ptr %1, i32 0, i32 18
  %call7 = tail call zeroext i1 @flush_work(ptr noundef %qos_work) #9
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @omap8250_resume(ptr nocapture noundef readonly %dev) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %1, align 4
  tail call void @serial8250_resume_port(i32 noundef %3) #9
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @omap8250_runtime_suspend(ptr noundef %dev) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup31_crit_edge, label %if.end

entry.cleanup31_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup31

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %1, align 4
  %call1 = tail call ptr @serial8250_get_port(i32 noundef %3) #9
  %is_suspending = getelementptr inbounds %struct.omap8250_priv, ptr %1, i32 0, i32 12
  %4 = ptrtoint ptr %is_suspending to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %is_suspending, align 4, !range !137
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool2.not = icmp eq i8 %5, 0
  br i1 %tobool2.not, label %if.end.if.end14_crit_edge, label %land.lhs.true

if.end.if.end14_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end14

land.lhs.true:                                    ; preds = %if.end
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @console_suspend_enabled to i32))
  %6 = load i8, ptr @console_suspend_enabled, align 1, !range !137
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool3.not = icmp eq i8 %6, 0
  br i1 %tobool3.not, label %if.then4, label %land.lhs.true.if.end14_crit_edge

land.lhs.true.if.end14_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end14

if.then4:                                         ; preds = %land.lhs.true
  %cons = getelementptr inbounds %struct.uart_port, ptr %call1, i32 0, i32 32
  %7 = ptrtoint ptr %cons to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %cons, align 4
  %tobool5.not = icmp eq ptr %8, null
  br i1 %tobool5.not, label %if.then4.if.end14_crit_edge, label %land.lhs.true6

if.then4.if.end14_crit_edge:                      ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end14

land.lhs.true6:                                   ; preds = %if.then4
  %index = getelementptr inbounds %struct.console, ptr %8, i32 0, i32 9
  %9 = ptrtoint ptr %index to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %index, align 2
  %conv = sext i16 %10 to i32
  %line10 = getelementptr inbounds %struct.uart_port, ptr %call1, i32 0, i32 41
  %11 = ptrtoint ptr %line10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %line10, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %12, i32 %conv)
  %cmp = icmp eq i32 %12, %conv
  br i1 %cmp, label %land.lhs.true6.cleanup31_crit_edge, label %land.lhs.true6.if.end14_crit_edge

land.lhs.true6.if.end14_crit_edge:                ; preds = %land.lhs.true6
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end14

land.lhs.true6.cleanup31_crit_edge:               ; preds = %land.lhs.true6
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup31

if.end14:                                         ; preds = %land.lhs.true6.if.end14_crit_edge, %if.then4.if.end14_crit_edge, %land.lhs.true.if.end14_crit_edge, %if.end.if.end14_crit_edge
  %habit = getelementptr inbounds %struct.omap8250_priv, ptr %1, i32 0, i32 1
  %13 = ptrtoint ptr %habit to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %habit, align 4
  %15 = and i8 %14, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool16.not = icmp eq i8 %15, 0
  br i1 %tobool16.not, label %if.end14.if.end23_crit_edge, label %if.then17

if.end14.if.end23_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end23

if.then17:                                        ; preds = %if.end14
  %16 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %driver_data.i, align 4
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %17, align 4
  %call1.i = tail call ptr @serial8250_get_port(i32 noundef %19) #9
  %serial_out.i.i = getelementptr inbounds %struct.uart_port, ptr %call1.i, i32 0, i32 4
  %20 = ptrtoint ptr %serial_out.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %serial_out.i.i, align 4
  tail call void %21(ptr noundef %call1.i, i32 noundef 16, i32 noundef 2) #9
  %22 = ptrtoint ptr %serial_out.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %serial_out.i.i, align 4
  tail call void %23(ptr noundef %call1.i, i32 noundef 16, i32 noundef 3) #9
  %serial_in.i.i = getelementptr inbounds %struct.uart_port, ptr %call1.i, i32 0, i32 3
  %24 = ptrtoint ptr %serial_in.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %serial_in.i.i, align 4
  %call.i.i = tail call i32 %25(ptr noundef %call1.i, i32 noundef 21) #9
  %or.i = or i32 %call.i.i, 2
  %26 = ptrtoint ptr %serial_out.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %serial_out.i.i, align 4
  tail call void %27(ptr noundef %call1.i, i32 noundef 21, i32 noundef %or.i) #9
  br label %do.body.i

do.body.i:                                        ; preds = %do.body.i.do.body.i_crit_edge, %if.then17
  %timeout.0.i = phi i32 [ 100, %if.then17 ], [ %dec.i, %do.body.i.do.body.i_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %28 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %28(i32 noundef 214748) #9
  %29 = ptrtoint ptr %serial_in.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %serial_in.i.i, align 4
  %call.i23.i = tail call i32 %30(ptr noundef %call1.i, i32 noundef 22) #9
  %dec.i = add nsw i32 %timeout.0.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i)
  %tobool.not.i = icmp eq i32 %dec.i, 0
  %tobool.not.not.i = xor i1 %tobool.not.i, true
  %and.i = and i32 %call.i23.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool4.not.i = icmp eq i32 %and.i, 0
  %or.cond.i = select i1 %tobool.not.not.i, i1 %tobool4.not.i, i1 false
  br i1 %or.cond.i, label %do.body.i.do.body.i_crit_edge, label %do.end.i

do.body.i.do.body.i_crit_edge:                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body.i

do.end.i:                                         ; preds = %do.body.i
  br i1 %tobool.not.i, label %omap8250_soft_reset.exit, label %if.end21

omap8250_soft_reset.exit:                         ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.47) #12
  br label %cleanup31

if.end21:                                         ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @omap8250_update_mdr1(ptr noundef %call1, ptr noundef nonnull %1)
  %wer = getelementptr inbounds %struct.omap8250_priv, ptr %1, i32 0, i32 5
  %31 = ptrtoint ptr %wer to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %wer, align 4
  %conv22 = zext i8 %32 to i32
  %serial_out.i = getelementptr inbounds %struct.uart_port, ptr %call1, i32 0, i32 4
  %33 = ptrtoint ptr %serial_out.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %serial_out.i, align 4
  tail call void %34(ptr noundef %call1, i32 noundef 23, i32 noundef %conv22) #9
  br label %if.end23

if.end23:                                         ; preds = %if.end21, %if.end14.if.end23_crit_edge
  %dma = getelementptr inbounds %struct.uart_8250_port, ptr %call1, i32 0, i32 19
  %35 = ptrtoint ptr %dma to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %dma, align 4
  %tobool24.not = icmp eq ptr %36, null
  br i1 %tobool24.not, label %if.end23.if.end29_crit_edge, label %land.lhs.true25

if.end23.if.end29_crit_edge:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end29

land.lhs.true25:                                  ; preds = %if.end23
  %rxchan = getelementptr inbounds %struct.uart_8250_dma, ptr %36, i32 0, i32 7
  %37 = ptrtoint ptr %rxchan to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %rxchan, align 4
  %tobool27.not = icmp eq ptr %38, null
  br i1 %tobool27.not, label %land.lhs.true25.if.end29_crit_edge, label %if.then28

land.lhs.true25.if.end29_crit_edge:               ; preds = %land.lhs.true25
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end29

if.then28:                                        ; preds = %land.lhs.true25
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @omap_8250_rx_dma_flush(ptr noundef %call1)
  br label %if.end29

if.end29:                                         ; preds = %if.then28, %land.lhs.true25.if.end29_crit_edge, %if.end23.if.end29_crit_edge
  %latency = getelementptr inbounds %struct.omap8250_priv, ptr %1, i32 0, i32 15
  %39 = ptrtoint ptr %latency to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 2000000000, ptr %latency, align 4
  %qos_work = getelementptr inbounds %struct.omap8250_priv, ptr %1, i32 0, i32 18
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %40 = load ptr, ptr @system_wq, align 4
  %call.i.i50 = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %40, ptr noundef %qos_work) #9
  br label %cleanup31

cleanup31:                                        ; preds = %if.end29, %omap8250_soft_reset.exit, %land.lhs.true6.cleanup31_crit_edge, %entry.cleanup31_crit_edge
  %retval.1 = phi i32 [ 0, %if.end29 ], [ 0, %entry.cleanup31_crit_edge ], [ -16, %land.lhs.true6.cleanup31_crit_edge ], [ -110, %omap8250_soft_reset.exit ]
  ret i32 %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @omap8250_runtime_resume(ptr nocapture noundef readonly %dev) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %1, align 4
  %call1 = tail call ptr @serial8250_get_port(i32 noundef %3) #9
  %serial_in.i.i = getelementptr inbounds %struct.uart_port, ptr %call1, i32 0, i32 3
  %4 = ptrtoint ptr %serial_in.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %serial_in.i.i, align 4
  %call.i.i = tail call i32 %5(ptr noundef %call1, i32 noundef 16) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.not = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.not, label %if.then4, label %if.end.if.end5_crit_edge

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end5

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @omap8250_restore_regs(ptr noundef %call1)
  br label %if.end5

if.end5:                                          ; preds = %if.then4, %if.end.if.end5_crit_edge
  %dma = getelementptr inbounds %struct.uart_8250_port, ptr %call1, i32 0, i32 19
  %6 = ptrtoint ptr %dma to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dma, align 4
  %tobool6.not = icmp eq ptr %7, null
  br i1 %tobool6.not, label %if.end5.if.end13_crit_edge, label %land.lhs.true

if.end5.if.end13_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end13

land.lhs.true:                                    ; preds = %if.end5
  %rxchan = getelementptr inbounds %struct.uart_8250_dma, ptr %7, i32 0, i32 7
  %8 = ptrtoint ptr %rxchan to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %rxchan, align 4
  %tobool8.not = icmp eq ptr %9, null
  br i1 %tobool8.not, label %land.lhs.true.if.end13_crit_edge, label %land.lhs.true9

land.lhs.true.if.end13_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end13

land.lhs.true9:                                   ; preds = %land.lhs.true
  %habit = getelementptr inbounds %struct.omap8250_priv, ptr %1, i32 0, i32 1
  %10 = ptrtoint ptr %habit to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %habit, align 4
  %12 = and i8 %11, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool10.not = icmp eq i8 %12, 0
  br i1 %tobool10.not, label %if.then11, label %land.lhs.true9.if.end13_crit_edge

land.lhs.true9.if.end13_crit_edge:                ; preds = %land.lhs.true9
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end13

if.then11:                                        ; preds = %land.lhs.true9
  call void @__sanitizer_cov_trace_pc() #11
  %call12 = tail call i32 @omap_8250_rx_dma(ptr noundef %call1)
  br label %if.end13

if.end13:                                         ; preds = %if.then11, %land.lhs.true9.if.end13_crit_edge, %land.lhs.true.if.end13_crit_edge, %if.end5.if.end13_crit_edge
  %calc_latency = getelementptr inbounds %struct.omap8250_priv, ptr %1, i32 0, i32 16
  %13 = ptrtoint ptr %calc_latency to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %calc_latency, align 4
  %latency = getelementptr inbounds %struct.omap8250_priv, ptr %1, i32 0, i32 15
  %15 = ptrtoint ptr %latency to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %latency, align 4
  %qos_work = getelementptr inbounds %struct.omap8250_priv, ptr %1, i32 0, i32 18
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %16 = load ptr, ptr @system_wq, align 4
  %call.i.i25 = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %16, ptr noundef %qos_work) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end13, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @serial8250_get_port(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @serial8250_suspend_port(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @serial8250_resume_port(i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.abs.i32(i32, i1 immarg) #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

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

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 61)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 61)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !5, !7, !9, !11, !12, !14, !16, !18, !20, !21, !22, !23, !24, !26, !27, !28, !30, !31, !32, !34, !36, !38, !39, !40, !41, !42, !43, !45, !47, !48, !49, !51, !53, !55, !56, !57, !58, !60, !61, !63, !64, !66, !68, !69, !70, !72, !73, !74, !75, !76, !78, !79, !80, !81, !82, !83, !85, !87, !88, !89, !90, !92, !94, !96, !98, !100, !101, !102, !103, !105, !106, !108, !110, !112, !114, !116, !118, !120, !122, !123, !124}
!llvm.module.flags = !{!125, !126, !127, !128, !129, !130, !131, !132}
!llvm.ident = !{!133}

!0 = !{ptr @__initcall__kmod_8250_omap__237_1695_omap8250_console_fixupcon, !1, !"__initcall__kmod_8250_omap__237_1695_omap8250_console_fixupcon", i1 false, i1 false}
!1 = !{!"../drivers/tty/serial/8250/8250_omap.c", i32 1695, i32 1}
!2 = !{ptr @__initcall__kmod_8250_omap__238_1715_omap8250_platform_driver_init6, !3, !"__initcall__kmod_8250_omap__238_1715_omap8250_platform_driver_init6", i1 false, i1 false}
!3 = !{!"../drivers/tty/serial/8250/8250_omap.c", i32 1715, i32 1}
!4 = !{ptr @__exitcall_omap8250_platform_driver_exit, !3, !"__exitcall_omap8250_platform_driver_exit", i1 false, i1 false}
!5 = !{ptr @__UNIQUE_ID_author239, !6, !"__UNIQUE_ID_author239", i1 false, i1 false}
!6 = !{!"../drivers/tty/serial/8250/8250_omap.c", i32 1717, i32 1}
!7 = !{ptr @__UNIQUE_ID_description240, !8, !"__UNIQUE_ID_description240", i1 false, i1 false}
!8 = !{!"../drivers/tty/serial/8250/8250_omap.c", i32 1718, i32 1}
!9 = !{ptr @__UNIQUE_ID_file241, !10, !"__UNIQUE_ID_file241", i1 false, i1 false}
!10 = !{!"../drivers/tty/serial/8250/8250_omap.c", i32 1719, i32 1}
!11 = !{ptr @__UNIQUE_ID_license242, !10, !"__UNIQUE_ID_license242", i1 false, i1 false}
!12 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/tty/serial/8250/8250_omap.c", i32 1665, i32 32}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/tty/serial/8250/8250_omap.c", i32 1669, i32 39}
!16 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/tty/serial/8250/8250_omap.c", i32 1688, i32 24}
!18 = !{ptr @.str.3, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/tty/serial/8250/8250_omap.c", i32 1689, i32 2}
!20 = !{ptr @.str.4, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.5, !19, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @omap8250_console_fixup._entry, !19, !"_entry", i1 false, i1 false}
!23 = !{ptr @omap8250_console_fixup._entry_ptr, !19, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.7, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/tty/serial/8250/8250_omap.c", i32 1691, i32 2}
!26 = !{ptr @omap8250_console_fixup._entry.6, !25, !"_entry", i1 false, i1 false}
!27 = !{ptr @omap8250_console_fixup._entry_ptr.8, !25, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.10, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/tty/serial/8250/8250_omap.c", i32 1692, i32 2}
!30 = !{ptr @omap8250_console_fixup._entry.9, !29, !"_entry", i1 false, i1 false}
!31 = !{ptr @omap8250_console_fixup._entry_ptr.11, !29, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.12, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/tty/serial/8250/8250_omap.c", i32 1708, i32 12}
!34 = !{ptr @omap8250_platform_driver, !35, !"omap8250_platform_driver", i1 false, i1 false}
!35 = !{!"../drivers/tty/serial/8250/8250_omap.c", i32 1706, i32 31}
!36 = !{ptr @.str.13, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/tty/serial/8250/8250_omap.c", i32 1299, i32 3}
!38 = !{ptr @.str.14, !37, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @.str.15, !37, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @.str.16, !37, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @omap8250_probe._entry, !37, !"_entry", i1 false, i1 false}
!42 = !{ptr @omap8250_probe._entry_ptr, !37, !"_entry_ptr", i1 false, i1 false}
!43 = !{ptr @.str.17, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/tty/serial/8250/8250_omap.c", i32 1356, i32 28}
!45 = !{ptr @.str.19, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/tty/serial/8250/8250_omap.c", i32 1358, i32 3}
!47 = !{ptr @omap8250_probe._entry.18, !46, !"_entry", i1 false, i1 false}
!48 = !{ptr @omap8250_probe._entry_ptr.20, !46, !"_entry_ptr", i1 false, i1 false}
!49 = !{ptr @.str.21, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/tty/serial/8250/8250_omap.c", i32 1363, i32 31}
!51 = !{ptr @.str.22, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/tty/serial/8250/8250_omap.c", i32 1375, i32 31}
!53 = !{ptr @.str.24, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/tty/serial/8250/8250_omap.c", i32 1387, i32 3}
!55 = !{ptr @.str.25, !54, !"<string literal>", i1 false, i1 false}
!56 = !{ptr @omap8250_probe._entry.23, !54, !"_entry", i1 false, i1 false}
!57 = !{ptr @omap8250_probe._entry_ptr.26, !54, !"_entry_ptr", i1 false, i1 false}
!58 = !{ptr @omap8250_probe.__key, !59, !"__key", i1 false, i1 false}
!59 = !{!"../drivers/tty/serial/8250/8250_omap.c", i32 1395, i32 2}
!60 = !{ptr @.str.27, !59, !"<string literal>", i1 false, i1 false}
!61 = !{ptr @omap8250_probe.__key.28, !62, !"__key", i1 false, i1 false}
!62 = !{!"../drivers/tty/serial/8250/8250_omap.c", i32 1397, i32 2}
!63 = !{ptr @.str.29, !62, !"<string literal>", i1 false, i1 false}
!64 = !{ptr @.str.30, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/tty/serial/8250/8250_omap.c", i32 1430, i32 38}
!66 = !{ptr @.str.32, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/tty/serial/8250/8250_omap.c", i32 1456, i32 3}
!68 = !{ptr @omap8250_probe._entry.31, !67, !"_entry", i1 false, i1 false}
!69 = !{ptr @omap8250_probe._entry_ptr.33, !67, !"_entry_ptr", i1 false, i1 false}
!70 = !{ptr @.str.34, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/tty/serial/8250/8250_omap.c", i32 211, i32 4}
!72 = !{ptr @.str.35, !71, !"<string literal>", i1 false, i1 false}
!73 = !{ptr @.str.36, !71, !"<string literal>", i1 false, i1 false}
!74 = !{ptr @omap_8250_mdr1_errataset._entry, !71, !"_entry", i1 false, i1 false}
!75 = !{ptr @omap_8250_mdr1_errataset._entry_ptr, !71, !"_entry_ptr", i1 false, i1 false}
!76 = !{ptr @.str.37, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/tty/serial/8250/8250_omap.c", i32 698, i32 4}
!78 = !{ptr @omap_8250_startup._rs, !77, !"_rs", i1 false, i1 false}
!79 = !{ptr @__func__.omap_8250_startup, !77, !"<string literal>", i1 false, i1 false}
!80 = !{ptr @.str.38, !77, !"<string literal>", i1 false, i1 false}
!81 = !{ptr @omap_8250_startup._entry, !77, !"_entry", i1 false, i1 false}
!82 = !{ptr @omap_8250_startup._entry_ptr, !77, !"_entry_ptr", i1 false, i1 false}
!83 = distinct !{null, !84, !"__already_done", i1 false, i1 false}
!84 = !{!"../drivers/tty/serial/8250/8250_omap.c", i32 916, i32 7}
!85 = !{ptr @.str.39, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/tty/serial/8250/8250_omap.c", i32 853, i32 5}
!87 = !{ptr @.str.40, !86, !"<string literal>", i1 false, i1 false}
!88 = !{ptr @__dma_rx_do_complete._entry, !86, !"_entry", i1 false, i1 false}
!89 = !{ptr @__dma_rx_do_complete._entry_ptr, !86, !"_entry_ptr", i1 false, i1 false}
!90 = !{ptr @.str.41, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/tty/serial/8250/8250_omap.c", i32 542, i32 15}
!92 = !{ptr @.str.42, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/tty/serial/8250/8250_omap.c", i32 543, i32 15}
!94 = !{ptr @.str.43, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/tty/serial/8250/8250_omap.c", i32 543, i32 36}
!96 = !{ptr @omap_serial_fill_features_erratas.k3_soc_devices, !97, !"k3_soc_devices", i1 false, i1 false}
!97 = !{!"../drivers/tty/serial/8250/8250_omap.c", i32 541, i32 43}
!98 = !{ptr @.str.44, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/tty/serial/8250/8250_omap.c", i32 569, i32 3}
!100 = !{ptr @.str.45, !99, !"<string literal>", i1 false, i1 false}
!101 = !{ptr @omap_serial_fill_features_erratas._entry, !99, !"_entry", i1 false, i1 false}
!102 = !{ptr @omap_serial_fill_features_erratas._entry_ptr, !99, !"_entry_ptr", i1 false, i1 false}
!103 = distinct !{null, !104, !"__already_done", i1 false, i1 false}
!104 = !{!"../drivers/tty/serial/8250/8250_omap.c", i32 1239, i32 2}
!105 = !{ptr @.str.46, !104, !"<string literal>", i1 false, i1 false}
!106 = !{ptr @omap8250_dt_ids, !107, !"omap8250_dt_ids", i1 false, i1 false}
!107 = !{!"../drivers/tty/serial/8250/8250_omap.c", i32 1271, i32 34}
!108 = !{ptr @am654_platdata, !109, !"am654_platdata", i1 false, i1 false}
!109 = !{!"../drivers/tty/serial/8250/8250_omap.c", i32 1255, i32 33}
!110 = !{ptr @am654_dma, !111, !"am654_dma", i1 false, i1 false}
!111 = !{!"../drivers/tty/serial/8250/8250_omap.c", i32 1243, i32 35}
!112 = !{ptr @omap4_platdata, !113, !"omap4_platdata", i1 false, i1 false}
!113 = !{!"../drivers/tty/serial/8250/8250_omap.c", i32 1266, i32 33}
!114 = !{ptr @am33xx_dma, !115, !"am33xx_dma", i1 false, i1 false}
!115 = !{!"../drivers/tty/serial/8250/8250_omap.c", i32 1249, i32 35}
!116 = !{ptr @am33xx_platdata, !117, !"am33xx_platdata", i1 false, i1 false}
!117 = !{!"../drivers/tty/serial/8250/8250_omap.c", i32 1261, i32 33}
!118 = !{ptr @omap8250_dev_pm_ops, !119, !"omap8250_dev_pm_ops", i1 false, i1 false}
!119 = !{!"../drivers/tty/serial/8250/8250_omap.c", i32 1698, i32 32}
!120 = !{ptr @.str.47, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../drivers/tty/serial/8250/8250_omap.c", i32 1585, i32 3}
!122 = !{ptr @.str.48, !121, !"<string literal>", i1 false, i1 false}
!123 = !{ptr @omap8250_soft_reset._entry, !121, !"_entry", i1 false, i1 false}
!124 = !{ptr @omap8250_soft_reset._entry_ptr, !121, !"_entry_ptr", i1 false, i1 false}
!125 = !{i32 1, !"wchar_size", i32 2}
!126 = !{i32 1, !"min_enum_size", i32 4}
!127 = !{i32 8, !"branch-target-enforcement", i32 0}
!128 = !{i32 8, !"sign-return-address", i32 0}
!129 = !{i32 8, !"sign-return-address-all", i32 0}
!130 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!131 = !{i32 7, !"uwtable", i32 1}
!132 = !{i32 7, !"frame-pointer", i32 2}
!133 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!134 = !{i64 4846207}
!135 = !{i64 2154893929}
!136 = !{!"branch_weights", i32 2000, i32 1}
!137 = !{i8 0, i8 2}
!138 = !{i64 2154918816}
!139 = !{i64 2154918658}
