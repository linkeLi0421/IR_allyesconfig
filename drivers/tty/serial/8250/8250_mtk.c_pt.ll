; ModuleID = '/llk/IR_all_yes/drivers/tty/serial/8250/8250_mtk.c_pt.bc'
source_filename = "../drivers/tty/serial/8250/8250_mtk.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.earlycon_id = type { [15 x i8], i8, [128 x i8], ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.earlycon_device = type { ptr, %struct.uart_port, [16 x i8], i32 }
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
%struct.uart_8250_port = type { %struct.uart_port, %struct.timer_list, %struct.list_head, i32, i16, i8, i32, i8, i8, i8, i8, i8, i8, i32, i8, i8, ptr, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.delayed_work, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.list_head = type { ptr, ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
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
%struct.mtk8250_data = type { i32, i32, i32, ptr, ptr, ptr, i32, i32 }
%struct.uart_8250_dma = type { ptr, ptr, ptr, ptr, ptr, %struct.dma_slave_config, %struct.dma_slave_config, ptr, ptr, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i8, i8, i8 }
%struct.dma_slave_config = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, ptr, i32 }
%struct.console = type { [16 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, i16, i16, i32, i32, i32, ptr, ptr }
%struct.uart_state = type { %struct.tty_port, i32, %struct.circ_buf, %struct.atomic_t, %struct.wait_queue_head, ptr }
%struct.tty_port = type { %struct.tty_bufhead, ptr, ptr, ptr, ptr, %struct.spinlock, i32, i32, %struct.wait_queue_head, %struct.wait_queue_head, i32, i32, i8, %struct.mutex, %struct.mutex, ptr, i32, i32, i32, %struct.kref, ptr }
%struct.tty_bufhead = type { ptr, %struct.work_struct, %struct.mutex, %struct.atomic_t, %struct.tty_buffer, %struct.llist_head, %struct.atomic_t, i32, ptr }
%struct.tty_buffer = type { %union.anon.37, i32, i32, i32, i32, i32, [0 x i32] }
%union.anon.37 = type { ptr }
%struct.llist_head = type { ptr }
%struct.circ_buf = type { ptr, i32, i32 }
%struct.scatterlist = type { i32, i32, i32, i32, i32 }
%struct.dma_device = type { %struct.kref, i32, i32, %struct.list_head, %struct.list_head, %struct.dma_filter, %struct.dma_cap_mask_t, i32, i16, i16, i32, i32, i32, i32, i32, ptr, ptr, %struct.ida, %struct.mutex, i32, i32, i32, i32, i32, i32, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dma_filter = type { ptr, i32, ptr }
%struct.dma_cap_mask_t = type { [1 x i32] }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.dma_async_tx_descriptor = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, %struct.spinlock }
%struct.ktermios = type { i32, i32, i32, i32, i8, [19 x i8], i32, i32 }
%struct.tty_struct = type { i32, %struct.kref, ptr, ptr, ptr, i32, %struct.ld_semaphore, ptr, %struct.mutex, %struct.mutex, %struct.mutex, %struct.rw_semaphore, %struct.mutex, %struct.ktermios, %struct.ktermios, [64 x i8], i32, i32, %struct.winsize, %struct.anon.38, %struct.anon.39, i32, i32, i32, ptr, ptr, %struct.wait_queue_head, %struct.wait_queue_head, %struct.work_struct, ptr, ptr, %struct.spinlock, %struct.list_head, i32, ptr, i32, %struct.work_struct, ptr }
%struct.ld_semaphore = type { %struct.atomic_t, %struct.raw_spinlock, i32, %struct.list_head, %struct.list_head, %struct.lockdep_map }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.winsize = type { i16, i16, i16, i16 }
%struct.anon.38 = type { %struct.spinlock, i8, i8, [0 x i32] }
%struct.anon.39 = type { %struct.spinlock, ptr, ptr, i8, i8, [0 x i32] }
%struct.dma_tx_state = type { i32, i32, i32, i32 }

@__initcall__kmod_8250_mtk__239_674_mtk8250_platform_driver_init6 = internal global ptr @mtk8250_platform_driver_init, section ".initcall6.init", align 4
@mtk8250_platform_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @mtk8250_probe, ptr @mtk8250_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @mtk8250_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @mtk8250_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_mtk8250_platform_driver_exit = internal global ptr @mtk8250_platform_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID___earlycon_mtk8250240 = internal constant %struct.earlycon_id { [15 x i8] c"mtk8250\00\00\00\00\00\00\00\00", i8 0, [128 x i8] c"mediatek,mt6577-uart\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @early_mtk8250_setup }, section "__earlycon_table", align 4
@__UNIQUE_ID_author241 = internal constant [33 x i8] c"8250_mtk.author=Matthias Brugger\00", section ".modinfo", align 1
@__UNIQUE_ID_file242 = internal constant [47 x i8] c"8250_mtk.file=drivers/tty/serial/8250/8250_mtk\00", section ".modinfo", align 1
@__UNIQUE_ID_license243 = internal constant [21 x i8] c"8250_mtk.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_description244 = internal constant [54 x i8] c"8250_mtk.description=Mediatek 8250 serial port driver\00", section ".modinfo", align 1
@.str = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"mt6577-uart\00", [20 x i8] zeroinitializer }, align 32
@mtk8250_of_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"mediatek,mt6577-uart\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@mtk8250_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @mtk8250_suspend, ptr @mtk8250_resume, ptr @mtk8250_suspend, ptr @mtk8250_resume, ptr @mtk8250_suspend, ptr @mtk8250_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @mtk8250_runtime_suspend, ptr @mtk8250_runtime_resume, ptr null }, [36 x i8] zeroinitializer }, align 32
@mtk8250_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 530, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"no registers defined\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"mtk8250_probe\00", [18 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"drivers/tty/serial/8250/8250_mtk.c\00", [61 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@mtk8250_probe._entry_ptr = internal global ptr @mtk8250_probe._entry, section ".printk_index", align 4
@mtk8250_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.6 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"&uart.port.lock\00", [16 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"baud\00", [27 x i8] zeroinitializer }, align 32
@mtk8250_probe_of._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.9, ptr @.str.3, i32 487, ptr @.str.10, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Can't get uart clock\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"mtk8250_probe_of\00", [47 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@mtk8250_probe_of._entry_ptr = internal global ptr @mtk8250_probe_of._entry, section ".printk_index", align 4
@.str.11 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"bus\00", [28 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"dma-names\00", [22 x i8] zeroinitializer }, align 32
@mtk8250_runtime_suspend.__UNIQUE_ID_ddebug237 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.13, ptr @.str.14, ptr @.str.3, ptr @.str.15, i8 0, i8 105, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.13 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"8250_mtk\00", [23 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"mtk8250_runtime_suspend\00", [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"%s clock count is 0\0A\00", [43 x i8] zeroinitializer }, align 32
@__const.mtk8250_set_termios.fraction_L_mapping = private unnamed_addr constant [11 x i16] [i16 0, i16 1, i16 5, i16 21, i16 85, i16 87, i16 87, i16 119, i16 127, i16 255, i16 255], align 2
@__const.mtk8250_set_termios.fraction_M_mapping = private unnamed_addr constant [11 x i16] [i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 1, i16 1, i16 1, i16 1, i16 3], align 2
@mtk8250_dma_enable._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.17, ptr @.str.3, i32 176, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\013failed to configure rx dma channel\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"mtk8250_dma_enable\00", [45 x i8] zeroinitializer }, align 32
@mtk8250_dma_enable._entry_ptr = internal global ptr @mtk8250_dma_enable._entry, section ".printk_index", align 4
@mtk8250_dma_enable._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.17, ptr @.str.3, i32 178, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\013failed to configure tx dma channel\0A\00", [58 x i8] zeroinitializer }, align 32
@mtk8250_dma_enable._entry_ptr.20 = internal global ptr @mtk8250_dma_enable._entry.18, section ".printk_index", align 4
@mtk8250_rx_dma._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.22, ptr @.str.3, i32 139, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\013failed to prepare rx slave single\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"mtk8250_rx_dma\00", [17 x i8] zeroinitializer }, align 32
@mtk8250_rx_dma._entry_ptr = internal global ptr @mtk8250_rx_dma._entry, section ".printk_index", align 4
@mtk8250_runtime_resume.__UNIQUE_ID_ddebug238 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.13, ptr @.str.23, ptr @.str.3, ptr @.str.24, i8 0, i8 109, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.23 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"mtk8250_runtime_resume\00", [41 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"%s clock count is %d\0A\00", [42 x i8] zeroinitializer }, align 32
@mtk8250_runtime_resume._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.23, ptr @.str.3, i32 442, ptr @.str.10, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Can't enable bus clock\0A\00", [40 x i8] zeroinitializer }, align 32
@mtk8250_runtime_resume._entry_ptr = internal global ptr @mtk8250_runtime_resume._entry, section ".printk_index", align 4
@mtk8250_suspend._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.27, ptr @.str.3, i32 629, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"failed to enable irq wake on IRQ %d: %d\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"mtk8250_suspend\00", [16 x i8] zeroinitializer }, align 32
@mtk8250_suspend._entry_ptr = internal global ptr @mtk8250_suspend._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@___asan_gen_.28 = private unnamed_addr constant [24 x i8] c"mtk8250_platform_driver\00", align 1
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.137, i32 665, i32 31 }
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.137, i32 667, i32 12 }
@___asan_gen_.34 = private unnamed_addr constant [17 x i8] c"mtk8250_of_match\00", align 1
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.137, i32 659, i32 34 }
@___asan_gen_.37 = private unnamed_addr constant [15 x i8] c"mtk8250_pm_ops\00", align 1
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.137, i32 653, i32 32 }
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.137, i32 530, i32 3 }
@___asan_gen_.58 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.137, i32 552, i32 2 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.137, i32 479, i32 44 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.137, i32 487, i32 4 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.137, i32 494, i32 43 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.137, i32 500, i32 56 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.137, i32 422, i32 3 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.137, i32 176, i32 3 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.137, i32 178, i32 3 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.137, i32 139, i32 3 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.137, i32 437, i32 3 }
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.137, i32 442, i32 4 }
@___asan_gen_.130 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.136 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.137 = private constant [38 x i8] c"../drivers/tty/serial/8250/8250_mtk.c\00", align 1
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.137, i32 627, i32 4 }
@llvm.compiler.used = appending global [52 x ptr] [ptr @__UNIQUE_ID___earlycon_mtk8250240, ptr @__UNIQUE_ID_author241, ptr @__UNIQUE_ID_description244, ptr @__UNIQUE_ID_file242, ptr @__UNIQUE_ID_license243, ptr @__exitcall_mtk8250_platform_driver_exit, ptr @__initcall__kmod_8250_mtk__239_674_mtk8250_platform_driver_init6, ptr @mtk8250_dma_enable._entry, ptr @mtk8250_dma_enable._entry.18, ptr @mtk8250_dma_enable._entry_ptr, ptr @mtk8250_dma_enable._entry_ptr.20, ptr @mtk8250_platform_driver_exit, ptr @mtk8250_probe._entry, ptr @mtk8250_probe._entry_ptr, ptr @mtk8250_probe_of._entry, ptr @mtk8250_probe_of._entry_ptr, ptr @mtk8250_runtime_resume._entry, ptr @mtk8250_runtime_resume._entry_ptr, ptr @mtk8250_rx_dma._entry, ptr @mtk8250_rx_dma._entry_ptr, ptr @mtk8250_suspend._entry, ptr @mtk8250_suspend._entry_ptr, ptr @mtk8250_platform_driver, ptr @.str, ptr @mtk8250_of_match, ptr @mtk8250_pm_ops, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @mtk8250_probe.__key, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.19, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27], section "llvm.metadata"
@0 = internal global [37 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk8250_platform_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk8250_of_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk8250_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk8250_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk8250_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk8250_probe_of._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk8250_dma_enable._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk8250_dma_enable._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk8250_rx_dma._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk8250_runtime_resume._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk8250_suspend._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @mtk8250_platform_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @mtk8250_platform_driver, ptr noundef null) #7
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @mtk8250_platform_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @platform_driver_unregister(ptr noundef nonnull @mtk8250_platform_driver) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @early_mtk8250_setup(ptr noundef %device, ptr nocapture noundef readnone %options) #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %membase = getelementptr inbounds %struct.earlycon_device, ptr %device, i32 0, i32 1, i32 2
  %0 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %membase, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %iotype = getelementptr inbounds %struct.earlycon_device, ptr %device, i32 0, i32 1, i32 26
  %2 = ptrtoint ptr %iotype to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 3, ptr %iotype, align 2
  %regshift = getelementptr inbounds %struct.earlycon_device, ptr %device, i32 0, i32 1, i32 25
  %3 = ptrtoint ptr %regshift to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 2, ptr %regshift, align 1
  %call = tail call i32 @early_serial8250_setup(ptr noundef %device, ptr noundef null) #7
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi i32 [ %call, %if.end ], [ -19, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mtk8250_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %uart = alloca %struct.uart_8250_port, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 584, ptr nonnull %uart) #7
  %0 = call ptr @memset(ptr %uart, i32 0, i32 584)
  %call = tail call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call ptr @platform_get_resource(ptr noundef %pdev, i32 noundef 512, i32 noundef 0) #7
  %tobool.not = icmp eq ptr %call1, null
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  br i1 %tobool.not, label %do.end, label %if.end3

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.1) #10
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %1 = ptrtoint ptr %call1 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %call1, align 4
  %end.i = getelementptr inbounds %struct.resource, ptr %call1, i32 0, i32 1
  %3 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %end.i, align 4
  %sub.i = sub i32 1, %2
  %add.i = add i32 %sub.i, %4
  %call6 = tail call ptr @devm_ioremap(ptr noundef %dev, i32 noundef %2, i32 noundef %add.i) #7
  %membase = getelementptr inbounds %struct.uart_port, ptr %uart, i32 0, i32 2
  %5 = ptrtoint ptr %membase to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call6, ptr %membase, align 4
  %tobool9.not = icmp eq ptr %call6, null
  br i1 %tobool9.not, label %if.end3.cleanup_crit_edge, label %if.end11

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end11:                                         ; preds = %if.end3
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 32, i32 noundef 3520) #7
  %tobool14.not = icmp eq ptr %call.i, null
  br i1 %tobool14.not, label %if.end11.cleanup_crit_edge, label %if.end16

if.end11.cleanup_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end16:                                         ; preds = %if.end11
  %clk_count = getelementptr inbounds %struct.mtk8250_data, ptr %call.i, i32 0, i32 2
  %6 = ptrtoint ptr %clk_count to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %clk_count, align 4
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %7 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %of_node, align 8
  %tobool18.not = icmp eq ptr %8, null
  br i1 %tobool18.not, label %if.end16.cleanup_crit_edge, label %if.then19

if.end16.cleanup_crit_edge:                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then19:                                        ; preds = %if.end16
  %call.i111 = tail call ptr @devm_clk_get(ptr noundef %dev, ptr noundef nonnull @.str.7) #7
  %uart_clk.i = getelementptr inbounds %struct.mtk8250_data, ptr %call.i, i32 0, i32 3
  %9 = ptrtoint ptr %uart_clk.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call.i111, ptr %uart_clk.i, align 4
  %cmp.i.i = icmp ugt ptr %call.i111, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.then.i, label %if.end12.i

if.then.i:                                        ; preds = %if.then19
  %call4.i = tail call ptr @devm_clk_get(ptr noundef %dev, ptr noundef null) #7
  %10 = ptrtoint ptr %uart_clk.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call4.i, ptr %uart_clk.i, align 4
  %cmp.i1.i = icmp ugt ptr %call4.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i1.i, label %do.end.i, label %if.then.i.do.body26_crit_edge

if.then.i.do.body26_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body26

do.end.i:                                         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.8) #10
  %11 = ptrtoint ptr %uart_clk.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %uart_clk.i, align 4
  br label %mtk8250_probe_of.exit

if.end12.i:                                       ; preds = %if.then19
  %call14.i = tail call ptr @devm_clk_get(ptr noundef %dev, ptr noundef nonnull @.str.11) #7
  %bus_clk.i = getelementptr inbounds %struct.mtk8250_data, ptr %call.i, i32 0, i32 4
  %13 = ptrtoint ptr %bus_clk.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call14.i, ptr %bus_clk.i, align 4
  %cmp.i2.i = icmp ugt ptr %call14.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i2.i, label %if.end12.i.mtk8250_probe_of.exit_crit_edge, label %if.end20.i

if.end12.i.mtk8250_probe_of.exit_crit_edge:       ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %mtk8250_probe_of.exit

if.end20.i:                                       ; preds = %if.end12.i
  %dma.i = getelementptr inbounds %struct.mtk8250_data, ptr %call.i, i32 0, i32 5
  %14 = ptrtoint ptr %dma.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr null, ptr %dma.i, align 4
  %15 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %of_node, align 8
  %call.i.i = tail call i32 @of_property_read_string_helper(ptr noundef %16, ptr noundef nonnull @.str.12, ptr noundef null, i32 noundef 0, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i.i)
  %cmp.i = icmp eq i32 %call.i.i, 2
  br i1 %cmp.i, label %if.then23.i, label %if.end20.i.do.body26_crit_edge

if.end20.i.do.body26_crit_edge:                   ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body26

if.then23.i:                                      ; preds = %if.end20.i
  %call.i3.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 164, i32 noundef 3520) #7
  %17 = ptrtoint ptr %dma.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %call.i3.i, ptr %dma.i, align 4
  %tobool.not.i = icmp eq ptr %call.i3.i, null
  br i1 %tobool.not.i, label %if.then23.i.cleanup_crit_edge, label %if.end29.i

if.then23.i.cleanup_crit_edge:                    ; preds = %if.then23.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end29.i:                                       ; preds = %if.then23.i
  call void @__sanitizer_cov_trace_pc() #9
  %fn.i = getelementptr inbounds %struct.uart_8250_dma, ptr %call.i3.i, i32 0, i32 2
  %18 = ptrtoint ptr %fn.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr @mtk8250_dma_filter, ptr %fn.i, align 4
  %rx_size.i = getelementptr inbounds %struct.uart_8250_dma, ptr %call.i3.i, i32 0, i32 16
  %19 = ptrtoint ptr %rx_size.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 32768, ptr %rx_size.i, align 4
  %src_maxburst.i = getelementptr inbounds %struct.uart_8250_dma, ptr %call.i3.i, i32 0, i32 5, i32 5
  %20 = ptrtoint ptr %src_maxburst.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 32768, ptr %src_maxburst.i, align 4
  %dst_maxburst.i = getelementptr inbounds %struct.uart_8250_dma, ptr %call.i3.i, i32 0, i32 6, i32 6
  %21 = ptrtoint ptr %dst_maxburst.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 1, ptr %dst_maxburst.i, align 4
  br label %do.body26

mtk8250_probe_of.exit:                            ; preds = %if.end12.i.mtk8250_probe_of.exit_crit_edge, %do.end.i
  %retval.0.i.in = phi ptr [ %12, %do.end.i ], [ %call14.i, %if.end12.i.mtk8250_probe_of.exit_crit_edge ]
  %retval.0.i = ptrtoint ptr %retval.0.i.in to i32
  %tobool22.not = icmp eq ptr %retval.0.i.in, null
  br i1 %tobool22.not, label %mtk8250_probe_of.exit.do.body26_crit_edge, label %mtk8250_probe_of.exit.cleanup_crit_edge

mtk8250_probe_of.exit.cleanup_crit_edge:          ; preds = %mtk8250_probe_of.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

mtk8250_probe_of.exit.do.body26_crit_edge:        ; preds = %mtk8250_probe_of.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body26

do.body26:                                        ; preds = %mtk8250_probe_of.exit.do.body26_crit_edge, %if.end29.i, %if.end20.i.do.body26_crit_edge, %if.then.i.do.body26_crit_edge
  call void @__raw_spin_lock_init(ptr noundef nonnull %uart, ptr noundef nonnull @.str.6, ptr noundef nonnull @mtk8250_probe.__key, i16 noundef signext 3) #7
  %22 = ptrtoint ptr %call1 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %call1, align 4
  %mapbase = getelementptr inbounds %struct.uart_port, ptr %uart, i32 0, i32 43
  %24 = ptrtoint ptr %mapbase to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %23, ptr %mapbase, align 4
  %irq34 = getelementptr inbounds %struct.uart_port, ptr %uart, i32 0, i32 20
  %25 = ptrtoint ptr %irq34 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %call, ptr %irq34, align 4
  %pm = getelementptr inbounds %struct.uart_port, ptr %uart, i32 0, i32 16
  %26 = ptrtoint ptr %pm to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr @mtk8250_do_pm, ptr %pm, align 4
  %type = getelementptr inbounds %struct.uart_port, ptr %uart, i32 0, i32 38
  %27 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 3, ptr %type, align 4
  %flags = getelementptr inbounds %struct.uart_port, ptr %uart, i32 0, i32 33
  %28 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 805306368, ptr %flags, align 4
  %dev40 = getelementptr inbounds %struct.uart_port, ptr %uart, i32 0, i32 45
  %29 = ptrtoint ptr %dev40 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %dev, ptr %dev40, align 4
  %iotype = getelementptr inbounds %struct.uart_port, ptr %uart, i32 0, i32 26
  %30 = ptrtoint ptr %iotype to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 3, ptr %iotype, align 2
  %regshift = getelementptr inbounds %struct.uart_port, ptr %uart, i32 0, i32 25
  %31 = ptrtoint ptr %regshift to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 2, ptr %regshift, align 1
  %private_data = getelementptr inbounds %struct.uart_port, ptr %uart, i32 0, i32 59
  %32 = ptrtoint ptr %private_data to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %call.i, ptr %private_data, align 4
  %shutdown = getelementptr inbounds %struct.uart_port, ptr %uart, i32 0, i32 12
  %33 = ptrtoint ptr %shutdown to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr @mtk8250_shutdown, ptr %shutdown, align 4
  %startup = getelementptr inbounds %struct.uart_port, ptr %uart, i32 0, i32 11
  %34 = ptrtoint ptr %startup to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr @mtk8250_startup, ptr %startup, align 4
  %set_termios = getelementptr inbounds %struct.uart_port, ptr %uart, i32 0, i32 5
  %35 = ptrtoint ptr %set_termios to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr @mtk8250_set_termios, ptr %set_termios, align 4
  %36 = ptrtoint ptr %uart_clk.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %uart_clk.i, align 4
  %call47 = call i32 @clk_get_rate(ptr noundef %37) #7
  %uartclk = getelementptr inbounds %struct.uart_port, ptr %uart, i32 0, i32 22
  %38 = ptrtoint ptr %uartclk to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %call47, ptr %uartclk, align 4
  %dma = getelementptr inbounds %struct.mtk8250_data, ptr %call.i, i32 0, i32 5
  %39 = ptrtoint ptr %dma to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %dma, align 4
  %tobool49.not = icmp eq ptr %40, null
  br i1 %tobool49.not, label %do.body26.do.body54_crit_edge, label %if.then50

do.body26.do.body54_crit_edge:                    ; preds = %do.body26
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body54

if.then50:                                        ; preds = %do.body26
  call void @__sanitizer_cov_trace_pc() #9
  %dma52 = getelementptr inbounds %struct.uart_8250_port, ptr %uart, i32 0, i32 19
  %41 = ptrtoint ptr %dma52 to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %40, ptr %dma52, align 4
  br label %do.body54

do.body54:                                        ; preds = %if.then50, %do.body26.do.body54_crit_edge
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !84
  call void @arm_heavy_mb() #7
  %42 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %membase, align 4
  %44 = ptrtoint ptr %regshift to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %regshift, align 1
  %conv = zext i8 %45 to i32
  %shl = shl i32 13, %conv
  %add.ptr = getelementptr i8, ptr %43, i32 %shl
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 0) #7, !srcloc !85
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %46 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  call void @pm_runtime_enable(ptr noundef %dev) #7
  %call63 = call i32 @mtk8250_runtime_resume(ptr noundef %dev)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call63)
  %tobool64.not = icmp eq i32 %call63, 0
  br i1 %tobool64.not, label %if.end66, label %do.body54.err_pm_disable_crit_edge

do.body54.err_pm_disable_crit_edge:               ; preds = %do.body54
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_pm_disable

if.end66:                                         ; preds = %do.body54
  %call67 = call i32 @serial8250_register_8250_port(ptr noundef nonnull %uart) #7
  %47 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %call67, ptr %call.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call67)
  %cmp69 = icmp slt i32 %call67, 0
  br i1 %cmp69, label %if.end66.err_pm_disable_crit_edge, label %if.end73

if.end66.err_pm_disable_crit_edge:                ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_pm_disable

if.end73:                                         ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #9
  %call74 = call i32 @platform_get_irq_optional(ptr noundef %pdev, i32 noundef 1) #7
  %rx_wakeup_irq = getelementptr inbounds %struct.mtk8250_data, ptr %call.i, i32 0, i32 7
  %48 = ptrtoint ptr %rx_wakeup_irq to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %call74, ptr %rx_wakeup_irq, align 4
  br label %cleanup

err_pm_disable:                                   ; preds = %if.end66.err_pm_disable_crit_edge, %do.body54.err_pm_disable_crit_edge
  %err.0 = phi i32 [ %call63, %do.body54.err_pm_disable_crit_edge ], [ %call67, %if.end66.err_pm_disable_crit_edge ]
  call void @__pm_runtime_disable(ptr noundef %dev, i1 noundef zeroext true) #7
  br label %cleanup

cleanup:                                          ; preds = %err_pm_disable, %if.end73, %mtk8250_probe_of.exit.cleanup_crit_edge, %if.then23.i.cleanup_crit_edge, %if.end16.cleanup_crit_edge, %if.end11.cleanup_crit_edge, %if.end3.cleanup_crit_edge, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.0, %err_pm_disable ], [ 0, %if.end73 ], [ -22, %do.end ], [ %call, %entry.cleanup_crit_edge ], [ -12, %if.end3.cleanup_crit_edge ], [ -12, %if.end11.cleanup_crit_edge ], [ %retval.0.i, %mtk8250_probe_of.exit.cleanup_crit_edge ], [ -19, %if.end16.cleanup_crit_edge ], [ -12, %if.then23.i.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 584, ptr nonnull %uart) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mtk8250_remove(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %dev, i32 noundef 4) #7
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %1, align 4
  tail call void @serial8250_unregister_port(i32 noundef %3) #7
  tail call void @__pm_runtime_disable(ptr noundef %dev, i1 noundef zeroext true) #7
  %usage_count.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 12, i32 13
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i, i32 noundef 4) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !86
  tail call void @llvm.prefetch.p0(ptr %usage_count.i, i32 1, i32 3, i32 1) #7
  %4 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i, ptr %usage_count.i, i32 0, i32 -1, ptr elementtype(i32) %usage_count.i) #7, !srcloc !87
  %asmresult.i.i.i.i = extractvalue { i32, i32, i32 } %4, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i)
  %cmp.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i, label %entry.pm_runtime_put_noidle.exit_crit_edge, label %do.end11.i.i.i.i

entry.pm_runtime_put_noidle.exit_crit_edge:       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %pm_runtime_put_noidle.exit

do.end11.i.i.i.i:                                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !88
  br label %pm_runtime_put_noidle.exit

pm_runtime_put_noidle.exit:                       ; preds = %do.end11.i.i.i.i, %entry.pm_runtime_put_noidle.exit_crit_edge
  %runtime_status.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 12, i32 18
  %5 = ptrtoint ptr %runtime_status.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %runtime_status.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %6)
  %cmp.i = icmp eq i32 %6, 2
  br i1 %cmp.i, label %pm_runtime_put_noidle.exit.if.end_crit_edge, label %if.then

pm_runtime_put_noidle.exit.if.end_crit_edge:      ; preds = %pm_runtime_put_noidle.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %pm_runtime_put_noidle.exit
  %7 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %driver_data.i.i, align 4
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %8, align 4
  %call1.i = tail call ptr @serial8250_get_port(i32 noundef %10) #7
  %serial_in.i.i = getelementptr inbounds %struct.uart_port, ptr %call1.i, i32 0, i32 3
  br label %while.cond.i

while.cond.i:                                     ; preds = %while.cond.i.while.cond.i_crit_edge, %if.then
  %11 = ptrtoint ptr %serial_in.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %serial_in.i.i, align 4
  %call.i.i = tail call i32 %12(ptr noundef %call1.i, i32 noundef 24) #7
  %tobool.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i, label %while.end.i, label %while.cond.i.while.cond.i_crit_edge

while.cond.i.while.cond.i_crit_edge:              ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.cond.i

while.end.i:                                      ; preds = %while.cond.i
  %clk_count.i = getelementptr inbounds %struct.mtk8250_data, ptr %8, i32 0, i32 2
  %13 = ptrtoint ptr %clk_count.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %clk_count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %cmp.i14 = icmp eq i32 %14, 0
  br i1 %cmp.i14, label %do.body.i, label %if.else.i

do.body.i:                                        ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mtk8250_runtime_suspend.__UNIQUE_ID_ddebug237, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mtk8250_remove, %if.then7.i)) #7
          to label %if.end [label %if.then7.i], !srcloc !89

if.then7.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mtk8250_runtime_suspend.__UNIQUE_ID_ddebug237, ptr noundef %dev, ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.14) #7
  br label %if.end

if.else.i:                                        ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %bus_clk.i = getelementptr inbounds %struct.mtk8250_data, ptr %8, i32 0, i32 4
  %15 = ptrtoint ptr %bus_clk.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %bus_clk.i, align 4
  tail call void @clk_disable(ptr noundef %16) #7
  tail call void @clk_unprepare(ptr noundef %16) #7
  %17 = ptrtoint ptr %clk_count.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %clk_count.i, align 4
  %dec.i = add i32 %18, -1
  store i32 %dec.i, ptr %clk_count.i, align 4
  br label %if.end

if.end:                                           ; preds = %if.else.i, %if.then7.i, %do.body.i, %pm_runtime_put_noidle.exit.if.end_crit_edge
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mtk8250_do_pm(ptr noundef %port, i32 noundef %state, i32 noundef %old) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %state)
  %tobool.not = icmp eq i32 %state, 0
  br i1 %tobool.not, label %if.then, label %if.then7.critedge

if.then:                                          ; preds = %entry
  %dev = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 45
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %call = tail call i32 @mtk8250_runtime_resume(ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool1.not = icmp eq i32 %call, 0
  br i1 %tobool1.not, label %if.then2, label %if.end15.critedge

if.then2:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %3, i32 noundef 4) #7
  tail call void @serial8250_do_pm(ptr noundef %port, i32 noundef 0, i32 noundef %old) #7
  br label %if.end15

if.then7.critedge:                                ; preds = %entry
  tail call void @serial8250_do_pm(ptr noundef %port, i32 noundef %state, i32 noundef %old) #7
  %dev8 = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 45
  %4 = ptrtoint ptr %dev8 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev8, align 4
  %call.i23 = tail call i32 @__pm_runtime_suspend(ptr noundef %5, i32 noundef 4) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i23)
  %tobool10.not = icmp eq i32 %call.i23, 0
  br i1 %tobool10.not, label %if.then11, label %if.then7.critedge.if.end15_crit_edge

if.then7.critedge.if.end15_crit_edge:             ; preds = %if.then7.critedge
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end15

if.then11:                                        ; preds = %if.then7.critedge
  %6 = ptrtoint ptr %dev8 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev8, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %7, i32 0, i32 8
  %8 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %driver_data.i.i, align 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %9, align 4
  %call1.i = tail call ptr @serial8250_get_port(i32 noundef %11) #7
  %serial_in.i.i = getelementptr inbounds %struct.uart_port, ptr %call1.i, i32 0, i32 3
  br label %while.cond.i

while.cond.i:                                     ; preds = %while.cond.i.while.cond.i_crit_edge, %if.then11
  %12 = ptrtoint ptr %serial_in.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %serial_in.i.i, align 4
  %call.i.i = tail call i32 %13(ptr noundef %call1.i, i32 noundef 24) #7
  %tobool.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i, label %while.end.i, label %while.cond.i.while.cond.i_crit_edge

while.cond.i.while.cond.i_crit_edge:              ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.cond.i

while.end.i:                                      ; preds = %while.cond.i
  %clk_count.i = getelementptr inbounds %struct.mtk8250_data, ptr %9, i32 0, i32 2
  %14 = ptrtoint ptr %clk_count.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %clk_count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp.i = icmp eq i32 %15, 0
  br i1 %cmp.i, label %do.body.i, label %if.else.i

do.body.i:                                        ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mtk8250_runtime_suspend.__UNIQUE_ID_ddebug237, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mtk8250_do_pm, %if.then7.i)) #7
          to label %if.end15 [label %if.then7.i], !srcloc !89

if.then7.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mtk8250_runtime_suspend.__UNIQUE_ID_ddebug237, ptr noundef %7, ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.14) #7
  br label %if.end15

if.else.i:                                        ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %bus_clk.i = getelementptr inbounds %struct.mtk8250_data, ptr %9, i32 0, i32 4
  %16 = ptrtoint ptr %bus_clk.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %bus_clk.i, align 4
  tail call void @clk_disable(ptr noundef %17) #7
  tail call void @clk_unprepare(ptr noundef %17) #7
  %18 = ptrtoint ptr %clk_count.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %clk_count.i, align 4
  %dec.i = add i32 %19, -1
  store i32 %dec.i, ptr %clk_count.i, align 4
  br label %if.end15

if.end15.critedge:                                ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @serial8250_do_pm(ptr noundef %port, i32 noundef 0, i32 noundef %old) #7
  br label %if.end15

if.end15:                                         ; preds = %if.end15.critedge, %if.else.i, %if.then7.i, %do.body.i, %if.then7.critedge.if.end15_crit_edge, %if.then2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mtk8250_shutdown(ptr noundef %port) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dma = getelementptr inbounds %struct.uart_8250_port, ptr %port, i32 0, i32 19
  %0 = ptrtoint ptr %dma to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dma, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %private_data = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 59
  %2 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data, align 4
  %rx_status = getelementptr inbounds %struct.mtk8250_data, ptr %3, i32 0, i32 6
  %4 = ptrtoint ptr %rx_status to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 2, ptr %rx_status, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  tail call void @serial8250_do_shutdown(ptr noundef %port) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mtk8250_startup(ptr noundef %port) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 59
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %cons = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 32
  %2 = ptrtoint ptr %cons to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cons, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %index = getelementptr inbounds %struct.console, ptr %3, i32 0, i32 9
  %4 = ptrtoint ptr %index to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %index, align 2
  %conv = sext i16 %5 to i32
  %line = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 41
  %6 = ptrtoint ptr %line to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %line, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %conv)
  %cmp = icmp eq i32 %7, %conv
  br i1 %cmp, label %if.then, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  %dma = getelementptr inbounds %struct.uart_8250_port, ptr %port, i32 0, i32 19
  %8 = ptrtoint ptr %dma to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %dma, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %dma3 = getelementptr inbounds %struct.uart_8250_port, ptr %port, i32 0, i32 19
  %9 = ptrtoint ptr %dma3 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dma3, align 4
  %tobool4.not = icmp eq ptr %10, null
  br i1 %tobool4.not, label %if.end.if.end8_crit_edge, label %if.then5

if.end.if.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end8

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %rx_status = getelementptr inbounds %struct.mtk8250_data, ptr %1, i32 0, i32 6
  %11 = ptrtoint ptr %rx_status to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %rx_status, align 4
  %state = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 30
  %12 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %state, align 4
  %tail = getelementptr inbounds %struct.uart_state, ptr %13, i32 0, i32 2, i32 2
  %14 = ptrtoint ptr %tail to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %tail, align 4
  %15 = load ptr, ptr %state, align 4
  %head = getelementptr inbounds %struct.uart_state, ptr %15, i32 0, i32 2, i32 1
  %16 = ptrtoint ptr %head to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %head, align 4
  br label %if.end8

if.end8:                                          ; preds = %if.then5, %if.end.if.end8_crit_edge
  %icount = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 31
  %17 = call ptr @memset(ptr %icount, i32 0, i32 44)
  %call9 = tail call i32 @serial8250_do_startup(ptr noundef %port) #7
  ret i32 %call9
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mtk8250_set_termios(ptr noundef %port, ptr noundef %termios, ptr noundef %old) #2 align 64 {
entry:
  %sg.i.i.i = alloca %struct.scatterlist, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dma = getelementptr inbounds %struct.uart_8250_port, ptr %port, i32 0, i32 19
  %0 = ptrtoint ptr %dma to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dma, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end8_crit_edge, label %if.then

entry.if.end8_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end8

if.then:                                          ; preds = %entry
  %cons = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 32
  %2 = ptrtoint ptr %cons to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cons, align 4
  %tobool1.not = icmp eq ptr %3, null
  br i1 %tobool1.not, label %if.then.if.else_crit_edge, label %land.lhs.true

if.then.if.else_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else

land.lhs.true:                                    ; preds = %if.then
  %index = getelementptr inbounds %struct.console, ptr %3, i32 0, i32 9
  %4 = ptrtoint ptr %index to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %index, align 2
  %conv = sext i16 %5 to i32
  %line = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 41
  %6 = ptrtoint ptr %line to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %line, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %conv)
  %cmp = icmp eq i32 %7, %conv
  br i1 %cmp, label %if.then4, label %land.lhs.true.if.else_crit_edge

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else

if.then4:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  %dev = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 45
  %8 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev, align 4
  tail call void @devm_kfree(ptr noundef %9, ptr noundef nonnull %1) #7
  %10 = ptrtoint ptr %dma to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr null, ptr %dma, align 4
  br label %if.end8

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %if.then.if.else_crit_edge
  %private_data.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 59
  %11 = ptrtoint ptr %private_data.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %private_data.i, align 4
  %serial_in.i.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 3
  %13 = ptrtoint ptr %serial_in.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %serial_in.i.i, align 4
  %call.i.i = tail call i32 %14(ptr noundef %port, i32 noundef 3) #7
  %rx_status.i = getelementptr inbounds %struct.mtk8250_data, ptr %12, i32 0, i32 6
  %15 = ptrtoint ptr %rx_status.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %rx_status.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %cmp.not.i = icmp eq i32 %16, 0
  br i1 %cmp.not.i, label %if.end.i, label %if.else.if.end8_crit_edge

if.else.if.end8_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end8

if.end.i:                                         ; preds = %if.else
  %rx_size.i = getelementptr inbounds %struct.uart_8250_dma, ptr %1, i32 0, i32 16
  %17 = ptrtoint ptr %rx_size.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %rx_size.i, align 4
  %src_port_window_size.i = getelementptr inbounds %struct.uart_8250_dma, ptr %1, i32 0, i32 5, i32 7
  %19 = ptrtoint ptr %src_port_window_size.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %src_port_window_size.i, align 4
  %rx_addr.i = getelementptr inbounds %struct.uart_8250_dma, ptr %1, i32 0, i32 11
  %20 = ptrtoint ptr %rx_addr.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %rx_addr.i, align 4
  %src_addr.i = getelementptr inbounds %struct.uart_8250_dma, ptr %1, i32 0, i32 5, i32 1
  %22 = ptrtoint ptr %src_addr.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %src_addr.i, align 4
  %txconf.i = getelementptr inbounds %struct.uart_8250_dma, ptr %1, i32 0, i32 6
  %dst_port_window_size.i = getelementptr inbounds %struct.uart_8250_dma, ptr %1, i32 0, i32 6, i32 8
  %23 = ptrtoint ptr %dst_port_window_size.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 4096, ptr %dst_port_window_size.i, align 4
  %tx_addr.i = getelementptr inbounds %struct.uart_8250_dma, ptr %1, i32 0, i32 12
  %24 = ptrtoint ptr %tx_addr.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %tx_addr.i, align 4
  %dst_addr.i = getelementptr inbounds %struct.uart_8250_dma, ptr %1, i32 0, i32 6, i32 2
  %26 = ptrtoint ptr %dst_addr.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %25, ptr %dst_addr.i, align 4
  %serial_out.i.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 4
  %27 = ptrtoint ptr %serial_out.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %serial_out.i.i, align 4
  tail call void %28(ptr noundef %port, i32 noundef 2, i32 noundef 7) #7
  %29 = ptrtoint ptr %serial_out.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %serial_out.i.i, align 4
  tail call void %30(ptr noundef %port, i32 noundef 19, i32 noundef 7) #7
  %31 = ptrtoint ptr %serial_out.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %serial_out.i.i, align 4
  tail call void %32(ptr noundef %port, i32 noundef 3, i32 noundef 191) #7
  %33 = ptrtoint ptr %serial_out.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %serial_out.i.i, align 4
  tail call void %34(ptr noundef %port, i32 noundef 2, i32 noundef 16) #7
  %35 = ptrtoint ptr %serial_out.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %serial_out.i.i, align 4
  tail call void %36(ptr noundef %port, i32 noundef 3, i32 noundef %call.i.i) #7
  %rxchan.i = getelementptr inbounds %struct.uart_8250_dma, ptr %1, i32 0, i32 7
  %37 = ptrtoint ptr %rxchan.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %rxchan.i, align 4
  %39 = ptrtoint ptr %38 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %38, align 4
  %device_config.i.i = getelementptr inbounds %struct.dma_device, ptr %40, i32 0, i32 44
  %41 = ptrtoint ptr %device_config.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %device_config.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %42, null
  br i1 %tobool.not.i.i, label %if.end.i.do.end.i_crit_edge, label %dmaengine_slave_config.exit.i

if.end.i.do.end.i_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end.i

dmaengine_slave_config.exit.i:                    ; preds = %if.end.i
  %rxconf.i = getelementptr inbounds %struct.uart_8250_dma, ptr %1, i32 0, i32 5
  %call.i47.i = tail call i32 %42(ptr noundef %38, ptr noundef %rxconf.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i47.i)
  %cmp6.not.i = icmp eq i32 %call.i47.i, 0
  br i1 %cmp6.not.i, label %dmaengine_slave_config.exit.i.if.end9.i_crit_edge, label %dmaengine_slave_config.exit.i.do.end.i_crit_edge

dmaengine_slave_config.exit.i.do.end.i_crit_edge: ; preds = %dmaengine_slave_config.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end.i

dmaengine_slave_config.exit.i.if.end9.i_crit_edge: ; preds = %dmaengine_slave_config.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end9.i

do.end.i:                                         ; preds = %dmaengine_slave_config.exit.i.do.end.i_crit_edge, %if.end.i.do.end.i_crit_edge
  %call8.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16) #10
  br label %if.end9.i

if.end9.i:                                        ; preds = %do.end.i, %dmaengine_slave_config.exit.i.if.end9.i_crit_edge
  %txchan.i = getelementptr inbounds %struct.uart_8250_dma, ptr %1, i32 0, i32 8
  %43 = ptrtoint ptr %txchan.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %txchan.i, align 4
  %45 = ptrtoint ptr %44 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %44, align 4
  %device_config.i48.i = getelementptr inbounds %struct.dma_device, ptr %46, i32 0, i32 44
  %47 = ptrtoint ptr %device_config.i48.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %device_config.i48.i, align 4
  %tobool.not.i49.i = icmp eq ptr %48, null
  br i1 %tobool.not.i49.i, label %if.end9.i.do.end16.i_crit_edge, label %dmaengine_slave_config.exit53.i

if.end9.i.do.end16.i_crit_edge:                   ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end16.i

dmaengine_slave_config.exit53.i:                  ; preds = %if.end9.i
  %call.i50.i = tail call i32 %48(ptr noundef %44, ptr noundef %txconf.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i50.i)
  %cmp12.not.i = icmp eq i32 %call.i50.i, 0
  br i1 %cmp12.not.i, label %dmaengine_slave_config.exit53.i.if.end19.i_crit_edge, label %dmaengine_slave_config.exit53.i.do.end16.i_crit_edge

dmaengine_slave_config.exit53.i.do.end16.i_crit_edge: ; preds = %dmaengine_slave_config.exit53.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end16.i

dmaengine_slave_config.exit53.i.if.end19.i_crit_edge: ; preds = %dmaengine_slave_config.exit53.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end19.i

do.end16.i:                                       ; preds = %dmaengine_slave_config.exit53.i.do.end16.i_crit_edge, %if.end9.i.do.end16.i_crit_edge
  %call18.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19) #10
  br label %if.end19.i

if.end19.i:                                       ; preds = %do.end16.i, %dmaengine_slave_config.exit53.i.if.end19.i_crit_edge
  %49 = ptrtoint ptr %rx_status.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 1, ptr %rx_status.i, align 4
  %rx_pos.i = getelementptr inbounds %struct.mtk8250_data, ptr %12, i32 0, i32 1
  %50 = ptrtoint ptr %rx_pos.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 0, ptr %rx_pos.i, align 4
  %51 = ptrtoint ptr %dma to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %dma, align 4
  %rxchan.i.i = getelementptr inbounds %struct.uart_8250_dma, ptr %52, i32 0, i32 7
  %53 = ptrtoint ptr %rxchan.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %rxchan.i.i, align 4
  %rx_addr.i.i = getelementptr inbounds %struct.uart_8250_dma, ptr %52, i32 0, i32 11
  %55 = ptrtoint ptr %rx_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %rx_addr.i.i, align 4
  %rx_size.i.i = getelementptr inbounds %struct.uart_8250_dma, ptr %52, i32 0, i32 16
  %57 = ptrtoint ptr %rx_size.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %rx_size.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %sg.i.i.i) #7
  %59 = getelementptr inbounds %struct.scatterlist, ptr %sg.i.i.i, i32 0, i32 3
  %60 = getelementptr inbounds %struct.scatterlist, ptr %sg.i.i.i, i32 0, i32 4
  %61 = call ptr @memset(ptr %sg.i.i.i, i32 255, i32 20)
  call void @sg_init_table(ptr noundef nonnull %sg.i.i.i, i32 noundef 1) #7
  %62 = ptrtoint ptr %59 to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %56, ptr %59, align 4
  %63 = ptrtoint ptr %60 to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 %58, ptr %60, align 4
  %tobool.not.i.i.i = icmp eq ptr %54, null
  br i1 %tobool.not.i.i.i, label %if.end19.i.dmaengine_prep_slave_single.exit.thread.i.i_crit_edge, label %lor.lhs.false.i.i.i

if.end19.i.dmaengine_prep_slave_single.exit.thread.i.i_crit_edge: ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %dmaengine_prep_slave_single.exit.thread.i.i

lor.lhs.false.i.i.i:                              ; preds = %if.end19.i
  %64 = ptrtoint ptr %54 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %54, align 4
  %tobool1.not.i.i.i = icmp eq ptr %65, null
  br i1 %tobool1.not.i.i.i, label %lor.lhs.false.i.i.i.dmaengine_prep_slave_single.exit.thread.i.i_crit_edge, label %lor.lhs.false2.i.i.i

lor.lhs.false.i.i.i.dmaengine_prep_slave_single.exit.thread.i.i_crit_edge: ; preds = %lor.lhs.false.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %dmaengine_prep_slave_single.exit.thread.i.i

lor.lhs.false2.i.i.i:                             ; preds = %lor.lhs.false.i.i.i
  %device_prep_slave_sg.i.i.i = getelementptr inbounds %struct.dma_device, ptr %65, i32 0, i32 39
  %66 = ptrtoint ptr %device_prep_slave_sg.i.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %device_prep_slave_sg.i.i.i, align 4
  %tobool4.not.i.i.i = icmp eq ptr %67, null
  br i1 %tobool4.not.i.i.i, label %lor.lhs.false2.i.i.i.dmaengine_prep_slave_single.exit.thread.i.i_crit_edge, label %dmaengine_prep_slave_single.exit.i.i

lor.lhs.false2.i.i.i.dmaengine_prep_slave_single.exit.thread.i.i_crit_edge: ; preds = %lor.lhs.false2.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %dmaengine_prep_slave_single.exit.thread.i.i

dmaengine_prep_slave_single.exit.thread.i.i:      ; preds = %lor.lhs.false2.i.i.i.dmaengine_prep_slave_single.exit.thread.i.i_crit_edge, %lor.lhs.false.i.i.i.dmaengine_prep_slave_single.exit.thread.i.i_crit_edge, %if.end19.i.dmaengine_prep_slave_single.exit.thread.i.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %sg.i.i.i) #7
  br label %do.end.i.i

dmaengine_prep_slave_single.exit.i.i:             ; preds = %lor.lhs.false2.i.i.i
  %call.i.i.i = call ptr %67(ptr noundef nonnull %54, ptr noundef nonnull %sg.i.i.i, i32 noundef 1, i32 noundef 2, i32 noundef 3, ptr noundef null) #7
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %sg.i.i.i) #7
  %tobool.not.i54.i = icmp eq ptr %call.i.i.i, null
  br i1 %tobool.not.i54.i, label %dmaengine_prep_slave_single.exit.i.i.do.end.i.i_crit_edge, label %if.end.i.i

dmaengine_prep_slave_single.exit.i.i.do.end.i.i_crit_edge: ; preds = %dmaengine_prep_slave_single.exit.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end.i.i

do.end.i.i:                                       ; preds = %dmaengine_prep_slave_single.exit.i.i.do.end.i.i_crit_edge, %dmaengine_prep_slave_single.exit.thread.i.i
  %call2.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.21) #10
  br label %if.end8

if.end.i.i:                                       ; preds = %dmaengine_prep_slave_single.exit.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %callback.i.i = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %call.i.i.i, i32 0, i32 6
  %68 = ptrtoint ptr %callback.i.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr @mtk8250_dma_rx_complete, ptr %callback.i.i, align 4
  %callback_param.i.i = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %call.i.i.i, i32 0, i32 8
  %69 = ptrtoint ptr %callback_param.i.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr %port, ptr %callback_param.i.i, align 4
  %tx_submit.i.i.i = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %call.i.i.i, i32 0, i32 4
  %70 = ptrtoint ptr %tx_submit.i.i.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %tx_submit.i.i.i, align 4
  %call.i14.i.i = call i32 %71(ptr noundef nonnull %call.i.i.i) #7
  %rx_cookie.i.i = getelementptr inbounds %struct.uart_8250_dma, ptr %52, i32 0, i32 13
  %72 = ptrtoint ptr %rx_cookie.i.i to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 %call.i14.i.i, ptr %rx_cookie.i.i, align 4
  %73 = ptrtoint ptr %rxchan.i.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %rxchan.i.i, align 4
  %75 = ptrtoint ptr %74 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %74, align 4
  %device_issue_pending.i.i.i = getelementptr inbounds %struct.dma_device, ptr %76, i32 0, i32 50
  %77 = ptrtoint ptr %device_issue_pending.i.i.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %device_issue_pending.i.i.i, align 4
  call void %78(ptr noundef %74) #7
  br label %if.end8

if.end8:                                          ; preds = %if.end.i.i, %do.end.i.i, %if.else.if.end8_crit_edge, %if.then4, %entry.if.end8_crit_edge
  %call9 = call i32 @tty_termios_baud_rate(ptr noundef %termios) #7
  call void @serial8250_do_set_termios(ptr noundef %port, ptr noundef %termios, ptr noundef null) #7
  call void @tty_termios_encode_baud_rate(ptr noundef %termios, i32 noundef %call9, i32 noundef %call9) #7
  %uartclk = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 22
  %79 = ptrtoint ptr %uartclk to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %uartclk, align 4
  %div10 = udiv i32 %80, 1048560
  %call12 = call i32 @uart_get_baud_rate(ptr noundef %port, ptr noundef %termios, ptr noundef %old, i32 noundef %div10, i32 noundef %80) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 115200, i32 %call12)
  %cmp13 = icmp ult i32 %call12, 115200
  %serial_out.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 4
  %81 = ptrtoint ptr %serial_out.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %serial_out.i, align 4
  br i1 %cmp13, label %if.then15, label %if.else17

if.then15:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  call void %82(ptr noundef %port, i32 noundef 9, i32 noundef 0) #7
  %call16 = call i32 @uart_get_divisor(ptr noundef %port, i32 noundef %call12) #7
  br label %do.body22

if.else17:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  call void %82(ptr noundef %port, i32 noundef 9, i32 noundef 3) #7
  %83 = ptrtoint ptr %uartclk to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %uartclk, align 4
  %mul = shl i32 %call12, 8
  %add = add i32 %mul, -1
  %sub = add i32 %add, %84
  %div20 = udiv i32 %sub, %mul
  br label %do.body22

do.body22:                                        ; preds = %if.else17, %if.then15
  %quot.0 = phi i32 [ %call16, %if.then15 ], [ %div20, %if.else17 ]
  %call26 = call i32 @_raw_spin_lock_irqsave(ptr noundef %port) #7
  %c_cflag = getelementptr inbounds %struct.ktermios, ptr %termios, i32 0, i32 2
  %85 = ptrtoint ptr %c_cflag to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %c_cflag, align 4
  call void @uart_update_timeout(ptr noundef %port, i32 noundef %86, i32 noundef %call12) #7
  %lcr = getelementptr inbounds %struct.uart_8250_port, ptr %port, i32 0, i32 10
  %87 = ptrtoint ptr %lcr to i32
  call void @__asan_load1_noabort(i32 %87)
  %88 = load i8, ptr %lcr, align 1
  %89 = or i8 %88, -128
  %or = zext i8 %89 to i32
  %serial_out.i156 = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 4
  %90 = ptrtoint ptr %serial_out.i156 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %serial_out.i156, align 4
  call void %91(ptr noundef %port, i32 noundef 3, i32 noundef %or) #7
  %dl_write.i = getelementptr inbounds %struct.uart_8250_port, ptr %port, i32 0, i32 22
  %92 = ptrtoint ptr %dl_write.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %dl_write.i, align 4
  call void %93(ptr noundef %port, i32 noundef %quot.0) #7
  %94 = ptrtoint ptr %lcr to i32
  call void @__asan_load1_noabort(i32 %94)
  %95 = load i8, ptr %lcr, align 1
  %conv31 = zext i8 %95 to i32
  %96 = ptrtoint ptr %serial_out.i156 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %serial_out.i156, align 4
  call void %97(ptr noundef %port, i32 noundef 3, i32 noundef %conv31) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 115199, i32 %call12)
  %cmp32 = icmp ugt i32 %call12, 115199
  br i1 %cmp32, label %if.then34, label %if.else52

if.then34:                                        ; preds = %do.body22
  call void @__sanitizer_cov_trace_pc() #9
  %98 = ptrtoint ptr %uartclk to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %uartclk, align 4
  %mul37 = mul i32 %quot.0, %call12
  %div38 = udiv i32 %99, %mul37
  %sub39 = add i32 %div38, -1
  %100 = ptrtoint ptr %serial_out.i156 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %serial_out.i156, align 4
  call void %101(ptr noundef %port, i32 noundef 10, i32 noundef %sub39) #7
  %shr = lshr i32 %sub39, 1
  %sub40 = add nsw i32 %shr, -1
  %102 = ptrtoint ptr %serial_out.i156 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %serial_out.i156, align 4
  call void %103(ptr noundef %port, i32 noundef 11, i32 noundef %sub40) #7
  %104 = ptrtoint ptr %uartclk to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %uartclk, align 4
  %mul42 = mul i32 %105, 100
  %div43 = udiv i32 %mul42, %call12
  %div44 = udiv i32 %div43, %quot.0
  %rem.lhs.trunc = trunc i32 %div44 to i16
  %rem171 = urem i16 %rem.lhs.trunc, 100
  %106 = trunc i16 %rem171 to i8
  %div48.lhs.trunc = add nuw nsw i8 %106, 5
  %div48172 = udiv i8 %div48.lhs.trunc, 10
  %div48.zext = zext i8 %div48172 to i32
  %arrayidx = getelementptr [11 x i16], ptr @__const.mtk8250_set_termios.fraction_L_mapping, i32 0, i32 %div48.zext
  %107 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %107)
  %108 = load i16, ptr %arrayidx, align 2
  %conv49 = zext i16 %108 to i32
  %109 = ptrtoint ptr %serial_out.i156 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %serial_out.i156, align 4
  call void %110(ptr noundef %port, i32 noundef 21, i32 noundef %conv49) #7
  %arrayidx50 = getelementptr [11 x i16], ptr @__const.mtk8250_set_termios.fraction_M_mapping, i32 0, i32 %div48.zext
  %111 = ptrtoint ptr %arrayidx50 to i32
  call void @__asan_load2_noabort(i32 %111)
  %112 = load i16, ptr %arrayidx50, align 2
  %conv51 = zext i16 %112 to i32
  br label %if.end53

if.else52:                                        ; preds = %do.body22
  call void @__sanitizer_cov_trace_pc() #9
  %113 = ptrtoint ptr %serial_out.i156 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %serial_out.i156, align 4
  call void %114(ptr noundef %port, i32 noundef 10, i32 noundef 0) #7
  %115 = ptrtoint ptr %serial_out.i156 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %serial_out.i156, align 4
  call void %116(ptr noundef %port, i32 noundef 11, i32 noundef 255) #7
  %117 = ptrtoint ptr %serial_out.i156 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %serial_out.i156, align 4
  call void %118(ptr noundef %port, i32 noundef 21, i32 noundef 0) #7
  br label %if.end53

if.end53:                                         ; preds = %if.else52, %if.then34
  %.sink = phi i32 [ 0, %if.else52 ], [ %conv51, %if.then34 ]
  %119 = ptrtoint ptr %serial_out.i156 to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %serial_out.i156, align 4
  call void %120(ptr noundef %port, i32 noundef 22, i32 noundef %.sink) #7
  %121 = ptrtoint ptr %c_cflag to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %c_cflag, align 4
  %123 = ptrtoint ptr %termios to i32
  call void @__asan_load4_noabort(i32 %123)
  %.pr = load i32, ptr %termios, align 4
  %.pr.lobit = lshr i32 %.pr, 31
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %.pr)
  %tobool58.not = icmp sgt i32 %.pr, -1
  %spec.select = select i1 %tobool58.not, i32 2, i32 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %122)
  %tobool55.not175 = icmp slt i32 %122, 0
  %mode.0 = select i1 %tobool55.not175, i32 %spec.select, i32 %.pr.lobit
  %serial_in.i.i166 = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 3
  %124 = ptrtoint ptr %serial_in.i.i166 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %serial_in.i.i166, align 4
  %call.i.i167 = call i32 %125(ptr noundef %port, i32 noundef 3) #7
  %126 = ptrtoint ptr %serial_out.i156 to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %serial_out.i156, align 4
  call void %127(ptr noundef %port, i32 noundef 3, i32 noundef 191) #7
  %128 = ptrtoint ptr %serial_out.i156 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %serial_out.i156, align 4
  call void %129(ptr noundef %port, i32 noundef 2, i32 noundef 16) #7
  %130 = ptrtoint ptr %serial_out.i156 to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %serial_out.i156, align 4
  call void %131(ptr noundef %port, i32 noundef 3, i32 noundef %call.i.i167) #7
  %132 = ptrtoint ptr %serial_in.i.i166 to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %serial_in.i.i166, align 4
  %call.i57.i = call i32 %133(ptr noundef %port, i32 noundef 3) #7
  %134 = zext i32 %mode.0 to i64
  call void @__sanitizer_cov_trace_switch(i64 %134, ptr @__sancov_gen_cov_switch_values)
  switch i32 %mode.0, label %if.end53.mtk8250_set_flow_ctrl.exit_crit_edge [
    i32 0, label %sw.bb.i
    i32 2, label %sw.bb4.i
    i32 1, label %sw.bb7.i
  ]

if.end53.mtk8250_set_flow_ctrl.exit_crit_edge:    ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #9
  br label %mtk8250_set_flow_ctrl.exit

sw.bb.i:                                          ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #9
  %135 = ptrtoint ptr %serial_out.i156 to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %serial_out.i156, align 4
  call void %136(ptr noundef %port, i32 noundef 16, i32 noundef 119) #7
  %137 = ptrtoint ptr %serial_out.i156 to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %serial_out.i156, align 4
  call void %138(ptr noundef %port, i32 noundef 17, i32 noundef 0) #7
  %139 = ptrtoint ptr %serial_out.i156 to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %serial_out.i156, align 4
  call void %140(ptr noundef %port, i32 noundef 3, i32 noundef 191) #7
  %141 = ptrtoint ptr %serial_in.i.i166 to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %serial_in.i.i166, align 4
  %call.i62.i = call i32 %142(ptr noundef %port, i32 noundef 2) #7
  %and.i = and i32 %call.i62.i, -208
  %143 = ptrtoint ptr %serial_out.i156 to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %serial_out.i156, align 4
  call void %144(ptr noundef %port, i32 noundef 2, i32 noundef %and.i) #7
  %145 = ptrtoint ptr %serial_out.i156 to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %serial_out.i156, align 4
  call void %146(ptr noundef %port, i32 noundef 3, i32 noundef %call.i57.i) #7
  %147 = ptrtoint ptr %serial_in.i.i166 to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %serial_in.i.i166, align 4
  %call.i.i.i169 = call i32 %148(ptr noundef %port, i32 noundef 1) #7
  %and.i.i = and i32 %call.i.i.i169, -225
  br label %sw.epilog.sink.split.i

sw.bb4.i:                                         ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #9
  %149 = ptrtoint ptr %serial_out.i156 to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %serial_out.i156, align 4
  call void %150(ptr noundef %port, i32 noundef 16, i32 noundef 119) #7
  %151 = ptrtoint ptr %serial_out.i156 to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %serial_out.i156, align 4
  call void %152(ptr noundef %port, i32 noundef 17, i32 noundef 0) #7
  %153 = ptrtoint ptr %serial_out.i156 to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %serial_out.i156, align 4
  call void %154(ptr noundef %port, i32 noundef 4, i32 noundef 2) #7
  %155 = ptrtoint ptr %serial_out.i156 to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %serial_out.i156, align 4
  call void %156(ptr noundef %port, i32 noundef 3, i32 noundef 191) #7
  %157 = ptrtoint ptr %serial_in.i.i166 to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %serial_in.i.i166, align 4
  %call.i70.i = call i32 %158(ptr noundef %port, i32 noundef 2) #7
  %and6.i = and i32 %call.i70.i, -208
  %or.i = or i32 %and6.i, 192
  %159 = ptrtoint ptr %serial_out.i156 to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load ptr, ptr %serial_out.i156, align 4
  call void %160(ptr noundef %port, i32 noundef 2, i32 noundef %or.i) #7
  %161 = ptrtoint ptr %serial_out.i156 to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load ptr, ptr %serial_out.i156, align 4
  call void %162(ptr noundef %port, i32 noundef 3, i32 noundef %call.i57.i) #7
  %163 = ptrtoint ptr %serial_in.i.i166 to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load ptr, ptr %serial_in.i.i166, align 4
  %call.i.i74.i = call i32 %164(ptr noundef %port, i32 noundef 1) #7
  %and.i75.i = and i32 %call.i.i74.i, -33
  %165 = ptrtoint ptr %serial_out.i156 to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load ptr, ptr %serial_out.i156, align 4
  call void %166(ptr noundef %port, i32 noundef 1, i32 noundef %and.i75.i) #7
  %167 = ptrtoint ptr %serial_in.i.i166 to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load ptr, ptr %serial_in.i.i166, align 4
  %call.i.i78.i = call i32 %168(ptr noundef %port, i32 noundef 1) #7
  %or.i.i = or i32 %call.i.i78.i, 192
  br label %sw.epilog.sink.split.i

sw.bb7.i:                                         ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #9
  %169 = ptrtoint ptr %serial_out.i156 to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load ptr, ptr %serial_out.i156, align 4
  call void %170(ptr noundef %port, i32 noundef 16, i32 noundef 119) #7
  %171 = ptrtoint ptr %serial_out.i156 to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load ptr, ptr %serial_out.i156, align 4
  call void %172(ptr noundef %port, i32 noundef 17, i32 noundef 1) #7
  %173 = ptrtoint ptr %serial_out.i156 to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load ptr, ptr %serial_out.i156, align 4
  call void %174(ptr noundef %port, i32 noundef 3, i32 noundef 191) #7
  %175 = ptrtoint ptr %serial_in.i.i166 to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load ptr, ptr %serial_in.i.i166, align 4
  %call.i84.i = call i32 %176(ptr noundef %port, i32 noundef 2) #7
  %and9.i = and i32 %call.i84.i, -208
  %or10.i = or i32 %and9.i, 10
  %177 = ptrtoint ptr %serial_out.i156 to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load ptr, ptr %serial_out.i156, align 4
  call void %178(ptr noundef %port, i32 noundef 2, i32 noundef %or10.i) #7
  %state.i = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 30
  %179 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load ptr, ptr %state.i, align 4
  %tty.i = getelementptr inbounds %struct.tty_port, ptr %180, i32 0, i32 1
  %181 = ptrtoint ptr %tty.i to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load ptr, ptr %tty.i, align 4
  %arrayidx.i = getelementptr %struct.tty_struct, ptr %182, i32 0, i32 13, i32 5, i32 8
  %183 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %183)
  %184 = load i8, ptr %arrayidx.i, align 1
  %conv.i = zext i8 %184 to i32
  %185 = ptrtoint ptr %serial_out.i156 to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load ptr, ptr %serial_out.i156, align 4
  call void %186(ptr noundef %port, i32 noundef 4, i32 noundef %conv.i) #7
  %187 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load ptr, ptr %state.i, align 4
  %tty14.i = getelementptr inbounds %struct.tty_port, ptr %188, i32 0, i32 1
  %189 = ptrtoint ptr %tty14.i to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load ptr, ptr %tty14.i, align 4
  %arrayidx17.i = getelementptr %struct.tty_struct, ptr %190, i32 0, i32 13, i32 5, i32 9
  %191 = ptrtoint ptr %arrayidx17.i to i32
  call void @__asan_load1_noabort(i32 %191)
  %192 = load i8, ptr %arrayidx17.i, align 1
  %conv18.i = zext i8 %192 to i32
  %193 = ptrtoint ptr %serial_out.i156 to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load ptr, ptr %serial_out.i156, align 4
  call void %194(ptr noundef %port, i32 noundef 6, i32 noundef %conv18.i) #7
  %195 = ptrtoint ptr %serial_out.i156 to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load ptr, ptr %serial_out.i156, align 4
  call void %196(ptr noundef %port, i32 noundef 3, i32 noundef %call.i57.i) #7
  %197 = ptrtoint ptr %serial_in.i.i166 to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load ptr, ptr %serial_in.i.i166, align 4
  %call.i.i90.i = call i32 %198(ptr noundef %port, i32 noundef 1) #7
  %and.i91.i = and i32 %call.i.i90.i, -193
  %199 = ptrtoint ptr %serial_out.i156 to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load ptr, ptr %serial_out.i156, align 4
  call void %200(ptr noundef %port, i32 noundef 1, i32 noundef %and.i91.i) #7
  %201 = ptrtoint ptr %serial_in.i.i166 to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load ptr, ptr %serial_in.i.i166, align 4
  %call.i.i94.i = call i32 %202(ptr noundef %port, i32 noundef 1) #7
  %or.i95.i = or i32 %call.i.i94.i, 32
  br label %sw.epilog.sink.split.i

sw.epilog.sink.split.i:                           ; preds = %sw.bb7.i, %sw.bb4.i, %sw.bb.i
  %or.i95.sink.i = phi i32 [ %or.i95.i, %sw.bb7.i ], [ %or.i.i, %sw.bb4.i ], [ %and.i.i, %sw.bb.i ]
  %203 = ptrtoint ptr %serial_out.i156 to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load ptr, ptr %serial_out.i156, align 4
  call void %204(ptr noundef %port, i32 noundef 1, i32 noundef %or.i95.sink.i) #7
  br label %mtk8250_set_flow_ctrl.exit

mtk8250_set_flow_ctrl.exit:                       ; preds = %sw.epilog.sink.split.i, %if.end53.mtk8250_set_flow_ctrl.exit_crit_edge
  %cons68 = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 32
  %205 = ptrtoint ptr %cons68 to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load ptr, ptr %cons68, align 4
  %tobool69.not = icmp eq ptr %206, null
  br i1 %tobool69.not, label %mtk8250_set_flow_ctrl.exit.if.end81_crit_edge, label %land.lhs.true70

mtk8250_set_flow_ctrl.exit.if.end81_crit_edge:    ; preds = %mtk8250_set_flow_ctrl.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end81

land.lhs.true70:                                  ; preds = %mtk8250_set_flow_ctrl.exit
  %index72 = getelementptr inbounds %struct.console, ptr %206, i32 0, i32 9
  %207 = ptrtoint ptr %index72 to i32
  call void @__asan_load2_noabort(i32 %207)
  %208 = load i16, ptr %index72, align 2
  %conv73 = sext i16 %208 to i32
  %line74 = getelementptr inbounds %struct.uart_port, ptr %port, i32 0, i32 41
  %209 = ptrtoint ptr %line74 to i32
  call void @__asan_load4_noabort(i32 %209)
  %210 = load i32, ptr %line74, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %210, i32 %conv73)
  %cmp75 = icmp eq i32 %210, %conv73
  br i1 %cmp75, label %if.then77, label %land.lhs.true70.if.end81_crit_edge

land.lhs.true70.if.end81_crit_edge:               ; preds = %land.lhs.true70
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end81

if.then77:                                        ; preds = %land.lhs.true70
  call void @__sanitizer_cov_trace_pc() #9
  %211 = ptrtoint ptr %c_cflag to i32
  call void @__asan_load4_noabort(i32 %211)
  %212 = load i32, ptr %c_cflag, align 4
  %cflag = getelementptr inbounds %struct.console, ptr %206, i32 0, i32 10
  %213 = ptrtoint ptr %cflag to i32
  call void @__asan_store4_noabort(i32 %213)
  store i32 %212, ptr %cflag, align 4
  br label %if.end81

if.end81:                                         ; preds = %if.then77, %land.lhs.true70.if.end81_crit_edge, %mtk8250_set_flow_ctrl.exit.if.end81_crit_edge
  call void @_raw_spin_unlock_irqrestore(ptr noundef %port, i32 noundef %call26) #7
  %call83 = call i32 @tty_termios_baud_rate(ptr noundef %termios) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call83)
  %tobool84.not = icmp eq i32 %call83, 0
  br i1 %tobool84.not, label %if.end81.if.end86_crit_edge, label %if.then85

if.end81.if.end86_crit_edge:                      ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end86

if.then85:                                        ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #9
  call void @tty_termios_encode_baud_rate(ptr noundef %termios, i32 noundef %call12, i32 noundef %call12) #7
  br label %if.end86

if.end86:                                         ; preds = %if.then85, %if.end81.if.end86_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mtk8250_runtime_resume(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %clk_count = getelementptr inbounds %struct.mtk8250_data, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %clk_count to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %clk_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp.not = icmp eq i32 %3, 0
  br i1 %cmp.not, label %if.else, label %do.body

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mtk8250_runtime_resume.__UNIQUE_ID_ddebug238, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mtk8250_runtime_resume, %if.then4)) #7
          to label %cleanup [label %if.then4], !srcloc !89

if.then4:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %4 = ptrtoint ptr %clk_count to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %clk_count, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mtk8250_runtime_resume.__UNIQUE_ID_ddebug238, ptr noundef %dev, ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.23, i32 noundef %5) #7
  br label %cleanup

if.else:                                          ; preds = %entry
  %bus_clk = getelementptr inbounds %struct.mtk8250_data, ptr %1, i32 0, i32 4
  %6 = ptrtoint ptr %bus_clk to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %bus_clk, align 4
  %call.i = tail call i32 @clk_prepare(ptr noundef %7) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.else.do.end11_crit_edge

if.else.do.end11_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end11

if.end.i:                                         ; preds = %if.else
  %call1.i = tail call i32 @clk_enable(ptr noundef %7) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end12, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @clk_unprepare(ptr noundef %7) #7
  br label %do.end11

do.end11:                                         ; preds = %if.then3.i, %if.else.do.end11_crit_edge
  %retval.0.i22.ph = phi i32 [ %call1.i, %if.then3.i ], [ %call.i, %if.else.do.end11_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.25) #10
  br label %cleanup

if.end12:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %8 = ptrtoint ptr %clk_count to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %clk_count, align 4
  %inc = add i32 %9, 1
  store i32 %inc, ptr %clk_count, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end12, %do.end11, %if.then4, %do.body
  %retval.0 = phi i32 [ %retval.0.i22.ph, %do.end11 ], [ 0, %if.then4 ], [ 0, %if.end12 ], [ 0, %do.body ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @serial8250_register_8250_port(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq_optional(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @mtk8250_dma_filter(ptr nocapture noundef readnone %chan, ptr nocapture noundef readnone %param) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  ret i1 false
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_string_helper(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @serial8250_do_pm(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mtk8250_runtime_suspend(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %1, align 4
  %call1 = tail call ptr @serial8250_get_port(i32 noundef %3) #7
  %serial_in.i = getelementptr inbounds %struct.uart_port, ptr %call1, i32 0, i32 3
  br label %while.cond

while.cond:                                       ; preds = %while.cond.while.cond_crit_edge, %entry
  %4 = ptrtoint ptr %serial_in.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %serial_in.i, align 4
  %call.i = tail call i32 %5(ptr noundef %call1, i32 noundef 24) #7
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %while.end, label %while.cond.while.cond_crit_edge

while.cond.while.cond_crit_edge:                  ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %clk_count = getelementptr inbounds %struct.mtk8250_data, ptr %1, i32 0, i32 2
  %6 = ptrtoint ptr %clk_count to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %clk_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp = icmp eq i32 %7, 0
  br i1 %cmp, label %do.body, label %if.else

do.body:                                          ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mtk8250_runtime_suspend.__UNIQUE_ID_ddebug237, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mtk8250_runtime_suspend, %if.then7)) #7
          to label %if.end9 [label %if.then7], !srcloc !89

if.then7:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mtk8250_runtime_suspend.__UNIQUE_ID_ddebug237, ptr noundef %dev, ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.14) #7
  br label %if.end9

if.else:                                          ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #9
  %bus_clk = getelementptr inbounds %struct.mtk8250_data, ptr %1, i32 0, i32 4
  %8 = ptrtoint ptr %bus_clk to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %bus_clk, align 4
  tail call void @clk_disable(ptr noundef %9) #7
  tail call void @clk_unprepare(ptr noundef %9) #7
  %10 = ptrtoint ptr %clk_count to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %clk_count, align 4
  %dec = add i32 %11, -1
  store i32 %dec, ptr %clk_count, align 4
  br label %if.end9

if.end9:                                          ; preds = %if.else, %if.then7, %do.body
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_suspend(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @serial8250_get_port(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @serial8250_do_shutdown(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @serial8250_do_startup(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @devm_kfree(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tty_termios_baud_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @serial8250_do_set_termios(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @tty_termios_encode_baud_rate(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @uart_get_baud_rate(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @uart_get_divisor(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @uart_update_timeout(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mtk8250_dma_rx_complete(ptr noundef %param) #2 align 64 {
entry:
  %sg.i.i = alloca %struct.scatterlist, align 4
  %state4 = alloca %struct.dma_tx_state, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dma1 = getelementptr inbounds %struct.uart_8250_port, ptr %param, i32 0, i32 19
  %0 = ptrtoint ptr %dma1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dma1, align 4
  %private_data = getelementptr inbounds %struct.uart_port, ptr %param, i32 0, i32 59
  %2 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data, align 4
  %state = getelementptr inbounds %struct.uart_port, ptr %param, i32 0, i32 30
  %4 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %state, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %state4) #7
  %rx_status = getelementptr inbounds %struct.mtk8250_data, ptr %3, i32 0, i32 6
  %6 = call ptr @memset(ptr %state4, i32 255, i32 16)
  %7 = ptrtoint ptr %rx_status to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %rx_status, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %8)
  %cmp = icmp eq i32 %8, 2
  br i1 %cmp, label %entry.cleanup_crit_edge, label %do.body5

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.body5:                                         ; preds = %entry
  %9 = getelementptr inbounds %struct.dma_tx_state, ptr %state4, i32 0, i32 2
  %call8 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %param) #7
  %rxchan = getelementptr inbounds %struct.uart_8250_dma, ptr %1, i32 0, i32 7
  %10 = ptrtoint ptr %rxchan to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %rxchan, align 4
  %rx_cookie = getelementptr inbounds %struct.uart_8250_dma, ptr %1, i32 0, i32 13
  %12 = ptrtoint ptr %rx_cookie to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %rx_cookie, align 4
  %14 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %11, align 4
  %device_tx_status.i = getelementptr inbounds %struct.dma_device, ptr %15, i32 0, i32 49
  %16 = ptrtoint ptr %device_tx_status.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %device_tx_status.i, align 4
  %call.i = call i32 %17(ptr noundef %11, i32 noundef %13, ptr noundef nonnull %state4) #7
  %rx_size = getelementptr inbounds %struct.uart_8250_dma, ptr %1, i32 0, i32 16
  %18 = ptrtoint ptr %rx_size to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %rx_size, align 4
  %20 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %9, align 4
  %sub = sub i32 %19, %21
  %rx_pos = getelementptr inbounds %struct.mtk8250_data, ptr %3, i32 0, i32 1
  %22 = ptrtoint ptr %rx_pos to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %rx_pos, align 4
  %add = add i32 %23, %sub
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %19)
  %cmp13 = icmp ugt i32 %add, %19
  %sub18 = sub i32 %19, %23
  %spec.select = select i1 %cmp13, i32 %sub18, i32 %sub
  %rx_buf = getelementptr inbounds %struct.uart_8250_dma, ptr %1, i32 0, i32 15
  %24 = ptrtoint ptr %rx_buf to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %rx_buf, align 4
  %add.ptr = getelementptr i8, ptr %25, i32 %23
  %call.i75 = call i32 @tty_insert_flip_string_fixed_flag(ptr noundef %5, ptr noundef %add.ptr, i8 noundef zeroext 0, i32 noundef %spec.select) #7
  %26 = ptrtoint ptr %rx_pos to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %rx_pos, align 4
  %add23 = add i32 %27, %spec.select
  store i32 %add23, ptr %rx_pos, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %sub, i32 %spec.select)
  %cmp24 = icmp sgt i32 %sub, %spec.select
  br i1 %cmp24, label %if.then26, label %do.body5.if.end32_crit_edge

do.body5.if.end32_crit_edge:                      ; preds = %do.body5
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end32

if.then26:                                        ; preds = %do.body5
  call void @__sanitizer_cov_trace_pc() #9
  %28 = ptrtoint ptr %rx_buf to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %rx_buf, align 4
  %sub28 = sub i32 %sub, %spec.select
  %call.i76 = call i32 @tty_insert_flip_string_fixed_flag(ptr noundef %5, ptr noundef %29, i8 noundef zeroext 0, i32 noundef %sub28) #7
  %add30 = add i32 %call.i76, %call.i75
  %30 = ptrtoint ptr %rx_pos to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %sub28, ptr %rx_pos, align 4
  br label %if.end32

if.end32:                                         ; preds = %if.then26, %do.body5.if.end32_crit_edge
  %copied.0 = phi i32 [ %add30, %if.then26 ], [ %call.i75, %do.body5.if.end32_crit_edge ]
  %rx = getelementptr inbounds %struct.uart_port, ptr %param, i32 0, i32 31, i32 4
  %31 = ptrtoint ptr %rx to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %rx, align 4
  %add34 = add i32 %32, %copied.0
  store i32 %add34, ptr %rx, align 4
  call void @tty_flip_buffer_push(ptr noundef %5) #7
  %33 = ptrtoint ptr %dma1 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %dma1, align 4
  %rxchan.i = getelementptr inbounds %struct.uart_8250_dma, ptr %34, i32 0, i32 7
  %35 = ptrtoint ptr %rxchan.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %rxchan.i, align 4
  %rx_addr.i = getelementptr inbounds %struct.uart_8250_dma, ptr %34, i32 0, i32 11
  %37 = ptrtoint ptr %rx_addr.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %rx_addr.i, align 4
  %rx_size.i = getelementptr inbounds %struct.uart_8250_dma, ptr %34, i32 0, i32 16
  %39 = ptrtoint ptr %rx_size.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %rx_size.i, align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %sg.i.i) #7
  %41 = getelementptr inbounds %struct.scatterlist, ptr %sg.i.i, i32 0, i32 3
  %42 = getelementptr inbounds %struct.scatterlist, ptr %sg.i.i, i32 0, i32 4
  %43 = call ptr @memset(ptr %sg.i.i, i32 255, i32 20)
  call void @sg_init_table(ptr noundef nonnull %sg.i.i, i32 noundef 1) #7
  %44 = ptrtoint ptr %41 to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %38, ptr %41, align 4
  %45 = ptrtoint ptr %42 to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %40, ptr %42, align 4
  %tobool.not.i.i = icmp eq ptr %36, null
  br i1 %tobool.not.i.i, label %if.end32.dmaengine_prep_slave_single.exit.thread.i_crit_edge, label %lor.lhs.false.i.i

if.end32.dmaengine_prep_slave_single.exit.thread.i_crit_edge: ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #9
  br label %dmaengine_prep_slave_single.exit.thread.i

lor.lhs.false.i.i:                                ; preds = %if.end32
  %46 = ptrtoint ptr %36 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %36, align 4
  %tobool1.not.i.i = icmp eq ptr %47, null
  br i1 %tobool1.not.i.i, label %lor.lhs.false.i.i.dmaengine_prep_slave_single.exit.thread.i_crit_edge, label %lor.lhs.false2.i.i

lor.lhs.false.i.i.dmaengine_prep_slave_single.exit.thread.i_crit_edge: ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %dmaengine_prep_slave_single.exit.thread.i

lor.lhs.false2.i.i:                               ; preds = %lor.lhs.false.i.i
  %device_prep_slave_sg.i.i = getelementptr inbounds %struct.dma_device, ptr %47, i32 0, i32 39
  %48 = ptrtoint ptr %device_prep_slave_sg.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %device_prep_slave_sg.i.i, align 4
  %tobool4.not.i.i = icmp eq ptr %49, null
  br i1 %tobool4.not.i.i, label %lor.lhs.false2.i.i.dmaengine_prep_slave_single.exit.thread.i_crit_edge, label %dmaengine_prep_slave_single.exit.i

lor.lhs.false2.i.i.dmaengine_prep_slave_single.exit.thread.i_crit_edge: ; preds = %lor.lhs.false2.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %dmaengine_prep_slave_single.exit.thread.i

dmaengine_prep_slave_single.exit.thread.i:        ; preds = %lor.lhs.false2.i.i.dmaengine_prep_slave_single.exit.thread.i_crit_edge, %lor.lhs.false.i.i.dmaengine_prep_slave_single.exit.thread.i_crit_edge, %if.end32.dmaengine_prep_slave_single.exit.thread.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %sg.i.i) #7
  br label %do.end.i

dmaengine_prep_slave_single.exit.i:               ; preds = %lor.lhs.false2.i.i
  %call.i.i = call ptr %49(ptr noundef nonnull %36, ptr noundef nonnull %sg.i.i, i32 noundef 1, i32 noundef 2, i32 noundef 3, ptr noundef null) #7
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %sg.i.i) #7
  %tobool.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i, label %dmaengine_prep_slave_single.exit.i.do.end.i_crit_edge, label %if.end.i

dmaengine_prep_slave_single.exit.i.do.end.i_crit_edge: ; preds = %dmaengine_prep_slave_single.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end.i

do.end.i:                                         ; preds = %dmaengine_prep_slave_single.exit.i.do.end.i_crit_edge, %dmaengine_prep_slave_single.exit.thread.i
  %call2.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.21) #10
  br label %mtk8250_rx_dma.exit

if.end.i:                                         ; preds = %dmaengine_prep_slave_single.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  %callback.i = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %call.i.i, i32 0, i32 6
  %50 = ptrtoint ptr %callback.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr @mtk8250_dma_rx_complete, ptr %callback.i, align 4
  %callback_param.i = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %call.i.i, i32 0, i32 8
  %51 = ptrtoint ptr %callback_param.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %param, ptr %callback_param.i, align 4
  %tx_submit.i.i = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %call.i.i, i32 0, i32 4
  %52 = ptrtoint ptr %tx_submit.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %tx_submit.i.i, align 4
  %call.i14.i = call i32 %53(ptr noundef nonnull %call.i.i) #7
  %rx_cookie.i = getelementptr inbounds %struct.uart_8250_dma, ptr %34, i32 0, i32 13
  %54 = ptrtoint ptr %rx_cookie.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %call.i14.i, ptr %rx_cookie.i, align 4
  %55 = ptrtoint ptr %rxchan.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %rxchan.i, align 4
  %57 = ptrtoint ptr %56 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %56, align 4
  %device_issue_pending.i.i = getelementptr inbounds %struct.dma_device, ptr %58, i32 0, i32 50
  %59 = ptrtoint ptr %device_issue_pending.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %device_issue_pending.i.i, align 4
  call void %60(ptr noundef %56) #7
  br label %mtk8250_rx_dma.exit

mtk8250_rx_dma.exit:                              ; preds = %if.end.i, %do.end.i
  call void @_raw_spin_unlock_irqrestore(ptr noundef %param, i32 noundef %call8) #7
  br label %cleanup

cleanup:                                          ; preds = %mtk8250_rx_dma.exit, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %state4) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @sg_init_table(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @tty_flip_buffer_push(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tty_insert_flip_string_fixed_flag(ptr noundef, ptr noundef, i8 noundef zeroext, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @serial8250_unregister_port(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mtk8250_suspend(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %rx_wakeup_irq = getelementptr inbounds %struct.mtk8250_data, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %rx_wakeup_irq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %rx_wakeup_irq, align 4
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %1, align 4
  tail call void @serial8250_suspend_port(i32 noundef %5) #7
  %call1 = tail call i32 @pinctrl_pm_select_sleep_state(ptr noundef %dev) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %3)
  %cmp = icmp sgt i32 %3, -1
  br i1 %cmp, label %if.then, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then:                                          ; preds = %entry
  %call.i = tail call i32 @irq_set_irq_wake(i32 noundef %3, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.then.cleanup_crit_edge, label %do.end

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.26, i32 noundef %3, i32 noundef %call.i) #10
  %call4 = tail call i32 @pinctrl_pm_select_default_state(ptr noundef %dev) #7
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %1, align 4
  tail call void @serial8250_resume_port(i32 noundef %7) #7
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.then.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %do.end ], [ 0, %if.then.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mtk8250_resume(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %rx_wakeup_irq = getelementptr inbounds %struct.mtk8250_data, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %rx_wakeup_irq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %rx_wakeup_irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %3)
  %cmp = icmp sgt i32 %3, -1
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call.i = tail call i32 @irq_set_irq_wake(i32 noundef %3, i32 noundef 0) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %call2 = tail call i32 @pinctrl_pm_select_default_state(ptr noundef %dev) #7
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %1, align 4
  tail call void @serial8250_resume_port(i32 noundef %5) #7
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @serial8250_suspend_port(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pinctrl_pm_select_sleep_state(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pinctrl_pm_select_default_state(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @serial8250_resume_port(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_set_irq_wake(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @early_serial8250_setup(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

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
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 37)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 37)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !19, !20, !21, !22, !23, !24, !26, !27, !29, !31, !32, !33, !34, !35, !37, !39, !41, !42, !43, !44, !46, !47, !48, !49, !51, !52, !53, !55, !56, !57, !58, !60, !61, !62, !64, !65, !66, !68, !70, !72, !73, !74}
!llvm.module.flags = !{!75, !76, !77, !78, !79, !80, !81, !82}
!llvm.ident = !{!83}

!0 = !{ptr @__initcall__kmod_8250_mtk__239_674_mtk8250_platform_driver_init6, !1, !"__initcall__kmod_8250_mtk__239_674_mtk8250_platform_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/tty/serial/8250/8250_mtk.c", i32 674, i32 1}
!2 = !{ptr @__exitcall_mtk8250_platform_driver_exit, !1, !"__exitcall_mtk8250_platform_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID___earlycon_mtk8250240, !4, !"__UNIQUE_ID___earlycon_mtk8250240", i1 false, i1 false}
!4 = !{!"../drivers/tty/serial/8250/8250_mtk.c", i32 689, i32 1}
!5 = !{ptr @__UNIQUE_ID_author241, !6, !"__UNIQUE_ID_author241", i1 false, i1 false}
!6 = !{!"../drivers/tty/serial/8250/8250_mtk.c", i32 692, i32 1}
!7 = !{ptr @__UNIQUE_ID_file242, !8, !"__UNIQUE_ID_file242", i1 false, i1 false}
!8 = !{!"../drivers/tty/serial/8250/8250_mtk.c", i32 693, i32 1}
!9 = !{ptr @__UNIQUE_ID_license243, !8, !"__UNIQUE_ID_license243", i1 false, i1 false}
!10 = !{ptr @__UNIQUE_ID_description244, !11, !"__UNIQUE_ID_description244", i1 false, i1 false}
!11 = !{!"../drivers/tty/serial/8250/8250_mtk.c", i32 694, i32 1}
!12 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/tty/serial/8250/8250_mtk.c", i32 667, i32 12}
!14 = !{ptr @mtk8250_platform_driver, !15, !"mtk8250_platform_driver", i1 false, i1 false}
!15 = !{!"../drivers/tty/serial/8250/8250_mtk.c", i32 665, i32 31}
!16 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/tty/serial/8250/8250_mtk.c", i32 530, i32 3}
!18 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.3, !17, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.4, !17, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.5, !17, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @mtk8250_probe._entry, !17, !"_entry", i1 false, i1 false}
!23 = !{ptr @mtk8250_probe._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @mtk8250_probe.__key, !25, !"__key", i1 false, i1 false}
!25 = !{!"../drivers/tty/serial/8250/8250_mtk.c", i32 552, i32 2}
!26 = !{ptr @.str.6, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @.str.7, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/tty/serial/8250/8250_mtk.c", i32 479, i32 44}
!29 = !{ptr @.str.8, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/tty/serial/8250/8250_mtk.c", i32 487, i32 4}
!31 = !{ptr @.str.9, !30, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @.str.10, !30, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @mtk8250_probe_of._entry, !30, !"_entry", i1 false, i1 false}
!34 = !{ptr @mtk8250_probe_of._entry_ptr, !30, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @.str.11, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/tty/serial/8250/8250_mtk.c", i32 494, i32 43}
!37 = !{ptr @.str.12, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/tty/serial/8250/8250_mtk.c", i32 500, i32 56}
!39 = !{ptr @.str.13, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/tty/serial/8250/8250_mtk.c", i32 422, i32 3}
!41 = !{ptr @.str.14, !40, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @.str.15, !40, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @mtk8250_runtime_suspend.__UNIQUE_ID_ddebug237, !40, !"__UNIQUE_ID_ddebug237", i1 false, i1 false}
!44 = !{ptr @.str.16, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/tty/serial/8250/8250_mtk.c", i32 176, i32 3}
!46 = !{ptr @.str.17, !45, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @mtk8250_dma_enable._entry, !45, !"_entry", i1 false, i1 false}
!48 = !{ptr @mtk8250_dma_enable._entry_ptr, !45, !"_entry_ptr", i1 false, i1 false}
!49 = !{ptr @.str.19, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/tty/serial/8250/8250_mtk.c", i32 178, i32 3}
!51 = !{ptr @mtk8250_dma_enable._entry.18, !50, !"_entry", i1 false, i1 false}
!52 = !{ptr @mtk8250_dma_enable._entry_ptr.20, !50, !"_entry_ptr", i1 false, i1 false}
!53 = !{ptr @.str.21, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/tty/serial/8250/8250_mtk.c", i32 139, i32 3}
!55 = !{ptr @.str.22, !54, !"<string literal>", i1 false, i1 false}
!56 = !{ptr @mtk8250_rx_dma._entry, !54, !"_entry", i1 false, i1 false}
!57 = !{ptr @mtk8250_rx_dma._entry_ptr, !54, !"_entry_ptr", i1 false, i1 false}
!58 = !{ptr @.str.23, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/tty/serial/8250/8250_mtk.c", i32 437, i32 3}
!60 = !{ptr @.str.24, !59, !"<string literal>", i1 false, i1 false}
!61 = !{ptr @mtk8250_runtime_resume.__UNIQUE_ID_ddebug238, !59, !"__UNIQUE_ID_ddebug238", i1 false, i1 false}
!62 = !{ptr @.str.25, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/tty/serial/8250/8250_mtk.c", i32 442, i32 4}
!64 = !{ptr @mtk8250_runtime_resume._entry, !63, !"_entry", i1 false, i1 false}
!65 = !{ptr @mtk8250_runtime_resume._entry_ptr, !63, !"_entry_ptr", i1 false, i1 false}
!66 = !{ptr @mtk8250_of_match, !67, !"mtk8250_of_match", i1 false, i1 false}
!67 = !{!"../drivers/tty/serial/8250/8250_mtk.c", i32 659, i32 34}
!68 = !{ptr @mtk8250_pm_ops, !69, !"mtk8250_pm_ops", i1 false, i1 false}
!69 = !{!"../drivers/tty/serial/8250/8250_mtk.c", i32 653, i32 32}
!70 = !{ptr @.str.26, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/tty/serial/8250/8250_mtk.c", i32 627, i32 4}
!72 = !{ptr @.str.27, !71, !"<string literal>", i1 false, i1 false}
!73 = !{ptr @mtk8250_suspend._entry, !71, !"_entry", i1 false, i1 false}
!74 = !{ptr @mtk8250_suspend._entry_ptr, !71, !"_entry_ptr", i1 false, i1 false}
!75 = !{i32 1, !"wchar_size", i32 2}
!76 = !{i32 1, !"min_enum_size", i32 4}
!77 = !{i32 8, !"branch-target-enforcement", i32 0}
!78 = !{i32 8, !"sign-return-address", i32 0}
!79 = !{i32 8, !"sign-return-address-all", i32 0}
!80 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!81 = !{i32 7, !"uwtable", i32 1}
!82 = !{i32 7, !"frame-pointer", i32 2}
!83 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!84 = !{i64 2154790466}
!85 = !{i64 2045492}
!86 = !{i64 2148256006}
!87 = !{i64 740829, i64 740854, i64 740876, i64 740892, i64 740904, i64 740924, i64 740948, i64 740964, i64 740976}
!88 = !{i64 2148256194}
!89 = !{i64 2148738402, i64 2148738407, i64 2148738420, i64 2148738464, i64 2148738498, i64 2148738519}
